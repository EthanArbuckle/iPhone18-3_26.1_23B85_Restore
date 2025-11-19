uint64_t sub_26B67BCF0(uint64_t a1)
{
  v2 = sub_26B67E414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B67BD2C(uint64_t a1)
{
  v2 = sub_26B67E414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudChannelSubscription.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t CloudChannelSubscription.__deallocating_deinit()
{
  CloudChannelSubscription.deinit();
  v0 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CloudChannelSubscription.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F68, &qword_26B6F1908);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B67E414();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v17 = *(v3 + 16);
  LOBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
  sub_26B67E468();
  OUTLINED_FUNCTION_59_0();
  sub_26B6EA534();
  if (!v2)
  {
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    v16 = *(v3 + 24);
    v15[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F78, &qword_26B6F1918);
    sub_26B67E524();
    OUTLINED_FUNCTION_59_0();
    sub_26B6EA534();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t CloudChannelSubscription.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_5();
  v2 = swift_allocObject();
  CloudChannelSubscription.init(from:)(a1);
  return v2;
}

uint64_t CloudChannelSubscription.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F80, &unk_26B6F1920);
  v6 = OUTLINED_FUNCTION_4(v5);
  v24 = v7;
  v25 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = MEMORY[0x277D84F98];
  *(v1 + 16) = MEMORY[0x277D84F98];
  v14 = (v1 + 16);
  *(v1 + 24) = v13;
  v15 = (v1 + 24);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B67E414();
  sub_26B6EA784();
  if (v2)
  {
  }

  else
  {
    v17 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
    v27 = 0;
    sub_26B67E5E0();
    v18 = v25;
    OUTLINED_FUNCTION_22_4();
    v19 = v26;
    OUTLINED_FUNCTION_35_0();
    swift_beginAccess();
    v20 = *v14;
    *v14 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F78, &qword_26B6F1918);
    LOBYTE(v26) = 1;
    sub_26B67E69C();
    OUTLINED_FUNCTION_22_4();
    (*(v17 + 8))(v12, v18);
    v22 = v28;
    OUTLINED_FUNCTION_35_0();
    swift_beginAccess();
    v23 = *v15;
    *v15 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26B67C1FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CloudChannelSubscription.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void static CloudChannelPreferences.subscriptionAuditStrategy.getter(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_26B667118(0xD000000000000016, 0x800000026B6FBAA0);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v5 = sub_26B6E99F4();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    if (OUTLINED_FUNCTION_23_2())
    {

      v7 = 0;
      v8 = v12;
      if (v12 >= 5)
      {
        v8 = 5;
      }

      *a1 = (v8 & ~(v8 >> 63));
      goto LABEL_23;
    }
  }

  else
  {
    sub_26B650BBC(&v15, &qword_2804092A0, &qword_26B6F2850);
  }

  v9 = sub_26B6E99F4();
  v10 = [v4 valueForKey_];

  if (v10)
  {
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    sub_26B650BBC(&v15, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_22;
  }

  if ((OUTLINED_FUNCTION_23_2() & 1) == 0)
  {
LABEL_22:
    v7 = 0;
    *a1 = 0;
    goto LABEL_23;
  }

  v11 = v12;
  if (v12 >= 900)
  {
    v11 = 900;
  }

  if (v11 <= 180)
  {
    v11 = 180;
  }

  *a1 = v11;
  v7 = 1;
LABEL_23:
  *(a1 + 8) = v7;
}

uint64_t sub_26B67C478(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B63F51C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_26B67C708(v7);
  *a1 = v3;
  return result;
}

void sub_26B67C52C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F98, &qword_26B6FA6D0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for SportingEventPlay();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

size_t sub_26B67C608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_26B6E3C14(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0) - 8);
  v5 = sub_26B6E405C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  sub_26B63686C();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26B67C708(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B6EA554();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
        v6 = sub_26B6E9C94();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26B67CAA8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B67C850(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B67C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v22;
      v32 = v21;
      v23 = v38;
      do
      {
        sub_26B67E194(v22, v17, &qword_280409090, &unk_26B6EC1B0);
        sub_26B67E194(v20, v13, &qword_280409090, &unk_26B6EC1B0);
        v24 = *(v23 + 48);
        v25 = sub_26B6E94D4();
        sub_26B650BBC(v13, &qword_280409090, &unk_26B6EC1B0);
        result = sub_26B650BBC(v17, &qword_280409090, &unk_26B6EC1B0);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        v26 = v37;
        sub_26B67EDE8(v22, v37, &qword_280409090, &unk_26B6EC1B0);
        v23 = v38;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26B67EDE8(v26, v20, &qword_280409090, &unk_26B6EC1B0);
        v20 += v35;
        v22 += v35;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v21 = v32 - 1;
      v22 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26B67CAA8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v114 = a1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v124 = *(v130 - 8);
  v8 = *(v124 + 64);
  v9 = MEMORY[0x28223BE20](v130);
  v119 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v127 = &v112 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v129 = &v112 - v14;
  MEMORY[0x28223BE20](v13);
  v128 = &v112 - v15;
  v125 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_103:
    v130 = *v114;
    if (!v130)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v105 = (v18 + 16);
      v106 = *(v18 + 16);
      while (v106 >= 2)
      {
        if (!*v125)
        {
          goto LABEL_142;
        }

        v107 = v18;
        v108 = (v18 + 16 * v106);
        v109 = *v108;
        v110 = &v105[2 * v106];
        v18 = *(v110 + 1);
        sub_26B67D424(*v125 + *(v124 + 72) * *v108, *v125 + *(v124 + 72) * *v110, *v125 + *(v124 + 72) * v18, v130);
        if (v5)
        {
          break;
        }

        if (v18 < v109)
        {
          goto LABEL_130;
        }

        if (v106 - 2 >= *v105)
        {
          goto LABEL_131;
        }

        *v108 = v109;
        v108[1] = v18;
        v111 = *v105 - v106;
        if (*v105 < v106)
        {
          goto LABEL_132;
        }

        v106 = *v105 - 1;
        sub_26B63F530(v110 + 16, v111, v110);
        *v105 = v106;
        v18 = v107;
      }

LABEL_113:

      return;
    }

LABEL_139:
    v18 = sub_26B63F2BC(v18);
    goto LABEL_105;
  }

  v112 = a4;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v115 = v17;
    v116 = v18;
    if (v17 + 1 >= v16)
    {
      v36 = v130;
    }

    else
    {
      v113 = v5;
      v21 = *v125;
      v22 = *(v124 + 72);
      v18 = v17;
      v23 = v17 + 1;
      v24 = *v125 + v22 * v20;
      v25 = v128;
      v123 = v16;
      sub_26B67E194(v24, v128, &qword_280409090, &unk_26B6EC1B0);
      v26 = v129;
      sub_26B67E194(v21 + v22 * v18, v129, &qword_280409090, &unk_26B6EC1B0);
      v27 = *(v130 + 48);
      LODWORD(v122) = sub_26B6E94D4();
      sub_26B650BBC(v26, &qword_280409090, &unk_26B6EC1B0);
      sub_26B650BBC(v25, &qword_280409090, &unk_26B6EC1B0);
      v28 = v123;
      v29 = v18 + 2;
      v126 = v22;
      v30 = v21 + v22 * (v18 + 2);
      while (1)
      {
        v31 = v29;
        if (v23 + 1 >= v28)
        {
          break;
        }

        ++v23;
        v32 = v128;
        v18 = &qword_280409090;
        sub_26B67E194(v30, v128, &qword_280409090, &unk_26B6EC1B0);
        v33 = v129;
        sub_26B67E194(v24, v129, &qword_280409090, &unk_26B6EC1B0);
        v34 = *(v130 + 48);
        v35 = sub_26B6E94D4() & 1;
        sub_26B650BBC(v33, &qword_280409090, &unk_26B6EC1B0);
        sub_26B650BBC(v32, &qword_280409090, &unk_26B6EC1B0);
        v30 += v126;
        v24 += v126;
        v29 = v31 + 1;
        v28 = v123;
        if ((v122 & 1) != v35)
        {
          goto LABEL_10;
        }
      }

      v23 = v28;
LABEL_10:
      v5 = v113;
      if (v122)
      {
        v19 = v115;
        if (v23 < v115)
        {
          goto LABEL_136;
        }

        if (v115 >= v23)
        {
          v36 = v130;
          v20 = v23;
          v18 = v116;
          goto LABEL_33;
        }

        v37 = v28 >= v31 ? v31 : v28;
        v38 = v126 * (v37 - 1);
        v39 = v126 * v37;
        v40 = v115 * v126;
        v41 = v23;
        v42 = v115;
        v18 = v116;
        do
        {
          if (v42 != --v41)
          {
            v43 = *v125;
            if (!*v125)
            {
              goto LABEL_143;
            }

            sub_26B67EDE8(v43 + v40, v119, &qword_280409090, &unk_26B6EC1B0);
            v44 = v40 < v38 || v43 + v40 >= v43 + v39;
            if (v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26B67EDE8(v119, v43 + v38, &qword_280409090, &unk_26B6EC1B0);
            v18 = v116;
          }

          ++v42;
          v38 -= v126;
          v39 -= v126;
          v40 += v126;
        }

        while (v42 < v41);
        v5 = v113;
        v36 = v130;
        v20 = v23;
      }

      else
      {
        v36 = v130;
        v20 = v23;
        v18 = v116;
      }

      v19 = v115;
    }

LABEL_33:
    v45 = v125[1];
    if (v20 < v45)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_135;
      }

      if (v20 - v19 < v112)
      {
        break;
      }
    }

LABEL_51:
    if (v20 < v19)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26B63A97C(0, *(v18 + 16) + 1, 1, v18);
      v18 = v103;
    }

    v60 = *(v18 + 16);
    v59 = *(v18 + 24);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      sub_26B63A97C(v59 > 1, v60 + 1, 1, v18);
      v18 = v104;
    }

    *(v18 + 16) = v61;
    v62 = v18 + 32;
    v63 = (v18 + 32 + 16 * v60);
    v64 = v123;
    *v63 = v115;
    v63[1] = v64;
    v126 = *v114;
    if (!v126)
    {
      goto LABEL_144;
    }

    if (v60)
    {
      while (1)
      {
        v65 = v61 - 1;
        v66 = (v62 + 16 * (v61 - 1));
        v67 = (v18 + 16 * v61);
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v68 = *(v18 + 32);
          v69 = *(v18 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_71:
          if (v71)
          {
            goto LABEL_121;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_124;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_129;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v65 = v61 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v61 < 2)
        {
          goto LABEL_123;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_86:
        if (v86)
        {
          goto LABEL_126;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_128;
        }

        if (v93 < v85)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v65 - 1 >= v61)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
          goto LABEL_138;
        }

        if (!*v125)
        {
          goto LABEL_141;
        }

        v97 = v18;
        v98 = (v62 + 16 * (v65 - 1));
        v99 = *v98;
        v100 = v65;
        v101 = v62 + 16 * v65;
        v18 = *(v101 + 8);
        sub_26B67D424(*v125 + *(v124 + 72) * *v98, *v125 + *(v124 + 72) * *v101, *v125 + *(v124 + 72) * v18, v126);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v18 < v99)
        {
          goto LABEL_116;
        }

        v5 = *(v97 + 16);
        if (v100 > v5)
        {
          goto LABEL_117;
        }

        *v98 = v99;
        v98[1] = v18;
        if (v100 >= v5)
        {
          goto LABEL_118;
        }

        v61 = v5 - 1;
        sub_26B63F530((v101 + 16), v5 - 1 - v100, v101);
        v18 = v97;
        *(v97 + 16) = v5 - 1;
        v102 = v5 > 2;
        v5 = 0;
        if (!v102)
        {
          goto LABEL_100;
        }
      }

      v72 = v62 + 16 * v61;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_119;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_120;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_122;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_125;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v70 < v96)
        {
          v65 = v61 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v16 = v125[1];
    v17 = v123;
    if (v123 >= v16)
    {
      goto LABEL_103;
    }
  }

  v46 = v19 + v112;
  if (__OFADD__(v19, v112))
  {
    goto LABEL_137;
  }

  if (v46 >= v45)
  {
    v46 = v125[1];
  }

  if (v46 < v19)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v20 == v46)
  {
    goto LABEL_51;
  }

  v113 = v5;
  v47 = *(v124 + 72);
  v48 = *v125 + v47 * (v20 - 1);
  v49 = -v47;
  v50 = v19 - v20;
  v126 = *v125;
  v117 = v47;
  v118 = v46;
  v51 = v126 + v20 * v47;
