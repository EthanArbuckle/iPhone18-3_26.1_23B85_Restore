void *sub_21A3E0BB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v9 = *(v5 + 96);
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v7 = a1;

  v14 = sub_21A3DCA2C(v7, a2);
  if ((v15 & 1) == 0)
  {

LABEL_12:
    sub_21A3DCAA4();
    swift_allocError();
    *v24 = 19;
    swift_willThrow();
    return v7;
  }

  v16 = *(*(v9 + 56) + 8 * v14);

  v17 = *(v8 + 104);
  if (!*(v17 + 16))
  {
LABEL_14:
    sub_21A3DCAA4();
    swift_allocError();
    *v25 = 46;
    swift_willThrow();
    goto LABEL_15;
  }

  v18 = *(v8 + 104);

  v19 = sub_21A3DCA2C(v7, a2);
  if ((v20 & 1) == 0)
  {

    goto LABEL_14;
  }

  v125 = a4;
  v21 = *(*(v17 + 56) + 8 * v19);

  v22 = sub_21A3E70C8(v21);
  if (v6)
  {

    goto LABEL_15;
  }

  v23 = v22;
  if (!v22)
  {
    __break(1u);
LABEL_112:

    sub_21A404DB4();
LABEL_128:

    sub_21A3E2418();

    return v113;
  }

  if (a5 == 0x8000000000000000 && v22 == -1)
  {
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  sub_21A3E71C0(a3, v125, a5, v21, v16, v22);
  v27 = a5 / v23;
  if (a5 / v23 < 0)
  {
LABEL_122:
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
    goto LABEL_128;
  }

  v109 = v7;
  v110 = a2;
  v117 = v16;
  v118 = a3;
  v121 = v21;
  v112 = v23;
  v108 = a5 / v23;
  if (v27)
  {
    v28 = 0;
    v7 = MEMORY[0x277D84F90];
    v29 = a3 + 64;
    v115 = a3 + 64;
LABEL_20:
    v113 = v7;
    v122 = v28;
    v111 = v28 + 1;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v7 = v31 & *(a3 + 64);
    v32 = (v30 + 63) >> 6;

    v33 = 0;
    v114 = v32;
    while (v7)
    {
LABEL_28:
      if (!*(a3 + 16))
      {
        goto LABEL_73;
      }

      v35 = (*(a3 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v7)))));
      v37 = *v35;
      v36 = v35[1];

      v126 = v36;
      v38 = sub_21A3DCA2C(v37, v36);
      if ((v39 & 1) == 0)
      {
LABEL_72:

        goto LABEL_73;
      }

      v40 = v16;
      v41 = *(*(a3 + 56) + 8 * v38);
      swift_beginAccess();
      v42 = *(v40 + 48);
      v43 = *(v42 + 16);

      if (!v43)
      {
        goto LABEL_75;
      }

      v44 = sub_21A3DCA2C(v37, v126);
      if ((v45 & 1) == 0)
      {

        goto LABEL_75;
      }

      v119 = *(*(v42 + 56) + 8 * v44);

      if (!*(v125 + 16) || (v46 = sub_21A3DCA2C(v37, v126), (v47 & 1) == 0))
      {

LABEL_75:
        sub_21A3DCAA4();
        swift_allocError();
        *v80 = 10;
        swift_willThrow();

        goto LABEL_15;
      }

      v48 = *(*(v125 + 56) + 8 * v46);
      v49 = (v48 * v122) >> 64;
      if (*(v121 + 16) && (sub_21A3DCA2C(v37, v126), (v50 & 1) != 0))
      {
        if (v49 != (v48 * v122) >> 63)
        {
          goto LABEL_123;
        }

        v16 = v117;
        v32 = v114;
        if ((v48 * v122 * v112) >> 64 != (v48 * v122 * v112) >> 63)
        {
          goto LABEL_124;
        }

        v51 = v48 * v112;
        if ((v48 * v112) >> 64 != (v48 * v112) >> 63)
        {
          goto LABEL_125;
        }

        a3 = v118;
        if (v51 < 0xFFFFFFFF80000000)
        {
          goto LABEL_126;
        }

        if (v51 > 0x7FFFFFFF)
        {
          goto LABEL_127;
        }

        v52 = *(*(v119 + 32) + 24);
        cblas_scopy_NEWLAPACK();
      }

      else
      {
        if (v49 != (v48 * v122) >> 63)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:

LABEL_119:
          sub_21A3DCAA4();
          swift_allocError();
          *v107 = 10;
          swift_willThrow();

          goto LABEL_15;
        }

        v16 = v117;
        v32 = v114;
        if (v48 < 0xFFFFFFFF80000000)
        {
          goto LABEL_116;
        }

        if (v48 > 0x7FFFFFFF)
        {
          goto LABEL_117;
        }

        v53 = *(*(v119 + 32) + 24);
        cblas_scopy_NEWLAPACK();
        a3 = v118;
      }

      v7 &= v7 - 1;

      v29 = v115;
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        v54 = sub_21A3E536C(MEMORY[0x277D84F90]);
        sub_21A40765C(v54);

        v55 = sub_21A3DF500(v109, v110);
        v7 = v113;
        v21 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21A4082B4(0, v113[2] + 1, 1, v113);
        }

        v27 = v108;
        v29 = v115;
        v57 = *(v7 + 16);
        v56 = *(v7 + 24);
        if (v57 >= v56 >> 1)
        {
          v58 = sub_21A4082B4((v56 > 1), v57 + 1, 1, v7);
          v29 = v115;
          v27 = v108;
          v7 = v58;
        }

        *(v7 + 16) = v57 + 1;
        *(v7 + 8 * v57 + 32) = v55;
        v28 = v111;
        v23 = v112;
        a3 = v118;
        if (v111 != v27)
        {
          goto LABEL_20;
        }

        goto LABEL_55;
      }

      v7 = *(v29 + 8 * v34);
      ++v33;
      if (v7)
      {
        v33 = v34;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_104:

    v104 = sub_21A3E536C(MEMORY[0x277D84F90]);
    sub_21A40765C(v104);
LABEL_106:

    v84 = sub_21A3DF500(v109, v110);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_107;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_55:
  v127 = a5 - v27 * v23;
  if (v127 < 1)
  {
  }

  else
  {
    v113 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
    v59 = sub_21A451854();
    v60 = v59;
    v61 = 0;
    v62 = v21 + 64;
    v63 = 1 << *(v21 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(v21 + 64);
    v66 = (v63 + 63) >> 6;
    v67 = v59 + 64;
    while (v65)
    {
      v68 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
LABEL_65:
      v71 = v68 | (v61 << 6);
      v72 = (*(v121 + 48) + 16 * v71);
      v74 = *v72;
      v73 = v72[1];
      *(v67 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      v75 = (v60[6] + 16 * v71);
      *v75 = v74;
      v75[1] = v73;
      *(v60[7] + 8 * v71) = v127;
      v76 = v60[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_121;
      }

      v60[2] = v78;
    }

    v69 = v61;
    while (1)
    {
      v61 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        goto LABEL_106;
      }

      if (v61 >= v66)
      {
        break;
      }

      v70 = *(v62 + 8 * v61);
      ++v69;
      if (v70)
      {
        v68 = __clz(__rbit64(v70));
        v65 = (v70 - 1) & v70;
        goto LABEL_65;
      }
    }

    sub_21A3E18F4(v16, v109, v110, v60);

    sub_21A404DB4();

    sub_21A3E2418();
    v81 = v118;
    v82 = 1 << *(v118 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v7 = v83 & *(v118 + 64);

    swift_beginAccess();
    v84 = 0;
    v85 = (v82 + 63) >> 6;
    v86 = v125;
    v116 = v85;
    if (!v7)
    {
LABEL_79:
      while (1)
      {
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v87 >= v85)
        {
          goto LABEL_104;
        }

        v7 = *(v118 + 64 + 8 * v87);
        ++v84;
        if (v7)
        {
          v84 = v87;
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      v113 = sub_21A4082B4(0, v113[2] + 1, 1, v113);
LABEL_107:
      v106 = v113[2];
      v105 = v113[3];
      if (v106 >= v105 >> 1)
      {
        v113 = sub_21A4082B4((v105 > 1), v106 + 1, 1, v113);
      }

      v113[2] = v106 + 1;
      v113[v106 + 4] = v84;
      sub_21A3E18F4(v117, v109, v110, v121);
      goto LABEL_112;
    }

LABEL_83:
    while (v81[2])
    {
      v88 = (v81[6] + ((v84 << 10) | (16 * __clz(__rbit64(v7)))));
      v90 = *v88;
      v89 = v88[1];

      v124 = v89;
      v91 = sub_21A3DCA2C(v90, v89);
      if ((v92 & 1) == 0)
      {
        goto LABEL_72;
      }

      v93 = *(v16 + 48);
      v94 = *(v93 + 16);
      v123 = *(v81[7] + 8 * v91);

      if (!v94)
      {
        goto LABEL_119;
      }

      v95 = sub_21A3DCA2C(v90, v124);
      if ((v96 & 1) == 0)
      {
        goto LABEL_118;
      }

      v120 = *(*(v93 + 56) + 8 * v95);

      if (!*(v86 + 16) || (v97 = sub_21A3DCA2C(v90, v124), (v98 & 1) == 0))
      {

        goto LABEL_119;
      }

      v99 = *(*(v86 + 56) + 8 * v97);
      if (*(v121 + 16) && (sub_21A3DCA2C(v90, v124), (v100 & 1) != 0))
      {
        if ((v99 * v108) >> 64 != (v99 * v108) >> 63)
        {
          goto LABEL_133;
        }

        if ((v99 * v108 * v112) >> 64 != (v99 * v108 * v112) >> 63)
        {
          goto LABEL_134;
        }

        v101 = v99 * v127;
        if ((v99 * v127) >> 64 != (v99 * v127) >> 63)
        {
          goto LABEL_135;
        }

        if (v101 < 0xFFFFFFFF80000000)
        {
          goto LABEL_136;
        }

        if (v101 > 0x7FFFFFFF)
        {
          goto LABEL_137;
        }

        v102 = *(*(v120 + 32) + 24);
        cblas_scopy_NEWLAPACK();
        v16 = v117;
      }

      else
      {
        if ((v99 * v108) >> 64 != (v99 * v108) >> 63)
        {
          goto LABEL_130;
        }

        if (v99 < 0xFFFFFFFF80000000)
        {
          goto LABEL_131;
        }

        if (v99 > 0x7FFFFFFF)
        {
          goto LABEL_132;
        }

        v103 = *(*(v120 + 32) + 24);
        cblas_scopy_NEWLAPACK();
      }

      v7 &= v7 - 1;

      v81 = v118;
      v86 = v125;
      v85 = v116;
      if (!v7)
      {
        goto LABEL_79;
      }
    }

LABEL_73:

    sub_21A3DCAA4();
    swift_allocError();
    *v79 = 10;
    swift_willThrow();

LABEL_15:
  }

  return v7;
}

uint64_t sub_21A3E18F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(v4 + 64);
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v11 = sub_21A3DCA2C(a2, a3);
  if ((v12 & 1) == 0)
  {

LABEL_7:
    sub_21A3DCAA4();
    swift_allocError();
    *v18 = 10;
    swift_willThrow();
LABEL_8:
    v19 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v63 = a4;
  v13 = *(*(v6 + 56) + 8 * v11);

  v14 = sub_21A3E5498(MEMORY[0x277D84F90], &qword_27CD284E0, &qword_21A4561D8);
  if (v13[2])
  {
    v15 = v13[4];
    v17 = v13[5];
    v16 = *(a1 + 40);
    sub_21A4510E4();

    LODWORD(v17) = e5rt_execution_stream_operation_retain_input_port();

    if (!v17)
    {

      sub_21A3DCAF8();
      swift_allocError();
      *v62 = 6;
      swift_willThrow();

LABEL_47:

      goto LABEL_8;
    }

    EspressoError.init(rawValue:)(v17 + 9150);
    v56 = v68;
    if (v68 != 48)
    {
LABEL_46:
      sub_21A3DCAA4();
      swift_allocError();
      *v61 = v56;
      swift_willThrow();

      goto LABEL_47;
    }

    if (qword_27CD28170 == -1)
    {
LABEL_43:
      v57 = sub_21A450F24();
      __swift_project_value_buffer(v57, qword_27CD28C90);
      v58 = sub_21A450F04();
      v59 = sub_21A451584();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        *(v60 + 4) = v17;
        _os_log_impl(&dword_21A3C2000, v58, v59, "Unknown E5 code: %u", v60, 8u);
        MEMORY[0x21CEDB220](v60, -1, -1);
      }

      v56 = 27;
      goto LABEL_46;
    }

LABEL_50:
    swift_once();
    goto LABEL_43;
  }

  v21 = v14 + 64;
  v22 = 1 << *(v14 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v17 = v23 & *(v14 + 64);
  v24 = (v22 + 63) >> 6;
  v67 = v14;

  v25 = 0;
  v5 = MEMORY[0x277D84F98];
  while (2)
  {
    v54 = v63;
LABEL_12:
    while (2)
    {
      if (v17)
      {
        v26 = v17;
        goto LABEL_18;
      }

      do
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v27 >= v24)
        {

          goto LABEL_8;
        }

        v26 = *(v21 + 8 * v27);
        ++v25;
      }

      while (!v26);
      v25 = v27;
LABEL_18:
      v17 = (v26 - 1) & v26;
      if (!*(v54 + 16))
      {
        continue;
      }

      break;
    }

    v28 = __clz(__rbit64(v26)) | (v25 << 6);
    v29 = (*(v67 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(*(v67 + 56) + 8 * v28);

    v33 = sub_21A3DCA2C(v30, v31);
    if ((v34 & 1) == 0)
    {
      goto LABEL_38;
    }

    v35 = *(*(v63 + 56) + 8 * v33);
    v36 = sub_21A4094A0();
    if (!*(v36 + 16))
    {
      goto LABEL_49;
    }

    v37 = *(v36 + 32);

    if (v37 == v35)
    {
LABEL_38:

      continue;
    }

    break;
  }

  v38 = *(v32 + 64);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (*(v38 + 2))
    {
      goto LABEL_24;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v38 = sub_21A410FA4(v38);
  if (!*(v38 + 2))
  {
    goto LABEL_51;
  }

LABEL_24:
  v66 = v38;
  *(v38 + 4) = v35;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v5;
  v40 = sub_21A3DCA2C(v30, v31);
  v41 = v5[2];
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v5[3] >= v43)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v39)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v65 = v39;
      v55 = v40;
      sub_21A3E4410(&qword_27CD284D8, &qword_21A4561D0);
      v40 = v55;
      v5 = v69;
      if (v65)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    v5[(v40 >> 6) + 8] |= 1 << v40;
    v48 = (v5[6] + 16 * v40);
    *v48 = v30;
    v48[1] = v31;
    *(v5[7] + 8 * v40) = v38;
    v49 = v5[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (!v50)
    {
      v5[2] = v51;

      goto LABEL_33;
    }

LABEL_53:
    __break(1u);
  }

  v44 = v39;
  sub_21A3E3588(v43, isUniquelyReferenced_nonNull_native, &qword_27CD284D8, &qword_21A4561D0);
  v45 = sub_21A3DCA2C(v30, v31);
  if ((v44 & 1) == (v46 & 1))
  {
    v40 = v45;
    v47 = v44;
    v5 = v69;
    if ((v47 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    v52 = v5[7];
    v53 = *(v52 + 8 * v40);
    *(v52 + 8 * v40) = v66;

    swift_bridgeObjectRelease_n();
LABEL_33:
    v54 = v63;

    goto LABEL_12;
  }

  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A3E2418()
{
  v2 = v0;
  v3 = v0[12];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = *(*(v3 + 48) + 16 * v11 + 8);
      v13 = *(*(v3 + 56) + 8 * v11);

      sub_21A3E5D68(v14, v2);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A3E2554(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21A3E2620(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_21A3D3B94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21A3E2620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21A3E272C(a5, a6);
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
    result = sub_21A4517E4();
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

uint64_t sub_21A3E272C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21A3E2778(a1, a2);
  sub_21A3E28A8(&unk_282B3F7C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21A3E2778(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21A423888(v5, 0);
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

  result = sub_21A4517E4();
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
        v10 = sub_21A4511D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21A423888(v10, 0);
        result = sub_21A451714();
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

uint64_t sub_21A3E28A8(uint64_t result)
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

  result = sub_21A3E2994(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

char *sub_21A3E2994(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28550, &unk_21A456260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_21A3E2A88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
  v36 = a2;
  result = sub_21A451864();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_21A3D3B38(v25, v37);
      }

      else
      {
        sub_21A3D3B94(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_21A3D3B38(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21A3E2D7C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_21A451864();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_21A3E301C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
  v38 = a2;
  result = sub_21A451864();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21A3E32D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284E8, &qword_21A4561E0);
  v37 = a2;
  result = sub_21A451864();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21A3E3588(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_21A451864();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_21A3E3828(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28500, &qword_21A456200);
  v39 = a2;
  result = sub_21A451864();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 168 * v22);
      v48 = v27[8];
      v49 = v27[9];
      v50 = *(v27 + 20);
      v44 = v27[4];
      v45 = v27[5];
      v46 = v27[6];
      v47 = v27[7];
      v40 = *v27;
      v41 = v27[1];
      v42 = v27[2];
      v43 = v27[3];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = *(v8 + 56) + 168 * v16;
      *(v18 + 128) = v48;
      *(v18 + 144) = v49;
      *(v18 + 160) = v50;
      *(v18 + 64) = v44;
      *(v18 + 80) = v45;
      *(v18 + 96) = v46;
      *(v18 + 112) = v47;
      *v18 = v40;
      *(v18 + 16) = v41;
      *(v18 + 32) = v42;
      *(v18 + 48) = v43;
      ++*(v8 + 16);
      v5 = v38;
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
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21A3E3B34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D00, &qword_21A4561E8);
  v39 = a2;
  result = sub_21A451864();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_21A3E3DD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
  v2 = *v0;
  v3 = sub_21A451854();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21A3D3B94(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21A3D3B38(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21A3E3FB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21A451854();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

void *sub_21A3E4118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
  v2 = *v0;
  v3 = sub_21A451854();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_21A3E4294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284E8, &qword_21A4561E0);
  v2 = *v0;
  v3 = sub_21A451854();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_21A3E4410(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21A451854();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

void *sub_21A3E4570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28500, &qword_21A456200);
  v2 = *v0;
  v3 = sub_21A451854();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 168;
      v21 = *(v2 + 56) + v16;
      v32 = *(v21 + 128);
      v33 = *(v21 + 144);
      v34 = *(v21 + 160);
      v28 = *(v21 + 64);
      v29 = *(v21 + 80);
      v30 = *(v21 + 96);
      v31 = *(v21 + 112);
      v24 = *v21;
      v25 = *(v21 + 16);
      v26 = *(v21 + 32);
      v27 = *(v21 + 48);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      v23 = *(v4 + 56) + v16;
      *(v23 + 128) = v32;
      *(v23 + 144) = v33;
      *(v23 + 160) = v34;
      *(v23 + 64) = v28;
      *(v23 + 80) = v29;
      *(v23 + 96) = v30;
      *(v23 + 112) = v31;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      *(v23 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

id sub_21A3E4750()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D00, &qword_21A4561E8);
  v2 = *v0;
  v3 = sub_21A451854();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

char *sub_21A3E48BC(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F58B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E48DC(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F59B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E48FC(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F5AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E491C(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F5AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E493C(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F5AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E495C(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F5BF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E497C(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F5F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E499C(char *a1, int64_t a2, char a3)
{
  result = sub_21A3F6090(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21A3E49BC(void *a1, int64_t a2, char a3)
{
  result = sub_21A3F60A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21A3E49DC(size_t a1, int64_t a2, char a3)
{
  result = sub_21A3F61D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21A3E49FC(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21A3E4B5C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_21A3E4CB0(v9, v4, v2);
  result = MEMORY[0x21CEDB220](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A3E4B5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    result = *v15;
    if (*v15 != 1953066601 || v15[1] != 0xE400000000000000)
    {
      result = sub_21A4519B4();
      if ((result & 1) == 0)
      {
        *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return sub_21A3E4D28(v19, a2, v4, a3);
        }
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
      return sub_21A3E4D28(v19, a2, v4, a3);
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
  return result;
}

void *sub_21A3E4CB0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21A3E4B5C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21A3E4D28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28520, &unk_21A456220);
  result = sub_21A451874();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_21A451B04();

    sub_21A451144();
    result = sub_21A451B24();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21A3E4F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
    v3 = sub_21A451874();
    v4 = a1 + 32;

    while (1)
    {
      sub_21A3E7060(v4, &v13, &qword_27CD28438, &unk_21A455EA0);
      v5 = v13;
      v6 = v14;
      result = sub_21A3DCA2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21A3D3B38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E509C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284F8, &qword_21A4561F8);
    v3 = sub_21A451874();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E51B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284E8, &qword_21A4561E0);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E536C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28518, &qword_21A456218);
    v3 = sub_21A451874();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_21A3E700C(v7, v8);
      result = sub_21A3DCA2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E5498(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21A3DCA2C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E5594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E56A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21A3DCA2C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E57A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28538, &qword_21A456248);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21A3DCA2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21A3E58A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28500, &qword_21A456200);
  v3 = sub_21A451874();

  v4 = *(a1 + 176);
  v43 = *(a1 + 160);
  v44 = v4;
  v45 = *(a1 + 192);
  v46 = *(a1 + 208);
  v5 = *(a1 + 112);
  v39 = *(a1 + 96);
  v40 = v5;
  v6 = *(a1 + 144);
  v41 = *(a1 + 128);
  v42 = v6;
  v7 = *(a1 + 48);
  v35 = *(a1 + 32);
  v36 = v7;
  v8 = *(a1 + 80);
  v37 = *(a1 + 64);
  v38 = v8;
  v10 = *(&v35 + 1);
  v9 = v35;
  sub_21A3E7060(&v35, v34, &qword_27CD28508, &qword_21A456208);
  result = sub_21A3DCA2C(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 216);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 168 * result;
    v16 = v36;
    v17 = v38;
    *(v15 + 16) = v37;
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = v39;
    v19 = v40;
    v20 = v42;
    *(v15 + 80) = v41;
    *(v15 + 96) = v20;
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    v21 = v43;
    v22 = v44;
    v23 = v45;
    *(v15 + 160) = v46;
    *(v15 + 128) = v22;
    *(v15 + 144) = v23;
    *(v15 + 112) = v21;
    v24 = v3[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      break;
    }

    v3[2] = v26;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v27 = (v13 + 184);
    v28 = v13[9];
    v43 = v13[8];
    v44 = v28;
    v45 = v13[10];
    v46 = *(v13 + 22);
    v29 = v13[5];
    v39 = v13[4];
    v40 = v29;
    v30 = v13[7];
    v41 = v13[6];
    v42 = v30;
    v31 = v13[1];
    v35 = *v13;
    v36 = v31;
    v32 = v13[3];
    v37 = v13[2];
    v38 = v32;
    v10 = *(&v35 + 1);
    v9 = v35;
    sub_21A3E7060(&v35, v34, &qword_27CD28508, &qword_21A456208);
    result = sub_21A3DCA2C(v9, v10);
    v13 = v27;
    if (v33)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21A3E5AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284F0, &qword_21A4561F0);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21A3E5BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28528, &qword_21A456230);
  result = sub_21A451854();
  v6 = 0;
  v28 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = result + 64;
  v31 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(*(v28 + 56) + 8 * v17);

      sub_21A3DDC1C(a2, a3, &v32);

      if (v3)
      {
        break;
      }

      *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v31;
      v22 = v32;
      v23 = (v31[6] + 16 * v17);
      *v23 = v19;
      v23[1] = v20;
      *(v31[7] + 8 * v17) = v22;
      v24 = v31[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v31[2] = v26;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v31;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_21A3E5D68(void *a1, void *a2)
{
  v65 = a2;
  v68[3] = *MEMORY[0x277D85DE8];
  v4 = sub_21A404940();
  v5 = v4;
  v66 = v4[2];
  if (v66)
  {
    v6 = 0;
    v7 = v4 + 5;
    while (1)
    {
      if (v6 >= v5[2])
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v8 = *(v7 - 1);
      v9 = *v7;
      v68[0] = 0;
      v10 = a1[5];
      sub_21A4510E4();

      v11 = e5rt_execution_stream_operation_retain_output_port();

      sub_21A3DCF54(v11);
      if (v2)
      {
        break;
      }

      v12 = v68[0];
      if (!v68[0])
      {
LABEL_32:

        sub_21A3DCAF8();
        swift_allocError();
        *v58 = 6;
        swift_willThrow();
        goto LABEL_36;
      }

      LOBYTE(v68[0]) = 0;
      type metadata accessor for IOPort();
      swift_allocObject();
      v13 = sub_21A425138(v12, v68);
      ++v6;
      swift_beginAccess();

      v14 = a1[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = a1[7];
      a1[7] = 0x8000000000000000;
      sub_21A403158(v13, v8, v9, isUniquelyReferenced_nonNull_native);

      a1[7] = v67;
      swift_endAccess();

      v7 += 2;
      if (v66 == v6)
      {
        goto LABEL_7;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

LABEL_7:

  v16 = sub_21A404854();
  v17 = v16;
  v64 = v16[2];
  if (!v64)
  {
LABEL_24:

    v43 = v65[2];
    v44 = v65[3];
    result = swift_beginAccess();
    v46 = a1[6];
    if (!*(v46 + 16))
    {
      goto LABEL_37;
    }

    v47 = a1[6];

    v48 = sub_21A3DCA2C(v43, v44);
    if (v49)
    {
      v50 = *(*(v46 + 56) + 8 * v48);

      v51 = v65;
      swift_beginAccess();
      if ((*(v51 + 60) & 1) == 0)
      {
        v52 = *(v51 + 14);
        v53 = *(v50 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21A455E00;
        *(inited + 32) = v52;
        v55 = sub_21A3DAD38(inited);
        v57 = v56;
        swift_setDeallocating();
        sub_21A439640(v55, v57);
        sub_21A3E759C(v55, v57);
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v18 = 0;
  v19 = v16 + 5;
  v63 = v16;
  while (1)
  {
    if (v18 >= v17[2])
    {
      goto LABEL_39;
    }

    v20 = *(v19 - 1);
    v21 = *v19;
    v22 = v65[14];
    v66 = v20;
    if (!v22)
    {

      goto LABEL_20;
    }

    swift_retain_n();

    v23 = sub_21A404940();

    v68[0] = v20;
    v68[1] = v21;
    MEMORY[0x28223BE20](v24);
    v61[2] = v68;
    v25 = sub_21A4412B8(sub_21A3E75F0, v61, v23);

    if (v25)
    {
      v26 = v65[15];
      if (*(v26 + 16))
      {
        break;
      }
    }

    v17 = v63;
LABEL_20:
    v68[0] = 0;
    v37 = a1[5];
    sub_21A4510E4();
    v38 = e5rt_execution_stream_operation_retain_input_port();

    sub_21A3DCF54(v38);
    if (v2)
    {

      goto LABEL_36;
    }

    v39 = v68[0];
    if (!v68[0])
    {
      goto LABEL_32;
    }

    LOBYTE(v68[0]) = 0;
    type metadata accessor for IOPort();
    swift_allocObject();
    v40 = sub_21A425138(v39, v68);
    swift_beginAccess();

    v41 = a1[6];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v67 = a1[6];
    a1[6] = 0x8000000000000000;
    sub_21A403158(v40, v66, v21, v42);

    a1[6] = v67;
    swift_endAccess();
LABEL_23:
    ++v18;

    v19 += 2;
    if (v64 == v18)
    {
      goto LABEL_24;
    }
  }

  v27 = v65[15];

  v28 = sub_21A3DCA2C(v66, v21);
  v17 = v63;
  if ((v29 & 1) == 0)
  {

    goto LABEL_20;
  }

  v62 = *(*(v26 + 56) + 8 * v28);

  v68[0] = 0;
  v30 = a1[5];
  sub_21A4510E4();
  v31 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v31);
  if (v2)
  {
    goto LABEL_34;
  }

  v32 = v68[0];
  if (v68[0])
  {
    type metadata accessor for IOPort();
    swift_allocObject();
    v33 = v62;

    v34 = sub_21A425434(v32, v33);
    swift_beginAccess();

    v35 = a1[6];
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v67 = a1[6];
    a1[6] = 0x8000000000000000;
    sub_21A403158(v34, v66, v21, v36);

    a1[6] = v67;
    swift_endAccess();

    goto LABEL_23;
  }

  sub_21A3DCAF8();
  swift_allocError();
  *v59 = 6;
  swift_willThrow();
LABEL_34:

LABEL_37:
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A3E647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v122 = *MEMORY[0x277D85DE8];
  v110 = sub_21A450C24();
  v10 = *(v110 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v110);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16) || (v14 = sub_21A3DCA2C(a1, a2), (v15 & 1) == 0))
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v88 = 44;
    swift_willThrow();
    goto LABEL_94;
  }

  v16 = *(*(a3 + 56) + 8 * v14);
  v17 = *(v16 + 16);

  v115 = v16;
  v109 = v17;
  v102[1] = v5;
  if (!v17)
  {
    v10 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F98];
    goto LABEL_80;
  }

  v108 = v13;
  v18 = 0;
  v19 = 0;
  v106 = (v10 + 1);
  v107 = (v10 + 13);
  v20 = MEMORY[0x277D84F98];
  v21 = (v16 + 40);
  v105 = *MEMORY[0x277CC92A8];
  v10 = v110;
  v104 = a4;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
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
      goto LABEL_106;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_93;
    }

    v25 = *(v21 - 1);
    v26 = *v21;

    v27 = sub_21A3DCA2C(v25, v26);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v114 = v25;
    v111 = v21;
    v112 = v18;
    v29 = v19;
    v30 = *(*(a4 + 56) + 8 * v27);
    v32 = *(v30 + 24);
    v31 = *(v30 + 32);
    v33 = v108;
    (*v107)(v108, v105, v10);
    v113 = v30;

    sub_21A450C14();
    if (!v31)
    {
      v52 = sub_21A450C14();
      v52(v32, 0);

      (*v106)(v33, v10);
      v41 = 0xC000000000000000;
      v43 = v29;
LABEL_35:
      v45 = v114;
LABEL_36:
      sub_21A3E759C(v31, v41);
      v46 = MEMORY[0x277D84F90];
      goto LABEL_61;
    }

    v34 = sub_21A450A44();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    v37 = sub_21A4509D4();
    v38 = sub_21A450A34();
    *v39 |= 0x8000000000000000;
    v38(&v116, 0);
    v31 = sub_21A439D94(v37, v31);
    v41 = v40;

    (*v106)(v33, v10);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      v43 = v29;
      if (v42 != 2)
      {
        goto LABEL_35;
      }

      v53 = *(v31 + 16);
      v103 = *(v31 + 24);
      v54 = sub_21A4509F4();
      v45 = v114;
      if (v54)
      {
        v55 = sub_21A450A24();
        if (__OFSUB__(v53, v55))
        {
          goto LABEL_104;
        }

        v54 += v53 - v55;
      }

      v56 = __OFSUB__(v103, v53);
      v57 = v103 - v53;
      if (v56)
      {
        goto LABEL_103;
      }

      v58 = sub_21A450A14();
      if (!v54)
      {
        goto LABEL_36;
      }

      v59 = v58 >= v57 ? v57 : v58;
      v60 = v59 >= 0 ? v59 : v59 + 3;
      if ((v59 + 3) <= 6)
      {
        goto LABEL_36;
      }

      v103 = v54;
      v61 = v60 >> 2;
      if (v59 <= 3)
      {
        v51 = 4 * v61;
        v46 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
        v46 = swift_allocObject();
        v62 = _swift_stdlib_malloc_size(v46);
        v51 = 4 * v61;
        v63 = v62 - 32;
        if (v62 < 32)
        {
          v63 = v62 - 29;
        }

        v46[2] = v61;
        v46[3] = 2 * (v63 >> 2);
      }

      v49 = v46 + 4;
      v50 = v103;
      goto LABEL_59;
    }

    v43 = v29;
    if (v42)
    {
      if (v31 >> 32 < v31)
      {
        goto LABEL_102;
      }

      v64 = sub_21A4509F4();
      if (!v64)
      {
        sub_21A450A14();
LABEL_54:
        sub_21A3E759C(v31, v41);
        v46 = MEMORY[0x277D84F90];
        v45 = v114;
        goto LABEL_61;
      }

      v65 = v64;
      v66 = sub_21A450A24();
      if (__OFSUB__(v31, v66))
      {
        goto LABEL_105;
      }

      v67 = (v31 - v66 + v65);
      v68 = sub_21A450A14();
      if (!v67)
      {
        goto LABEL_54;
      }

      v69 = v68 >= (v31 >> 32) - v31 ? (v31 >> 32) - v31 : v68;
      v70 = v69 >= 0 ? v69 : v69 + 3;
      if ((v69 + 3) <= 6)
      {
        goto LABEL_54;
      }

      v71 = v67;
      v72 = v70 >> 2;
      if (v69 <= 3)
      {
        v51 = 4 * v72;
        v46 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
        v46 = swift_allocObject();
        v73 = _swift_stdlib_malloc_size(v46);
        v51 = 4 * v72;
        v74 = v73 - 32;
        if (v73 < 32)
        {
          v74 = v73 - 29;
        }

        v46[2] = v72;
        v46[3] = 2 * (v74 >> 2);
      }

      v45 = v114;
      v49 = v46 + 4;
      v50 = v71;
      goto LABEL_59;
    }

    v116 = v31;
    v117 = v41;
    v118 = BYTE2(v41);
    v119 = BYTE3(v41);
    v120 = BYTE4(v41);
    v44 = (v41 >> 50) & 0x3F;
    v121 = BYTE5(v41);
    v45 = v114;
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
      v46 = swift_allocObject();
      v47 = _swift_stdlib_malloc_size(v46);
      v48 = v47 - 32;
      if (v47 < 32)
      {
        v48 = v47 - 29;
      }

      v46[2] = v44;
      v46[3] = 2 * (v48 >> 2);
      v49 = v46 + 4;
      v50 = &v116;
      v51 = 4 * v44;
LABEL_59:
      memcpy(v49, v50, v51);
      goto LABEL_60;
    }

    v46 = MEMORY[0x277D84F90];
LABEL_60:
    sub_21A3E759C(v31, v41);
LABEL_61:
    v75 = v46[2];
    v56 = __OFADD__(v43, v75);
    v19 = v43 + v75;
    if (v56)
    {
      goto LABEL_97;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v20;
    v77 = sub_21A3DCA2C(v45, v26);
    v79 = v20[2];
    v80 = (v78 & 1) == 0;
    v56 = __OFADD__(v79, v80);
    v81 = v79 + v80;
    if (v56)
    {
      goto LABEL_98;
    }

    v82 = v78;
    if (v20[3] < v81)
    {
      sub_21A3E3588(v81, isUniquelyReferenced_nonNull_native, &qword_27CD28510, &qword_21A456210);
      v77 = sub_21A3DCA2C(v45, v26);
      if ((v82 & 1) != (v83 & 1))
      {
        result = sub_21A451A94();
        __break(1u);
        return result;
      }

LABEL_67:
      if ((v82 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_67;
    }

    v87 = v77;
    sub_21A3E4410(&qword_27CD28510, &qword_21A456210);
    v77 = v87;
    if ((v82 & 1) == 0)
    {
LABEL_68:
      v20 = v116;
      v116[(v77 >> 6) + 8] |= 1 << v77;
      v84 = (v20[6] + 16 * v77);
      *v84 = v45;
      v84[1] = v26;
      *(v20[7] + 8 * v77) = v46;

      v85 = v20[2];
      v56 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v56)
      {
        goto LABEL_101;
      }

      v20[2] = v86;
      goto LABEL_6;
    }

LABEL_5:
    v22 = v77;

    v20 = v116;
    v23 = v116[7];
    v24 = *(v23 + 8 * v22);
    *(v23 + 8 * v22) = v46;

LABEL_6:
    v18 = v112 + 1;
    v21 = v111 + 2;
    v10 = v110;
    v16 = v115;
    a4 = v104;
    if (v109 == v112 + 1)
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v10 = sub_21A451344();
          v10[2] = v19;
          memset_pattern16(v10 + 4, &unk_21A456140, 4 * v19);
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

LABEL_80:
        v89 = 0;
        v90 = (v16 + 40);
        v91 = -v109;
        v92 = -1;
        while (v91 + v92 != -1)
        {
          if (++v92 >= *(v16 + 16))
          {
            goto LABEL_99;
          }

          if (!v20[2])
          {
            goto LABEL_92;
          }

          v93 = *(v90 - 1);
          v94 = *v90;

          v95 = sub_21A3DCA2C(v93, v94);
          v97 = v96;

          if ((v97 & 1) == 0)
          {
            goto LABEL_92;
          }

          v98 = *(*(v20[7] + 8 * v95) + 16);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v98 >> 31)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v10 = sub_21A410F90(v10);
            if (v98 >> 31)
            {
LABEL_91:
              __break(1u);
LABEL_92:

              goto LABEL_93;
            }
          }

          v90 += 2;
          cblas_scopy_NEWLAPACK();

          v56 = __OFADD__(v89, v98);
          v89 += v98;
          v16 = v115;
          if (v56)
          {
            goto LABEL_100;
          }
        }

        goto LABEL_94;
      }

LABEL_106:
      __break(1u);
    }
  }

LABEL_93:

  sub_21A3DCAA4();
  swift_allocError();
  *v99 = 44;
  swift_willThrow();

LABEL_94:
  v100 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_21A3E700C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21A3E7060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A3E70C8(uint64_t a1)
{
  result = sub_21A40BC4C(a1);
  if (v3)
  {
LABEL_2:
    v4 = result;
    sub_21A3DCAA4();
    swift_allocError();
    *v5 = 46;
    swift_willThrow();
    return v4;
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = v6;
LABEL_13:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      if (*(*(a1 + 56) + ((v11 << 9) | (8 * v12))) != result)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        return result;
      }

      v9 = *(a1 + 64 + 8 * v11);
      ++v6;
      if (v9)
      {
        v6 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A3E71C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = a3 + a6;
  v15 = __OFADD__(a3, a6);
  v16 = v14 - 1;
  v17 = __OFSUB__(v14, 1);
  v53 = v17;
  v54 = v15;
  v19 = v16 == 0x8000000000000000 && a6 == -1;
  v51 = v19;

  v21 = 0;
  v52 = a6;
  v50 = v16 / a6;
  v55 = a2;
  for (i = result; v12; v8 = i)
  {
LABEL_20:
    v23 = (v8[6] + ((v21 << 10) | (16 * __clz(__rbit64(v12)))));
    v25 = *v23;
    v24 = v23[1];
    swift_beginAccess();
    v26 = *(a5 + 48);
    if (!*(v26 + 16))
    {
      goto LABEL_59;
    }

    v27 = sub_21A3DCA2C(v25, v24);
    if ((v28 & 1) == 0)
    {

      goto LABEL_58;
    }

    v60 = *(*(v26 + 56) + 8 * v27);

    if (!*(a2 + 16) || (v29 = sub_21A3DCA2C(v25, v24), (v30 & 1) == 0))
    {

LABEL_59:
      sub_21A3DCAA4();
      swift_allocError();
      *v47 = 10;
      swift_willThrow();
    }

    if (!v8[2] || (v31 = *(*(a2 + 56) + 8 * v29), v32 = sub_21A3DCA2C(v25, v24), (v33 & 1) == 0))
    {

LABEL_58:

      goto LABEL_59;
    }

    v34 = *(v60 + 24);
    v59 = *(v8[7] + 8 * v32);

    result = sub_21A4094A0();
    v35 = *(result + 16);
    if (v35)
    {
      v36 = (result + 32);
      v37 = 1;
      while (1)
      {
        v38 = *v36++;
        v39 = v37 * v38;
        if ((v37 * v38) >> 64 != (v37 * v38) >> 63)
        {
          break;
        }

        v37 = v39;
        if (!--v35)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_64;
    }

    v39 = 1;
LABEL_32:

    if (*(a4 + 16))
    {
      v40 = sub_21A3DCA2C(v25, v24);
      v42 = v41;

      if (v42)
      {
        if (v31 < 1)
        {
          goto LABEL_60;
        }

        if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
        {
          goto LABEL_70;
        }

        v43 = *(*(a4 + 56) + 8 * v40);
        v44 = *(v59 + 16);

        if (v44 < v31 * a3)
        {
          goto LABEL_61;
        }

        if ((v43 * v31) >> 64 != (v43 * v31) >> 63)
        {
          goto LABEL_71;
        }

        if (v39 != v43 * v31)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }
    }

    else
    {
    }

    if (v54)
    {
      goto LABEL_65;
    }

    if (v53)
    {
      goto LABEL_66;
    }

    if (!v52)
    {
      goto LABEL_67;
    }

    if (v51)
    {
      goto LABEL_69;
    }

    if (v31 < 1)
    {
LABEL_60:

LABEL_61:
      sub_21A3DCAA4();
      swift_allocError();
      *v48 = 11;
      swift_willThrow();
    }

    if ((v31 * v50) >> 64 != (v31 * v50) >> 63)
    {
      goto LABEL_68;
    }

    v45 = *(v59 + 16);

    if (v45 < v31 * v50 || v39 != v31)
    {
      goto LABEL_61;
    }

LABEL_52:
    v12 &= v12 - 1;

    a2 = v55;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v13)
    {
    }

    v12 = *(v9 + 8 * v22);
    ++v21;
    if (v12)
    {
      v21 = v22;
      goto LABEL_20;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_21A3E759C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_21A3E7630(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4 >= *(v3 + 16))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for CKRecipeDescriptorRecord(0);
    v6 = v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4;
    *(v1 + 24) = v4 + 1;
    *(a1 + 24) = v5;
    *(a1 + 32) = &off_282B40378;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    sub_21A3ED1C8(v6, boxed_opaque_existential_1, type metadata accessor for CKRecipeDescriptorRecord);
  }
}

uint64_t sub_21A3E771C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_21A3E7778()
{
  if (!*(*(*v0 + 16) + 16))
  {
    sub_21A3EC940();
    swift_allocError();
    *v1 = 16;
    swift_willThrow();
  }
}

uint64_t sub_21A3E77F4()
{
  v1 = sub_21A41101C(*v0);

  return v1;
}

uint64_t sub_21A3E7850(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = *(v3 + 16);
    v8 = 1;
    while (1)
    {
      v9 = *(v3 + 24);
      if (v9 >= *(v7 + 16))
      {
        v5 = v8 - 1;
        goto LABEL_13;
      }

      if (v9 < 0)
      {
        break;
      }

      v10 = type metadata accessor for CKRecipeDescriptorRecord(0);
      v14 = v10;
      v15 = &off_282B40378;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
      sub_21A3ED1C8(v7 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v9, boxed_opaque_existential_1, type metadata accessor for CKRecipeDescriptorRecord);
      *(v3 + 24) = v9 + 1;
      sub_21A3C50DC(&v13, v16);
      result = sub_21A3C50DC(v16, v6);
      if (v5 == v8)
      {
        goto LABEL_13;
      }

      v6 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21A3E79B0(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = *(v3 + 16);
    v8 = 1;
    while (1)
    {
      v9 = *(v3 + 24);
      if (v9 >= v7)
      {
        break;
      }

      *(v3 + 24) = v9 + 1;
      v10 = type metadata accessor for FileRecipeDescriptor();
      v11 = swift_allocObject();
      v14 = v10;
      v15 = &off_282B41030;
      *&v13 = v11;
      sub_21A3C50DC(&v13, v16);
      sub_21A3C50DC(v16, v6);
      if (v5 == v8)
      {
        goto LABEL_12;
      }

      v6 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v5 = v8 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3E7B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v148 = a2;
  v149 = a3;
  v147 = a1;
  v160 = *MEMORY[0x277D85DE8];
  v5 = sub_21A4510B4();
  v151 = *(v5 - 8);
  v152 = v5;
  v6 = *(v151 + 64);
  MEMORY[0x28223BE20](v5);
  v150 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A450D14();
  v156 = *(v8 - 8);
  v9 = *(v156 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v146 = &v141 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v145 = &v141 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v144 = &v141 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v141 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v141 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v141 - v28;
  v30 = v12;
  if (*(v4 + *(v12 + 60)) < vcvtd_n_f64_u64(sub_21A3ECA48(0x20000000000001uLL), 0x35uLL))
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v31 = sub_21A450F24();
    __swift_project_value_buffer(v31, qword_27CD28C90);
    sub_21A3ED1C8(v4, v29, type metadata accessor for CKRecipeDescriptorRecord);
    sub_21A3ED1C8(v4, v27, type metadata accessor for CKRecipeDescriptorRecord);
    v32 = sub_21A450F04();
    v33 = sub_21A451574();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v159[0] = v35;
      *v34 = 134218242;
      v36 = *&v29[v30[15]];
      sub_21A3ED168(v29, type metadata accessor for CKRecipeDescriptorRecord);
      *(v34 + 4) = v36;
      *(v34 + 12) = 2080;
      sub_21A3ED1C8(v27, v155, type metadata accessor for CKRecipeDescriptorRecord);
      v37 = sub_21A4510C4();
      v39 = v38;
      sub_21A3ED168(v27, type metadata accessor for CKRecipeDescriptorRecord);
      v40 = sub_21A3E2554(v37, v39, v159);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_21A3C2000, v32, v33, "Recipe targeting failed to target by sampling rate %f for recipe %s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x21CEDB220](v35, -1, -1);
      MEMORY[0x21CEDB220](v34, -1, -1);
    }

    else
    {

      sub_21A3ED168(v27, type metadata accessor for CKRecipeDescriptorRecord);
      sub_21A3ED168(v29, type metadata accessor for CKRecipeDescriptorRecord);
    }

    sub_21A3EC940();
    swift_allocError();
    *v54 = 18;
    result = swift_willThrow();
    goto LABEL_16;
  }

  sub_21A450D04();
  sub_21A3ED340(&qword_27CD28578, 255, MEMORY[0x277CC9578]);
  v154 = v11;
  v41 = v8;
  v42 = v12;
  if (sub_21A450FE4() & 1) != 0 || (v43 = *(v12 + 20), (sub_21A450FE4()))
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v44 = sub_21A450F24();
    __swift_project_value_buffer(v44, qword_27CD28C90);
    sub_21A3ED1C8(v4, v16, type metadata accessor for CKRecipeDescriptorRecord);
    v45 = sub_21A450F04();
    v46 = sub_21A451574();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v159[0] = v48;
      *v47 = 136315138;
      sub_21A3ED1C8(v16, v155, type metadata accessor for CKRecipeDescriptorRecord);
      v49 = sub_21A4510C4();
      v50 = v41;
      v52 = v51;
      sub_21A3ED168(v16, type metadata accessor for CKRecipeDescriptorRecord);
      v53 = sub_21A3E2554(v49, v52, v159);
      v41 = v50;

      *(v47 + 4) = v53;
      _os_log_impl(&dword_21A3C2000, v45, v46, "Recipe targeting failed at timestamp check for recipe %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x21CEDB220](v48, -1, -1);
      MEMORY[0x21CEDB220](v47, -1, -1);
    }

    else
    {

      sub_21A3ED168(v16, type metadata accessor for CKRecipeDescriptorRecord);
    }

    v56 = v154;
    sub_21A3EC940();
    swift_allocError();
    *v57 = 48;
    swift_willThrow();
    result = (*(v156 + 8))(v56, v41);
    goto LABEL_16;
  }

  v143 = v8;
  type metadata accessor for PopulationSegmentation();
  swift_initStackObject();
  v59 = sub_21A401DA8();
  v60 = v59;
  v61 = *(v4 + v30[19]);
  v62 = MEMORY[0x277D837D0];
  if (*(v61 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28580, &qword_21A456480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455F00;
    v64 = (v4 + v30[20]);
    v65 = v64[1];
    *(inited + 32) = *v64;
    v66 = MEMORY[0x277D83838];
    *(inited + 56) = v62;
    *(inited + 64) = v66;
    *(inited + 40) = v65;
    v67 = MEMORY[0x277D84A78];
    *(inited + 96) = MEMORY[0x277D84A28];
    *(inited + 104) = v67;
    *(inited + 72) = *(v61 + 32);

    v68 = v153;
    v69 = sub_21A401E94(inited);
    v70 = v68;
    if (v68)
    {
      swift_setDeallocating();
      v71 = *(inited + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
      swift_arrayDestroy();

      result = (*(v156 + 8))(v154, v143);
LABEL_16:
      v58 = *MEMORY[0x277D85DE8];
      return result;
    }

    v72 = v69;
    v142 = v60;
    swift_setDeallocating();
    v73 = *(inited + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
    swift_arrayDestroy();
  }

  else
  {
    v142 = v59;
    v72 = -1;
    v70 = v153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_21A455F10;
  *(v74 + 32) = 0x5F65636976656424;
  v153 = v74 + 32;
  *(v74 + 40) = 0xEA0000000000736FLL;
  *(v74 + 48) = _s24PrivateFederatedLearning8PFLUtilsO18sysctlStringByName4nameS2S_tFZ_0();
  *(v74 + 56) = v75;
  *(v74 + 72) = v62;
  strcpy((v74 + 80), "$device_type");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  sub_21A3FF888();
  *(v74 + 96) = v76;
  *(v74 + 104) = v77;
  *(v74 + 120) = v62;
  strcpy((v74 + 128), "$dodml_dataset");
  *(v74 + 143) = -18;
  v78 = v148;
  *(v74 + 144) = v147;
  *(v74 + 152) = v78;
  *(v74 + 168) = v62;
  *(v74 + 176) = 0xD000000000000013;
  v79 = MEMORY[0x277D83B88];
  *(v74 + 184) = 0x800000021A45BEC0;
  *(v74 + 192) = v72;
  *(v74 + 216) = v79;
  *(v74 + 224) = 0xD000000000000014;
  *(v74 + 232) = 0x800000021A45BEE0;
  v80 = (v4 + v42[20]);
  v82 = *v80;
  v81 = v80[1];
  v83 = (v4 + v42[13]);
  v85 = *v83;
  v84 = v83[1];

  v86 = sub_21A4039D8(v82, v81, v85, v84);
  *(v74 + 264) = v79;
  *(v74 + 240) = v86;
  v87 = sub_21A3E4F6C(v74);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  v88 = sub_21A3D3450(v149);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v159[0] = v87;
  sub_21A3D3D28(v88, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v159);
  if (!v70)
  {

    v90 = *&v159[0];
    v91 = (v4 + v42[17]);
    v92 = *v91;
    v93 = v91[1];
    v94 = v150;
    sub_21A4510A4();
    v95 = sub_21A451094();
    v97 = v96;
    (*(v151 + 8))(v94, v152);
    v152 = v97;
    if (v97 >> 60 == 15)
    {
    }

    else
    {
      v98 = objc_opt_self();
      v99 = sub_21A450C54();
      v157[0] = 0;
      v100 = [v98 JSONObjectWithData:v99 options:4 error:v157];

      v101 = v157[0];
      if (v100)
      {
        v151 = v95;
        sub_21A451694();
        swift_unknownObjectRelease();
        sub_21A3D3B38(v158, v159);
        sub_21A3D3B94(v159, v158);
        v157[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
        v157[0] = v90;

        LODWORD(v90) = sub_21A420EF4(v158, v157);
        sub_21A3D3BF0(v158, &qword_27CD28468, &unk_21A455FB0);
        sub_21A3D3BF0(v157, &qword_27CD28468, &unk_21A455FB0);
        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v102 = sub_21A450F24();
        __swift_project_value_buffer(v102, qword_27CD28C90);
        v103 = v144;
        sub_21A3ED1C8(v4, v144, type metadata accessor for CKRecipeDescriptorRecord);
        v104 = v4;
        v105 = v145;
        sub_21A3ED1C8(v104, v145, type metadata accessor for CKRecipeDescriptorRecord);

        v106 = sub_21A450F04();
        v107 = sub_21A451574();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          LODWORD(v150) = v90;
          v90 = v109;
          *&v158[0] = v109;
          *v108 = 67109890;
          *(v108 + 4) = v150 & 1;
          *(v108 + 8) = 2080;
          v110 = (v103 + v42[17]);
          v153 = 0;
          LODWORD(v149) = v107;
          v112 = *v110;
          v111 = v110[1];

          sub_21A3ED168(v103, type metadata accessor for CKRecipeDescriptorRecord);
          v113 = sub_21A3E2554(v112, v111, v158);

          *(v108 + 10) = v113;
          *(v108 + 18) = 2080;
          v114 = sub_21A450F74();
          v116 = v115;

          v117 = sub_21A3E2554(v114, v116, v158);

          *(v108 + 20) = v117;
          *(v108 + 28) = 2080;
          v118 = v145;
          sub_21A3ED1C8(v145, v155, type metadata accessor for CKRecipeDescriptorRecord);
          v119 = sub_21A4510C4();
          v121 = v120;
          sub_21A3ED168(v118, type metadata accessor for CKRecipeDescriptorRecord);
          v122 = sub_21A3E2554(v119, v121, v158);

          *(v108 + 30) = v122;
          _os_log_impl(&dword_21A3C2000, v106, v149, "Recipe targeting %{BOOL}d, predicate: %s, subject: %s, recipe: %s", v108, 0x26u);
          swift_arrayDestroy();
          v123 = v90;
          LOBYTE(v90) = v150;
          MEMORY[0x21CEDB220](v123, -1, -1);
          MEMORY[0x21CEDB220](v108, -1, -1);
        }

        else
        {

          sub_21A3ED168(v105, type metadata accessor for CKRecipeDescriptorRecord);
          sub_21A3ED168(v103, type metadata accessor for CKRecipeDescriptorRecord);
        }

        v136 = v143;
        v137 = v154;
        v139 = v151;
        if ((v90 & 1) == 0)
        {
          sub_21A3EC940();
          swift_allocError();
          *v140 = 20;
          swift_willThrow();
        }

        sub_21A3ECC34(v139, v152);

        __swift_destroy_boxed_opaque_existential_0(v159);
LABEL_42:
        result = (*(v156 + 8))(v137, v136);
        goto LABEL_16;
      }

      v124 = v101;

      v125 = sub_21A450A84();

      swift_willThrow();
      sub_21A3ECC34(v95, v152);
    }

    v126 = v146;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v127 = sub_21A450F24();
    __swift_project_value_buffer(v127, qword_27CD28C90);
    sub_21A3ED1C8(v4, v126, type metadata accessor for CKRecipeDescriptorRecord);
    v128 = sub_21A450F04();
    v129 = sub_21A451584();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v159[0] = v131;
      *v130 = 136315138;
      v132 = (v126 + v42[17]);
      v133 = *v132;
      v134 = v132[1];

      sub_21A3ED168(v126, type metadata accessor for CKRecipeDescriptorRecord);
      v135 = sub_21A3E2554(v133, v134, v159);

      *(v130 + 4) = v135;
      _os_log_impl(&dword_21A3C2000, v128, v129, "Failed to parse target criteria %s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x21CEDB220](v131, -1, -1);
      MEMORY[0x21CEDB220](v130, -1, -1);
    }

    else
    {

      sub_21A3ED168(v126, type metadata accessor for CKRecipeDescriptorRecord);
    }

    v136 = v143;
    v137 = v154;
    sub_21A3EC940();
    swift_allocError();
    *v138 = 19;
    swift_willThrow();

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void *sub_21A3E8C70(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v97 = a6;
  v95 = a5;
  v87 = a4;
  v86 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28618, &qword_21A456508);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v85 - v12;
  v13 = sub_21A450DF4();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v13);
  v88 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28620, &unk_21A456510);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v85 - v18;
  v19 = sub_21A450D94();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21A450E14();
  v99 = *(v92 - 8);
  v24 = *(v99 + 64);
  v25 = MEMORY[0x28223BE20](v92);
  v98 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v85 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v33 = *a1;
  v32 = a1[1];
  v34 = a1[2];
  v35 = a1[3];
  v7[2] = v33;
  v7[3] = v32;
  v7[4] = v34;
  v7[5] = v35;
  v36 = v86;
  v7[6] = a2;
  v7[7] = v36;
  v37 = v95;
  v7[8] = v87;
  v7[9] = v37;
  v95 = v34;
  sub_21A3ED4E4(v33, v32);
  sub_21A3FFD24();
  v7[10] = v38;
  v7[11] = v39;
  v96 = v33;
  v94 = v35;
  if (v32 == 3)
  {
LABEL_5:
    v41 = 0x69746375646F7270;
    v40 = 0xEA00000000006E6FLL;
    goto LABEL_7;
  }

  if (v32 != 4)
  {
    if (v32 == 5)
    {
      v40 = 0xE700000000000000;
      v41 = 0x676E6967617473;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v40 = 0xE500000000000000;
  v41 = 0x7972726163;
LABEL_7:
  v87 = v32;
  v42 = 0x6E776F6E6B6E7524;
  v7[12] = v41;
  v7[13] = v40;
  sub_21A450DD4();
  (*(v20 + 104))(v23, *MEMORY[0x277CC9668], v19);
  sub_21A450D54();
  v43 = sub_21A450D64();
  v45 = v44;

  (*(v20 + 8))(v23, v19);
  v46 = sub_21A3FFDD0(v43, v45);
  v48 = v47;

  v100 = v46;
  v101 = v48;
  v106 = 45;
  v107 = 0xE100000000000000;
  v104 = 95;
  v105 = 0xE100000000000000;
  sub_21A3ED2CC();
  v49 = sub_21A451654();
  v51 = v50;
  v53 = v99 + 8;
  v52 = *(v99 + 8);
  v54 = v31;
  v55 = v92;
  v52(v54, v92);

  v7[14] = v49;
  v7[15] = v51;
  sub_21A450DD4();
  v56 = v88;
  sub_21A450E04();
  v57 = v91;
  sub_21A450DE4();
  (*(v89 + 8))(v56, v90);
  v58 = sub_21A450D84();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_21A3D3BF0(v57, &qword_27CD28620, &unk_21A456510);
    v60 = 0xE800000000000000;
    v61 = 0x6E776F6E6B6E7524;
  }

  else
  {
    v62 = sub_21A450D74();
    v63 = v57;
    v61 = v62;
    v60 = v64;
    (*(v59 + 8))(v63, v58);
  }

  v99 = v53;
  v52(v29, v55);
  v7[16] = v61;
  v7[17] = v60;
  sub_21A450DD4();
  v65 = v93;
  sub_21A450DC4();
  v66 = sub_21A450DB4();
  v67 = *(v66 - 8);
  v68 = (*(v67 + 48))(v65, 1, v66);
  v69 = v96;
  if (v68 == 1)
  {
    sub_21A3D3BF0(v65, &qword_27CD28618, &qword_21A456508);
    v70 = 0xE800000000000000;
  }

  else
  {
    v42 = sub_21A450D74();
    v70 = v71;
    (*(v67 + 8))(v65, v66);
  }

  v72 = v95;
  v52(v98, v55);
  v7[18] = v42;
  v7[19] = v70;
  v73 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  v74 = v87;
  v75 = v94;
  if (v87 == 3)
  {
    sub_21A3ED49C(v69, 3uLL);
    sub_21A3ED49C(0, 3uLL);
    v76 = sub_21A451054();
    [v73 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];
  }

  else
  {
    sub_21A3ED4E4(v69, v87);
    sub_21A3ED49C(v69, v74);
    sub_21A3ED49C(0, 3uLL);
  }

  v100 = v69;
  v101 = v74;
  v102 = v72;
  v103 = v75;
  v77 = sub_21A3ECDCC(&v100);
  sub_21A3ED49C(v69, v74);
  v78 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v77 options:v73];

  v7[20] = [v78 publicCloudDatabase];
  v79 = [objc_opt_self() defaultRecordZone];
  v80 = [v79 zoneID];

  v7[21] = v80;
  v81 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  v82 = sub_21A451054();
  [v81 setName_];

  v7[22] = v81;
  v83 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v83 setPreferAnonymousRequests_];
  [v83 setQualityOfService_];
  [v83 setContainer_];
  [v83 setAllowsCellularAccess_];
  [v83 setAllowsExpensiveNetworkAccess_];

  v7[23] = v83;
  return v7;
}

uint64_t sub_21A3E953C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[86] = v3;
  v4[85] = a3;
  v4[84] = a2;
  v4[83] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B8, &qword_21A4564C8) - 8) + 64) + 15;
  v4[87] = swift_task_alloc();
  v6 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v4[88] = v6;
  v7 = *(v6 - 8);
  v4[89] = v7;
  v8 = *(v7 + 64) + 15;
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3E9664, 0, 0);
}

uint64_t sub_21A3E9664()
{
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v1 = sub_21A450F24();
  v0[94] = __swift_project_value_buffer(v1, qword_27CD28C90);
  v2 = sub_21A450F04();
  v3 = sub_21A451574();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21A3C2000, v2, v3, "Querying CK for policies", v4, 2u);
    MEMORY[0x21CEDB220](v4, -1, -1);
  }

  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];

  sub_21A3ED284(0, &qword_27CD285C0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285C8, &unk_21A4564D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21A455F00;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21A3ED230();
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = 0x695F6E6967756C70;
  *(v8 + 80) = 0xE900000000000064;

  v11 = sub_21A451534();
  v0[95] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A455F00;
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  *(v12 + 32) = 0x657669746361;
  *(v12 + 40) = 0xE600000000000000;
  *(v12 + 96) = v9;
  *(v12 + 104) = v10;
  v56 = v10;
  *(v12 + 72) = 0x737574617473;
  *(v12 + 80) = 0xE600000000000000;
  v13 = sub_21A451534();
  v0[96] = v13;
  v14 = sub_21A3ECFA8(0x73656369766564, 0xE700000000000000, v5[10], v5[11], 1819042084, 0xE400000000000000);
  v0[97] = v14;
  v15 = sub_21A3ECFA8(0x73656C61636F6CLL, 0xE700000000000000, v5[14], v5[15], 1819042084, 0xE400000000000000);
  v0[98] = v15;
  v16 = sub_21A3ECFA8(0x65676175676E616CLL, 0xE900000000000073, v5[16], v5[17], 1819042084, 0xE400000000000000);
  v0[99] = v16;
  v17 = sub_21A3ECFA8(0x736E6F69676572, 0xE700000000000000, v5[18], v5[19], 1819042084, 0xE400000000000000);
  v0[100] = v17;
  v18 = sub_21A3ECFA8(0xD000000000000013, 0x800000021A45BF00, v5[12], v5[13], 1819042084, 0xE400000000000000);
  v0[101] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B0, &qword_21A4564C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21A456270;
  v57 = v11;
  *(v19 + 32) = v11;
  *(v19 + 40) = v13;
  v20 = v13;
  *(v19 + 48) = v14;
  *(v19 + 56) = v15;
  v21 = v17;
  *(v19 + 64) = v16;
  *(v19 + 72) = v17;
  *(v19 + 80) = v18;
  v0[79] = v19;
  v22 = v5[7];
  if (v22)
  {
    v23 = *(v0[86] + 48);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21A455F00;
    v25 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = v56;
    *(v24 + 32) = v23;
    *(v24 + 40) = v22;
    *(v24 + 96) = v25;
    *(v24 + 104) = v56;
    *(v24 + 72) = 0xD000000000000015;
    *(v24 + 80) = 0x800000021A45B9A0;
    v26 = v57;
    v27 = v20;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v21;
    v32 = v18;

    v33 = sub_21A451534();
    MEMORY[0x21CED99D0]();
    if (*((v0[79] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[79] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = *((v0[79] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21A451314();
    }

    sub_21A451364();

    v34 = v0[79];
  }

  else
  {
    v35 = v57;
    v36 = v20;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v41 = v18;
  }

  v42 = v0[86];
  v43 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v44 = sub_21A4512D4();

  v45 = [v43 initWithType:1 subpredicates:v44];
  v0[102] = v45;

  sub_21A3ED284(0, &qword_27CD285D8, 0x277CBC578);
  v46 = v45;
  v47 = sub_21A4515B4();
  v0[103] = v47;
  v48 = *(v42 + 168);
  v0[104] = v48;
  v0[105] = sub_21A3EC940();
  v49 = swift_allocError();
  v0[106] = v49;
  *v50 = 6;

  v51 = v48;
  v52 = swift_task_alloc();
  v0[107] = v52;
  *v52 = v0;
  v52[1] = sub_21A3E9C90;
  v53 = v0[86];

  return sub_21A400430(v49, v53, v47, v51);
}

uint64_t sub_21A3E9C90(uint64_t a1, void *a2)
{
  v5 = *v3;
  v6 = *(*v3 + 856);
  v7 = *(*v3 + 832);
  v8 = *(*v3 + 688);
  v9 = *v3;
  v5[108] = a1;
  v5[109] = v2;

  if (v2)
  {
    v10 = sub_21A3EAF80;
  }

  else
  {
    v11 = v5[106];

    v10 = sub_21A3E9E08;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_21A3E9E08()
{
  v149 = v0;
  v1 = v0[108];
  v2 = v0[94];

  v3 = sub_21A450F04();
  v4 = sub_21A451574();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[108];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_21A3C2000, v3, v4, "Number of CK Policies %ld", v7, 0xCu);
    MEMORY[0x21CEDB220](v7, -1, -1);
  }

  else
  {
    v8 = v0[108];
  }

  v9 = v0[108];
  v10 = *(v9 + 16);
  if (v10)
  {
    v129 = v0[88];
    v130 = v0[89];
    v131 = v0[86];
    v11 = (v9 + 48);
    v132 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = v0[94];
      v22 = *(v11 - 1);
      v23 = *v11;
      v24 = *(v11 - 2);
      sub_21A3ED150(v22);
      v25 = sub_21A450F04();
      v26 = sub_21A451574();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&dword_21A3C2000, v25, v26, "Policy CKRecordID: %@", v27, 0xCu);
        sub_21A3D3BF0(v28, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v28, -1, -1);
        MEMORY[0x21CEDB220](v27, -1, -1);
      }

      v146 = v24;
      if (v23)
      {
        v143 = v10;
        v30 = v0[105];
        sub_21A3ECC48();
        v31 = *(v131 + 64);
        v32 = *(v131 + 72);
        v33 = swift_allocError();
        *v34 = 35;
        v35 = sub_21A450A74();
        [v35 code];

        v0[80] = v33;
        v36 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v0 + 58);
        }

        else
        {
          v55 = sub_21A450A74();
          v56 = [v55 domain];

          sub_21A451084();
        }

        v140 = v11;
        v57 = v0[85];
        v0[71] = v0[84];
        v0[72] = v57;
        v0[73] = 46;
        v58 = 0xE100000000000000;
        v0[74] = 0xE100000000000000;
        sub_21A3ED2CC();
        v59 = (sub_21A451644() + 16);
        if (*v59)
        {
          v60 = &v59[2 * *v59];
          v61 = *v60;
          v58 = v60[1];
        }

        else
        {
          v61 = 85;
        }

        if ((v31 != v61 || v32 != v58) && (sub_21A4519B4() & 1) == 0)
        {
        }

        v79 = v0[94];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21A456280;
        *(inited + 32) = 0x6E6967756C70;
        *(inited + 40) = 0xE600000000000000;
        v81 = sub_21A451054();

        *(inited + 48) = v81;
        *(inited + 56) = 0x64496B736174;
        *(inited + 64) = 0xE600000000000000;
        v82 = sub_21A451054();

        *(inited + 72) = v82;
        *(inited + 80) = 0x6E6F697461636F6CLL;
        *(inited + 88) = 0xE800000000000000;
        *(inited + 96) = sub_21A451054();
        *(inited + 104) = 0x65736143657375;
        *(inited + 112) = 0xE700000000000000;
        v83 = sub_21A451054();

        *(inited + 120) = v83;
        *(inited + 128) = 0x646F43726F727265;
        *(inited + 136) = 0xE900000000000065;
        *(inited + 144) = sub_21A4514E4();
        *(inited + 152) = 0x6D6F44726F727265;
        *(inited + 160) = 0xEB000000006E6961;
        v84 = sub_21A451054();

        *(inited + 168) = v84;
        v85 = sub_21A3E57A0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
        swift_arrayDestroy();
        v86 = swift_allocObject();
        *(v86 + 16) = v85;
        v87 = sub_21A451054();
        v0[50] = sub_21A3ED320;
        v0[51] = v86;
        v0[46] = MEMORY[0x277D85DD0];
        v0[47] = 1107296256;
        v0[48] = sub_21A432B2C;
        v0[49] = &block_descriptor;
        v88 = _Block_copy(v0 + 46);

        AnalyticsSendEventLazy();

        _Block_release(v88);
        v89 = v0[51];

        v90 = v22;
        v91 = sub_21A450F04();
        v92 = sub_21A451584();
        if (os_log_type_enabled(v91, v92))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v148[0] = v13;
          *v12 = 136315138;
          swift_getErrorValue();
          v14 = v0[68];
          v15 = v0[69];
          v16 = v0[70];
          v17 = sub_21A451AA4();
          v19 = v18;
          sub_21A3ED15C(v22);
          v20 = sub_21A3E2554(v17, v19, v148);

          *(v12 + 4) = v20;
          _os_log_impl(&dword_21A3C2000, v91, v92, "Error: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v13);
          MEMORY[0x21CEDB220](v13, -1, -1);
          MEMORY[0x21CEDB220](v12, -1, -1);
        }

        else
        {

          sub_21A3ED15C(v22);
        }

        sub_21A3ED15C(v22);
      }

      else
      {
        v37 = v0[88];
        v38 = v0[87];
        sub_21A3ED150(v22);
        v39 = v22;
        sub_21A444828(v39, v38);
        v40 = (*(v130 + 48))(v38, 1, v37);
        v41 = v0[94];
        if (v40 != 1)
        {
          v62 = v0[93];
          v63 = v0[92];
          v64 = v0[91];
          sub_21A3ED388(v0[87], v62, type metadata accessor for CKRecipeDescriptorRecord);
          sub_21A3ED1C8(v62, v63, type metadata accessor for CKRecipeDescriptorRecord);
          sub_21A3ED1C8(v62, v64, type metadata accessor for CKRecipeDescriptorRecord);
          v65 = sub_21A450F04();
          v66 = sub_21A451574();
          v67 = os_log_type_enabled(v65, v66);
          v68 = v0[92];
          v69 = v0[91];
          if (v67)
          {
            v70 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v148[0] = v137;
            *v70 = 136315394;
            v71 = (v68 + *(v129 + 44));
            v141 = v11;
            v144 = v10;
            v72 = *v71;
            v73 = v71[1];

            sub_21A3ED168(v68, type metadata accessor for CKRecipeDescriptorRecord);
            v74 = sub_21A3E2554(v72, v73, v148);
            v11 = v141;

            *(v70 + 4) = v74;
            *(v70 + 12) = 2080;
            v75 = (v69 + *(v129 + 52));
            v76 = *v75;
            v77 = v75[1];

            sub_21A3ED168(v69, type metadata accessor for CKRecipeDescriptorRecord);
            v78 = sub_21A3E2554(v76, v77, v148);
            v10 = v144;

            *(v70 + 14) = v78;
            _os_log_impl(&dword_21A3C2000, v65, v66, "fetched CK policy record with plugin_id: %s, and recipe_id: %s", v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CEDB220](v137, -1, -1);
            MEMORY[0x21CEDB220](v70, -1, -1);
          }

          else
          {

            sub_21A3ED168(v69, type metadata accessor for CKRecipeDescriptorRecord);
            sub_21A3ED168(v68, type metadata accessor for CKRecipeDescriptorRecord);
          }

          v100 = v132;
          sub_21A3ED1C8(v0[93], v0[90], type metadata accessor for CKRecipeDescriptorRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_21A408640(0, v132[2] + 1, 1, v132);
          }

          v102 = v100[2];
          v101 = v100[3];
          if (v102 >= v101 >> 1)
          {
            v132 = sub_21A408640(v101 > 1, v102 + 1, 1, v100);
          }

          else
          {
            v132 = v100;
          }

          v103 = v0[93];
          v104 = v0[90];
          sub_21A3ED15C(v22);
          sub_21A3ED15C(v22);

          sub_21A3ED168(v103, type metadata accessor for CKRecipeDescriptorRecord);
          v132[2] = v102 + 1;
          sub_21A3ED388(v104, v132 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v102, type metadata accessor for CKRecipeDescriptorRecord);
          goto LABEL_9;
        }

        v143 = v10;
        sub_21A3D3BF0(v0[87], &qword_27CD285B8, &qword_21A4564C8);
        v42 = v39;
        v43 = sub_21A450F04();
        v44 = sub_21A451584();
        sub_21A3ED15C(v22);
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          *(v45 + 4) = v42;
          *v46 = v22;
          v47 = v42;
          _os_log_impl(&dword_21A3C2000, v43, v44, "Failed to decode Policy, skipping record: %@", v45, 0xCu);
          sub_21A3D3BF0(v46, &qword_27CD28608, &qword_21A456570);
          MEMORY[0x21CEDB220](v46, -1, -1);
          MEMORY[0x21CEDB220](v45, -1, -1);
        }

        v48 = v0[105];

        sub_21A3ECC48();
        v49 = *(v131 + 64);
        v50 = *(v131 + 72);
        v51 = swift_allocError();
        *v52 = 46;
        v53 = sub_21A450A74();
        [v53 code];

        v0[82] = v51;
        v54 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v0 + 63);
        }

        else
        {
          v93 = sub_21A450A74();
          v94 = [v93 domain];

          sub_21A451084();
        }

        v140 = v11;
        v95 = v0[85];
        v0[75] = v0[84];
        v0[76] = v95;
        v0[77] = 46;
        v96 = 0xE100000000000000;
        v0[78] = 0xE100000000000000;
        sub_21A3ED2CC();
        v97 = (sub_21A451644() + 16);
        if (*v97)
        {
          v98 = &v97[2 * *v97];
          v99 = *v98;
          v96 = v98[1];
        }

        else
        {
          v99 = 85;
        }

        if ((v49 != v99 || v50 != v96) && (sub_21A4519B4() & 1) == 0)
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
        v105 = swift_initStackObject();
        *(v105 + 16) = xmmword_21A456280;
        *(v105 + 32) = 0x6E6967756C70;
        *(v105 + 40) = 0xE600000000000000;
        v106 = sub_21A451054();

        *(v105 + 48) = v106;
        *(v105 + 56) = 0x64496B736174;
        *(v105 + 64) = 0xE600000000000000;
        v107 = sub_21A451054();

        *(v105 + 72) = v107;
        *(v105 + 80) = 0x6E6F697461636F6CLL;
        *(v105 + 88) = 0xE800000000000000;
        *(v105 + 96) = sub_21A451054();
        *(v105 + 104) = 0x65736143657375;
        *(v105 + 112) = 0xE700000000000000;
        v108 = sub_21A451054();

        *(v105 + 120) = v108;
        *(v105 + 128) = 0x646F43726F727265;
        *(v105 + 136) = 0xE900000000000065;
        *(v105 + 144) = sub_21A4514E4();
        *(v105 + 152) = 0x6D6F44726F727265;
        *(v105 + 160) = 0xEB000000006E6961;
        v109 = sub_21A451054();

        *(v105 + 168) = v109;
        v110 = sub_21A3E57A0(v105);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
        swift_arrayDestroy();
        v111 = swift_allocObject();
        *(v111 + 16) = v110;
        v112 = sub_21A451054();
        v0[56] = sub_21A3ED530;
        v0[57] = v111;
        v0[52] = MEMORY[0x277D85DD0];
        v0[53] = 1107296256;
        v0[54] = sub_21A432B2C;
        v0[55] = &block_descriptor_33;
        v113 = _Block_copy(v0 + 52);

        AnalyticsSendEventLazy();

        _Block_release(v113);
        v114 = v0[57];

        sub_21A3ED15C(v22);
        sub_21A3ED15C(v22);
      }

      v11 = v140;
      v10 = v143;
LABEL_9:
      v11 += 24;
      if (!--v10)
      {
        v115 = v0[108];
        v116 = v132;
        goto LABEL_52;
      }
    }
  }

  v116 = MEMORY[0x277D84F90];
LABEL_52:

  v136 = v0[103];
  v139 = v0[102];
  v133 = v0[100];
  v134 = v0[101];
  v117 = v0[99];
  v118 = v0[98];
  v119 = v0[97];
  v120 = v0[96];
  v121 = v0[95];
  v135 = v0[93];
  v138 = v0[92];
  v142 = v0[91];
  v145 = v0[90];
  v147 = v0[87];
  v148[0] = v116;
  v122 = v0[83];
  sub_21A3F63DC();
  v123 = v148[0];
  v124 = type metadata accessor for CKRecipeDescriptorIterator();
  v125 = swift_allocObject();
  *(v125 + 16) = v123;
  *(v125 + 24) = 0;
  v122[3] = v124;
  v122[4] = sub_21A3ED340(&qword_27CD28600, v126, type metadata accessor for CKRecipeDescriptorIterator);

  *v122 = v125;

  v127 = v0[1];

  return v127();
}

uint64_t sub_21A3EAF80()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 744);
  v13 = *(v0 + 736);
  v14 = *(v0 + 728);
  v15 = *(v0 + 848);
  v16 = *(v0 + 720);
  v17 = *(v0 + 696);

  v10 = *(v0 + 8);
  v11 = *(v0 + 872);

  return v10();
}

uint64_t sub_21A3EB098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A3EB0BC, 0, 0);
}

uint64_t sub_21A3EB0BC()
{
  v1 = v0[4];
  v2 = *MEMORY[0x277CBBFC0];
  v3 = *(MEMORY[0x277CBBEA0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_21A3EB178;
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x28210DF20](v5, v1, 0, v2);
}

uint64_t sub_21A3EB178(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_21A3EB288(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(type metadata accessor for PFLTaskPreferences(0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28598, &qword_21A4564A8) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for CKPayloadRecord(0);
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21A3EB3DC, 0, 0);
}

uint64_t sub_21A3EB3DC()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 48))(v2, v3);
  v6 = v5;
  v0[18] = v4;
  v0[19] = v5;
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v7 = sub_21A450F24();
  v0[20] = __swift_project_value_buffer(v7, qword_27CD28C90);

  v8 = sub_21A450F04();
  v9 = sub_21A451574();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21A3E2554(v4, v6, v23);
    _os_log_impl(&dword_21A3C2000, v8, v9, "Querying Payload for recipe: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x21CEDB220](v11, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v12 = v0[12];
  sub_21A3ED284(0, &qword_27CD284B8, 0x277CBC5D0);
  v13 = *(v12 + 168);

  v14 = v13;
  v15 = sub_21A451524();
  v0[21] = v15;
  v0[22] = sub_21A3EC940();
  v16 = swift_allocError();
  v0[23] = v16;
  *v17 = 41;

  v18 = v15;
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_21A3EB69C;
  v20 = v0[12];
  v21 = *MEMORY[0x277D85DE8];

  return sub_21A4008C8(v16, v20, v18);
}

uint64_t sub_21A3EB69C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 96);
  v11 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v7 = sub_21A3EC084;
  }

  else
  {

    v7 = sub_21A3EB82C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21A3EB82C()
{
  v99 = v0;
  v98[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  v4 = sub_21A450F04();
  v5 = sub_21A451574();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v98[0] = v8;
    *v7 = 136315138;
    if (*(v6 + 16) && (v9 = *(v0 + 200), v10 = sub_21A3DCB4C(*(v0 + 168)), (v11 & 1) != 0))
    {
      v12 = *(*(v0 + 200) + 56) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      sub_21A3ED150(*v12);
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    *(v0 + 48) = v13;
    *(v0 + 56) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285A8, &qword_21A4564B0);
    v15 = sub_21A4510C4();
    v17 = sub_21A3E2554(v15, v16, v98);

    *(v7 + 4) = v17;
    _os_log_impl(&dword_21A3C2000, v4, v5, "fetchedPayload: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x21CEDB220](v8, -1, -1);
    MEMORY[0x21CEDB220](v7, -1, -1);
  }

  if (!*(*(v0 + 200) + 16) || (v18 = sub_21A3DCB4C(*(v0 + 168)), (v19 & 1) == 0))
  {
    v31 = *(v0 + 168);
    v30 = *(v0 + 176);
    v32 = *(v0 + 152);

    v33 = swift_allocError();
    *v34 = 42;
    sub_21A3ED0FC();
    swift_allocError();
    *v35 = 4;
    *(v35 + 8) = v33;
    swift_willThrow();

LABEL_23:
    v71 = *(v0 + 136);
    v73 = *(v0 + 104);
    v72 = *(v0 + 112);

    v74 = *(v0 + 8);
    v75 = *MEMORY[0x277D85DE8];

    return v74();
  }

  v20 = *(*(v0 + 200) + 56) + 16 * v18;
  v21 = *v20;
  v22 = *(v20 + 8);
  sub_21A3ED150(*v20);

  if (v22)
  {
    v24 = *(v0 + 168);
    v23 = *(v0 + 176);
    v25 = *(v0 + 152);

    v26 = swift_allocError();
    *v27 = 43;
    sub_21A3ED0FC();
    swift_allocError();
    *v28 = 4;
    *(v28 + 8) = v26;
    swift_willThrow();
    v29 = v21;
LABEL_14:
    sub_21A3ED15C(v29);

    goto LABEL_23;
  }

  v36 = *(v0 + 120);
  v37 = *(v0 + 128);
  v38 = *(v0 + 112);
  sub_21A446940(v21, v38);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    v24 = *(v0 + 168);
    v39 = *(v0 + 176);
    v40 = *(v0 + 152);
    v41 = *(v0 + 112);

    sub_21A3D3BF0(v41, &qword_27CD28598, &qword_21A4564A8);
    v42 = swift_allocError();
    *v43 = 44;
    sub_21A3ED0FC();
    swift_allocError();
    *v44 = 4;
    *(v44 + 8) = v42;
    swift_willThrow();
    v29 = v21;
    goto LABEL_14;
  }

  v45 = *(v0 + 136);
  sub_21A3ED388(*(v0 + 112), v45, type metadata accessor for CKPayloadRecord);
  v46 = objc_opt_self();
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v49 = sub_21A450C54();
  *(v0 + 64) = 0;
  v50 = [v46 JSONObjectWithData:v49 options:0 error:v0 + 64];

  v51 = *(v0 + 64);
  if (!v50)
  {
    v62 = *(v0 + 152);
    v63 = v51;

    v64 = sub_21A450A84();

    swift_willThrow();
LABEL_21:
    v67 = *(v0 + 168);
    v66 = *(v0 + 176);
    v59 = *(v0 + 136);
    v68 = swift_allocError();
    *v69 = 45;
    sub_21A3ED0FC();
    swift_allocError();
    *v70 = 4;
    *(v70 + 8) = v68;
    swift_willThrow();

    sub_21A3ED15C(v21);
    goto LABEL_22;
  }

  v52 = v51;
  sub_21A451694();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = *(v0 + 152);

    goto LABEL_21;
  }

  v53 = *(v0 + 208);
  v54 = *(v0 + 72);
  type metadata accessor for FederatedBuffer();
  swift_allocObject();

  v56 = sub_21A409EB0(v55);
  if (v53)
  {
    v57 = *(v0 + 168);
    v58 = *(v0 + 152);
    v59 = *(v0 + 136);

    sub_21A3ED0FC();
    swift_allocError();
    *v60 = 4;
    *(v60 + 8) = v53;
    swift_willThrow();
    v61 = v53;
    sub_21A3ED15C(v21);

LABEL_22:
    sub_21A3ED168(v59, type metadata accessor for CKPayloadRecord);
    goto LABEL_23;
  }

  v97 = v56;
  v77 = *(v0 + 136);
  v78 = *(v0 + 120);
  v79 = type metadata accessor for PFLTaskStorage();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  sub_21A433D34();
  sub_21A4341BC((v77 + *(v78 + 24)));
  v82 = *(v0 + 168);
  v83 = *(v0 + 152);
  v85 = v84;
  v86 = *(v0 + 136);
  v87 = *(v0 + 104);
  v95 = *(v0 + 144);
  v96 = *(v0 + 112);
  v88 = *(v0 + 88);

  sub_21A3ED15C(v21);

  sub_21A3ED1C8(v88, v87, type metadata accessor for PFLTaskPreferences);
  v89 = type metadata accessor for PFLTask();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  v92 = swift_allocObject();
  v92[5] = v85;
  v92[6] = 0;
  v92[2] = v95;
  v92[3] = v83;
  v92[4] = v54;
  sub_21A3ED388(v87, v92 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences, type metadata accessor for PFLTaskPreferences);
  v92[6] = v97;
  sub_21A3ED168(v86, type metadata accessor for CKPayloadRecord);

  v93 = *(v0 + 8);
  v94 = *MEMORY[0x277D85DE8];

  return v93(v92);
}

uint64_t sub_21A3EC084()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  sub_21A3ED0FC();
  swift_allocError();
  *v4 = 4;
  *(v4 + 8) = v1;
  swift_willThrow();

  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_21A3EC188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A3EC1AC, 0, 0);
}

uint64_t sub_21A3EC1AC()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B0, &qword_21A4564C0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_21A456290;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277CBBE98] + 4);
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_21A3EC294;
  v6 = v0[3];

  return MEMORY[0x28210DF18](v2, 0);
}

uint64_t sub_21A3EC294(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_21A3EC3E8;
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_21A3EC3C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21A3EC3E8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_21A3EC44C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_21A3ED49C(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  return v0;
}

uint64_t sub_21A3EC4C8()
{
  sub_21A3EC44C();

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EC520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A3EC5D4;

  return sub_21A3E953C(a1, a2, a3);
}

uint64_t sub_21A3EC5D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21A3EC6CC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC774;

  return sub_21A3EB288(a1, a2);
}

uint64_t sub_21A3EC774(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_21A3EC8BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_21A3ED340(&qword_27CD28560, a2, type metadata accessor for CKRecipeDescriptorIterator);
  result = sub_21A3ED340(&qword_27CD28568, v3, type metadata accessor for CKRecipeDescriptorIterator);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21A3EC940()
{
  result = qword_27CD28570;
  if (!qword_27CD28570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28570);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21A3EC9F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21A3D3B94((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_21A3ECA48(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CEDB240](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CEDB240](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A3ECAD4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21A3D3B94(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_21A3D3B38(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_21A3D3BF0(v22, &qword_27CD28590, &qword_21A4564A0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A3ECC34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21A3E759C(a1, a2);
  }

  return a1;
}

uint64_t sub_21A3ECC48()
{
  v0 = sub_21A450D14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450D04();
  v5 = _s24PrivateFederatedLearning8PFLUtilsO18getDayAndHourInGMT4dateSi3day_Si4hourt10Foundation4DateV_tFZ_0(v4);
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v12 = v5;
  v13 = sub_21A451974();
  v14 = v8;
  MEMORY[0x21CED98B0](58, 0xE100000000000000);
  v12 = v7;
  v9 = sub_21A451974();
  MEMORY[0x21CED98B0](v9);

  return v13;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_21A3ECDCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (v2 != 5)
  {
    v14 = *a1;
    v15 = v2;
    v16 = v4;
    v17 = v3;
    v18 = xmmword_21A4562A0;
    v19 = 0;
    v20 = 0;
    if (v2 >= 4)
    {
      if (v2 == 4)
      {
        sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
LABEL_8:
        v5 = 1;
        goto LABEL_9;
      }
    }

    sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
    v10[0] = v1;
    v10[1] = v2;
    v10[2] = v4;
    v10[3] = v3;
    v11 = xmmword_21A4562B0;
    v12 = 0;
    v13 = 0;
    sub_21A3ED4E4(v1, v2);
    sub_21A3D3BF0(v10, &qword_27CD28628, &unk_21A458B90);
    goto LABEL_8;
  }

  v14 = *a1;
  v15 = 5;
  v16 = v4;
  v17 = v3;
  v18 = xmmword_21A4562A0;
  v19 = 0;
  v20 = 0;
  sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
  v14 = v1;
  v15 = 5;
  v16 = v4;
  v17 = v3;
  *&v18 = v1;
  *(&v18 + 1) = 5;
  v19 = v4;
  v20 = v3;
  sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
  v5 = 2;
LABEL_9:
  v6 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v7 = sub_21A451054();

  v8 = [v6 initWithContainerIdentifier:v7 environment:v5];

  return v8;
}

uint64_t sub_21A3ECFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21A3ED284(0, &qword_27CD285C0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285C8, &unk_21A4564D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A455F00;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21A3ED230();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A455F00;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
  *(v12 + 104) = sub_21A3ED3F0();
  *(v12 + 72) = v13;

  return sub_21A451534();
}

unint64_t sub_21A3ED0FC()
{
  result = qword_27CD285A0;
  if (!qword_27CD285A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD285A0);
  }

  return result;
}

uint64_t sub_21A3ED168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A3ED1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A3ED230()
{
  result = qword_27CD285D0;
  if (!qword_27CD285D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD285D0);
  }

  return result;
}

uint64_t sub_21A3ED284(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_21A3ED2CC()
{
  result = qword_27CD285E8;
  if (!qword_27CD285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD285E8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A3ED340(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21A3ED388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A3ED3F0()
{
  result = qword_27CD28610;
  if (!qword_27CD28610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284A0, &qword_21A4560F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28610);
  }

  return result;
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

uint64_t sub_21A3ED49C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_21A3ED4E4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_21A3ED538(void (*a1)(unint64_t *__return_ptr, void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v8 = sub_21A3F6A64(a3, a4);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v58 = MEMORY[0x277D84F90];
    sub_21A3E495C(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v53 = v58;
      v11 = (v7 >> 59) & 1;
      if ((a4 & 0x1000000000000000) == 0)
      {
        LOBYTE(v11) = 1;
      }

      v12 = 4 << v11;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(a4) & 0xF;
      }

      else
      {
        v13 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v14 = 15;
      v47 = v8;
      while (!__OFADD__(v10, 1))
      {
        v15 = v14 & 0xC;
        v16 = (v14 & 1) == 0 || v15 == v12;
        v17 = v16;
        v52 = v17;
        if (v16)
        {
          v18 = v14;
          if (v15 == v12)
          {
            v44 = v14;
            v18 = sub_21A424280(v14, v7, a4);
            v14 = v44;
          }

          v19 = v18 >> 16;
          if (v18 >> 16 >= v13)
          {
            goto LABEL_62;
          }

          if ((v18 & 1) == 0)
          {
            v20 = v14;
            v21 = sub_21A3F6CA0(v18, v7, a4);
            v14 = v20;
            v19 = v21 >> 16;
          }
        }

        else
        {
          v19 = v14 >> 16;
          if (v14 >> 16 >= v13)
          {
            goto LABEL_63;
          }
        }

        v51 = v14;
        v49 = v15;
        if ((a4 & 0x1000000000000000) != 0)
        {
          v24 = sub_21A451744();
        }

        else
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v55[0] = v7;
            v55[1] = a4 & 0xFFFFFFFFFFFFFFLL;
            v23 = v55 + v19;
          }

          else
          {
            v22 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v7 & 0x1000000000000000) == 0)
            {
              v22 = sub_21A4517E4();
            }

            v23 = (v22 + v19);
          }

          v24 = *v23;
          if (*v23 < 0)
          {
            v43 = (__clz(v24 ^ 0xFF) - 24);
            if (v43 > 2)
            {
              if (v43 == 3)
              {
                v24 = ((v24 & 0xF) << 12) | ((v23[1] & 0x3F) << 6) | v23[2] & 0x3F;
              }

              else
              {
                v24 = ((v24 & 0xF) << 18) | ((v23[1] & 0x3F) << 12) | ((v23[2] & 0x3F) << 6) | v23[3] & 0x3F;
              }
            }

            else if (v43 != 1)
            {
              v24 = v23[1] & 0x3F | ((v24 & 0x1F) << 6);
            }
          }
        }

        v50 = v10 + 1;
        v25 = v7;
        LODWORD(v55[0]) = v24;
        a1(&v56, v55);
        if (v5)
        {
          goto LABEL_67;
        }

        v5 = 0;
        v26 = v56;
        v27 = v57;
        v28 = v53;
        v58 = v53;
        v30 = *(v53 + 16);
        v29 = *(v53 + 24);
        if (v30 >= v29 >> 1)
        {
          v54 = v56;
          v46 = v57;
          sub_21A3E495C((v29 > 1), v30 + 1, 1);
          v27 = v46;
          v26 = v54;
          v28 = v58;
        }

        *(v28 + 16) = v30 + 1;
        v31 = v28 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v27;
        if (v52)
        {
          v7 = v25;
          v32 = v51;
          if (v49 == v12)
          {
            v45 = v28;
            v32 = sub_21A424280(v51, v25, a4);
            v28 = v45;
          }

          v33 = v47;
          if (v13 <= v32 >> 16)
          {
            goto LABEL_64;
          }

          if ((v32 & 1) == 0)
          {
            v34 = v25;
            v35 = v28;
            v36 = v32;
            v37 = sub_21A3F6CA0(v32, v34, a4);
            v28 = v35;
            v32 = v36 & 0xC | v37 & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v32 = v51;
          v7 = v25;
          v33 = v47;
          if (v13 <= v51 >> 16)
          {
            goto LABEL_65;
          }
        }

        v53 = v28;
        if ((a4 & 0x1000000000000000) != 0)
        {
          v14 = sub_21A451104();
        }

        else
        {
          v38 = v32 >> 16;
          if ((a4 & 0x2000000000000000) != 0)
          {
            v56 = v7;
            v57 = a4 & 0xFFFFFFFFFFFFFFLL;
            v40 = *(&v56 + v38);
          }

          else
          {
            v39 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v7 & 0x1000000000000000) == 0)
            {
              v39 = sub_21A4517E4();
            }

            v40 = *(v39 + v38);
          }

          v41 = v40;
          v42 = __clz(v40 ^ 0xFF) - 24;
          if (v41 >= 0)
          {
            LOBYTE(v42) = 1;
          }

          v14 = ((v38 + v42) << 16) | 5;
        }

        ++v10;
        if (v50 == v33)
        {
          return v53;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
    }

    __break(1u);
LABEL_67:

    __break(1u);
  }

  return result;
}

uint64_t PFLPluginError.rawValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PFLPluginError.__allocating_init(rawValue:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PFLPluginError.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PFLPluginError.__allocating_init(error:)(void *a1)
{
  v2 = sub_21A3F73FC();

  return v2;
}

uint64_t PFLPluginError.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PFLPluginError.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EDA44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for PFLPluginError();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_21A3EDA88@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

BOOL sub_21A3EDB34(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21A3EDB64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21A3EDB90@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21A3EDC68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21A3EDC98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A3EC5D4;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1);
}

uint64_t sub_21A3EDD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC5D4;

  return PFLTaskRunner.ensureDataAvailability(taskPreferences:)(a1, a2, a3);
}

uint64_t PFLTaskRunner.ensureDataAvailability(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21A3EDF40;

  return v11(a1, a2, a3);
}

uint64_t sub_21A3EDF40(char a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_21A3EE040, 0, 0);
}

uint64_t sub_21A3EE040()
{
  if (*(v0 + 24) != 1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3EE178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_21A3EE1D8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_21A3EE210(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_21A3F74C8(v2, v3);
  return sub_21A3ECC34(v5, v6);
}

uint64_t sub_21A3EE280()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_21A3F74C8(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_21A3EE2D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_21A3EE330()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_21A3EE368(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t PFLTaskResult.__allocating_init(json:vector:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 24) = xmmword_21A456520;
  *(v6 + 40) = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  *(v6 + 16) = a1;
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  sub_21A3F74C8(a2, a3);
  sub_21A3ECC34(v7, v8);
  sub_21A3ECC34(a2, a3);
  return v6;
}

void *PFLTaskResult.init(json:vector:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(v3 + 3) = xmmword_21A456520;
  v3[5] = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  v3[2] = a1;
  swift_beginAccess();
  v7 = v3[3];
  v8 = v3[4];
  v3[3] = a2;
  v3[4] = a3;
  sub_21A3F74C8(a2, a3);
  sub_21A3ECC34(v7, v8);
  sub_21A3ECC34(a2, a3);
  return v3;
}

uint64_t sub_21A3EE578(unint64_t a1, unint64_t a2)
{
  v83 = a1;
  v84 = a2;
  v88 = sub_21A450AB4();
  v2 = *(v88 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v88);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21A450BE4();
  v85 = *(v89 - 8);
  v6 = v85[8];
  v7 = MEMORY[0x28223BE20](v89);
  v78 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v72 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v72 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v13);
  v95 = &v72 - v16;
  v17 = sub_21A4509C4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v72 - v26;
  sub_21A450994();
  sub_21A450984();
  sub_21A4509A4();
  v28 = *(v18 + 8);
  v28(v22, v17);
  v28(v25, v17);
  v91 = v27;
  v29 = v87;
  v30 = sub_21A3ED538(sub_21A3F9318, v90, v83, v84);
  v87 = v29;
  v93 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286A0, &qword_21A456A28);
  sub_21A3F9338();
  v31 = sub_21A451264();
  v33 = v32;
  v28(v27, v17);
  sub_21A450B24();
  v93 = v31;
  v94 = v33;
  v34 = *MEMORY[0x277CC91C0];
  v35 = v88;
  v82 = v2[13];
  v79 = v2 + 13;
  v82(v5, v34, v88);
  v81 = sub_21A3ED2CC();
  sub_21A450BC4();
  v36 = v2[1];
  v83 = v5;
  v84 = v2 + 1;
  v80 = v36;
  v36(v5, v35);
  v37 = v85[1];
  v37(v15, v89);

  v38 = [objc_opt_self() defaultManager];
  sub_21A450B84();
  v39 = sub_21A451054();

  LOBYTE(v31) = [v38 fileExistsAtPath_];

  if ((v31 & 1) == 0)
  {
    v40 = v87;
    sub_21A3EEE34();
    if (v40)
    {
      sub_21A3EEF24(v40, v95, "Failed to create folder at %s, error: %@");
      swift_willThrow();
      v41 = v89;
      return (v37)(v95, v41);
    }

    v87 = 0;
  }

  v42 = v86;
  swift_beginAccess();
  v43 = *(v42 + 32);
  v44 = *MEMORY[0x277CC91D0];
  v45 = v88;
  if (v43 >> 60 == 15)
  {
    v46 = v82;
    v47 = v83;
    v48 = v80;
  }

  else
  {
    v75 = v37;
    v49 = *(v42 + 24);
    strcpy(v92, "results.bin");
    HIDWORD(v92[1]) = -352321536;
    v50 = v83;
    v51 = v44;
    (v82)(v83);
    sub_21A3E700C(v49, v43);
    v52 = v77;
    sub_21A450BC4();
    v53 = v50;
    v48 = v80;
    v80(v53, v45);
    v54 = v87;
    sub_21A450C74();
    if (v54)
    {
      sub_21A3EEF24(v54, v52, "Failed to store PFL result (gradients) at %s, error: %@");
      swift_willThrow();
      sub_21A3ECC34(v49, v43);
      v55 = v52;
      v41 = v89;
      v37 = v75;
      v75(v55, v89);
      return (v37)(v95, v41);
    }

    v72 = v49;
    v73 = v43;
    v74 = v51;
    v87 = 0;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v56 = sub_21A450F24();
    __swift_project_value_buffer(v56, qword_27CD28C90);
    v57 = v76;
    v58 = v89;
    (v85[2])(v76, v52, v89);
    v59 = sub_21A450F04();
    v60 = sub_21A451574();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v57;
      v62 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v92[0] = v85;
      *v62 = 136315138;
      v63 = sub_21A450B84();
      v65 = v64;
      v66 = v61;
      v67 = v75;
      v75(v66, v89);
      v76 = sub_21A3E2554(v63, v65, v92);
      v48 = v80;
      v58 = v89;

      *(v62 + 4) = v76;
      _os_log_impl(&dword_21A3C2000, v59, v60, "PFL result (gradients) stored at %s", v62, 0xCu);
      v68 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x21CEDB220](v68, -1, -1);
      MEMORY[0x21CEDB220](v62, -1, -1);
    }

    else
    {

      v67 = v75;
      v75(v57, v58);
    }

    sub_21A3ECC34(v72, v73);
    v67(v52, v58);
    v45 = v88;
    v46 = v82;
    v47 = v83;
    v37 = v67;
    v44 = v74;
  }

  strcpy(v92, "metrics.json");
  BYTE5(v92[1]) = 0;
  HIWORD(v92[1]) = -5120;
  v46(v47, v44, v45);
  v69 = v78;
  sub_21A450BC4();
  v48(v47, v45);
  v70 = v87;
  sub_21A3EF1CC(v86, v69);
  if (v70)
  {
    sub_21A3EEF24(v70, v69, "Failed to store PFL metrics at %s, error: %@");
    swift_willThrow();
  }

  v41 = v89;
  v37(v69, v89);
  return (v37)(v95, v41);
}

id sub_21A3EEE34()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21A450B34();
  v6[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21A450A84();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21A3EEF24(void *a1, uint64_t a2, const char *a3)
{
  v6 = sub_21A450BE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v11 = sub_21A450F24();
  __swift_project_value_buffer(v11, qword_27CD28C90);
  (*(v7 + 16))(v10, a2, v6);
  v12 = a1;
  v13 = sub_21A450F04();
  v14 = sub_21A451584();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 136315394;
    v17 = sub_21A450B84();
    v25 = a3;
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_21A3E2554(v17, v19, &v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    _os_log_impl(&dword_21A3C2000, v13, v14, v25, v15, 0x16u);
    sub_21A3D3BF0(v16, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v16, -1, -1);
    v23 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x21CEDB220](v23, -1, -1);
    MEMORY[0x21CEDB220](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

void sub_21A3EF1CC(uint64_t a1, uint64_t a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v5 = sub_21A450BE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  swift_beginAccess();
  v11 = *(a1 + 16);

  v12 = sub_21A450F54();

  v32[0] = 0;
  v13 = [v10 dataWithJSONObject:v12 options:1 error:v32];

  v14 = v32[0];
  if (v13)
  {
    v15 = sub_21A450C64();
    v17 = v16;

    sub_21A450C74();
    if (v2)
    {
      sub_21A3E759C(v15, v17);
    }

    else
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v19 = sub_21A450F24();
      __swift_project_value_buffer(v19, qword_27CD28C90);
      (*(v6 + 16))(v9, a2, v5);
      v20 = sub_21A450F04();
      v21 = sub_21A451574();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32[0] = v31;
        *v22 = 136315138;
        v30 = v20;
        v29 = sub_21A450B84();
        v24 = v23;
        (*(v6 + 8))(v9, v5);
        v25 = sub_21A3E2554(v29, v24, v32);

        *(v22 + 4) = v25;
        v26 = v30;
        _os_log_impl(&dword_21A3C2000, v30, v21, "PFL metrics stored at %s", v22, 0xCu);
        v27 = v31;
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x21CEDB220](v27, -1, -1);
        MEMORY[0x21CEDB220](v22, -1, -1);
        sub_21A3E759C(v15, v17);
      }

      else
      {
        sub_21A3E759C(v15, v17);

        (*(v6 + 8))(v9, v5);
      }
    }
  }

  else
  {
    v18 = v14;
    sub_21A450A84();

    swift_willThrow();
  }

  v28 = *MEMORY[0x277D85DE8];
}

void *PFLTaskResult.deinit()
{
  v1 = v0[2];

  sub_21A3ECC34(v0[3], v0[4]);
  v2 = v0[5];

  return v0;
}

uint64_t PFLTaskResult.__deallocating_deinit()
{
  v1 = v0[2];

  sub_21A3ECC34(v0[3], v0[4]);
  v2 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EF5CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EF604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_21A3EF62C, 0, 0);
}

uint64_t sub_21A3EF62C()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 24);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_21A3EF760;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v2, v3);
}

