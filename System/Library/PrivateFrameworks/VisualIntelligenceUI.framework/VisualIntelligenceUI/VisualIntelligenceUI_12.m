uint64_t sub_21E06897C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 9] & ~v6);
    }

    v17 = a1[8];
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_21E068AD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFE)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 9] & ~v9;

        v17(v18);
      }

      else if (a2 > 0xFE)
      {
        a1[8] = 0;
        *a1 = a2 - 255;
      }

      else
      {
        a1[8] = -a2;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_21E068CCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21E068D1C()
{
  result = qword_27CEABA60;
  if (!qword_27CEABA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABA68);
    sub_21E068DD4();
    sub_21DF23E5C(&qword_27CEABAB0, &qword_27CEAB9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABA60);
  }

  return result;
}

unint64_t sub_21E068DD4()
{
  result = qword_27CEABA70;
  if (!qword_27CEABA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABA78);
    sub_21E068E8C();
    sub_21DF23E5C(&qword_27CEABAA0, &qword_27CEABAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABA70);
  }

  return result;
}

unint64_t sub_21E068E8C()
{
  result = qword_27CEABA80;
  if (!qword_27CEABA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABA88);
    sub_21DF23E5C(&qword_27CEABA90, &qword_27CEABA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABA80);
  }

  return result;
}

uint64_t sub_21E068F44(unint64_t *a1, void (*a2)(uint64_t))
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

size_t NewActionModel.dataDetectors.getter()
{
  v0 = sub_21E13E3F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_21DFE76F0(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21DF23614(v6, &qword_27CEA6D98);
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v10, v13, v7);
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x277D78F38])
  {
LABEL_7:
    v20 = *(v8 + 8);
    v20(v13, v7);
    v20(v10, v7);
    return 0;
  }

  (*(v8 + 96))(v10, v7);
  (*(v1 + 32))(v3, v10, v0);
  v14 = sub_21E13E3E4();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = sub_21DF5BDD8(*(v14 + 16), 0);
    v18 = *(sub_21E13F274() - 8);
    v19 = v17;
    v10 = sub_21DF5ECBC(&v23, (v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80))), v16, v15);
    sub_21DF5F790();
    if (v10 != v16)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  (*(v1 + 8))(v3, v0);
  (*(v8 + 8))(v13, v7);
  return v19;
}

char *NewActionModel.dataDetectorsAsItems(entity:filterForUI:)(uint64_t a1, char a2)
{
  v106 = a1;
  v98 = *v2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B0);
  MEMORY[0x28223BE20](v97);
  v96 = v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = v86 - v8;
  MEMORY[0x28223BE20](v9);
  v95 = v86 - v10;
  v94 = sub_21E13D344();
  v11 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_21E13F1B4();
  v13 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_21E13F1F4();
  v15 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v86 - v18;
  v20 = sub_21E13F274();
  v114 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v88 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v108 = v86 - v23;
  MEMORY[0x28223BE20](v24);
  v104 = v86 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v86 - v27;
  v29 = NewActionModel.dataDetectors.getter();
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v30 = v29;
  v110 = v20;
  if ((a2 & 1) == 0)
  {
LABEL_18:
    v116 = v30;

    sub_21E06B17C(&v116);

    v44 = v100;
    if (*(v116 + 2))
    {
      v45 = *(v116 + 2);
      v99 = 0;
      v113 = *(v114 + 16);
      v46 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v86[1] = v116;
      v47 = &v116[v46];
      v92 = (v114 + 56);
      v91 = (v11 + 8);
      v109 = *(v114 + 72);
      v90 = (v114 + 48);
      v87 = (v114 + 32);
      v114 += 16;
      v111 = (v114 - 8);
      v101 = (v13 + 1);
      v112 = MEMORY[0x277D84F90];
      v48 = v108;
      v49 = v45;
      v113(v108, &v116[v46], v20);
      while (1)
      {
        v50 = sub_21E13F224();
        if (v51)
        {
          v52 = v50;
          v53 = v51;
          v54 = sub_21E13F254();
          if (v55)
          {
            v56 = v55;
            v104 = v47;
            v105 = v49;
            v103 = v54;
            v57 = swift_allocObject();
            *(v57 + 32) = 1;
            *(v57 + 40) = 0;
            *(v57 + 48) = 0;
            *(v57 + 72) = 0;
            *(v57 + 80) = 0;
            v58 = *v92;
            (*v92)(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable, 1, 1, v20);
            v59 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
            v60 = sub_21E13EEE4();
            (*(*(v60 - 8) + 56))(v57 + v59, 1, 1, v60);
            *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected) = 0;
            *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) = 1;
            sub_21E13D3F4();
            v61 = v93;
            _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
            v62 = sub_21E13D314();
            v64 = v63;
            (*v91)(v61, v94);
            *(v57 + 16) = v62;
            *(v57 + 24) = v64;
            *(v57 + 56) = v52;
            *(v57 + 64) = v53;
            *(v57 + 88) = v103;
            *(v57 + 96) = v56;
            v65 = v95;
            v113(v95, v108, v20);
            v58(v65, 0, 1, v20);
            v66 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
            swift_beginAccess();
            v67 = v107;
            sub_21E06C7C8(v57 + v66, v107);
            v68 = *(v97 + 48);
            v69 = v96;
            sub_21E06C7C8(v67, v96);
            sub_21E06C7C8(v65, v69 + v68);
            v70 = *v90;
            if ((*v90)(v69, 1, v20) == 1)
            {
              v71 = v70(v69 + v68, 1, v20);
              v47 = v104;
              if (v71 == 1)
              {
                sub_21DF23614(v69, &qword_27CEA77B8);
                sub_21DF23614(v107, &qword_27CEA77B8);
                goto LABEL_36;
              }

LABEL_33:
              sub_21DF23614(v69, &qword_27CEA77B0);
              sub_21DF23614(v107, &qword_27CEA77B8);
              goto LABEL_34;
            }

            v75 = v89;
            sub_21E06C7C8(v69, v89);
            if (v70(v69 + v68, 1, v20) == 1)
            {
              (*v111)(v75, v20);
              v47 = v104;
              goto LABEL_33;
            }

            v78 = v88;
            (*v87)(v88, v69 + v68, v20);
            sub_21E06C8C4(&qword_27CEA77C0, MEMORY[0x277D796D0]);
            v79 = sub_21E142074();
            v80 = *v111;
            (*v111)(v78, v20);
            v80(v75, v20);
            sub_21DF23614(v69, &qword_27CEA77B8);
            sub_21DF23614(v107, &qword_27CEA77B8);
            v47 = v104;
            if (v79)
            {
LABEL_36:
              swift_beginAccess();
              sub_21E06C854(v65, v57 + v66);
              swift_endAccess();
            }

            else
            {
LABEL_34:
              KeyPath = swift_getKeyPath();
              MEMORY[0x28223BE20](KeyPath);
              v86[-2] = v57;
              v86[-1] = v65;
              v115 = v57;
              sub_21E06C8C4(&qword_280F6B830, type metadata accessor for NewActionModel);
              v77 = v99;
              sub_21E13D3B4();
              v99 = v77;
            }

            v44 = v100;
            v49 = v105;
            sub_21DF23614(v65, &qword_27CEA77B8);
            v20 = v110;
            v48 = v108;
            (*v111)(v108, v110);

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v81 = v112;
            }

            else
            {
              v81 = sub_21E06ABFC(0, *(v112 + 2) + 1, 1, v112);
            }

            v83 = *(v81 + 2);
            v82 = *(v81 + 3);
            if (v83 >= v82 >> 1)
            {
              v81 = sub_21E06ABFC((v82 > 1), v83 + 1, 1, v81);
            }

            *(v81 + 2) = v83 + 1;
            v112 = v81;
            v84 = &v81[16 * v83];
            *(v84 + 4) = v106;
            *(v84 + 5) = v57;
            goto LABEL_21;
          }
        }

        sub_21E13EBD4();
        v72 = sub_21E13F1A4();
        v73 = sub_21E142564();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_21DF05000, v72, v73, "Attempting to create a DataDetectorActionable, but the title or image name are missing", v74, 2u);
          MEMORY[0x223D540B0](v74, -1, -1);
        }

        (*v101)(v44, v102);
        (*v111)(v48, v20);
LABEL_21:
        v47 += v109;
        if (!--v49)
        {

          return v112;
        }

        v113(v48, v47, v20);
      }
    }

    return MEMORY[0x277D84F90];
  }

  v92 = v13;
  v99 = v11;
  v113 = *(v29 + 16);
  if (!v113)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_17:

    v30 = v32;
    v11 = v99;
    v13 = v92;
    goto LABEL_18;
  }

  v31 = 0;
  v103 = (v15 + 8);
  v101 = (v114 + 32);
  v111 = (v114 + 8);
  v112 = (v114 + 16);
  v32 = MEMORY[0x277D84F90];
  while (v31 < *(v30 + 2))
  {
    v33 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v34 = *(v114 + 72);
    (*(v114 + 16))(v28, &v30[v33 + v34 * v31], v20);
    sub_21E13F244();
    v35 = sub_21E13F1D4();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v19, 1, v35) == 1)
    {
      sub_21DF23614(v19, &qword_27CEA76B8);
    }

    else
    {
      v37 = sub_21E13F1C4();
      v38 = (*(v36 + 8))(v19, v35);
      v39 = v105;
      MEMORY[0x223D52DD0](v38);

      LOBYTE(v37) = sub_21E13F1E4();
      (*v103)(v39, v109);
      if (v37)
      {
        v40 = *v101;
        (*v101)(v104, v28, v110);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DF5BF68(0, *(v32 + 2) + 1, 1);
          v32 = v116;
        }

        v43 = *(v32 + 2);
        v42 = *(v32 + 3);
        if (v43 >= v42 >> 1)
        {
          sub_21DF5BF68(v42 > 1, v43 + 1, 1);
          v32 = v116;
        }

        *(v32 + 2) = v43 + 1;
        v20 = v110;
        (v40)(&v32[v33 + v43 * v34], v104, v110);
        goto LABEL_7;
      }
    }

    v20 = v110;
    (*v111)(v28, v110);
LABEL_7:
    if (v113 == ++v31)
    {
      goto LABEL_17;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

char *sub_21E06A15C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAE0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21E06A260(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7728);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_21E06A364(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA84F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E06A498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_21E06A5D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7780);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21E06A6D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAE8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7768);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21E06A830(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

size_t sub_21E06AA0C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7748);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740) - 8);
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

char *sub_21E06ABFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76F0);
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

void *sub_21E06AD08(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E06AE50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2C0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21E06AF54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0);
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

