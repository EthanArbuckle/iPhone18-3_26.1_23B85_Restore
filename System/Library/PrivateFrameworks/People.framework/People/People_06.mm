uint64_t sub_22F05DDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F0D0FBC();
  v15 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    v14 = sub_22F0D103C();
    nullsub_3(v14);
    return v15;
  }

  return result;
}

unint64_t sub_22F05DF14()
{
  result = qword_280CBD158;
  if (!qword_280CBD158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1928, &qword_22F0D8428);
    sub_22F05DFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD158);
  }

  return result;
}

unint64_t sub_22F05DFA0()
{
  result = qword_280CBD1A8;
  if (!qword_280CBD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1A8);
  }

  return result;
}

uint64_t LaunchDiary.__allocating_init(withJSON:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  LaunchDiary.init(withJSON:)(a1, a2);
  return v4;
}

uint64_t sub_22F05E0AC()
{
  v1 = sub_22F0D016C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_22F0D015C();
  swift_beginAccess();
  v6 = *(v0 + 16);
  sub_22F0CFF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1660, &qword_22F0D74C0);
  sub_22F036E04();
  v4 = sub_22F0D014C();
  sub_22F0D00CC();

  return v4;
}

uint64_t LaunchDiary.__allocating_init(withData:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t LaunchDiary.init(withJSON:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (a2 >> 60 == 15)
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBEC40);
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D122C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22EFE1000, v8, v9, "Creating empty launch map", v10, 2u);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      sub_22F00AB48(a1, a2);
    }

    v11 = MEMORY[0x277D84F98];
    goto LABEL_10;
  }

  v12 = sub_22F0D013C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_22F0D012C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1660, &qword_22F0D74C0);
  sub_22F05EFB8();
  sub_22F0D011C();
  if (!v3)
  {
    sub_22F00AB48(a1, a2);
    sub_22F0D00CC();
    v11 = v16;
LABEL_10:
    *(v4 + 16) = v11;
    return v4;
  }

  sub_22F00AB48(a1, a2);
  sub_22F0D00CC();
  type metadata accessor for LaunchDiary();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_22F05E390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v105 = *(v93 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v86 - v9;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v95 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v86 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v101 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v86 - v24;
  v26 = v11[2];
  v91 = v11 + 2;
  v90 = v26;
  v26(&v86 - v24, a3, v10);
  v102 = v11[7];
  v103 = v11 + 7;
  v102(v25, 0, 1, v10);
  swift_beginAccess();
  sub_22F0CFF1C();
  v87 = v25;
  v27 = a1;
  v28 = v10;
  sub_22F046468(v25, v27, a2);
  swift_endAccess();
  v98 = v19;
  sub_22F0D05AC();
  v29 = *(v4 + 16);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v89 = (v105 + 8);
  v97 = (v11 + 1);
  v100 = v11;
  v94 = v11 + 4;
  v35 = v17;
  v105 = v29;
  sub_22F0CFF1C();
  v36 = 0;
  *&v37 = 136315138;
  v96 = v37;
  v106 = v4;
  v99 = v10;
  v104 = v17;
  if (v33)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v34)
    {
      (*v97)(v98, v28);
      sub_22F0D00CC();
      return;
    }

    v33 = *(v30 + 8 * v38);
    ++v36;
    if (v33)
    {
      while (1)
      {
        v39 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v40 = (*(v105 + 48) + ((v38 << 10) | (16 * v39)));
        v41 = *v40;
        v42 = v40[1];
        v43 = *(v106 + 16);
        v44 = *(v43 + 16);
        sub_22F0CFF1C();
        if (v44)
        {
          sub_22F0CFF1C();
          v45 = sub_22EFFDA80(v41, v42);
          if (v46)
          {
            v88 = v41;
            v90(v35, *(v43 + 56) + v100[9] * v45, v28);

            v47 = v35;
            if (qword_27DAA0620 != -1)
            {
              swift_once();
            }

            v48 = v93;
            __swift_project_value_buffer(v93, qword_27DAA2180);
            v49 = [objc_opt_self() seconds];
            v50 = v92;
            sub_22F0D019C();

            sub_22F0D018C();
            (*v89)(v50, v48);
            v51 = v95;
            sub_22F0D054C();
            if (sub_22F0D053C())
            {
              swift_beginAccess();
              v52 = v87;
              v53 = v88;
              sub_22F0178D0(v88, v42, v87);
              sub_22F01B96C(v52);
              swift_endAccess();
              if (qword_280CBEC38 != -1)
              {
                swift_once();
              }

              v54 = sub_22F0D0A1C();
              __swift_project_value_buffer(v54, qword_280CBEC40);
              sub_22F0CFF1C();
              v55 = sub_22F0D09FC();
              v56 = sub_22F0D122C();

              if (os_log_type_enabled(v55, v56))
              {
                v57 = swift_slowAlloc();
                v58 = swift_slowAlloc();
                v59 = v53;
                v60 = v58;
                v108[0] = v58;
                *v57 = v96;
                v61 = sub_22F00A560(v59, v42, v108);

                *(v57 + 4) = v61;
                _os_log_impl(&dword_22EFE1000, v55, v56, "Time for %s expired, nuking", v57, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v60);
                MEMORY[0x2318FE8B0](v60, -1, -1);
                MEMORY[0x2318FE8B0](v57, -1, -1);

                v62 = *v97;
                v63 = v95;
              }

              else
              {

                v62 = *v97;
                v63 = v51;
              }

              v28 = v99;
              v62(v63, v99);
              v35 = v104;
            }

            else
            {
              v35 = v47;

              v62 = *v97;
              v85 = v51;
              v28 = v99;
              (*v97)(v85, v99);
            }

            v62(v35, v28);
            v36 = v38;
            if (!v33)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }
        }

        v64 = v106;
        swift_beginAccess();
        v65 = *(v64 + 16);
        v66 = sub_22EFFDA80(v41, v42);
        if (v67)
        {
          v68 = v66;
          v69 = v106;
          v70 = *(v106 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = *(v69 + 16);
          v107 = v72;
          *(v69 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22F06091C();
            v72 = v107;
          }

          v73 = *(*(v72 + 48) + 16 * v68 + 8);

          v74 = v101;
          (v100[4])(v101, *(v72 + 56) + v100[9] * v68, v28);
          sub_22F05F64C(v68, v72, MEMORY[0x277CC9578]);
          v75 = *(v106 + 16);
          *(v106 + 16) = v72;

          v76 = 0;
        }

        else
        {
          v76 = 1;
          v74 = v101;
        }

        v102(v74, v76, 1, v28);
        sub_22F01B96C(v74);
        swift_endAccess();
        if (qword_280CBEC38 != -1)
        {
          swift_once();
        }

        v77 = sub_22F0D0A1C();
        __swift_project_value_buffer(v77, qword_280CBEC40);
        sub_22F0CFF1C();
        v78 = sub_22F0D09FC();
        v79 = sub_22F0D123C();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v82 = v41;
          v83 = v81;
          v108[0] = v81;
          *v80 = v96;
          v84 = sub_22F00A560(v82, v42, v108);

          *(v80 + 4) = v84;
          v28 = v99;
          _os_log_impl(&dword_22EFE1000, v78, v79, "Invalid time for %s, nuking", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v83);
          MEMORY[0x2318FE8B0](v83, -1, -1);
          MEMORY[0x2318FE8B0](v80, -1, -1);
        }

        else
        {
        }

        v36 = v38;
        v35 = v104;
        if (!v33)
        {
          goto LABEL_8;
        }

LABEL_7:
        v38 = v36;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22F05ECD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_5;
  }

  v13 = *(v2 + 16);
  sub_22F0CFF1C();
  v14 = sub_22EFFDA80(a1, a2);
  if ((v15 & 1) == 0)
  {

LABEL_5:
    v17 = sub_22F0D05BC();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v19 = 0;
    goto LABEL_6;
  }

  v16 = v14;
  v22 = *(v12 + 56);
  v17 = sub_22F0D05BC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v11, v22 + *(v18 + 72) * v16, v17);

  v19 = 1;
  (*(v18 + 56))(v11, 0, 1, v17);
LABEL_6:
  sub_22F01B96C(v11);
  sub_22F0D05BC();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  swift_beginAccess();
  sub_22F0CFF1C();
  sub_22F046468(v9, a1, a2);
  swift_endAccess();
  return v19;
}

uint64_t LaunchDiary.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LaunchDiary.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_22F05EFB8()
{
  result = qword_280CBD198;
  if (!qword_280CBD198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1660, &qword_22F0D74C0);
    sub_22F05F060(&unk_280CBDC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD198);
  }

  return result;
}

uint64_t sub_22F05F060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F05F0C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F0D140C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v14 = sub_22F0D19CC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22F05F284(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F0D140C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22F0D198C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ResolvedFamily() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22F05F448(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F0D140C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v13 = sub_22F0D19CC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for PeopleLocation() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22F05F64C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22F0D140C() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v15 = sub_22F0D19CC();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_22F05F840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1970, &qword_22F0D8478);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F05F98C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1948, &qword_22F0D8468);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        v22 = 40 * v17;
        sub_22EFFFB40(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22EFE6B9C(v25, *(v4 + 56) + v22);
        result = sub_22F0CFF1C();
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
        result = sub_22F0D00CC();
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
    result = sub_22F0D00CC();
LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_22F05FB34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A8, &qword_22F0D9180);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F05FC90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A0, &qword_22F0D8488);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v23 = *(v19 + v17);
        v22 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v23;
        v26[1] = v22;
        v26[2] = v24;
        sub_22F0CFF1C();
        v27 = v23;
        result = sub_22F00AC04(v22, v24);
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F05FE28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1988, &unk_22F0D9160);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        result = sub_22F0CFF1C();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F05FF84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        sub_22F0CFF1C();
        result = sub_22F0CFF1C();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F0600F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1938, &unk_22F0D90E0);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_22F0CFF1C();
        result = sub_22F0CFF1C();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F06026C()
{
  v1 = v0;
  v2 = type metadata accessor for ResolvedFamily();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1990, &unk_22F0D9170);
  v5 = *v0;
  v6 = sub_22F0D16FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_22F06158C(*(v5 + 56) + v24, v27, type metadata accessor for ResolvedFamily);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        result = sub_22F0615F4(v23, *(v25 + 56) + v24, type metadata accessor for ResolvedFamily);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        result = sub_22F0D00CC();
        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22F0604A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        sub_22F0CFF1C();
        result = swift_unknownObjectRetain();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F060614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1958, &unk_22F0D9120);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        v20 = v18;
        result = sub_22F0CFF1C();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F060778()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11A8, &qword_22F0D5C20);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        sub_22F003598(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22EFFFA24(v25, (*(v4 + 56) + v22));
        result = sub_22F0CFF1C();
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
        result = sub_22F0D00CC();
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
    result = sub_22F0D00CC();
LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_22F06091C()
{
  v1 = v0;
  v36 = sub_22F0D05BC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1980, &qword_22F0D8480);
  v4 = *v0;
  v5 = sub_22F0D16FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);
        result = sub_22F0CFF1C();
        v14 = v39;
      }

      while (v39);
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
        result = sub_22F0D00CC();
        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22F060C94()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleLocation();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1930, &unk_22F0D90D0);
  v5 = *v0;
  v6 = sub_22F0D16FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_22F06158C(v22 + v28, v33, type metadata accessor for PeopleLocation);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_22F0615F4(v27, *(v29 + 56) + v28, type metadata accessor for PeopleLocation);
        result = sub_22F0CFF1C();
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        result = sub_22F0D00CC();
        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22F060EF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1978, &qword_22F0D9140);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F061040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1968, &unk_22F0D9130);
  v2 = *v0;
  v3 = sub_22F0D16FC();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
        result = sub_22F0CFF1C();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F0611BC()
{
  v1 = v0;
  v2 = type metadata accessor for LocationItem(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1950, &qword_22F0D90C0);
  v5 = *v0;
  v6 = sub_22F0D16FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_22F06158C(v22 + v28, v33, type metadata accessor for LocationItem);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_22F0615F4(v27, *(v29 + 56) + v28, type metadata accessor for LocationItem);
        result = sub_22F0CFF1C();
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        result = sub_22F0D00CC();
        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_22F061430(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F0D16FC();
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
        sub_22F0CFF1C();
        result = v22;
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
    result = sub_22F0D00CC();
    *v3 = v6;
  }

  return result;
}

uint64_t sub_22F06158C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0615F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SelectPeopleIntent.people(for:)(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 people];
  if (v5)
  {
    v2 = v5;
    type metadata accessor for PersonType();
    v6 = sub_22F0D0F4C();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  if ((a1 - 2) > 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = qword_22F0D8490[a1 - 2];
  }

  v8 = v6 >> 62;
  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 < v7)
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

  if (v6 < 0)
  {
    a1 = v6;
  }

  else
  {
    a1 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = sub_22F0D143C();
  result = sub_22F0D143C();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v2 >= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v2;
    }

    if (v2 >= 0)
    {
      v7 = v20;
    }

    if (sub_22F0D143C() >= v7)
    {
LABEL_11:
      if ((v6 & 0xC000000000000001) != 0 && v7)
      {
        type metadata accessor for PersonType();
        sub_22F0CFF1C();
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          sub_22F0D155C();
          v10 = v11;
        }

        while (v7 != v11);
      }

      else
      {
        sub_22F0CFF1C();
      }

      if (v8)
      {
        a1 = sub_22F0D16EC();
        v8 = v12;
        v2 = v13;
        v7 = v14;

        if (v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v2 = 0;
        a1 = v6 & 0xFFFFFFFFFFFFFF8;
        v8 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
        v7 = (2 * v7) | 1;
        if (v7)
        {
LABEL_22:
          sub_22F0D18AC();
          swift_unknownObjectRetain_n();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            swift_unknownObjectRelease();
            v17 = MEMORY[0x277D84F90];
          }

          v18 = *(v17 + 16);
          sub_22F0D00CC();
          if (!__OFSUB__(v7 >> 1, v2))
          {
            if (v18 == (v7 >> 1) - v2)
            {
              v16 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v16)
              {
                return v16;
              }

              v16 = MEMORY[0x277D84F90];
LABEL_28:
              swift_unknownObjectRelease();
              return v16;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          swift_unknownObjectRelease_n();
        }
      }

      sub_22F0618B8(a1, v8, v2, v7);
      v16 = v15;
      goto LABEL_28;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_22F0618B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        type metadata accessor for PersonType();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F06199C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1708, &qword_22F0D8A90);
      v7 = *(type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t static PeopleHandle.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C();
  }
}

uint64_t PeopleHandle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22F0D0D5C();
}

uint64_t PeopleHandle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0D199C();
  sub_22F0D0D5C();
  return sub_22F0D19CC();
}