uint64_t sub_21A3EF760()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21A3EF854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  return (*(v8 + 64))(a1, a2, a3, v7, v8);
}

__n128 PFLPlugin.__allocating_init(plugin:useCase:consent:taskSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *a5;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = v13;
  result = *a6;
  v15 = *(a6 + 16);
  *(v12 + 56) = *a6;
  *(v12 + 72) = v15;
  return result;
}

uint64_t PFLPlugin.init(plugin:useCase:consent:taskSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _OWORD *a6)
{
  v7 = a6[1];
  *(v6 + 56) = *a6;
  v8 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = v8;
  *(v6 + 72) = v7;
  return v6;
}

uint64_t sub_21A3EF980(uint64_t a1, uint64_t a2)
{
  v3[112] = v2;
  v3[111] = a2;
  v3[110] = a1;
  v4 = type metadata accessor for PFLTaskPreferences(0);
  v3[113] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3EFA28, 0, 0);
}

uint64_t sub_21A3EFA28()
{
  v27 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 880);
  *(v0 + 928) = sub_21A3F74DC();
  *(v0 + 936) = v5;
  v6 = v3[8];
  v7 = v3[9];
  v8 = v3[10];
  v23 = v3[7];
  v24 = v6;
  v25 = v7;
  v26 = v8;
  sub_21A3ED4E4(v23, v6);
  sub_21A450EF4();
  static PFLTaskPreferences.loadTaskPreferences(preferredTaskSource:from:)(&v23, v9, v1);

  sub_21A3ED49C(v23, v24);
  v10 = *(v2 + 20);
  *(v0 + 1280) = v10;
  v11 = type metadata accessor for PFLDecodableTaskParameters(0);
  *(v0 + 944) = v11;
  v12 = (v1 + *(v11 + 48) + v10);
  v13 = *(v0 + 896);
  if (v12[1])
  {
    v14 = *v12;
    v15 = v12[1];
    v17 = v13[2];
    v16 = v13[3];
  }

  else
  {
    v17 = v13[2];
    v16 = v13[3];

    v14 = v17;
    v15 = v16;
  }

  *(v0 + 976) = v15;
  *(v0 + 968) = v14;
  *(v0 + 960) = v17;
  *(v0 + 952) = v16;
  *(v0 + 984) = v13[4];
  *(v0 + 992) = v13[5];

  v18 = swift_task_alloc();
  *(v0 + 1000) = v18;
  *v18 = v0;
  v18[1] = sub_21A3EFBD4;
  v19 = *(v0 + 920);
  v20 = *(v0 + 896);
  v21 = *(v0 + 888);

  return sub_21A3F2E8C(v19, v14, v15, v21);
}