LABEL_42:
  v122 = v48;
  v123 = v20;
  v120 = v51;
  v121 = v50;
  v52 = v51;
  while (1)
  {
    v53 = v128;
    sub_26B67E194(v52, v128, &qword_280409090, &unk_26B6EC1B0);
    v54 = v129;
    sub_26B67E194(v48, v129, &qword_280409090, &unk_26B6EC1B0);
    v55 = *(v36 + 48);
    v56 = sub_26B6E94D4();
    sub_26B650BBC(v54, &qword_280409090, &unk_26B6EC1B0);
    sub_26B650BBC(v53, &qword_280409090, &unk_26B6EC1B0);
    if ((v56 & 1) == 0)
    {
      v36 = v130;
LABEL_49:
      v20 = v123 + 1;
      v48 = v122 + v117;
      v50 = v121 - 1;
      v51 = v120 + v117;
      if (v123 + 1 == v118)
      {
        v20 = v118;
        v5 = v113;
        v19 = v115;
        v18 = v116;
        goto LABEL_51;
      }

      goto LABEL_42;
    }

    if (!v126)
    {
      break;
    }

    v57 = v127;
    sub_26B67EDE8(v52, v127, &qword_280409090, &unk_26B6EC1B0);
    v36 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_26B67EDE8(v57, v48, &qword_280409090, &unk_26B6EC1B0);
    v48 += v49;
    v52 += v49;
    v44 = __CFADD__(v50++, 1);
    if (v44)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_26B67D424(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v8 = *(*(v58 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v56 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v61 = a1;
  v60 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_26B63E55C(a2, v17 / v14, a4);
    v55 = a4;
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v51 = a1;
    v52 = -v14;
LABEL_37:
    v32 = a2 + v30;
    v33 = a3;
    v49 = v31;
    v34 = v31;
    v53 = a2 + v30;
    v54 = a2;
    while (1)
    {
      if (v29 <= v55)
      {
        v61 = a2;
        v59 = v34;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v34;
      v35 = v33 + v30;
      v36 = v29 + v30;
      v37 = v29 + v30;
      v38 = v56;
      sub_26B67E194(v37, v56, &qword_280409090, &unk_26B6EC1B0);
      v39 = v32;
      v40 = v57;
      sub_26B67E194(v39, v57, &qword_280409090, &unk_26B6EC1B0);
      v41 = *(v58 + 48);
      v42 = sub_26B6E94D4();
      sub_26B650BBC(v40, &qword_280409090, &unk_26B6EC1B0);
      sub_26B650BBC(v38, &qword_280409090, &unk_26B6EC1B0);
      if (v42)
      {
        v44 = v33 < v54 || v35 >= v54;
        a3 = v35;
        if (v44)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v52;
          v31 = v50;
          a1 = v51;
        }

        else
        {
          v45 = v33;
          v46 = v50;
          v31 = v50;
          v30 = v52;
          v47 = v53;
          a2 = v53;
          a1 = v51;
          if (v45 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v47;
            v31 = v46;
          }
        }

        goto LABEL_37;
      }

      if (v33 < v29 || v35 >= v29)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v35;
        v29 = v36;
        v34 = v36;
        a1 = v51;
        v30 = v52;
        v32 = v53;
        a2 = v54;
      }

      else
      {
        v34 = v36;
        v16 = v29 == v33;
        v33 = v35;
        v29 = v36;
        a1 = v51;
        v30 = v52;
        v32 = v53;
        a2 = v54;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v35;
          v29 = v36;
          v34 = v36;
        }
      }
    }

    v61 = a2;
    v59 = v49;
  }

  else
  {
    sub_26B63E55C(a1, v15 / v14, a4);
    v54 = a3;
    v55 = a4 + v19 * v14;
    v59 = v55;
    while (a4 < v55 && a2 < a3)
    {
      v22 = v14;
      v23 = v56;
      sub_26B67E194(a2, v56, &qword_280409090, &unk_26B6EC1B0);
      v24 = v57;
      sub_26B67E194(a4, v57, &qword_280409090, &unk_26B6EC1B0);
      v25 = *(v58 + 48);
      v26 = sub_26B6E94D4();
      sub_26B650BBC(v24, &qword_280409090, &unk_26B6EC1B0);
      sub_26B650BBC(v23, &qword_280409090, &unk_26B6EC1B0);
      v14 = v22;
      if (v26)
      {
        if (a1 < a2 || a1 >= a2 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v22;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v60 = a4 + v22;
        a4 += v22;
      }

      a1 += v22;
      v61 = a1;
      a3 = v54;
    }
  }

LABEL_59:
  sub_26B67D8C0(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_26B67D8C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_26B67D9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_26B675414(a2);
  OUTLINED_FUNCTION_2_8(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280409FA0, &qword_26B6F1D00);
  if ((sub_26B6EA2E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_26B675414(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_26B6EA674();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = a1;
  }

  else
  {

    sub_26B67E00C(v12, a2, a1, v17);
  }
}

uint64_t sub_26B67DAC4()
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_7_6();
  v7 = v6;
  v8 = *v0;
  v9 = sub_26B675324();
  OUTLINED_FUNCTION_2_8(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F40, &unk_26B6F1830);
  if (OUTLINED_FUNCTION_24_2())
  {
    v16 = *v5;
    sub_26B675324();
    OUTLINED_FUNCTION_10_6();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v5;
  if (v15)
  {
    v20 = v19[7] + 32 * v14;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    *v20 = v7;
    *(v20 + 8) = v3;
    *(v20 + 16) = v1;
    *(v20 + 24) = v28;
    OUTLINED_FUNCTION_131();

    return sub_26B655E0C(v24);
  }

  else
  {
    sub_26B67E050(v14, v4, v2, v7, v3, v1, v28, v19);
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B67DBE8()
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_7_6();
  v7 = v6;
  v8 = *v0;
  v9 = sub_26B675324();
  OUTLINED_FUNCTION_2_8(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F38, &unk_26B6F1820);
  if (OUTLINED_FUNCTION_24_2())
  {
    v16 = *v5;
    sub_26B675324();
    OUTLINED_FUNCTION_10_6();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v5;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    *v20 = v7;
    v20[1] = v3;
    v20[2] = v1;
    v20[3] = v27;

    OUTLINED_FUNCTION_131();
  }

  else
  {
    sub_26B67E0A4(v14, v4, v2, v7, v3, v1, v27, v19);
    OUTLINED_FUNCTION_131();
  }
}

uint64_t sub_26B67DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26B675324();
  OUTLINED_FUNCTION_2_8(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
  if ((sub_26B6EA2E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_26B675324();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = sub_26B6E9564();
    v22 = OUTLINED_FUNCTION_16(v21);
    v24 = *(v23 + 40);
    v25 = v22;
    v26 = v20 + *(v23 + 72) * v14;

    return v24(v26, a1, v25);
  }

  else
  {
    sub_26B67E0F4(v14, a2, a3, a1, v19);
  }
}

uint64_t sub_26B67DE78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26B6E9594();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  v15 = *v2;
  v16 = sub_26B67552C();
  OUTLINED_FUNCTION_2_8(v16, v17);
  if (v20)
  {
    __break(1u);
LABEL_12:
    result = sub_26B6EA674();
    __break(1u);
    return result;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EE8, &unk_26B6F17C0);
  if (sub_26B6EA2E4())
  {
    v23 = *v3;
    sub_26B67552C();
    OUTLINED_FUNCTION_10_6();
    if (!v25)
    {
      goto LABEL_12;
    }

    v21 = v24;
  }

  if (v22)
  {
    v26 = *(*v3 + 56);
    v27 = *(v26 + 8 * v21);
    *(v26 + 8 * v21) = a1;
  }

  else
  {
    (*(v9 + 16))(v14, a2, v6);
    OUTLINED_FUNCTION_59_0();
    return sub_26B67E294(v29, v30, v31, v32);
  }
}

unint64_t sub_26B67E00C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_26B67E050(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_26B67E0A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_26B67E0F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_7(a5 + 8 * (a1 >> 6));
  v10 = (*(v8 + 48) + 16 * v9);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v8 + 56);
  v14 = sub_26B6E9564();
  OUTLINED_FUNCTION_16(v14);
  result = (*(v15 + 32))(v13 + *(v15 + 72) * a1, a4);
  v17 = *(a5 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v19;
  }

  return result;
}

uint64_t sub_26B67E194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_110(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

_OWORD *sub_26B67E1E4(unint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_7(a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = sub_26B6EA2D4();
  OUTLINED_FUNCTION_16(v10);
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  result = sub_26B643E0C(a3, (*(a4 + 56) + 32 * a1));
  v13 = *(a4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }

  return result;
}

uint64_t sub_26B67E294(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26B6E9594();
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

uint64_t sub_26B67E34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudChannelSubscription.CacheValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B67E3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudChannelSubscription.CacheValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B67E414()
{
  result = qword_2810CC810[0];
  if (!qword_2810CC810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810CC810);
  }

  return result;
}

unint64_t sub_26B67E468()
{
  result = qword_2810CC2F0;
  if (!qword_2810CC2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F70, &qword_26B6F1910);
    sub_26B67E758(&qword_2810CD7B0, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2F0);
  }

  return result;
}

unint64_t sub_26B67E524()
{
  result = qword_2810CC2E8;
  if (!qword_2810CC2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F78, &qword_26B6F1918);
    sub_26B67E758(&qword_2810CC8B0, type metadata accessor for CloudChannelSubscription.CacheValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2E8);
  }

  return result;
}

unint64_t sub_26B67E5E0()
{
  result = qword_2810CDD00;
  if (!qword_2810CDD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F70, &qword_26B6F1910);
    sub_26B67E758(&qword_2810CEA00, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD00);
  }

  return result;
}

unint64_t sub_26B67E69C()
{
  result = qword_2810CC2E0;
  if (!qword_2810CC2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409F78, &qword_26B6F1918);
    sub_26B67E758(&qword_2810CC8A8, type metadata accessor for CloudChannelSubscription.CacheValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2E0);
  }

  return result;
}

uint64_t sub_26B67E758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_9SportsKit24CloudChannelSubscriptionC6DemandO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26B67E848(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B67E888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B67E8CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_26B67E91C()
{
  result = sub_26B6E9564();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudChannelPreferences(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SportingEventCompetitorScoreEntry.ValueContainer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SportingEventCompetitorScoreEntry.ValueContainer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *sub_26B67EAFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B67EBDC()
{
  result = qword_280409F88;
  if (!qword_280409F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409F88);
  }

  return result;
}

unint64_t sub_26B67EC34()
{
  result = qword_280409F90;
  if (!qword_280409F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409F90);
  }

  return result;
}

unint64_t sub_26B67EC8C()
{
  result = qword_2810CC800;
  if (!qword_2810CC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC800);
  }

  return result;
}

unint64_t sub_26B67ECE4()
{
  result = qword_2810CC808;
  if (!qword_2810CC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC808);
  }

  return result;
}

unint64_t sub_26B67ED3C()
{
  result = qword_2810CC8B8;
  if (!qword_2810CC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC8B8);
  }

  return result;
}

unint64_t sub_26B67ED94()
{
  result = qword_2810CC8C0;
  if (!qword_2810CC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC8C0);
  }

  return result;
}

uint64_t sub_26B67EDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_110(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_26B6EA2E4();
}

uint64_t sub_26B67EF90()
{
  sub_26B6E98A4();
  sub_26B67F98C(&qword_2810CD750, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE0, &qword_26B6F17A0);
  sub_26B67F9D4(&qword_2810CC2D0, &qword_280409FE0, &qword_26B6F17A0);
  return sub_26B6EA0B4();
}

uint64_t sub_26B67F068()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_26B67F0C8(v0);
    v2 = *(v0 + 56);
    *(v0 + 56) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_26B67F0C8(uint64_t a1)
{
  v34 = a1;
  v1 = sub_26B6E98A4();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B6E98D4();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B6E9894();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_26B6E98F4();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26B6E9EF4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B67F928();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26B67F98C(&qword_280409FC0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FC8, &unk_26B6F1DC0);
  sub_26B67F9D4(&unk_280409FD0, &qword_280409FC8, &unk_26B6F1DC0);
  sub_26B6EA0B4();
  v20 = v34;
  v21 = *(v34 + 48);
  v22 = sub_26B6E9F24();
  (*(v16 + 8))(v19, v15);
  ObjectType = swift_getObjectType();
  sub_26B6E98E4();
  v24 = *(v20 + 32);
  sub_26B67F5B8(v10);
  MEMORY[0x26D67D940](v14, v10, ObjectType, v24);
  (*(v32 + 8))(v10, v33);
  (*(v30 + 8))(v14, v31);
  v25 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_26B67F96C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B66CB58;
  aBlock[3] = &block_descriptor_3;
  v26 = _Block_copy(aBlock);

  v27 = v35;
  sub_26B6E98B4();
  v28 = v36;
  sub_26B67EF90();
  sub_26B6E9F44();
  _Block_release(v26);
  (*(v39 + 8))(v28, v40);
  (*(v37 + 8))(v27, v38);

  return v22;
}