char *sub_21E06B060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_21E06B17C(void **a1)
{
  v2 = *(sub_21E13F274() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21E101928(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21E06B224(v5);
  *a1 = v3;
}

void sub_21E06B224(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21E142AA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21E13F274();
        v6 = sub_21E142314();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21E13F274() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21E06B5F8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21E06B350(0, v2, 1, a1);
  }
}

void sub_21E06B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21E13F274();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_21E13F264();
      v28 = sub_21E13F264();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21E06B5F8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_21E13F274();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_21E101914(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_21E06BFDC(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_21E101914(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_21E101888(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_21E13F264();
      v126 = sub_21E13F264();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_21E13F264();
        v39 = sub_21E13F264();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_21E06A15C(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_21E06A15C((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_21E06BFDC(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_21E101914(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_21E101888(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_21E13F264();
    v104 = sub_21E13F264();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_21E06BFDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_21E13F274();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_21E13F264();
          v45 = sub_21E13F264();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_21E13F264();
        v26 = sub_21E13F264();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_21E06C5F0(&v64, &v63, &v62, MEMORY[0x277D796D0]);
}

uint64_t sub_21E06C5F0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21E06C6D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21E06C7C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E06C854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E06C8C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E06C90C()
{
  swift_getKeyPath();
  sub_21E06D3B8();
  sub_21E13D3C4();
}

uint64_t sub_21E06C980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E06D3B8();
  sub_21E13D3C4();

  *a2 = *(v3 + 56);
}

uint64_t sub_21E06CA28(uint64_t result)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 56) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E06D3B8();
    sub_21E13D3B4();
  }

  return result;
}

void sub_21E06CB7C()
{
  if (!v0[4])
  {
    v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_update];
    v2 = v0[4];
    v0[4] = v1;
    v3 = v1;

    if (v3)
    {
      v4 = [objc_opt_self() mainRunLoop];
      [v3 addToRunLoop:v4 forMode:*MEMORY[0x277CBE738]];
    }

    swift_getKeyPath();
    sub_21E06D3B8();
    sub_21E13D3C4();

    v5 = *(v0[7] + 16);
    swift_beginAccess();
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      while (v7 < *(v0[2] + 16))
      {
        v8 = CACurrentMediaTime();
        swift_beginAccess();
        v9 = v0[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[2] = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_21E00E474(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          __break(1u);
          return;
        }

        v11 = &v9[v6];
        *(v11 + 5) = v8 - v7 * 3.14159265 * 0.125;
        v11[48] = 0;
        v0[2] = v9;
        swift_endAccess();
        v6 += 24;
        if (v5 == ++v7)
        {
          return;
        }
      }
    }
  }
}

void sub_21E06CD74()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v2 + v4;
    if (*(v2 + v4 + 48))
    {
      goto LABEL_3;
    }

    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    v9 = CACurrentMediaTime();
    swift_beginAccess();
    v10 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21E00E474(v10);
    }

    if (v5 >= *(v10 + 2))
    {
      break;
    }

    v12 = fmod(v7 + ((v9 - v8) / 3.0 + (v9 - v8) / 3.0) * 3.14159265, 6.28318531);
    v13 = &v10[v4];
    *&v10[v4 + 32] = v12;
    *(v0 + 16) = v10;
    if (v5 >= *(v10 + 2))
    {
      goto LABEL_13;
    }

    *(v13 + 5) = 0;
    v13[48] = 1;
    *(v0 + 16) = v10;
    swift_endAccess();
LABEL_3:
    ++v5;
    v4 += 24;
    if (v3 == v5)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_21E06CEF8()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  swift_getKeyPath();
  sub_21E06D3B8();
  sub_21E13D3C4();

  v3 = *(*(v0 + 56) + 16);
  result = swift_beginAccess();
  if (v3)
  {
    v5 = 0;
    for (i = 0; v3 != i; ++i)
    {
      v7 = *(v1 + 16);
      if (i >= *(v7 + 16))
      {
        break;
      }

      v8 = v7 + v5;
      if ((*(v8 + 48) & 1) == 0)
      {
        v9 = fmod(*(v8 + 32) + ((v2 - *(v8 + 40)) / 3.0 + (v2 - *(v8 + 40)) / 3.0) * 3.14159265, 6.28318531);
        v10 = sin(v9);
        swift_getKeyPath();
        sub_21E13D3C4();

        swift_getKeyPath();
        sub_21E13D3E4();

        v11 = *(v1 + 56);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 56) = v11;
        if ((result & 1) == 0)
        {
          result = sub_21E00E44C(v11);
          v11 = result;
        }

        if (i >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        *(v11 + 8 * i + 32) = (v10 + 1.0) * 0.5 * 0.8 + 0.2;
        *(v1 + 56) = v11;
        swift_getKeyPath();
        sub_21E13D3D4();
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t sub_21E06D170()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI27VIUIPeriodicOpacityAnimator___observationRegistrar;
  v3 = sub_21E13D404();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VIUIPeriodicOpacityAnimator()
{
  result = qword_27CEABB00;
  if (!qword_27CEABB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E06D28C()
{
  result = sub_21E13D404();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
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

uint64_t getEnumTagSinglePayload for VIUIPeriodicOpacityAnimator.OpacityAnimationMetadata(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VIUIPeriodicOpacityAnimator.OpacityAnimationMetadata(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_21E06D3B8()
{
  result = qword_27CEA8790;
  if (!qword_27CEA8790)
  {
    type metadata accessor for VIUIPeriodicOpacityAnimator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8790);
  }

  return result;
}

uint64_t sub_21E06D410()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t type metadata accessor for ColorSchemeTracker()
{
  result = qword_280F6A970;
  if (!qword_280F6A970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E06D4EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_21E1414A4();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB10) + 36);
  sub_21DF491DC(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21E13F444();
    result = (*(*(v13 - 8) + 32))(a1 + v12, v10, v13);
  }

  else
  {
    sub_21E142574();
    v15 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    result = (*(v5 + 8))(v7, v4);
  }

  *a1 = v11;
  return result;
}

uint64_t sub_21E06D704()
{
  v0 = sub_21E13F444();
  __swift_allocate_value_buffer(v0, qword_27CEB76F8);
  v1 = __swift_project_value_buffer(v0, qword_27CEB76F8);
  v2 = *MEMORY[0x277CDF3D0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_21E06D78C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CEA67D8 != -1)
  {
    swift_once();
  }

  v2 = sub_21E13F444();
  v3 = __swift_project_value_buffer(v2, qword_27CEB76F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21E06D834(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_21E13F444();
  v5 = (*(*(v4 - 8) + 8))(a1, v4);
  return a2(v5);
}

unint64_t sub_21E06D8B0()
{
  result = qword_280F68F78;
  if (!qword_280F68F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB10);
    sub_21E06D93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68F78);
  }

  return result;
}

unint64_t sub_21E06D93C()
{
  result = qword_280F68DE8;
  if (!qword_280F68DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68DE8);
  }

  return result;
}

uint64_t FeedbackControlBar.init(action:result:feedbackController:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t *a8@<X8>)
{
  v47 = a5;
  v48 = a6;
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v10 = sub_21E13D344();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = *a7;
  v41 = a7[1];
  v42 = v17;
  v40 = a7[2];
  v18 = *(a7 + 1);
  v38 = *(a7 + 2);
  v39 = v18;
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for FeedbackControlBar(0);
  v20 = v19[9];
  v37 = v19[8];
  v21 = a8 + v20;
  v49 = 0;
  sub_21E141704();
  v22 = v51;
  *v21 = v50;
  *(v21 + 1) = v22;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v23 = *(v11 + 16);
  v23(v13, v16, v10);
  sub_21E141704();
  v24 = *(v11 + 8);
  v24(v16, v10);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v23(v13, v16, v10);
  sub_21E141704();
  v24(v16, v10);
  v25 = v19[7];
  v26 = sub_21E13DF64();
  (*(*(v26 - 8) + 56))(a8 + v25, 1, 1, v26);
  v27 = v19[5];
  v28 = sub_21E13D994();
  v29 = *(v28 - 8);
  (*(v29 + 32))(a8 + v27, v43, v28);
  result = (*(v29 + 56))(a8 + v27, 0, 1, v28);
  v31 = (a8 + v19[6]);
  v32 = v45;
  *v31 = v44;
  v31[1] = v32;
  v33 = (a8 + v19[12]);
  v34 = v47;
  *v33 = v46;
  v33[1] = v34;
  v33[2] = v48;
  v35 = a8 + v19[13];
  LOBYTE(v34) = v41;
  *v35 = v42;
  v35[1] = v34;
  v35[2] = v40;
  v36 = v38;
  *(v35 + 1) = v39;
  *(v35 + 2) = v36;
  *(a8 + v37) = 0;
  return result;
}

uint64_t ReportAConcernButton.init(action:result:feedbackController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ReportAConcernButton(0);
  v15 = v14[6];
  v16 = sub_21E13DF64();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = sub_21E13D994();
  v18 = *(v17 - 8);
  (*(v18 + 32))(a7, a1, v17);
  result = (*(v18 + 56))(a7, 0, 1, v17);
  v20 = (a7 + v14[5]);
  *v20 = a2;
  v20[1] = a3;
  v21 = (a7 + v14[7]);
  *v21 = a4;
  v21[1] = a5;
  v21[2] = a6;
  return result;
}

uint64_t sub_21E06DE44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E13F444();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t FeedbackControlBar.yOffset.setter(double a1)
{
  result = type metadata accessor for FeedbackControlBar(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t FeedbackControlBar.init(resultLookupState:feedbackController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v6 = sub_21E13D344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for FeedbackControlBar(0);
  *(a5 + v13[8]) = 0x4047000000000000;
  v14 = a5 + v13[9];
  v33 = 0;
  sub_21E141704();
  v15 = v35;
  *v14 = v34;
  *(v14 + 1) = v15;
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v16 = *(v7 + 16);
  v16(v9, v12, v6);
  sub_21E141704();
  v17 = *(v7 + 8);
  v17(v12, v6);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  v16(v9, v12, v6);
  sub_21E141704();
  v17(v12, v6);
  v18 = v13[7];
  v19 = sub_21E13DF64();
  v20 = *(v19 - 8);
  (*(v20 + 32))(a5 + v18, v29, v19);
  (*(v20 + 56))(a5 + v18, 0, 1, v19);
  v21 = v13[5];
  v22 = sub_21E13D994();
  result = (*(*(v22 - 8) + 56))(a5 + v21, 1, 1, v22);
  v24 = (a5 + v13[6]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a5 + v13[12]);
  v26 = v31;
  *v25 = v30;
  v25[1] = v26;
  v25[2] = v32;
  v27 = a5 + v13[13];
  *v27 = 0;
  v27[2] = 0;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  return result;
}

uint64_t FeedbackControlBar.FeedbackSelection.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21E06E460@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_21E13D304();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedbackControlBar(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABBB8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  *v11 = sub_21E140004();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC00);
  sub_21E06E8C0(v1, &v11[*(v12 + 44)]);
  v13 = *(v1 + *(v6 + 40));
  v14 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABBD0) + 36)];
  *v14 = 0;
  *(v14 + 1) = v13;
  v15 = v1;
  v30 = v1;
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v31;
  sub_21E077ACC(v15, v31, type metadata accessor for FeedbackControlBar);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21E077B34(v16, v18 + v17, type metadata accessor for FeedbackControlBar);
  v19 = &v11[*(v9 + 36)];
  *v19 = sub_21E077B9C;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = v2 + *(v6 + 56);
  v38 = *v20;
  v39 = *(v20 + 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  MEMORY[0x223D52200](&v37, v21);
  v22 = v37;
  swift_getKeyPath();
  v38 = v22;
  sub_21E078B1C(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3C4();

  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI18FeedbackController__lastResetDate;
  swift_beginAccess();
  v24 = v34;
  v25 = v35;
  (*(v3 + 16))(v34, v22 + v23, v35);

  v26 = v31;
  sub_21E077ACC(v30, v31, type metadata accessor for FeedbackControlBar);
  v27 = swift_allocObject();
  sub_21E077B34(v26, v27 + v17, type metadata accessor for FeedbackControlBar);
  sub_21E076FA8();
  sub_21E078B1C(&qword_27CEAA468, MEMORY[0x277CC9578]);
  sub_21E141334();

  (*(v3 + 8))(v24, v25);
  return sub_21DF23614(v11, &qword_27CEABBB8);
}

uint64_t sub_21E06E8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC18);
  MEMORY[0x28223BE20](v120);
  v116 = (&v98 - v3);
  v114 = sub_21E13F444();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = &v98 - v6;
  v115 = sub_21E141D94();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13D384();
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E1420E4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for FeedbackControlBar(0);
  v12 = v11 - 8;
  v98 = *(v11 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC20);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v15 = &v98 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC28);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v98 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC30);
  MEMORY[0x28223BE20](v102);
  v104 = &v98 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC38);
  MEMORY[0x28223BE20](v20 - 8);
  v103 = &v98 - v21;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC40);
  MEMORY[0x28223BE20](v106);
  v105 = &v98 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC48);
  MEMORY[0x28223BE20](v23 - 8);
  v107 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v108 = &v98 - v26;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC50);
  MEMORY[0x28223BE20](v117);
  v119 = &v98 - v27;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC58);
  MEMORY[0x28223BE20](v118);
  v29 = &v98 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC60);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v98 - v34;
  if (*(a1 + *(v12 + 60)))
  {
    goto LABEL_6;
  }

  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20 != 1)
  {
LABEL_6:
    sub_21E077ACC(a1, &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackControlBar);
    v56 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v57 = swift_allocObject();
    v58 = sub_21E077B34(&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v57 + v56, type metadata accessor for FeedbackControlBar);
    MEMORY[0x28223BE20](v58);
    *(&v98 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC68);
    sub_21E0787A4(&qword_27CEABC70, &qword_27CEABC68, &unk_21E152280, sub_21E077FB8);
    sub_21E141764();
    sub_21E142084();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v59 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    v122 = sub_21E142184();
    v123 = v60;
    sub_21DF23E5C(&qword_27CEABCA8, &qword_27CEABC20);
    sub_21DF252E0();
    v61 = v100;
    sub_21E141024();

    (*(v99 + 8))(v15, v61);
    v62 = sub_21E141CC4();
    v64 = v63;
    v65 = [objc_opt_self() secondarySystemFillColor];
    v66 = sub_21E141414();
    v67 = v109;
    sub_21E06DE44(v109);
    v68 = v112;
    v69 = v110;
    v70 = v114;
    (*(v112 + 104))(v110, *MEMORY[0x277CDF3D0], v114);
    v71 = sub_21E13F434();
    v72 = *(v68 + 8);
    v72(v69, v70);
    v72(v67, v70);
    v73 = v113;
    v74 = MEMORY[0x277CE13B0];
    if ((v71 & 1) == 0)
    {
      v74 = MEMORY[0x277CE13B8];
    }

    v75 = v111;
    v76 = v115;
    (*(v113 + 104))(v111, *v74, v115);
    v77 = v104;
    v78 = &v104[*(v102 + 36)];
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABCB0);
    (*(v73 + 32))(&v78[*(v79 + 36)], v75, v76);
    *v78 = v66;
    *(v78 + 4) = 256;
    v80 = &v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABCB8) + 36)];
    *v80 = v62;
    v80[1] = v64;
    sub_21DF3DE9C(v18, v77, &qword_27CEABC28);
    v81 = v103;
    sub_21DF3DE9C(v77, v103, &qword_27CEABC30);
    LOBYTE(v78) = sub_21E140964();
    sub_21E13F374();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v81;
    v91 = v105;
    sub_21DF3DE9C(v90, v105, &qword_27CEABC38);
    v92 = v91 + *(v106 + 36);
    *v92 = v78;
    *(v92 + 8) = v83;
    *(v92 + 16) = v85;
    *(v92 + 24) = v87;
    *(v92 + 32) = v89;
    *(v92 + 40) = 0;
    sub_21E0781BC();
    v93 = v108;
    sub_21E141164();
    sub_21DF23614(v91, &qword_27CEABC40);
    v52 = &qword_27CEABC48;
    v94 = v107;
    sub_21DF236C0(v93, v107, &qword_27CEABC48);
    v95 = v116;
    *v116 = 0;
    *(v95 + 8) = 1;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABCF0);
    sub_21DF236C0(v94, v95 + *(v96 + 48), &qword_27CEABC48);
    sub_21DF23614(v94, &qword_27CEABC48);
    sub_21DF236C0(v95, v119, &qword_27CEABC18);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEABCF8, &qword_27CEABC58);
    sub_21DF23E5C(&qword_27CEABD00, &qword_27CEABC18);
    sub_21E1402F4();
    sub_21DF23614(v95, &qword_27CEABC18);
    v55 = v93;
  }

  else
  {
    *v35 = sub_21E140004();
    *(v35 + 1) = 0x4014000000000000;
    v35[16] = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD08);
    sub_21E06F750(a1, &v35[*(v36 + 44)]);
    v37 = sub_21E140904();
    sub_21E13F374();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD10) + 36)];
    *v46 = v37;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    v47 = sub_21E141CC4();
    v49 = v48;
    v50 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD18) + 36)];
    sub_21E0732A8(v50);
    v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD20) + 36));
    *v51 = v47;
    v51[1] = v49;
    v52 = &qword_27CEABC60;
    sub_21DF236C0(v35, v32, &qword_27CEABC60);
    *v29 = 0;
    v29[8] = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD28);
    sub_21DF236C0(v32, &v29[*(v53 + 48)], &qword_27CEABC60);
    v54 = &v29[*(v53 + 64)];
    *v54 = 0;
    v54[8] = 1;
    sub_21DF23614(v32, &qword_27CEABC60);
    sub_21DF236C0(v29, v119, &qword_27CEABC58);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEABCF8, &qword_27CEABC58);
    sub_21DF23E5C(&qword_27CEABD00, &qword_27CEABC18);
    sub_21E1402F4();
    sub_21DF23614(v29, &qword_27CEABC58);
    v55 = v35;
  }

  return sub_21DF23614(v55, v52);
}

uint64_t sub_21E06F750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD38);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v48 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD40);
  MEMORY[0x28223BE20](v59);
  v63 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v48 - v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v48 - v9;
  v10 = sub_21E13D384();
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E1420E4();
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for FeedbackControlBar(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD48);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v20 = &v48 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD50);
  MEMORY[0x28223BE20](v49);
  v57 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  MEMORY[0x28223BE20](v25);
  v53 = &v48 - v26;
  sub_21E077ACC(a1, v18, type metadata accessor for FeedbackControlBar);
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v52 = v17;
  v28 = swift_allocObject();
  sub_21E077B34(v18, v28 + v27, type metadata accessor for FeedbackControlBar);
  v55 = a1;
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD58);
  sub_21E0787A4(&qword_27CEABD60, &qword_27CEABD58, &unk_21E152310, sub_21E07856C);
  sub_21E141764();
  sub_21E142084();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v29 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v67 = sub_21E142184();
  v68 = v30;
  sub_21DF23E5C(&qword_27CEABD98, &qword_27CEABD48);
  sub_21DF252E0();
  v31 = v51;
  sub_21E141024();

  (*(v50 + 8))(v20, v31);
  v32 = v53;
  sub_21E13FB44();
  sub_21DF23614(v24, &qword_27CEABD50);
  v33 = v55;
  sub_21E077ACC(v55, v18, type metadata accessor for FeedbackControlBar);
  v34 = swift_allocObject();
  v35 = sub_21E077B34(v18, v34 + v27, type metadata accessor for FeedbackControlBar);
  MEMORY[0x28223BE20](v35);
  *(&v48 - 2) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDA0);
  sub_21E0787A4(&qword_27CEABDA8, &qword_27CEABDA0, &unk_21E152330, sub_21E078858);
  v36 = v56;
  sub_21E141764();
  sub_21E142084();
  v37 = v36;
  if (!sub_21E1426B4())
  {
    v38 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v67 = sub_21E142184();
  v68 = v39;
  sub_21DF23E5C(&qword_27CEABDD0, &qword_27CEABD38);
  v40 = v58;
  v41 = v61;
  sub_21E141024();

  (*(v60 + 8))(v37, v41);
  v42 = v62;
  sub_21E13FB44();
  sub_21DF23614(v40, &qword_27CEABD40);
  v43 = v57;
  sub_21DF236C0(v32, v57, &qword_27CEABD50);
  v44 = v63;
  sub_21DF236C0(v42, v63, &qword_27CEABD40);
  v45 = v64;
  sub_21DF236C0(v43, v64, &qword_27CEABD50);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDD8);
  sub_21DF236C0(v44, v45 + *(v46 + 48), &qword_27CEABD40);
  sub_21DF23614(v42, &qword_27CEABD40);
  sub_21DF23614(v32, &qword_27CEABD50);
  sub_21DF23614(v44, &qword_27CEABD40);
  return sub_21DF23614(v43, &qword_27CEABD50);
}