uint64_t sub_21A3EFBD4()
{
  v2 = *v1;
  v3 = *(*v1 + 1000);
  v7 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v4 = *(v2 + 976);

    v5 = sub_21A3F01D4;
  }

  else
  {
    v5 = sub_21A3EFCF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3EFCF0()
{
  v1 = *(v0 + 119);
  *(v0 + 97) = *(v0 + 120);
  *(v0 + 98) = v1;
  *(v0 + 91) = 46;
  v2 = 0xE100000000000000;
  *(v0 + 92) = 0xE100000000000000;
  *(v0 + 127) = sub_21A3ED2CC();
  v3 = sub_21A451644();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 16 + 16 * v4);
    v6 = *v5;
    v2 = v5[1];
  }

  else
  {
    v6 = 85;
  }

  v7 = *(v0 + 124);
  v8 = *(v0 + 123);

  if (v8 == v6 && v7 == v2 || (v9 = *(v0 + 124), v10 = *(v0 + 123), (sub_21A4519B4() & 1) != 0))
  {
    v11 = *(v0 + 124);
  }

  else
  {
    v12 = *(v0 + 124);
    v13 = *(v0 + 123);
  }

  v14 = *(v0 + 117);
  v15 = *(v0 + 116);
  v35 = *(v0 + 114);
  v36 = *(v0 + 115);
  v34 = *(v0 + 112);
  v37 = *(v0 + 111);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21A456280;
  *(v16 + 32) = 0x6E6967756C70;
  *(v16 + 40) = 0xE600000000000000;
  v17 = sub_21A451054();

  *(v16 + 48) = v17;
  *(v16 + 56) = 0x64496B736174;
  *(v16 + 64) = 0xE600000000000000;
  *(v16 + 72) = sub_21A451054();
  *(v16 + 80) = 0x6E6F697461636F6CLL;
  *(v16 + 88) = 0xE800000000000000;
  *(v16 + 96) = sub_21A451054();
  *(v16 + 104) = 0x65736143657375;
  *(v16 + 112) = 0xE700000000000000;
  v18 = sub_21A451054();

  *(v16 + 120) = v18;
  *(v16 + 128) = 0x646F43726F727265;
  *(v16 + 136) = 0xE900000000000065;
  *(v16 + 144) = sub_21A4514E4();
  *(v16 + 152) = 0x6D6F44726F727265;
  *(v16 + 160) = 0xEB000000006E6961;
  *(v16 + 168) = sub_21A451054();
  v19 = sub_21A3E57A0(v16);
  swift_setDeallocating();
  *(v0 + 129) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = sub_21A451054();
  *(v0 + 62) = sub_21A3ED530;
  *(v0 + 63) = v20;
  *(v0 + 58) = MEMORY[0x277D85DD0];
  *(v0 + 59) = 1107296256;
  *(v0 + 60) = sub_21A432B2C;
  *(v0 + 61) = &block_descriptor_10;
  v22 = _Block_copy(v0 + 29);

  AnalyticsSendEventLazy();

  _Block_release(v22);
  v23 = *(v0 + 63);

  v25 = v34[2];
  v24 = v34[3];
  v26 = v34[4];
  v27 = v34[5];
  sub_21A3F924C(v36, v35, type metadata accessor for PFLTaskPreferences);
  v28 = (v34[6] & 0x10) == 0;
  sub_21A3F939C(v37, (v0 + 32));
  type metadata accessor for PFLPluginTaskDiscoveryPolicy();
  v29 = swift_allocObject();
  sub_21A3C50DC(v0 + 32, v29 + 16);

  v30 = sub_21A3F6EC0(v25, v24, v26, v27, v35, v28, v29);
  *(v0 + 107) = MEMORY[0x277D84F90];
  *(v0 + 131) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds;
  *(v0 + 132) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
  *(v0 + 130) = v30;
  *(v0 + 133) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
  *(v0 + 134) = 0;

  v31 = swift_task_alloc();
  *(v0 + 135) = v31;
  *v31 = v0;
  v31[1] = sub_21A3F0854;
  v32 = *(v0 + 130);

  return sub_21A427C24();
}