uint64_t sub_22F061BC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0D199C();
  sub_22F0D0D5C();
  return sub_22F0D19CC();
}

uint64_t sub_22F061C0C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22F0D0D5C();
}

uint64_t sub_22F061C14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F0D199C();
  sub_22F0D0D5C();
  return sub_22F0D19CC();
}

uint64_t sub_22F061C5C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C();
  }
}

uint64_t PeopleFriend.handle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_22F0CFF1C();
}

uint64_t PeopleFriend.handle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

id static PeopleLocation.emptyLocation(latlng:date:accuracy:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v7 = type metadata accessor for PeopleLocation();
  v8 = v7[5];
  v9 = sub_22F0D05BC();
  (*(*(v9 - 8) + 16))(&a3[v8], a2, v9);
  *a3 = xmmword_22F0D84B0;
  *&a3[v7[6]] = 0;
  *&a3[v7[7]] = a4;
  *&a3[v7[8]] = a1;

  return a1;
}

uint64_t type metadata accessor for PeopleLocation()
{
  result = qword_280CBDB18;
  if (!qword_280CBDB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F061E00()
{
  v0 = sub_22F0D080C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D085C();
  if (v5 == 0.0 || (sub_22F0D086C(), v6 == 0.0))
  {
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBDB50);
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D124C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22F00A560(0xD000000000000013, 0x800000022F0DEB30, &v15);
      _os_log_impl(&dword_22EFE1000, v8, v9, "%s invalidate coordinate", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2318FE8B0](v11, -1, -1);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    return 0;
  }

  else
  {
    sub_22F0D081C();
    (*(v1 + 104))(v4, *MEMORY[0x277D094B0], v0);
    v13 = sub_22F0D084C();
    (*(v1 + 8))(v4, v0);
    return v13;
  }
}

Swift::Void __swiftcall Session.startRefreshingLocation(forHandles:)(Swift::OpaquePointer forHandles)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(forHandles._rawValue + 2);
  if (v8)
  {
    v9 = (forHandles._rawValue + 40);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_22F03D0D8(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_22F03D0D8((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v15 = &v10[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  sub_22F0D10CC();
  v16 = sub_22F0D10EC();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2]._rawValue = 0;
  v17[3]._rawValue = 0;
  v17[4]._rawValue = v2;
  v17[5]._rawValue = forHandles._rawValue;
  v17[6]._rawValue = v10;
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F062AA0(0, 0, v7, &unk_22F0D84D0, v17);
  sub_22F0D00CC();
  sub_22F01B128(v7);
}

uint64_t sub_22F06223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_22F0D07AC();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = sub_22F0D071C();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19C0, &unk_22F0D8700);
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0623C4, 0, 0);
}

uint64_t sub_22F0623C4()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = v0[7];
      v8 = *(v4 - 1);
      v7 = *v4;
      sub_22F0CFF1C();
      sub_22F0D079C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22F03D1E4(0, v5[2] + 1, 1, v5);
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v5 = sub_22F03D1E4(v9 > 1, v10 + 1, 1, v5);
      }

      v4 += 2;
      v11 = v0[7];
      v12 = v0[5];
      v5[2] = v10 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v0[14] = v5;
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D08FD0], v0[8]);
  v13 = *(MEMORY[0x277D093F0] + 4);
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_22F0625C0;
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[2];

  return MEMORY[0x28215FB18](v15, v5, v16, 0);
}

uint64_t sub_22F0625C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v6 = sub_22F062920;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v10 = v2[10];
    v9 = v2[11];
    v13 = v2 + 8;
    v11 = v2[8];
    v12 = v13[1];

    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    v6 = sub_22F062764;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22F062764()
{
  v17 = v0;
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBDB50);
  sub_22F0CFF1C();
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D124C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136380675;
    v8 = MEMORY[0x2318FD490](v5, &type metadata for PeopleHandle);
    v10 = sub_22F00A560(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22EFE1000, v3, v4, "Started subscriptions: %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x2318FE8B0](v7, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22F062920()
{
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[4];
  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBDB50);
  v4 = v1;
  sub_22F0D152C();

  v5 = MEMORY[0x2318FD490](v2, &type metadata for PeopleHandle);
  MEMORY[0x2318FD2C0](v5);

  MEMORY[0x2318FD2C0](0x4025202D20, 0xE500000000000000);
  Logger.ifError(_:message:)(v1);

  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22F062AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22F01B0B8(a3, v27 - v11);
  v13 = sub_22F0D10EC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_22F0CFFAC();
  if (v15 == 1)
  {
    sub_22F01B128(v12);
  }

  else
  {
    sub_22F0D10DC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();
  sub_22F0D00CC();
  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22F0D106C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22F0D0D2C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_22F0CFFAC();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();
      sub_22F0D00CC();
      sub_22F0D00CC();
      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t Session.locations(for:revGeoLookup:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_22F0D07AC();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F062E10, 0, 0);
}

uint64_t sub_22F062E10()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 40);
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v0 + 56);
      v8 = *(v4 - 1);
      v7 = *v4;
      sub_22F0CFF1C();
      sub_22F0D079C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22F03D1E4(0, v5[2] + 1, 1, v5);
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v5 = sub_22F03D1E4(v9 > 1, v10 + 1, 1, v5);
      }

      v4 += 2;
      v11 = *(v0 + 56);
      v12 = *(v0 + 32);
      v5[2] = v10 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *(v0 + 64) = v5;
  v13 = *(MEMORY[0x277D09468] + 4);
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_22F062FDC;
  v15 = *(v0 + 24);
  v16 = *(v0 + 96);

  return MEMORY[0x28215FBA0](v5, v16);
}

uint64_t sub_22F062FDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = sub_22F06331C;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_22F0630F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F0630F8()
{
  v27 = v0;
  v1 = v0[5];
  v26 = MEMORY[0x277D84F98];
  v2 = v0[11];
  v3 = v0[10];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[10] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v25 = v0[10];
  v11 = (v1 + 8);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = v0[10];
      v16 = v0[6];
      (*(v1 + 16))(v16, *(v25 + 48) + *(v1 + 72) * (__clz(__rbit64(v9)) | (v14 << 6)), v0[4]);
      sub_22F063394(&v26, v16, v15);
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;
      result = (*v11)(v0[6], v0[4]);
      v13 = v14;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v22 = v0[10];
    v23 = v0[6];
    v24 = v0[4];

    sub_22F0D00CC();
    (*v11)(v23, v24);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v17 = v0[10];
    v19 = v0[6];
    v18 = v0[7];
    sub_22F0D00CC();
    swift_bridgeObjectRelease_n();
    v20 = v26;

    v21 = v0[1];

    return v21(v20);
  }
}

uint64_t sub_22F06331C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

unint64_t sub_22F063394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA17E8, &qword_22F0D7CC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = &v85 - v8;
  v9 = sub_22F0D075C();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v85 - v13;
  v102 = sub_22F0D05BC();
  v100 = *(v102 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for PeopleLocation();
  v99 = *(v101 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_22F0D087C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v105 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v85 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v85 - v27;
  result = MEMORY[0x28223BE20](v26);
  v31 = &v85 - v30;
  if (*(a3 + 16))
  {
    result = sub_22EFFDC74(a2);
    if (v32)
    {
      v33 = *(a3 + 56);
      v94 = v19;
      v34 = v19[2];
      v34(v31, v33 + v19[9] * result, v18);
      v90 = sub_22F0D078C();
      v93 = v35;
      if (qword_280CBDB48 != -1)
      {
        swift_once();
      }

      v91 = a1;
      v36 = sub_22F0D0A1C();
      v37 = __swift_project_value_buffer(v36, qword_280CBDB50);
      v34(v28, v31, v18);
      v92 = v34;
      v34(v25, v31, v18);
      v89 = v37;
      v38 = sub_22F0D09FC();
      v39 = sub_22F0D124C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v107 = v87;
        *v40 = 136315650;
        *(v40 + 4) = sub_22F00A560(0xD00000000000001CLL, 0x800000022F0DEB10, &v107);
        *(v40 + 12) = 2080;
        sub_22F065634();
        v86 = v39;
        v41 = sub_22F0D183C();
        v88 = v31;
        v42 = v18;
        v44 = v43;
        v85 = v38;
        v45 = v94[1];
        v45(v28, v42);
        v46 = sub_22F00A560(v41, v44, &v107);
        v18 = v42;
        v31 = v88;

        *(v40 + 14) = v46;
        *(v40 + 22) = 2048;
        sub_22F0D081C();
        v48 = v47;
        v45(v25, v18);
        *(v40 + 24) = v48;
        v49 = v85;
        _os_log_impl(&dword_22EFE1000, v85, v86, "%s address [%s] horz. accuracy [%f]", v40, 0x20u);
        v50 = v87;
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v50, -1, -1);
        MEMORY[0x2318FE8B0](v40, -1, -1);
      }

      else
      {

        v45 = v94[1];
        v45(v25, v18);
        v45(v28, v18);
      }

      sub_22F0D085C();
      v52 = v51;
      sub_22F0D086C();
      v54 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v52 longitude:v53];
      sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
      v55 = v105;
      v56 = v92;
      if (qword_27DAA0668 != -1)
      {
        swift_once();
      }

      if (sub_22F0D12FC())
      {

        v56(v55, v31, v18);
        v57 = v18;
        v58 = sub_22F0D09FC();
        v59 = sub_22F0D123C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v106 = v54;
          v61 = v60;
          v104 = swift_slowAlloc();
          v107 = v104;
          *v61 = 136315394;
          *(v61 + 4) = sub_22F00A560(0xD00000000000001CLL, 0x800000022F0DEB10, &v107);
          *(v61 + 12) = 2080;
          sub_22F065634();
          v62 = sub_22F0D183C();
          v63 = v57;
          v65 = v64;
          v66 = v63;
          v45(v55, v63);
          v67 = sub_22F00A560(v62, v65, &v107);

          *(v61 + 14) = v67;
          _os_log_impl(&dword_22EFE1000, v58, v59, "%s Dropping location with null island %s", v61, 0x16u);
          v68 = v104;
          swift_arrayDestroy();
          MEMORY[0x2318FE8B0](v68, -1, -1);
          MEMORY[0x2318FE8B0](v61, -1, -1);

          return (v45)(v31, v66);
        }

        else
        {

          v45(v55, v57);
          return (v45)(v31, v57);
        }
      }

      else
      {
        v69 = v54;
        v70 = sub_22F061E00();
        v105 = v71;
        sub_22F0D083C();
        v72 = v95;
        sub_22F0D082C();
        v74 = v96;
        v73 = v97;
        v75 = v104;
        (*(v96 + 32))(v104, v72, v97);
        v76 = (*(v74 + 88))(v75, v73);
        if (v76 == *MEMORY[0x277D090E0])
        {
          v77 = 1;
        }

        else if (v76 == *MEMORY[0x277D09100])
        {
          v77 = 2;
        }

        else if (v76 == *MEMORY[0x277D090F0])
        {
          v77 = 3;
        }

        else if (v76 == *MEMORY[0x277D090E8])
        {
          v77 = 4;
        }

        else if (v76 == *MEMORY[0x277D090D8])
        {
          v77 = 5;
        }

        else
        {
          (*(v74 + 8))(v104, v73);
          v77 = 0;
        }

        sub_22F0D081C();
        v79 = v78;
        v80 = v98;
        v82 = v105;
        v81 = v106;
        *v98 = v70;
        *(v80 + 8) = v82;
        v83 = v101;
        (*(v100 + 32))(v80 + *(v101 + 20), v81, v102);
        *(v80 + v83[6]) = v77;
        *(v80 + v83[7]) = v79;
        *(v80 + v83[8]) = v69;
        v84 = v103;
        sub_22F065574(v80, v103);
        (*(v99 + 56))(v84, 0, 1, v83);
        sub_22F046640(v84, v90, v93);
        sub_22F0655D8(v80);
        return (v45)(v31, v18);
      }
    }
  }

  return result;
}

uint64_t Session.friendsSharingLocationsWithMe()()
{
  v1 = sub_22F0D07AC();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_22F0D077C();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = *(MEMORY[0x277D09428] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_22F063EF8;

  return MEMORY[0x28215FB58](sub_22F005328, 0);
}

uint64_t sub_22F063EF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 56);
    v7 = *(v3 + 32);

    v8 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F064054, 0, 0);
}

uint64_t sub_22F064054()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v24 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = (v0[3] + 8);
    v23 = *(v3 + 72);
    v21 = (v3 + 8);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      v9 = v0[2];
      v24(v6, v4, v7);
      sub_22F0D076C();
      v10 = sub_22F0D078C();
      v12 = v11;
      (*v22)(v8, v9);
      (*v21)(v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22F03D20C(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_22F03D20C((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v4 += v23;
      --v2;
    }

    while (v2);
    v16 = v0[9];
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v17 = v0[7];
  v18 = v0[4];

  v19 = v0[1];

  return v19(v5);
}

uint64_t sub_22F064240(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F06574C;

  return Session.locations(for:revGeoLookup:)(a1, a2);
}

uint64_t sub_22F0642E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F015708;

  return Session.friendsSharingLocationsWithMe()();
}

uint64_t sub_22F06439C()
{
  type metadata accessor for PeopleLocateFriendProvider();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_280CBEA58 = v0;
  return result;
}

uint64_t static PeopleLocateFriendProvider.shared.getter()
{
  if (qword_280CBEA50 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

uint64_t sub_22F064438(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0644D4, v1, 0);
}

uint64_t sub_22F0644D4()
{
  v18 = v0;
  v1 = v0[3];
  if (!*(v1 + 112))
  {
    goto LABEL_8;
  }

  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBDB50);
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D122C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22F00A560(0x286E6F6973736573, 0xE900000000000029, &v17);
    _os_log_impl(&dword_22EFE1000, v3, v4, "%s has existing session", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  if (*(v1 + 112))
  {
    v7 = *(v1 + 112);
  }

  else
  {
LABEL_8:
    v8 = v0[4];
    v9 = sub_22F0D10EC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v7 = sub_22F01A8DC(0, 0, v8, &unk_22F0D84F8, v10);
    v11 = *(v1 + 112);
  }

  v0[5] = v7;
  *(v1 + 112) = v7;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v12 = *(MEMORY[0x277D857E0] + 4);
  v13 = swift_task_alloc();
  v0[6] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1428, &qword_22F0D8500);
  *v13 = v0;
  v13[1] = sub_22F064770;
  v15 = v0[2];

  return MEMORY[0x282200460](v15, v7, v14);
}

uint64_t sub_22F064770()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F064880, v2, 0);
}

uint64_t sub_22F064880()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22F0D00CC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22F0648E8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22F0D072C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_22F0D073C() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0649D4, 0, 0);
}