uint64_t sub_21E0700A8(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackControlBar(0);
  v3 = v2 - 8;
  v25 = *(v2 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_21E13D344();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = a1 + *(v3 + 44);
  v17 = *(v16 + 8);
  v27 = *v16;
  v28 = v17;
  v26 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141724();

  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v10 + 16))(v12, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70);
  sub_21E141724();
  (*(v10 + 8))(v15, v9);
  v18 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v18 impactOccurred];

  v19 = sub_21E1423F4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_21E077ACC(a1, v5, type metadata accessor for FeedbackControlBar);
  sub_21E1423C4();
  v20 = sub_21E1423B4();
  v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  sub_21E077B34(v5, v22 + v21, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v8, &unk_21E152388, v22);
}

uint64_t sub_21E070418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v8 = sub_21E142364();
  v4[12] = v8;
  v4[13] = v7;

  return MEMORY[0x2822009F8](sub_21E0705A8, v8, v7);
}

uint64_t sub_21E0705A8()
{
  v1 = sub_21E142C94();
  v3 = v2;
  sub_21E142BB4();
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_21E07068C;

  return sub_21E077260(v1, v3, 0, 0, 1);
}

uint64_t sub_21E07068C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_21E079500;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[12];
    v8 = v3[13];
    v9 = sub_21E070820;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E070820()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_21E077ACC(v4, v1, type metadata accessor for FeedbackControlBar);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v1, v8 + v7, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v2, &unk_21E152398, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E070998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E070A68, v6, v5);
}

uint64_t sub_21E070A68()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for FeedbackControlBar(0);
  v4 = v3[7];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838);
  v7 = (v2 + v3[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = v3[5];
    v14 = (v11 + v3[6]);
    v15 = *v14;
    v16 = v14[1];
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21E070DF0;

    return sub_21E119428(v11 + v13, v15, v16, 1);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E070CAC;

    return sub_21E11A71C(v2 + v4, 1);
  }
}

uint64_t sub_21E070CAC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21E0794E8, v3, v2);
}

uint64_t sub_21E070DF0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21E0794E8, v3, v2);
}

uint64_t sub_21E070F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = sub_21E140054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD70);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v24[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0);
  sub_21E078A64();
  sub_21E141684();
  sub_21E140044();
  sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88);
  sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78]);
  sub_21E140DA4();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = [objc_opt_self() labelColor];
  v15 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD80) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  LOBYTE(v15) = sub_21E140914();
  sub_21E13F374();
  v18 = &v13[*(v11 + 36)];
  *v18 = v15;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_21E07856C();
  sub_21E141164();
  return sub_21DF23614(v13, &qword_27CEABD70);
}

uint64_t sub_21E0712C0@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_21E0713A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v33 = sub_21E141E64();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21E13D344();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21E141E44();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E141624();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for FeedbackControlBar(0) + 36));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v36) = v16;
  *(&v36 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141714();
  sub_21E141634();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
  v28 = sub_21E141664();

  (*(v12 + 8))(v14, v11);
  sub_21E141CC4();
  sub_21E13F664();
  v35 = 1;
  *&v34[6] = v36;
  *&v34[22] = v37;
  *&v34[38] = v38;
  sub_21E141E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70);
  sub_21E141714();
  sub_21E141E54();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0) + 36);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDF8);
  v20 = v31;
  v21 = v33;
  (*(v31 + 16))(v18 + *(v19 + 36), v5, v33);
  v22 = v18 + *(v19 + 40);
  v23 = v30;
  (*(v6 + 16))(v22, v8, v30);
  sub_21E078B1C(&qword_27CEABE00, MEMORY[0x277CE1570]);
  v24 = v29;
  sub_21E141E24();
  (*(v20 + 8))(v5, v21);
  (*(v6 + 8))(v8, v23);
  (*(v32 + 8))(v10, v24);
  *a2 = v28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v25 = *&v34[16];
  *(a2 + 18) = *v34;
  *(a2 + 34) = v25;
  result = *&v34[32];
  *(a2 + 50) = *&v34[32];
  *(a2 + 64) = *&v34[46];
  return result;
}

uint64_t sub_21E07189C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackControlBar(0);
  v3 = v2 - 8;
  v25 = *(v2 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_21E13D344();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = a1 + *(v3 + 44);
  v17 = *(v16 + 8);
  v27 = *v16;
  v28 = v17;
  v26 = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141724();

  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v10 + 16))(v12, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70);
  sub_21E141724();
  (*(v10 + 8))(v15, v9);
  v18 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v18 impactOccurred];

  v19 = sub_21E1423F4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_21E077ACC(a1, v5, type metadata accessor for FeedbackControlBar);
  sub_21E1423C4();
  v20 = sub_21E1423B4();
  v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  sub_21E077B34(v5, v22 + v21, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v8, &unk_21E152368, v22);
}

uint64_t sub_21E071C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_21E071DF4;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v8);
}

uint64_t sub_21E071DF4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21E0720CC;
  }

  else
  {
    v2 = sub_21E071F08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E071F08()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21E071F88, v2, v1);
}

uint64_t sub_21E071F88()
{
  if (*(v0 + 137))
  {
    v1 = sub_21E142C94();
    v3 = v2;
    sub_21E142BB4();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_21E0721CC;

    return sub_21E077260(v1, v3, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21E0720CC()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E072150, v2, v1);
}

uint64_t sub_21E072150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E0721CC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E0794EC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E072360;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E072360()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_21E077ACC(v4, v2, type metadata accessor for FeedbackControlBar);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v2, v8 + v7, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v1, &unk_21E152378, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E0724D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E0725A8, v6, v5);
}

uint64_t sub_21E0725A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for FeedbackControlBar(0);
  v4 = v3[7];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838);
  v7 = (v2 + v3[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = v3[5];
    v14 = (v11 + v3[6]);
    v15 = *v14;
    v16 = v14[1];
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21E070DF0;

    return sub_21E118DDC(v11 + v13, v15, v16);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E0727E4;

    return sub_21E11A0D0(v2 + v4);
  }
}

uint64_t sub_21E0727E4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21E072928, v3, v2);
}

uint64_t sub_21E072928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E072990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v3 = sub_21E140054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDB8);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v28[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0);
  sub_21E078A64();
  sub_21E141684();
  sub_21E140044();
  sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88);
  sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78]);
  sub_21E140DA4();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  LOBYTE(v10) = sub_21E140914();
  sub_21E13F374();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDC8) + 36)];
  *v22 = v10;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = [objc_opt_self() labelColor];
  v24 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v26 = &v13[*(v11 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_21E078858();
  sub_21E141164();
  return sub_21DF23614(v13, &qword_27CEABDB8);
}

uint64_t sub_21E072D38@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_21E072DB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v33 = sub_21E141E64();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21E13D344();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21E141E44();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E141624();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for FeedbackControlBar(0) + 36));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v36) = v16;
  *(&v36 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141714();
  sub_21E141634();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
  v28 = sub_21E141664();

  (*(v12 + 8))(v14, v11);
  sub_21E141CC4();
  sub_21E13F664();
  v35 = 1;
  *&v34[6] = v36;
  *&v34[22] = v37;
  *&v34[38] = v38;
  sub_21E141E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70);
  sub_21E141714();
  sub_21E141E54();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDE0) + 36);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABDF8);
  v20 = v31;
  v21 = v33;
  (*(v31 + 16))(v18 + *(v19 + 36), v5, v33);
  v22 = v18 + *(v19 + 40);
  v23 = v30;
  (*(v6 + 16))(v22, v8, v30);
  sub_21E078B1C(&qword_27CEABE00, MEMORY[0x277CE1570]);
  v24 = v29;
  sub_21E141E24();
  (*(v20 + 8))(v5, v21);
  (*(v6 + 8))(v8, v23);
  (*(v32 + 8))(v10, v24);
  *a2 = v28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v25 = *&v34[16];
  *(a2 + 18) = *v34;
  *(a2 + 34) = v25;
  result = *&v34[32];
  *(a2 + 50) = *&v34[32];
  *(a2 + 64) = *&v34[46];
  return result;
}

uint64_t sub_21E0732A8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_21E13F444();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v25 = sub_21E141D94();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_21E140144();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v17 = [objc_opt_self() secondarySystemFillColor];
  *&v14[*(v12 + 60)] = sub_21E141414();
  *&v14[*(v12 + 64)] = 256;
  sub_21E06DE44(v7);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  v18 = sub_21E13F434();
  v19 = *(v2 + 8);
  v19(v4, v1);
  v19(v7, v1);
  v20 = MEMORY[0x277CE13B0];
  if ((v18 & 1) == 0)
  {
    v20 = MEMORY[0x277CE13B8];
  }

  v21 = v25;
  (*(v8 + 104))(v10, *v20, v25);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABD30);
  v23 = v26;
  (*(v8 + 32))(v26 + *(v22 + 36), v10, v21);
  return sub_21E0784C8(v14, v23);
}

uint64_t sub_21E0735C0(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackControlBar(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = a1 + *(v3 + 44);
  v11 = *(v10 + 8);
  v19[16] = *v10;
  v20 = v11;
  v19[15] = 3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141724();

  v12 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v12 impactOccurred];

  v13 = sub_21E1423F4();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_21E077ACC(a1, v6, type metadata accessor for FeedbackControlBar);
  sub_21E1423C4();
  v14 = sub_21E1423B4();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_21E077B34(v6, v16 + v15, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v9, &unk_21E1523B8, v16);
}

uint64_t sub_21E073824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_21E073A0C;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v8);
}

uint64_t sub_21E073A0C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21E073CE4;
  }

  else
  {
    v2 = sub_21E073B20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E073B20()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21E073BA0, v2, v1);
}

uint64_t sub_21E073BA0()
{
  if (*(v0 + 137))
  {
    v1 = sub_21E142C94();
    v3 = v2;
    sub_21E142BB4();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_21E073D68;

    return sub_21E077260(v1, v3, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21E073CE4()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E0794FC, v2, v1);
}

uint64_t sub_21E073D68()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E0794F0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E073EFC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E073EFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_21E077ACC(v4, v2, type metadata accessor for FeedbackControlBar);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v2, v8 + v7, type metadata accessor for FeedbackControlBar);
  sub_21E0C2E04(0, 0, v1, &unk_21E1523C8, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E074074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E074144, v6, v5);
}

uint64_t sub_21E074144()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for FeedbackControlBar(0);
  v4 = v3[7];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838);
  v7 = (v2 + v3[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = v3[5];
    v14 = (v11 + v3[6]);
    v15 = *v14;
    v16 = v14[1];
    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_21E070DF0;

    return sub_21E119A84(v11 + v13, v15, v16);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E070CAC;

    return sub_21E11AD78(v2 + v4);
  }
}

uint64_t sub_21E074380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = sub_21E140054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC98);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC80);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v24[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABE08);
  sub_21E079250();
  sub_21E141684();
  sub_21E140044();
  sub_21DF23E5C(&qword_27CEABCA0, &qword_27CEABC98);
  sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78]);
  sub_21E140DA4();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = [objc_opt_self() labelColor];
  v15 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC90) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  LOBYTE(v15) = sub_21E140914();
  sub_21E13F374();
  v18 = &v13[*(v11 + 36)];
  *v18 = v15;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_21E077FB8();
  sub_21E141164();
  return sub_21DF23614(v13, &qword_27CEABC80);
}

double sub_21E07470C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = sub_21E141E64();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21E141E44();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E141624();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for FeedbackControlBar(0) + 36));
  v11 = *(v10 + 1);
  LOBYTE(v49) = *v10;
  *(&v49 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141714();
  v12 = 0xD00000000000001BLL;
  sub_21E141634();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v37 = sub_21E141664();

  (*(v7 + 8))(v9, v6);
  sub_21E141CC4();
  sub_21E13F664();
  v47 = 1;
  *&v46[6] = v49;
  *&v46[22] = v50;
  *&v46[38] = v51;
  v13 = sub_21E140924();
  sub_21E13F374();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v48 = 0;
  v22 = v36;
  sub_21E141E34();
  v23 = *(v10 + 1);
  v43 = *v10;
  v44 = v23;
  sub_21E141714();
  if (v45 == 3)
  {
    v24 = "exclamationmark.bubble";
  }

  else
  {
    v12 = 0xD000000000000016;
    v24 = "hand.thumbsup.fill";
  }

  v25 = v24 | 0x8000000000000000;
  v26 = v38;
  sub_21E141E54();
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABE08) + 36);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABE20);
  v29 = v39;
  v30 = v41;
  (*(v39 + 16))(v27 + *(v28 + 36), v26, v41);
  v31 = (v27 + *(v28 + 40));
  *v31 = v12;
  v31[1] = v25;
  sub_21E078B1C(&qword_27CEABE00, MEMORY[0x277CE1570]);
  v32 = v40;
  sub_21E141E24();
  (*(v29 + 8))(v26, v30);
  (*(v42 + 8))(v22, v32);
  v33 = *&v46[16];
  *(a2 + 18) = *v46;
  *a2 = v37;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v33;
  result = *&v46[32];
  *(a2 + 50) = *&v46[32];
  *(a2 + 64) = *&v46[46];
  *(a2 + 72) = v13;
  *(a2 + 80) = v15;
  *(a2 + 88) = v17;
  *(a2 + 96) = v19;
  *(a2 + 104) = v21;
  *(a2 + 112) = 0;
  return result;
}