uint64_t sub_21A3F01D4()
{
  v1 = v0[126];
  v2 = sub_21A450A74();
  [v2 code];

  v0[109] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 69);
  }

  else
  {
    v4 = v0[126];
    v5 = sub_21A450A74();
    v6 = [v5 domain];

    sub_21A451084();
  }

  v7 = v0[119];
  v0[105] = v0[120];
  v0[106] = v7;
  v0[103] = 46;
  v8 = 0xE100000000000000;
  v0[104] = 0xE100000000000000;
  sub_21A3ED2CC();
  v9 = sub_21A451644();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 16 + 16 * v10);
    v12 = *v11;
    v8 = v11[1];
  }

  else
  {
    v12 = 85;
  }

  v13 = v0[124];
  v14 = v0[123];

  if (v14 == v12 && v13 == v8 || (v15 = v0[124], v16 = v0[123], (sub_21A4519B4() & 1) != 0))
  {
    v17 = v0[124];
  }

  else
  {
    v18 = v0[124];
    v19 = v0[123];
  }

  v56 = v0[126];
  v20 = v0[117];
  v21 = v0[116];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v23 = sub_21A451054();

  *(inited + 48) = v23;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  v24 = sub_21A451054();

  *(inited + 72) = v24;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v25 = sub_21A451054();

  *(inited + 120) = v25;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v26 = sub_21A451054();

  *(inited + 168) = v26;
  v27 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = sub_21A451054();
  v0[50] = sub_21A3ED320;
  v0[51] = v28;
  v0[46] = MEMORY[0x277D85DD0];
  v0[47] = 1107296256;
  v0[48] = sub_21A432B2C;
  v0[49] = &block_descriptor_0;
  v30 = _Block_copy(v0 + 46);

  AnalyticsSendEventLazy();

  _Block_release(v30);
  v31 = v0[51];

  swift_willThrow();
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v32 = v0[126];
  v33 = sub_21A450F24();
  __swift_project_value_buffer(v33, qword_27CD28C90);
  v34 = v32;
  v35 = sub_21A450F04();
  v36 = sub_21A451584();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v0[126];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = v37;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&dword_21A3C2000, v35, v36, "PreflightCheck failed with error %@", v38, 0xCu);
    sub_21A3D3BF0(v39, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v39, -1, -1);
    MEMORY[0x21CEDB220](v38, -1, -1);
  }

  v42 = v0[126];

  v43 = v42;
  v44 = sub_21A3F73FC();

  v45 = v0[126];
  v46 = v0[115];
  if (v44)
  {
    type metadata accessor for PFLPluginError();
    sub_21A3F9400(&qword_27CD28630, v47, type metadata accessor for PFLPluginError);
    v48 = objc_allocWithZone(sub_21A450EE4());
    v49 = sub_21A450EC4();
  }

  else
  {
    v50 = objc_allocWithZone(sub_21A450EE4());
    v49 = sub_21A450ED4();
  }

  v51 = v49;

  sub_21A3D843C(v46);
  v52 = v0[115];
  v53 = v0[114];
  sub_21A4356CC();

  v54 = v0[1];

  return v54(v51);
}