uint64_t sub_26B67F5B8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_26B6E9894();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26B67F630()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(result + 24);
      sub_26B67FA28(*(result + 16));

      v1(v3);
      return sub_26B67F918(v1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26B67F6C8()
{
  sub_26B67F068();
  swift_getObjectType();
  sub_26B6E9F64();
  swift_unknownObjectRelease();
  sub_26B67F730();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_26B67F918(v1);
  v3 = *(v0 + 24);
  sub_26B67F918(*(v0 + 16));

  v4 = *(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

void sub_26B67F730()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    sub_26B67F068();
    swift_getObjectType();
    sub_26B6E9F74();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_26B67F78C()
{
  sub_26B67F6C8();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

_BYTE *storeEnumTagSinglePayload for RepeatingTimer.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B67F8C4()
{
  result = qword_280409FB0;
  if (!qword_280409FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409FB0);
  }

  return result;
}

uint64_t sub_26B67F918(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26B67F928()
{
  result = qword_2810CC240;
  if (!qword_2810CC240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810CC240);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B67F98C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B67F9D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B67FA28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B67FA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A298, &qword_26B6F2608);
  if (sub_26B6EA484())
  {
    v1 = sub_26B6EA3C4();
    if (!v0)
    {
      OUTLINED_FUNCTION_28_3(v1, v2, v3, v4, v5, v6, v7, v8, v15[0], v15[1], v15[2], v15[3], v15[4], v16);
      v9 = sub_26B68169C(v15, type metadata accessor for SportingEventCoverageIngestion);
      OUTLINED_FUNCTION_37_3(v9, v10, v11, v12, v13);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B67FB6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v11 = a1;
  v6 = OUTLINED_FUNCTION_47_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (sub_26B6EA484())
  {
    sub_26B6EA3C4();
    if (!v4)
    {
      sub_26B642140(v10, v9);
      a4(v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B67FC84(uint64_t a1)
{
  OUTLINED_FUNCTION_34_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A278, &qword_26B6F25E8);
  OUTLINED_FUNCTION_8_5();
  if ((sub_26B6EA484() & 1) == 0)
  {
    return 2;
  }

  v3 = OUTLINED_FUNCTION_5_6();
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v12[3], v12[4], v13[0]);
    v1 = sub_26B680D7C(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v1;
}

uint64_t sub_26B67FD48(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v3 = OUTLINED_FUNCTION_47_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  if (sub_26B6EA484())
  {
    v5 = sub_26B6EA3C4();
    if (!v2)
    {
      OUTLINED_FUNCTION_28_3(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v15[0]);
      sub_26B68114C(v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680058(uint64_t a1)
{
  OUTLINED_FUNCTION_17_3(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1E0, &qword_26B6F3990);
  OUTLINED_FUNCTION_8_5();
  if (sub_26B6EA484())
  {
    v2 = OUTLINED_FUNCTION_5_6();
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v2, v3, v4, v5, v6, v7, v8, v9, v17[0], v17[1], v17[2], v17[3], v17[4], v18);
      OUTLINED_FUNCTION_12_5();
      v11 = sub_26B68169C(v17, v10);
      OUTLINED_FUNCTION_37_3(v11, v12, v13, v14, v15);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B68010C(uint64_t a1)
{
  OUTLINED_FUNCTION_17_3(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1E0, &qword_26B6F3990);
  OUTLINED_FUNCTION_8_5();
  if (sub_26B6EA484())
  {
    v2 = OUTLINED_FUNCTION_5_6();
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v2, v3, v4, v5, v6, v7, v8, v9, v16[0], v16[1], v16[2], v16[3], v16[4], v17);
      v10 = sub_26B680F6C(v16, &qword_28040A1E8, &qword_26B6F2590, sub_26B685048);
      OUTLINED_FUNCTION_37_3(v10, v11, v12, v13, v14);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680248(uint64_t a1)
{
  OUTLINED_FUNCTION_34_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1D0, &qword_26B6F3A20);
  OUTLINED_FUNCTION_8_5();
  if (sub_26B6EA484())
  {
    v2 = OUTLINED_FUNCTION_5_6();
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v2, v3, v4, v5, v6, v7, v8, v9, v17[0], v17[1], v17[2], v17[3], v17[4], v18);
      OUTLINED_FUNCTION_12_5();
      v11 = sub_26B68169C(v17, v10);
      OUTLINED_FUNCTION_37_3(v11, v12, v13, v14, v15);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680324(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17_3(a1);
  v5 = OUTLINED_FUNCTION_47_1(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_5();
  if ((sub_26B6EA484() & 1) == 0)
  {
    return 2;
  }

  v7 = OUTLINED_FUNCTION_5_6();
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v17[0]);
    v1 = sub_26B680D7C(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return v1;
}

uint64_t sub_26B680468(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_34_2(a1);
  v4 = OUTLINED_FUNCTION_47_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_5();
  if (sub_26B6EA484())
  {
    v6 = OUTLINED_FUNCTION_5_6();
    if (!v1)
    {
      OUTLINED_FUNCTION_28_3(v6, v7, v8, v9, v10, v11, v12, v13, v20[0], v20[1], v20[2], v20[3], v20[4], v21);
      v14 = sub_26B68169C(v20, type metadata accessor for SportingEventClock);
      OUTLINED_FUNCTION_37_3(v14, v15, v16, v17, v18);
    }
  }

  return OUTLINED_FUNCTION_20_2();
}

uint64_t sub_26B680584(uint64_t a1)
{
  OUTLINED_FUNCTION_17_3(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A180, &qword_26B6F3A90);
  OUTLINED_FUNCTION_8_5();
  if ((sub_26B6EA484() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_5_6();
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v12[3], v12[4], v13[0]);
    v1 = sub_26B680BA8(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v1;
}

uint64_t sub_26B68067C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_34_2(a1);
  v5 = OUTLINED_FUNCTION_47_1(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_5();
  if ((sub_26B6EA484() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_5_6();
  if (!v2)
  {
    OUTLINED_FUNCTION_28_3(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v17[0]);
    v1 = sub_26B680BA8(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return v1;
}

unint64_t sub_26B680708(uint64_t a1)
{
  OUTLINED_FUNCTION_34_2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A168, &unk_26B6F2530);
  OUTLINED_FUNCTION_8_5();
  if ((sub_26B6EA484() & 1) == 0)
  {
    v10 = 0;
    LOBYTE(v11) = 1;
    return v10 | (v11 << 32);
  }

  result = OUTLINED_FUNCTION_5_6();
  if (!v1)
  {
    OUTLINED_FUNCTION_28_3(result, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v14[4], v15[0]);
    v12 = sub_26B681CF0(v14);
    v13 = v12;
    v11 = HIDWORD(v12) & 1;
    __swift_destroy_boxed_opaque_existential_1(v15);
    v10 = v13;
    return v10 | (v11 << 32);
  }

  return result;
}

uint64_t sub_26B6807E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  if (sub_26B6EA614())
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_26B685894();
    sub_26B6EA604();
    v5 = v8;
    v6 = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  *a2 = v5;
  a2[1] = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B6809B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  if (sub_26B6EA614())
  {
    v5 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_26B685840();
    sub_26B6EA604();
    v5 = v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  *a2 = v5;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B680BA8(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  if (sub_26B6EA614())
  {
    v3 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_26B6EA604();
    v3 = v5;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26B680D7C(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  if (sub_26B6EA614())
  {
    v3 = 2;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_26B6EA604();
    v3 = v5;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26B680F6C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_33_3();
  sub_26B6EA764();
  if (v4)
  {
    v10 = a1[4];
    OUTLINED_FUNCTION_4_0(a1, a1[3]);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v17, v18[0], v18[1], v18[2], v19, v20, v21);

    OUTLINED_FUNCTION_31_2(v11);
    v12 = v19;
    if (v19)
    {
      v13 = v20;
      OUTLINED_FUNCTION_4_0(v18, v19);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      (*(v13 + 8))(v14, v4, v12, v13);

      sub_26B684C50(v22);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      sub_26B684C50(v22);

      sub_26B684C50(v18);
    }

    v15 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_0(v22, v23);
    OUTLINED_FUNCTION_33_3();
    if (sub_26B6EA614())
    {
      v15 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_0(v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      a4();
      sub_26B6EA604();
      v15 = v18[0];
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t sub_26B68114C(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_8();
  sub_26B6EA764();
  if (v1)
  {
    v4 = a1[3];
    v5 = a1[4];
    OUTLINED_FUNCTION_0_8(a1);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v10, v11[0], v11[1], v11[2], v12, v13, v14);

    OUTLINED_FUNCTION_31_2(v6);
    if (v12)
    {
      OUTLINED_FUNCTION_3_10(v11);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v7();

      sub_26B684C50(v15);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      sub_26B684C50(v15);

      sub_26B684C50(v11);
    }

    v8 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_10(v15);
    if (sub_26B6EA614())
    {
      v8 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_0(v15, v15[3]);
      sub_26B6EA604();
      v8 = v11[0];
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_26B6812CC()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    v4 = v0[3];
    v5 = v0[4];
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v6);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v7();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      sub_26B68563C();
      OUTLINED_FUNCTION_13_6();
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B681414()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    v4 = v0[3];
    v5 = v0[4];
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v6);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v7();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      sub_26B6853CC();
      OUTLINED_FUNCTION_13_6();
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B68169C(uint64_t *a1, void (*a2)(void))
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_8();
  sub_26B6EA764();
  if (v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    OUTLINED_FUNCTION_0_8(a1);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v14, v15[0], v15[1], v15[2], v16, v17, v18);

    OUTLINED_FUNCTION_31_2(v8);
    if (v16)
    {
      OUTLINED_FUNCTION_3_10(v15);
      a2(0);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v9();

      sub_26B684C50(v19);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_26B684C50(v19);

      sub_26B684C50(v15);
    }

    v10 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_0(v19, v20);
    if (sub_26B6EA614())
    {
      v10 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_0(v19, v20);
      a2(0);
      v11 = OUTLINED_FUNCTION_2_2();
      sub_26B6857F8(v11, v12);
      OUTLINED_FUNCTION_100();
      sub_26B6EA604();
      v10 = v15[0];
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_26B681884(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  OUTLINED_FUNCTION_18_2();
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_33_3();
  sub_26B6EA764();
  if (v4)
  {
    v9 = v3[4];
    OUTLINED_FUNCTION_4_0(v3, v3[3]);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v15, v16[0], v16[1], v16[2], v17, v18, v19);

    OUTLINED_FUNCTION_31_2(v10);
    v11 = v17;
    if (v17)
    {
      v12 = v18;
      OUTLINED_FUNCTION_4_0(v16, v17);
      (*(v12 + 8))(a3, v4, v11, v12);

      sub_26B684C50(v20);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_26B684C50(v20);

      sub_26B684C50(v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_0(v20, v21);
    OUTLINED_FUNCTION_33_3();
    if ((sub_26B6EA614() & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_4_0(v20, v21);
      a2(v13);
      sub_26B6EA604();
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B681A10()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    v4 = v0[3];
    v5 = v0[4];
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v6);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v7();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      sub_26B684F4C();
      OUTLINED_FUNCTION_13_6();
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

uint64_t sub_26B681BA8()
{
  OUTLINED_FUNCTION_18_2();
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_46_1();
  sub_26B6EA764();
  if (v1)
  {
    v4 = v0[3];
    v5 = v0[4];
    OUTLINED_FUNCTION_0_8(v0);
    sub_26B6EA774();
    OUTLINED_FUNCTION_2_9("com.apple.SportsKit.initFailureObserver", v9, v10[0], v10[1], v10[2], v11, v12, v13);

    OUTLINED_FUNCTION_31_2(v6);
    if (v11)
    {
      OUTLINED_FUNCTION_3_10(v10);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_7_7();
      v7();

      sub_26B684C50(v14);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_26B684C50(v14);

      sub_26B684C50(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_8(v14);
    if ((sub_26B6EA614() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_10(v14);
      sub_26B684CB8();
      OUTLINED_FUNCTION_13_6();
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OUTLINED_FUNCTION_36_3();
}

unint64_t sub_26B681CF0(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6EA764();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = sub_26B6EA614();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_26B6EA604();
    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4 | ((v3 & 1) << 32);
}

uint64_t SportingEventViewContext.LocalizedStrings.LocalizedName.locale.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventViewContext.LocalizedStrings.LocalizedName.text.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_22_0();
}

SportsKit::SportingEventViewContext::LocalizedStrings::LocalizedName __swiftcall SportingEventViewContext.LocalizedStrings.LocalizedName.init(locale:text:)(Swift::String locale, Swift::String text)
{
  *v2 = locale;
  v2[1] = text;
  result.text = text;
  result.locale = locale;
  return result;
}

uint64_t sub_26B681F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B681FF4(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_26B682028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B681F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B682050(uint64_t a1)
{
  v2 = sub_26B68221C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68208C(uint64_t a1)
{
  v2 = sub_26B68221C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.LocalizedStrings.LocalizedName.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FE8, &qword_26B6F1DD0);
  OUTLINED_FUNCTION_4(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B68221C();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_35_1();
  sub_26B6EA4F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4F4();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B68221C()
{
  result = qword_280409FF0;
  if (!qword_280409FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409FF0);
  }

  return result;
}

void SportingEventViewContext.LocalizedStrings.LocalizedName.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409FF8, &qword_26B6F1DD8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_7();
  sub_26B68221C();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v11 = sub_26B6EA424();
    v13 = v12;
    v14 = sub_26B6EA424();
    v16 = v15;
    v17 = *(v7 + 8);
    v20 = v14;
    v18 = OUTLINED_FUNCTION_2_2();
    v19(v18);
    *v4 = v11;
    v4[1] = v13;
    v4[2] = v20;
    v4[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B682470(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974736974617473 && a2 == 0xEA00000000007363)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B682510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B682470(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B68253C(uint64_t a1)
{
  v2 = sub_26B682738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B682578(uint64_t a1)
{
  v2 = sub_26B682738();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.LocalizedStrings.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A000, &qword_26B6F1DE0);
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = *(v24 + 24);
  v35 = *(v24 + 32);
  v36 = OUTLINED_FUNCTION_33_3();
  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_26B682738();

  OUTLINED_FUNCTION_100();
  sub_26B6EA7C4();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A010, &qword_26B6F1DE8);
  sub_26B6829D4(&qword_28040A018, sub_26B68278C);
  sub_26B6EA4E4();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B682738()
{
  result = qword_28040A008;
  if (!qword_28040A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A008);
  }

  return result;
}

unint64_t sub_26B68278C()
{
  result = qword_28040A020;
  if (!qword_28040A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A028, &qword_26B6F1DF0);
    sub_26B682810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A020);
  }

  return result;
}

unint64_t sub_26B682810()
{
  result = qword_28040A030;
  if (!qword_28040A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A030);
  }

  return result;
}

void SportingEventViewContext.LocalizedStrings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A038, &qword_26B6F1DF8);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_7();
  sub_26B682738();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A010, &qword_26B6F1DE8);
    sub_26B6829D4(&qword_28040A040, sub_26B682A58);
    sub_26B6EA414();
    v17 = OUTLINED_FUNCTION_30_2();
    v18(v17);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6829D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A010, &qword_26B6F1DE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B682A58()
{
  result = qword_28040A048;
  if (!qword_28040A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A028, &qword_26B6F1DF0);
    sub_26B682ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A048);
  }

  return result;
}

unint64_t sub_26B682ADC()
{
  result = qword_28040A050;
  if (!qword_28040A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A050);
  }

  return result;
}

uint64_t SportingEventViewContext.LocalizedTitles.preGame.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t sub_26B682B8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D6147657270 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B682C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B682B8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B682C4C(uint64_t a1)
{
  v2 = sub_26B682DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B682C88(uint64_t a1)
{
  v2 = sub_26B682DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.LocalizedTitles.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A058, &qword_26B6F1E00);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_61_0();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B682DD8();
  sub_26B6EA7C4();
  sub_26B6EA4A4();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B682DD8()
{
  result = qword_28040A060;
  if (!qword_28040A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A060);
  }

  return result;
}

void SportingEventViewContext.LocalizedTitles.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A068, &qword_26B6F1E08);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_7();
  sub_26B682DD8();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (!v1)
  {
    v7 = sub_26B6EA3D4();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_30_2();
    v11(v10);
    *v2 = v7;
    v2[1] = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_37();
}

uint64_t SportingEventViewContext.mode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t sub_26B682FAC@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 6);
  result = SportingEventViewContext.mode.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26B682FF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SportingEventViewContext.mode.setter(v1, v2);
}

uint64_t SportingEventViewContext.mode.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26B683098(uint64_t *a1)
{
  v1 = *a1;

  return SportingEventViewContext.players.setter(v2);
}

uint64_t SportingEventViewContext.players.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_26B683118@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  result = a4(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_26B683168(uint64_t *a1)
{
  v1 = *a1;

  return SportingEventViewContext.statistics.setter(v2);
}

uint64_t SportingEventViewContext.statistics.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SportingEventViewContext.strings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_26B64832C(v2);
}

uint64_t sub_26B6831EC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 6);
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  v9 = a1[2];
  v10 = v3;
  result = SportingEventViewContext.strings.getter(&v6);
  *a2 = v6;
  return result;
}

uint64_t sub_26B683240(uint64_t *a1)
{
  v2 = *a1;
  sub_26B64832C(v2);
  return SportingEventViewContext.strings.setter(&v2);
}

uint64_t SportingEventViewContext.strings.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_26B648448(*(v1 + 32));
  *(v1 + 32) = v2;
  return result;
}

uint64_t SportingEventViewContext.titles.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_26B64833C(v2, v3);
}

double sub_26B6832D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v4;
  v6[3] = *(a1 + 32);
  v7 = v3;
  SportingEventViewContext.titles.getter(v6);
  result = *v6;
  *a2 = v6[0];
  return result;
}

uint64_t sub_26B683328(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  sub_26B64833C(v3[0], v1);
  return SportingEventViewContext.titles.setter(v3);
}

uint64_t SportingEventViewContext.titles.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26B648458(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t SportingEventViewContext.init(mode:players:statistics:strings:titles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  v10 = a6[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  sub_26B648448(1);
  a7[4] = v8;
  result = sub_26B648458(0, 1);
  a7[5] = v9;
  a7[6] = v10;
  return result;
}

uint64_t sub_26B683410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726579616C70 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73676E69727473 && a2 == 0xE700000000000000;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73656C746974 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B6EA5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26B6835B4(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
      v3 = 0x726579616C70;
      goto LABEL_6;
    case 2:
      result = 0x6974736974617473;
      break;
    case 3:
      v3 = 0x676E69727473;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 4:
      result = 0x73656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B68364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B683410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B683674(uint64_t a1)
{
  v2 = sub_26B683994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6836B0(uint64_t a1)
{
  v2 = sub_26B683994();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventViewContext.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v25 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A070, &unk_26B6F1E10);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v23 = v0[3];
  v24 = v14;
  v15 = v0[4];
  v20 = v0[5];
  v21 = v0[6];
  v22 = v15;
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B683994();

  sub_26B6EA7C4();
  v26 = v12;
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
  sub_26B6839E8();
  v17 = v25;
  sub_26B6EA534();
  if (v17)
  {
  }

  else
  {
    v19 = v22;
    v18 = v23;

    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A090, &qword_26B6F1E28);
    sub_26B683A98();
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    v26 = v18;
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    v26 = v19;
    sub_26B64832C(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A0B0, &qword_26B6F1E40);
    sub_26B683C28();
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    sub_26B648448(v26);
    v26 = v20;
    v27 = v21;
    sub_26B64833C(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A0D8, &qword_26B6F1E50);
    sub_26B683D84();
    OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA534();
    sub_26B648458(v26, v27);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B683994()
{
  result = qword_28040A078;
  if (!qword_28040A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A078);
  }

  return result;
}

unint64_t sub_26B6839E8()
{
  result = qword_2810CE560;
  if (!qword_2810CE560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A080, &unk_26B6F37B0);
    sub_26B683BCC(&qword_2810CDCF0, &unk_28040A088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE560);
  }

  return result;
}

unint64_t sub_26B683A98()
{
  result = qword_28040A098;
  if (!qword_28040A098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A090, &qword_26B6F1E28);
    sub_26B683B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A098);
  }

  return result;
}

unint64_t sub_26B683B1C()
{
  result = qword_28040A0A0;
  if (!qword_28040A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0A8, &unk_26B6F1E30);
    sub_26B683BCC(&qword_280409BF0, &qword_280409BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0A0);
  }

  return result;
}

uint64_t sub_26B683BCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_47_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B683C28()
{
  result = qword_28040A0B8;
  if (!qword_28040A0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0B0, &qword_26B6F1E40);
    sub_26B683CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0B8);
  }

  return result;
}

unint64_t sub_26B683CAC()
{
  result = qword_28040A0C0;
  if (!qword_28040A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0C8, &qword_26B6F1E48);
    sub_26B683D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0C0);
  }

  return result;
}

unint64_t sub_26B683D30()
{
  result = qword_28040A0D0;
  if (!qword_28040A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0D0);
  }

  return result;
}

unint64_t sub_26B683D84()
{
  result = qword_28040A0E0;
  if (!qword_28040A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0D8, &qword_26B6F1E50);
    sub_26B683E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0E0);
  }

  return result;
}

unint64_t sub_26B683E08()
{
  result = qword_28040A0E8;
  if (!qword_28040A0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A0F0, &qword_26B6F1E58);
    sub_26B683E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0E8);
  }

  return result;
}

unint64_t sub_26B683E8C()
{
  result = qword_28040A0F8;
  if (!qword_28040A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A0F8);
  }

  return result;
}

void SportingEventViewContext.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A100, &qword_26B6F1E60);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26B683994();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);

    sub_26B648448(1);
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = sub_26B68067C(0);
    v31 = v13;
    OUTLINED_FUNCTION_11_7();
    v17 = sub_26B67FB6C(1, v14, v15, v16);
    v30 = v12;
    OUTLINED_FUNCTION_11_7();
    v21 = sub_26B67FB6C(2, v18, v19, v20);
    OUTLINED_FUNCTION_15_3();
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_15_3();
      sub_26B6EA3C4();
      v29 = v4;
      sub_26B642140(v33, v32);
      sub_26B6809B4(v32, v34);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v22 = v34[0];
    }

    else
    {
      v29 = v4;
      v22 = 1;
    }

    sub_26B648448(1);
    OUTLINED_FUNCTION_15_3();
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_15_3();
      sub_26B6EA3C4();
      sub_26B642140(v33, v32);
      sub_26B6807E0(v32, v34);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v25 = OUTLINED_FUNCTION_6_7();
      v26(v25);
      v27 = v34[0];
      v28 = v34[1];
    }

    else
    {
      v23 = OUTLINED_FUNCTION_6_7();
      v24(v23);
      v27 = 0;
      v28 = 1;
    }

    sub_26B648458(0, 1);
    *v29 = v30;
    v29[1] = v31;
    v29[2] = v17;
    v29[3] = v21;
    v29[4] = v22;
    v29[5] = v27;
    v29[6] = v28;

    sub_26B64832C(v22);
    sub_26B64833C(v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v2);

    sub_26B648448(v22);
    v10 = v27;
    v11 = v28;
  }

  sub_26B648458(v10, v11);
  OUTLINED_FUNCTION_37();
}

Swift::String_optional __swiftcall SportingEventViewContext.localizedStatistic(forKey:locale:)(Swift::String forKey, Swift::String locale)
{
  v3 = *(v2 + 32);
  if (v3 >= 2 && *(v3 + 16))
  {
    object = locale._object;
    countAndFlagsBits = locale._countAndFlagsBits;
    sub_26B64832C(*(v2 + 32));
    OUTLINED_FUNCTION_46_1();
    v6 = sub_26B675324();
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      sub_26B648448(v3);
      v9 = (v8 + 56);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        if (*(v9 - 3) != countAndFlagsBits || *(v9 - 2) != object)
        {
          v9 += 4;
          if ((sub_26B6EA5D4() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_26B648448(v3);
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_15:
  v14 = v11;
  v15 = v12;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9SportsKit24SportingEventViewContextV16LocalizedStringsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9SportsKit24SportingEventViewContextV15LocalizedTitlesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26B684434(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B684488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B68450C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B684560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventViewContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B6846A8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SportingEventViewContext.LocalizedStrings.LocalizedName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B684834()
{
  result = qword_28040A108;
  if (!qword_28040A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A108);
  }

  return result;
}

unint64_t sub_26B68488C()
{
  result = qword_28040A110;
  if (!qword_28040A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A110);
  }

  return result;
}

unint64_t sub_26B6848E4()
{
  result = qword_28040A118;
  if (!qword_28040A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A118);
  }

  return result;
}

unint64_t sub_26B68493C()
{
  result = qword_28040A120;
  if (!qword_28040A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A120);
  }

  return result;
}

unint64_t sub_26B684994()
{
  result = qword_28040A128;
  if (!qword_28040A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A128);
  }

  return result;
}

unint64_t sub_26B6849EC()
{
  result = qword_28040A130;
  if (!qword_28040A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A130);
  }

  return result;
}

unint64_t sub_26B684A44()
{
  result = qword_28040A138;
  if (!qword_28040A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A138);
  }

  return result;
}

unint64_t sub_26B684A9C()
{
  result = qword_28040A140;
  if (!qword_28040A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A140);
  }

  return result;
}

unint64_t sub_26B684AF4()
{
  result = qword_28040A148;
  if (!qword_28040A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A148);
  }

  return result;
}

unint64_t sub_26B684B4C()
{
  result = qword_28040A150;
  if (!qword_28040A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A150);
  }

  return result;
}

unint64_t sub_26B684BA4()
{
  result = qword_28040A158;
  if (!qword_28040A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A158);
  }

  return result;
}

unint64_t sub_26B684BFC()
{
  result = qword_28040A160;
  if (!qword_28040A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A160);
  }

  return result;
}