uint64_t sub_22F0649D4()
{
  v15 = v0;
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBDB50);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D124C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0x286E6F6973736573, 0xE900000000000029, &v14);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s requesting new session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  v6 = v0[6];
  v7 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09060], v0[3]);
  sub_22F0D074C();
  v8 = sub_22F0D07EC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_22F0D07FC();
  v7[3] = v8;
  v7[4] = &protocol witness table for Session;
  *v7 = v11;

  v12 = v0[1];

  return v12();
}

uint64_t PeopleLocateFriendProvider.deinit()
{
  v1 = *(v0 + 112);
  sub_22F0D00CC();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PeopleLocateFriendProvider.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  sub_22F0D00CC();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F064C3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F00CD54;

  return sub_22F064438(a1);
}

uint64_t sub_22F064CD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22F00CD54;

  return sub_22F06223C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22F064DA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F00CF60;

  return sub_22F0648E8(a1);
}

unint64_t sub_22F064E50()
{
  result = qword_27DAA19B0;
  if (!qword_27DAA19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA19B0);
  }

  return result;
}

uint64_t dispatch thunk of PeopleLocateFriendsSessionProvider.session()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22F00CF60;

  return v11(a1, a2, a3);
}

uint64_t sub_22F064FE0(uint64_t a1, int a2)
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

uint64_t sub_22F065028(uint64_t result, int a2, int a3)
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

void sub_22F06509C()
{
  sub_22F065168();
  if (v0 <= 0x3F)
  {
    sub_22F0D05BC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SPMotionActivityState(319);
      if (v2 <= 0x3F)
      {
        sub_22F01B924(319, &qword_280CBD150, 0x277CE41F8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22F065168()
{
  if (!qword_280CBD180)
  {
    v0 = sub_22F0D132C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBD180);
    }
  }
}

uint64_t dispatch thunk of PeopleFriendLocateProtocol.locations(for:revGeoLookup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22F059CA8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PeopleFriendLocateProtocol.friendsSharingLocationsWithMe()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22F015A70;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PeopleLocateFriendProvider.session()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F00CF60;

  return v8(a1);
}

uint64_t sub_22F065574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0655D8(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F065634()
{
  result = qword_27DAA19B8;
  if (!qword_27DAA19B8)
  {
    sub_22F0D087C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA19B8);
  }

  return result;
}

uint64_t sub_22F06568C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F00CD54;

  return sub_22F01AC3C(a1, v5);
}

double sub_22F065798@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_22F0D05BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for StatusRelevance();
    v19 = __swift_project_value_buffer(v18, qword_27DAA13A8);

    sub_22F014450(v19, a2);
  }

  else
  {
    v21 = *(a1(0) + 20);
    v30 = v6;
    v31 = v14;
    v22 = *(v14 + 16);
    v22(v17, &v2[v21], v13);
    v23 = objc_opt_self();
    v24 = [v23 hours];
    sub_22F014850();
    sub_22F0D017C();
    v22(a2, v17, v13);
    v25 = [v23 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v26 = *(v30 + 8);
    v26(v10, v5);
    v27 = type metadata accessor for StatusRelevance();
    v28 = a2 + v27[5];
    sub_22F0D054C();
    v26(v12, v5);
    (*(v31 + 8))(v17, v13);
    *(a2 + v27[6]) = 0x4024000000000000;
    *(a2 + v27[7]) = 0x4000000000000000;
    v29 = a2 + v27[8];
    result = 0.1;
    *v29 = xmmword_22F0D8710;
    *(v29 + 16) = xmmword_22F0D8720;
    *(v29 + 32) = 0;
  }

  return result;
}

double ChildStatePersonStatus.relevance.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_22F0D05BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for StatusRelevance();
    v17 = __swift_project_value_buffer(v16, qword_27DAA13A8);

    sub_22F014450(v17, a1);
  }

  else
  {
    v19 = *(type metadata accessor for ChildStatePersonStatus(0) + 20);
    v28 = v4;
    v29 = v12;
    v20 = *(v12 + 16);
    v20(v15, &v1[v19], v11);
    v21 = objc_opt_self();
    v22 = [v21 hours];
    sub_22F014850();
    sub_22F0D017C();
    v20(a1, v15, v11);
    v23 = [v21 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v24 = *(v28 + 8);
    v24(v8, v3);
    v25 = type metadata accessor for StatusRelevance();
    v26 = a1 + v25[5];
    sub_22F0D054C();
    v24(v10, v3);
    (*(v29 + 8))(v15, v11);
    *(a1 + v25[6]) = 0x4016000000000000;
    *(a1 + v25[7]) = 0x4012000000000000;
    v27 = a1 + v25[8];
    result = 0.1;
    *v27 = xmmword_22F0D8710;
    *(v27 + 16) = xmmword_22F0D8720;
    *(v27 + 32) = 0;
  }

  return result;
}

uint64_t sub_22F065E64@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_22F0D05BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    v16 = *(type metadata accessor for AvailabilityPersonStatus(0) + 20);
    v28 = v4;
    v29 = v12;
    v17 = *(v12 + 16);
    v17(v15, &v1[v16], v11);
    v18 = objc_opt_self();
    v19 = [v18 hours];
    sub_22F014850();
    sub_22F0D017C();
    v17(a1, v15, v11);
    v20 = [v18 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v21 = *(v28 + 8);
    v21(v8, v3);
    v22 = type metadata accessor for StatusRelevance();
    v23 = a1 + v22[5];
    sub_22F0D054C();
    v21(v10, v3);
    result = (*(v29 + 8))(v15, v11);
    *(a1 + v22[6]) = 0x4012000000000000;
    *(a1 + v22[7]) = 0x4008000000000000;
    v25 = a1 + v22[8];
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 1;
  }

  else
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for StatusRelevance();
    v27 = __swift_project_value_buffer(v26, qword_27DAA13A8);

    return sub_22F014450(v27, a1);
  }

  return result;
}

double LocationPersonStatus.relevance.getter@<D0>(char *a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationPersonStatus(0);
  v16 = *(v11 + 16);
  v17 = v1 + *(v15 + 20);
  v18 = v10;
  v16(v14, v17, v10);
  if (qword_27DAA0638 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v2, qword_27DAA21C8);
  (*(v3 + 16))(v9, v19, v2);
  v20 = v9;
  v21 = v29;
  v16(v29, v14, v18);
  v22 = [objc_opt_self() seconds];
  v28 = v18;
  sub_22F0D019C();

  sub_22F0D018C();
  v23 = *(v3 + 8);
  v23(v7, v2);
  v24 = type metadata accessor for StatusRelevance();
  v25 = &v21[v24[5]];
  sub_22F0D054C();
  v23(v20, v2);
  (*(v11 + 8))(v14, v28);
  *&v21[v24[6]] = 0x4018000000000000;
  *&v21[v24[7]] = 0;
  v26 = &v21[v24[8]];
  result = 0.65;
  *v26 = xmmword_22F0D6220;
  *(v26 + 1) = xmmword_22F0D8730;
  v26[32] = 0;
  return result;
}