uint64_t sub_21A3F0854(uint64_t a1)
{
  v2 = *(*v1 + 1080);
  v4 = *v1;
  *(*v1 + 1088) = a1;

  return MEMORY[0x2822009F8](sub_21A3F0954, 0, 0);
}

uint64_t sub_21A3F0954()
{
  v1 = v0[136];
  v2 = v0[134];
  if (v1)
  {
    v0[137] = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else if (qword_27CD28170 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
LABEL_4:
    v3 = sub_21A450F24();
    v0[138] = __swift_project_value_buffer(v3, qword_27CD28C90);

    v4 = sub_21A450F04();
    v5 = sub_21A451574();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v52 = v7;
      *v6 = 136315138;
      swift_beginAccess();
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);

      v10 = sub_21A3E2554(v8, v9, &v52);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_21A3C2000, v4, v5, "Start running plugin for recipe %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x21CEDB220](v7, -1, -1);
      MEMORY[0x21CEDB220](v6, -1, -1);
    }

    v11 = v0[112];
    v12 = v0[111];
    v13 = v0[110];
    v49 = v11[2];
    v0[139] = v11[3];
    swift_beginAccess();
    v48 = *(v1 + 16);
    v0[140] = *(v1 + 24);
    v14 = v11[4];
    v0[141] = v11[5];
    v15 = swift_task_alloc();
    v0[142] = v15;
    v15[2] = v12;
    v15[3] = v1;
    v15[4] = v11;
    v15[5] = v13;

    v16 = swift_task_alloc();
    v0[143] = v16;
    *v16 = v0;
    v16[1] = sub_21A3F0F98;

    JUMPOUT(0x21A3F7634);
  }

  v17 = v0[130];

  if (v2)
  {
    v18 = v0[117];

    v52 = v0[107];
    sub_21A3F6630();
    v19 = v52;
    if (v52[2])
    {
      v20 = v52[4];
      v0[155] = v20;
      v21 = *(v19 + 40);
      v0[156] = v21;
      v22 = v20;

      v23 = swift_task_alloc();
      v0[157] = v23;
      *v23 = v0;
      v23[1] = sub_21A3F2414;
      v24 = v0[122];
      v25 = v0[121];
      v26 = v0[112];

      return sub_21A3F3F44(v20, v21, v25, v24);
    }

    else
    {
      v40 = v0[130];
      v41 = v0[122];
      v42 = v0[115];

      v43 = objc_allocWithZone(sub_21A450EE4());
      v44 = sub_21A450ED4();

      sub_21A3D843C(v42);
      v45 = v0[115];
      v46 = v0[114];
      sub_21A4356CC();

      v47 = v0[1];

      return v47(v44);
    }
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v28 = sub_21A450F24();
    __swift_project_value_buffer(v28, qword_27CD28C90);
    v29 = sub_21A450F04();
    v30 = sub_21A451574();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21A3C2000, v29, v30, "No tasks available for processing.", v31, 2u);
      MEMORY[0x21CEDB220](v31, -1, -1);
    }

    v32 = v0[112];
    v33 = v0[111];

    v0[149] = v32[2];
    v0[150] = v32[3];
    v0[151] = v32[4];
    v0[152] = v32[5];

    v34 = v33[3];
    v35 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v36 = *(v35 + 80);
    v50 = (v36 + *v36);
    v37 = v36[1];
    v38 = swift_task_alloc();
    v0[153] = v38;
    *v38 = v0;
    v38[1] = sub_21A3F1884;
    v39 = v0[115];

    return v50(v39, v34, v35);
  }
}