uint64_t sub_26B684C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409280, &qword_26B6ECC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B684CB8()
{
  result = qword_28040A178;
  if (!qword_28040A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A178);
  }

  return result;
}

unint64_t sub_26B684D0C()
{
  result = qword_28040A198;
  if (!qword_28040A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A190, &qword_26B6F2558);
    sub_26B684D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A198);
  }

  return result;
}

unint64_t sub_26B684D90()
{
  result = qword_28040A1A0;
  if (!qword_28040A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A1A0);
  }

  return result;
}

unint64_t sub_26B684DE4()
{
  result = qword_2810CDC88;
  if (!qword_2810CDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1A8, &unk_26B6F2560);
    sub_26B6857F8(&qword_2810CE130, type metadata accessor for SportingEventParticipant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC88);
  }

  return result;
}

unint64_t sub_26B684E98()
{
  result = qword_28040A1B8;
  if (!qword_28040A1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1B0, &qword_26B6F3A50);
    sub_26B6857F8(&qword_28040A1C0, type metadata accessor for SportingEventPlayDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A1B8);
  }

  return result;
}

unint64_t sub_26B684F4C()
{
  result = qword_2810CE000;
  if (!qword_2810CE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE000);
  }

  return result;
}

unint64_t sub_26B684FA0()
{
  result = qword_2810CDD70;
  if (!qword_2810CDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD70);
  }

  return result;
}

unint64_t sub_26B684FF4()
{
  result = qword_2810CE048;
  if (!qword_2810CE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE048);
  }

  return result;
}

unint64_t sub_26B685048()
{
  result = qword_2810CDC98;
  if (!qword_2810CDC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1E8, &qword_26B6F2590);
    sub_26B6857F8(&qword_2810CE198, type metadata accessor for SportingEventClockTime);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC98);
  }

  return result;
}

unint64_t sub_26B6850FC()
{
  result = qword_2810CDC68;
  if (!qword_2810CDC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1F8, &qword_26B6F25A0);
    sub_26B6857F8(&qword_2810CDE78, type metadata accessor for SportingEventClockTimeContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC68);
  }

  return result;
}

unint64_t sub_26B6851B0()
{
  result = qword_28040A210;
  if (!qword_28040A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A208, &unk_26B6F25B0);
    sub_26B6857F8(&qword_28040A218, type metadata accessor for SportingEventImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A210);
  }

  return result;
}

unint64_t sub_26B685264()
{
  result = qword_28040A228;
  if (!qword_28040A228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A220, &unk_26B6F38E0);
    sub_26B6857F8(&qword_28040A230, type metadata accessor for SportingEventParticipantStatistic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A228);
  }

  return result;
}

unint64_t sub_26B685318()
{
  result = qword_28040A240;
  if (!qword_28040A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A238, &qword_26B6F25C0);
    sub_26B6857F8(&qword_28040A248, type metadata accessor for SportingEventParticipantMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A240);
  }

  return result;
}

unint64_t sub_26B6853CC()
{
  result = qword_28040A250;
  if (!qword_28040A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A250);
  }

  return result;
}

unint64_t sub_26B685420()
{
  result = qword_2810CDC00;
  if (!qword_2810CDC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A260, &qword_26B6F25D0);
    sub_26B6857F8(&qword_2810CDD88, type metadata accessor for SportingEventLocalizedDisplayName);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC00);
  }

  return result;
}

unint64_t sub_26B6854D4()
{
  result = qword_2810CDC28;
  if (!qword_2810CDC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A268, &qword_26B6F25D8);
    sub_26B6857F8(&qword_2810CDDD8, type metadata accessor for SportingEventCompetitorStatistic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC28);
  }

  return result;
}

unint64_t sub_26B685588()
{
  result = qword_2810CDCA8;
  if (!qword_2810CDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A270, &qword_26B6F25E0);
    sub_26B6857F8(&qword_2810CE2B8, type metadata accessor for SportingEventMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCA8);
  }

  return result;
}

unint64_t sub_26B68563C()
{
  result = qword_2810CDDA0;
  if (!qword_2810CDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDA0);
  }

  return result;
}

unint64_t sub_26B685690()
{
  result = qword_2810CDC50;
  if (!qword_2810CDC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A288, &unk_26B6F3790);
    sub_26B6857F8(&qword_2810CDE50, type metadata accessor for SportingEventCoverageLastUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC50);
  }

  return result;
}

unint64_t sub_26B685744()
{
  result = qword_2810CDBE8;
  if (!qword_2810CDBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A290, &qword_26B6F2600);
    sub_26B6857F8(&qword_2810CDD58, type metadata accessor for SportingEventCoverageIngestionUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBE8);
  }

  return result;
}

uint64_t sub_26B6857F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B685840()
{
  result = qword_28040A2A8;
  if (!qword_28040A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A2A8);
  }

  return result;
}

unint64_t sub_26B685894()
{
  result = qword_28040A2B0;
  if (!qword_28040A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A2B0);
  }

  return result;
}

unint64_t sub_26B6858E8()
{
  result = qword_280409C00;
  if (!qword_280409C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409BE8, &qword_26B6F00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409C00);
  }

  return result;
}

double OUTLINED_FUNCTION_2_9@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_26B642704(0xD000000000000027, (a1 - 32) | 0x8000000000000000, v8, va);
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return sub_26B6EA3C4();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_26B6EA604();
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B67FB6C(a1, a2, a3, sub_26B68155C);
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B67FB6C(a1, a2, a3, sub_26B6815FC);
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return sub_26B642140(&a14, &a9);
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return sub_26B6429C0(va1, va);
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  *v2 = v1;

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t SportsScoreboardStream.Demand.key.getter()
{
  v1 = 7105633;
  if (*(v0 + 8) == 1)
  {
    v1 = 0x73746E657665;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x7365756761656CLL;
  }
}

void *sub_26B685BE4()
{
  type metadata accessor for SportsScoreboardStream();
  swift_allocObject();
  result = sub_26B685C7C();
  qword_2810CD600 = result;
  return result;
}

uint64_t static SportsScoreboardStream.shared.getter()
{
  if (qword_2810CD5F8 != -1)
  {
    swift_once();
  }
}

void *sub_26B685C7C()
{
  swift_defaultActor_initialize();
  type metadata accessor for XPCConnectionProvider();
  v1 = swift_allocObject();
  type metadata accessor for GuaranteedProxy();
  swift_allocObject();
  *(v1 + 16) = sub_26B6DF660();
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2F8, &qword_26B6F2838);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v0[15] = v2;
  v0[16] = 0;
  sub_26B6E9594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EF0, &unk_26B6F2840);
  sub_26B689F10(&qword_2810CD7A8, 255, MEMORY[0x277CC95F0]);
  v0[17] = sub_26B6E9944();
  return v0;
}

uint64_t sub_26B685D90()
{
  OUTLINED_FUNCTION_4_9();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2B8, &qword_26B6F2628);
  OUTLINED_FUNCTION_46(v5);
  v7 = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_35_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2C0, &qword_26B6F2630);
  v1[10] = v8;
  OUTLINED_FUNCTION_46(v8);
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_35_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2C8, &qword_26B6F2638);
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_35_3();
  v14 = sub_26B6E9594();
  v1[15] = v14;
  v15 = *(v14 - 8);
  v1[16] = v15;
  v1[17] = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](sub_26B685F0C, v0, 0);
}

uint64_t sub_26B685F0C()
{
  v28 = v0;
  v1 = *(v0[8] + 120);
  os_unfair_lock_lock((v1 + 24));
  sub_26B6863F0((v1 + 16), v27);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v0[18];
  v26 = v0[17];
  v4 = v0[15];
  v3 = v0[16];
  v24 = v0[14];
  v19 = v0[12];
  v20 = v0[13];
  v23 = v0[11];
  v18 = v0[10];
  v25 = v0[9];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v21 = v0[5];
  sub_26B6E9584();
  v8 = *(v3 + 16);
  v8(v2, v7, v4);
  swift_beginAccess();

  v9 = *(v6 + 136);
  swift_isUniquelyReferenced_nonNull_native();
  v27[0] = *(v6 + 136);
  sub_26B67DE78(v5, v2);
  *(v6 + 136) = v27[0];
  (*(v3 + 8))(v2, v4);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2D0, &qword_26B6F2640);
  v17 = swift_allocBox();
  sub_26B6D35AC();
  v8(v2, v7, v4);
  v22 = *(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v16 = *(v3 + 32);
  v16(v10 + ((v22 + 24) & ~v22), v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409208, &qword_26B6EC768);
  sub_26B689EC8(&qword_2810CC290, &qword_28040A2C0, &qword_26B6F2630);
  sub_26B6EA2A4();
  MEMORY[0x26D67DC10](v19);
  sub_26B6E9DB4();
  sub_26B6EA274();
  (*(v20 + 8))(v24, v19);
  sub_26B6EA284();
  v8(v2, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  *(v11 + 24) = v6;
  v16(v11 + ((v22 + 32) & ~v22), v2, v4);
  v8(v2, v7, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v16(v12 + ((v22 + 24) & ~v22), v2, v4);
  swift_retain_n();

  sub_26B6E9D74();
  v13 = sub_26B688E80(v5);
  sub_26B687E90(v13);

  OUTLINED_FUNCTION_8_6();

  return v14();
}

uint64_t sub_26B6863F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_26B6E93B4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1)
  {
    goto LABEL_2;
  }

  if (qword_2810CE9F8 != -1)
  {
    swift_once();
  }

  v10 = sub_26B6E95C4();
  __swift_project_value_buffer(v10, qword_2810D4320);
  v11 = sub_26B6E95A4();
  v12 = sub_26B6E9E64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26B630000, v11, v12, "initializing scoreboard file monitor", v13, 2u);
    MEMORY[0x26D67E950](v13, -1, -1);
  }

  v14 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter(v8);

  updated = type metadata accessor for ScoreboardsUpdateMonitor();
  v16 = *(updated + 48);
  v17 = *(updated + 52);
  swift_allocObject();
  result = sub_26B6D36E8(v8);
  if (!v2)
  {
    *a1 = result;
LABEL_2:
    *a2 = result;
  }

  return result;
}