void sub_21E074BE8(uint64_t a1)
{
  v2 = sub_21E13D4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for FeedbackControlBar(0);
  v15 = (a1 + *(v14 + 48));
  v52 = *v15;
  v53 = *(v15 + 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  MEMORY[0x223D52200](&v50, v16);
  v17 = v50;
  swift_getKeyPath();
  v52 = v17;
  sub_21E078B1C(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v18 = *(v17 + 16);

  v47 = sub_21E141ED4();
  v20 = v19;
  LODWORD(v17) = ~v19;

  if (!v17)
  {
    goto LABEL_4;
  }

  if (v20)
  {
    sub_21DF34758(v47, v20);
LABEL_4:
    v21 = a1 + *(v14 + 36);
    v22 = *(v21 + 8);
    LOBYTE(v50) = *v21;
    v51 = v22;
    LOBYTE(v48) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
    sub_21E141724();
    goto LABEL_5;
  }

  sub_21E13D4C4();
  v23 = *MEMORY[0x277D084F8];
  v44 = v3;
  v42 = *(v3 + 104);
  v42(v10, v23, v2);
  v24 = sub_21E078B1C(&qword_27CEABC10, MEMORY[0x277D08518]);
  v45 = v13;
  sub_21E142284();
  v41 = v24;
  sub_21E142284();
  v43 = a1;
  if (v50 == v48 && v51 == v49)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_21E142B14();
  }

  v26 = v10;
  v27 = *(v44 + 8);
  v27(v26, v2);

  if (v25)
  {
    v28 = v43 + *(v14 + 36);
    v29 = *(v28 + 8);
    LOBYTE(v50) = *v28;
    v51 = v29;
    LOBYTE(v48) = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
    sub_21E141724();
    sub_21DF34758(v47, v20);
    v27(v45, v2);
    goto LABEL_5;
  }

  v42(v7, *MEMORY[0x277D08510], v2);
  sub_21E142284();
  sub_21E142284();
  if (v50 == v48 && v51 == v49)
  {
    v27(v7, v2);

LABEL_17:
    v31 = v43 + *(v14 + 36);
    v32 = *(v31 + 8);
    LOBYTE(v50) = *v31;
    v51 = v32;
    LOBYTE(v48) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
    sub_21E141724();
    sub_21DF34758(v47, v20);
    v27(v45, v2);
    goto LABEL_5;
  }

  v30 = sub_21E142B14();
  v27(v7, v2);

  if (v30)
  {
    goto LABEL_17;
  }

  v33 = v46;
  v42(v46, *MEMORY[0x277D084E8], v2);
  v34 = v45;
  sub_21E142284();
  sub_21E142284();
  if (v50 == v48 && v51 == v49)
  {
    v35 = v33;
    v36 = v27;
    v27(v35, v2);
  }

  else
  {
    v37 = sub_21E142B14();
    v38 = v33;
    v36 = v27;
    v27(v38, v2);

    if ((v37 & 1) == 0)
    {
      v27(v34, v2);
      sub_21DF34758(v47, v20);
      return;
    }
  }

  v39 = v43 + *(v14 + 36);
  v40 = *(v39 + 8);
  LOBYTE(v50) = *v39;
  v51 = v40;
  LOBYTE(v48) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141724();
  sub_21DF34758(v47, v20);
  v36(v34, v2);
LABEL_5:
}

uint64_t sub_21E075294()
{
  type metadata accessor for FeedbackControlBar(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABC08);
  sub_21E141724();
}

uint64_t ReportAConcernButton.init(resultLookupState:feedbackController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ReportAConcernButton(0);
  v11 = v10[6];
  v12 = sub_21E13DF64();
  v13 = *(v12 - 8);
  (*(v13 + 32))(a5 + v11, a1, v12);
  (*(v13 + 56))(a5 + v11, 0, 1, v12);
  v14 = sub_21E13D994();
  result = (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  v16 = (a5 + v10[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a5 + v10[7]);
  *v17 = a2;
  v17[1] = a3;
  v17[2] = a4;
  return result;
}

uint64_t ReportAConcernButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v2 = sub_21E13D384();
  MEMORY[0x28223BE20](v2 - 8);
  v19[1] = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E1420E4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for ReportAConcernButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB28);
  MEMORY[0x28223BE20](v19[0]);
  v13 = v19 - v12;
  sub_21E077ACC(v1, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportAConcernButton);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_21E077B34(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ReportAConcernButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB30);
  sub_21E0787A4(&qword_27CEABB38, &qword_27CEABB30, &unk_21E151F78, sub_21E07671C);
  sub_21E141764();
  sub_21E142084();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v16 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v19[3] = sub_21E142184();
  v19[4] = v17;
  sub_21DF23E5C(&qword_27CEABB60, &qword_27CEABB20);
  sub_21DF252E0();
  sub_21E141024();

  (*(v9 + 8))(v11, v8);
  sub_21E13FB44();
  return sub_21DF23614(v13, &qword_27CEABB28);
}

uint64_t sub_21E075898(uint64_t a1)
{
  v2 = type metadata accessor for ReportAConcernButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v9 impactOccurred];

  v10 = sub_21E1423F4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21E077ACC(a1, v5, type metadata accessor for ReportAConcernButton);
  sub_21E1423C4();
  v11 = sub_21E1423B4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21E077B34(v5, v13 + v12, type metadata accessor for ReportAConcernButton);
  sub_21E0C2E04(0, 0, v8, &unk_21E1521A8, v13);
}

uint64_t sub_21E075AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for ReportAConcernButton(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v4[6] = swift_task_alloc();
  v6 = sub_21E142994();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_21E1423C4();
  v4[11] = sub_21E1423B4();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_21E075CB0;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v4 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v8);
}

uint64_t sub_21E075CB0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21E073CE4;
  }

  else
  {
    v2 = sub_21E075DC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E075DC4()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21E075E44, v2, v1);
}

uint64_t sub_21E075E44()
{
  if (*(v0 + 137))
  {
    v1 = sub_21E142C94();
    v3 = v2;
    sub_21E142BB4();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_21E075F88;

    return sub_21E077260(v1, v3, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21E075F88()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E0794F4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_21E07611C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21E07611C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21E1423F4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_21E077ACC(v4, v2, type metadata accessor for ReportAConcernButton);
  v6 = sub_21E1423B4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21E077B34(v2, v8 + v7, type metadata accessor for ReportAConcernButton);
  sub_21E0C2E04(0, 0, v1, &unk_21E1521C0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21E076294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838);
  v4[11] = swift_task_alloc();
  sub_21E1423C4();
  v4[12] = sub_21E1423B4();
  v6 = sub_21E142364();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_21E076364, v6, v5);
}

uint64_t sub_21E076364()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = type metadata accessor for ReportAConcernButton(0);
  v4 = v3[6];
  sub_21DF236C0(v2 + v4, v1, &qword_27CEA8838);
  v5 = sub_21E13DF64();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21DF23614(v1, &qword_27CEA8838);
  v7 = (v2 + v3[7]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  if (v6 == 1)
  {
    v11 = v0[10];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v12);
    v0[17] = v0[8];
    v13 = (v11 + v3[5]);
    v14 = *v13;
    v15 = v13[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_21E070DF0;
    v17 = v0[10];

    return sub_21E119A84(v17, v14, v15);
  }

  else
  {
    v0[5] = v9;
    v0[6] = v8;
    v0[7] = v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    MEMORY[0x223D52200](v19);
    v0[15] = v0[9];
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_21E070CAC;

    return sub_21E11AD78(v2 + v4);
  }
}

uint64_t sub_21E0765A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB48);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABBF0);
  sub_21E0771D4();
  sub_21E141684();
  v3 = [objc_opt_self() labelColor];
  v4 = sub_21E141414();
  KeyPath = swift_getKeyPath();
  v6 = &v2[*(v0 + 36)];
  *v6 = KeyPath;
  v6[1] = v4;
  sub_21E07671C();
  sub_21E141164();
  return sub_21DF23614(v2, &qword_27CEABB48);
}

unint64_t sub_21E07671C()
{
  result = qword_27CEABB40;
  if (!qword_27CEABB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB48);
    sub_21DF23E5C(&qword_27CEABB50, &qword_27CEABB58);
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABB40);
  }

  return result;
}

unint64_t sub_21E076804()
{
  result = qword_27CEABB68;
  if (!qword_27CEABB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABB68);
  }

  return result;
}

uint64_t sub_21E076890@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21E076974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E141624();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_21E141634();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_21E141664();

  (*(v3 + 8))(v5, v2);
  sub_21E141CC4();
  sub_21E13F664();
  v15 = 1;
  *&v14[6] = v16;
  *&v14[22] = v17;
  *&v14[38] = v18;
  LOBYTE(v2) = sub_21E140924();
  result = sub_21E13F374();
  v8 = *&v14[16];
  *(a1 + 18) = *v14;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v8;
  *(a1 + 50) = *&v14[32];
  *(a1 + 64) = *&v14[46];
  *(a1 + 72) = v2;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = v12;
  *(a1 + 112) = 0;
  return result;
}

void sub_21E076B60()
{
  sub_21E076DA4(319, &qword_280F69040, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21E076DA4(319, &qword_27CEABB88, MEMORY[0x277D78FA8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21E01B0DC(319, &qword_27CEA98A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21E076DA4(319, &qword_27CEABB90, MEMORY[0x277D79298], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21E01B0DC(319, &qword_27CEABB98, &type metadata for FeedbackControlBar.FeedbackSelection, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21E076DA4(319, &qword_27CEABBA0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_21E076DA4(319, &qword_280F68D08, type metadata accessor for FeedbackController, MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21E076DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21E076E40()
{
  sub_21E076DA4(319, &qword_27CEABB88, MEMORY[0x277D78FA8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21E01B0DC(319, &qword_27CEA98A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21E076DA4(319, &qword_27CEABB90, MEMORY[0x277D79298], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21E076DA4(319, &qword_280F68D08, type metadata accessor for FeedbackController, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21E076FA8()
{
  result = qword_27CEABBC0;
  if (!qword_27CEABBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABBB8);
    sub_21E077034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBC0);
  }

  return result;
}

unint64_t sub_21E077034()
{
  result = qword_27CEABBC8;
  if (!qword_27CEABBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABBD0);
    sub_21DF23E5C(&qword_27CEABBD8, &qword_27CEABBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBC8);
  }

  return result;
}

unint64_t sub_21E0770EC()
{
  result = qword_27CEABBE8;
  if (!qword_27CEABBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABB28);
    sub_21DF23E5C(&qword_27CEABB60, &qword_27CEABB20);
    sub_21E078B1C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBE8);
  }

  return result;
}

unint64_t sub_21E0771D4()
{
  result = qword_27CEABBF8;
  if (!qword_27CEABBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABBF0);
    sub_21DFC281C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABBF8);
  }

  return result;
}

uint64_t sub_21E077260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21E142984();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21E077360, 0, 0);
}

uint64_t sub_21E077360()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21E142994();
  v5 = sub_21E078B1C(&qword_280F68C00, MEMORY[0x277D85928]);
  sub_21E142B94();
  sub_21E078B1C(&qword_280F68C08, MEMORY[0x277D858F8]);
  sub_21E1429A4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21E0774F0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21E0774F0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21E0776AC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21E0776AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E077718(uint64_t a1)
{
  v4 = *(type metadata accessor for ReportAConcernButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E075AC8(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for ReportAConcernButton(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_21E13D994();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = *(v1 + 24);
  v7 = sub_21E13DF64();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21E0779DC(uint64_t a1)
{
  v4 = *(type metadata accessor for ReportAConcernButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E076294(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E077ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E077B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E077BC8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for FeedbackControlBar(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  v6 = sub_21E13D994();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v1[7];
  v9 = sub_21E13DF64();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v1[10];
  v12 = sub_21E13D344();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70);

  v13(v3 + v1[11], v12);

  return swift_deallocObject();
}

unint64_t sub_21E077FB8()
{
  result = qword_27CEABC78;
  if (!qword_27CEABC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC80);
    sub_21E078044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABC78);
  }

  return result;
}

unint64_t sub_21E078044()
{
  result = qword_27CEABC88;
  if (!qword_27CEABC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC98);
    sub_21E140054();
    sub_21DF23E5C(&qword_27CEABCA0, &qword_27CEABC98);
    sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABC88);
  }

  return result;
}

unint64_t sub_21E0781BC()
{
  result = qword_27CEABCC0;
  if (!qword_27CEABCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC40);
    sub_21E078248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCC0);
  }

  return result;
}

unint64_t sub_21E078248()
{
  result = qword_27CEABCC8;
  if (!qword_27CEABCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC38);
    sub_21E0782D4();
    sub_21E078474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCC8);
  }

  return result;
}

unint64_t sub_21E0782D4()
{
  result = qword_27CEABCD0;
  if (!qword_27CEABCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC30);
    sub_21E07838C();
    sub_21DF23E5C(&qword_27CEABCE0, &qword_27CEABCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCD0);
  }

  return result;
}

unint64_t sub_21E07838C()
{
  result = qword_27CEABCD8;
  if (!qword_27CEABCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABC28);
    sub_21DF23E5C(&qword_27CEABCA8, &qword_27CEABC20);
    sub_21E078B1C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCD8);
  }

  return result;
}

unint64_t sub_21E078474()
{
  result = qword_27CEABCE8;
  if (!qword_27CEABCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABCE8);
  }

  return result;
}

uint64_t sub_21E0784C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6EF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E07856C()
{
  result = qword_27CEABD68;
  if (!qword_27CEABD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD70);
    sub_21E0785F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABD68);
  }

  return result;
}

unint64_t sub_21E0785F8()
{
  result = qword_27CEABD78;
  if (!qword_27CEABD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD88);
    sub_21E140054();
    sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88);
    sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABD78);
  }

  return result;
}

uint64_t sub_21E0787A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_21E078B1C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E078858()
{
  result = qword_27CEABDB0;
  if (!qword_27CEABDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABDB8);
    sub_21E078910();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABDB0);
  }

  return result;
}

unint64_t sub_21E078910()
{
  result = qword_27CEABDC0;
  if (!qword_27CEABDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABDC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABD88);
    sub_21E140054();
    sub_21DF23E5C(&qword_27CEABD90, &qword_27CEABD88);
    sub_21E078B1C(&qword_280F68E88, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABDC0);
  }

  return result;
}

unint64_t sub_21E078A64()
{
  result = qword_27CEABDE8;
  if (!qword_27CEABDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABDE0);
    sub_21DFC281C();
    sub_21DF23E5C(&qword_27CEABDF0, &qword_27CEABDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABDE8);
  }

  return result;
}

uint64_t sub_21E078B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E078B64(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF4AA04;

  return sub_21E071C0C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for FeedbackControlBar(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  v6 = sub_21E13D994();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v1[7];
  v9 = sub_21E13DF64();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v1[10];
  v12 = sub_21E13D344();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70);

  v13(v3 + v1[11], v12);

  return swift_deallocObject();
}