uint64_t sub_21A3F0F98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1144);
  v11 = *v2;
  v3[144] = a1;
  v3[145] = v1;

  if (v1)
  {
    v5 = sub_21A3F148C;
  }

  else
  {
    v6 = v3[142];
    v7 = v3[141];
    v8 = v3[140];
    v9 = v3[139];

    v5 = sub_21A3F10E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3F10E4()
{
  v41 = v0;
  v1 = v0[144];
  swift_beginAccess();
  if (*(v1 + 32) >> 60 == 15 && (v2 = v0[144], swift_beginAccess(), !*(*(v2 + 16) + 16)))
  {
    v17 = v0[138];
    v18 = v0[136];
    v19 = v0[130];
    v20 = v0[122];
    v21 = v0[117];

    v22 = v0[107];

    v23 = sub_21A450F04();
    v24 = sub_21A451574();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[136];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);

      v30 = sub_21A3E2554(v28, v29, &v40);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_21A3C2000, v23, v24, "Empty result for recipe %s, skip donating.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x21CEDB220](v27, -1, -1);
      MEMORY[0x21CEDB220](v26, -1, -1);
    }

    v31 = v0[144];
    v32 = v0[136];
    v33 = v0[130];
    v34 = v0[115];
    v35 = objc_allocWithZone(sub_21A450EE4());
    v36 = sub_21A450ED4();

    sub_21A3D843C(v34);
    v37 = v0[115];
    v38 = v0[114];
    sub_21A4356CC();

    v39 = v0[1];

    return v39(v36);
  }

  else
  {
    v3 = v0[136];
    v4 = v0[132];
    v5 = v0[131];
    v6 = v0[130];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455F00;
    strcpy((inited + 32), "PolicyDownload");
    *(inited + 47) = -18;
    v8 = MEMORY[0x277D839F8];
    *(inited + 48) = *(v6 + v5);
    *(inited + 72) = v8;
    strcpy((inited + 80), "TaskDownload");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    v9 = *(v6 + v4);
    *(inited + 120) = v8;
    *(inited + 96) = v9;
    v10 = sub_21A3E4F6C(inited);
    v0[146] = v10;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
    swift_arrayDestroy();
    v11 = swift_task_alloc();
    v0[147] = v11;
    *v11 = v0;
    v11[1] = sub_21A3F15E8;
    v12 = v0[144];
    v13 = v0[122];
    v14 = v0[121];
    v15 = v0[112];

    return sub_21A3F34D8(v12, v3, v14, v13, v10);
  }
}