uint64_t sub_26B6865A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v5 = *a2;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_26B6865D0, 0, 0);
}

uint64_t sub_26B6865D0()
{
  OUTLINED_FUNCTION_18_6();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = v0[5];
  v2 = sub_26B6E95C4();
  v3 = __swift_project_value_buffer(v2, qword_2810D4320);
  v0[6] = v3;

  v4 = sub_26B6E95A4();
  v5 = sub_26B6E9E64();
  v6 = OUTLINED_FUNCTION_25_3(v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_41_0();
    *v8 = 134217984;
    *(v8 + 4) = sub_26B6B8B04(v7);

    _os_log_impl(&dword_26B630000, v4, v3, "scoreboard stream received %ld updates", v8, 0xCu);
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
    v9 = v0[5];
  }

  v10 = v0[3];

  return MEMORY[0x2822009F8](sub_26B6866FC, v10, 0);
}

uint64_t sub_26B6866FC()
{
  OUTLINED_FUNCTION_4_9();
  v2 = v0[3];
  v1 = v0[4];
  v0[7] = sub_26B687E08();
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

char *sub_26B686760()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_26B689188(v4);
  v7 = v6;

  v36 = v3;
  result = sub_26B6542CC(v2);
  v9 = result;
  v10 = 0;
  v11 = v2 & 0xC000000000000001;
  v12 = v2 & 0xFFFFFFFFFFFFFF8;
  v34 = result;
  v35 = v2 + 32;
  v33 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v10 != v9)
  {
    if (v11)
    {
      result = MEMORY[0x26D67DB30](v10, *(v32 + 40));
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_30;
      }

      result = *(v35 + 8 * v10);
    }

    v13 = result;
    if (__OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    if ((v5 & 1) != 0 || !*(v7 + 16))
    {
LABEL_20:
      sub_26B6EA1F4();
      v26 = *(v36 + 16);
      sub_26B6EA224();
      sub_26B6EA234();
      result = sub_26B6EA204();
    }

    else
    {
      v15 = v11;
      v16 = v5;
      v18 = *&result[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
      v17 = *&result[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8];
      v19 = *(v7 + 40);
      sub_26B6EA714();

      sub_26B6E9AE4();
      v20 = sub_26B6EA744();
      v21 = ~(-1 << *(v7 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v7 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(v7 + 48) + 16 * v22);
        if (*v23 != v18 || v23[1] != v17)
        {
          v25 = sub_26B6EA5D4();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        v5 = v16;
        v11 = v15;
        v12 = v33;
        v9 = v34;
        goto LABEL_20;
      }

      v5 = v16;
      v11 = v15;
      v12 = v33;
      v9 = v34;
    }
  }

  v27 = *(v32 + 48);

  v28 = sub_26B6E95A4();
  v29 = sub_26B6E9E64();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_41_0();
    *v30 = 134217984;
    *(v30 + 4) = sub_26B6B8B04(v36);

    _os_log_impl(&dword_26B630000, v28, v29, "scoreboard stream publishing %ld filtered events", v30, 0xCu);
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }

  **(v32 + 16) = v36;
  OUTLINED_FUNCTION_16_5();

  return v31();
}

uint64_t sub_26B686A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v4[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26B686AC0, 0, 0);
}

uint64_t sub_26B686AC0()
{
  OUTLINED_FUNCTION_4_9();
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_26B686B74;
  v3 = *(v0 + 64);

  return sub_26B686E24();
}

uint64_t sub_26B686B74()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  *(v3 + 80) = v7;

  if (!v0)
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B686C80(uint64_t a1)
{
  if (*(v1 + 80))
  {
    return OUTLINED_FUNCTION_11_8(a1, *(v1 + 48));
  }

  **(v1 + 40) = MEMORY[0x277D84F90];
  return OUTLINED_FUNCTION_7_8();
}

uint64_t sub_26B686CB0()
{
  OUTLINED_FUNCTION_4_9();
  v2 = v0[6];
  v1 = v0[7];
  v0[11] = sub_26B687E08();
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B686D14()
{
  OUTLINED_FUNCTION_4_9();
  v1 = v0[6];
  if (v0[11])
  {
    v2 = v0[11];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v0[12] = sub_26B688E80(v2);

  return MEMORY[0x2822009F8](sub_26B686D9C, v1, 0);
}

uint64_t sub_26B686D9C()
{
  OUTLINED_FUNCTION_4_9();
  v1 = *(v0 + 48);
  sub_26B687E90(*(v0 + 96));

  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26B686E44()
{
  OUTLINED_FUNCTION_18_6();
  v1 = v0[9];
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2D0, &qword_26B6F2640);
  v0[11] = sub_26B6EA264();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2B8, &qword_26B6F2628);
  v3 = sub_26B689EC8(&qword_2810CC298, &qword_28040A2B8, &qword_26B6F2628);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_26B686F64;

  return MEMORY[0x282200308](v0 + 7, v2, v3);
}

uint64_t sub_26B686F64()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    (*(v3 + 88))();
  }

  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B687078()
{
  OUTLINED_FUNCTION_18_6();
  v1 = v0[7];
  v0[14] = v1;
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v0[6] = v1;
    v4 = sub_26B6EA274();
    v0[15] = v5;
    v10 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_26B687238;

    return (v10)(v0 + 8, v0 + 6);
  }

  else
  {
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_26B6871CC()
{
  OUTLINED_FUNCTION_4_9();
  (*(v0 + 88))();
  OUTLINED_FUNCTION_16_5();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_26B687238()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v3 = v2;
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  *v3 = *v0;

  v2[17] = v1[8];
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B6873A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B6E9594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  if (qword_2810CE9F8 != -1)
  {
    swift_once();
  }

  v11 = sub_26B6E95C4();
  __swift_project_value_buffer(v11, qword_2810D4320);
  v12 = sub_26B6E95A4();
  v13 = sub_26B6E9E64();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26B630000, v12, v13, "scoreboard stream terminated", v14, 2u);
    MEMORY[0x26D67E950](v14, -1, -1);
  }

  v15 = sub_26B6E9D44();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
  (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a1;
  (*(v5 + 32))(&v17[v16], &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_26B687690(0, 0, v10, &unk_26B6F2828, v17);
}

uint64_t sub_26B687618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26B687638, a4, 0);
}

uint64_t sub_26B687638()
{
  OUTLINED_FUNCTION_4_9();
  v1 = *(v0 + 16);
  sub_26B687B6C(*(v0 + 24));
  OUTLINED_FUNCTION_16_5();

  return v2();
}

uint64_t sub_26B687690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_26B689C6C(a3, v26 - v11);
  v13 = sub_26B6E9D44();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_26B689CDC(v12);
  }

  else
  {
    sub_26B6E9D34();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26B6E9D14();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26B6E9AA4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26B689CDC(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26B689CDC(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26B687934(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_26B6E9594();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_5();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v13 = sub_26B6E95C4();
  __swift_project_value_buffer(v13, qword_2810D4320);
  (*(v10 + 16))(v3, a2, v7);
  v14 = sub_26B6E95A4();
  v15 = sub_26B6E9E64();
  if (os_log_type_enabled(v14, v15))
  {
    v31 = a2;
    v16 = OUTLINED_FUNCTION_41_0();
    v17 = OUTLINED_FUNCTION_39_2();
    v34 = v17;
    *v16 = 136315138;
    v18 = sub_26B6E9574();
    v32 = a1;
    v20 = v19;
    v21 = OUTLINED_FUNCTION_10_7();
    v22(v21);
    v23 = sub_26B6D22D8(v18, v20, &v34);
    a1 = v32;

    *(v16 + 4) = v23;
    OUTLINED_FUNCTION_30_3(&dword_26B630000, v24, v25, "updating demand for stream with identifier:%s");
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_3_4();
    a2 = v31;
    OUTLINED_FUNCTION_3_4();
  }

  else
  {

    v26 = OUTLINED_FUNCTION_10_7();
    v27(v26);
  }

  OUTLINED_FUNCTION_29_3();

  v28 = *(v4 + 136);
  swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v4 + 136);
  sub_26B67DE78(a1, a2);
  *(v4 + 136) = v33;
  swift_endAccess();
  v29 = sub_26B688E80(a1);
  sub_26B687E90(v29);
}

void sub_26B687B6C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_26B6E9594();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_5();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v11 = sub_26B6E95C4();
  __swift_project_value_buffer(v11, qword_2810D4320);
  (*(v8 + 16))(v2, a1, v5);
  v12 = sub_26B6E95A4();
  v13 = sub_26B6E9E64();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_41_0();
    v15 = OUTLINED_FUNCTION_39_2();
    v31 = v15;
    *v14 = 136315138;
    v16 = sub_26B6E9574();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_10_7();
    v20(v19);
    v21 = sub_26B6D22D8(v16, v18, &v31);

    *(v14 + 4) = v21;
    OUTLINED_FUNCTION_30_3(&dword_26B630000, v22, v23, "removing stream with identifier:%s");
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_10_7();
    v25(v24);
  }

  OUTLINED_FUNCTION_29_3();
  sub_26B676204();
  swift_endAccess();

  if (!*(*(v3 + 136) + 16))
  {
    v26 = sub_26B6E95A4();
    v27 = sub_26B6E9E64();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26B630000, v26, v27, "no remaining scoreboard streams are active. Tearing down scoreboard file monitor", v28, 2u);
      OUTLINED_FUNCTION_3_4();
    }

    v29 = *(v3 + 120);
    os_unfair_lock_lock((v29 + 24));
    v30 = *(v29 + 16);

    *(v29 + 16) = 0;
    os_unfair_lock_unlock((v29 + 24));
  }
}

uint64_t sub_26B687E08()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_26B67552C();
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_26B687E90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  v4 = OUTLINED_FUNCTION_46(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  if (*(v1 + 128))
  {
    v9 = *(v1 + 128);

    sub_26B6E9D94();
  }

  v10 = sub_26B6E9D44();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  v12 = sub_26B689F10(&unk_2810CD5E8, v11, type metadata accessor for SportsScoreboardStream);
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = v12;
  v13[4] = v1;
  v13[5] = a1;
  swift_retain_n();

  v14 = sub_26B687690(0, 0, v8, &unk_26B6F27F0, v13);
  v15 = *(v1 + 128);
  *(v1 + 128) = v14;
}

uint64_t sub_26B688004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_26B688024, a4, 0);
}

uint64_t sub_26B688024()
{
  OUTLINED_FUNCTION_18_6();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = sub_26B6E95C4();
  __swift_project_value_buffer(v1, qword_2810D4320);
  v2 = sub_26B6E95A4();
  v3 = sub_26B6E9E64();
  if (OUTLINED_FUNCTION_25_3(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_32_3(&dword_26B630000, v4, v5, "debouncing new demand signal for 1 second...");
    OUTLINED_FUNCTION_3_4();
  }

  v6 = *(MEMORY[0x277D857E8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_26B688140;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_26B688140()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    v9 = v3[2];

    return MEMORY[0x2822009F8](sub_26B68837C, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[6] = v10;
    *v10 = v7;
    v10[1] = sub_26B68829C;
    v11 = v3[2];
    v12 = v3[3];

    return sub_26B688450(v12);
  }
}

uint64_t sub_26B68829C()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;

  OUTLINED_FUNCTION_16_5();

  return v5();
}

uint64_t sub_26B68837C()
{
  OUTLINED_FUNCTION_4_9();
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E8, &qword_26B6F2810);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_26B6EBA50;
  *(v2 + 56) = v3;
  strcpy((v2 + 32), "debounced...");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  sub_26B6EA704();

  OUTLINED_FUNCTION_16_5();

  return v4();
}

uint64_t sub_26B688450(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_11_8(a1, v1);
}

uint64_t sub_26B688468()
{
  OUTLINED_FUNCTION_13_7();
  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = sub_26B6E95C4();
  v0[8] = v1;
  __swift_project_value_buffer(v1, qword_2810D4320);
  v2 = sub_26B6E95A4();
  v3 = sub_26B6E9E64();
  if (OUTLINED_FUNCTION_25_3(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_32_3(&dword_26B630000, v4, v5, "passing demand to sportsd");
    OUTLINED_FUNCTION_3_4();
  }

  v6 = v0[6];
  v7 = v0[7];

  v8 = *(*(v7 + 112) + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E10, &qword_26B6F1460);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v13 = sub_26B675164(v12);
  v14 = *(v13 + qword_2810D4248);
  v0[9] = *(v13 + qword_2810D4248 + 8);

  v15 = swift_allocObject();
  v0[10] = v15;
  *(v15 + 16) = v6;

  v19 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_26B688684;

  return v19(&unk_26B6F27C0, v15);
}

uint64_t sub_26B688684()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_8();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = v3[7];

    return MEMORY[0x2822009F8](sub_26B6887B0, v9, 0);
  }

  else
  {
    v10 = v3[9];
    v11 = v3[10];

    OUTLINED_FUNCTION_16_5();

    return v12();
  }
}