uint64_t sub_21E078F70(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E0724D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E079068(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E070418(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E079158(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E070998(a1, v6, v7, v1 + v5);
}

unint64_t sub_21E079250()
{
  result = qword_27CEABE10;
  if (!qword_27CEABE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABE08);
    sub_21E0771D4();
    sub_21DF23E5C(&qword_27CEABE18, &qword_27CEABE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABE10);
  }

  return result;
}

uint64_t sub_21E079308(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E073824(a1, v6, v7, v1 + v5);
}

uint64_t sub_21E0793F8(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackControlBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21DF8DAF8;

  return sub_21E074074(a1, v6, v7, v1 + v5);
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

void sub_21E079734()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21DF3EF6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E0797D0()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_21DF3EF6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21E079880(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_21E13F444() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 < a2)
  {
    v13 = ((((v12 + ((v6 + v9 + 2) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v11 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    v25 = v11 + (v21 | v20);
    return (v25 + 1);
  }

LABEL_29:
  v22 = (a1 + v6 + v9 + 2) & ~v9;
  if (v8 < 0x7FFFFFFE)
  {
    v24 = *(((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    v25 = v24 - 1;
    if (v25 < 0)
    {
      v25 = -1;
    }

    return (v25 + 1);
  }

  v23 = *(*(*(a3 + 16) - 8) + 48);

  return v23(v22);
}

void sub_21E079A6C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_21E13F444() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (a1 + v9 + v12 + 2) & ~v12;
      if (v11 < 0x7FFFFFFE)
      {
        v24 = ((((v14 + v22) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v24 = (a2 - 0x7FFFFFFF);
          v24[1] = 0;
        }

        else
        {
          v24[1] = a2;
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((v14 + ((v9 + v12 + 2) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_21E079CD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21E079D70(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), double a6)
{
  v11 = a4(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  *(v13 + v11[5]) = a1;
  *(v13 + v11[6]) = a6;
  v14 = v13 + v11[7];
  v17[15] = 0;
  sub_21E141704();
  v15 = v18;
  *v14 = v17[16];
  *(v14 + 1) = v15;
  MEMORY[0x223D51B40](v13, a2, v11, a3);
  return sub_21E07CB6C(v13, a5);
}

uint64_t sub_21E079EB0@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a1;
  v92 = a3;
  v93 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v98 = v4;
  v91 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v9 + 24);
  v10 = type metadata accessor for InterpolatingBackgroundMaterial();
  v77 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v74 = &v68 - v11;
  swift_getWitnessTable();
  v69 = sub_21E140464();
  v12 = sub_21E13FB54();
  v94 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7648);
  v15 = sub_21E13FB54();
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v68 - v16;
  v17 = sub_21E13FB54();
  v86 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v84 = &v68 - v18;
  v19 = sub_21E13FB54();
  v89 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v88 = &v68 - v20;
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v111 = WitnessTable;
  v112 = v22;
  v70 = v12;
  v23 = swift_getWitnessTable();
  v24 = sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
  v71 = v23;
  v109 = v23;
  v110 = v24;
  v85 = v15;
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x277CE0790];
  v72 = v25;
  v107 = v25;
  v108 = MEMORY[0x277CE0790];
  v87 = v17;
  v73 = swift_getWitnessTable();
  v105 = v73;
  v106 = v26;
  v27 = a2;
  v28 = swift_getWitnessTable();
  v90 = v19;
  v101 = v19;
  v102 = MEMORY[0x277D839B0];
  v79 = v28;
  v103 = v28;
  v104 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v76 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v78 = &v68 - v32;
  v33 = v96;
  v34 = v96 + *(a2 + 40);
  v35 = v75;
  (*(v97 + 16))(v75, v34, v6, v31);
  v36 = v33;
  v37 = sub_21E07A9C4(v27);
  v38 = v74;
  v97 = v6;
  sub_21DFF6F1C(v35, v37, v6, v74);
  MEMORY[0x223D51B40](v38, v69, v10, WitnessTable);
  (*(v77 + 8))(v38, v10);
  LODWORD(v77) = *(v36 + *(v27 + 36));
  if (v77 == 1)
  {
    sub_21E141D74();
    sub_21E141CF4();
  }

  else
  {
    sub_21E141D64();
  }

  v39 = (v36 + *(v27 + 48));
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v101) = v40;
  v102 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  LOBYTE(v101) = v100;
  v42 = v82;
  v43 = v70;
  sub_21E141384();

  (*(v94 + 8))(v14, v43);
  v44 = v93;
  v45 = *(v93 + 16);
  v94 = v93 + 16;
  v95 = v45;
  v46 = v91;
  v45(v91, v36, v27);
  v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v48 = swift_allocObject();
  v49 = v99;
  *(v48 + 16) = v97;
  *(v48 + 24) = v49;
  v93 = *(v44 + 32);
  (v93)(v48 + v47, v46, v27);
  v50 = v84;
  v51 = v85;
  sub_21E141314();

  (*(v83 + 8))(v42, v51);
  v95(v46, v96, v27);
  v52 = swift_allocObject();
  v53 = v99;
  *(v52 + 16) = v97;
  *(v52 + 24) = v53;
  (v93)(v52 + v47, v46, v27);
  v54 = v88;
  v55 = v87;
  sub_21E140E04();

  (*(v86 + 8))(v50, v55);
  LOBYTE(v101) = v77;
  v95(v46, v96, v27);
  v56 = swift_allocObject();
  v57 = v99;
  *(v56 + 16) = v97;
  *(v56 + 24) = v57;
  (v93)(v56 + v47, v46, v27);
  v58 = v76;
  v59 = v90;
  v60 = MEMORY[0x277D839B0];
  v61 = v79;
  v62 = MEMORY[0x277D839C8];
  sub_21E141324();

  (*(v89 + 8))(v54, v59);
  v101 = v59;
  v102 = v60;
  v103 = v61;
  v104 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v78;
  v65 = OpaqueTypeMetadata2;
  sub_21DFE2A0C(v58, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v66 = *(v80 + 8);
  v66(v58, v65);
  sub_21DFE2A0C(v64, v65, OpaqueTypeConformance2);
  return (v66)(v64, v65);
}

uint64_t sub_21E07A9C4(uint64_t a1)
{
  v3 = sub_21E13F444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8];
  if (*(v1 + *(a1 + 36)) == 1)
  {
    v10 = (v1 + *(a1 + 48));
    v11 = *v10;
    v12 = *(v10 + 1);
    v21[16] = v11;
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141714();
    v13 = v21[15];
    sub_21E021DE8(v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
    v14 = sub_21E13F434();
    v15 = *(v4 + 8);
    v15(v6, v3);
    v15(v9, v3);
    if (v14)
    {
      v16 = 4;
    }

    else
    {
      v16 = 1;
    }

    if (v14)
    {
      v17 = 5;
    }

    else
    {
      v17 = 2;
    }

    if (v13 == 1)
    {
      return v17;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    sub_21E021DE8(&v21[-v8]);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
    v19 = sub_21E13F434();
    v20 = *(v4 + 8);
    v20(v6, v3);
    v20(v9, v3);
    if (v19)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21E07ABF8(uint64_t a1)
{
  result = type metadata accessor for MorphingContainerBackgroundModifier();
  if (*(a1 + *(result + 36)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    return sub_21E141724();
  }

  return result;
}

uint64_t sub_21E07AC7C()
{
  type metadata accessor for MorphingContainerBackgroundModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

uint64_t sub_21E07ACEC()
{
  type metadata accessor for MorphingContainerBackgroundModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

uint64_t sub_21E07AD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v3 = type metadata accessor for BreathingScaleEffectModifier(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = v4;
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF18);
  MEMORY[0x28223BE20](v35);
  v7 = &v35 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF20);
  MEMORY[0x28223BE20](v37);
  v9 = &v35 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF28);
  MEMORY[0x28223BE20](v38);
  v11 = &v35 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF30);
  MEMORY[0x28223BE20](v40);
  v41 = &v35 - v12;
  v13 = v2 + *(v3 + 28);
  v14 = *v13;
  v15 = *(v13 + 8);
  v45 = *v13;
  v46 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  v16 = 1.0;
  if (v44 == 1)
  {
    if (*(v2 + *(v3 + 20)))
    {
      v16 = 0.95;
    }

    else
    {
      v16 = 1.0;
    }
  }

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v18 = v17;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF38);
  (*(*(v21 - 8) + 16))(v7, v36, v21);
  v22 = &v7[*(v35 + 36)];
  *v22 = v16;
  *(v22 + 1) = v16;
  *(v22 + 2) = v18;
  *(v22 + 3) = v20;
  LODWORD(v36) = *(v2 + *(v3 + 20));
  if (v36 == 1)
  {
    sub_21E141D74();
    v23 = v2;
    v24 = sub_21E141CF4();
  }

  else
  {
    v24 = sub_21E141D64();
    v23 = v2;
  }

  v45 = v14;
  v46 = v15;
  sub_21E141714();
  v25 = v44;
  sub_21DF3DE9C(v7, v9, &qword_27CEABF18);
  v26 = &v9[*(v37 + 36)];
  *v26 = v24;
  v26[8] = v25;
  sub_21E07C5D8(v23, v5, type metadata accessor for BreathingScaleEffectModifier);
  v27 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v28 = swift_allocObject();
  sub_21E07C640(v5, v28 + v27, type metadata accessor for BreathingScaleEffectModifier);
  sub_21DF3DE9C(v9, v11, &qword_27CEABF20);
  v29 = &v11[*(v38 + 36)];
  *v29 = sub_21E07C6A8;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  sub_21E07C5D8(v23, v5, type metadata accessor for BreathingScaleEffectModifier);
  v30 = swift_allocObject();
  sub_21E07C640(v5, v30 + v27, type metadata accessor for BreathingScaleEffectModifier);
  v31 = v41;
  sub_21DF3DE9C(v11, v41, &qword_27CEABF28);
  v32 = (v31 + *(v40 + 36));
  *v32 = 0;
  v32[1] = 0;
  v32[2] = sub_21E07C708;
  v32[3] = v30;
  v45 = v36;
  sub_21E07C5D8(v23, v5, type metadata accessor for BreathingScaleEffectModifier);
  v33 = swift_allocObject();
  sub_21E07C640(v5, v33 + v27, type metadata accessor for BreathingScaleEffectModifier);
  sub_21E07C7F4(&qword_27CEABF40, &qword_27CEABF30, &unk_21E1525A0, sub_21E07C878);
  sub_21E141324();

  return sub_21DF23614(v31, &qword_27CEABF30);
}

uint64_t sub_21E07B300(uint64_t a1)
{
  v25 = a1;
  v26 = sub_21E141E74();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E141E94();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BreathingScaleEffectModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_21E141EB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_21DFA9C80();
  v23 = sub_21E1425C4();
  sub_21E141EA4();
  sub_21E141EC4();
  v24 = *(v10 + 8);
  v24(v12, v9);
  sub_21E07C5D8(v25, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BreathingScaleEffectModifier);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_21E07C640(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BreathingScaleEffectModifier);
  aBlock[4] = sub_21E07CA98;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E079CD4;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);

  sub_21E141E84();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21E01968C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
  v19 = v26;
  sub_21E142764();
  v20 = v23;
  MEMORY[0x223D52DF0](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v24)(v15, v9);
}

uint64_t sub_21E07B7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v54 = a2;
  v4 = type metadata accessor for BreathingContentEffectModifier(0);
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_21E13F444();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v39[-v11];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABEC8);
  MEMORY[0x28223BE20](v46);
  v14 = &v39[-v13];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABED0);
  MEMORY[0x28223BE20](v47);
  v16 = &v39[-v15];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABED8);
  MEMORY[0x28223BE20](v48);
  v49 = &v39[-v17];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABEE0);
  MEMORY[0x28223BE20](v51);
  v52 = &v39[-v18];
  v19 = (v2 + *(v4 + 28));
  v20 = *v19;
  v21 = *(v19 + 1);
  v43 = v20;
  v56 = v20;
  v44 = v21;
  v57 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  sub_21E141714();
  v22 = 1.0;
  if (v55 == 1 && *(v2 + *(v4 + 20)) == 1)
  {
    sub_21E021DE8(v12);
    v23 = v42;
    (*(v7 + 104))(v9, *MEMORY[0x277CDF3C0], v42);
    v40 = sub_21E13F434();
    v41 = v3;
    v24 = *(v7 + 8);
    v24(v9, v23);
    v24(v12, v23);
    v3 = v41;
    if (v40)
    {
      v22 = 0.7;
    }

    else
    {
      v22 = 0.75;
    }
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABEE8);
  (*(*(v25 - 8) + 16))(v14, v45, v25);
  *&v14[*(v46 + 36)] = v22;
  v26 = *(v3 + *(v4 + 20));
  if (v26 == 1)
  {
    sub_21E141D74();
    v27 = sub_21E141CF4();
  }

  else
  {
    v27 = sub_21E141D64();
  }

  v56 = v43;
  v57 = v44;
  sub_21E141714();
  v28 = v55;
  sub_21DF3DE9C(v14, v16, &qword_27CEABEC8);
  v29 = &v16[*(v47 + 36)];
  *v29 = v27;
  v29[8] = v28;
  sub_21E07C5D8(v3, v6, type metadata accessor for BreathingContentEffectModifier);
  v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v31 = swift_allocObject();
  sub_21E07C640(v6, v31 + v30, type metadata accessor for BreathingContentEffectModifier);
  v32 = v49;
  sub_21DF3DE9C(v16, v49, &qword_27CEABED0);
  v33 = &v32[*(v48 + 36)];
  *v33 = sub_21E07BFC4;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  sub_21E07C5D8(v3, v6, type metadata accessor for BreathingContentEffectModifier);
  v34 = swift_allocObject();
  sub_21E07C640(v6, v34 + v30, type metadata accessor for BreathingContentEffectModifier);
  v35 = v52;
  sub_21DF3DE9C(v32, v52, &qword_27CEABED8);
  v36 = &v35[*(v51 + 36)];
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_21E07C130;
  v36[3] = v34;
  v56 = v26;
  sub_21E07C5D8(v3, v6, type metadata accessor for BreathingContentEffectModifier);
  v37 = swift_allocObject();
  sub_21E07C640(v6, v37 + v30, type metadata accessor for BreathingContentEffectModifier);
  sub_21E07C7F4(&qword_27CEABEF0, &qword_27CEABEE0, &unk_21E152570, sub_21E07C19C);
  sub_21E141324();

  return sub_21DF23614(v35, &qword_27CEABEE0);
}

uint64_t sub_21E07BE4C(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  if (*(a1 + *(result + 20)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    return sub_21E141724();
  }

  return result;
}

uint64_t sub_21E07BED4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

uint64_t sub_21E07BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
  return sub_21E141724();
}

uint64_t objectdestroyTm_21(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_21E07C19C()
{
  result = qword_27CEABEF8;
  if (!qword_27CEABEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABED8);
    sub_21E07C930(&qword_27CEABF00, &qword_27CEABED0, &unk_21E152560, sub_21E07C254);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABEF8);
  }

  return result;
}

unint64_t sub_21E07C254()
{
  result = qword_27CEABF08;
  if (!qword_27CEABF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABEC8);
    sub_21DF23E5C(&qword_27CEABF10, &qword_27CEABEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF08);
  }

  return result;
}

uint64_t sub_21E07C33C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for MorphingContainerBackgroundModifier() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t objectdestroy_25Tm_0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MorphingContainerBackgroundModifier();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v0 + v3 + *(v2 + 40), v1);

  return swift_deallocObject();
}

uint64_t sub_21E07C53C()
{
  type metadata accessor for MorphingContainerBackgroundModifier();

  return sub_21E07ACEC();
}

uint64_t sub_21E07C5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E07C640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E07C6A8()
{
  v1 = *(type metadata accessor for BreathingScaleEffectModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21E07B300(v2);
}

uint64_t sub_21E07C7F4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E07C878()
{
  result = qword_27CEABF48;
  if (!qword_27CEABF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABF28);
    sub_21E07C930(&qword_27CEABF50, &qword_27CEABF20, &unk_21E152590, sub_21E07C9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF48);
  }

  return result;
}

uint64_t sub_21E07C930(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E07C9E0()
{
  result = qword_27CEABF58;
  if (!qword_27CEABF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABF18);
    sub_21DF23E5C(&qword_27CEABF60, &qword_27CEABF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF58);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E07CB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAHyAA01_c9Modifier_I0Vy018VisualIntelligenceB009Breathingi6EffectJ0VGAA08_OpacityN0VGAA010_AnimationJ0VySbGGAA017_AppearanceActionJ0VGAWG_SbQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_21E07C7F4(a4, a2, a3, a5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t InternalAccessoryControlViewModifier.body(content:)(uint64_t a1)
{
  v2 = sub_21E1419A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF68);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  v9 = sub_21E141514();

  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF70);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF78) + 36)];
  *v12 = KeyPath;
  v12[1] = v9;
  LOBYTE(a1) = sub_21E140914();
  sub_21E13F374();
  v13 = &v8[*(v6 + 36)];
  *v13 = a1;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_21E141964();
  sub_21E07F6E8(&qword_27CEABF80, &qword_27CEABF68, &unk_21E152620, sub_21E07EBB8);
  sub_21E06560C();
  sub_21E140E54();
  (*(v3 + 8))(v5, v2);
  return sub_21DF23614(v8, &qword_27CEABF68);
}

uint64_t ControlMaterialProvider.resolveLayers(in:)()
{
  v0 = sub_21E141424();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF98);
  sub_21E141C44();
  v4 = swift_allocObject();
  v6 = xmmword_21E145380;
  *(v4 + 16) = xmmword_21E145380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA0);
  sub_21E141C24();
  *(swift_allocObject() + 16) = v6;
  sub_21E141C14();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v0);
  sub_21E141544();
  sub_21E141C34();

  return v4;
}

uint64_t sub_21E07D1A8()
{
  v0 = sub_21E141424();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABF98);
  sub_21E141C44();
  v4 = swift_allocObject();
  v6 = xmmword_21E145380;
  *(v4 + 16) = xmmword_21E145380;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA0);
  sub_21E141C24();
  *(swift_allocObject() + 16) = v6;
  sub_21E141C14();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v0);
  sub_21E141544();
  sub_21E141C34();

  return v4;
}