uint64_t sub_21A3F148C()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1112);

  v5 = *(v0 + 1160);
  *(v0 + 1264) = v5;
  v6 = *(v0 + 1088);
  v7 = *(v0 + 896);
  v8 = *(v0 + 888);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = *(v7 + 32);
  v12 = *(v7 + 40);
  v13 = *(v10 + 72);

  v14 = v13(v6, v11, v12, v9, v10) & 1;
  *(v0 + 1284) = v14;

  v15 = swift_task_alloc();
  *(v0 + 1272) = v15;
  *v15 = v0;
  v15[1] = sub_21A3F26B4;
  v16 = *(v0 + 976);
  v17 = *(v0 + 968);
  v18 = *(v0 + 896);

  return sub_21A3F4984(v5, v6, v17, v16, v14, v0 + 856);
}

uint64_t sub_21A3F15E8()
{
  v2 = *v1;
  v3 = *(*v1 + 1176);
  v12 = *v1;
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v4 = v2[146];

    v5 = sub_21A3F2A14;
  }

  else
  {
    v6 = v2[146];
    v7 = v2[130];
    v8 = v2[122];
    v9 = v2[117];

    v10 = v2[107];

    v5 = sub_21A3F1740;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3F1740()
{
  v1 = *(v0 + 920);
  if (*(v1 + *(*(v0 + 904) + 24)) == 1 && *(v1 + *(v0 + 1280) + *(*(v0 + 944) + 40)) == 1)
  {
    v2 = *(v0 + 1184);
    v3 = *(v0 + 1152);
    v4 = *(v0 + 1088);
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);

    sub_21A3EE578(v6, v5);
    if (v2)
    {
    }

    v1 = *(v0 + 920);
  }

  v7 = *(v0 + 1152);
  v8 = *(v0 + 1088);
  v9 = *(v0 + 1040);
  v10 = objc_allocWithZone(sub_21A450EE4());
  v11 = sub_21A450ED4();

  sub_21A3D843C(v1);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  sub_21A4356CC();

  v14 = *(v0 + 8);

  return v14(v11);
}