uint64_t sub_26B6887B0()
{
  v22 = v0;
  v2 = v0[9];
  v1 = v0[10];

  if (qword_2810CD798 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  __swift_project_value_buffer(v0[8], qword_2810D4250);
  v4 = v3;
  v5 = sub_26B6E95A4();
  v6 = sub_26B6E9E74();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_41_0();
    v10 = OUTLINED_FUNCTION_39_2();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_26B6EA6B4();
    v16 = sub_26B6D22D8(v14, v15, &v21);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_27_3(&dword_26B630000, v17, v18, "signaling demand over xpc encountered an error: %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_5();

  return v19();
}

uint64_t sub_26B688948(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 176) = a2;
  *(v2 + 184) = v3;
  return MEMORY[0x2822009F8](sub_26B68896C, 0, 0);
}

uint64_t sub_26B68896C()
{
  OUTLINED_FUNCTION_13_7();
  v2 = v0[22];
  v1 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
  v3 = sub_26B6E9914();
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_26B688AC0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2D8, &unk_26B6F27D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26B688DA0;
  v0[13] = &block_descriptor_4;
  v0[14] = v4;
  [v1 signalWithDemand:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B688AC0()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  OUTLINED_FUNCTION_6_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_14_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B688BC0()
{
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_8_6();

  return v1();
}

uint64_t sub_26B688C18()
{
  v23 = v0;
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  if (qword_2810CE9F8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v3 = v0[25];
  v4 = sub_26B6E95C4();
  __swift_project_value_buffer(v4, qword_2810D4320);
  v5 = v3;
  v6 = sub_26B6E95A4();
  v7 = sub_26B6E9E74();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[25];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_41_0();
    v11 = OUTLINED_FUNCTION_39_2();
    v22 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[20];
    v15 = sub_26B6EA6B4();
    v17 = sub_26B6D22D8(v15, v16, &v22);

    *(v10 + 4) = v17;
    OUTLINED_FUNCTION_27_3(&dword_26B630000, v18, v19, "signaling demand encountered an error: %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_6();

  return v20();
}

uint64_t sub_26B688DA0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_26B688E10(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_26B688E10(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409EE0, &qword_26B6F17B8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_26B688E80(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = (a1 + 40);
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(v4 - 1);
    if (!*v4)
    {
      v17 = *(v4 - 1);
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_23_3();
      OUTLINED_FUNCTION_19_2();
      if (__OFADD__(v18, v19))
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_33_4();
      if (OUTLINED_FUNCTION_26_4())
      {
        v20 = OUTLINED_FUNCTION_23_3();
        if ((v2 & 1) != (v21 & 1))
        {
          goto LABEL_41;
        }

        v1 = v20;
      }

      if ((v2 & 1) == 0)
      {
        OUTLINED_FUNCTION_9_6(v5 + 8 * (v1 >> 6));
        v33 = (v32 + 16 * v1);
        *v33 = 0x7365756761656CLL;
        OUTLINED_FUNCTION_28_4(v33);
        v34 = *(v5 + 16);
        v15 = __OFADD__(v34, 1);
        v16 = v34 + 1;
        if (v15)
        {
          goto LABEL_40;
        }

LABEL_30:
        *(v5 + 16) = v16;
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (*v4 == 1)
    {
      break;
    }

    LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
    sub_26B675324();
    OUTLINED_FUNCTION_19_2();
    if (__OFADD__(v25, v26))
    {
      goto LABEL_36;
    }

    v27 = v23;
    v1 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2F0, &qword_26B6F2818);
    if (sub_26B6EA2E4())
    {
      v28 = sub_26B675324();
      if ((v1 & 1) != (v29 & 1))
      {
        goto LABEL_41;
      }

      v27 = v28;
    }

    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_6(v5 + 8 * (v27 >> 6));
      v36 = (v35 + 16 * v27);
      *v36 = 7105633;
      v36[1] = 0xE300000000000000;
      *(*(v5 + 56) + 8 * v27) = MEMORY[0x277D84FA0];
      v37 = *(v5 + 16);
      v15 = __OFADD__(v37, 1);
      v16 = v37 + 1;
      if (v15)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    v30 = *(v5 + 56);
    v31 = *(v30 + 8 * v27);
    *(v30 + 8 * v27) = MEMORY[0x277D84FA0];
LABEL_25:

LABEL_31:
    v4 += 16;
    if (!--v3)
    {
      return v5;
    }
  }

  v7 = *(v4 - 1);
  swift_bridgeObjectRetain_n();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_19_2();
  if (!__OFADD__(v8, v9))
  {
    OUTLINED_FUNCTION_33_4();
    if (OUTLINED_FUNCTION_26_4())
    {
      v10 = OUTLINED_FUNCTION_31_3();
      if ((v2 & 1) != (v11 & 1))
      {
        goto LABEL_41;
      }

      v1 = v10;
    }

    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_6(v5 + 8 * (v1 >> 6));
      v13 = (v12 + 16 * v1);
      *v13 = 0x73746E657665;
      OUTLINED_FUNCTION_28_4(v13);
      v14 = *(v5 + 16);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_39;
      }

      goto LABEL_30;
    }

LABEL_18:
    v22 = *(v5 + 56);
    v2 = *(v22 + 8 * v1);
    *(v22 + 8 * v1) = v6;

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_26B6EA674();
  __break(1u);
  return result;
}

uint64_t sub_26B689188(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 40;
  v5 = MEMORY[0x277D84FA0];
  v6 = MEMORY[0x277D84FA0];
LABEL_2:
  v7 = (v4 + 16 * v1);
  for (i = v1; ; ++i)
  {
    if (v3 == i)
    {
      return v2 & 1;
    }

    if (i >= v3)
    {
      break;
    }

    v1 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_13;
    }

    result = *(v7 - 1);
    if (*v7)
    {
      if (*v7 == 1)
      {

        result = sub_26B64D7FC(v10, v5);
        v5 = result;
      }

      else
      {
        v2 = 1;
      }

      goto LABEL_2;
    }

    result = sub_26B64D7FC(v9, v6);
    v6 = result;
    v7 += 16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *SportsScoreboardStream.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SportsScoreboardStream.__deallocating_deinit()
{
  SportsScoreboardStream.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B6892EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B6893E4;

  return v7(a1);
}

uint64_t sub_26B6893E4()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;

  OUTLINED_FUNCTION_8_6();

  return v5();
}

uint64_t sub_26B6894C4()
{
  OUTLINED_FUNCTION_13_7();
  v2 = v1;
  v4 = v3;
  v5 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_11(v9);
  *v10 = v11;
  v10[1] = sub_26B689F58;

  return sub_26B6865A8(v4, v2, v8, v0 + v7);
}

uint64_t sub_26B6895A8()
{
  OUTLINED_FUNCTION_13_7();
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_11(v6);
  *v7 = v8;
  v7[1] = sub_26B689F58;
  v9 = OUTLINED_FUNCTION_5_7();

  return sub_26B686A4C(v9, v10, v5, v11);
}

uint64_t objectdestroyTm()
{
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_20_3();
  v8(v7);
  v9 = OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_26B689728()
{
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_26B6873A0(v3, v4);
}

uint64_t dispatch thunk of SportsScoreboardStream.stream(demand:)()
{
  OUTLINED_FUNCTION_13_7();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*v0 + 176);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_11(v9);
  *v10 = v11;
  v10[1] = sub_26B6898F4;

  return v13(v6, v4, v2);
}

uint64_t sub_26B6898F4()
{
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_6();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;

  OUTLINED_FUNCTION_16_5();

  return v5();
}

uint64_t get_enum_tag_for_layout_string_9SportsKit0A16ScoreboardStreamC6DemandO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_26B689A24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B689A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26B689AC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B689AE0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_26B689B10()
{
  OUTLINED_FUNCTION_4_9();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26B689F58;

  return sub_26B688948(v3, v4);
}

uint64_t sub_26B689BC0()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_11(v5);
  *v6 = v7;
  v6[1] = sub_26B6898F4;
  v8 = OUTLINED_FUNCTION_5_7();

  return sub_26B688004(v8, v9, v2, v4, v3);
}

uint64_t sub_26B689C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B689CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2E0, &qword_26B6F27E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B689D44()
{
  OUTLINED_FUNCTION_18_6();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_11(v3);
  *v4 = v5;
  v4[1] = sub_26B689F58;
  v6 = OUTLINED_FUNCTION_5_7();

  return v7(v6);
}

uint64_t sub_26B689DE8()
{
  OUTLINED_FUNCTION_13_7();
  v1 = sub_26B6E9594();
  OUTLINED_FUNCTION_46(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_11(v7);
  *v8 = v9;
  v8[1] = sub_26B689F58;
  v10 = OUTLINED_FUNCTION_5_7();

  return sub_26B687618(v10, v11, v5, v6, v12);
}

uint64_t sub_26B689EC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B689F10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_26B675324();
}

BOOL OUTLINED_FUNCTION_25_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_26B6EA2E4();
}

void OUTLINED_FUNCTION_27_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28_4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(*(v2 + 56) + 8 * v4) = v3;
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_30_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

unint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_26B675324();
}

void OUTLINED_FUNCTION_32_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return swift_task_alloc();
}

uint64_t sub_26B68A2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804092A0, &qword_26B6F2850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B68A310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804092A0, &qword_26B6F2850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B68A378()
{
  result = qword_28040A310;
  if (!qword_28040A310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28040A310);
  }

  return result;
}

id SportingEventCompetitorStatistic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26B68A450(uint64_t a1)
{
  v2 = sub_26B68A634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68A48C(uint64_t a1)
{
  v2 = sub_26B68A634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68A4EC()
{
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A318, &qword_26B6F2858);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  sub_26B68A634();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_4(OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_value);
  if (!v0)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_statisticType);
    OUTLINED_FUNCTION_36_4();
    type metadata accessor for SportingEventCompetitorStatisticType();
    OUTLINED_FUNCTION_5_8();
    sub_26B68B7BC(v6, v7);
    OUTLINED_FUNCTION_18_7();
  }

  v8 = OUTLINED_FUNCTION_21_2();
  return v9(v8);
}

unint64_t sub_26B68A634()
{
  result = qword_28040A320;
  if (!qword_28040A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A320);
  }

  return result;
}

void SportingEventCompetitorStatistic.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_14_7();
  v0 = OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorStatistic.init(from:)(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void SportingEventCompetitorStatistic.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A330, &qword_26B6F2860);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B68A634();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    type metadata accessor for SportingEventCompetitorStatistic();
    OUTLINED_FUNCTION_7_9();
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA444();
    *&v12[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_value] = v17;
    type metadata accessor for SportingEventCompetitorStatisticType();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_5_8();
    sub_26B68B7BC(v18, v19);
    OUTLINED_FUNCTION_17_4();
    *&v12[OBJC_IVAR____TtC9SportsKit32SportingEventCompetitorStatistic_statisticType] = a10;
    v22.receiver = v12;
    v22.super_class = type metadata accessor for SportingEventCompetitorStatistic();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B68A874(void *a1@<X8>)
{
  SportingEventCompetitorStatistic.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B68A940(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void *a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v9 = a1;
  }

  v10 = sub_26B68B950(v12, a4, a5);

  sub_26B68A310(v12);
  return v10 & 1;
}

SportsKit::SportingEventCompetitorStatisticType::StatisticName_optional __swiftcall SportingEventCompetitorStatisticType.StatisticName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  v2 = sub_26B6EA394();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void SportingEventCompetitorStatisticType.StatisticName.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      return;
  }
}

uint64_t sub_26B68AAFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26B646498();
}

void sub_26B68AB2C(void *a1@<X8>)
{
  SportingEventCompetitorStatisticType.StatisticName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B68AC50(uint64_t a1)
{
  v2 = sub_26B68ADDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68AC8C(uint64_t a1)
{
  v2 = sub_26B68ADDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68ACEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A348, &qword_26B6F2868);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  sub_26B68ADDC();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_29_4(OBJC_IVAR____TtC9SportsKit36SportingEventCompetitorStatisticType_name);
  v4 = OUTLINED_FUNCTION_38_2();
  return v5(v4);
}

unint64_t sub_26B68ADDC()
{
  result = qword_28040A350;
  if (!qword_28040A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A350);
  }

  return result;
}

void SportingEventCompetitorStatisticType.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorStatisticType.init(from:)();
}

void SportingEventCompetitorStatisticType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A358, &qword_26B6F2870);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B68ADDC();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventCompetitorStatisticType();
    OUTLINED_FUNCTION_7_9();
  }

  else
  {
    v7 = sub_26B6EA424();
    v8 = &v2[OBJC_IVAR____TtC9SportsKit36SportingEventCompetitorStatisticType_name];
    *v8 = v7;
    v8[1] = v9;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for SportingEventCompetitorStatisticType();
    objc_msgSendSuper2(&v12, sel_init);
    v10 = OUTLINED_FUNCTION_13_3();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B68AFAC(void *a1@<X8>)
{
  SportingEventCompetitorStatisticType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id sub_26B68B084(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), double a5)
{
  *&v5[*a2] = a5;
  *&v5[*a3] = a1;
  v7.receiver = v5;
  v7.super_class = a4();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_26B68B0F0(uint64_t a1, void (*a2)(uint64_t), void *a3, uint64_t *a4)
{
  v8 = sub_26B68A2A0(a1, v15);
  if (!v16)
  {
    sub_26B68A310(v15);
    goto LABEL_7;
  }

  a2(v8);
  if ((OUTLINED_FUNCTION_19_3() & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    return v12 & 1;
  }

  if (*(v4 + *a3) != *&v14[*a3])
  {

    goto LABEL_7;
  }

  sub_26B68A378();
  v9 = *a4;
  v10 = *(v4 + *a4);
  v11 = *&v14[v9];
  v12 = sub_26B6E9FA4();

  return v12 & 1;
}

uint64_t sub_26B68B1F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void *a5, uint64_t *a6)
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v11 = a1;
  }

  v12 = sub_26B68B0F0(v14, a4, a5, a6);

  sub_26B68A310(v14);
  return v12 & 1;
}

uint64_t sub_26B68B2CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xED00006570795463)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B68B398(uint64_t a1)
{
  v2 = sub_26B68B57C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68B3D4(uint64_t a1)
{
  v2 = sub_26B68B57C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68B434()
{
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A370, &qword_26B6F2878);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  sub_26B68B57C();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_4(OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_value);
  if (!v0)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType);
    OUTLINED_FUNCTION_36_4();
    type metadata accessor for SportingEventParticipantStatisticType();
    OUTLINED_FUNCTION_6_9();
    sub_26B68B7BC(v6, v7);
    OUTLINED_FUNCTION_18_7();
  }

  v8 = OUTLINED_FUNCTION_21_2();
  return v9(v8);
}

unint64_t sub_26B68B57C()
{
  result = qword_28040A378;
  if (!qword_28040A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A378);
  }

  return result;
}

void SportingEventParticipantStatistic.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_14_7();
  v0 = OUTLINED_FUNCTION_4_10();
  SportingEventParticipantStatistic.init(from:)(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void SportingEventParticipantStatistic.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A388, &qword_26B6F2880);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B68B57C();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    type metadata accessor for SportingEventParticipantStatistic();
    OUTLINED_FUNCTION_7_9();
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA444();
    *&v12[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_value] = v17;
    type metadata accessor for SportingEventParticipantStatisticType();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_6_9();
    sub_26B68B7BC(v18, v19);
    OUTLINED_FUNCTION_17_4();
    *&v12[OBJC_IVAR____TtC9SportsKit33SportingEventParticipantStatistic_statisticType] = a10;
    v22.receiver = v12;
    v22.super_class = type metadata accessor for SportingEventParticipantStatistic();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B68B7BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26B68B800(void *a1@<X8>)
{
  SportingEventParticipantStatistic.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id sub_26B68B88C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[*a3];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_26B68B90C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = &v4[*a3];
  *v5 = a1;
  *(v5 + 1) = a2;
  v7.receiver = v4;
  v7.super_class = a4();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_26B68B950(uint64_t a1, void (*a2)(uint64_t), void *a3)
{
  v6 = sub_26B68A2A0(a1, v13);
  if (!v14)
  {
    sub_26B68A310(v13);
    goto LABEL_9;
  }

  a2(v6);
  if ((OUTLINED_FUNCTION_19_3() & 1) == 0)
  {
LABEL_9:
    v10 = 0;
    return v10 & 1;
  }

  v7 = (v3 + *a3);
  v8 = &v12[*a3];
  if (*v7 == *v8 && v7[1] == *(v8 + 1))
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_26B6EA5D4();
  }

  return v10 & 1;
}