double LocationPersonStatus.relevanceForLockScreenCircularAccessory.getter@<D0>(char *a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = sub_22F0D05BC();
  v26 = *(v9 - 8);
  v10 = v26;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocationPersonStatus(0);
  v15 = *(v10 + 16);
  v15(v13, v1 + *(v14 + 20), v9);
  v16 = objc_opt_self();
  v17 = [v16 minutes];
  sub_22F014850();
  sub_22F0D017C();
  v18 = v27;
  v15(v27, v13, v9);
  v19 = [v16 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v20 = *(v28 + 8);
  v20(v6, v2);
  v21 = type metadata accessor for StatusRelevance();
  v22 = &v18[v21[5]];
  sub_22F0D054C();
  v20(v8, v2);
  (*(v26 + 8))(v13, v9);
  *&v18[v21[6]] = 0x4014000000000000;
  *&v18[v21[7]] = 0x4014000000000000;
  v23 = &v18[v21[8]];
  result = 0.0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v23[32] = 1;
  return result;
}

uint64_t MotionPersonStatus.relevance.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v35 - v8;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MotionPersonStatus(0);
  v15 = (*(**(v1 + *(v14 + 24)) + 136))();
  if (*(v15 + 16) && (v16 = sub_22EFFD904(0), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v2 + *(v14 + 20));
  if (v19 > 2)
  {
    if (v19 != 3 && v19 != 4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (*(v2 + *(v14 + 20)))
  {
    v20 = v19 == 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
LABEL_13:
    if (v18)
    {
      v23 = 0.0;
      v21 = 4.0;
      v22 = &selRef_hours;
      goto LABEL_16;
    }

LABEL_15:
    v22 = &selRef_minutes;
    v21 = 0.0;
    v23 = 0.0;
    goto LABEL_16;
  }

  v21 = 7.0;
  v22 = &selRef_hours;
  v23 = 7.0;
LABEL_16:
  v35 = v10;
  v24 = *(v10 + 16);
  v24(v13, v2, v9);
  v25 = objc_opt_self();
  v26 = [v25 *v22];
  sub_22F014850();
  v27 = v37;
  sub_22F0D017C();
  v28 = v36;
  v24(v36, v13, v9);
  v29 = [v25 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v30 = *(v38 + 8);
  v30(v7, v3);
  v31 = type metadata accessor for StatusRelevance();
  v32 = &v28[v31[5]];
  sub_22F0D054C();
  v30(v27, v3);
  result = (*(v35 + 8))(v13, v9);
  *&v28[v31[6]] = v21;
  *&v28[v31[7]] = v23;
  v34 = &v28[v31[8]];
  *v34 = 1;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v34[32] = 1;
  return result;
}

uint64_t MotionPersonStatus.relevanceForLockScreenCircularAccessory.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v33 - v8;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MotionPersonStatus(0);
  v15 = (*(**(v1 + *(v14 + 24)) + 136))();
  if (*(v15 + 16) && (v16 = sub_22EFFD904(0), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v2 + *(v14 + 20));
  if (v19 > 2)
  {
    if (v19 != 3 && v19 != 4)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v20 = 7.0;
  if (!*(v2 + *(v14 + 20)))
  {
LABEL_13:
    v21 = &selRef_minutes;
    goto LABEL_15;
  }

  if (v19 == 1)
  {
LABEL_11:
    if (v18)
    {
      v20 = 6.0;
      goto LABEL_13;
    }

LABEL_14:
    v21 = &selRef_minutes;
    v20 = 0.0;
    goto LABEL_15;
  }

  v21 = &selRef_hours;
LABEL_15:
  v33 = v10;
  v22 = *(v10 + 16);
  v22(v13, v2, v9);
  v23 = objc_opt_self();
  v24 = [v23 *v21];
  sub_22F014850();
  v25 = v35;
  sub_22F0D017C();
  v26 = v34;
  v22(v34, v13, v9);
  v27 = [v23 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v28 = *(v36 + 8);
  v28(v7, v3);
  v29 = type metadata accessor for StatusRelevance();
  v30 = &v26[v29[5]];
  sub_22F0D054C();
  v28(v25, v3);
  result = (*(v33 + 8))(v13, v9);
  *&v26[v29[6]] = v20;
  *&v26[v29[7]] = v20;
  v32 = &v26[v29[8]];
  *v32 = 1;
  *(v32 + 1) = 0;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v32[32] = 1;
  return result;
}

uint64_t MessagePersonStatus.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_22F0D05BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) < 1)
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for StatusRelevance();
    v30 = __swift_project_value_buffer(v29, qword_27DAA13A8);

    return sub_22F014450(v30, a1);
  }

  else
  {
    v16 = *(type metadata accessor for MessagePersonStatus(0) + 24);
    v33 = v3;
    v34 = v12;
    v17 = *(v12 + 16);
    v17(v15, v1 + v16, v11);
    v18 = objc_opt_self();
    v19 = [v18 hours];
    v32 = v11;
    v20 = v4;
    v21 = a1;
    sub_22F014850();
    sub_22F0D017C();
    v17(a1, v15, v11);
    v22 = [v18 seconds];
    v23 = v33;
    sub_22F0D019C();

    sub_22F0D018C();
    v24 = *(v20 + 8);
    v24(v8, v23);
    v25 = type metadata accessor for StatusRelevance();
    v26 = v21 + v25[5];
    sub_22F0D054C();
    v24(v10, v23);
    result = (*(v34 + 8))(v15, v32);
    *(v21 + v25[6]) = 0x4020000000000000;
    *(v21 + v25[7]) = 0x4016000000000000;
    v28 = v21 + v25[8];
    *v28 = xmmword_22F0D8740;
    *(v28 + 16) = xmmword_22F0D8750;
    *(v28 + 32) = 0;
  }

  return result;
}

double MissedCallPersonStatus.relevance.getter@<D0>(char *a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = sub_22F0D05BC();
  v26 = *(v9 - 8);
  v10 = v26;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MissedCallPersonStatus(0);
  v15 = *(v10 + 16);
  v15(v13, v1 + *(v14 + 24), v9);
  v16 = objc_opt_self();
  v17 = [v16 hours];
  sub_22F014850();
  sub_22F0D017C();
  v18 = v27;
  v15(v27, v13, v9);
  v19 = [v16 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v20 = *(v28 + 8);
  v20(v6, v2);
  v21 = type metadata accessor for StatusRelevance();
  v22 = &v18[v21[5]];
  sub_22F0D054C();
  v20(v8, v2);
  (*(v26 + 8))(v13, v9);
  *&v18[v21[6]] = 0x4020000000000000;
  *&v18[v21[7]] = 0x4016000000000000;
  v23 = &v18[v21[8]];
  result = 0.13;
  *v23 = xmmword_22F0D8740;
  *(v23 + 1) = xmmword_22F0D8760;
  v23[32] = 0;
  return result;
}

uint64_t CalendarPersonStatus.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v89 = *(v2 - 8);
  v3 = *(v89 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v84 = (&v79 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v83 = &v79 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v79 - v12;
  MEMORY[0x28223BE20](v11);
  v87 = &v79 - v14;
  v15 = sub_22F0D05BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v79 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v79 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v79 - v27;
  v29 = type metadata accessor for CalendarPersonStatus(0);
  v30 = *(v29 + 20);
  v31 = *(v29 + 24);
  v86 = v29;
  v32 = *(v1 + v31);
  v88 = v16;
  v33 = *(v16 + 16);
  v34 = (v1 + v30);
  if (!v32)
  {
    v85 = v15;
    v82 = v33;
    v33(v26, v34, v15);
    v54 = objc_opt_self();
    v80 = v54;
    v55 = [v54 hours];
    sub_22F014850();
    v56 = v87;
    sub_22F0D017C();
    v57 = [v54 seconds];
    v81 = v1;
    sub_22F0D019C();

    sub_22F0D018C();
    v58 = *(v89 + 8);
    v58(v13, v2);
    v84 = v58;
    sub_22F0D055C();
    v58(v56, v2);
    v89 = *(v88 + 8);
    v59 = v26;
    v60 = v85;
    (v89)(v59, v85);
    v61 = v80;
    v62 = [v80 hours];
    v63 = v83;
    sub_22F0D017C();
    v64 = 0.4;
    if (!*(v81 + *(v86 + 28)))
    {
      v64 = 1.0;
    }

    v46 = v64 * 3.5;
    v47 = v64 * 8.0;
    v65 = v90;
    v82(v90, v28, v60);
    v66 = [v61 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v67 = v84;
    v84(v56, v2);
    v51 = type metadata accessor for StatusRelevance();
    v68 = v65 + v51[5];
    sub_22F0D054C();
    v67(v63, v2);
    v53 = v28;
    v48 = v65;
    goto LABEL_9;
  }

  if (v32 == 1)
  {
    v85 = v15;
    v82 = v33;
    v33(v26, v34, v15);
    v35 = objc_opt_self();
    v80 = v35;
    v36 = [v35 minutes];
    sub_22F014850();
    v37 = v87;
    sub_22F0D017C();
    v38 = [v35 seconds];
    v81 = v1;
    sub_22F0D019C();

    sub_22F0D018C();
    v39 = *(v89 + 8);
    v39(v13, v2);
    v83 = v39;
    sub_22F0D055C();
    v39(v37, v2);
    v89 = *(v88 + 8);
    v40 = v26;
    v41 = v85;
    (v89)(v40, v85);
    v42 = v80;
    v43 = [v80 minutes];
    v44 = v84;
    sub_22F0D017C();
    v45 = 0.4;
    if (!*(v81 + *(v86 + 28)))
    {
      v45 = 1.0;
    }

    v46 = v45 * 3.5;
    v47 = v45 * 8.0;
    v48 = v90;
    v82(v90, v23, v41);
    v49 = [v42 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v50 = v83;
    (v83)(v37, v2);
    v51 = type metadata accessor for StatusRelevance();
    v52 = v48 + v51[5];
    sub_22F0D054C();
    v50(v44, v2);
    v53 = v23;
LABEL_9:
    result = (v89)(v53, v85);
    goto LABEL_13;
  }

  v70 = *(v16 + 16);
  v33(v20, v34, v15);
  v71 = objc_opt_self();
  v72 = [v71 minutes];
  sub_22F014850();
  sub_22F0D017C();
  v73 = 0.4;
  if (!*(v1 + *(v86 + 28)))
  {
    v73 = 1.0;
  }

  v46 = v73 * 8.0;
  v47 = v73 * 3.5;
  v48 = v90;
  v70(v90, v20, v15);
  v74 = [v71 seconds];
  v75 = v87;
  sub_22F0D019C();

  sub_22F0D018C();
  v76 = *(v89 + 8);
  v76(v75, v2);
  v51 = type metadata accessor for StatusRelevance();
  v77 = v48 + v51[5];
  sub_22F0D054C();
  v76(v6, v2);
  result = (*(v88 + 8))(v20, v15);
LABEL_13:
  *(v48 + v51[6]) = v46;
  *(v48 + v51[7]) = v47;
  v78 = v48 + v51[8];
  *v78 = 1;
  *(v78 + 8) = 0;
  *(v78 + 16) = 0;
  *(v78 + 24) = 0;
  *(v78 + 32) = 1;
  return result;
}

int *sub_22F067E00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22F011C4C(a2, a3);
  if (BMScreenTimeRequestEvent.requestExpired.getter())
  {
    result = type metadata accessor for MessageDetails();
    v6 = result[11];
    v7 = 4;
LABEL_3:
    *(a3 + v6) = v7;
    return result;
  }

  v8 = [a1 status];
  result = type metadata accessor for MessageDetails();
  v6 = result[11];
  if (v8 != 3)
  {
    if (v8 == 2)
    {
      v7 = 3;
    }

    else
    {
      if (v8 != 1)
      {
        *(a3 + v6) = 0;
        return result;
      }

      v7 = 1;
    }

    goto LABEL_3;
  }

  v9 = result;
  *(a3 + v6) = 2;
  result = [a1 approvalTime];
  if (result == 3 || result == 2 || result == 1)
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_22F0D031C();
    v14 = v13;

    v15 = (a3 + v9[17]);
    v16 = v15[1];

    *v15 = v12;
    v15[1] = v14;
  }

  return result;
}

uint64_t sub_22F06801C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 188) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  *(v4 + 88) = v5;
  v6 = *(v5 - 8);
  *(v4 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v8 = sub_22F0D05BC();
  *(v4 + 112) = v8;
  v9 = *(v8 - 8);
  *(v4 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v11 = type metadata accessor for MessageDetails();
  *(v4 + 144) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F068188, 0, 0);
}

uint64_t sub_22F068188()
{
  v1 = [*(v0 + 72) requesterDSID];
  v2 = sub_22F0D0CAC();
  v4 = v3;

  v5 = sub_22F0B6FEC(v2, v4);
  LOBYTE(v2) = v6;

  if (v2)
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD00000000000001CLL, 0x800000022F0DEB80, 500);
    swift_willThrow();
LABEL_3:
    v7 = *(v0 + 152);
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 104);

    v11 = *(v0 + 8);
LABEL_23:

    return v11();
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 72);
  *(v13 + 16) = 3;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0xE000000000000000;
  v93 = v12[8];
  sub_22F0D04EC();
  v15 = v13 + v12[9];
  *(v13 + v12[11]) = 0;
  v16 = v12[12];
  v17 = type metadata accessor for ResolvedFamily();
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  v18 = (v13 + v12[13]);
  *v18 = 0;
  v18[1] = 0;
  *(v13 + v12[14]) = xmmword_22F0D6620;
  v19 = (v13 + v12[15]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v13 + v12[16]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v13 + v12[17]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = v12[19];
  *(v0 + 184) = v22;
  v23 = (v13 + v22);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v13 + v12[20]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v13 + v12[21]);
  *v25 = 0;
  v25[1] = 0;
  *(v13 + 16) = 2;
  *v15 = v5;
  *(v15 + 8) = 0;
  v26 = [v14 responderDSID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_22F0D0CAC();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = *(v0 + 144);
  v32 = *(v0 + 152);
  v33 = *(v0 + 128);
  v34 = *(v0 + 72);
  v35 = v32 + *(v31 + 40);
  v92 = (v32 + *(v31 + 72));
  v36 = sub_22F0B6FEC(v28, v30);
  v38 = v37;

  *v35 = v36;
  v35[8] = v38 & 1;
  v39 = [v34 requestID];
  v40 = sub_22F0D0CAC();
  v42 = v41;

  *v32 = v40;
  v32[1] = v42;
  v94 = v32;
  [v34 eventTime];
  sub_22F0D04BC();
  if (qword_280CBE748 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 128);
  v45 = *(v0 + 112);
  v44 = *(v0 + 120);
  v46 = *(v0 + 96);
  v47 = *(v0 + 104);
  v48 = *(v0 + 88);
  v90 = *(v0 + 136);
  v91 = *(v0 + 72);
  __swift_project_value_buffer(v48, qword_280CBE750);
  v49 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v46 + 8))(v47, v48);
  sub_22F0D054C();
  (*(v44 + 8))(v43, v45);
  (*(v44 + 40))(v13 + v93, v90, v45);
  if ([v91 kind] == 1)
  {
    v50 = *(v0 + 152);
    v51 = *(v0 + 72);
    *v92 = 0xD000000000000016;
    v92[1] = 0x800000022F0DD8D0;
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = objc_opt_self();
    v54 = [v53 bundleForClass_];
    v55 = sub_22F0D031C();
    v57 = v56;

    v94[3] = v55;
    *(v50 + 32) = v57;
    v58 = [v51 websitePath];
    if (v58)
    {
      v59 = v58;
      v60 = sub_22F0D0CAC();
    }

    else
    {
      v59 = [v53 bundleForClass_];
      v60 = sub_22F0D031C();
    }

    v67 = v60;
    v68 = v61;

    v69 = (*(v0 + 152) + *(v0 + 184));
    *v69 = v67;
    v69[1] = v68;
LABEL_22:
    v85 = *(v0 + 152);
    v87 = *(v0 + 128);
    v86 = *(v0 + 136);
    v88 = *(v0 + 104);
    sub_22F067E00(*(v0 + 72), v85, *(v0 + 64));
    sub_22F012058(v85);

    v11 = *(v0 + 8);
    goto LABEL_23;
  }

  v62 = [*(v0 + 72) bundleID];
  if (v62)
  {
    v63 = v62;
    v64 = sub_22F0D0CAC();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v70 = *(v0 + 152);
  v71 = *(v0 + 188);
  *v92 = v64;
  v92[1] = v66;
  type metadata accessor for DaemonConnection();
  v72 = swift_getObjCClassFromMetadata();
  *(v0 + 160) = v72;
  v73 = objc_opt_self();
  *(v0 + 168) = v73;
  v74 = [v73 bundleForClass_];
  v75 = sub_22F0D031C();
  v77 = v76;

  v94[3] = v75;
  *(v70 + 32) = v77;
  if (v71 != 1)
  {
    goto LABEL_22;
  }

  if (!v66)
  {
    v89 = *(v0 + 152);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000023, 0x800000022F0DEBA0, 500);
    swift_willThrow();
    sub_22F012058(v89);
    goto LABEL_3;
  }

  v78 = *(v0 + 80);
  v79 = v78[3];
  v80 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v81 = *(v80 + 24);
  v95 = (v81 + *v81);
  v82 = v81[1];
  v83 = swift_task_alloc();
  *(v0 + 176) = v83;
  *v83 = v0;
  v83[1] = sub_22F068988;

  return v95(v0 + 16, v64, v66, v79, v80);
}

uint64_t sub_22F068988()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22F068A84, 0, 0);
}

uint64_t sub_22F068A84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  sub_22F00AB48(v4, v5);
  if (!v1)
  {
    v6 = [*(v0 + 168) bundleForClass_];
    v2 = sub_22F0D031C();
    v1 = v7;
  }

  v8 = (*(v0 + 152) + *(v0 + 184));
  *v8 = v2;
  v8[1] = v1;
  v9 = *(v0 + 152);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);
  sub_22F067E00(*(v0 + 72), v9, *(v0 + 64));
  sub_22F012058(v9);

  v13 = *(v0 + 8);

  return v13();
}

void Logger.ifError(_:message:)(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_22F0D2BF0;
    swift_getErrorValue();
    v3 = a1;
    v4 = sub_22F0D192C();
    v6 = v5;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_22F03DB30();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    v7 = sub_22F0D0CCC();
    v9 = v8;
    v10 = sub_22F0D09FC();
    v11 = sub_22F0D123C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      v14 = sub_22F00A560(v7, v9, &v15);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_22EFE1000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2318FE8B0](v13, -1, -1);
      MEMORY[0x2318FE8B0](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22F068FB8()
{
  v0 = sub_22F0D0A1C();
  __swift_allocate_value_buffer(v0, qword_27DAA1A10);
  __swift_project_value_buffer(v0, qword_27DAA1A10);
  return sub_22F0D0A0C();
}

uint64_t sub_22F069204(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22F0D0A1C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22F0D0A0C();
}

uint64_t sub_22F0692A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22F0D0A1C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22F069338()
{
  sub_22F069540();
  result = sub_22F0D131C();
  qword_27DAA1A70 = result;
  return result;
}

id static PeopleLogger.signpost.getter()
{
  if (qword_27DAA0588 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA1A70;

  return v1;
}

void Logger.ifErrorElse(_:message:debug:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {

    Logger.ifError(_:message:)(a1);
  }

  else
  {
    sub_22F0CFF1C();
    oslog = sub_22F0D09FC();
    v7 = sub_22F0D122C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_22F00A560(a4, a5, &v11);
      _os_log_impl(&dword_22EFE1000, oslog, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2318FE8B0](v9, -1, -1);
      MEMORY[0x2318FE8B0](v8, -1, -1);
    }
  }
}

unint64_t sub_22F069540()
{
  result = qword_27DAA1A78;
  if (!qword_27DAA1A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA1A78);
  }

  return result;
}

id SpotlightFeedbackListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightFeedbackListener.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightFeedbackListener();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpotlightFeedbackListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightFeedbackListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F0696A8(int a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        return 0x6C6C614320595454;
      }

      else
      {
        return 0x616C655220595454;
      }
    }

    switch(a1)
    {
      case 7:
        return 7954768;
      case 8:
        return 0x6F69746365726944;
      case 9:
        return 0x53206E6565726353;
    }

    return 0x656E696665646E55;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (a1 == 1)
    {
      return 1818845517;
    }

    return 0x656E696665646E55;
  }

  if (a1 == 2)
  {
    return 0x6567617373654DLL;
  }

  if (a1 == 3)
  {
    v1 = 1701079382;
  }

  else
  {
    v1 = 1768191297;
  }

  return v1 | 0x6143206F00000000;
}

void _s6People25SpotlightFeedbackListenerC17didPerformCommandyySo019SFCommandEngagementC0CFZ_0(void *a1)
{
  v2 = [a1 command];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 applicationBundleIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = sub_22F0D0CAC();
      v8 = v7;

LABEL_11:
      sub_22F0CFF1C();
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v15 = sub_22F0D0A1C();
      __swift_project_value_buffer(v15, qword_280CBEC40);
      sub_22F0CFF1C();
      v16 = sub_22F0D09FC();
      v17 = sub_22F0D121C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315138;
        v20 = sub_22F00A560(v6, v8, &v29);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_22EFE1000, v16, v17, "Engagement feedback command %s performed. Sending event to CA.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x2318FE8B0](v19, -1, -1);
        MEMORY[0x2318FE8B0](v18, -1, -1);
      }

      else
      {
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v29) = 13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = 0x6C436E6F69746361;
      v22 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = &protocol witness table for String;
      *(inited + 40) = 0xEB00000000737361;
      *(inited + 48) = v6;
      *(inited + 56) = v8;
      v23 = sub_22F07D320(inited);
      swift_setDeallocating();
      sub_22F069CDC(v22);
      sub_22F08FCF8(&v29, v23);

      return;
    }
  }

  v28 = [a1 command];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    v12 = [a1 command];
    ObjectType = swift_getObjectType();

    v29 = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA1A80, &unk_22F0D8870);
    v6 = sub_22F0D0CFC();
    v8 = v14;
    goto LABEL_11;
  }

  v10 = v9;
  if ([v9 didDisplayHandleOptions] & 1) == 0 && !objc_msgSend(v10, sel_didSelectFromOptionsMenu) || objc_msgSend(v10, sel_didDisplayHandleOptions) && (objc_msgSend(v10, sel_didSelectFromOptionsMenu))
  {
    v6 = sub_22F0696A8([v10 contactActionType]);
    v8 = v11;

    goto LABEL_11;
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v24 = sub_22F0D0A1C();
  __swift_project_value_buffer(v24, qword_280CBEC40);
  v25 = sub_22F0D09FC();
  v26 = sub_22F0D122C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22EFE1000, v25, v26, "Menu disambiguation, not logging these actions", v27, 2u);
    MEMORY[0x2318FE8B0](v27, -1, -1);
  }
}