uint64_t sub_21A3F1884()
{
  v2 = *(*v1 + 1224);
  v5 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v3 = sub_21A3F1E60;
  }

  else
  {
    v3 = sub_21A3F1998;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A3F1998()
{
  v1 = v0[150];
  v2 = v0[127];
  v0[99] = v0[149];
  v0[100] = v1;
  v0[101] = 46;
  v3 = 0xE100000000000000;
  v0[102] = 0xE100000000000000;
  v4 = sub_21A451644();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 16 + 16 * v5);
    v7 = *v6;
    v3 = v6[1];
  }

  else
  {
    v7 = 85;
  }

  v8 = v0[152];
  v9 = v0[151];

  if (v9 == v7 && v8 == v3 || (v10 = v0[152], v11 = v0[151], (sub_21A4519B4() & 1) != 0))
  {
    v12 = v0[152];
  }

  else
  {
    v13 = v0[152];
    v14 = v0[151];
  }

  v15 = v0[128];
  v16 = v0[117];
  v17 = v0[116];
  v43 = v0[129];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21A456280;
  *(v18 + 32) = 0x6E6967756C70;
  *(v18 + 40) = 0xE600000000000000;
  v19 = sub_21A451054();

  *(v18 + 48) = v19;
  *(v18 + 56) = 0x64496B736174;
  *(v18 + 64) = 0xE600000000000000;
  v20 = sub_21A451054();

  *(v18 + 72) = v20;
  *(v18 + 80) = 0x6E6F697461636F6CLL;
  *(v18 + 88) = 0xE800000000000000;
  *(v18 + 96) = sub_21A451054();
  *(v18 + 104) = 0x65736143657375;
  *(v18 + 112) = 0xE700000000000000;
  v21 = sub_21A451054();

  *(v18 + 120) = v21;
  *(v18 + 128) = 0x646F43726F727265;
  *(v18 + 136) = 0xE900000000000065;
  *(v18 + 144) = sub_21A4514E4();
  *(v18 + 152) = 0x6D6F44726F727265;
  *(v18 + 160) = 0xEB000000006E6961;
  *(v18 + 168) = sub_21A451054();
  v22 = sub_21A3E57A0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = sub_21A451054();
  v0[44] = sub_21A3ED530;
  v0[45] = v23;
  v0[40] = MEMORY[0x277D85DD0];
  v0[41] = 1107296256;
  v0[42] = sub_21A432B2C;
  v0[43] = &block_descriptor_27;
  v25 = _Block_copy(v0 + 40);

  AnalyticsSendEventLazy();

  _Block_release(v25);
  v26 = v0[45];

  v44 = v0[107];
  sub_21A3F6630();
  if (v44[2])
  {
    v27 = v44[4];
    v0[155] = v27;
    v28 = v44[5];
    v0[156] = v28;
    v29 = v27;

    v30 = swift_task_alloc();
    v0[157] = v30;
    *v30 = v0;
    v30[1] = sub_21A3F2414;
    v31 = v0[122];
    v32 = v0[121];
    v33 = v0[112];

    return sub_21A3F3F44(v27, v28, v32, v31);
  }

  else
  {
    v35 = v0[130];
    v36 = v0[122];
    v37 = v0[115];

    v38 = objc_allocWithZone(sub_21A450EE4());
    v39 = sub_21A450ED4();

    sub_21A3D843C(v37);
    v40 = v0[115];
    v41 = v0[114];
    sub_21A4356CC();

    v42 = v0[1];

    return v42(v39);
  }
}

uint64_t sub_21A3F1E60()
{
  v1 = v0[154];
  v2 = sub_21A450A74();
  [v2 code];

  v0[108] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 74);
  }

  else
  {
    v4 = v0[154];
    v5 = sub_21A450A74();
    v6 = [v5 domain];

    sub_21A451084();
  }

  v7 = v0[150];
  v8 = v0[127];
  v0[93] = v0[149];
  v0[94] = v7;
  v0[95] = 46;
  v9 = 0xE100000000000000;
  v0[96] = 0xE100000000000000;
  v10 = sub_21A451644();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 16 + 16 * v11);
    v13 = *v12;
    v9 = v12[1];
  }

  else
  {
    v13 = 85;
  }

  v14 = v0[152];
  v15 = v0[151];

  if (v15 == v13 && v14 == v9 || (v16 = v0[152], v17 = v0[151], (sub_21A4519B4() & 1) != 0))
  {
    v18 = v0[152];
  }

  else
  {
    v19 = v0[152];
    v20 = v0[151];
  }

  v50 = v0[129];
  v21 = v0[128];
  v22 = v0[117];
  v23 = v0[116];
  v51 = v0[154];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21A456280;
  *(v24 + 32) = 0x6E6967756C70;
  *(v24 + 40) = 0xE600000000000000;
  v25 = sub_21A451054();

  *(v24 + 48) = v25;
  *(v24 + 56) = 0x64496B736174;
  *(v24 + 64) = 0xE600000000000000;
  v26 = sub_21A451054();

  *(v24 + 72) = v26;
  *(v24 + 80) = 0x6E6F697461636F6CLL;
  *(v24 + 88) = 0xE800000000000000;
  *(v24 + 96) = sub_21A451054();
  *(v24 + 104) = 0x65736143657375;
  *(v24 + 112) = 0xE700000000000000;
  v27 = sub_21A451054();

  *(v24 + 120) = v27;
  *(v24 + 128) = 0x646F43726F727265;
  *(v24 + 136) = 0xE900000000000065;
  *(v24 + 144) = sub_21A4514E4();
  *(v24 + 152) = 0x6D6F44726F727265;
  *(v24 + 160) = 0xEB000000006E6961;
  v28 = sub_21A451054();

  *(v24 + 168) = v28;
  v29 = sub_21A3E57A0(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v31 = sub_21A451054();
  v0[56] = sub_21A3ED530;
  v0[57] = v30;
  v0[52] = MEMORY[0x277D85DD0];
  v0[53] = 1107296256;
  v0[54] = sub_21A432B2C;
  v0[55] = &block_descriptor_20;
  v32 = _Block_copy(v0 + 52);

  AnalyticsSendEventLazy();

  _Block_release(v32);
  v33 = v0[57];

  swift_willThrow();

  v52 = v0[107];
  sub_21A3F6630();
  if (v52[2])
  {
    v34 = v52[4];
    v0[155] = v34;
    v35 = v52[5];
    v0[156] = v35;
    v36 = v34;

    v37 = swift_task_alloc();
    v0[157] = v37;
    *v37 = v0;
    v37[1] = sub_21A3F2414;
    v38 = v0[122];
    v39 = v0[121];
    v40 = v0[112];

    return sub_21A3F3F44(v34, v35, v39, v38);
  }

  else
  {
    v42 = v0[130];
    v43 = v0[122];
    v44 = v0[115];

    v45 = objc_allocWithZone(sub_21A450EE4());
    v46 = sub_21A450ED4();

    sub_21A3D843C(v44);
    v47 = v0[115];
    v48 = v0[114];
    sub_21A4356CC();

    v49 = v0[1];

    return v49(v46);
  }
}

uint64_t sub_21A3F2414()
{
  v1 = *(*v0 + 1256);
  v2 = *(*v0 + 976);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21A3F252C, 0, 0);
}

uint64_t sub_21A3F252C()
{
  v1 = v0[155];
  v2 = v1;
  v3 = sub_21A3F73FC();

  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[130];
  v7 = v0[115];
  if (v3)
  {
    type metadata accessor for PFLPluginError();
    sub_21A3F9400(&qword_27CD28630, v8, type metadata accessor for PFLPluginError);
    v9 = objc_allocWithZone(sub_21A450EE4());

    v10 = sub_21A450EC4();
  }

  else
  {
    v11 = objc_allocWithZone(sub_21A450EE4());
    v10 = sub_21A450ED4();
  }

  sub_21A3D843C(v7);
  v12 = v0[115];
  v13 = v0[114];
  sub_21A4356CC();

  v14 = v0[1];

  return v14(v10);
}

uint64_t sub_21A3F26B4()
{
  v1 = *(*v0 + 1272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21A3F27B0, 0, 0);
}

void sub_21A3F27B0()
{
  v1 = *(v0 + 1264);
  if (*(v0 + 1284) == 1)
  {
    v2 = *(v0 + 1088);
    v3 = *(v0 + 1064);
    v4 = *(v0 + 1040);

    v5 = *(v4 + v3);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(*(v0 + 1040) + *(v0 + 1064)) = v7;
      *(v0 + 1072) = *(v0 + 1096);
      v8 = swift_task_alloc();
      *(v0 + 1080) = v8;
      *v8 = v0;
      v8[1] = sub_21A3F0854;
      v9 = *(v0 + 1040);

      sub_21A427C24();
    }
  }

  else
  {
    v10 = *(v0 + 1040);
    v11 = *(v0 + 976);
    v12 = *(v0 + 936);

    v13 = *(v0 + 856);

    v14 = v1;
    v15 = sub_21A3F73FC();

    v16 = *(v0 + 1264);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1040);
    v19 = *(v0 + 920);
    if (v15)
    {
      type metadata accessor for PFLPluginError();
      sub_21A3F9400(&qword_27CD28630, v20, type metadata accessor for PFLPluginError);
      v21 = objc_allocWithZone(sub_21A450EE4());

      v22 = sub_21A450EC4();
    }

    else
    {
      v23 = objc_allocWithZone(sub_21A450EE4());
      v22 = sub_21A450ED4();
    }

    sub_21A3D843C(v19);
    v24 = *(v0 + 920);
    v25 = *(v0 + 912);
    sub_21A4356CC();

    v26 = *(v0 + 8);

    v26(v22);
  }
}

uint64_t sub_21A3F2A14()
{
  v1 = *(v0 + 1152);

  v2 = *(v0 + 1184);
  *(v0 + 1264) = v2;
  v3 = *(v0 + 1088);
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v10 = *(v7 + 72);

  v11 = v10(v3, v8, v9, v6, v7) & 1;
  *(v0 + 1284) = v11;

  v12 = swift_task_alloc();
  *(v0 + 1272) = v12;
  *v12 = v0;
  v12[1] = sub_21A3F26B4;
  v13 = *(v0 + 976);
  v14 = *(v0 + 968);
  v15 = *(v0 + 896);

  return sub_21A3F4984(v2, v3, v14, v13, v11, v0 + 856);
}

uint64_t sub_21A3F2B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21A3F2B74, 0, 0);
}

uint64_t sub_21A3F2B74()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v0[7] = v6;
  v7 = *(v4 + 56);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_21A3F2CD4;
  v10 = v0[6];
  v11 = v0[4];

  return v13(v11, v5, v6, v10, v3, v4);
}

uint64_t sub_21A3F2CD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_21A3F2E28;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_21A3F2E04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21A3F2E28()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_21A3F2E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_21A450D14();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3F2F54, 0, 0);
}

id sub_21A3F2F54()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for PFLTaskPreferences(0);
  v6 = v4 + *(v5 + 20);
  v7 = *(v6 + 48);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);

  sub_21A403BF0(v3, v2, v8, v9, v7);

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  LODWORD(v8) = *(type metadata accessor for PFLDecodableTaskParameters(0) + 36);
  sub_21A450CF4();
  sub_21A3F9400(&qword_27CD28578, 255, MEMORY[0x277CC9578]);
  LOBYTE(v8) = sub_21A450FE4();
  (*(v11 + 8))(v10, v12);
  if (v8)
  {
    sub_21A3EC940();
    swift_allocError();
    *v13 = 49;
    goto LABEL_3;
  }

  v14 = v0[6];
  v15 = *(v14 + 48);
  if (v15)
  {
    sub_21A3EC940();
    v16 = swift_allocError();
    *v17 = 1;
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      goto LABEL_28;
    }

    v19 = result;
    v20 = [result isDiagnosticSubmissionAllowed];

    if (!v20)
    {
      goto LABEL_3;
    }

    v15 = *(v14 + 48);
  }

  if ((v15 & 2) != 0 && (*(v0[2] + *(v5 + 24)) != 1 || (*(v6 + 40) & 1) == 0))
  {
    sub_21A44FED4(v0[3], v0[4]);
    v15 = *(v14 + 48);
  }

  if ((v15 & 4) != 0)
  {
    sub_21A3EC940();
    v21 = swift_allocError();
    *v22 = 33;
    v23 = MKBGetDeviceLockState();
    if (v23 != 3 && v23)
    {
      goto LABEL_3;
    }

    v15 = *(v14 + 48);
  }

  if ((v15 & 8) != 0)
  {
    sub_21A3EC940();
    v24 = swift_allocError();
    *v25 = 2;
    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v26 = result;
      v27 = [result isHealthDataSubmissionAllowed];

      if (v27)
      {

        goto LABEL_20;
      }

LABEL_3:
      swift_willThrow();
      v32 = v0[9];

      v33 = v0[1];

      return v33();
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_20:
  v28 = v0[5];
  v29 = v0[2];
  v30 = v28[3];
  v31 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v30);
  (*(v31 + 8))(v29, v30, v31);
  v35 = v28[3];
  v34 = v28[4];
  __swift_project_boxed_opaque_existential_1(v0[5], v35);
  v36 = *(v34 + 32);
  v40 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  v0[10] = v38;
  *v38 = v0;
  v38[1] = sub_21A3F33C0;
  v39 = v0[2];

  return v40(v39, v35, v34);
}