SportsKit::SportingEventParticipantStatisticType::StatisticName_optional __swiftcall SportingEventParticipantStatisticType.StatisticName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  v2 = sub_26B6EA394();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void SportingEventParticipantStatisticType.StatisticName.rawValue.getter()
{
  switch(*v0)
  {
    case 3:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      return;
  }
}

void sub_26B68BB88(void *a1@<X8>)
{
  SportingEventParticipantStatisticType.StatisticName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B68BBE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B68BC60(uint64_t a1)
{
  v2 = sub_26B68BDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68BC9C(uint64_t a1)
{
  v2 = sub_26B68BDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B68BCFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3A0, &qword_26B6F2888);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  sub_26B68BDEC();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_29_4(OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name);
  v4 = OUTLINED_FUNCTION_38_2();
  return v5(v4);
}

unint64_t sub_26B68BDEC()
{
  result = qword_28040A3A8;
  if (!qword_28040A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3A8);
  }

  return result;
}

void SportingEventParticipantStatisticType.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4_10();
  SportingEventParticipantStatisticType.init(from:)();
}

void SportingEventParticipantStatisticType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3B0, &qword_26B6F2890);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B68BDEC();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventParticipantStatisticType();
    OUTLINED_FUNCTION_7_9();
  }

  else
  {
    v7 = sub_26B6EA424();
    v8 = &v2[OBJC_IVAR____TtC9SportsKit37SportingEventParticipantStatisticType_name];
    *v8 = v7;
    v8[1] = v9;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for SportingEventParticipantStatisticType();
    objc_msgSendSuper2(&v12, sel_init);
    v10 = OUTLINED_FUNCTION_13_3();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B68BFBC(void *a1@<X8>)
{
  SportingEventParticipantStatisticType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id SportingEventCompetitorScoreStatisticType.init(name:isUpdated:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated;
  v3[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated] = 2;
  v5 = &v3[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name];
  *v5 = a1;
  v5[1] = a2;
  v3[v4] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for SportingEventCompetitorScoreStatisticType();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_26B68C124(uint64_t a1)
{
  sub_26B68A2A0(a1, v9);
  if (!v10)
  {
    sub_26B68A310(v9);
    goto LABEL_17;
  }

  type metadata accessor for SportingEventCompetitorScoreStatisticType();
  if ((OUTLINED_FUNCTION_19_3() & 1) == 0)
  {
LABEL_17:
    v5 = 0;
    return v5 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name) == *&v8[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name] && *(v1 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name + 8) == *&v8[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name + 8];
  if (!v2 && (sub_26B6EA5D4() & 1) == 0)
  {

    goto LABEL_17;
  }

  v3 = *(v1 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated);
  v4 = v8[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated];

  v5 = v4 == 2 && v3 == 2;
  if (v3 != 2 && v4 != 2)
  {
    v5 = v4 ^ v3 ^ 1;
  }

  return v5 & 1;
}

SportsKit::SportingEventCompetitorScoreStatisticType::StatisticName_optional __swiftcall SportingEventCompetitorScoreStatisticType.StatisticName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  v2 = sub_26B6EA394();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventCompetitorScoreStatisticType.StatisticName.rawValue.getter()
{
  result = 0x65726F6353;
  switch(*v0)
  {
    case 1:
      result = 1936618834;
      break;
    case 2:
      result = 1937008968;
      break;
    case 3:
      result = 0x73726F727245;
      break;
    case 4:
      result = 0x73656B69727453;
      break;
    case 5:
      result = 0x736C6C6142;
      break;
    case 6:
      result = 1937012047;
      break;
    case 7:
      result = 0x74756F746F6F6853;
      break;
    case 8:
      result = 0x736C616F47;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B68C3CC@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorScoreStatisticType.StatisticName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B68C4DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B68C5AC(char a1)
{
  if (a1)
  {
    return 0x6574616470557369;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26B68C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B68C4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B68C610(uint64_t a1)
{
  v2 = sub_26B68C83C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B68C64C(uint64_t a1)
{
  v2 = sub_26B68C83C();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_26B68C6A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26B68C6E4()
{
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3C8, &qword_26B6F2898);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  sub_26B68C83C();
  OUTLINED_FUNCTION_49_0();
  v6 = *(v0 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name);
  v7 = *(v0 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name + 8);
  sub_26B6EA4F4();
  if (!v1)
  {
    v11 = *(v0 + OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3D0, &qword_26B6F28A0);
    sub_26B68C890();
    OUTLINED_FUNCTION_18_7();
  }

  v8 = OUTLINED_FUNCTION_21_2();
  return v9(v8);
}

unint64_t sub_26B68C83C()
{
  result = qword_2810CDD30;
  if (!qword_2810CDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD30);
  }

  return result;
}

unint64_t sub_26B68C890()
{
  result = qword_2810CE508;
  if (!qword_2810CE508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A3D0, &qword_26B6F28A0);
    sub_26B68C914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE508);
  }

  return result;
}

unint64_t sub_26B68C914()
{
  result = qword_2810CDBD0;
  if (!qword_2810CDBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A3D8, &qword_26B6F37E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBD0);
  }

  return result;
}

void SportingEventCompetitorScoreStatisticType.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorScoreStatisticType.init(from:)();
}

void SportingEventCompetitorScoreStatisticType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2A0, &qword_26B6F2610);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_1();
  v8 = OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated;
  v0[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType__isUpdated] = 2;
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B68C83C();
  OUTLINED_FUNCTION_12_7();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for SportingEventCompetitorScoreStatisticType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_20_4();
    v10 = sub_26B6EA424();
    v11 = &v0[OBJC_IVAR____TtC9SportsKit41SportingEventCompetitorScoreStatisticType_name];
    *v11 = v10;
    v11[1] = v12;
    OUTLINED_FUNCTION_20_4();
    v0[v8] = sub_26B67FA38(v13);
    v16.receiver = v0;
    v16.super_class = type metadata accessor for SportingEventCompetitorScoreStatisticType();
    objc_msgSendSuper2(&v16, sel_init);
    v14 = OUTLINED_FUNCTION_22_6();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_37();
}

unint64_t sub_26B68CB90()
{
  result = qword_28040A3E0;
  if (!qword_28040A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3E0);
  }

  return result;
}

unint64_t sub_26B68CBE8()
{
  result = qword_28040A3E8;
  if (!qword_28040A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3E8);
  }

  return result;
}

unint64_t sub_26B68CC40()
{
  result = qword_28040A3F0;
  if (!qword_28040A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3F0);
  }

  return result;
}

void sub_26B68CC94(void *a1@<X8>)
{
  SportingEventCompetitorScoreStatisticType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t dispatch thunk of SportingEventCompetitorStatistic.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of SportingEventCompetitorStatisticType.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 96))();
}

_BYTE *storeEnumTagSinglePayload for SportingEventCompetitorStatisticType.StatisticName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SportingEventParticipantStatistic.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of SportingEventParticipantStatisticType.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 96))();
}

_BYTE *storeEnumTagSinglePayload for SportingEventParticipantStatisticType.StatisticName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SportingEventCompetitorScoreStatisticType.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 128))();
}

_BYTE *storeEnumTagSinglePayload for SportingEventCompetitorScoreStatisticType.StatisticName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B68D2C8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_26B68D374(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B68D454()
{
  result = qword_28040A3F8;
  if (!qword_28040A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A3F8);
  }

  return result;
}

unint64_t sub_26B68D4AC()
{
  result = qword_28040A400;
  if (!qword_28040A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A400);
  }

  return result;
}

unint64_t sub_26B68D504()
{
  result = qword_28040A408;
  if (!qword_28040A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A408);
  }

  return result;
}

unint64_t sub_26B68D55C()
{
  result = qword_28040A410;
  if (!qword_28040A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A410);
  }

  return result;
}

unint64_t sub_26B68D5B4()
{
  result = qword_28040A418;
  if (!qword_28040A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A418);
  }

  return result;
}

unint64_t sub_26B68D60C()
{
  result = qword_2810CDD20;
  if (!qword_2810CDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD20);
  }

  return result;
}

unint64_t sub_26B68D664()
{
  result = qword_2810CDD28;
  if (!qword_2810CDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD28);
  }

  return result;
}

unint64_t sub_26B68D6BC()
{
  result = qword_28040A420;
  if (!qword_28040A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A420);
  }

  return result;
}

unint64_t sub_26B68D714()
{
  result = qword_28040A428;
  if (!qword_28040A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A428);
  }

  return result;
}

unint64_t sub_26B68D76C()
{
  result = qword_28040A430;
  if (!qword_28040A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A430);
  }

  return result;
}

unint64_t sub_26B68D7C4()
{
  result = qword_28040A438;
  if (!qword_28040A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A438);
  }

  return result;
}

unint64_t sub_26B68D81C()
{
  result = qword_28040A440;
  if (!qword_28040A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A440);
  }

  return result;
}

unint64_t sub_26B68D874()
{
  result = qword_28040A448;
  if (!qword_28040A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A448);
  }

  return result;
}

unint64_t sub_26B68D8CC()
{
  result = qword_28040A450;
  if (!qword_28040A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A450);
  }

  return result;
}

unint64_t sub_26B68D924()
{
  result = qword_28040A458;
  if (!qword_28040A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A458);
  }

  return result;
}

unint64_t sub_26B68D978()
{
  result = qword_28040A460;
  if (!qword_28040A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A460);
  }

  return result;
}

unint64_t sub_26B68D9CC()
{
  result = qword_28040A468;
  if (!qword_28040A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A468);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return sub_26B6EA784();
}

id OUTLINED_FUNCTION_14_7()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_26B6EA534();
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_25_4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  *(v2 - 65) = 0;

  return sub_26B6EA514();
}

uint64_t OUTLINED_FUNCTION_29_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_26B6EA4F4();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_26B6EA784();
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

char *sub_26B68DC8C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26B692974((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D67DB30](v3, a1);
  }

  result = sub_26B6EA324();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t PlaysStore.__allocating_init(storeUrl:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PlaysStore.init(storeUrl:)(a1);
  return v5;
}

uint64_t PlaysStore.init(storeUrl:)(uint64_t a1)
{
  v2 = v1;
  v22 = sub_26B6E9EA4();
  v3 = OUTLINED_FUNCTION_4(v22);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = sub_26B6E9E84();
  v12 = OUTLINED_FUNCTION_16(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  v15 = sub_26B6E98D4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_5_0();
  v21 = OBJC_IVAR____TtC9SportsKit10PlaysStore_queue;
  sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
  sub_26B6E98C4();
  sub_26B693620(&qword_2810CDBB0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A470, &qword_26B6FA190);
  sub_26B689EC8(&qword_2810CDBD8, &qword_28040A470, &qword_26B6FA190);
  sub_26B6EA0B4();
  (*(v5 + 104))(v10, *MEMORY[0x277D85260], v22);
  *(v1 + v21) = sub_26B6E9EE4();
  *(v1 + OBJC_IVAR____TtC9SportsKit10PlaysStore_cancellables) = MEMORY[0x277D84FA0];
  v17 = OBJC_IVAR____TtC9SportsKit10PlaysStore_storeUrl;
  v18 = sub_26B6E93B4();
  OUTLINED_FUNCTION_16(v18);
  (*(v19 + 32))(v2 + v17, a1);
  return v2;
}

void sub_26B68E00C()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v70 = *MEMORY[0x277D85DE8];
  v10 = sub_26B6E93B4();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  if (v9 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26B6EA324())
  {
    v65 = i;
    v66 = v9;
    *&v69 = v7;
    *(&v69 + 1) = v5;
    OUTLINED_FUNCTION_15_5();
    v67 = v23;
    v68 = v24;
    sub_26B641414();
    if (sub_26B6EA074())
    {
      if (qword_2810CE9F0 != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_5;
    }

    v56 = v3;
    sub_26B6E9344();
    v58 = v21;
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v30 = *(v13 + 8);
    v13 += 8;
    v59 = v13;
    v60 = v10;
    v57 = v30;
    v30(v18, v10);
    v31 = sub_26B6E90D4();
    OUTLINED_FUNCTION_11_9(v31);
    v9 = swift_allocObject();
    v32 = sub_26B6E90C4();
    v18 = 0;
    v33 = v66;
    v63 = v66 & 0xC000000000000001;
    v64 = v32;
    v62 = v66 & 0xFFFFFFFFFFFFFF8;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v65 == v18)
      {
        *&v69 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409BE8, &qword_26B6F00D0);
        sub_26B689EC8(&qword_2810CC2A8, &qword_280409BE8, &qword_26B6F00D0);
        v47 = sub_26B6E9994();
        v49 = v48;

        v51 = *(v56 + OBJC_IVAR____TtC9SportsKit10PlaysStore_queue);
        MEMORY[0x28223BE20](v50);
        *(&v56 - 4) = v47;
        *(&v56 - 3) = v49;
        v52 = v58;
        *(&v56 - 2) = v58;
        sub_26B6E9EC4();
        if (v2)
        {

          v53 = v60;
          goto LABEL_37;
        }

        v54 = v52;
        v53 = v60;
LABEL_38:
        v57(v54, v53);
        goto LABEL_39;
      }

      if (v63)
      {
        v34 = MEMORY[0x26D67DB30](v18);
      }

      else
      {
        if (v18 >= *(v62 + 16))
        {
          goto LABEL_42;
        }

        v34 = *(v33 + 8 * v18 + 32);
      }

      v7 = v34;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      *&v69 = v34;
      type metadata accessor for SportingEventPlay();
      OUTLINED_FUNCTION_5_9();
      sub_26B693620(&qword_2810CE450, v35);
      v9 = v64;
      v36 = sub_26B6E90B4();
      if (v2)
      {

        v53 = v60;
        v52 = v58;
LABEL_37:
        v54 = v52;
        goto LABEL_38;
      }

      v5 = v37;
      v13 = v36;
      switch(v37 >> 62)
      {
        case 1uLL:
          v61 = 0;
          v2 = v36 >> 32;
          if (v36 >> 32 < v36)
          {
            goto LABEL_43;
          }

          if (sub_26B6E91D4() && __OFSUB__(v13, sub_26B6E91F4()))
          {
            goto LABEL_48;
          }

          goto LABEL_27;
        case 2uLL:
          v61 = 0;
          v38 = *(v36 + 16);
          v2 = *(v36 + 24);
          v9 = v37 & 0x3FFFFFFFFFFFFFFFLL;
          v21 = sub_26B6E91D4();
          if (!v21)
          {
            goto LABEL_20;
          }

          v9 = v5 & 0x3FFFFFFFFFFFFFFFLL;
          v39 = sub_26B6E91F4();
          if (__OFSUB__(v38, v39))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            OUTLINED_FUNCTION_0_10();
            swift_once();
LABEL_5:
            v25 = sub_26B6E95C4();
            __swift_project_value_buffer(v25, qword_2810D4308);
            v26 = sub_26B6E95A4();
            v27 = sub_26B6E9E74();
            if (os_log_type_enabled(v26, v27))
            {
              OUTLINED_FUNCTION_28_5();
              *swift_slowAlloc() = 0;
              OUTLINED_FUNCTION_34_3(&dword_26B630000, v28, v29, "canonicalId cannot contain parental traversal string patterns");
              OUTLINED_FUNCTION_14_8();
              MEMORY[0x26D67E950]();
            }

            goto LABEL_39;
          }

          v21 += v38 - v39;
LABEL_20:
          v40 = __OFSUB__(v2, v38);
          v10 = v2 - v38;
          if (v40)
          {
            goto LABEL_44;
          }

LABEL_27:
          sub_26B6E91E4();
          v9 = sub_26B6E9AC4();
          v21 = v42;

          sub_26B645A94(v13, v5);
          v2 = v61;
LABEL_28:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = *(v3 + 16);
            sub_26B63A80C();
            v3 = v45;
          }

          v10 = *(v3 + 16);
          v5 = v10 + 1;
          if (v10 >= *(v3 + 24) >> 1)
          {
            sub_26B63A80C();
            v3 = v46;
          }

          *(v3 + 16) = v5;
          v43 = v3 + 16 * v10;
          *(v43 + 32) = v9;
          *(v43 + 40) = v21;
          ++v18;
          v33 = v66;
          break;
        case 3uLL:
          *(&v69 + 6) = 0;
          *&v69 = 0;
          goto LABEL_23;
        default:
          *&v69 = v36;
          WORD4(v69) = v37;
          BYTE10(v69) = BYTE2(v37);
          BYTE11(v69) = BYTE3(v37);
          BYTE12(v69) = BYTE4(v37);
          BYTE13(v69) = BYTE5(v37);