uint64_t sub_21E07D480@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v57 = sub_21E13F444();
  v5 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC028);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC030);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = sub_21E140904();
  sub_21E13F374();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC038);
  (*(*(v25 - 8) + 16))(v11, a1, v25);
  v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC040) + 36)];
  *v26 = v16;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  LOBYTE(a1) = sub_21E140974();
  sub_21E13F374();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC048) + 36)];
  *v35 = a1;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_21E141CC4();
  v38 = v37;
  v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC050) + 36)];
  *v39 = sub_21E141CC4();
  v39[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC058);
  sub_21E07D8B8(a2, v39 + *(v41 + 44));
  v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC060) + 36));
  *v42 = v36;
  v42[1] = v38;
  v43 = sub_21E141524();
  KeyPath = swift_getKeyPath();
  v45 = &v11[*(v9 + 44)];
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = MEMORY[0x277CDF3D0];
  if ((a2 & 1) == 0)
  {
    v46 = MEMORY[0x277CDF3C0];
  }

  v47 = v57;
  (*(v5 + 104))(v7, *v46, v57);
  v48 = swift_getKeyPath();
  v49 = &v15[*(v13 + 44)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730);
  (*(v5 + 32))(v49 + *(v50 + 28), v7, v47);
  *v49 = v48;
  sub_21DF3DE9C(v11, v15, &qword_27CEAC028);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC068);
  v52 = v58;
  v53 = v58 + *(v51 + 36);
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_21E140144();
  (*(*(v55 - 8) + 104))(v53, v54, v55);
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E38) + 36)) = 256;
  return sub_21DF3DE9C(v15, v52, &qword_27CEAC030);
}

uint64_t sub_21E07D8B8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC070);
  MEMORY[0x28223BE20](v41);
  v3 = &v35[-v2];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC078);
  MEMORY[0x28223BE20](v37);
  v5 = &v35[-v4];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC080);
  MEMORY[0x28223BE20](v38);
  v7 = &v35[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC088);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v40 = &v35[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC090);
  MEMORY[0x28223BE20](v12);
  v39 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v35[-v15];
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_21E140144();
  v19 = *(*(v18 - 8) + 104);
  v19(v16, v17, v18);
  sub_21E07F258();
  sub_21E141C54();
  *&v16[*(v12 + 56)] = 256;
  if (v36)
  {
    v19(v7, v17, v18);
    sub_21E141BF4();
    *&v7[*(v12 + 56)] = 256;
    v20 = &v7[*(v38 + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730) + 28);
    v22 = *MEMORY[0x277CDF3D0];
    v23 = sub_21E13F444();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    sub_21DF236C0(v7, v5, &qword_27CEAC080);
    swift_storeEnumTagMultiPayload();
    sub_21E07F2AC();
    sub_21DF23E5C(&qword_27CEAC0C0, &qword_27CEAC070);
    v24 = v40;
    sub_21E1402F4();
    v25 = v7;
    v26 = &qword_27CEAC080;
  }

  else
  {
    v19(v3, v17, v18);
    sub_21E141484();
    v27 = sub_21E141514();

    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    sub_21E141514();

    v28 = v41;
    v29 = &v3[*(v41 + 52)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A0);
    sub_21E13F4B4();

    *v29 = v27;
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    sub_21E141514();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A8);
    sub_21E13F4B4();

    *&v3[*(v28 + 56)] = 256;
    sub_21DF236C0(v3, v5, &qword_27CEAC070);
    swift_storeEnumTagMultiPayload();
    sub_21E07F2AC();
    sub_21DF23E5C(&qword_27CEAC0C0, &qword_27CEAC070);
    v24 = v40;
    sub_21E1402F4();
    v25 = v3;
    v26 = &qword_27CEAC070;
  }

  sub_21DF23614(v25, v26);
  v30 = v39;
  sub_21DF236C0(v16, v39, &qword_27CEAC090);
  v31 = v42;
  sub_21DF236C0(v24, v42, &qword_27CEAC088);
  v32 = v43;
  sub_21DF236C0(v30, v43, &qword_27CEAC090);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0C8);
  sub_21DF236C0(v31, v32 + *(v33 + 48), &qword_27CEAC088);
  sub_21DF23614(v24, &qword_27CEAC088);
  sub_21DF23614(v16, &qword_27CEAC090);
  sub_21DF23614(v31, &qword_27CEAC088);
  return sub_21DF23614(v30, &qword_27CEAC090);
}

uint64_t CapsuleInsetSpreadShadowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA8) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8) + 36));
  *v16 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC8);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t sub_21E07E0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFA8) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8) + 36));
  *v16 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC8);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t sub_21E07E298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0D0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0D8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  LOBYTE(a1) = sub_21E140914();
  sub_21E13F374();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0E0) + 36);
  *v16 = a1;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_21E141CC4();
  v19 = v18;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0E8) + 36));
  *v20 = sub_21E141CC4();
  v20[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0F0);
  sub_21E07E49C(v20 + *(v22 + 44));
  v23 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0F8) + 36));
  *v23 = v17;
  v23[1] = v19;
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC100) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730) + 28);
  v26 = *MEMORY[0x277CDF3C0];
  v27 = sub_21E13F444();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  result = swift_getKeyPath();
  *v24 = result;
  return result;
}

uint64_t sub_21E07E49C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC108);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC110);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_21E07F258();
  sub_21E141C54();
  *&v14[*(v9 + 64)] = 256;
  sub_21E141484();
  v15 = sub_21E141514();

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21E141514();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A0);
  sub_21E13F4B4();

  *v7 = v15;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21E141514();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC0A8);
  sub_21E13F4B4();

  *(v7 + *(v2 + 64)) = 256;
  sub_21DF236C0(v14, v11, &qword_27CEAC110);
  sub_21DF236C0(v7, v4, &qword_27CEAC108);
  v16 = v20;
  sub_21DF236C0(v11, v20, &qword_27CEAC110);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC118);
  sub_21DF236C0(v4, v16 + *(v17 + 48), &qword_27CEAC108);
  sub_21DF23614(v7, &qword_27CEAC108);
  sub_21DF23614(v14, &qword_27CEAC110);
  sub_21DF23614(v4, &qword_27CEAC108);
  return sub_21DF23614(v11, &qword_27CEAC110);
}

uint64_t CircleInsetSpreadShadowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD0) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8) + 36));
  *v16 = vdupq_n_s64(0x3FEE666666666666uLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD8);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t sub_21E07E950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD0) + 36);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_21E140144();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_21E141484();
  v10 = sub_21E141514();

  v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB0) + 36);
  *v11 = v10;
  *(v11 + 8) = xmmword_21E1525F0;
  *(v11 + 24) = 0x402E000000000000;
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v13 = v12;
  v15 = v14;
  v16 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFB8) + 36));
  *v16 = vdupq_n_s64(0x3FEE666666666666uLL);
  v16[1].i64[0] = v13;
  v16[1].i64[1] = v15;
  v17 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFC0) + 36));
  *v17 = v4;
  v17[1] = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABFD8);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2, a1, v18);
}

uint64_t View.controlCircleStyle()(uint64_t a1, uint64_t a2)
{
  v6[0] = sub_21E07EC9C();
  v6[1] = v4;
  MEMORY[0x223D51B40](v6, a1, &type metadata for ControlCircleStyling, a2);
}

unint64_t sub_21E07EBB8()
{
  result = qword_27CEABF88;
  if (!qword_27CEABF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABF78);
    sub_21DF23E5C(&qword_27CEABF90, &qword_27CEABF70);
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABF88);
  }

  return result;
}

uint64_t sub_21E07EC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21E144A20;
  sub_21E07F390();
  v1 = [objc_opt_self() textAssistantReplacementBuildInPalette];
  v2 = sub_21E142604();
  [v2 setDuration_];
  [v2 setDirection_];
  v3 = [objc_opt_self() directionalLightWithConfiguration_];
  v4 = [objc_allocWithZone(MEMORY[0x277D76028]) initWithLightSource_];

  *(v0 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC120);
  sub_21E141704();
  return v6;
}

unint64_t sub_21E07EDFC()
{
  result = qword_27CEABFE0;
  if (!qword_27CEABFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABFE0);
  }

  return result;
}

unint64_t sub_21E07EE54()
{
  result = qword_27CEABFE8;
  if (!qword_27CEABFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABFE8);
  }

  return result;
}

unint64_t sub_21E07EF20()
{
  result = qword_27CEABFF0;
  if (!qword_27CEABFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABFA8);
    sub_21DF23E5C(&qword_27CEABFF8, &qword_27CEABFC8);
    sub_21DF23E5C(&qword_27CEAC000, &qword_27CEABFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEABFF0);
  }

  return result;
}

unint64_t sub_21E07F004()
{
  result = qword_27CEAC008;
  if (!qword_27CEAC008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABFD0);
    sub_21DF23E5C(&qword_27CEAC010, &qword_27CEABFD8);
    sub_21DF23E5C(&qword_27CEAC000, &qword_27CEABFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC008);
  }

  return result;
}

unint64_t sub_21E07F0E8()
{
  result = qword_27CEAC018;
  if (!qword_27CEAC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC018);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx018VisualIntelligenceB021ControlCapsuleStylingVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_21E13FB54();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_21E07F1AC()
{
  result = qword_27CEAC020;
  if (!qword_27CEAC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC020);
  }

  return result;
}

unint64_t sub_21E07F258()
{
  result = qword_27CEAC098;
  if (!qword_27CEAC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC098);
  }

  return result;
}

unint64_t sub_21E07F2AC()
{
  result = qword_27CEAC0B0;
  if (!qword_27CEAC0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC080);
    sub_21DF23E5C(&qword_27CEAC0B8, &qword_27CEAC090);
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC0B0);
  }

  return result;
}

unint64_t sub_21E07F390()
{
  result = qword_27CEAA6D8;
  if (!qword_27CEAA6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEAA6D8);
  }

  return result;
}

unint64_t sub_21E07F3DC()
{
  result = qword_27CEAC128;
  if (!qword_27CEAC128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC068);
    sub_21E07F494();
    sub_21DF23E5C(&qword_27CEA6E60, &qword_27CEA6E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC128);
  }

  return result;
}

unint64_t sub_21E07F494()
{
  result = qword_27CEAC130;
  if (!qword_27CEAC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC030);
    sub_21E07F54C();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC130);
  }

  return result;
}

unint64_t sub_21E07F54C()
{
  result = qword_27CEAC138;
  if (!qword_27CEAC138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC028);
    sub_21E07F604();
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC138);
  }

  return result;
}

unint64_t sub_21E07F604()
{
  result = qword_27CEAC140;
  if (!qword_27CEAC140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC050);
    sub_21E07F6E8(&qword_27CEAC148, &qword_27CEAC048, &unk_21E152A68, sub_21E07F76C);
    sub_21DF23E5C(&qword_27CEAC160, &qword_27CEAC060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC140);
  }

  return result;
}

uint64_t sub_21E07F6E8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E07F76C()
{
  result = qword_27CEAC150;
  if (!qword_27CEAC150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC040);
    sub_21DF23E5C(&qword_27CEAC158, &qword_27CEAC038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC150);
  }

  return result;
}

unint64_t sub_21E07F824()
{
  result = qword_27CEAC168;
  if (!qword_27CEAC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC100);
    sub_21E07F8DC();
    sub_21DF23E5C(&qword_280F68DE0, &qword_27CEA9730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC168);
  }

  return result;
}

unint64_t sub_21E07F8DC()
{
  result = qword_27CEAC170;
  if (!qword_27CEAC170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC0E8);
    sub_21E07F6E8(&qword_27CEAC178, &qword_27CEAC0E0, &unk_21E152B20, sub_21E07F9C0);
    sub_21DF23E5C(&qword_27CEAC190, &qword_27CEAC0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC170);
  }

  return result;
}

unint64_t sub_21E07F9C0()
{
  result = qword_27CEAC180;
  if (!qword_27CEAC180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC0D8);
    sub_21DF23E5C(&qword_27CEAC188, &qword_27CEAC0D0);
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC180);
  }

  return result;
}

char *VIUVisualIntelligenceOmnibar.__allocating_init(omniBar:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Omnibar();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = objc_allocWithZone(v2);
  *&v10[OBJC_IVAR___VIUVisualIntelligenceOmnibar_analysisResult] = 0;
  sub_21E02C8A4(a1, &v10[OBJC_IVAR___VIUVisualIntelligenceOmnibar_omniBar]);
  sub_21E02C8A4(a1, v9);
  v11 = objc_allocWithZone(type metadata accessor for VIUOmnibarHostingController(0));
  sub_21E02C8A4(v9, v6);
  v12 = sub_21E140204();
  sub_21E07FFF0(v9);
  *&v10[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] = v12;
  v23.receiver = v10;
  v23.super_class = v2;
  v13 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController;
  v15 = [*&v13[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] view];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    [v13 bounds];
    [v17 setFrame_];

    [v17 setAutoresizingMask_];
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 clearColor];
    [v19 setBackgroundColor_];
  }

  result = [*&v13[v14] view];
  if (result)
  {
    v22 = result;
    [v13 addSubview_];

    sub_21E07FFF0(a1);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *VIUVisualIntelligenceOmnibar.init(omniBar:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Omnibar();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  *&v2[OBJC_IVAR___VIUVisualIntelligenceOmnibar_analysisResult] = 0;
  sub_21E02C8A4(a1, &v2[OBJC_IVAR___VIUVisualIntelligenceOmnibar_omniBar]);
  sub_21E02C8A4(a1, v9);
  objc_allocWithZone(type metadata accessor for VIUOmnibarHostingController(0));
  sub_21E02C8A4(v9, v6);
  v10 = sub_21E140204();
  sub_21E07FFF0(v9);
  *&v2[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] = v10;
  v11 = type metadata accessor for VIUVisualIntelligenceOmnibar(0);
  v22.receiver = v2;
  v22.super_class = v11;
  v12 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController;
  v14 = [*&v12[OBJC_IVAR___VIUVisualIntelligenceOmnibar_hostingController] view];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    [v12 bounds];
    [v16 setFrame_];

    [v16 setAutoresizingMask_];
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 clearColor];
    [v18 setBackgroundColor_];
  }

  result = [*&v12[v13] view];
  if (result)
  {
    v21 = result;
    [v12 addSubview_];

    sub_21E07FFF0(a1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E07FF30(uint64_t a1)
{
  v3 = type metadata accessor for Omnibar();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_21E02C8A4(a1, v5);
  v7 = sub_21E140204();
  sub_21E07FFF0(a1);
  return v7;
}

uint64_t sub_21E07FFF0(uint64_t a1)
{
  v2 = type metadata accessor for Omnibar();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id VIUVisualIntelligenceOmnibar.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_21E080290(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21E0802F8()
{
  result = type metadata accessor for Omnibar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double FeatureOnboardingOverlay.init(experience:fullScreenRequested:continueAction:cancellationAction:)@<D0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  sub_21E141704();
  *(a7 + 64) = v15;
  *(a7 + 72) = v16;
  sub_21E141704();
  result = v15;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;
  *(a7 + 17) = v13;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = a2;
  return result;
}

VisualIntelligenceUI::FeatureOnboardingOverlayExperience_optional __swiftcall FeatureOnboardingOverlayExperience.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21E142A34();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeatureOnboardingOverlayExperience.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656D63416B7361;
  v3 = 1769105779;
  v4 = 0x617261746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 0x6F4C6C6175736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6165536567616D69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_21E080620(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656D63416B7361;
  v5 = 0xE400000000000000;
  v6 = 1769105779;
  v7 = 0xE700000000000000;
  v8 = 0x617261746E6F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6F4C6C6175736976;
    v7 = 0xEC00000070556B6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6165536567616D69;
    v3 = 0xEB00000000686372;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21E0806D4()
{
  sub_21E142C14();
  sub_21E142204();

  return sub_21E142C44();
}

uint64_t sub_21E0807C0()
{
  sub_21E142204();
}

uint64_t sub_21E080898()
{
  sub_21E142C14();
  sub_21E142204();

  return sub_21E142C44();
}

uint64_t FeatureOnboardingOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v45 = sub_21E140364();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1A8);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v37 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1B0);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1B8);
  MEMORY[0x28223BE20](v38);
  v8 = &v37 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1C0);
  MEMORY[0x28223BE20](v37);
  v10 = &v37 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1C8);
  MEMORY[0x28223BE20](v46);
  v12 = &v37 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1D0);
  MEMORY[0x28223BE20](v47);
  v14 = &v37 - v13;
  v15 = v1[3];
  v59 = v1[2];
  v60 = v15;
  v16 = v1[5];
  v61 = v1[4];
  v62 = v16;
  v17 = v1[1];
  v57 = *v1;
  v58 = v17;
  v49 = &v57;
  sub_21E1408F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1D8);
  sub_21DF23E5C(&qword_27CEAC1E0, &qword_27CEAC1D8);
  sub_21E13F3C4();
  sub_21E140354();
  v18 = sub_21E1408F4();
  sub_21E1408E4();
  sub_21E1408E4();
  if (sub_21E1408E4() != v18)
  {
    sub_21E1408E4();
  }

  sub_21DF23E5C(&qword_27CEAC1E8, &qword_27CEAC1A8);
  v19 = v39;
  v20 = v43;
  sub_21E141104();
  (*(v44 + 8))(v3, v45);
  (*(v42 + 8))(v5, v20);
  v21 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  KeyPath = swift_getKeyPath();
  (*(v40 + 32))(v8, v19, v41);
  v23 = &v8[*(v38 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = &v10[*(v37 + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730) + 28);
  v26 = *MEMORY[0x277CDF3C0];
  v27 = sub_21E13F444();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  sub_21DF3DE9C(v8, v10, &qword_27CEAC1B8);
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF3DE9C(v10, v12, &qword_27CEAC1C0);
  v28 = ((BYTE1(v58) & 0xFE) != 2) & ~BYTE8(v60);
  v29 = &v12[*(v46 + 36)];
  v30 = v55;
  *(v29 + 4) = v54;
  *(v29 + 5) = v30;
  *(v29 + 6) = v56;
  v31 = v51;
  *v29 = v50;
  *(v29 + 1) = v31;
  v32 = v53;
  *(v29 + 2) = v52;
  *(v29 + 3) = v32;
  sub_21DF3DE9C(v12, v14, &qword_27CEAC1C8);
  v33 = &v14[*(v47 + 36)];
  *v33 = v28;
  v33[1] = 0;
  v34 = v48;
  sub_21DF3DE9C(v14, v48, &qword_27CEAC1D0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC1F0);
  v36 = (v34 + *(result + 36));
  *v36 = sub_21E081798;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = 0;
  return result;
}

uint64_t sub_21E0810A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_21E141CC4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC230);
  return sub_21E0810F8(a1, a2 + *(v5 + 44));
}