uint64_t sub_22F069CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F069D44(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for ChildStatePersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B10, &unk_22F0D89D0);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA0A00, type metadata accessor for ChildStatePersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F069F48(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for CalendarPersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B20, &qword_22F0D89E8);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA0AE0, type metadata accessor for CalendarPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06A14C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for MissedCallPersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B30, &unk_22F0D89F8);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA0AB0, type metadata accessor for MissedCallPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06A350(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for MessagePersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B38, &qword_22F0D8A08);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA0A88, type metadata accessor for MessagePersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06A554(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for MotionPersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B40, &unk_22F0D8A18);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA0A68, type metadata accessor for MotionPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06A758(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for LocationPersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B48, &qword_22F0D8A28);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA0A40, type metadata accessor for LocationPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06A95C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for AvailabilityPersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B50, &unk_22F0D8A38);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA0A20, type metadata accessor for AvailabilityPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06AB60(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for ScreenTimeRequestPersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B58, &qword_22F0D8A48);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA09E0, type metadata accessor for ScreenTimeRequestPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06AD64(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = type metadata accessor for AskToBuyRequestPersonStatus(0);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B60, &qword_22F0D8A58);
  sub_22F0D0D1C();
  v12[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_22F06E94C(&qword_27DAA09C0, type metadata accessor for AskToBuyRequestPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22F06AF68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for ChildStatePersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B10, &unk_22F0D89D0);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA09E8, type metadata accessor for ChildStatePersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA09F8, type metadata accessor for ChildStatePersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06B258@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for CalendarPersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B20, &qword_22F0D89E8);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA1B28, type metadata accessor for CalendarPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0AD8, type metadata accessor for CalendarPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06B548@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for MissedCallPersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B30, &unk_22F0D89F8);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA0A98, type metadata accessor for MissedCallPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0AA8, type metadata accessor for MissedCallPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06B838@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for MessagePersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B38, &qword_22F0D8A08);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA0A70, type metadata accessor for MessagePersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A80, type metadata accessor for MessagePersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06BB28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for MotionPersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B40, &unk_22F0D8A18);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA0A50, type metadata accessor for MotionPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A60, type metadata accessor for MotionPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06BE18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for LocationPersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B48, &qword_22F0D8A28);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA0A28, type metadata accessor for LocationPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A38, type metadata accessor for LocationPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06C108@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for AvailabilityPersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B50, &unk_22F0D8A38);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA0A08, type metadata accessor for AvailabilityPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A18, type metadata accessor for AvailabilityPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06C3F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for ScreenTimeRequestPersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B58, &qword_22F0D8A48);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA09C8, type metadata accessor for ScreenTimeRequestPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA09D8, type metadata accessor for ScreenTimeRequestPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06C6E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for AskToBuyRequestPersonStatus(0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v22 = 0;
    v13 = sub_22F0D177C();
    v15 = v14;
    v20[1] = v10;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B60, &qword_22F0D8A58);
    if (v16 == sub_22F0D0D1C() && v15 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    v21 = 1;
    a2[3] = v10;
    a2[4] = sub_22F06E94C(&qword_27DAA09A8, type metadata accessor for AskToBuyRequestPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA09B8, type metadata accessor for AskToBuyRequestPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_22F06C9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = swift_allocObject();
  v9[2] = *(v8 + 80);
  v9[3] = *(v8 + 88);
  v9[4] = a4;
  v9[5] = a2;
  v9[6] = a3;
  swift_beginAccess();
  swift_getFunctionTypeMetadata2();
  sub_22F0D103C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D100C();
  swift_endAccess();
  return sub_22F0D00CC();
}

uint64_t sub_22F06CB00(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E60, &unk_22F0D5030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for ChildStatePersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for ChildStatePersonStatus);
    sub_22F069D44(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for ChildStatePersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0E60, &unk_22F0D5030);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06CD0C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E70, &qword_22F0D89F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for CalendarPersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for CalendarPersonStatus);
    sub_22F069F48(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for CalendarPersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0E70, &qword_22F0D89F0);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06CF18(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E78, &unk_22F0D5040);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for MissedCallPersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for MissedCallPersonStatus);
    sub_22F06A14C(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for MissedCallPersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0E78, &unk_22F0D5040);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D124(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E80, &qword_22F0D8A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for MessagePersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for MessagePersonStatus);
    sub_22F06A350(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for MessagePersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0E80, &qword_22F0D8A10);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D330(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E88, &unk_22F0D5050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for MotionPersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for MotionPersonStatus);
    sub_22F06A554(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for MotionPersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0E88, &unk_22F0D5050);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D53C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E90, &qword_22F0D8A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for LocationPersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for LocationPersonStatus);
    sub_22F06A758(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for LocationPersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0E90, &qword_22F0D8A30);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D748(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E98, &unk_22F0D5060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for AvailabilityPersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for AvailabilityPersonStatus);
    sub_22F06A95C(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for AvailabilityPersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0E98, &unk_22F0D5060);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D954(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0EA0, &qword_22F0D8A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for ScreenTimeRequestPersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for ScreenTimeRequestPersonStatus);
    sub_22F06AB60(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for ScreenTimeRequestPersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0EA0, &qword_22F0D8A50);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06DB60(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0EA8, &qword_22F0D5070);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for AskToBuyRequestPersonStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v16);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_22F06E884(v7, v12, type metadata accessor for AskToBuyRequestPersonStatus);
    sub_22F06AD64(v12, a2);
    return sub_22F06E8EC(v12, type metadata accessor for AskToBuyRequestPersonStatus);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_22F003A4C(v7, &qword_27DAA0EA8, &qword_22F0D5070);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06DD6C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a4;
  v24 = a3;
  v10 = sub_22F0D132C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F003598(a1, v25);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, a7);
    (*(v16 + 32))(v19, v15, a7);
    v24(v19, a2);
    return (*(v16 + 8))(v19, a7);
  }

  else
  {
    v21(v15, 1, 1, a7);
    (*(v11 + 8))(v15, v10);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06DFE0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  swift_getFunctionTypeMetadata2();
  sub_22F0D103C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D100C();
  swift_endAccess();
  return sub_22F0D00CC();
}

uint64_t sub_22F06E1FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a2);
}

void sub_22F06E228(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = v6;
  v34 = a5;
  v9 = *v5;
  swift_beginAccess();
  v10 = v5[2];
  v11 = *(v9 + 88);
  v25 = *(v9 + 80);
  swift_getFunctionTypeMetadata2();
  sub_22F0CFF1C();
  v28 = a4;
  if (sub_22F0D0FFC())
  {
    v12 = 0;
    v13 = (v10 + 40);
    while (1)
    {
      v14 = sub_22F0D0FDC();
      sub_22F0D0F7C();
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_12;
      }

      v17 = *(v13 - 1);
      v16 = *v13;
      v33 = v28;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v32);
      (*(*(v28 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v28);
      sub_22F0CFFAC();
      v17(v32, a2);
      if (!v7)
      {

        sub_22F0D00CC();
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v32[0] = v7;
      v19 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
      if (!swift_dynamicCast())
      {

        a3(v7);
        sub_22F0D00CC();
        return;
      }

      sub_22F0D00CC();

      v7 = 0;
      ++v12;
      v13 += 2;
      if (v15 == sub_22F0D0FFC())
      {
        goto LABEL_8;
      }
    }

    sub_22F0D156C();
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:

    v33 = v28;
    v20 = __swift_allocate_boxed_opaque_existential_1Tm(v32);
    (*(*(v28 - 8) + 16))(v20, a1, v28);
    v31 = v25;
    v21 = __swift_allocate_boxed_opaque_existential_1Tm(v30);
    (*(*(v25 - 8) + 16))(v21, a2, v25);
    sub_22EFFF9D0();
    v22 = swift_allocError();
    v24 = v23;
    sub_22EFFFA24(v32, v23);
    sub_22EFFFA24(v30, v24 + 2);
    a3(v22);
  }
}

_OWORD *ChainOfResponsibilityError.InvalidArguments.init(input:argument:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_22EFFFA24(a1, a3);

  return sub_22EFFFA24(a2, a3 + 2);
}

uint64_t ChainOfResponsibility.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ChainOfResponsibility.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
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

uint64_t sub_22F06E78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F06E7D4(uint64_t result, int a2, int a3)
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

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2318FE8B0);
  }

  return result;
}

uint64_t sub_22F06E884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F06E8EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F06E94C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F06E99C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_22EFFFB40(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        sub_22F0D00CC();
        goto LABEL_15;
      }

      if (v10)
      {
        sub_22EFE6B9C(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EFFC6EC(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22EFFC6EC((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_22EFE6B9C(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t StatusPrioritizer.TimeLineEntrySingleItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22F0D05BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StatusPrioritizer.TimeLineEntrySingleItem.statuses.getter()
{
  v1 = *(v0 + *(type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem() + 20));

  return sub_22F0CFF1C();
}

uint64_t type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem()
{
  result = qword_27DAA1BA8;
  if (!qword_27DAA1BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StatusPrioritizer.TimeLineEntryMultipleItems.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22F0D05BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *sub_22F06ECD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_22F0D05BC();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for StatusPrioritizer.TimeLineEntryMultipleItems();
  *(a3 + result[7]) = a2;
  *(a3 + result[8]) = a4;
  *(a3 + result[9]) = a5;
  return result;
}

uint64_t sub_22F06EDC8(uint64_t a1, uint64_t a2, char a3)
{
  v9[16] = a3;
  v10 = a2;
  sub_22F0CFF1C();
  v7[16] = a3;
  v8 = a2;
  v11 = sub_22F06E99C(sub_22F06EFB0, v9, a1);
  sub_22F0CFF1C();
  sub_22F073688(sub_22F06F494, v7);

  return v11;
}

BOOL sub_22F06EE88(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for StatusRelevance();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if (a2)
  {
    (*(v11 + 16))(v10, v11);
  }

  else
  {
    (*(v11 + 8))(v10, v11);
  }

  StatusRelevance.score(at:)(a3);
  v13 = v12;
  sub_22F073CD0(v9, type metadata accessor for StatusRelevance);
  return v13 > 0.0;
}

uint64_t sub_22F06EFD4(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = sub_22F0D05BC();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = type metadata accessor for StatusRelevance();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  if ((a3 & 1) == 0)
  {
    (*(v21 + 8))(v20, v21);
    StatusRelevance.score(at:)(a4);
    v23 = v36;
    sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
    v37 = a2[3];
    v38 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v37);
    (*(v38 + 8))(v37, v38);
    StatusRelevance.score(at:)(a4);
    v27 = v39;
    sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
    if (v23 == v27)
    {
      v40 = a1[3];
      v41 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v40);
      (*(v41 + 8))(v40, v41);
      v30 = v54;
      v50 = *(v54 + 16);
      v51 = v13;
      v42 = v13;
      v32 = v55;
      v50(v42, v19, v55);
      sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
      v43 = a2[3];
      v44 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v43);
      v35 = v52;
      (*(v44 + 8))(v43, v44);
      goto LABEL_6;
    }

LABEL_7:
    v47 = v27 < v23;
    return v47 & 1;
  }

  (*(v21 + 16))(v20, v21);
  StatusRelevance.score(at:)(a4);
  v23 = v22;
  sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
  v25 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v24 + 16))(v25, v24);
  StatusRelevance.score(at:)(a4);
  v27 = v26;
  sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
  if (v23 != v27)
  {
    goto LABEL_7;
  }

  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  (*(v29 + 16))(v28, v29);
  v30 = v54;
  v50 = *(v54 + 16);
  v51 = v13;
  v31 = v13;
  v32 = v55;
  v50(v31, v19, v55);
  sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v35 = v52;
  (*(v34 + 16))(v33, v34);
LABEL_6:
  v45 = v53;
  v50(v53, v35, v32);
  sub_22F073CD0(v35, type metadata accessor for StatusRelevance);
  v46 = v51;
  v47 = sub_22F0D052C();
  v48 = *(v30 + 8);
  v48(v45, v32);
  v48(v46, v32);
  return v47 & 1;
}

uint64_t sub_22F06F4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  return sub_22F071B4C(a1, a2, a3, a4, v15);
}

uint64_t sub_22F06F608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v23 = a6;
  v22 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  return sub_22F06F774(a1, a2, a3, a4, v22, v23, a7, v19);
}

uint64_t sub_22F06F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v130 = a5;
  v129 = a2;
  v127 = a7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v116 = *(v117 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = v114 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B68, &qword_22F0D8A70);
  v15 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v119 = v114 - v16;
  v138 = type metadata accessor for StatusRelevance();
  v17 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v19 = v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v126 = v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v128 = v114 - v24;
  v136 = sub_22F0D05BC();
  v25 = *(v136 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v136);
  v123 = v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v124 = v114 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v120 = v114 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v114 - v34;
  MEMORY[0x28223BE20](v33);
  v131 = v114 - v36;
  v135 = a1;
  *&v145 = a1;
  v140 = a6;
  v141 = a3;
  v132 = a3;
  v133 = a4;
  v142 = a4;
  v134 = a6;
  v37 = sub_22F0D103C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B70, &qword_22F0D8A78);
  WitnessTable = swift_getWitnessTable();
  sub_22F0419F0(&qword_27DAA1B78, &qword_27DAA1B70, &qword_22F0D8A78);
  v137 = WitnessTable;
  sub_22F0D0EAC();

  v139 = v25;
  v122 = v37;
  v121 = v38;
  if (v130)
  {
    v120 = v114;
    *&v145 = v135;
    MEMORY[0x28223BE20](v40);
    v41 = v132;
    v114[-4] = v134;
    v114[-3] = v41;
    v42 = v133;
    v114[-2] = v133;
    v43 = sub_22F0D0EAC();
    v125 = 0;
    v44 = *(v43 + 16);
    if (v44)
    {
      *&v143 = MEMORY[0x277D84F90];
      v45 = v43;
      sub_22EFFC72C(0, v44, 0);
      v46 = v143;
      v120 = v45;
      v47 = (v45 + 32);
      v48 = (v25 + 16);
      v137 = v25 + 32;
      v49 = v136;
      do
      {
        sub_22EFFFB40(v47, &v145);
        v51 = *(&v146 + 1);
        v50 = v147;
        __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
        (*(v50 + 16))(v51, v50);
        (*v48)(v35, &v19[*(v138 + 20)], v49);
        sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
        __swift_destroy_boxed_opaque_existential_1Tm(&v145);
        *&v143 = v46;
        v53 = *(v46 + 16);
        v52 = *(v46 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22EFFC72C(v52 > 1, v53 + 1, 1);
          v49 = v136;
          v46 = v143;
        }

        *(v46 + 16) = v53 + 1;
        v25 = v139;
        (*(v139 + 32))(v46 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v53, v35, v49);
        v47 += 40;
        --v44;
      }

      while (v44);

      v67 = v49;
LABEL_14:
      v68 = v131;
      v69 = v133;
      v70 = v132;
      goto LABEL_18;
    }

    v69 = v42;
    v70 = v41;
  }

  else
  {
    *&v145 = v135;
    MEMORY[0x28223BE20](v40);
    v54 = v132;
    v114[-4] = v134;
    v114[-3] = v54;
    v55 = v133;
    v114[-2] = v133;
    v56 = sub_22F0D0EAC();
    v125 = 0;
    v57 = v56;
    v58 = *(v56 + 16);
    if (v58)
    {
      *&v143 = MEMORY[0x277D84F90];
      sub_22EFFC72C(0, v58, 0);
      v46 = v143;
      v114[1] = v57;
      v59 = v57 + 32;
      v60 = (v25 + 16);
      v137 = v25 + 32;
      v61 = v136;
      v62 = v120;
      do
      {
        sub_22EFFFB40(v59, &v145);
        v63 = *(&v146 + 1);
        v64 = v147;
        __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
        (*(v64 + 8))(v63, v64);
        (*v60)(v62, &v19[*(v138 + 20)], v61);
        sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
        __swift_destroy_boxed_opaque_existential_1Tm(&v145);
        *&v143 = v46;
        v66 = *(v46 + 16);
        v65 = *(v46 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_22EFFC72C(v65 > 1, v66 + 1, 1);
          v62 = v120;
          v61 = v136;
          v46 = v143;
        }

        *(v46 + 16) = v66 + 1;
        (*(v139 + 32))(v46 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v66, v62, v61);
        v59 += 40;
        --v58;
      }

      while (v58);

      v67 = v61;
      v25 = v139;
      goto LABEL_14;
    }

    v69 = v55;
    v70 = v54;
  }

  v46 = MEMORY[0x277D84F90];
  v67 = v136;
  v68 = v131;