LABEL_23:
          v9 = sub_26B6E9AC4();
          v21 = v41;

          sub_26B645A94(v13, v5);
          goto LABEL_28;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_39:
  v55 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B68E69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B6E9A64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  sub_26B6E9A54();
  sub_26B641414();
  sub_26B6EA064();
  return (*(v5 + 8))(v8, v4);
}

void sub_26B68E7B4()
{
  OUTLINED_FUNCTION_38();
  v25[0] = v2;
  v25[1] = v3;
  v4 = sub_26B6E93B4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  v16 = sub_26B6E90D4();
  OUTLINED_FUNCTION_11_9(v16);
  swift_allocObject();
  sub_26B6E90C4();
  type metadata accessor for SportingEventPlay();
  OUTLINED_FUNCTION_5_9();
  sub_26B693620(v17, v18);
  v19 = sub_26B6E90B4();
  v21 = v20;

  if (!v1)
  {
    sub_26B6E9344();
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v22 = *(v7 + 8);
    v23 = v22(v12, v4);
    v24 = *(v0 + OBJC_IVAR____TtC9SportsKit10PlaysStore_queue);
    MEMORY[0x28223BE20](v23);
    v25[-4] = v15;
    v25[-3] = v19;
    v25[-2] = v21;
    sub_26B6E9EC4();
    sub_26B645A94(v19, v21);
    v22(v15, v4);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B68E9C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_26B6E9A64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B67826C(0, &qword_2810CC278, 0x277CCA9F8);
  sub_26B6E9384();
  v11 = sub_26B68ED04();
  if (!v11)
  {
    sub_26B6E9484();
    return;
  }

  v12 = v11;
  v29 = v7;
  v13 = sub_26B6ADC5C(a2, a3);
  if (v14)
  {
    goto LABEL_10;
  }

  v24 = a2;
  v25 = a3;
  sub_26B645A3C(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409308, &unk_26B6F3650);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_26B650BBC(v22, &qword_280409310, &qword_26B6ED010);
LABEL_9:
    v13 = sub_26B6AD08C(a2, a3);
LABEL_10:
    v16 = v13;
    v15 = v14;
    goto LABEL_11;
  }

  sub_26B645C80(v22, &v26);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  if ((sub_26B6EA374() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v26);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_26B6EA364();
  v15 = *(&v22[0] + 1);
  v16 = *&v22[0];
  __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_11:
  v26 = 10;
  v27 = 0xE100000000000000;
  MEMORY[0x26D67D4D0](v16, v15);

  sub_26B6E9E54();
  if (v3)
  {
  }

  else
  {
    sub_26B6E9A54();
    v17 = sub_26B6E9A34();
    v19 = v18;

    (*(v29 + 8))(v10, v6);
    if (v19 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    v21 = 0xC000000000000000;
    if (v19 >> 60 != 15)
    {
      v21 = v19;
    }

    v26 = v20;
    v27 = v21;
    sub_26B693BA8();
    sub_26B6E9E44();
    sub_26B645A94(v26, v27);
  }

  [v12 closeFile];
}

id sub_26B68ED04()
{
  v0 = sub_26B6E99F4();

  v1 = [swift_getObjCClassFromMetadata() fileHandleForWritingAtPath_];

  return v1;
}

uint64_t sub_26B68ED68(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v156 = a6;
  v150 = a5;
  LODWORD(v146) = a4;
  v142 = a3;
  v138 = sub_26B6E9104();
  v15 = OUTLINED_FUNCTION_4(v138);
  v137 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v136 = v20 - v19;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A478, &qword_26B6F3398) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_71();
  v139 = v23;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A480, &qword_26B6F33A0);
  OUTLINED_FUNCTION_4(v143);
  v141 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_71();
  v140 = v28;
  OUTLINED_FUNCTION_109_0();
  v148 = sub_26B6E9A64();
  v29 = OUTLINED_FUNCTION_4(v148);
  v135 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_30_0();
  v147 = (v33 - v34);
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v35);
  v145 = &v128 - v36;
  OUTLINED_FUNCTION_109_0();
  v151 = sub_26B6E93B4();
  v37 = OUTLINED_FUNCTION_4(v151);
  v149 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_0();
  v144 = v41 - v42;
  OUTLINED_FUNCTION_29_5();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v128 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v128 - v47;
  OUTLINED_FUNCTION_20_5();
  v49 = swift_allocObject();
  v49[2] = a7;
  v49[3] = a8;
  v49[4] = a9;
  v49[5] = a10;
  v152 = v49;
  v49[6] = a11;
  v157 = a1;
  v158 = a2;
  OUTLINED_FUNCTION_15_5();
  v159 = v50;
  v160 = v51;
  v52 = sub_26B641414();
  v154 = a8;

  v153 = a9;

  v155 = a10;

  v53 = a11;
  if ((sub_26B6EA074() & 1) == 0)
  {
    v133 = v52;
    v59 = v156;
    sub_26B6E9344();
    OUTLINED_FUNCTION_4_11();
    sub_26B6E9354();
    v60 = v149;
    v61 = v149 + 8;
    v62 = *(v149 + 8);
    v63 = v151;
    v62(v46, v151);
    v64 = [objc_opt_self() defaultManager];
    sub_26B6E9384();
    v65 = sub_26B6E99F4();

    v66 = [v64 fileExistsAtPath_];

    if (v66)
    {
      v130 = v62;
      v131 = v61;
      v67 = MEMORY[0x277D84F90];
      v68 = sub_26B6E9054();
      OUTLINED_FUNCTION_11_9(v68);
      swift_allocObject();
      v134 = sub_26B6E9044();
      v132 = v48;
      if (v146)
      {
        sub_26B6E9384();
        sub_26B6E9A54();
        v83 = sub_26B6E99E4();
        v85 = v84;
        v129 = v53;

        v157 = v83;
        v158 = v85;
        v86 = v136;
        sub_26B6E90F4();
        v53 = sub_26B6EA014();
        (*(v137 + 8))(v86, v138);

        v87 = *(v53 + 16);
        if (!v87)
        {
          v141 = 0;

          v94 = MEMORY[0x277D84F90];
LABEL_24:
          v157 = v67;
          v146 = sub_26B6542CC(v94);
          v145 = (v94 & 0xC000000000000001);
          v144 = v94 & 0xFFFFFFFFFFFFFF8;
          v142 = v94;
          v143 = v94 + 32;
          v148 = v150 + 32;
          swift_bridgeObjectRetain_n();
          v53 = 0;
          while (1)
          {
            if (v53 == v146)
            {

              swift_bridgeObjectRelease_n();
              v53 = v129;
              sub_26B63DE50(v129);

              OUTLINED_FUNCTION_7_10();
              v127();
              goto LABEL_10;
            }

            if (v145)
            {
              v110 = MEMORY[0x26D67DB30](v53, v142);
            }

            else
            {
              if (v53 >= *(v144 + 16))
              {
                goto LABEL_59;
              }

              v110 = *(v143 + 8 * v53);
            }

            if (__OFADD__(v53++, 1))
            {
              break;
            }

            v112 = OUTLINED_FUNCTION_13_8(v110, OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription);
            if (v113)
            {
              v147 = v112;
              v114 = *&v112[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
              v115 = *(v150 + 16);
              v156 = v114 + 32;

              v116 = 0;
              v149 = v115;
LABEL_32:
              if (v116 == v115)
              {

                sub_26B6EA1F4();
                v126 = *(v157 + 16);
                sub_26B6EA224();
                sub_26B6EA234();
                sub_26B6EA204();
              }

              else
              {
                v117 = *(v148 + v116++);
                v118 = *(v114 + 16);
                v119 = v156;
                while (v118)
                {
                  v120 = 0xE600000000000000;
                  v121 = 0x737472656C41;
                  switch(*v119)
                  {
                    case 1:
                      v120 = 0xE300000000000000;
                      v121 = 7105601;
                      break;
                    case 2:
                      v121 = OUTLINED_FUNCTION_12_8();
                      break;
                    case 3:
                      v121 = OUTLINED_FUNCTION_19_4();
                      break;
                    case 4:
                      v121 = OUTLINED_FUNCTION_18_8();
                      break;
                    default:
                      break;
                  }

                  v122 = 0xE600000000000000;
                  v123 = 0x737472656C41;
                  switch(v117)
                  {
                    case 1:
                      v122 = 0xE300000000000000;
                      v123 = 7105601;
                      break;
                    case 2:
                      OUTLINED_FUNCTION_16_7();
                      break;
                    case 3:
                      OUTLINED_FUNCTION_22_7();
                      break;
                    case 4:
                      OUTLINED_FUNCTION_23_5();
                      break;
                    default:
                      break;
                  }

                  if (v121 == v123 && v120 == v122)
                  {

LABEL_52:
                    v115 = v149;
                    goto LABEL_32;
                  }

                  v125 = sub_26B6EA5D4();

                  ++v119;
                  --v118;
                  if (v125)
                  {
                    goto LABEL_52;
                  }
                }
              }
            }

            else
            {
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v157 = v67;
        sub_26B6EA214();
        v156 = type metadata accessor for SportingEventPlay();
        v88 = 0;
        v89 = (v135 + 8);
        v90 = (v53 + 40);
        while (v88 < *(v53 + 16))
        {
          v91 = *(v90 - 1);
          v92 = *v90;

          v93 = v147;
          sub_26B6E9A54();
          sub_26B6E9A34();
          (*v89)(v93, v148);
          sub_26B693620(&qword_2810CE448, type metadata accessor for SportingEventPlay);
          sub_26B6E9024();
          ++v88;
          OUTLINED_FUNCTION_35_5();

          sub_26B6EA1F4();
          v62 = *(v157 + 16);
          sub_26B6EA224();
          sub_26B6EA234();
          sub_26B6EA204();
          v90 += 2;
          if (v87 == v88)
          {
            v141 = 0;

            v94 = v157;
            v67 = MEMORY[0x277D84F90];
            goto LABEL_24;
          }
        }

        __break(1u);
        OUTLINED_FUNCTION_0_10();
        swift_once();
        v72 = sub_26B6E95C4();
        __swift_project_value_buffer(v72, qword_2810D4308);
        v73 = v62;
        v74 = sub_26B6E95A4();
        v75 = sub_26B6E9E74();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = v53;
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v157 = v78;
          *v77 = 136315138;
          swift_getErrorValue();
          v79 = sub_26B6EA6B4();
          v81 = sub_26B6D22D8(v79, v80, &v157);

          *(v77 + 4) = v81;
          _os_log_impl(&dword_26B630000, v74, v75, "SportsManager.updatePlaysPublishersWithLatestState error - %s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v78);
          OUTLINED_FUNCTION_14_8();
          MEMORY[0x26D67E950]();
          v53 = v76;
          OUTLINED_FUNCTION_14_8();
          MEMORY[0x26D67E950]();
        }

        OUTLINED_FUNCTION_7_10();
        v82(v132, v151);
      }

      else
      {
        v69 = v144;
        (*(v60 + 16))(v144, v48, v63);
        v70 = *(v59 + OBJC_IVAR____TtC9SportsKit10PlaysStore_queue);
        v71 = type metadata accessor for ReverseChronologicalStreamReader();
        OUTLINED_FUNCTION_11_9(v71);
        swift_allocObject();
        v95 = sub_26B644504(v69, 4096, v70);
        v96 = swift_allocObject();
        *(v96 + 16) = v67;
        v157 = sub_26B643F9C();
        sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
        v97 = sub_26B6E9EB4();
        v129 = v53;
        v98 = v97;
        v159 = v97;
        v99 = sub_26B6E9E94();
        v100 = v139;
        __swift_storeEnumTagSinglePayload(v139, 1, 1, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A488, &qword_26B6F33A8);
        OUTLINED_FUNCTION_6_10(&qword_28040A490);
        sub_26B6936A8();
        v101 = v140;
        sub_26B6E96C4();
        sub_26B650BBC(v100, &qword_28040A478, &qword_26B6F3398);

        v102 = swift_allocObject();
        v103 = v152;
        v102[2] = sub_26B693BFC;
        v102[3] = v103;
        v104 = v150;
        v102[4] = v96;
        v102[5] = v104;
        OUTLINED_FUNCTION_20_5();
        v105 = swift_allocObject();
        v105[2] = v134;
        v105[3] = v104;
        v106 = v142;
        v105[4] = v96;
        v105[5] = v106;
        v105[6] = v95;
        OUTLINED_FUNCTION_9_7(&qword_28040A4A0, &qword_28040A480, &qword_26B6F33A0);
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v107 = v143;
        sub_26B6E96A4();

        v53 = v129;

        (*(v141 + 8))(v101, v107);
        swift_beginAccess();
        sub_26B6E95D4();
        swift_endAccess();

        sub_26B64481C();

        OUTLINED_FUNCTION_7_10();
        v108();
      }
    }

    else
    {
      sub_26B63DE50(v53);
      v62(v48, v63);
LABEL_10:
    }

    goto LABEL_22;
  }

  if (qword_2810CE9F0 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v54 = sub_26B6E95C4();
  __swift_project_value_buffer(v54, qword_2810D4308);
  v55 = sub_26B6E95A4();
  v56 = sub_26B6E9E74();
  if (os_log_type_enabled(v55, v56))
  {
    OUTLINED_FUNCTION_28_5();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_33_5(&dword_26B630000, v57, v58, "canonicalId cannot contain parental traversal string patterns");
    OUTLINED_FUNCTION_14_8();
    MEMORY[0x26D67E950]();
  }

LABEL_22:
}