uint64_t sub_21E0810F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC238);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC240);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC248);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = v27 - v18;
  if (*(a1 + 56))
  {
    v27[0] = v10;
    v27[1] = a1;
    v28 = a2;
    v29 = 0;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E147C80;
    v22 = sub_21E1408D4();
    *(inited + 32) = v22;
    v23 = sub_21E1408F4();
    *(inited + 33) = v23;
    sub_21E1408E4();
    sub_21E1408E4();
    if (sub_21E1408E4() != v22)
    {
      sub_21E1408E4();
    }

    sub_21E1408E4();
    if (sub_21E1408E4() != v23)
    {
      sub_21E1408E4();
    }

    v24 = v27[0];
    sub_21E141CC4();
    sub_21E141144();
    (*(v11 + 32))(v20, v13, v24);
    (*(v11 + 56))(v20, 0, 1, v24);
    a2 = v28;
  }

  else
  {
    (*(v11 + 56))(v27 - v18, 1, 1, v10, v19);
  }

  sub_21E0814D4(v9);
  sub_21DF236C0(v20, v16, &qword_27CEAC248);
  sub_21DF236C0(v9, v6, &qword_27CEAC238);
  sub_21DF236C0(v16, a2, &qword_27CEAC248);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC250);
  sub_21DF236C0(v6, a2 + *(v25 + 48), &qword_27CEAC238);
  sub_21DF23614(v9, &qword_27CEAC238);
  sub_21DF23614(v20, &qword_27CEAC248);
  sub_21DF23614(v6, &qword_27CEAC238);
  return sub_21DF23614(v16, &qword_27CEAC248);
}

uint64_t sub_21E0814D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC258);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC260);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v35 - v9;
  v11 = sub_21E13D934();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[3];
  v37[2] = v2[2];
  v38 = v15;
  v16 = v2[5];
  v39 = v2[4];
  v40 = v16;
  v17 = v2[1];
  v37[0] = *v2;
  v37[1] = v17;
  sub_21E13D924();
  v18 = sub_21E13D914();
  v20 = v19;
  (*(v12 + 8))(v14, v11);
  v21 = sub_21E1401C4();
  v22 = 0x4034000000000000;
  if (BYTE8(v38))
  {
    v22 = 0x4050000000000000;
  }

  *v6 = v21;
  *(v6 + 1) = v22;
  v6[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC268);
  sub_21E081878(v37, v18, v20, &v6[*(v23 + 44)]);

  v24 = sub_21E140914();
  sub_21E13F374();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_21DF3DE9C(v6, v10, &qword_27CEAC258);
  v33 = &v10[*(v8 + 44)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_21E140974();
  memset(v35, 0, sizeof(v35));
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC238);
  sub_21E1405A4();
  return sub_21DF3DE9C(v10, a1, &qword_27CEAC260);
}

uint64_t sub_21E081798()
{
  v0 = sub_21E13D444();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  sub_21E13D454();
  sub_21E13D434();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21E081878@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v390 = a2;
  v391 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC270);
  MEMORY[0x28223BE20](v6 - 8);
  v385 = &v309 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v384 = (&v309 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC278);
  MEMORY[0x28223BE20](v10);
  v325 = &v309 - v11;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC280);
  MEMORY[0x28223BE20](v322);
  v321 = &v309 - v12;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC288);
  MEMORY[0x28223BE20](v323);
  v324 = &v309 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v326 = &v309 - v15;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC290);
  MEMORY[0x28223BE20](v375);
  v351 = &v309 - v16;
  v340 = sub_21E13D384();
  v339 = *(v340 - 8);
  MEMORY[0x28223BE20](v340);
  v361 = &v309 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = sub_21E140A64();
  v355 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v354 = &v309 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC298);
  MEMORY[0x28223BE20](v357);
  v358 = &v309 - v19;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2A0);
  MEMORY[0x28223BE20](v360);
  v343 = &v309 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2A8);
  MEMORY[0x28223BE20](v21 - 8);
  v348 = &v309 - v22;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2B0);
  MEMORY[0x28223BE20](v344);
  v349 = &v309 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v345 = &v309 - v25;
  MEMORY[0x28223BE20](v26);
  v350 = &v309 - v27;
  v338 = sub_21E13D0A4();
  MEMORY[0x28223BE20](v338);
  v337 = &v309 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2B8);
  MEMORY[0x28223BE20](v29 - 8);
  v336 = &v309 - v30;
  v31 = sub_21E1420E4();
  MEMORY[0x28223BE20](v31 - 8);
  v320 = &v309 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v318 = &v309 - v34;
  MEMORY[0x28223BE20](v35);
  v317 = &v309 - v36;
  MEMORY[0x28223BE20](v37);
  v342 = &v309 - v38;
  MEMORY[0x28223BE20](v39);
  v335 = &v309 - v40;
  v41 = sub_21E1420C4();
  MEMORY[0x28223BE20](v41 - 8);
  v341 = &v309 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v333 = &v309 - v44;
  v365 = sub_21E13D0C4();
  v364 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v334 = &v309 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v363 = &v309 - v47;
  v347 = sub_21E13E1A4();
  v346 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v362 = &v309 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2C0);
  MEMORY[0x28223BE20](v379);
  v381 = &v309 - v49;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2C8);
  MEMORY[0x28223BE20](v372);
  v373 = &v309 - v50;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2D0);
  MEMORY[0x28223BE20](v380);
  v374 = &v309 - v51;
  v52 = sub_21E1400C4();
  MEMORY[0x28223BE20](v52 - 8);
  v332 = &v309 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  v369 = &v309 - v56;
  MEMORY[0x28223BE20](v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7200);
  MEMORY[0x28223BE20](v58 - 8);
  v313 = &v309 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v330 = &v309 - v61;
  MEMORY[0x28223BE20](v62);
  v367 = &v309 - v63;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD1C0);
  MEMORY[0x28223BE20](v388);
  v316 = &v309 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v312 = &v309 - v66;
  MEMORY[0x28223BE20](v67);
  v329 = &v309 - v68;
  MEMORY[0x28223BE20](v69);
  v71 = &v309 - v70;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2D8);
  v376 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v311 = &v309 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v328 = &v309 - v74;
  MEMORY[0x28223BE20](v75);
  v366 = &v309 - v76;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2E0);
  MEMORY[0x28223BE20](v387);
  v310 = &v309 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v327 = &v309 - v79;
  MEMORY[0x28223BE20](v80);
  v82 = &v309 - v81;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2E8);
  MEMORY[0x28223BE20](v378);
  v315 = &v309 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v314 = &v309 - v85;
  MEMORY[0x28223BE20](v86);
  v331 = &v309 - v87;
  MEMORY[0x28223BE20](v88);
  v90 = &v309 - v89;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2F0);
  MEMORY[0x28223BE20](v371);
  v319 = &v309 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v353 = &v309 - v93;
  MEMORY[0x28223BE20](v94);
  v352 = &v309 - v95;
  MEMORY[0x28223BE20](v96);
  v359 = &v309 - v97;
  MEMORY[0x28223BE20](v98);
  v370 = &v309 - v99;
  MEMORY[0x28223BE20](v100);
  v368 = &v309 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC2F8);
  MEMORY[0x28223BE20](v102 - 8);
  MEMORY[0x28223BE20](v103);
  v389 = &v309 - v104;
  v392 = a1;
  v105 = *(a1 + 17);
  v386 = a4;
  v382 = v10;
  v383 = v106;
  if (v105)
  {
    v107 = sub_21E142B14();

    if (v107)
    {
      goto LABEL_4;
    }

    if (v105 == 1)
    {
    }

    else
    {
      v134 = sub_21E142B14();

      if ((v134 & 1) == 0)
      {
        v133 = v392;
        v131 = v389;
        if (v105 == 2 || v105 == 3)
        {
          v207 = sub_21E142B14();

          if ((v207 & 1) == 0)
          {
            v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC300);
            (*(*(v208 - 8) + 56))(v131, 1, 1, v208);
            goto LABEL_36;
          }
        }

        else
        {
        }

        sub_21E1400D4();
        v209 = sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v210 = [objc_opt_self() mainBundle];
        }

        v211 = sub_21E140C64();
        v213 = v212;
        v393 = v211;
        v394 = v212;
        v215 = v214 & 1;
        v395 = v214 & 1;
        v396 = v216;
        v217 = v313;
        sub_21E141164();
        sub_21DF3DE8C(v211, v213, v215);

        v218 = sub_21E1409A4();
        KeyPath = swift_getKeyPath();
        v220 = v312;
        sub_21DF3DE9C(v217, v312, &qword_27CEA7200);
        v221 = (v220 + *(v388 + 36));
        *v221 = KeyPath;
        v221[1] = v218;
        sub_21E1409F4();
        v222 = sub_21E085E10();
        v223 = v311;
        v391 = v222;
        sub_21E140D84();
        sub_21DF23614(v220, &qword_27CEAD1C0);
        v224 = swift_getKeyPath();
        v225 = v310;
        (*(v376 + 32))(v310, v223, v377);
        v226 = v225 + *(v387 + 36);
        *v226 = v224;
        *(v226 + 8) = 1;
        v227 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v228 = v314;
        sub_21DF3DE9C(v225, v314, &qword_27CEAC2E0);
        v229 = v378;
        *(v228 + *(v378 + 36)) = v227;
        sub_21E142084();
        if (!sub_21E1426B4())
        {
          v230 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v393 = sub_21E142184();
        v394 = v231;
        v232 = sub_21E085EC8();
        sub_21DF252E0();
        v390 = v232;
        sub_21E141024();

        sub_21DF23614(v228, &qword_27CEAC2E8);
        sub_21E142084();
        v233 = sub_21E1426B4();
        v234 = v229;
        v377 = v209;
        if (!v233)
        {
          v235 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v236 = sub_21E142184();
        v238 = v237;
        v393 = v236;
        v394 = v237;

        v239 = sub_21E140C94();
        v241 = v240;
        v393 = v239;
        v394 = v240;
        v243 = v242 & 1;
        v395 = v242 & 1;
        v396 = v244;
        v245 = v316;
        sub_21E141164();
        sub_21DF3DE8C(v239, v241, v243);

        v246 = sub_21E1409A4();
        v247 = swift_getKeyPath();
        v248 = (v245 + *(v388 + 36));
        *v248 = v247;
        v248[1] = v246;
        sub_21E1409F4();
        v249 = v315;
        sub_21E140D84();
        sub_21DF23614(v245, &qword_27CEAD1C0);
        v250 = swift_getKeyPath();
        v251 = v249 + *(v387 + 36);
        *v251 = v250;
        *(v251 + 8) = 1;
        *(v249 + *(v234 + 36)) = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v393 = v236;
        v394 = v238;
        sub_21E141024();
        sub_21DF23614(v249, &qword_27CEAC2E8);

        sub_21E142084();
        if (!sub_21E1426B4())
        {
          v252 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v253 = sub_21E142184();
        v255 = v254;
        v393 = v253;
        v394 = v254;

        v256 = sub_21E140C94();
        v258 = v257;
        v393 = v256;
        v394 = v257;
        v260 = v259 & 1;
        v395 = v259 & 1;
        v396 = v261;
        v262 = v358;
        sub_21E141164();
        sub_21DF3DE8C(v256, v258, v260);

        v263 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v264 = swift_getKeyPath();
        v265 = (v262 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC330) + 36));
        *v265 = v264;
        v265[1] = v263;
        sub_21E140994();
        v266 = v355;
        v267 = v354;
        v268 = v356;
        (*(v355 + 104))(v354, *MEMORY[0x277CE0A10], v356);
        v269 = sub_21E140A94();

        (*(v266 + 8))(v267, v268);
        v270 = swift_getKeyPath();
        v271 = (v262 + *(v357 + 36));
        *v271 = v270;
        v271[1] = v269;
        sub_21E1409E4();
        sub_21E086074();
        v272 = v321;
        sub_21E140D84();
        sub_21DF23614(v262, &qword_27CEAC298);
        v273 = swift_getKeyPath();
        v274 = v272 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC348) + 36);
        *v274 = v273;
        *(v274 + 8) = 1;
        _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
        v275 = sub_21E141514();

        *(v272 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC350) + 36)) = v275;
        LOBYTE(v273) = sub_21E140924();
        sub_21E13F374();
        v276 = v272 + *(v360 + 36);
        *v276 = v273;
        *(v276 + 8) = v277;
        *(v276 + 16) = v278;
        *(v276 + 24) = v279;
        *(v276 + 32) = v280;
        *(v276 + 40) = 0;
        v281 = swift_getKeyPath();
        v282 = v272 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC358) + 36);
        *v282 = v281;
        *(v282 + 8) = 0;
        *(v282 + 16) = 1;
        *(v272 + *(v322 + 36)) = 256;
        v393 = v253;
        v394 = v255;
        sub_21E0861E4();
        v283 = v326;
        sub_21E141024();
        sub_21DF23614(v272, &qword_27CEAC280);

        v284 = swift_getKeyPath();
        v285 = swift_allocObject();
        v133 = v392;
        v286 = v392[3];
        v285[3] = v392[2];
        v285[4] = v286;
        v287 = v133[5];
        v285[5] = v133[4];
        v285[6] = v287;
        v288 = v133[1];
        v285[1] = *v133;
        v285[2] = v288;
        v289 = (v283 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC388) + 36));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC390);
        sub_21E0865A4(v133, &v393);
        sub_21E13F7D4();
        *v289 = v284;
        LOBYTE(v284) = sub_21E140934();
        sub_21E13F374();
        v290 = v283 + *(v323 + 36);
        *v290 = v284;
        *(v290 + 8) = v291;
        *(v290 + 16) = v292;
        *(v290 + 24) = v293;
        *(v290 + 32) = v294;
        *(v290 + 40) = 0;
        v295 = v359;
        sub_21DF236C0(v352, v359, &qword_27CEAC2F0);
        v296 = v319;
        sub_21DF236C0(v353, v319, &qword_27CEAC2F0);
        v297 = v324;
        sub_21DF236C0(v283, v324, &qword_27CEAC288);
        v298 = v325;
        sub_21DF236C0(v295, v325, &qword_27CEAC2F0);
        v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC398);
        sub_21DF236C0(v296, v298 + *(v299 + 48), &qword_27CEAC2F0);
        sub_21DF236C0(v297, v298 + *(v299 + 64), &qword_27CEAC288);
        sub_21DF23614(v297, &qword_27CEAC288);
        sub_21DF23614(v296, &qword_27CEAC2F0);
        sub_21DF23614(v295, &qword_27CEAC2F0);
        sub_21DF236C0(v298, v381, &qword_27CEAC278);
        swift_storeEnumTagMultiPayload();
        sub_21E0865DC();
        sub_21DF23E5C(&qword_27CEAC3B8, &qword_27CEAC278);
        v131 = v389;
        sub_21E1402F4();
        sub_21DF23614(v298, &qword_27CEAC278);
        sub_21DF23614(v326, &qword_27CEAC288);
        sub_21DF23614(v353, &qword_27CEAC2F0);
        sub_21DF23614(v352, &qword_27CEAC2F0);