LABEL_18:
  v71 = v128;
  sub_22F07083C(v46, v128);

  if ((*(v25 + 48))(v71, 1, v67) == 1)
  {
    sub_22F003A4C(v71, &qword_27DAA1440, &unk_22F0D65F0);
    v72 = v129;
LABEL_26:
    v87 = v134;
    v88 = type metadata accessor for StatusPrioritizer.TimeLineEntryMultipleItems();
    sub_22F0D184C();
    v89 = *(*(v88 - 8) + 72);
    v90 = *(*(v88 - 8) + 80);
    swift_allocObject();
    v91 = 1;
    v138 = sub_22F0D0F6C();
    v137 = v92;
    v93 = v124;
    v94 = (*(v25 + 16))(v124, v72, v67);
    *&v145 = v135;
    MEMORY[0x28223BE20](v94);
    v114[-2] = v87;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v96 = v122;
    v97 = swift_getWitnessTable();
    v98 = TupleTypeMetadata2;
    v25 = v139;
    v100 = sub_22F05C5E4(sub_22F07373C, &v114[-4], v96, v98, MEMORY[0x277D84A98], v97, MEMORY[0x277D84AC0], v99);
    v101 = v123;
    sub_22F0D04FC();
    sub_22F0D050C();
    v102 = v136;
    v104 = v103;
    (*(v25 + 8))(v101, v136);
    v105 = v93;
    v106 = v138;
    sub_22F06ECD0(v105, v100, v137, 0.0, v104);
    sub_22F0D103C();
    v107 = v127;
    v108 = v126;
    goto LABEL_31;
  }

  (*(v25 + 32))(v68, v71, v67);
  v73 = v129;
  if ((sub_22F0D053C() & 1) == 0)
  {
    (*(v25 + 8))(v68, v67);
    v72 = v73;
    goto LABEL_26;
  }

  v74 = v118;
  v75 = v119;
  v76 = &v119[*(v118 + 36)];
  sub_22F0D054C();
  v77 = v135;
  if (a8 == 0.0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v78 = (*(v25 + 16))(v75, v73, v67);
  *(v75 + *(v74 + 40)) = a8;
  MEMORY[0x28223BE20](v78);
  v114[-8] = v134;
  v114[-7] = v77;
  v114[-6] = v114[2];
  v114[-5] = v70;
  v114[-4] = v69;
  *&v114[-3] = a8;
  LOBYTE(v114[-2]) = v130 & 1;
  v79 = type metadata accessor for StatusPrioritizer.TimeLineEntryMultipleItems();
  v80 = sub_22F0419F0(&qword_27DAA1B80, &qword_27DAA1B68, &qword_22F0D8A70);
  v69 = sub_22F071458(sub_22F07375C, &v114[-10], v74, v79, MEMORY[0x277D84A98], v80, MEMORY[0x277D84AC0], v81);
  sub_22F003A4C(v75, &qword_27DAA1B68, &qword_22F0D8A70);
  if (qword_280CBDB28 != -1)
  {
LABEL_33:
    swift_once();
  }

  v82 = sub_22F0D0A1C();
  __swift_project_value_buffer(v82, qword_280CBDB30);
  sub_22F0CFF1C();
  v83 = sub_22F0D09FC();
  v84 = sub_22F0D124C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v145 = v86;
    *v85 = 136315650;
    *(v85 + 4) = sub_22F00A560(0xD00000000000003DLL, 0x800000022F0DEC20, &v145);
    *(v85 + 12) = 2048;
    *(v85 + 14) = sub_22F0D0FFC();

    *(v85 + 22) = 2048;
    *(v85 + 24) = 8;
    _os_log_impl(&dword_22EFE1000, v83, v84, "%s Timeline entries %ld will be reduced to %ld", v85, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x2318FE8B0](v86, -1, -1);
    MEMORY[0x2318FE8B0](v85, -1, -1);
  }

  else
  {
  }

  v107 = v127;
  v108 = v126;
  v109 = v117;
  *&v143 = v69;
  sub_22F0D103C();
  swift_getWitnessTable();
  sub_22F0D11CC();
  v143 = v145;
  v144 = v146;
  sub_22F0D13DC();
  swift_getWitnessTable();
  v106 = sub_22F0D104C();
  if (qword_27DAA0640 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v109, qword_27DAA21E0);
  v110 = [objc_opt_self() seconds];
  v111 = v115;
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v116 + 8))(v111, v109);
  sub_22F0D054C();
  v102 = v136;
  (*(v25 + 8))(v131, v136);
  v91 = 0;
LABEL_31:
  (*(v25 + 56))(v108, v91, 1, v102);
  *v107 = v106;
  v112 = type metadata accessor for StatusPrioritizer.TimeLine();
  return sub_22F073D30(v108, v107 + *(v112 + 28));
}

uint64_t sub_22F07078C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  result = (*(*(a2 - 8) + 16))(a3, a1, a2);
  *(a3 + v6) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22F07083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F0D05BC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_22F05F060(&qword_27DAA13D0);
        v21 = sub_22F0D0BBC();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

int *sub_22F070AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v55 = a1;
  v58 = a8;
  v17 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem();
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22F0D05BC();
  v56 = *(v57 - 8);
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v82 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  v67 = a7;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a1;
  v72 = a9;
  v73 = a6;
  v23 = sub_22F0D103C();
  WitnessTable = swift_getWitnessTable();
  v25 = v59;
  v53 = sub_22F05C5E4(sub_22F073C10, v66, v23, v17, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v26);
  v54 = v25;
  v74 = a2;
  v78 = v53;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CC0, &qword_22F0D8B90);
  v28 = swift_getWitnessTable();
  v29 = sub_22F0419F0(&qword_27DAA1CC8, &qword_27DAA1CC0, &qword_22F0D8B90);
  sub_22F0D18FC();
  v78 = v80;
  v79 = v81;
  v65 = a7;
  v61 = a7;
  v62 = sub_22F073C40;
  v63 = &v64;
  v74 = v23;
  v75 = v27;
  v76 = v28;
  v77 = v29;
  v30 = sub_22F0D154C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
  v59 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = swift_getWitnessTable();
  v33 = v30;
  v34 = v53;
  v35 = v54;
  v37 = sub_22F071458(sub_22F073C48, v60, v33, TupleTypeMetadata2, MEMORY[0x277D84A98], v32, MEMORY[0x277D84AC0], v36);

  (*(v56 + 16))(v82, v55, v57);
  v38 = *(v34 + 16);
  if (v38)
  {
    v56 = v37;
    v57 = v35;
    v74 = MEMORY[0x277D84F90];
    sub_22EFFC770(0, v38, 0);
    v39 = v74;
    v40 = v34 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v41 = *(v52 + 72);
    do
    {
      sub_22F073C6C(v40, v20);
      v42 = *&v20[*(v17 + 24)];
      sub_22F073CD0(v20, type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem);
      v74 = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22EFFC770((v43 > 1), v44 + 1, 1);
        v39 = v74;
      }

      *(v39 + 16) = v44 + 1;
      *(v39 + 8 * v44 + 32) = v42;
      v40 += v41;
      --v38;
    }

    while (v38);

    v37 = v56;
    v45 = *(v39 + 16);
    if (v45)
    {
      goto LABEL_7;
    }

LABEL_14:
    v46 = 0.0;
    goto LABEL_15;
  }

  v39 = MEMORY[0x277D84F90];
  v45 = *(MEMORY[0x277D84F90] + 16);
  if (!v45)
  {
    goto LABEL_14;
  }

LABEL_7:
  v46 = *(v39 + 32);
  v47 = v45 - 1;
  if (v47)
  {
    v48 = (v39 + 40);
    do
    {
      v49 = *v48++;
      v50 = v49;
      if (v46 < v49)
      {
        v46 = v50;
      }

      --v47;
    }

    while (v47);
  }

LABEL_15:

  return sub_22F06ECD0(v82, v37, v58, v46, a9);
}

int *sub_22F071020@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, char a4@<W5>, uint64_t a5@<X8>, double a6@<D0>)
{
  v41 = sub_22F0D05BC();
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v41);
  v33 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StatusRelevance();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2(a1);
  v36[16] = a4;
  v37 = a3;
  sub_22F0CFF1C();
  v21 = sub_22F06E99C(sub_22F074A84, v36, v20);
  v34[16] = a4;
  v35 = a3;
  v38[0] = v21;
  sub_22F0CFF1C();
  sub_22F073688(sub_22F074AB8, v34);
  if (!v6)
  {

    v22 = v38[0];
    if (a4)
    {
      if (*(v38[0] + 16))
      {
        sub_22EFFFB40(v38[0] + 32, v38);
        v23 = v39;
        v24 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        (*(v24 + 16))(v23, v24);
LABEL_7:
        StatusRelevance.score(at:)(a3);
        v28 = v27;
        sub_22F073CD0(v19, type metadata accessor for StatusRelevance);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_9:
        v29 = v33;
        v30 = v41;
        (*(v13 + 16))(v33, a3, v41);
        (*(v13 + 32))(a5, v29, v30);
        result = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem();
        *(a5 + result[5]) = v22;
        *(a5 + result[6]) = v28;
        *(a5 + result[7]) = a6;
        return result;
      }
    }

    else if (*(v38[0] + 16))
    {
      sub_22EFFFB40(v38[0] + 32, v38);
      v25 = v39;
      v26 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v26 + 8))(v25, v26);
      goto LABEL_7;
    }

    v28 = 0;
    goto LABEL_9;
  }

  result = sub_22F0D00CC();
  __break(1u);
  return result;
}

uint64_t sub_22F07132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 - 8) + 16))(a1, a2, a4);
  v5 = *(a3 + *(type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem() + 20));

  return sub_22F0CFF1C();
}

uint64_t sub_22F071398@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  result = a2(a3, a1, a1 + v6);
  *(a3 + v7) = result;
  return result;
}

uint64_t sub_22F071458(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_22F0D132C();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_22F0D0E6C();
  v70 = sub_22F0D165C();
  v65 = sub_22F0D166C();
  sub_22F0D160C();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_22F0D0E5C();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_22F0D134C();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);
        sub_22F0D00CC();
        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_22F0D164C();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_22F0D134C();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_22F0D164C();
      sub_22F0D134C();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);
    sub_22F0D00CC();
    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_22F071B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v189 = a4;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v186 = *(v187 - 8);
  v10 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v185 = &v184 - v11;
  v212 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem();
  v213 = *(v212 - 8);
  v12 = *(v213 + 64);
  MEMORY[0x28223BE20](v212);
  v220 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B88, &qword_22F0D8A80);
  v14 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v196 = &v184 - v15;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B90, &qword_22F0D8A88);
  v16 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203);
  v215 = &v184 - v17;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B68, &qword_22F0D8A70);
  v18 = *(*(v205 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v205);
  v202 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v184 - v21;
  v224 = type metadata accessor for StatusRelevance();
  v23 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v225 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22F0D05BC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v208 = &v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v184 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v199 = &v184 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v219 = &v184 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v210 = &v184 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v209 = &v184 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v188 = &v184 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v184 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v207 = &v184 - v47;
  MEMORY[0x28223BE20](v46);
  v206 = &v184 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v211 = &v184 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v218 = &v184 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v217 = &v184 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v221 = &v184 - v58;
  MEMORY[0x28223BE20](v57);
  v192 = &v184 - v59;
  v216 = a1;
  v60 = *(a1 + 16);
  v214 = a3;
  v191 = v22;
  v200 = v32;
  v193 = a2;
  v61 = MEMORY[0x277D84F90];
  if (a3)
  {
    if (!v60)
    {
      goto LABEL_14;
    }

    v204 = v45;
    v229 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v60, 0);
    v61 = v229;
    v62 = v216 + 32;
    v63 = (v26 + 16);
    v222 = (v26 + 32);
    v223 = v26;
    v64 = v206;
    do
    {
      sub_22EFFFB40(v62, &v226);
      v65 = v227;
      v66 = v228;
      __swift_project_boxed_opaque_existential_1(&v226, v227);
      v5 = v25;
      v67 = v225;
      (*(v66 + 16))(v65, v66);
      (*v63)(v64, v67 + *(v224 + 20), v5);
      sub_22F073CD0(v67, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v226);
      v229 = v61;
      v69 = *(v61 + 16);
      v68 = *(v61 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22EFFC72C(v68 > 1, v69 + 1, 1);
        v64 = v206;
        v61 = v229;
      }

      *(v61 + 16) = v69 + 1;
      (*(v223 + 32))(v61 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v69, v64, v5);
      v62 += 40;
      --v60;
      v25 = v5;
    }

    while (v60);
  }

  else
  {
    if (!v60)
    {
      goto LABEL_14;
    }

    v204 = v45;
    v229 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v60, 0);
    v61 = v229;
    v5 = (v216 + 32);
    v70 = (v26 + 16);
    v222 = (v26 + 32);
    v223 = v26;
    v71 = v207;
    do
    {
      sub_22EFFFB40(v5, &v226);
      v72 = v227;
      v73 = v228;
      __swift_project_boxed_opaque_existential_1(&v226, v227);
      v74 = v25;
      v75 = v225;
      (*(v73 + 8))(v72, v73);
      (*v70)(v71, v75 + *(v224 + 20), v74);
      sub_22F073CD0(v75, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v226);
      v229 = v61;
      v77 = *(v61 + 16);
      v76 = *(v61 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_22EFFC72C(v76 > 1, v77 + 1, 1);
        v71 = v207;
        v61 = v229;
      }

      *(v61 + 16) = v77 + 1;
      (*(v223 + 32))(v61 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v77, v71, v74);
      v5 += 40;
      --v60;
      v25 = v74;
    }

    while (v60);
  }

  a2 = v193;
  v22 = v191;
  v32 = v200;
  v45 = v204;
  v26 = v223;