LABEL_35:
        v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC300);
        (*(*(v300 - 8) + 56))(v131, 0, 1, v300);
        goto LABEL_36;
      }
    }

    sub_21E13E154();
    v135 = sub_21E13E174();
    v367 = sub_21E13E194();
    v368 = v136;
    v369 = sub_21E13E184();
    v390 = v137;
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E141634();
    sub_21E140084();

    sub_21E1400A4();
    v391 = v135;
    sub_21E140094();
    sub_21E1400A4();
    sub_21E1400E4();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v138 = [objc_opt_self() mainBundle];
    }

    v139 = sub_21E140C64();
    v141 = v140;
    v393 = v139;
    v394 = v140;
    v143 = v142 & 1;
    v395 = v142 & 1;
    v396 = v144;
    v145 = v330;
    sub_21E141164();
    sub_21DF3DE8C(v139, v141, v143);

    v146 = sub_21E140A44();
    v147 = swift_getKeyPath();
    v148 = v329;
    sub_21DF3DE9C(v145, v329, &qword_27CEA7200);
    v149 = (v148 + *(v388 + 36));
    *v149 = v147;
    v149[1] = v146;
    sub_21E1409F4();
    sub_21E085E10();
    v150 = v328;
    sub_21E140D84();
    sub_21DF23614(v148, &qword_27CEAD1C0);
    v151 = swift_getKeyPath();
    v152 = v327;
    (*(v376 + 32))(v327, v150, v377);
    v153 = v152 + *(v387 + 36);
    *v153 = v151;
    *(v153 + 8) = 1;
    v154 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v155 = v331;
    sub_21DF3DE9C(v152, v331, &qword_27CEAC2E0);
    *(v155 + *(v378 + 36)) = v154;
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E140094();
    sub_21E1400A4();
    sub_21E1400E4();
    if (!sub_21E1426B4())
    {
      v156 = [objc_opt_self() mainBundle];
    }

    v157 = sub_21E140C64();
    v159 = v158;
    v161 = v160;
    sub_21E085EC8();
    sub_21E141014();
    sub_21DF3DE8C(v157, v159, v161 & 1);

    sub_21DF23614(v155, &qword_27CEAC2E8);
    sub_21E1420B4();
    sub_21E1420A4();
    sub_21E142094();
    sub_21E1420A4();
    sub_21E142094();

    sub_21E1420A4();
    sub_21E142094();

    sub_21E1420A4();
    sub_21E1420D4();
    if (!sub_21E1426B4())
    {
      v162 = [objc_opt_self() mainBundle];
    }

    (*(v339 + 56))(v336, 1, 1, v340);
    v393 = MEMORY[0x277D84F90];
    sub_21E086750(&qword_27CEAC3C0, MEMORY[0x277CC8B58]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3C8);
    sub_21DF23E5C(&qword_27CEAC3D0, &qword_27CEAC3C8);
    sub_21E142764();
    v163 = v363;
    sub_21E13D0B4();
    (*(v364 + 16))(v334, v163, v365);
    v164 = sub_21E140C74();
    v166 = v165;
    v393 = v164;
    v394 = v165;
    v168 = v167 & 1;
    v395 = v167 & 1;
    v396 = v169;
    v170 = v358;
    sub_21E141164();
    sub_21DF3DE8C(v164, v166, v168);

    v171 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v172 = swift_getKeyPath();
    v173 = (v170 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC330) + 36));
    *v173 = v172;
    v173[1] = v171;
    sub_21E140994();
    v174 = v355;
    v175 = v354;
    v176 = v356;
    (*(v355 + 104))(v354, *MEMORY[0x277CE0A10], v356);
    v177 = sub_21E140A94();

    (*(v174 + 8))(v175, v176);
    v178 = swift_getKeyPath();
    v179 = (v170 + *(v357 + 36));
    *v179 = v178;
    v179[1] = v177;
    sub_21E1409E4();
    sub_21E086074();
    v180 = v343;
    sub_21E140D84();
    sub_21DF23614(v170, &qword_27CEAC298);
    v181 = swift_getKeyPath();
    v182 = v180 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC348) + 36);
    *v182 = v181;
    *(v182 + 8) = 1;
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
    v183 = sub_21E141514();

    *(v180 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC350) + 36)) = v183;
    LOBYTE(v181) = sub_21E140924();
    sub_21E13F374();
    v184 = v180 + *(v360 + 36);
    *v184 = v181;
    *(v184 + 8) = v185;
    *(v184 + 16) = v186;
    *(v184 + 24) = v187;
    *(v184 + 32) = v188;
    *(v184 + 40) = 0;
    sub_21E1420B4();
    sub_21E1420A4();
    sub_21E142094();

    sub_21E1420A4();
    sub_21E1420D4();
    v189 = sub_21E1426B4();
    v190 = v392;
    if (!v189)
    {
      v191 = [objc_opt_self() mainBundle];
    }

    sub_21E13D374();
    v393 = sub_21E142184();
    v394 = v192;
    sub_21E086328();
    sub_21DF252E0();
    v193 = v348;
    sub_21E141024();

    sub_21DF23614(v180, &qword_27CEAC2A0);
    v194 = swift_getKeyPath();
    v195 = swift_allocObject();
    v196 = v190[3];
    v195[3] = v190[2];
    v195[4] = v196;
    v197 = v190[5];
    v195[5] = v190[4];
    v195[6] = v197;
    v198 = v190[1];
    v195[1] = *v190;
    v195[2] = v198;
    v199 = v345;
    v200 = &v345[*(v344 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC390);
    sub_21E0865A4(v190, &v393);
    sub_21E13F7D4();
    *v200 = v194;
    sub_21DF3DE9C(v193, v199, &qword_27CEAC2A8);
    v201 = v350;
    sub_21DF3DE9C(v199, v350, &qword_27CEAC2B0);
    v202 = v359;
    sub_21DF236C0(v370, v359, &qword_27CEAC2F0);
    v203 = v349;
    sub_21DF236C0(v201, v349, &qword_27CEAC2B0);
    v204 = v351;
    sub_21DF236C0(v202, v351, &qword_27CEAC2F0);
    v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3D8);
    sub_21DF236C0(v203, v204 + *(v205 + 48), &qword_27CEAC2B0);
    sub_21DF23614(v203, &qword_27CEAC2B0);
    sub_21DF23614(v202, &qword_27CEAC2F0);
    sub_21DF236C0(v204, v373, &qword_27CEAC290);
    swift_storeEnumTagMultiPayload();
    sub_21E086694();
    sub_21DF23E5C(&qword_27CEAC3B0, &qword_27CEAC290);
    v206 = v374;
    sub_21E1402F4();
    sub_21DF236C0(v206, v381, &qword_27CEAC2D0);
    swift_storeEnumTagMultiPayload();
    sub_21E0865DC();
    sub_21DF23E5C(&qword_27CEAC3B8, &qword_27CEAC278);
    v131 = v389;
    v133 = v392;
    sub_21E1402F4();
    sub_21DF23614(v206, &qword_27CEAC2D0);
    sub_21DF23614(v204, &qword_27CEAC290);
    sub_21DF23614(v201, &qword_27CEAC2B0);
    (*(v364 + 8))(v363, v365);
    sub_21DF23614(v370, &qword_27CEAC2F0);
    (*(v346 + 8))(v362, v347);
    goto LABEL_35;
  }

LABEL_4:
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E141634();
  sub_21E140084();

  sub_21E1400A4();
  sub_21E140094();
  v370 = "rvice and Privacy Policy";
  sub_21E1400A4();
  sub_21E1400E4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v108 = [objc_opt_self() mainBundle];
  }

  v109 = sub_21E140C64();
  v111 = v110;
  v393 = v109;
  v394 = v110;
  v113 = v112 & 1;
  v395 = v112 & 1;
  v396 = v114;
  v115 = v367;
  sub_21E141164();
  sub_21DF3DE8C(v109, v111, v113);

  v116 = sub_21E140A44();
  v117 = swift_getKeyPath();
  sub_21DF3DE9C(v115, v71, &qword_27CEA7200);
  v118 = &v71[*(v388 + 36)];
  *v118 = v117;
  v118[1] = v116;
  sub_21E1409F4();
  sub_21E085E10();
  v119 = v366;
  sub_21E140D84();
  sub_21DF23614(v71, &qword_27CEAD1C0);
  v120 = swift_getKeyPath();
  (*(v376 + 32))(v82, v119, v377);
  v121 = &v82[*(v387 + 36)];
  *v121 = v120;
  v121[8] = 1;
  v122 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  sub_21DF3DE9C(v82, v90, &qword_27CEAC2E0);
  *&v90[*(v378 + 36)] = v122;
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E140094();
  sub_21E1400A4();
  sub_21E1400E4();
  if (!sub_21E1426B4())
  {
    v123 = [objc_opt_self() mainBundle];
  }

  v124 = sub_21E140C64();
  v126 = v125;
  v128 = v127;
  sub_21E085EC8();
  v129 = v368;
  sub_21E141014();
  sub_21DF3DE8C(v124, v126, v128 & 1);

  sub_21DF23614(v90, &qword_27CEAC2E8);
  sub_21DF236C0(v129, v373, &qword_27CEAC2F0);
  swift_storeEnumTagMultiPayload();
  sub_21E086694();
  sub_21DF23E5C(&qword_27CEAC3B0, &qword_27CEAC290);
  v130 = v374;
  sub_21E1402F4();
  sub_21DF236C0(v130, v381, &qword_27CEAC2D0);
  swift_storeEnumTagMultiPayload();
  sub_21E0865DC();
  sub_21DF23E5C(&qword_27CEAC3B8, &qword_27CEAC278);
  v131 = v389;
  sub_21E1402F4();
  sub_21DF23614(v130, &qword_27CEAC2D0);
  sub_21DF23614(v129, &qword_27CEAC2F0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC300);
  (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  v133 = v392;
LABEL_36:
  v301 = sub_21E1401C4();
  v302 = v384;
  *v384 = v301;
  *(v302 + 8) = 0x4000000000000000;
  *(v302 + 16) = 0;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC308);
  sub_21E084CE8(v133, v302 + *(v303 + 44));
  v304 = v383;
  sub_21DF236C0(v131, v383, &qword_27CEAC2F8);
  v305 = v385;
  sub_21DF236C0(v302, v385, &qword_27CEAC270);
  v306 = v386;
  sub_21DF236C0(v304, v386, &qword_27CEAC2F8);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC310);
  sub_21DF236C0(v305, v306 + *(v307 + 48), &qword_27CEAC270);
  sub_21DF23614(v302, &qword_27CEAC270);
  sub_21DF23614(v131, &qword_27CEAC2F8);
  sub_21DF23614(v305, &qword_27CEAC270);
  return sub_21DF23614(v304, &qword_27CEAC2F8);
}

uint64_t sub_21E084B50(uint64_t a1)
{
  v3 = sub_21E13FF94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 16) == 1)
  {
  }

  else
  {

    sub_21E142574();
    v8 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF446B8();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
  }

  LOBYTE(v10) = 1;
  v7(a1, &v10);

  return sub_21E13F7C4();
}

uint64_t sub_21E084CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3E0);
  MEMORY[0x28223BE20](v37);
  v38 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3E8);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3F0);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC3F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC400);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC408);
  MEMORY[0x28223BE20](v17 - 8);
  v40 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B00);
  sub_21DFB8B9C();
  sub_21E141764();
  sub_21DF23E5C(&qword_27CEAC410, &qword_27CEAC3F8);
  sub_21E0867FC();
  sub_21E140DD4();
  (*(v11 + 8))(v13, v10);
  *&v16[*(v14 + 36)] = sub_21E1404A4();
  sub_21E086850();
  sub_21E141164();
  v22 = sub_21DF23614(v16, &qword_27CEAC400);
  v23 = *(a1 + 40);
  v24 = 1;
  if (v23)
  {
    MEMORY[0x28223BE20](v22);
    *(&v35 - 2) = a1;
    sub_21DF09028(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC430);
    sub_21E086A04();
    v25 = v38;
    sub_21E141764();
    v26 = sub_21E140904();
    v27 = v25 + *(v37 + 36);
    *v27 = v26;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 1;
    sub_21E086B48();
    v28 = v36;
    sub_21E141164();
    sub_21DF1F1DC(v23);
    sub_21DF23614(v25, &qword_27CEAC3E0);
    v29 = v39;
    sub_21DF3DE9C(v28, v39, &qword_27CEAC3E8);
    v24 = 0;
  }

  else
  {
    v29 = v39;
  }

  (*(v41 + 56))(v29, v24, 1, v42);
  v30 = v40;
  sub_21DF236C0(v21, v40, &qword_27CEAC408);
  v31 = v43;
  sub_21E08698C(v29, v43);
  v32 = v44;
  sub_21DF236C0(v30, v44, &qword_27CEAC408);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC428);
  sub_21E08698C(v31, v32 + *(v33 + 48));
  sub_21DF23614(v29, &qword_27CEAC3F0);
  sub_21DF23614(v21, &qword_27CEAC408);
  sub_21DF23614(v31, &qword_27CEAC3F0);
  return sub_21DF23614(v30, &qword_27CEAC408);
}

uint64_t sub_21E085314@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_21E140C64();
  v5 = v4;
  v7 = v6;
  sub_21E140A44();
  v8 = sub_21E140C44();
  v10 = v9;
  v12 = v11;

  sub_21DF3DE8C(v3, v5, v7 & 1);

  sub_21E140A04();
  v13 = sub_21E140BD4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21DF3DE8C(v8, v10, v12 & 1);

  result = swift_getKeyPath();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

double sub_21E0854C0@<D0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF23B80();
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_21E140C64();
  v5 = v4;
  v7 = v6;
  sub_21E140A44();
  v8 = sub_21E140C44();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_21DF3DE8C(v3, v5, v7 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v5) = sub_21E140914();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  v16 = sub_21E141514();

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 104) = v16;
  return result;
}

uint64_t sub_21E0856D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_21E0857AC()
{
  result = qword_27CEAC1F8;
  if (!qword_27CEAC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC1F8);
  }

  return result;
}

unint64_t sub_21E085804()
{
  result = qword_27CEAC200;
  if (!qword_27CEAC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAC200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureOnboardingOverlayExperience(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}