LABEL_14:
  v78 = v192;
  sub_22F07083C(v61, v192);

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v184 = sub_22F0D0A1C();
  __swift_project_value_buffer(v184, qword_280CBEC40);
  v222 = *(v26 + 16);
  v223 = v26 + 16;
  v222(v45, a2, v25);
  v79 = v221;
  sub_22F049FF4(v78, v221, &qword_27DAA1440, &unk_22F0D65F0);
  v80 = sub_22F0D09FC();
  v81 = sub_22F0D124C();
  if (os_log_type_enabled(v80, v81))
  {
    LODWORD(v207) = v81;
    v5 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v226 = v206;
    *v5 = 136315394;
    sub_22F05F060(&qword_27DAA1670);
    v82 = sub_22F0D183C();
    v84 = v83;
    v85 = v45;
    v86 = *(v26 + 8);
    v86(v85, v25);
    v87 = sub_22F00A560(v82, v84, &v226);

    *(v5 + 4) = v87;
    *(v5 + 6) = 2080;
    v88 = v217;
    sub_22F049FF4(v79, v217, &qword_27DAA1440, &unk_22F0D65F0);
    v89 = (*(v26 + 48))(v88, 1, v25);
    v204 = v86;
    if (v89 == 1)
    {
      sub_22F003A4C(v88, &qword_27DAA1440, &unk_22F0D65F0);
      v90 = 0xE300000000000000;
      v91 = 7104878;
    }

    else
    {
      v91 = sub_22F0D04DC();
      v90 = v92;
      v86(v88, v25);
    }

    sub_22F003A4C(v221, &qword_27DAA1440, &unk_22F0D65F0);
    a2 = sub_22F00A560(v91, v90, &v226);

    *(v5 + 14) = a2;
    _os_log_impl(&dword_22EFE1000, v80, v207, "start date: %s, endDate: %s", v5, 0x16u);
    v93 = v206;
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v93, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);

    v22 = v191;
  }

  else
  {

    sub_22F003A4C(v79, &qword_27DAA1440, &unk_22F0D65F0);
    v204 = *(v26 + 8);
    (v204)(v45, v25);
  }

  v94 = *(v216 + 16);
  v95 = v215;
  v96 = MEMORY[0x277D84F90];
  if (v214)
  {
    if (!v94)
    {
      goto LABEL_35;
    }

    v229 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v94, 0);
    v96 = v229;
    a2 = v216 + 32;
    v221 = v26 + 32;
    v97 = v209;
    do
    {
      sub_22EFFFB40(a2, &v226);
      v98 = v227;
      v99 = v228;
      __swift_project_boxed_opaque_existential_1(&v226, v227);
      v100 = v25;
      v101 = v225;
      (*(v99 + 16))(v98, v99);
      v222(v97, v101 + *(v224 + 20), v100);
      sub_22F073CD0(v101, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v226);
      v229 = v96;
      v103 = *(v96 + 16);
      v102 = *(v96 + 24);
      v5 = (v103 + 1);
      if (v103 >= v102 >> 1)
      {
        sub_22EFFC72C(v102 > 1, v103 + 1, 1);
        v97 = v209;
        v96 = v229;
      }

      *(v96 + 16) = v5;
      (*(v26 + 32))(v96 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v103, v97, v100);
      a2 += 40;
      --v94;
      v25 = v100;
    }

    while (v94);
  }

  else
  {
    if (!v94)
    {
      goto LABEL_35;
    }

    v229 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v94, 0);
    v96 = v229;
    v5 = (v216 + 32);
    v221 = v26 + 32;
    v104 = v210;
    do
    {
      sub_22EFFFB40(v5, &v226);
      v105 = v227;
      v106 = v228;
      __swift_project_boxed_opaque_existential_1(&v226, v227);
      v107 = v25;
      v108 = v225;
      (*(v106 + 8))(v105, v106);
      v222(v104, v108 + *(v224 + 20), v107);
      sub_22F073CD0(v108, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v226);
      v229 = v96;
      v110 = *(v96 + 16);
      v109 = *(v96 + 24);
      a2 = v110 + 1;
      if (v110 >= v109 >> 1)
      {
        sub_22EFFC72C(v109 > 1, v110 + 1, 1);
        v104 = v210;
        v96 = v229;
      }

      *(v96 + 16) = a2;
      (*(v26 + 32))(v96 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v110, v104, v107);
      v5 += 40;
      --v94;
      v25 = v107;
    }

    while (v94);
  }

  v95 = v215;
  v22 = v191;
  v32 = v200;
LABEL_35:
  v111 = v218;
  sub_22F07083C(v96, v218);

  v112 = *(v26 + 48);
  v210 = (v26 + 48);
  v209 = v112;
  if ((v112)(v111, 1, v25) == 1)
  {
    sub_22F003A4C(v111, &qword_27DAA1440, &unk_22F0D65F0);
    v113 = v204;
LABEL_64:
    v161 = v193;
    v162 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1708, &qword_22F0D8A90);
    v163 = *(v213 + 72);
    v164 = (*(v213 + 80) + 32) & ~*(v213 + 80);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_22F0D2BF0;
    v165 = a2 + v164;
    v166 = v199;
    sub_22F0D04FC();
    sub_22F0D050C();
    v168 = v167;
    v113(v166, v25);
    v222(v165, v161, v25);
    v169 = v212;
    *(v165 + *(v212 + 20)) = v162;
    *(v165 + *(v169 + 24)) = 0;
    *(v165 + *(v169 + 28)) = v168;
    sub_22F003A4C(v192, &qword_27DAA1440, &unk_22F0D65F0);
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B98, &qword_22F0D8A98);
    v171 = v189;
    result = (*(v26 + 56))(v189 + *(v170 + 28), 1, 1, v25);
    goto LABEL_74;
  }

  v114 = v188;
  v224 = *(v26 + 32);
  (v224)(v188, v111, v25);
  if ((sub_22F0D053C() & 1) == 0)
  {
    v113 = v204;
    (v204)(v114, v25);
    goto LABEL_64;
  }

  v115 = v205;
  v116 = &v22[*(v205 + 36)];
  sub_22F0D054C();
  if (a5 != 0.0)
  {
    v117 = v115;
    v222(v22, v193, v25);
    *&v22[*(v115 + 40)] = a5;
    v118 = v202;
    sub_22F049FF4(v22, v202, &qword_27DAA1B68, &qword_22F0D8A70);
    v119 = v203;
    v120 = *(v203 + 44);
    v221 = v26 + 32;
    v121 = v95 + v120;
    v122 = *(v197 + 48);
    v123 = v224;
    (v224)(v95 + v120 + v122, v118, v25);
    v124 = *(v117 + 36);
    v206 = v119[9];
    v123(v95 + v206, v118 + v124, v25);
    v125 = *(v118 + *(v117 + 40));
    v195 = v119[10];
    *(v95 + v195) = v125;
    v190 = v119[12];
    *(v95 + v190) = 0;
    v217 = v122;
    v222(v95, v121 + v122, v25);
    v205 = 0;
    LODWORD(v202) = 0;
    v198 = 0;
    *v121 = 0;
    v218 = v121;
    *(v121 + 8) = 0;
    v201 = v26 + 8;
    v194 = (v26 + 40);
    v207 = (v26 + 56);
    a2 = MEMORY[0x277D84F90];
    LODWORD(v203) = v214 & 1;
    v126 = v219;
    while (1)
    {
      v222(v126, v218 + v217, v25);
      sub_22F05F060(&qword_27DAA13D0);
      if (v125 <= 0.0)
      {
        if ((sub_22F0D0BDC() & 1) == 0)
        {
LABEL_42:
          v127 = v218;
          v128 = v196;
          sub_22F049FF4(v218, v196, &qword_27DAA1B88, &qword_22F0D8A80);
          v129 = *v128;
          v130 = *(v128 + 8);
          v131 = *(v197 + 48);
          sub_22F05F060(&qword_27DAA1BA0);
          v132 = v199;
          v133 = sub_22F0D135C();
          LODWORD(v130) = v134;
          (v204)(v128 + v131, v25);
          v205 = v133;
          *v127 = v133;
          LODWORD(v202) = v130;
          *(v127 + 8) = v130 & 1;
          v135 = v132;
          v32 = v200;
          (*v194)(v127 + v217, v135, v25);
          v136 = v211;
          v137 = v211;
          v138 = v219;
LABEL_48:
          (v224)(v137, v138, v25);
          v139 = 0;
          goto LABEL_50;
        }
      }

      else if ((sub_22F0D0BCC() & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_22F05F060(&qword_27DAA1920);
      if ((sub_22F0D0C2C() & 1) != 0 && ((v198 ^ 1) & 1) != 0 && v202 & 1 | (v205 != 0x8000000000000000))
      {
        v198 = 1;
        *(v95 + v190) = 1;
        v136 = v211;
        v137 = v211;
        v138 = v126;
        goto LABEL_48;
      }

      (v204)(v126, v25);
      v139 = 1;
      v136 = v211;
LABEL_50:
      v5 = *v207;
      (*v207)(v136, v139, 1, v25);
      if ((v209)(v136, 1, v25) == 1)
      {
        sub_22F003A4C(v191, &qword_27DAA1B68, &qword_22F0D8A70);
        sub_22F003A4C(v95, &qword_27DAA1B90, &qword_22F0D8A88);
        if (qword_280CBDB28 == -1)
        {
          goto LABEL_66;
        }

        goto LABEL_76;
      }

      v140 = a2;
      v141 = (v224)(v32, v136, v25);
      MEMORY[0x28223BE20](v141);
      v142 = v32;
      v143 = v203;
      *(&v184 - 16) = v203;
      *(&v184 - 1) = v142;
      v144 = v216;
      sub_22F0CFF1C();
      v145 = sub_22F06E99C(sub_22F074A84, (&v184 - 4), v144);
      v146 = MEMORY[0x28223BE20](v145);
      *(&v184 - 16) = v143;
      v32 = v142;
      *(&v184 - 1) = v142;
      v226 = v146;
      sub_22F0CFF1C();
      sub_22F073688(sub_22F074AB8, (&v184 - 4));

      v147 = v226;
      if (v214)
      {
        a2 = v140;
        if (*(v226 + 16))
        {
          sub_22EFFFB40(v226 + 32, &v226);
          v148 = v227;
          v149 = v228;
          __swift_project_boxed_opaque_existential_1(&v226, v227);
          v150 = v225;
          (*(v149 + 16))(v148, v149);
LABEL_56:
          StatusRelevance.score(at:)(v32);
          v154 = v153;
          sub_22F073CD0(v150, type metadata accessor for StatusRelevance);
          __swift_destroy_boxed_opaque_existential_1Tm(&v226);
          goto LABEL_58;
        }
      }

      else
      {
        a2 = v140;
        if (*(v226 + 16))
        {
          sub_22EFFFB40(v226 + 32, &v226);
          v151 = v227;
          v152 = v228;
          __swift_project_boxed_opaque_existential_1(&v226, v227);
          v150 = v225;
          (*(v152 + 8))(v151, v152);
          goto LABEL_56;
        }
      }

      v154 = 0;
LABEL_58:
      v95 = v215;
      v155 = v208;
      v156 = v224;
      (v224)(v208, v32, v25);
      v157 = v220;
      v156(v220, v155, v25);
      v158 = v212;
      *(v157 + *(v212 + 20)) = v147;
      *(v157 + *(v158 + 24)) = v154;
      *(v157 + *(v158 + 28)) = a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_22F03D318(0, *(a2 + 16) + 1, 1, a2);
      }

      v126 = v219;
      v160 = *(a2 + 16);
      v159 = *(a2 + 24);
      if (v160 >= v159 >> 1)
      {
        a2 = sub_22F03D318(v159 > 1, v160 + 1, 1, a2);
      }

      *(a2 + 16) = v160 + 1;
      sub_22F0737C0(v220, a2 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v160);
    }
  }

  __break(1u);
LABEL_76:
  swift_once();
LABEL_66:
  __swift_project_value_buffer(v184, qword_280CBDB30);
  sub_22F0CFF1C();
  v173 = sub_22F0D09FC();
  v174 = sub_22F0D124C();
  v175 = os_log_type_enabled(v173, v174);
  v176 = v188;
  if (v175)
  {
    v177 = swift_slowAlloc();
    *v177 = 134218240;
    *(v177 + 4) = *(a2 + 16);

    *(v177 + 12) = 2048;
    *(v177 + 14) = 8;
    _os_log_impl(&dword_22EFE1000, v173, v174, "Timeline entries %ld, max used will be %ld", v177, 0x16u);
    MEMORY[0x2318FE8B0](v177, -1, -1);
  }

  else
  {
  }

  if (*(a2 + 16) >= 9uLL)
  {
    sub_22F06199C(a2, a2 + ((*(v213 + 80) + 32) & ~*(v213 + 80)), 0, 0x11uLL);
    v179 = v178;

    a2 = v179;
  }

  v180 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B98, &qword_22F0D8A98) + 28);
  if (qword_27DAA0640 != -1)
  {
    swift_once();
  }

  v181 = v187;
  __swift_project_value_buffer(v187, qword_27DAA21E0);
  v182 = [objc_opt_self() seconds];
  v183 = v185;
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v186 + 8))(v183, v181);
  v171 = v189;
  sub_22F0D054C();
  (v204)(v176, v25);
  sub_22F003A4C(v192, &qword_27DAA1440, &unk_22F0D65F0);
  result = (v5)(v171 + v180, 0, 1, v25);
LABEL_74:
  *v171 = a2;
  return result;
}

uint64_t sub_22F073688(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22F0BFC24(v5);
  }

  v7 = v5[2];
  result = sub_22F073DA0(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_22F07378C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22F0737C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of StatusPrioritizer.timeline(statuses:fromDate:interval:lockScreenCircular:)()
{
  return (*(*v0 + 96))();
}

{
  return (*(*v0 + 136))();
}

uint64_t dispatch thunk of StatusPrioritizer.timeline<A>(from:fromDate:interval:applying:lockScreenCircular:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 120))();
}

void sub_22F073950()
{
  sub_22F0D05BC();
  if (v0 <= 0x3F)
  {
    sub_22F0739E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F0739E4()
{
  if (!qword_27DAA1BB8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA0DB8, &qword_22F0D4F98);
    v0 = sub_22F0D103C();
    if (!v1)
    {
      atomic_store(v0, qword_27DAA1BB8);
    }
  }
}

uint64_t sub_22F073A50(uint64_t a1)
{
  result = sub_22F0D05BC();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
    swift_getTupleTypeMetadata2();
    result = sub_22F0D103C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22F073B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_22F0D103C();
  if (v2 <= 0x3F)
  {
    sub_22F05B668();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

int *sub_22F073C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_22F071020(a1, *(v2 + 32), *(v2 + 48), *(v2 + 64), a2, *(v2 + 56));
}

uint64_t sub_22F073C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_22F071398(a1, *(v2 + 24), a2);
}

uint64_t sub_22F073C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F073CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F073D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F073DA0(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_22F0D182C();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DB8, &qword_22F0D4F98);
        v8 = sub_22F0D0FCC();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_22F073FE4(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_22F073EB8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_22F073EB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_22EFFFB40(v9, v17);
      sub_22EFFFB40(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_22EFE6B9C(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_22EFE6B9C(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_22F073FE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v101 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v8 = *v101;
    if (*v101)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *v7;
      sub_22EFFFB40(*v7 + 40 * v12, v106);
      sub_22EFFFB40(v13 + 40 * v11, v105);
      v14 = a4(v106, v105);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
      }

      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v106);
      v16 = 0;
      v17 = v11;
      v18 = v11 - v8 + 2;
      v97 = v17;
      v19 = 40 * v17;
      v20 = v13 + 40 * v17 + 80;
      do
      {
        if (!(v18 + v16))
        {
          v11 = v97;
          v22 = v8 - 1;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_22EFFFB40(v20, v106);
        sub_22EFFFB40(v20 - 40, v105);
        v21 = a4(v106, v105);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v106);
        ++v16;
        v20 += 40;
      }

      while (((v15 ^ v21) & 1) == 0);
      v11 = v97;
      v22 = v97 + v16;
      v8 = v97 + v16 + 1;
      if ((v15 & 1) == 0)
      {
LABEL_15:
        v7 = a3;
        goto LABEL_23;
      }

LABEL_13:
      if (v8 < v11)
      {
        goto LABEL_128;
      }

      if (v11 > v22)
      {
        goto LABEL_15;
      }

      v23 = 40 * v8 - 40;
      v24 = v11;
      v25 = v8;
      do
      {
        if (v24 != --v25)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v26 = v30 + v19;
          v27 = v30 + v23;
          sub_22EFE6B9C((v30 + v19), v106);
          v28 = *(v27 + 32);
          v29 = *(v27 + 16);
          *v26 = *v27;
          *(v26 + 16) = v29;
          *(v26 + 32) = v28;
          result = sub_22EFE6B9C(v106, v27);
        }

        ++v24;
        v23 -= 40;
        v19 += 40;
      }

      while (v24 < v25);
      v7 = a3;
      v11 = v97;
    }

LABEL_23:
    v31 = *(v7 + 8);
    if (v8 >= v31)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v31)
    {
      v32 = *(v7 + 8);
    }

    else
    {
      v32 = v11 + a6;
    }

    if (v32 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v32)
    {
LABEL_32:
      v33 = v8;
    }

    else
    {
      v81 = *v7;
      v82 = v81 + 40 * v8;
      v98 = v11;
      v100 = v32;
      v83 = v11 - v8;
      do
      {
        v95 = v83;
        v84 = v82;
        v85 = v82;
        do
        {
          sub_22EFFFB40(v85, v106);
          sub_22EFFFB40(v85 - 40, v105);
          v86 = a4(v106, v105);
          if (v6)
          {
            goto LABEL_105;
          }

          v87 = v86;
          __swift_destroy_boxed_opaque_existential_1Tm(v105);
          result = __swift_destroy_boxed_opaque_existential_1Tm(v106);
          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v81)
          {
            goto LABEL_130;
          }

          sub_22EFE6B9C(v85, v106);
          v88 = *(v85 - 24);
          *v85 = *(v85 - 40);
          *(v85 + 16) = v88;
          *(v85 + 32) = *(v85 - 8);
          sub_22EFE6B9C(v106, v85 - 40);
          v85 -= 40;
        }

        while (!__CFADD__(v83++, 1));
        ++v8;
        v82 = v84 + 40;
        v83 = v95 - 1;
        v33 = v100;
      }

      while (v8 != v100);
      v7 = a3;
      v11 = v98;
    }

    v8 = 40;
    if (v33 < v11)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F03C658(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_22F03C658((v34 > 1), v35 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v35];
    *(v37 + 4) = v11;
    *(v37 + 5) = v33;
    v38 = *v101;
    if (!*v101)
    {
      goto LABEL_133;
    }

    v99 = v33;
    if (v35)
    {
      break;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v99;
    if (v99 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    if (v36 >= 4)
    {
      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_110;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_111;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_113;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_116;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v36 == 3)
    {
      v40 = *(v10 + 4);
      v41 = *(v10 + 5);
      v50 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      v43 = v50;
LABEL_53:
      if (v43)
      {
        goto LABEL_112;
      }

      v56 = &v10[16 * v36];
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_115;
      }

      v62 = &v10[16 * v39 + 32];
      v64 = *v62;
      v63 = *(v62 + 1);
      v50 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v50)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v60, v65))
      {
        goto LABEL_119;
      }

      if (v60 + v65 >= v42)
      {
        if (v42 < v65)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v66 = &v10[16 * v36];
    v68 = *v66;
    v67 = *(v66 + 1);
    v50 = __OFSUB__(v67, v68);
    v60 = v67 - v68;
    v61 = v50;
LABEL_67:
    if (v61)
    {
      goto LABEL_114;
    }

    v69 = &v10[16 * v39];
    v71 = *(v69 + 4);
    v70 = *(v69 + 5);
    v50 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v50)
    {
      goto LABEL_117;
    }

    if (v72 < v60)
    {
      goto LABEL_3;
    }

LABEL_74:
    v77 = v39 - 1;
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_129;
    }

    v78 = *&v10[16 * v77 + 32];
    v79 = *&v10[16 * v39 + 40];
    sub_22F0746D0((*v7 + 40 * v78), (*v7 + 40 * *&v10[16 * v39 + 32]), *v7 + 40 * v79, v38, a4, a5);
    if (v6)
    {
    }

    if (v79 < v78)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F0BE90C(v10);
    }

    if (v77 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v80 = &v10[16 * v77];
    *(v80 + 4) = v78;
    *(v80 + 5) = v79;
    v107 = v10;
    result = sub_22F0BE880(v39);
    v10 = v107;
    v36 = *(v107 + 2);
    if (v36 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_22F0BE90C(v10);
  v10 = result;
LABEL_95:
  v107 = v10;
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
  }

  v91 = v7;
  v7 = 40;
  while (*v91)
  {
    v92 = *&v10[16 * v90];
    v93 = *&v10[16 * v90 + 24];
    sub_22F0746D0((*v91 + 40 * v92), (*v91 + 40 * *&v10[16 * v90 + 16]), *v91 + 40 * v93, v8, a4, a5);
    if (v6)
    {
    }

    if (v93 < v92)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F0BE90C(v10);
    }

    if (v90 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v94 = &v10[16 * v90];
    *v94 = v92;
    *(v94 + 1) = v93;
    v107 = v10;
    result = sub_22F0BE880(v90 - 1);
    v10 = v107;
    v90 = *(v107 + 2);
    if (v90 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_22F0746D0(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *), uint64_t a6)
{
  v42[6] = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 40;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 40;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[40 * v12] <= a4)
    {
      memmove(a4, __dst, 40 * v12);
    }

    v15 = v7 + 40 * v12;
    if (v11 < 40)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_42;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      sub_22EFFFB40(v9, v42);
      sub_22EFFFB40(v7, v41);
      v20 = a5(v42, v41);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v36 = (v15 - v7) / 40;
        if (v10 < v7 || v10 >= v7 + 40 * v36 || v10 != v7)
        {
          v35 = 40 * v36;
          v34 = v10;
          goto LABEL_46;
        }

        return 1;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      if (v21)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 40;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = *v16;
    v19 = *(v16 + 1);
    *(v10 + 4) = *(v16 + 4);
    *v10 = v18;
    *(v10 + 1) = v19;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v14] <= a4)
  {
    memmove(a4, __src, 40 * v14);
  }

  v15 = v7 + 40 * v14;
  if (v13 < 40 || v9 <= v10)
  {
LABEL_42:
    v37 = (v15 - v7) / 40;
    if (v9 < v7 || v9 >= v7 + 40 * v37 || v9 != v7)
    {
      v35 = 40 * v37;
      v34 = v9;
      goto LABEL_46;
    }

    return 1;
  }

  v22 = -v7;
LABEL_22:
  v39 = v9;
  v9 -= 40;
  v23 = v15 - 40;
  v24 = v22 + v15;
  v8 -= 40;
  while (1)
  {
    sub_22EFFFB40(v23, v42);
    sub_22EFFFB40(v9, v41);
    v27 = a5(v42, v41);
    if (v6)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    if (v28)
    {
      if (v8 + 40 != v39)
      {
        v31 = *v9;
        v32 = *(v9 + 1);
        *(v8 + 32) = *(v9 + 4);
        *v8 = v31;
        *(v8 + 16) = v32;
      }

      v15 = v23 + 40;
      if (v23 + 40 <= v7 || (v22 = -v7, v9 <= v10))
      {
        v15 = v23 + 40;
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (v8 + 40 != v23 + 40)
    {
      v29 = *v23;
      v30 = *(v23 + 16);
      *(v8 + 32) = *(v23 + 32);
      *v8 = v29;
      *(v8 + 16) = v30;
    }

    v25 = v23 - 40;
    v24 -= 40;
    v8 -= 40;
    v26 = v23 > v7;
    v23 -= 40;
    if (!v26)
    {
      v15 = v25 + 40;
      v9 = v39;
      goto LABEL_42;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  v33 = v24 / 40;
  v34 = v39;
  if (v39 < v7 || v39 >= v7 + 40 * v33 || v39 != v7)
  {
    v35 = 40 * v33;
LABEL_46:
    memmove(v34, v7, v35);
  }

  return 1;
}

uint64_t static StatusCoalescer.fetchStatus(for:statusFetchers:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_22F0D09BC();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_22F0D05BC();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v10 = sub_22F0D0A1C();
  *(v3 + 104) = v10;
  v11 = *(v10 - 8);
  *(v3 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v13 = sub_22F0D09EC();
  *(v3 + 128) = v13;
  v14 = *(v13 - 8);
  *(v3 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F074CB8, 0, 0);
}

uint64_t sub_22F074CB8()
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[4];
  v6 = __swift_project_value_buffer(v4, qword_280CBEC40);
  (*(v3 + 16))(v2, v6, v4);
  sub_22F0D09CC();
  v7 = *(v5 + 16);
  v0[19] = v7;
  sub_22F0D05AC();
  if (qword_280CBDBB0 != -1)
  {
    swift_once();
  }

  v0[20] = __swift_project_value_buffer(v0[13], qword_280CBDBB8);
  v8 = sub_22F0D09FC();
  v9 = sub_22F0D122C();
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_9;
  }

  v10 = v7;
  v11 = v0[5];
  v12 = swift_slowAlloc();
  *v12 = 134218240;
  *(v12 + 4) = v11;
  *(v12 + 12) = 2048;
  if (v7 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return MEMORY[0x282200740]();
  }

  *(v12 + 14) = v10;
  v13 = v9;
  v14 = v12;
  _os_log_impl(&dword_22EFE1000, v8, v13, "Max time per source %f in %ld sources", v12, 0x16u);
  MEMORY[0x2318FE8B0](v14, -1, -1);
LABEL_9:
  v15 = v0[5];
  v17 = v0[3];
  v16 = v0[4];

  v0[2] = sub_22F07D7A0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD0, &qword_22F0D8BA0);
  v18 = swift_task_alloc();
  v0[21] = v18;
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v17;
  v18[5] = v0 + 2;
  v19 = *(MEMORY[0x277D859B8] + 4);
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = sub_22F074F7C;

  return MEMORY[0x282200740]();
}

void sub_22F074F7C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);

    MEMORY[0x2822009F8](sub_22F0750B8, 0, 0);
  }
}

uint64_t sub_22F0750B8()
{
  v44 = v0;
  v1 = v0[18];
  v2 = v0[8];
  v3 = v0[4];
  sub_22F0CFF1C();
  sub_22F0D09AC();
  v4 = sub_22F0D09DC();
  v5 = sub_22F0D12AC();
  if (sub_22F0D130C())
  {
    v6 = v0[19];
    v7 = v0[8];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v6;

    v10 = sub_22F0D099C();
    _os_signpost_emit_with_name_impl(&dword_22EFE1000, v4, v5, v10, "StatusCoalescer", "Completed for %ld statues", v9, 0xCu);
    MEMORY[0x2318FE8B0](v9, -1, -1);
  }

  else
  {
    v11 = v0[4];
  }

  v12 = v0[20];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v16 + 16))(v14, v13, v15);
  v17 = sub_22F0D09FC();
  v18 = sub_22F0D124C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[17];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[11];
  v24 = v0[12];
  v26 = v0[9];
  v25 = v0[10];
  if (v19)
  {
    v42 = v0[16];
    v27 = swift_slowAlloc();
    v41 = v24;
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_22F00A560(0xD000000000000028, 0x800000022F0DEC80, &v43);
    *(v27 + 12) = 2048;
    sub_22F0D056C();
    v30 = v29;
    v31 = *(v25 + 8);
    v31(v23, v26);
    *(v27 + 14) = -v30;
    _os_log_impl(&dword_22EFE1000, v17, v18, "%s elapsed %f", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x2318FE8B0](v28, -1, -1);
    MEMORY[0x2318FE8B0](v27, -1, -1);

    v31(v41, v26);
    (*(v20 + 8))(v21, v42);
  }

  else
  {

    v32 = *(v25 + 8);
    v32(v23, v26);
    v32(v24, v26);
    (*(v20 + 8))(v21, v22);
  }

  v33 = v0[18];
  v34 = v0[15];
  v36 = v0[11];
  v35 = v0[12];
  v37 = v0[8];
  v38 = v0[2];

  v39 = v0[1];

  return v39(v38);
}