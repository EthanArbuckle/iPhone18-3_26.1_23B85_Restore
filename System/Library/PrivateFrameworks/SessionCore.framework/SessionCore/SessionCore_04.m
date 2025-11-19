uint64_t sub_22CF49A68(int a1, uint64_t a2)
{
  v3 = v2;
  v59 = sub_22D0164CC();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59, v8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22D01653C();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v57, v12);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01659C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3[9];
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x277D85200], v14);
  v21 = v20;
  v22 = sub_22D0165BC();
  result = (*(v15 + 8))(v19, v14);
  if (v22)
  {
    v24 = v6;
    v25 = a1 & 1;
    v26 = sub_22CF4ACD8();
    v27 = *(a2 + 16);
    if (v27)
    {
      v55 = a1;
      v51 = (v24 + 8);
      v52 = &v63;
      v50 = (v10 + 8);
      v28 = (a2 + 40);
      v54 = v3;
      v53 = a1 & 1;
      while (1)
      {
        if (!v26[2])
        {
          goto LABEL_5;
        }

        v30 = *(v28 - 1);
        v29 = *v28;

        v31 = sub_22CEEC698(v30, v29);
        if ((v32 & 1) == 0)
        {
          goto LABEL_4;
        }

        v33 = *(v26[7] + v31);
        v34 = sub_22CEEC698(v30, v29);
        if (v35)
        {
          v36 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v26;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22CFB6C84();
            v26 = aBlock;
          }

          v38 = *(v26[6] + 16 * v36 + 8);

          sub_22CFBD358(v36, v26);
        }

        if (!v25)
        {
          break;
        }

        if (v55)
        {
          v46 = v3[10];
          v65 = sub_22CF4D988;
          v66 = v3;
          aBlock = MEMORY[0x277D85DD0];
          v62 = 1107296256;
          v63 = sub_22CEF8B58;
          v64 = &block_descriptor_50;
          v47 = _Block_copy(&aBlock);

          v42 = v56;
          sub_22D0164EC();
          v60 = MEMORY[0x277D84F90];
          sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
          v44 = v58;
          v43 = v59;
          sub_22D016ADC();
          MEMORY[0x2318C5B10](0, v42, v44, v47);
          v45 = v47;
          goto LABEL_17;
        }

LABEL_5:
        v28 += 2;
        if (!--v27)
        {
          goto LABEL_18;
        }
      }

      if ((v33 & 1) == 0)
      {
        v39 = v3[10];
        v40 = swift_allocObject();
        v40[2] = v3;
        v40[3] = v30;
        v40[4] = v29;
        v65 = sub_22CF4D354;
        v66 = v40;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_22CEF8B58;
        v64 = &block_descriptor_56;
        v41 = _Block_copy(&aBlock);

        v42 = v56;
        sub_22D0164EC();
        v60 = MEMORY[0x277D84F90];
        sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
        v44 = v58;
        v43 = v59;
        sub_22D016ADC();
        MEMORY[0x2318C5B10](0, v42, v44, v41);
        v45 = v41;
LABEL_17:
        _Block_release(v45);
        v48 = v44;
        v25 = v53;
        (*v51)(v48, v43);
        v49 = v42;
        v3 = v54;
        (*v50)(v49, v57);

        goto LABEL_5;
      }

LABEL_4:

      goto LABEL_5;
    }

LABEL_18:
    sub_22CF4AB18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = 1;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

uint64_t sub_22CF4A16C(uint64_t a1)
{
  v1 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  sub_22CEE8394(&qword_28143D9A0, &unk_27D9F3470, &qword_22D018BA0);
  return sub_22D01645C();
}

void sub_22CF4A1E8(uint64_t a1)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_22D0164CC();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22D01653C();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v79, v8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22D014AFC();
  v10 = *(v87 - 1);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v87, v12);
  v86 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v68 - v16;
  v18 = sub_22D01659C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18, v21);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v1 + 72);
  *v23 = v24;
  v25 = *MEMORY[0x277D85200];
  v26 = v19 + 13;
  v27 = v19[13];
  v27(v23, *MEMORY[0x277D85200], v18);
  v75 = v24;
  LOBYTE(v24) = sub_22D0165BC();
  v29 = v19[1];
  v28 = v19 + 1;
  v82 = v29;
  v29(v23, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v69 = v27;
  v70 = v25;
  v71 = v26;
  v72 = v23;
  v73 = v28;
  v74 = v18;
  v91 = sub_22CEE9A08();
  v68 = v2;
  v90 = sub_22CEE9A08();
  v85 = *(v84 + 16);
  if (v85)
  {
    v30 = 0;
    v84 += 32;
    v83 = *MEMORY[0x277CB9578];
    v31 = (v10 + 104);
    v32 = (v10 + 32);
    v33 = MEMORY[0x277D84F98];
    do
    {
      v37 = (v84 + 16 * v30);
      v38 = *v37;
      v39 = v37[1];
      v40 = *(v91 + 16);
      if (v40)
      {
        v41 = 0;
        v42 = (v91 + 40);
        while (1)
        {
          v43 = *(v42 - 1) == v38 && *v42 == v39;
          if (v43 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          ++v41;
          v42 += 2;
          if (v40 == v41)
          {
            goto LABEL_14;
          }
        }

        sub_22CF4AA44(v41);
      }

      else
      {
LABEL_14:
      }

      v44 = *(v90 + 16);
      if (v44)
      {
        v45 = 0;
        v46 = (v90 + 40);
        while (1)
        {
          v47 = *(v46 - 1) == v38 && *v46 == v39;
          if (v47 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          ++v45;
          v46 += 2;
          if (v44 == v45)
          {
            goto LABEL_5;
          }
        }

        sub_22CF4AA44(v45);
      }

LABEL_5:
      ++v30;
      v34 = v87;
      (*v31)(v17, v83, v87);
      v35 = v86;
      (*v32)(v86, v17, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v33;
      sub_22CFBEA1C(v35, v38, v39, isUniquelyReferenced_nonNull_native);

      v33 = aBlock[0];
    }

    while (v30 != v85);
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v48 = v68;
  v49 = *(v68 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  *(v50 + 24) = v33;
  aBlock[4] = sub_22CF4D34C;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_47;
  v51 = _Block_copy(aBlock);

  v52 = v76;
  sub_22D0164EC();
  v88 = MEMORY[0x277D84F90];
  sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  v53 = v78;
  v54 = v81;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v52, v53, v51);
  _Block_release(v51);
  (*(v80 + 8))(v53, v54);
  (*(v77 + 8))(v52, v79);

  v55 = v72;
  v56 = v75;
  *v72 = v75;
  v57 = v70;
  v58 = v74;
  v59 = v69;
  v69(v55, v70, v74);
  v87 = v56;
  LOBYTE(v56) = sub_22D0165BC();
  v82(v55, v58);
  if ((v56 & 1) == 0)
  {
    goto LABEL_30;
  }

  v60 = objc_opt_self();
  v61 = v57;
  v62 = [v60 standardUserDefaults];
  v63 = sub_22D0167CC();

  v64 = sub_22D01666C();
  [v62 setObject:v63 forKey:v64];

  *v55 = v87;
  v59(v55, v61, v58);
  LOBYTE(v61) = sub_22D0165BC();
  v82(v55, v58);
  if (v61)
  {
    v65 = [v60 standardUserDefaults];
    v66 = sub_22D0167CC();

    v67 = sub_22D01666C();
    [v65 setObject:v66 forKey:v67];

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_22CF4AA44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22CF4D190(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22CF4AAD0(uint64_t a1)
{
  v1 = *(a1 + 120);

  sub_22D01641C();
}

void sub_22CF4AB18()
{
  v1 = sub_22D01659C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 72);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1);
  v8 = v7;
  LOBYTE(v7) = sub_22D0165BC();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = sub_22D0165CC();
    v11 = sub_22D01666C();

    [v9 setValue:v10 forKey:v11];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22CF4ACD8()
{
  v1 = sub_22D01659C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 72);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1);
  v8 = v7;
  LOBYTE(v7) = sub_22D0165BC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_22D01666C();

    v12 = [v10 dictionaryForKey_];

    if (v12 && (v13 = sub_22D0165EC(), v12, v14 = sub_22CF4AED0(v13), , v14))
    {
      return v14;
    }

    else
    {
      return sub_22CFF6AF8(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22CF4AED0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
    v2 = sub_22D016D3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_22CEEE3E8(*(a1 + 56) + 32 * v13, v26);
        *&v25 = v15;
        *(&v25 + 1) = v16;
        v23[2] = v25;
        v24[0] = v26[0];
        v24[1] = v26[1];
        v17 = v25;
        sub_22CF1D288(v24, v23);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_22CEEC698(v17, *(&v17 + 1));
        if (v18)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v17;
          v11 = result;

          *(v2[7] + v11) = v22 & 1;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          *(v2[7] + result) = v22 & 1;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_24;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22CF4B128(void *a1, uint64_t a2, uint64_t a3)
{
  v86 = a1;
  v87 = a2;
  v5 = sub_22D0164CC();
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v81 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01653C();
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v80 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v69 - v16;
  v18 = sub_22D014B1C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v88 = v69 - v26;
  v27 = sub_22D01659C();
  v28 = *(v27 - 8);
  v29 = v28[8];
  MEMORY[0x28223BE20](v27, v30);
  v32 = (v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v3 + 72);
  *v32 = v33;
  v34 = v28[13];
  v75 = *MEMORY[0x277D85200];
  v76 = v34;
  v77 = v28 + 13;
  v34(v32);
  v74 = v33;
  LOBYTE(v33) = sub_22D0165BC();
  v78 = v28[1];
  v79 = v27;
  v78(v32, v27);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_22CF4D234(a3, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_22CEEC3D8(v17, &qword_27D9F2608, &qword_22D018B68);
  }

  v36 = v88;
  (*(v19 + 32))(v88, v17, v18);
  (*(v19 + 104))(v24, *MEMORY[0x277CB95A0], v18);
  v37 = sub_22D014B0C();
  v40 = *(v19 + 8);
  v39 = v19 + 8;
  v38 = v40;
  v40(v24, v18);
  if ((v37 & 1) == 0)
  {
    return v38(v36, v18);
  }

  v72 = v38;
  v71 = v39;
  v73 = v18;
  v17 = sub_22CEE9A08();

  v41 = sub_22CEE9A08();
  v18 = v86;
  v27 = v87;
  aBlock = v86;
  v91 = v87;
  MEMORY[0x28223BE20](v41, v42);
  v69[-2] = &aBlock;
  v43 = sub_22CEE7430(sub_22CF4D9B8, &v69[-4], v17);

  if ((v43 & 1) == 0)
  {

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_10:
      v47 = *(v17 + 2);
      v46 = *(v17 + 3);
      if (v47 >= v46 >> 1)
      {
        v17 = sub_22CFCE000((v46 > 1), v47 + 1, 1, v17);
      }

      *(v17 + 2) = v47 + 1;
      v48 = &v17[16 * v47];
      *(v48 + 4) = v18;
      *(v48 + 5) = v27;
      v70 = *(v3 + 80);
      v49 = swift_allocObject();
      v49[2] = v3;
      v49[3] = v18;
      v49[4] = v27;
      v94 = sub_22CF4D2A4;
      v95 = v49;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_22CEF8B58;
      v93 = &block_descriptor_0;
      v86 = _Block_copy(&aBlock);

      v50 = v80;
      sub_22D0164EC();
      v89 = MEMORY[0x277D84F90];
      v41 = sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
      v18 = v81;
      v51 = v85;
      sub_22D016ADC();
      v52 = v86;
      MEMORY[0x2318C5B10](0, v50, v18, v86);
      _Block_release(v52);
      (*(v84 + 8))(v18, v51);
      (*(v82 + 8))(v50, v83);

      v53 = v74;
      *v32 = v74;
      v27 = v79;
      v76(v32, v75, v79);
      v54 = v53;
      v3 = sub_22D0165BC();
      v78(v32, v27);
      if (v3)
      {
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    v17 = sub_22CFCE000(0, *(v17 + 2) + 1, 1, v17);
    goto LABEL_10;
  }

  aBlock = v18;
  v91 = v27;
  MEMORY[0x28223BE20](v44, v45);
  v69[-2] = &aBlock;
  if (sub_22CEE7430(sub_22CF4D9B8, &v69[-4], v41))
  {
    v72(v88, v73);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_22:
    v41 = sub_22CFCE000(0, *(v41 + 16) + 1, 1, v41);
  }

  v56 = *(v41 + 16);
  v55 = *(v41 + 24);
  if (v56 >= v55 >> 1)
  {
    v41 = sub_22CFCE000((v55 > 1), v56 + 1, 1, v41);
  }

  v69[1] = v41;
  *(v41 + 16) = v56 + 1;
  v57 = v41 + 16 * v56;
  *(v57 + 32) = v18;
  *(v57 + 40) = v27;
  v70 = *(v3 + 80);
  v58 = swift_allocObject();
  v58[2] = v3;
  v58[3] = v18;
  v58[4] = v27;
  v94 = sub_22CF4D324;
  v95 = v58;
  aBlock = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = sub_22CEF8B58;
  v93 = &block_descriptor_41;
  v59 = _Block_copy(&aBlock);

  v60 = v80;
  sub_22D0164EC();
  v89 = MEMORY[0x277D84F90];
  sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  v61 = v81;
  v62 = v85;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v60, v61, v59);
  _Block_release(v59);
  (*(v84 + 8))(v61, v62);
  (*(v82 + 8))(v60, v83);

  v63 = v74;
  *v32 = v74;
  v64 = v79;
  v76(v32, v75, v79);
  v65 = v63;
  LOBYTE(v63) = sub_22D0165BC();
  result = (v78)(v32, v64);
  if (v63)
  {
LABEL_18:
    v66 = [objc_opt_self() standardUserDefaults];
    v67 = sub_22D0167CC();

    v68 = sub_22D01666C();
    [v66 setObject:v67 forKey:v68];

    return (v72)(v88, v73);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF4BC90(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2610, &qword_22D018B78);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2618, &unk_22D018B80) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22D0187A0;
  v12 = (v11 + v10);
  v13 = v8[14];
  *v12 = a2;
  *(v12 + 1) = a3;
  v14 = *a4;
  v15 = sub_22D014AFC();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);

  sub_22CFF6CF8(v11);
  swift_setDeallocating();
  sub_22CEEC3D8(v12, &qword_27D9F2618, &unk_22D018B80);
  swift_deallocClassInstance();
  sub_22D01641C();
}

uint64_t sub_22CF4BE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22D01659C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v3 + 72);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_22D0165BC();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v16 = sub_22CEE9A08();
    v17 = sub_22CEE9A08();
    v28 = a1;
    v29 = a2;
    MEMORY[0x28223BE20](v17, v18);
    *&v27[-16] = &v28;
    v19 = sub_22CEE7430(sub_22CF4D9B8, &v27[-32], v16);

    if (v19)
    {
      v28 = a1;
      v29 = a2;
      MEMORY[0x28223BE20](v20, v21);
      *&v27[-16] = &v28;
      v22 = sub_22CEE7430(sub_22CF4D9B8, &v27[-32], v17);

      v23 = sub_22D014AFC();
      if (v22)
      {
        v24 = MEMORY[0x277CB9578];
      }

      else
      {
        v24 = MEMORY[0x277CB9588];
      }

      return (*(*(v23 - 8) + 104))(a3, *v24, v23);
    }

    else
    {
      v25 = *MEMORY[0x277CB9580];
      v26 = sub_22D014AFC();
      (*(*(v26 - 8) + 104))(a3, v25, v26);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4C0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22D01659C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + 72);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_22D0165BC();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v16 = sub_22CF4ACD8();
    if (*(v16 + 16) && (v17 = sub_22CEEC698(a1, a2), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + v17);

      v20 = sub_22D01626C();
      if (v19 == 1)
      {
        v21 = MEMORY[0x277D4D678];
      }

      else
      {
        v21 = MEMORY[0x277D4D670];
      }

      return (*(*(v20 - 8) + 104))(a3, *v21, v20);
    }

    else
    {

      v22 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v23 = sub_22CEE8CD0(a1, a2, 0);
      if (v23 && (v27 = v23, v28 = [v23 supportsLiveActivitiesFrequentUpdates], v27, (v28 & 1) != 0))
      {
        v24 = MEMORY[0x277D4D678];
      }

      else
      {
        v24 = MEMORY[0x277D4D670];
      }

      v25 = *v24;
      v26 = sub_22D01626C();
      return (*(*(v26 - 8) + 104))(a3, v25, v26);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4C320@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v43 = a1;
  v4 = sub_22D0161DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01626C();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v39 - v17;
  v19 = sub_22D01619C();
  sub_22CF4C0C8(v19, v20, v18);

  if (qword_28143DAB8 != -1)
  {
    swift_once();
  }

  v21 = sub_22D01637C();
  __swift_project_value_buffer(v21, qword_281444338);
  (*(v5 + 16))(v9, a2, v4);
  v22 = v44;
  (*(v44 + 16))(v15, v18, v10);
  v23 = sub_22D01636C();
  v24 = sub_22D01690C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v40 = v10;
    v26 = v25;
    v42 = swift_slowAlloc();
    v46 = v42;
    *v26 = 136380931;
    v41 = v24;
    v27 = sub_22D01619C();
    v43 = v18;
    v29 = v28;
    (*(v5 + 8))(v9, v4);
    v30 = sub_22CEEE31C(v27, v29, &v46);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    sub_22CF4D918(&qword_27D9F25E8, 255, MEMORY[0x277D4D688]);
    v31 = v40;
    v32 = sub_22D016DEC();
    v34 = v33;
    (*(v22 + 8))(v15, v31);
    v35 = sub_22CEEE31C(v32, v34, &v46);
    v18 = v43;

    *(v26 + 14) = v35;
    _os_log_impl(&dword_22CEE1000, v23, v41, "AuthorizationManager thinks %{private}s should have level %{public}s, privacy: .public)", v26, 0x16u);
    v36 = v42;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v36, -1, -1);
    MEMORY[0x2318C6860](v26, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v15, v10);
    (*(v5 + 8))(v9, v4);
    v31 = v10;
  }

  v37 = v45;
  (*(v22 + 32))(v45, v18, v31);
  return (*(v22 + 56))(v37, 0, 1, v31);
}

uint64_t sub_22CF4C75C()
{
  v1 = *(*v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25E0, &unk_22D018B30);
  return sub_22D01699C();
}

uint64_t sub_22CF4C7F8@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D018A00;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000022D01DE00;
  v3 = sub_22CF4ACD8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F0, &qword_22D018B48);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x800000022D01DE20;
  *(inited + 96) = sub_22CF4ACD8();
  *(inited + 120) = v4;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000022D01DE40;
  v5 = sub_22CEE9A08();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
  *(inited + 144) = v5;
  *(inited + 168) = v6;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x800000022D01DE60;
  v7 = sub_22CEE9A08();
  *(inited + 216) = v6;
  *(inited + 192) = v7;
  v8 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  result = swift_arrayDestroy();
  *a1 = v8;
  return result;
}

uint64_t sub_22CF4C998()
{
  v1 = *(*v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v3;
}

uint64_t sub_22CF4CA70(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x2318C5DE0](v5, a3);
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
      v13 = sub_22D016B7C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_22CF4CB98(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v7 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v27 - v9;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v30 = a3;

  v17 = 0;
  while (v14)
  {
    v31 = v4;
LABEL_10:
    v19 = __clz(__rbit64(v14)) | (v17 << 6);
    v20 = v30;
    v21 = *(v30 + 48);
    v22 = sub_22D01534C();
    (*(*(v22 - 8) + 16))(v10, v21 + *(*(v22 - 8) + 72) * v19, v22);
    v23 = *(v20 + 56);
    v24 = type metadata accessor for Assertion();
    sub_22CF07CF8(v23 + *(*(v24 - 8) + 72) * v19, &v10[*(v28 + 48)], type metadata accessor for Assertion);
    v25 = v31;
    v26 = v29(v10);
    v4 = v25;
    result = sub_22CEEC3D8(v10, &qword_27D9F2600, &qword_22D018B60);
    if (v25)
    {
      goto LABEL_14;
    }

    v14 &= v14 - 1;
    if (v26)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v31 = v4;
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF4CDBC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v26 = a1;
  v27 = sub_22D01534C();
  v6 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  v24 = v8 + 16;
  v25 = v8;
  v23 = (v8 + 8);
  v28 = a3;

  v17 = 0;
  while (v14)
  {
    v18 = v27;
LABEL_11:
    (*(v25 + 16))(v10, *(v28 + 48) + *(v25 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v18);
    v20 = v26(v10);
    if (v3)
    {
      (*v23)(v10, v18);

      return a2 & 1;
    }

    v21 = v20;
    v14 &= v14 - 1;
    result = (*v23)(v10, v18);
    if (v21)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v18 = v27;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF4CFD4(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v21 = a1;
  v6 = sub_22D014EFC();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  while (v13)
  {
LABEL_9:
    sub_22CF07CF8(*(a3 + 56) + *(v20 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v10, MEMORY[0x277CB9790]);
    v18 = v21(v10);
    result = sub_22CF07DC8(v10);
    if (v3)
    {
      goto LABEL_13;
    }

    v13 &= v13 - 1;
    if (v18)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v13 = *(a3 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF4D1A4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D016DFC() & 1;
  }
}

uint64_t sub_22CF4D234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF4D2CC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D016DFC() & 1;
  }
}

unint64_t sub_22CF4D3D4()
{
  result = qword_28143D8F8;
  if (!qword_28143D8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143D8F8);
  }

  return result;
}

unint64_t sub_22CF4D43C@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_22CF4ACD8();
  *a1 = result;
  return result;
}

uint64_t sub_22CF4D4B0(uint64_t a1)
{
  v2 = sub_22D01439C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2658, &qword_22D018BD8);
    v12 = sub_22D016C3C();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_22CF4D918(&qword_28143F700, 255, MEMORY[0x277CC99D0]);
      v20 = sub_22D01661C();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_22CF4D918(&qword_27D9F2660, 255, MEMORY[0x277CC99D0]);
          v27 = sub_22D01665C();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22CF4D7D8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_22D014F9C();
  sub_22CF4BE24(v5, v6, a1);
}

uint64_t sub_22CF4D830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF4D8A0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68) - 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));
  v6 = *(v0 + 16);
  return sub_22CF47B98(v2, v3, v4, v5);
}

uint64_t sub_22CF4D918(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_22CF4D9D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  __swift_allocate_value_buffer(v0, qword_281442EE8);
  v1 = __swift_project_value_buffer(v0, qword_281442EE8);
  sub_22CF4DA30(v1);
}

void sub_22CF4DA30(uint64_t a1@<X8>)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22D0141BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v55 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v57[0] = 0;
  v14 = [v13 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v57];

  v15 = v57[0];
  if (v14)
  {
    sub_22D0141AC();
    v16 = v15;

    sub_22D01419C();
    v17 = [v12 defaultManager];
    v18 = sub_22D01418C();
    v57[0] = 0;
    v19 = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v57];

    if (v19)
    {
      v20 = *(v3 + 8);
      v21 = v57[0];
      v20(v11, v2);
      (*(v3 + 32))(a1, v8, v2);
      (*(v3 + 56))(a1, 0, 1, v2);
      goto LABEL_19;
    }

    v24 = v57[0];
    v23 = sub_22D01416C();

    swift_willThrow();
    v25 = *(v3 + 8);
    v25(v8, v2);
    v25(v11, v2);
  }

  else
  {
    v22 = v57[0];
    v23 = sub_22D01416C();

    swift_willThrow();
  }

  v57[0] = v23;
  v26 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
  sub_22CEE82F8(0, &qword_27D9F2720, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v27 = v55[5];
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v28 = sub_22D01637C();
    __swift_project_value_buffer(v28, qword_2814443C0);
    v29 = v27;
    v30 = sub_22D01636C();
    v31 = sub_22D0168FC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136446722;
      v34 = [v29 domain];
      v35 = sub_22D01667C();
      v55[0] = a1;
      v37 = v36;

      v38 = sub_22CEEE31C(v35, v37, &v56);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2050;
      v39 = [v29 code];

      *(v32 + 14) = v39;
      *(v32 + 22) = 2082;
      v40 = [v29 localizedDescription];
      v41 = sub_22D01667C();
      v43 = v42;

      v44 = sub_22CEEE31C(v41, v43, &v56);

      *(v32 + 24) = v44;
      _os_log_impl(&dword_22CEE1000, v30, v31, "Couldn't access path: (%{public}s: %{public}ld): %{public}s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v33, -1, -1);
      MEMORY[0x2318C6860](v32, -1, -1);

      (*(v3 + 56))(v55[0], 1, 1, v2);
    }

    else
    {

      (*(v3 + 56))(a1, 1, 1, v2);
    }
  }

  else
  {

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v45 = sub_22D01637C();
    __swift_project_value_buffer(v45, qword_2814443C0);
    v46 = v23;
    v47 = sub_22D01636C();
    v48 = sub_22D0168FC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57[0] = v50;
      *v49 = 136446210;
      swift_getErrorValue();
      v51 = sub_22D016E2C();
      v53 = sub_22CEEE31C(v51, v52, v57);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_22CEE1000, v47, v48, "Couldn't access path: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x2318C6860](v50, -1, -1);
      MEMORY[0x2318C6860](v49, -1, -1);
    }

    else
    {
    }

    (*(v3 + 56))(a1, 1, 1, v2);
  }

LABEL_19:
  v54 = *MEMORY[0x277D85DE8];
}

void *sub_22CF4E0F0(uint64_t a1)
{
  v2 = v1;
  v42[1] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2718, &qword_22D018FC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v42 - v7;
  v9 = sub_22D01443C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  v2[12] = v15;
  sub_22D01446C();
  (*(v10 + 16))(v14, a1, v9);
  if (qword_281442158 != -1)
  {
    swift_once();
  }

  v17 = sub_22D0144FC();
  v18 = __swift_project_value_buffer(v17, qword_281442160);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v8, v18, v17);
  (*(v19 + 56))(v8, 0, 1, v17);
  v20 = v42[3];
  v21 = sub_22D01445C();
  if (v20)
  {
    (*(v10 + 8))(a1, v9);
    v22 = v2[12];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v21;
    (*(v10 + 8))(a1, v9);
    v2[2] = v23;
    type metadata accessor for ActivityDatabase.PushSubscriptionStore();
    v24 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[3] = v24;
    v25 = v2[2];
    type metadata accessor for ActivityDatabase.PushTokenStore();
    v26 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[4] = v26;
    v27 = v2[2];
    type metadata accessor for ActivityDatabase.PublicTokenStore();
    v28 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[5] = v28;
    v29 = v2[2];
    type metadata accessor for ActivityDatabase.PushBudgetStore();
    v30 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[6] = v30;
    v31 = v2[2];
    type metadata accessor for ActivityDatabase.ActivityStore();
    v32 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[7] = v32;
    v33 = v2[2];
    type metadata accessor for ActivityDatabase.SyncEngineRecordMetadataStore();
    v34 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[8] = v34;
    v35 = v2[2];
    type metadata accessor for ActivityDatabase.SyncEnginePairedDeviceIdentifierStore();
    v36 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[9] = v36;
    v37 = v2[2];
    type metadata accessor for ActivityDatabase.SyncEngineRecordIDSyncDateStore();
    v38 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[10] = v38;
    v39 = v2[2];
    type metadata accessor for ActivityDatabase.AssertionStore();
    v40 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[11] = v40;
  }

  return v2;
}

void *sub_22CF4E584()
{
  v1 = v0;
  v2 = v0[3];
  swift_weakAssign();
  v3 = v0[4];
  swift_weakAssign();
  v4 = v0[5];
  swift_weakAssign();
  v5 = v0[6];
  swift_weakAssign();
  v6 = v0[7];
  swift_weakAssign();
  v7 = v0[8];
  swift_weakAssign();
  v8 = v0[9];
  swift_weakAssign();
  v9 = v0[10];
  swift_weakAssign();
  v10 = v0[11];
  swift_weakAssign();
  v11 = v0[2];

  sub_22D01441C();

  v12 = v1[2];

  v13 = v1[3];

  v14 = v1[4];

  v15 = v1[5];

  v16 = v1[6];

  v17 = v1[7];

  v18 = v1[8];

  v19 = v1[9];

  v20 = v1[10];

  v21 = v1[11];

  v22 = v1[12];

  return v1;
}

uint64_t sub_22CF4E6A8()
{
  sub_22CF4E584();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF4E700()
{
  v0 = sub_22D0144FC();
  __swift_allocate_value_buffer(v0, qword_281442160);
  __swift_project_value_buffer(v0, qword_281442160);
  return sub_22D0144EC();
}

uint64_t sub_22CF4E758(uint64_t *a1)
{
  v2 = sub_22D0144BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v49 = sub_22D0144DC();
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  v7 = MEMORY[0x28223BE20](v49, v6);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v55 = &v43 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v56 = &v43 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v57 = &v43 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v52 = &v43 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v53 = &v43 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v54 = &v43 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v51 = &v43 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v46 = &v43 - v31;
  v50 = *a1;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243);
  sub_22D01448C();
  MEMORY[0x2318C3600]();
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD00000000000001BLL, 0x800000022D01EC10);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C4C41455220, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01EC30);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01EC30);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  v44 = " REAL NOT NULL,\n    ";
  MEMORY[0x2318C3600](0xD000000000000024, 0x800000022D01EC80);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  v43 = "    PRIMARY KEY (";
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C4C41455220, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01ECD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000024, v44 | 0x8000000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01ECF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01ED20);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C424F4C4220, 0xEB00000000202020);
  sub_22D01448C();
  v32 = v47;
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, v43 | 0x8000000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01ED50);
  v33 = v46;
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  v34 = v48;
  sub_22D01444C();
  if (v34)
  {
    v35 = v51;
    v37 = v53;
    v36 = v54;
    v38 = v52;
  }

  else
  {

    v35 = v51;
    sub_22D01444C();

    v36 = v54;
    sub_22D01444C();
    v38 = v52;
    v37 = v53;

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();
  }

  v39 = *(v45 + 8);
  v40 = v32;
  v41 = v49;
  v39(v40, v49);
  v39(v55, v41);
  v39(v56, v41);
  v39(v57, v41);
  v39(v38, v41);
  v39(v37, v41);
  v39(v36, v41);
  v39(v35, v41);
  return (v39)(v33, v41);
}

uint64_t sub_22CF4F824()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5B04C(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4FBA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D0162DC();
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v65 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D015B6C();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v62 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_22D015C8C();
  v11 = *(v71 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v71, v13);
  v64 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D0161DC();
  v16 = *(v15 - 8);
  v66 = v15;
  v67 = v16;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v50 - v23;
  sub_22D01451C();
  if (!v70)
  {
    goto LABEL_40;
  }

  v68 = a1;
  sub_22D01451C();
  if (v70)
  {
    goto LABEL_14;
  }

  v60 = v1;
  v25 = v69;
  sub_22D01451C();
  if (v70 == 1)
  {
    goto LABEL_14;
  }

  v54 = v21;
  v55 = v7;
  v52 = v69;
  sub_22D01451C();
  v53 = v69;
  v59 = v70;
  sub_22D01451C();
  v56 = v69;
  v57 = v24;
  v58 = v70;
  sub_22D0161BC();
  sub_22D01451C();
  v26 = v70;
  v50 = v69;
  if (v25 == 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  sub_22D01451C();
  v29 = v69;
  if (v70 & 1 | (v69 > 2))
  {
    v29 = 3;
  }

  if (v28 == 2)
  {
    (*(v67 + 8))(v57, v66);

LABEL_14:

    v30 = 1;
    a1 = v68;
LABEL_41:
    v44 = v71;
    return (*(v11 + 56))(a1, v30, 1, v44);
  }

  v31 = v57;
  v51 = v26;
  v32 = v59;
  if ((v28 & 1) == 0)
  {
    if (v70 & 1 | (v69 > 2))
    {
      (*(v67 + 8))(v57, v66);

LABEL_20:

      goto LABEL_14;
    }

    v37 = v66;
    v36 = v67;
    if (v29)
    {
      v39 = v54;
      v38 = v55;
      if (v29 != 1)
      {
        if (!v51 || !v58)
        {
          (*(v67 + 8))(v57, v66);

          goto LABEL_14;
        }

        if (!v59)
        {
          (*(v67 + 8))(v57, v66);
          goto LABEL_20;
        }

        (*(v67 + 16))(v54, v57, v66);
        v45 = v61;
        v46 = v62;
        v47 = v58;
        *v62 = v56;
        v46[1] = v47;
        v48 = v51;
        v46[2] = v50;
        v46[3] = v48;
        (*(v45 + 104))(v46, *MEMORY[0x277D4D558], v38);
        sub_22D015B2C();
        sub_22D015C0C();
        v35 = v64;
        sub_22D015BEC();
        a1 = v68;
LABEL_30:
        v33 = v71;
        goto LABEL_31;
      }

      a1 = v68;
      if (v58 && v32)
      {
        LODWORD(v63) = v52 == 1;
        (*(v36 + 16))(v39, v31, v37);
        v40 = v61;
        v41 = v62;
        v42 = v58;
        *v62 = v56;
        v41[1] = v42;
        v43 = *MEMORY[0x277D4D550];
LABEL_29:
        (*(v40 + 104))(v41, v43, v38);
        sub_22D015B2C();
        sub_22D015C0C();
        v35 = v64;
        sub_22D015BEC();
        goto LABEL_30;
      }

      (*(v36 + 8))(v31, v37);
    }

    else
    {

      a1 = v68;
      v38 = v55;
      if (v32)
      {
        LODWORD(v63) = v52 == 1;
        (*(v36 + 16))(v54, v31, v37);
        v43 = *MEMORY[0x277D4D560];
        v40 = v61;
        v41 = v62;
        goto LABEL_29;
      }

      (*(v36 + 8))(v31, v37);
    }

LABEL_40:
    v30 = 1;
    goto LABEL_41;
  }

  a1 = v68;
  v33 = v71;
  if (v58)
  {
    v34 = v65;
    sub_22D015B2C();
    v35 = v64;
    sub_22D015B1C();

    (*(v63 + 8))(v34, v3);
    v37 = v66;
    v36 = v67;
LABEL_31:
    (*(v36 + 8))(v31, v37);
    (*(v11 + 32))(a1, v35, v33);
    v44 = v33;
    v30 = 0;
    return (*(v11 + 56))(a1, v30, 1, v44);
  }

  (*(v67 + 8))(v31, v66);
  v30 = 1;
  v44 = v33;
  return (*(v11 + 56))(a1, v30, 1, v44);
}

uint64_t sub_22CF5042C(uint64_t a1)
{
  v88 = a1;
  v2 = sub_22D0161DC();
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v73 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0144BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_22D0144DC();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22D015B6C();
  v69 = *(v70 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v70, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22D015B8C();
  v17 = *(v68 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v68, v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D015B9C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_37;
  }

  v28 = sub_22D01440C();

  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_22D015BDC();
  v29 = (*(v23 + 88))(v27, v22);
  v30 = *MEMORY[0x277D4D548];
  v72 = v29;
  if (v29 == v30)
  {
    (*(v23 + 8))(v27, v22);
    v71 = 0;
    v31 = 3;
  }

  else
  {
    if (v29 != *MEMORY[0x277D4D568])
    {
      goto LABEL_33;
    }

    (*(v23 + 96))(v27, v22);
    v32 = v68;
    (*(v17 + 32))(v21, v27, v68);
    v33 = sub_22D015B7C();
    sub_22D015B5C();
    v34 = v69;
    v35 = v70;
    v36 = (*(v69 + 88))(v16, v70);
    v37 = *MEMORY[0x277D4D550];
    v71 = v33;
    if (v36 == v37)
    {
      (*(v17 + 8))(v21, v32);
      (*(v34 + 8))(v16, v35);
      v31 = 1;
    }

    else if (v36 == *MEMORY[0x277D4D558])
    {
      (*(v17 + 8))(v21, v32);
      (*(v34 + 8))(v16, v35);
      v31 = 2;
    }

    else
    {
      if (v36 != *MEMORY[0x277D4D560])
      {
        goto LABEL_33;
      }

      (*(v17 + 8))(v21, v32);
      v31 = 0;
    }
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v38 = sub_22D015C3C();
  v39 = MEMORY[0x277D837D0];
  v40 = MEMORY[0x277D4D6C8];
  v86 = MEMORY[0x277D837D0];
  v87 = MEMORY[0x277D4D6C8];
  v84 = v38;
  v85 = v41;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v42 = sub_22D015C2C();
  if (v43)
  {
    v44 = v39;
    *(&v82 + 1) = v39;
    v83 = v40;
    *&v81 = v42;
    *(&v81 + 1) = v43;
    sub_22CEF44D4(&v81, &v84);
  }

  else
  {
    v44 = v39;
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v45 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v86 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v87 = MEMORY[0x277D4D6D8];
    v84 = v45;
    if (*(&v82 + 1))
    {
      sub_22CEEC3D8(&v81, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  v71 &= 1u;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v46 = sub_22D015BBC();
  v70 = v31;
  v48 = v30;
  if (v47)
  {
    *(&v82 + 1) = v44;
    v83 = MEMORY[0x277D4D6C8];
    *&v81 = v46;
    *(&v81 + 1) = v47;
    sub_22CEF44D4(&v81, &v84);
  }

  else
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v49 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v86 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v87 = MEMORY[0x277D4D6D8];
    v84 = v49;
    if (*(&v82 + 1))
    {
      sub_22CEEC3D8(&v81, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v50 = v73;
  sub_22D015C5C();
  v51 = sub_22D0161CC();
  v53 = v52;
  (*(v74 + 8))(v50, v75);
  v86 = v44;
  v54 = MEMORY[0x277D4D6C8];
  v87 = MEMORY[0x277D4D6C8];
  v84 = v51;
  v85 = v53;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v55 = sub_22D015C6C();
  if (v56)
  {
    *(&v82 + 1) = v44;
    v83 = v54;
    *&v81 = v55;
    *(&v81 + 1) = v56;
    sub_22CEF44D4(&v81, &v84);
    v57 = v48;
    v58 = v71;
  }

  else
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v59 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v86 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v87 = MEMORY[0x277D4D6D8];
    v84 = v59;
    v57 = v48;
    v58 = v71;
    if (*(&v82 + 1))
    {
      sub_22CEEC3D8(&v81, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  v60 = v72;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v61 = MEMORY[0x277D84A28];
  v62 = MEMORY[0x277D4D6E0];
  v86 = MEMORY[0x277D84A28];
  v87 = MEMORY[0x277D4D6E0];
  v84 = v58;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v86 = v61;
  v87 = v62;
  v84 = v60 == v57;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  if (v60 == v57)
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v63 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v86 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v87 = MEMORY[0x277D4D6D8];
    v84 = v63;
    if (*(&v82 + 1))
    {
      sub_22CEEC3D8(&v81, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  else
  {
    *(&v82 + 1) = v61;
    v83 = v62;
    *&v81 = v70;
    sub_22CEF44D4(&v81, &v84);
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v84);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  v64 = v76;
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_37:
    while (1)
    {
LABEL_33:
      sub_22D016CFC();
      __break(1u);
    }
  }

  v65 = v80;
  sub_22D01444C();
  if (v65)
  {
    (*(v77 + 8))(v64, v78);
  }

  else
  {

    return (*(v77 + 8))(v64, v78);
  }
}

uint64_t sub_22CF51040()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](46, 0xE100000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01EB10);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A4E4F0ALL, 0xE800000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](46, 0xE100000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](2112800, 0xE300000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](46, 0xE100000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5B344(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF51468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v24 - v4;
  v6 = sub_22D0144BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v32 = sub_22D0144DC();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  v14 = sub_22D01440C();

  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x4920545245534E49, 0xEC000000204F544ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v15 = sub_22D015E4C();
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D4D6C8];
  v28 = v15;
  v29 = v16;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v17 = sub_22D015E5C();
  v30 = MEMORY[0x277CC9318];
  v31 = MEMORY[0x277D4D6C0];
  v28 = v17;
  v29 = v18;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D015E2C();
  v19 = sub_22D01430C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    sub_22CEEC3D8(v5, &qword_27D9F2648, &unk_22D018BC0);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v21 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v30 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v31 = MEMORY[0x277D4D6D8];
    v28 = v21;
    if (*(&v26 + 1))
    {
      sub_22CEEC3D8(&v25, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  else
  {
    sub_22D01421C();
    *(&v26 + 1) = MEMORY[0x277D839F8];
    v27 = MEMORY[0x277D4D6D0];
    *&v25 = v22;
    (*(v20 + 8))(v5, v19);
    sub_22CEF44D4(&v25, &v28);
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  MEMORY[0x2318C3600](0x4F43204E4F0A290ALL, 0xEF285443494C464ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EA40);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  sub_22D01444C();
  if (v0)
  {
    (*(v9 + 8))(v13, v32);
  }

  else
  {

    return (*(v9 + 8))(v13, v32);
  }
}

uint64_t sub_22CF51A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v21 = a1;
  v5 = sub_22D0144BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_22D0144DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v14 = sub_22D01440C();

  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01EA60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A45524548570ALL, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000019, 0x800000022D01EA80);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000012, 0x800000022D01EAA0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000013, 0x800000022D01EAE0);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D4D6C8];
  v24 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D4D6C8];
  v22 = v21;
  v23 = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  MEMORY[0x2318C3600](0x2020200A444E4120, 0xED00002020202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v17 = sub_22D0161CC();
  v24 = v15;
  v25 = v16;
  v22 = v17;
  v23 = v18;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  sub_22D01444C();
  if (v3)
  {
    (*(v9 + 8))(v13, v8);
  }

  else
  {

    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_22CF51E8C()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5BA18(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF52168()
{
  v2 = sub_22D0144BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_22D0144DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v11 = sub_22D01440C();

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18[1] = v0;
  v23 = v5;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x4920545245534E49, 0xEC000000204F544ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v12 = sub_22D015FBC();
  v21 = MEMORY[0x277D837D0];
  v22 = MEMORY[0x277D4D6C8];
  v19 = v12;
  v20 = v13;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_22D015FCC();
  v21 = MEMORY[0x277CC9318];
  v22 = MEMORY[0x277D4D6C0];
  v19 = v14;
  v20 = v15;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  MEMORY[0x2318C3600](0x4F43204E4F0A290ALL, 0xEF285443494C464ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EA40);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  sub_22D01444C();
  v16 = v23;
  if (v1)
  {
    (*(v6 + 8))(v10, v23);
  }

  else
  {

    return (*(v6 + 8))(v10, v16);
  }
}

uint64_t sub_22CF5255C()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5BD74(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF528E0@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v51 = sub_22D01621C();
  v48 = *(v51 - 8);
  v2 = *(v48 + 64);
  v4 = MEMORY[0x28223BE20](v51, v3);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v50 = &v41 - v7;
  v56 = sub_22D01626C();
  v49 = *(v56 - 8);
  v8 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v56, v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v41 - v14;
  v16 = sub_22D01430C();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v41 - v23;
  v25 = sub_22D0161DC();
  v52 = *(v25 - 8);
  v53 = v25;
  v26 = *(v52 + 64);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v41 - v32;
  sub_22D01451C();
  if (v59)
  {
    v57 = v1;
    v46 = v58;
    sub_22D01451C();
    if (!v59)
    {
LABEL_11:

LABEL_12:
      v34 = 1;
      goto LABEL_13;
    }

    v45 = v58;
    sub_22D01451C();
    if (v59)
    {
      goto LABEL_9;
    }

    v44 = v58;
    sub_22D01451C();
    if (v59 == 1 || (v43 = v58, sub_22D01451C(), (v59 & 1) != 0) || (sub_22D01451C(), (v59 & 1) != 0) || (v42 = v58, sub_22D01451C(), (v59 & 1) != 0) || (sub_22D01451C(), (v59 & 1) != 0))
    {
LABEL_9:

      goto LABEL_11;
    }

    v37 = v58;
    sub_22D0161BC();
    sub_22D01420C();
    if (v42 >= 3)
    {

      (*(v54 + 8))(v24, v55);
      (*(v52 + 8))(v33, v53);
      goto LABEL_12;
    }

    (*(v49 + 104))(v15, **(&unk_2787486E0 + v42), v56);
    if (v44)
    {
      if (v44 != 1)
      {

        (*(v49 + 8))(v15, v56);
        (*(v54 + 8))(v24, v55);
        (*(v52 + 8))(v33, v53);
        v34 = 1;
        goto LABEL_13;
      }

      v45 = v37;
      v38 = MEMORY[0x277D4D660];
    }

    else
    {
      v45 = v37;
      v38 = MEMORY[0x277D4D668];
    }

    v39 = v48;
    (*(v48 + 104))(v50, *v38, v51);
    (*(v52 + 16))(v30, v33, v53);
    (*(v39 + 16))(v47, v50, v51);
    (*(v54 + 16))(v21, v24, v55);
    v40 = v49;
    (*(v49 + 16))(v12, v15, v56);
    sub_22D01628C();
    (*(v48 + 8))(v50, v51);
    (*(v40 + 8))(v15, v56);
    (*(v54 + 8))(v24, v55);
    (*(v52 + 8))(v33, v53);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

LABEL_13:
  v35 = sub_22D0162BC();
  return (*(*(v35 - 8) + 56))(v60, v34, 1, v35);
}

uint64_t sub_22CF5302C(uint64_t a1)
{
  v65 = a1;
  v2 = sub_22D0161DC();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0144BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_22D0144DC();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01621C();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D01626C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D01430C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v29 = sub_22D01440C();

  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_22D0162AC();
  sub_22D01421C();
  v31 = v30;
  (*(v24 + 8))(v28, v23);
  v32 = sub_22D01620C();
  sub_22D01627C();
  v33 = (*(v18 + 88))(v22, v17);
  if (v33 == *MEMORY[0x277D4D680])
  {
    v34 = 0;
  }

  else if (v33 == *MEMORY[0x277D4D670])
  {
    v34 = 1;
  }

  else
  {
    if (v33 != *MEMORY[0x277D4D678])
    {
      goto LABEL_18;
    }

    v34 = 2;
  }

  v35 = v59;
  sub_22D01622C();
  v36 = (*(v60 + 88))(v35, v61);
  v37 = *MEMORY[0x277D4D660];
  v57 = v34;
  v58 = v32;
  if (v36 == v37)
  {
    v38 = 1;
    goto LABEL_13;
  }

  if (v36 != *MEMORY[0x277D4D668])
  {
LABEL_18:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  v38 = 0;
LABEL_13:
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v39 = sub_22D01624C();
  v40 = MEMORY[0x277D837D0];
  v41 = MEMORY[0x277D4D6C8];
  v73 = MEMORY[0x277D837D0];
  v74 = MEMORY[0x277D4D6C8];
  v71 = v39;
  v72 = v42;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v43 = v62;
  sub_22D01629C();
  v44 = sub_22D0161CC();
  v46 = v45;
  (*(v63 + 8))(v43, v64);
  v73 = v40;
  v74 = v41;
  v71 = v44;
  v72 = v46;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v47 = MEMORY[0x277D84A28];
  v48 = MEMORY[0x277D4D6E0];
  v73 = MEMORY[0x277D84A28];
  v74 = MEMORY[0x277D4D6E0];
  v71 = v38;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v49 = MEMORY[0x277D839F8];
  v50 = MEMORY[0x277D4D6D0];
  v73 = MEMORY[0x277D839F8];
  v74 = MEMORY[0x277D4D6D0];
  v71 = v31;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v73 = v47;
  v74 = v48;
  v71 = v58;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v73 = v47;
  v74 = v48;
  v71 = v57;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01625C();
  v73 = v49;
  v74 = v50;
  v71 = v51;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v52 = sub_22D0161FC();
  v73 = v47;
  v74 = v48;
  v71 = v52;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  v53 = v66;
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v54 = v70;
  sub_22D01444C();
  if (v54)
  {
    (*(v67 + 8))(v53, v68);
  }

  else
  {

    return (*(v67 + 8))(v53, v68);
  }
}

uint64_t sub_22CF5391C()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5C06C(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF53D40@<X0>(uint64_t a1@<X8>)
{
  v176 = a1;
  v155 = sub_22D0149AC();
  v154 = *(v155 - 8);
  v2 = *(v154 + 64);
  MEMORY[0x28223BE20](v155, v3);
  v156 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D014EFC();
  v152 = *(v5 - 8);
  v6 = *(v152 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v153 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for Activity();
  v9 = *(v179 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v179, v11);
  v158 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_22D0146BC();
  v157 = *(v165 - 8);
  v13 = v157[8];
  v15 = MEMORY[0x28223BE20](v165, v14);
  v162 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v164 = &v120 - v18;
  v19 = sub_22D01495C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v161 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v168 = &v120 - v28;
  v166 = sub_22D01502C();
  v163 = *(v166 - 8);
  v29 = *(v163 + 64);
  v31 = MEMORY[0x28223BE20](v166, v30);
  v160 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v167 = &v120 - v34;
  v171 = sub_22D014E2C();
  v169 = *(v171 - 8);
  v35 = *(v169 + 64);
  v37 = MEMORY[0x28223BE20](v171, v36);
  v159 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v170 = &v120 - v40;
  v41 = sub_22D01430C();
  v172 = *(v41 - 8);
  v173 = v41;
  v42 = *(v172 + 8);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v46 = &v120 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v44, v47);
  v50 = &v120 - v49;
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = &v120 - v53;
  v56 = MEMORY[0x28223BE20](v52, v55);
  v174 = &v120 - v57;
  MEMORY[0x28223BE20](v56, v58);
  v175 = &v120 - v59;
  sub_22D01451C();
  v60 = v178;
  if (!v178)
  {
    goto LABEL_16;
  }

  v151 = v177;
  sub_22D01451C();
  if (v178)
  {
    goto LABEL_15;
  }

  sub_22D01451C();
  if (v178)
  {
    goto LABEL_15;
  }

  sub_22D01451C();
  if (v178 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v147 = v46;
  v150 = v178;
  v61 = v177;
  sub_22D01451C();
  if (!v178)
  {
    v65 = v61;
    goto LABEL_14;
  }

  v148 = v178;
  v149 = v61;
  v145 = v177;
  sub_22D01451C();
  v62 = v178;
  if (v178 >> 60 == 15)
  {
LABEL_12:

    v65 = v149;
LABEL_14:
    sub_22CEEEF0C(v65, v150);
LABEL_15:

LABEL_16:
    v66 = 1;
    return (*(v9 + 56))(v176, v66, 1, v179);
  }

  v146 = v177;
  sub_22D01451C();
  if (v178 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v144 = v178;
  v143 = v177;
  sub_22D01451C();
  if (v178 >> 60 == 15)
  {
    sub_22CEEEF0C(v143, v144);
LABEL_10:
    v63 = v146;
    v64 = v62;
LABEL_11:
    sub_22CEEEF0C(v63, v64);
    goto LABEL_12;
  }

  v142 = v178;
  v141 = v62;
  v68 = v177;
  sub_22D01451C();
  if (v178 >> 60 == 15)
  {
    v69 = v68;
LABEL_26:
    sub_22CEEEF0C(v69, v142);
    sub_22CEEEF0C(v143, v144);
    v63 = v146;
    v64 = v141;
    goto LABEL_11;
  }

  v139 = v178;
  v140 = v68;
  v70 = v177;
  sub_22D01451C();
  if (!v178)
  {
    sub_22CEEEF0C(v70, v139);
    v69 = v140;
    goto LABEL_26;
  }

  v135 = v178;
  v137 = v70;
  v133 = v177;
  v71 = sub_22D01408C();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  v134 = v71;
  swift_allocObject();
  v138 = sub_22D01407C();
  sub_22D01451C();
  v74 = v177;
  v136 = v178;
  if (!v178)
  {
    v74 = 0;
  }

  v132 = v74;
  sub_22D01420C();
  sub_22D01420C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  sub_22CF5DB48(&qword_28143D950, &unk_28143F6C8);
  v75 = v140;
  sub_22D01406C();
  if (v1)
  {

    sub_22CEEEF0C(v149, v150);

    sub_22CEEEF0C(v146, v141);
    sub_22CEEEF0C(v143, v144);
    sub_22CEEEF0C(v75, v142);
    sub_22CEEEF0C(v137, v139);

    v76 = v173;
    v77 = *(v172 + 1);
    v77(v174, v173);
    v77(v175, v76);
    v78 = v1;
LABEL_29:

    goto LABEL_16;
  }

  v131 = v177;
  sub_22CF5E870(&qword_28143F660, MEMORY[0x277CB9678]);
  sub_22D01406C();
  v130 = 0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  sub_22CF5DBE4();
  v80 = v141;
  v129 = v79;
  v81 = v130;
  sub_22D01406C();
  if (v81)
  {
    v82 = v175;

    sub_22CEEEF0C(v149, v150);

    sub_22CEEEF0C(v146, v80);
    sub_22CEEEF0C(v143, v144);
    sub_22CEEEF0C(v140, v142);
    sub_22CEEEF0C(v137, v139);

    (*(v169 + 8))(v170, v171);
    v83 = v173;
    v84 = *(v172 + 1);
    v84(v174, v173);
    v84(v82, v83);
    v78 = v81;
    goto LABEL_29;
  }

  v130 = v177;
  sub_22D01406C();
  v129 = 0;
  v128 = v177;
  sub_22D014F8C();
  sub_22D01451C();
  v85 = v178;
  v86 = sub_22D016D4C();

  if (v85)
  {
    v87 = 1;
  }

  else
  {
    sub_22D01420C();
    sub_22D01492C();
    (*(v172 + 1))(v54, v173);
    sub_22D01485C();
    v87 = 0;
  }

  v88 = sub_22D01486C();
  v89 = *(v88 - 8);
  v90 = *(v89 + 56);
  v127 = v88;
  v126 = v90;
  v125 = v89 + 56;
  (v90)(v168, v87, 1);
  sub_22D01451C();
  v133 = v177;
  v148 = v178;
  v91 = *(v134 + 48);
  v92 = *(v134 + 52);
  swift_allocObject();
  v93 = sub_22D01407C();
  sub_22CF5E870(&qword_28143F6F0, MEMORY[0x277CB9250]);
  v135 = v93;
  v94 = v129;
  sub_22D01406C();
  v145 = v94;
  if (v94)
  {

    sub_22CEEEF0C(v149, v150);
    sub_22CEEEF0C(v146, v141);
    sub_22CEEEF0C(v143, v144);
    sub_22CEEEF0C(v140, v142);
    sub_22CEEEF0C(v137, v139);

    sub_22CEEC3D8(v168, &qword_27D9F26E0, &unk_22D018F80);
    (*(v163 + 8))(v167, v166);
    (*(v169 + 8))(v170, v171);
    v95 = v173;
    v96 = *(v172 + 1);
    v96(v174, v173);
    v96(v175, v95);
    v78 = v145;
    goto LABEL_29;
  }

  LODWORD(v134) = v86 == 1;
  v122 = *(v169 + 16);
  v122(v159, v170, v171);
  v121 = *(v163 + 16);
  v121(v160, v167, v166);
  v97 = v157[2];
  v124 = v157 + 2;
  v129 = v97;
  v97(v162, v164, v165);
  v98 = v173;
  v99 = *(v172 + 2);
  v99(v50, v174, v173);
  v99(v147, v175, v98);
  sub_22CEEB6DC(v168, v161, &qword_27D9F26E0, &unk_22D018F80);
  v100 = v179;
  v123 = *(v179 + 60);
  v101 = v158;
  v126(&v158[v123], 1, 1, v127);
  *v101 = v151;
  v101[1] = v60;
  v102 = (v101 + v100[13]);
  v103 = v136;
  *v102 = v132;
  v102[1] = v103;
  v122(v101 + v100[5], v159, v171);
  v121(v101 + v100[6], v160, v166);
  *(v101 + v100[9]) = v131;
  *(v101 + v100[7]) = v130;
  *(v101 + v100[8]) = v128;
  v129(v101 + v100[14], v162, v165);
  v104 = v173;
  v99(v101 + v100[10], v50, v173);
  v99(v101 + v100[11], v147, v104);
  *(v101 + v100[12]) = v134;

  sub_22CF0A6BC(v161, v101 + v123);
  if (v148)
  {

    sub_22CEEEF0C(v149, v150);
    sub_22CEEEF0C(v146, v141);
    sub_22CEEEF0C(v143, v144);
    sub_22CEEEF0C(v140, v142);
    sub_22CEEEF0C(v137, v139);
  }

  else
  {
    (*(v154 + 104))(v156, *MEMORY[0x277CB94E0], v155);
    if (*(v130 + 16) && (v105 = sub_22CEFF728(v156), (v106 & 1) != 0))
    {
      v107 = v153;
      sub_22CF0A598(*(v130 + 56) + *(v152 + 72) * v105, v153);
      (*(v154 + 8))(v156, v155);

      v133 = sub_22CF0A190();
      v148 = v108;
      sub_22CEEEF0C(v149, v150);
      sub_22CEEEF0C(v146, v141);
      sub_22CEEEF0C(v143, v144);
      sub_22CEEEF0C(v140, v142);
      sub_22CEEEF0C(v137, v139);

      sub_22CF07DC8(v107);
    }

    else
    {

      sub_22CEEEF0C(v149, v150);
      sub_22CEEEF0C(v146, v141);
      sub_22CEEEF0C(v143, v144);
      sub_22CEEEF0C(v140, v142);
      sub_22CEEEF0C(v137, v139);

      (*(v154 + 8))(v156, v155);
      v133 = 0;
      v148 = 0;
    }
  }

  sub_22CEEC3D8(v161, &qword_27D9F26E0, &unk_22D018F80);
  v109 = v173;
  v110 = *(v172 + 1);
  v172 = v110;
  v110(v147, v173);
  v110(v50, v109);
  v111 = v157[1];
  v112 = v165;
  v111(v162, v165);
  v163 = *(v163 + 8);
  (v163)(v160, v166);
  v113 = *(v169 + 8);
  v114 = v171;
  v113(v159, v171);
  v111(v164, v112);
  sub_22CEEC3D8(v168, &qword_27D9F26E0, &unk_22D018F80);
  (v163)(v167, v166);
  v113(v170, v114);
  v115 = v173;
  v116 = v172;
  v172(v174, v173);
  v116(v175, v115);
  v117 = v158;
  v118 = &v158[*(v179 + 64)];
  v119 = v148;
  *v118 = v133;
  v118[1] = v119;
  sub_22CF5DAE0(v117, v176, type metadata accessor for Activity);
  v66 = 0;
  return (*(v9 + 56))(v176, v66, 1, v179);
}

uint64_t sub_22CF55644(uint64_t *a1)
{
  v148 = a1;
  v3 = sub_22D01471C();
  v134 = *(v3 - 8);
  v4 = *(v134 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0144BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v140 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D0144DC();
  v138 = *(v12 - 8);
  v13 = *(v138 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v136 = &v113 - v20;
  v21 = sub_22D01495C();
  v131 = *(v21 - 8);
  v22 = *(v131 + 64);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v130 = &v113 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v137 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v139 = &v113 - v35;
  v135 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_30;
  }

  v36 = sub_22D01440C();

  if ((v36 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  v129 = v21;
  v132 = v7;
  v133 = v3;
  v37 = sub_22D0140BC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_22D0140AC();
  v41 = type metadata accessor for Activity();
  v42 = v41[5];
  sub_22D014E2C();
  sub_22CF5E870(&qword_2814439A8, MEMORY[0x277CB9678]);
  v43 = v148;
  v44 = sub_22D01409C();
  if (v2)
  {
  }

  v127 = v44;
  v128 = v45;
  v144 = *(v43 + v41[9]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  sub_22CF5DB48(&qword_28143FA58, &qword_2814439E8);
  v125 = sub_22D01409C();
  v126 = v46;
  v124 = v16;
  v123 = v12;

  v144 = *(v43 + v41[7]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  sub_22CF5D9F4();
  v121 = sub_22D01409C();
  v122 = v47;

  v144 = *(v43 + v41[8]);

  v48 = sub_22D01409C();
  v50 = v49;

  v52 = v41[14];
  sub_22D0146BC();
  sub_22CF5E870(&qword_28143F6F8, MEMORY[0x277CB9250]);
  v53 = sub_22D01409C();
  v55 = v54;
  v117 = v53;
  v120 = v48;
  v119 = v50;
  v115 = v40;
  v56 = (v43 + v41[13]);
  v57 = v56[1];
  v114 = *v56;
  v58 = v43 + v41[15];
  v59 = v136;
  sub_22CEEB6DC(v58, v136, &qword_27D9F26E0, &unk_22D018F80);
  v60 = sub_22D01486C();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 48))(v59, 1, v60);
  v63 = v57;

  v64 = v41;
  v118 = v55;
  v116 = 0;
  if (v62 == 1)
  {
    sub_22CEEC3D8(v59, &qword_27D9F26E0, &unk_22D018F80);
    v65 = 1;
    v66 = v139;
  }

  else
  {
    sub_22D01484C();
    (*(v61 + 8))(v59, v60);
    v67 = v131;
    v68 = v130;
    v69 = v129;
    (*(v131 + 32))(v130, v26, v129);
    v66 = v139;
    sub_22D01491C();
    (*(v67 + 8))(v68, v69);
    v65 = 0;
  }

  v70 = sub_22D01430C();
  v71 = *(v70 - 8);
  (*(v71 + 56))(v66, v65, 1, v70);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E7B0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20202020200A2820, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD00000000000001CLL, 0x800000022D01E7E0);
  v72 = v148;
  v74 = *v148;
  v73 = v148[1];
  v75 = MEMORY[0x277D837D0];
  v76 = MEMORY[0x277D4D6C8];
  v146 = MEMORY[0x277D837D0];
  v147 = MEMORY[0x277D4D6C8];
  v144 = v74;
  v145 = v73;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v136 = v70;
  v131 = v71;
  if (v63)
  {
    v77 = v75;
    *(&v142 + 1) = v75;
    v143 = v76;
    *&v141 = v114;
    *(&v141 + 1) = v63;
    sub_22CEF44D4(&v141, &v144);
  }

  else
  {
    v77 = v75;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v78 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v146 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v147 = MEMORY[0x277D4D6D8];
    v144 = v78;
    if (*(&v142 + 1))
    {
      sub_22CEEC3D8(&v141, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v79 = v72 + v64[11];
  sub_22D01421C();
  v80 = MEMORY[0x277D839F8];
  v81 = MEMORY[0x277D4D6D0];
  v146 = MEMORY[0x277D839F8];
  v147 = MEMORY[0x277D4D6D0];
  v144 = v82;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v83 = v72 + v64[10];
  sub_22D01421C();
  v146 = v80;
  v147 = v81;
  v144 = v84;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v85 = MEMORY[0x277CC9318];
  v86 = v64;
  v87 = MEMORY[0x277D4D6C0];
  v146 = MEMORY[0x277CC9318];
  v147 = MEMORY[0x277D4D6C0];
  v144 = v127;
  v145 = v128;
  sub_22CEEC970(v127, v128);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v88 = v86;
  v89 = v72 + v86[6];
  v90 = sub_22D014F9C();
  v91 = v77;
  v146 = v77;
  v147 = MEMORY[0x277D4D6C8];
  v144 = v90;
  v145 = v92;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v146 = v85;
  v147 = v87;
  v144 = v121;
  v145 = v122;
  sub_22CEEC970(v121, v122);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v146 = v85;
  v147 = v87;
  v144 = v120;
  v145 = v119;
  sub_22CEEC970(v120, v119);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v146 = v85;
  v147 = v87;
  v144 = v125;
  v145 = v126;
  sub_22CEEC970(v125, v126);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v146 = v85;
  v147 = v87;
  v144 = v117;
  v145 = v118;
  sub_22CEEC970(v117, v118);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v93 = v137;
  sub_22CEEB6DC(v139, v137, &qword_27D9F2648, &unk_22D018BC0);
  v94 = v131;
  v95 = v136;
  if ((*(v131 + 48))(v93, 1, v136) == 1)
  {
    sub_22CEEC3D8(v93, &qword_27D9F2648, &unk_22D018BC0);
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    v96 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v146 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v147 = MEMORY[0x277D4D6D8];
    v144 = v96;
    v97 = v124;
    v98 = v134;
    if (*(&v142 + 1))
    {
      sub_22CEEC3D8(&v141, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  else
  {
    sub_22D01421C();
    *(&v142 + 1) = MEMORY[0x277D839F8];
    v143 = v81;
    *&v141 = v99;
    (*(v94 + 8))(v93, v95);
    sub_22CEF44D4(&v141, &v144);
    v97 = v124;
    v98 = v134;
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v100 = *(v148 + v88[12]) == 0;
  v101 = 6910049;
  if (*(v148 + v88[12]))
  {
    v101 = 1752397168;
  }

  v102 = 0xE300000000000000;
  v146 = v91;
  v103 = MEMORY[0x277D4D6C8];
  v147 = MEMORY[0x277D4D6C8];
  if (!v100)
  {
    v102 = 0xE400000000000000;
  }

  v144 = v101;
  v145 = v102;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v104 = v132;
  sub_22CF0D3A8(v132);
  v105 = sub_22D0146EC();
  v107 = v106;
  (*(v98 + 8))(v104, v133);
  if (v107)
  {
    *(&v142 + 1) = v91;
    v143 = v103;
    *&v141 = v105;
    *(&v141 + 1) = v107;
    sub_22CEF44D4(&v141, &v144);
    v108 = v116;
  }

  else
  {
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v109 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v146 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v147 = MEMORY[0x277D4D6D8];
    v144 = v109;
    v108 = v116;
    if (*(&v142 + 1))
    {
      sub_22CEEC3D8(&v141, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01E800);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01E820);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_30;
  }

  sub_22D01444C();
  v110 = (v138 + 8);
  v111 = v123;
  v112 = v120;

  if (!v108)
  {
  }

  sub_22CEE7524(v117, v118);
  sub_22CEE7524(v125, v126);
  sub_22CEE7524(v112, v119);
  sub_22CEE7524(v121, v122);
  sub_22CEE7524(v127, v128);
  (*v110)(v97, v111);
  return sub_22CEEC3D8(v139, &qword_27D9F2648, &unk_22D018BC0);
}

uint64_t sub_22CF56C04()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5C36C(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF56F2C(uint64_t a1)
{
  v46 = a1;
  v3 = sub_22D01430C();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22D0157AC();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v42, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D0144BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v15 = sub_22D0144DC();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v47 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_10;
  }

  v19 = sub_22D01440C();

  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  v41 = v15;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E7B0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20202020200A2820, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD00000000000001CLL, 0x800000022D01E7E0);
  v40 = v3;
  sub_22D01573C();
  v20 = sub_22D01578C();
  v22 = v21;
  v23 = *(v7 + 8);
  v24 = v42;
  v23(v11, v42);
  v25 = MEMORY[0x277D4D6C8];
  v51 = MEMORY[0x277D837D0];
  v52 = MEMORY[0x277D4D6C8];
  v49 = *&v20;
  v50 = v22;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01573C();
  v26 = sub_22D01579C();
  v28 = v27;
  v23(v11, v24);
  v51 = MEMORY[0x277D837D0];
  v52 = v25;
  v49 = *&v26;
  v50 = v28;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v29 = v44;
  sub_22D01571C();
  sub_22D01421C();
  v31 = v30;
  (*(v45 + 8))(v29, v40);
  v32 = MEMORY[0x277D839F8];
  v33 = MEMORY[0x277D4D6D0];
  v51 = MEMORY[0x277D839F8];
  v52 = MEMORY[0x277D4D6D0];
  v49 = *&v31;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v34 = sub_22D01574C();
  v35 = 0.0;
  if (v34)
  {
    v35 = 1.0;
  }

  v51 = v32;
  v52 = v33;
  v49 = v35;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01E800);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01E820);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  v36 = v47;
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_10;
  }

  sub_22D01444C();
  v37 = v41;
  if (v2)
  {
    (*(v48 + 8))(v36, v41);
  }

  else
  {

    return (*(v48 + 8))(v36, v37);
  }
}

uint64_t sub_22CF576CC()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5C9D8(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF57980(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D0144BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = sub_22D0144DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v13 = sub_22D01440C();

  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = MEMORY[0x277D4D6C8];
  v17[0] = a1;
  v17[1] = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  v14 = v17[6];
  sub_22D01444C();
  if (v14)
  {
    (*(v8 + 8))(v12, v7);
  }

  else
  {

    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_22CF57C9C()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5CBE0(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF57FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a3;
  v5 = sub_22D0144BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v31 = sub_22D0144DC();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v13 = sub_22D01440C();

  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v24 = v8;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D4D6C8];
  v29 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D4D6C8];
  v27 = v25;
  v28 = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v16 = sub_22D01578C();
  v29 = v14;
  v30 = v15;
  v27 = v16;
  v28 = v17;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v18 = sub_22D01579C();
  v29 = v14;
  v30 = v15;
  v27 = v18;
  v28 = v19;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01421C();
  v29 = MEMORY[0x277D839F8];
  v30 = MEMORY[0x277D4D6D0];
  v27 = v20;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  sub_22D01444C();
  v21 = v24;
  if (v3)
  {
    (*(v24 + 8))(v12, v31);
  }

  else
  {

    return (*(v21 + 8))(v12, v31);
  }
}

uint64_t sub_22CF58424()
{
  v0 = sub_22D0144BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v22 = sub_22D0144DC();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v8 = sub_22D01440C();

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2045524548570ALL, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v9 = sub_22D01578C();
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D4D6C8];
  v20 = MEMORY[0x277D837D0];
  v21 = MEMORY[0x277D4D6C8];
  v18 = v9;
  v19 = v12;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  MEMORY[0x2318C3600](0x20444E410ALL, 0xE500000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v13 = sub_22D01579C();
  v20 = v10;
  v21 = v11;
  v18 = v13;
  v19 = v14;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  v15 = v17;
  sub_22D01444C();
  if (v15)
  {
    (*(v3 + 8))(v7, v22);
  }

  else
  {

    return (*(v3 + 8))(v7, v22);
  }
}

uint64_t sub_22CF58758()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_22D01444C();
    if (v0)
    {
      (*(v5 + 8))(v9, v4);
    }

    else
    {
      v13 = v12;

      v11 = sub_22CF5D6F4(v13);
      (*(v5 + 8))(v9, v4);
    }

    return v11;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF58ABC@<X0>(char *a1@<X8>)
{
  v174 = a1;
  v1 = sub_22D01430C();
  v162 = *(v1 - 8);
  v163 = v1;
  v2 = *(v162 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v165 = v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v161 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v144 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v160 = v144 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A8, &qword_22D018F60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v144 - v19;
  v21 = sub_22D01555C();
  v167 = *(v21 - 8);
  v168 = v21;
  v22 = *(v167 + 64);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v164 = v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v166 = v144 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26B0, &qword_22D018F68);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = v144 - v31;
  v33 = sub_22D0154EC();
  v34 = *(v33 - 8);
  v170 = v33;
  v171 = v34;
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v159 = v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v169 = v144 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26B8, &qword_22D018F70);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8, v43);
  v45 = v144 - v44;
  v46 = sub_22D01534C();
  v172 = *(v46 - 8);
  v173 = v46;
  v47 = *(v172 + 64);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v51 = v144 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v52);
  v54 = v144 - v53;
  sub_22D01451C();
  v55 = v177;
  if (!v177)
  {
    goto LABEL_10;
  }

  v158 = v176;
  sub_22D01451C();
  if (v177 >> 60 == 15)
  {
LABEL_9:

LABEL_10:
    v59 = type metadata accessor for Assertion();
    return (*(*(v59 - 8) + 56))(v174, 1, 1, v59);
  }

  v154 = v54;
  v157 = v177;
  v56 = v176;
  sub_22D01451C();
  if (!v177)
  {
    v58 = v56;
    goto LABEL_8;
  }

  v155 = v177;
  v156 = v56;
  v57 = v176;
  sub_22D01451C();
  if ((v177 & 1) != 0 || (sub_22D01451C(), v177 >> 60 == 15))
  {

    v58 = v156;
LABEL_8:
    sub_22CEEEF0C(v58, v157);
    goto LABEL_9;
  }

  v151 = v57;
  v153 = v177;
  v152 = v176;
  sub_22D01451C();
  v150 = v176;
  v149 = v177;

  sub_22D01535C();
  v62 = v172;
  v61 = v173;
  if ((*(v172 + 48))(v45, 1, v173) == 1)
  {

    sub_22CEEC3D8(v45, &qword_27D9F26B8, &qword_22D018F70);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v63 = sub_22D01637C();
    __swift_project_value_buffer(v63, qword_2814443C0);

    v64 = sub_22D01636C();
    v65 = sub_22D0168EC();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v156;
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v176 = v69;
      *v68 = 136446210;
      v70 = sub_22CEEE31C(v158, v55, &v176);

      *(v68 + 4) = v70;
      _os_log_impl(&dword_22CEE1000, v64, v65, "Unable to parse assertion identifier: %{public}s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x2318C6860](v69, -1, -1);
      MEMORY[0x2318C6860](v68, -1, -1);
      sub_22CEEEF0C(v67, v157);
      sub_22CEEEF0C(v152, v153);
    }

    else
    {
      sub_22CEEEF0C(v156, v157);
      sub_22CEEEF0C(v152, v153);
    }

    goto LABEL_10;
  }

  v71 = v62 + 32;
  v148 = *(v62 + 32);
  v148(v154, v45, v61);
  v72 = sub_22D01408C();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = sub_22D01407C();
  sub_22CF5E870(&qword_27D9F26C0, MEMORY[0x277D4D4B8]);
  v76 = v170;
  v77 = v156;
  v78 = v175;
  sub_22D01406C();
  v158 = v75;
  if (v78)
  {

    (*(v171 + 56))(v32, 1, 1, v76);
    sub_22CEEC3D8(v32, &qword_27D9F26B0, &qword_22D018F68);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v79 = sub_22D01637C();
    __swift_project_value_buffer(v79, qword_2814443C0);
    v80 = v157;
    sub_22CEEC970(v77, v157);
    v81 = sub_22D01636C();
    v82 = sub_22D0168EC();
    sub_22CEEEF0C(v77, v80);
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v176 = v84;
      *v83 = 136446210;
      sub_22CEEC970(v77, v80);
      v85 = sub_22D0141CC();
      v87 = v86;
      sub_22CEEEF0C(v77, v80);
      v88 = sub_22CEEE31C(v85, v87, &v176);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_22CEE1000, v81, v82, "Unable to parse attribute: %{public}s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x2318C6860](v84, -1, -1);
      MEMORY[0x2318C6860](v83, -1, -1);

      sub_22CEEEF0C(v152, v153);
      sub_22CEEEF0C(v77, v80);
    }

    else
    {
      sub_22CEEEF0C(v77, v80);
      sub_22CEEEF0C(v152, v153);
    }

    goto LABEL_34;
  }

  v147 = v71;
  v89 = v171;
  v90 = *(v171 + 56);
  v175 = 0;
  v90(v32, 0, 1, v76);
  v93 = *(v89 + 32);
  v92 = v89 + 32;
  v91 = v93;
  v93(v169, v32, v76);
  sub_22CF5E870(&qword_27D9F26C8, MEMORY[0x277D4D4E0]);
  v94 = v168;
  v95 = v175;
  sub_22D01406C();
  if (v95)
  {

    (*(v167 + 56))(v20, 1, 1, v94);
    sub_22CEEC3D8(v20, &qword_27D9F26A8, &qword_22D018F60);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v96 = sub_22D01637C();
    __swift_project_value_buffer(v96, qword_2814443C0);
    v97 = v152;
    v98 = v153;
    sub_22CEEC970(v152, v153);
    v99 = sub_22D01636C();
    v100 = sub_22D0168EC();
    sub_22CEEEF0C(v97, v98);
    v101 = os_log_type_enabled(v99, v100);
    v102 = v156;
    if (v101)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v176 = v104;
      *v103 = 136446210;
      sub_22CEEC970(v97, v98);
      v105 = sub_22D0141CC();
      v106 = v97;
      v108 = v107;
      sub_22CEEEF0C(v106, v98);
      v109 = sub_22CEEE31C(v105, v108, &v176);

      *(v103 + 4) = v109;
      _os_log_impl(&dword_22CEE1000, v99, v100, "Unable to parse target: %{public}s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      MEMORY[0x2318C6860](v104, -1, -1);
      MEMORY[0x2318C6860](v103, -1, -1);

      sub_22CEEEF0C(v106, v98);
      sub_22CEEEF0C(v102, v157);
LABEL_28:
      (*(v171 + 8))(v169, v170);
LABEL_34:
      (*(v172 + 8))(v154, v173);
      v119 = type metadata accessor for Assertion();
      return (*(*(v119 - 8) + 56))(v174, 1, 1, v119);
    }

    sub_22CEEEF0C(v97, v98);
    sub_22CEEEF0C(v102, v157);
    goto LABEL_33;
  }

  v144[0] = v91;
  v144[1] = v92;
  v175 = 0;
  v110 = v167;
  (*(v167 + 56))(v20, 0, 1, v94);
  v111 = *(v110 + 32);
  v146 = v110 + 32;
  v145 = v111;
  v111(v166, v20, v94);
  sub_22D01451C();
  v113 = v176;
  v112 = v177;
  v114 = sub_22D01539C();
  v115 = v114;
  if (v112 >> 60 == 15)
  {
    v116 = v160;
    (*(*(v114 - 8) + 56))(v160, 1, 1, v114);
    v117 = v173;
    v118 = v148;
  }

  else
  {
    sub_22CEEC970(v113, v112);
    sub_22CF5E870(&qword_27D9F26D0, MEMORY[0x277D4D478]);
    v120 = v175;
    sub_22D01406C();
    v175 = v120;
    v118 = v148;
    if (v120)
    {

      if (qword_28143FB00 != -1)
      {
        swift_once();
      }

      v121 = sub_22D01637C();
      __swift_project_value_buffer(v121, qword_2814443C0);
      sub_22CEEC970(v113, v112);
      v122 = sub_22D01636C();
      v123 = sub_22D0168EC();
      sub_22CEEEF0C(v113, v112);
      v124 = os_log_type_enabled(v122, v123);
      v125 = v156;
      if (v124)
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v176 = v127;
        *v126 = 136446210;
        sub_22CEEC970(v113, v112);
        v128 = v113;
        v129 = sub_22D0141CC();
        v131 = v130;
        sub_22CEEEF0C(v128, v112);
        v132 = sub_22CEEE31C(v129, v131, &v176);

        *(v126 + 4) = v132;
        _os_log_impl(&dword_22CEE1000, v122, v123, "Unable to parse invalidation state: %{public}s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        MEMORY[0x2318C6860](v127, -1, -1);
        MEMORY[0x2318C6860](v126, -1, -1);

        sub_22CEEEF0C(v128, v112);
        sub_22CEEEF0C(v128, v112);
        sub_22CEEEF0C(v152, v153);
        sub_22CEEEF0C(v125, v157);
        (*(v167 + 8))(v166, v168);
        goto LABEL_28;
      }

      sub_22CEEEF0C(v113, v112);
      sub_22CEEEF0C(v113, v112);
      sub_22CEEEF0C(v152, v153);
      sub_22CEEEF0C(v125, v157);
      (*(v167 + 8))(v166, v168);
LABEL_33:
      (*(v171 + 8))(v169, v76);
      goto LABEL_34;
    }

    sub_22CEEEF0C(v113, v112);
    (*(*(v115 - 8) + 56))(v13, 0, 1, v115);
    v133 = v13;
    v116 = v160;
    sub_22CEF0368(v133, v160, &qword_27D9F2680, &qword_22D019670);
    v117 = v173;
  }

  sub_22D01420C();

  sub_22CEEEF0C(v113, v112);
  sub_22CEEEF0C(v152, v153);
  sub_22CEEEF0C(v156, v157);
  v118(v51, v154, v117);
  v145(v164, v166, v168);
  v134 = v159;
  v135 = v170;
  v136 = v144[0];
  (v144[0])(v159, v169, v170);
  v137 = v117;
  v138 = v161;
  sub_22CEF0368(v116, v161, &qword_27D9F2680, &qword_22D019670);
  v139 = v174;
  v148(v174, v51, v137);
  v140 = type metadata accessor for Assertion();
  v136(&v139[v140[5]], v134, v135);
  sub_22CEF0368(v138, &v139[v140[6]], &qword_27D9F2680, &qword_22D019670);
  v141 = &v139[v140[7]];
  v142 = v155;
  *v141 = v151;
  v141[1] = v142;
  (*(v162 + 32))(&v139[v140[8]], v165, v163);
  v143 = &v139[v140[9]];
  *v143 = v150;
  v143[8] = v149;
  v145(&v139[v140[10]], v164, v168);
  return (*(*(v140 - 1) + 56))(v139, 0, 1, v140);
}

uint64_t sub_22CF59EEC(uint64_t a1)
{
  v76 = a1;
  v3 = sub_22D0144BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0144DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v57 - v16;
  v67 = v1;
  if (swift_weakLoadStrong())
  {
    v18 = sub_22D01440C();

    if (v18)
    {
      v65 = v12;
      v66 = v8;
      v19 = sub_22D0140BC();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      v22 = sub_22D0140AC();
      v23 = type metadata accessor for Assertion();
      v24 = *(v23 + 20);
      sub_22D0154EC();
      sub_22CF5E870(&qword_28143FB90, MEMORY[0x277D4D4B8]);
      v25 = v76;
      v26 = sub_22D01409C();
      if (v2)
      {
      }

      v62 = v22;
      v63 = v26;
      v60 = v7;
      v61 = v23;
      v64 = v27;
      sub_22CEEB6DC(v25 + *(v23 + 24), v17, &qword_27D9F2680, &qword_22D019670);
      v28 = sub_22D01539C();
      v29 = (*(*(v28 - 8) + 48))(v17, 1, v28);
      sub_22CEEC3D8(v17, &qword_27D9F2680, &qword_22D019670);
      if (v29 == 1)
      {
        v30 = 0;
        v31 = 0xF000000000000000;
      }

      else
      {
        sub_22CF5AF98();
        v30 = sub_22D01409C();
        v31 = v32;
      }

      v33 = *(v61 + 40);
      sub_22D01555C();
      sub_22CF5E870(&qword_28143FB88, MEMORY[0x277D4D4E0]);
      v58 = sub_22D01409C();
      v59 = v35;
      sub_22D0144AC();
      MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
      v36 = sub_22D0152FC();
      v74 = MEMORY[0x277D837D0];
      v75 = MEMORY[0x277D4D6C8];
      v72 = v36;
      v73 = v37;
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v38 = MEMORY[0x277CC9318];
      v39 = MEMORY[0x277D4D6C0];
      v74 = MEMORY[0x277CC9318];
      v75 = MEMORY[0x277D4D6C0];
      v72 = v63;
      v73 = v64;
      sub_22CEEC970(v63, v64);
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      if (v31 >> 60 == 15)
      {
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        v40 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        v74 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
        v75 = MEMORY[0x277D4D6D8];
        v72 = v40;
        if (*(&v70 + 1))
        {
          sub_22CEEC3D8(&v69, &qword_27D9F2688, &unk_22D018F50);
        }
      }

      else
      {
        *(&v70 + 1) = v38;
        v71 = v39;
        *&v69 = v30;
        *(&v69 + 1) = v31;
        sub_22CEF44D4(&v69, &v72);
      }

      v57 = v30;
      sub_22CF460B8(v30, v31);
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v41 = v61;
      v42 = v76;
      v43 = (v76 + *(v61 + 28));
      v45 = *v43;
      v44 = v43[1];
      v74 = MEMORY[0x277D837D0];
      v75 = MEMORY[0x277D4D6C8];
      v72 = v45;
      v73 = v44;

      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v46 = v42 + *(v41 + 32);
      sub_22D01421C();
      v47 = MEMORY[0x277D839F8];
      v48 = MEMORY[0x277D4D6D0];
      v74 = MEMORY[0x277D839F8];
      v75 = MEMORY[0x277D4D6D0];
      v72 = v49;
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v74 = MEMORY[0x277CC9318];
      v75 = MEMORY[0x277D4D6C0];
      v72 = v58;
      v73 = v59;
      sub_22CEEC970(v58, v59);
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v50 = (v42 + *(v41 + 36));
      if (v50[1])
      {
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        v51 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        v74 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
        v75 = MEMORY[0x277D4D6D8];
        v72 = v51;
        v53 = v65;
        v52 = v66;
        if (*(&v70 + 1))
        {
          sub_22CEEC3D8(&v69, &qword_27D9F2688, &unk_22D018F50);
        }
      }

      else
      {
        v54 = *v50;
        *(&v70 + 1) = v47;
        v71 = v48;
        *&v69 = v54;
        sub_22CEF44D4(&v69, &v72);
        v53 = v65;
        v52 = v66;
      }

      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      MEMORY[0x2318C3600](3877130, 0xE300000000000000);
      sub_22D0144CC();
      Strong = swift_weakLoadStrong();
      v56 = v57;
      if (Strong)
      {
        sub_22D01444C();

        sub_22CEE7524(v58, v59);
        sub_22CEEEF0C(v56, v31);
        sub_22CEE7524(v63, v64);
        return (*(v52 + 8))(v53, v60);
      }
    }

    else
    {
      __break(1u);
    }
  }

  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CF5A80C()
{
  v1 = sub_22D0144BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v10 = sub_22D01440C();

  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2045524548570ALL, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v11 = sub_22D0152FC();
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = MEMORY[0x277D4D6C8];
  v15[0] = v11;
  v15[1] = v12;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  sub_22D01444C();
  if (v0)
  {
    (*(v5 + 8))(v9, v4);
  }

  else
  {

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_22CF5AB04()
{
  v0 = sub_22D0144BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v9 = sub_22D01440C();

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  v10 = v12[1];
  sub_22D01444C();
  if (v10)
  {
    (*(v4 + 8))(v8, v3);
  }

  else
  {

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_22CF5AD64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - v3;
  v5 = sub_22D0141BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281442EE0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_281442EE8);
  sub_22CEEB6DC(v11, v4, &qword_27D9F2708, &qword_22D018FC0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22CEEC3D8(v4, &qword_27D9F2708, &qword_22D018FC0);
    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    v12 = sub_22CF5E3B0(v10, 4);
    result = (*(v6 + 8))(v10, v5);
    qword_2814444F8 = v12;
  }

  return result;
}

unint64_t sub_22CF5AF98()
{
  result = qword_27D9F2690;
  if (!qword_27D9F2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2680, &qword_22D019670);
    sub_22CF5E870(&qword_27D9F2698, MEMORY[0x277D4D478]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2690);
  }

  return result;
}

char *sub_22CF5B04C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v28 - v7;
  v9 = sub_22D015C8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v31 = &v28 - v17;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(sub_22D01450C() - 8);
  v34 = (v10 + 48);
  v20 = (v10 + 32);
  v21 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v33 = *(v19 + 72);
  v22 = MEMORY[0x277D84F90];
  v29 = v15;
  v30 = v10;
  do
  {
    sub_22CF4FBA8(v8);
    if ((*v34)(v8, 1, v9) == 1)
    {
      sub_22CEEC3D8(v8, &qword_27D9F2700, &unk_22D01AEA0);
    }

    else
    {
      v32 = v2;
      v23 = *v20;
      v24 = v31;
      (*v20)(v31, v8, v9);
      v23(v15, v24, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_22CFCE218(0, *(v22 + 2) + 1, 1, v22);
      }

      v26 = *(v22 + 2);
      v25 = *(v22 + 3);
      if (v26 >= v25 >> 1)
      {
        v22 = sub_22CFCE218(v25 > 1, v26 + 1, 1, v22);
      }

      *(v22 + 2) = v26 + 1;
      v15 = v29;
      v23(&v22[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26], v29, v9);
      v2 = v32;
    }

    v21 += v33;
    --v18;
  }

  while (v18);
  return v22;
}

char *sub_22CF5B344(uint64_t a1)
{
  v2 = sub_22D0161DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v48 - v17;
  v19 = sub_22D015E7C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v68 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v57 = &v48 - v26;
  v27 = sub_22D01450C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v29);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 16);
  if (v33)
  {
    v49 = v13;
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    v36 = v20;
    v37 = a1 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v66 = (v36 + 56);
    v67 = v35;
    v64 = *(v34 + 56);
    v65 = (v34 - 8);
    v56 = v36;
    v62 = (v36 + 32);
    v63 = (v36 + 48);
    v71 = MEMORY[0x277D84F90];
    v58 = v34;
    v59 = v27;
    v61 = v19;
    while (1)
    {
      v67(v32, v37, v27);
      sub_22D01451C();
      if (v70)
      {
        v60 = v69;
        sub_22D01451C();
        if (v70)
        {
          v55 = v69;
          sub_22D01451C();
          if (v70)
          {
            sub_22D01451C();
            if (v70 >> 60 != 15)
            {
              v52 = v69;
              v53 = v70;
              sub_22D01451C();
              if (v70)
              {
                v51 = 1;
                v39 = v49;
              }

              else
              {
                v39 = v49;
                sub_22D01420C();
                v51 = 0;
              }

              v40 = sub_22D01430C();
              (*(*(v40 - 8) + 56))(v39, v51, 1, v40);
              sub_22D0161BC();
              sub_22CEEB6DC(v39, v50, &qword_27D9F2648, &unk_22D018BC0);
              sub_22D015E3C();
              sub_22CEEC3D8(v39, &qword_27D9F2648, &unk_22D018BC0);
              v38 = 0;
              v27 = v59;
              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        v38 = 1;
        v27 = v59;
      }

      else
      {
        v38 = 1;
      }

LABEL_18:
      v41 = v61;
      (*v66)(v18, v38, 1, v61);
      (*v65)(v32, v27);
      if ((*v63)(v18, 1, v41) == 1)
      {
        sub_22CEEC3D8(v18, &unk_27D9F3630, &unk_22D018FB0);
      }

      else
      {
        v42 = *v62;
        v43 = v57;
        (*v62)(v57, v18, v41);
        v42(v68, v43, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_22CFCE240(0, *(v71 + 2) + 1, 1, v71);
        }

        v45 = *(v71 + 2);
        v44 = *(v71 + 3);
        if (v45 >= v44 >> 1)
        {
          v71 = sub_22CFCE240(v44 > 1, v45 + 1, 1, v71);
        }

        v46 = v71;
        *(v71 + 2) = v45 + 1;
        v42(&v46[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v45], v68, v41);
      }

      v37 += v64;
      if (!--v33)
      {
        return v71;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_22CF5BA18(uint64_t a1)
{
  v2 = sub_22D015FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v29 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v32 = v27 - v9;
  v10 = sub_22D01450C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v35 = v18;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v33 = *(v17 + 56);
    v31 = v2;
    v20 = (v17 - 8);
    v28 = v3;
    v30 = (v3 + 32);
    v21 = MEMORY[0x277D84F90];
    v27[1] = v17;
    v18(v15, v19, v10);
    while (1)
    {
      sub_22D01451C();
      if (!v34)
      {
        goto LABEL_4;
      }

      sub_22D01451C();
      if (v34 >> 60 == 15)
      {
        break;
      }

      v22 = v29;
      sub_22D015FAC();
      (*v20)(v15, v10);
      v23 = *v30;
      (*v30)(v32, v22, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22CFCE268(0, *(v21 + 2) + 1, 1, v21);
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v21 = sub_22CFCE268(v24 > 1, v25 + 1, 1, v21);
      }

      *(v21 + 2) = v25 + 1;
      v23(&v21[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25], v32, v31);
LABEL_5:
      v19 += v33;
      if (!--v16)
      {
        return v21;
      }

      v35(v15, v19, v10);
    }

LABEL_4:
    (*v20)(v15, v10);
    goto LABEL_5;
  }

  return MEMORY[0x277D84F90];
}

char *sub_22CF5BD74(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F8, qword_22D01D230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v28 - v7;
  v9 = sub_22D0162BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v31 = &v28 - v17;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(sub_22D01450C() - 8);
  v34 = (v10 + 48);
  v20 = (v10 + 32);
  v21 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v33 = *(v19 + 72);
  v22 = MEMORY[0x277D84F90];
  v29 = v15;
  v30 = v10;
  do
  {
    sub_22CF528E0(v8);
    if ((*v34)(v8, 1, v9) == 1)
    {
      sub_22CEEC3D8(v8, &qword_27D9F26F8, qword_22D01D230);
    }

    else
    {
      v32 = v2;
      v23 = *v20;
      v24 = v31;
      (*v20)(v31, v8, v9);
      v23(v15, v24, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_22CFCE290(0, *(v22 + 2) + 1, 1, v22);
      }

      v26 = *(v22 + 2);
      v25 = *(v22 + 3);
      if (v26 >= v25 >> 1)
      {
        v22 = sub_22CFCE290(v25 > 1, v26 + 1, 1, v22);
      }

      *(v22 + 2) = v26 + 1;
      v15 = v29;
      v23(&v22[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26], v29, v9);
      v2 = v32;
    }

    v21 += v33;
    --v18;
  }

  while (v18);
  return v22;
}

void *sub_22CF5C06C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Activity();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v29 = &v27 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_22D01450C() - 8);
  v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = v20;
  do
  {
    sub_22CF53D40(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_22CEEC3D8(v8, &qword_27D9F3810, &unk_22D018FA0);
    }

    else
    {
      v30 = v2;
      v22 = v9;
      v23 = v29;
      sub_22CF5DAE0(v8, v29, type metadata accessor for Activity);
      sub_22CF5DAE0(v23, v31, type metadata accessor for Activity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22CFCE2B8(0, v21[2] + 1, 1, v21);
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_22CFCE2B8(v24 > 1, v25 + 1, 1, v21);
      }

      v21[2] = v25 + 1;
      sub_22CF5DAE0(v31, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, type metadata accessor for Activity);
      v9 = v22;
      v2 = v30;
      v20 = v28;
    }

    v19 += v20;
    --v17;
  }

  while (v17);
  return v21;
}

char *sub_22CF5C36C(uint64_t a1)
{
  v57 = sub_22D0157AC();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v57, v4);
  v56 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v7);
  v55 = &v46[-v8];
  v54 = sub_22D01430C();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v54, v11);
  v53 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v14);
  v62 = &v46[-v15];
  v16 = sub_22D01575C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v61 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v22);
  v60 = &v46[-v23];
  v64 = sub_22D01450C();
  v24 = *(v64 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v64, v26);
  v28 = &v46[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v31 = *(v24 + 16);
  v30 = v24 + 16;
  v70 = v31;
  v32 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
  v67 = *(v30 + 56);
  v49 = (v9 + 16);
  v50 = (v2 + 16);
  v48 = (v2 + 8);
  v47 = (v9 + 8);
  v66 = (v30 - 8);
  v51 = v17;
  v59 = (v17 + 32);
  v63 = MEMORY[0x277D84F90];
  v33 = v64;
  v52 = v16;
  v65 = v30;
  v31(v28, v32, v64);
  while (1)
  {
    sub_22D01451C();
    if (v69)
    {
      sub_22D01451C();
      if (v69)
      {
        sub_22D01451C();
        if (v69 & 1) != 0 || (v34 = v68, sub_22D01451C(), (v69))
        {

          v33 = v64;
          (*v66)(v28, v64);
        }

        else
        {
          sub_22D01420C();
          v35 = v55;
          sub_22D01577C();
          v58 = v34 == 1;
          v36 = v57;
          (*v50)(v56, v35, v57);
          v37 = v54;
          v38 = v62;
          (*v49)(v53, v62, v54);
          sub_22D01572C();
          v39 = v35;
          v40 = v52;
          (*v48)(v39, v36);
          (*v47)(v38, v37);
          (*v66)(v28, v64);
          v41 = *v59;
          (*v59)(v60, v61, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_22CFCE2E0(0, *(v63 + 2) + 1, 1, v63);
          }

          v43 = *(v63 + 2);
          v42 = *(v63 + 3);
          if (v43 >= v42 >> 1)
          {
            v63 = sub_22CFCE2E0(v42 > 1, v43 + 1, 1, v63);
          }

          v44 = v63;
          *(v63 + 2) = v43 + 1;
          v41(&v44[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v43], v60, v40);
          v33 = v64;
        }
      }

      else
      {

        (*v66)(v28, v33);
      }
    }

    else
    {
      (*v66)(v28, v33);
    }

    v32 += v67;
    if (!--v29)
    {
      break;
    }

    v70(v28, v32, v33);
  }

  return v63;
}

uint64_t sub_22CF5C9D8(uint64_t a1)
{
  v26 = sub_22D01450C();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v26, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v2 + 16);
    v8 = v2 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v22 = *(v8 + 56);
    v23 = v9;
    v11 = (v8 - 8);
    v12 = MEMORY[0x277D84F90];
    v21[1] = v8;
    do
    {
      v14 = v26;
      v23(v6, v10, v26);
      sub_22D01451C();
      (*v11)(v6, v14);
      v15 = v25;
      if (v25)
      {
        v16 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22CFCE000(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = sub_22CFCE000((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v13 = &v12[16 * v18];
        *(v13 + 4) = v16;
        *(v13 + 5) = v15;
      }

      v10 += v22;
      --v7;
    }

    while (v7);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v19 = sub_22CF7BDC4(v12);

  return v19;
}

uint64_t sub_22CF5CBE0(uint64_t a1)
{
  v119 = sub_22D01430C();
  v106 = *(v119 - 8);
  v2 = *(v106 + 64);
  v4 = MEMORY[0x28223BE20](v119, v3);
  v112 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v94 - v7;
  v116 = sub_22D0157AC();
  v96 = *(v116 - 8);
  v9 = *(v96 + 64);
  v11 = MEMORY[0x28223BE20](v116, v10);
  v113 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v95 = v94 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26D8, &qword_22D018F78);
  v107 = *(v100 - 8);
  v15 = *(v107 + 64);
  v17 = MEMORY[0x28223BE20](v100, v16);
  v99 = (v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17, v19);
  v102 = v94 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v105 = (v94 - v23);
  v24 = sub_22D01450C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  v108 = v8;
  if (v30)
  {
    v32 = *(v25 + 16);
    v31 = v25 + 16;
    v33 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v114 = *(v31 + 56);
    v115 = v32;
    v111 = (v31 - 8);
    v109 = MEMORY[0x277D84F90];
    v104 = v31;
    v32(v29, v33, v24);
    while (1)
    {
      sub_22D01451C();
      v34 = v118;
      if (!v118)
      {
        (*v111)(v29, v24);
        goto LABEL_4;
      }

      v110 = v117;
      sub_22D01451C();
      if (!v118)
      {
        (*v111)(v29, v24);

        goto LABEL_4;
      }

      v103 = v117;
      sub_22D01451C();
      if (!v118)
      {
        break;
      }

      v35 = v117;
      sub_22D01451C();
      if (v118)
      {
        (*v111)(v29, v24);

LABEL_13:

        v8 = v108;
        goto LABEL_4;
      }

      v36 = v100;
      v37 = *(v100 + 64);
      v101 = v35;
      v38 = v24;
      v39 = v99;
      sub_22D01420C();
      v40 = v39 + *(v36 + 48);
      sub_22D01577C();
      (*v111)(v29, v38);
      *v39 = v110;
      v39[1] = v34;
      sub_22CEF0368(v39, v102, &qword_27D9F26D8, &qword_22D018F78);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v108;
        v41 = v109;
      }

      else
      {
        v41 = sub_22CFCE308(0, v109[2] + 1, 1, v109);
        v8 = v108;
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_22CFCE308(v42 > 1, v43 + 1, 1, v41);
      }

      v41[2] = v43 + 1;
      v44 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v109 = v41;
      sub_22CEF0368(v102, v41 + v44 + *(v107 + 72) * v43, &qword_27D9F26D8, &qword_22D018F78);
      v24 = v38;
LABEL_4:
      v33 += v114;
      if (!--v30)
      {
        goto LABEL_21;
      }

      v115(v29, v33, v24);
    }

    (*v111)(v29, v24);
    goto LABEL_13;
  }

  v109 = MEMORY[0x277D84F90];
LABEL_21:
  v45 = v109;
  v104 = v109[2];
  if (!v104)
  {
    v48 = MEMORY[0x277D84F98];
LABEL_52:

    return v48;
  }

  v46 = 0;
  v47 = *(v100 + 48);
  v102 = *(v100 + 64);
  v103 = v47;
  v101 = v109 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v111 = (v106 + 32);
  v110 = (v96 + 16);
  v99 = (v106 + 16);
  v100 = v96 + 32;
  v98 = (v96 + 8);
  v94[2] = v106 + 40;
  v97 = (v106 + 8);
  v48 = MEMORY[0x277D84F98];
  v49 = v95;
  while (v46 < v45[2])
  {
    v53 = v105;
    sub_22CEEB6DC(&v101[*(v107 + 72) * v46], v105, &qword_27D9F26D8, &qword_22D018F78);
    v55 = *v53;
    v54 = v53[1];
    (*v100)(v49, &v103[v53], v116);
    v56 = *v111;
    (*v111)(v8, v53 + v102, v119);
    v57 = v48[2];
    v114 = v55;
    v115 = v54;
    if (v57 && (v58 = sub_22CEEC698(v55, v54), (v59 & 1) != 0))
    {
      v60 = *(v48[7] + v58);
    }

    else
    {
      v60 = MEMORY[0x277D84F98];
    }

    v61 = *v110;
    v62 = v113;
    (*v110)(v113, v49, v116);
    (*v99)(v112, v8, v119);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v60;
    v65 = sub_22CFB6184(v62);
    v66 = v60[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_54;
    }

    v69 = v64;
    if (v60[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v72 = v117;
        if (v64)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_22CFB6E00();
        v72 = v117;
        if (v69)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      sub_22CFB9BA0(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_22CFB6184(v113);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_59;
      }

      v65 = v70;
      v72 = v117;
      if (v69)
      {
LABEL_38:
        (*(v106 + 40))(v72[7] + *(v106 + 72) * v65, v112, v119);
        v76 = *v98;
        (*v98)(v113, v116);
        goto LABEL_39;
      }
    }

    v72[(v65 >> 6) + 8] = (v72[(v65 >> 6) + 8] | (1 << v65));
    v73 = v96;
    v74 = v113;
    v75 = v116;
    v61(v72[6] + *(v96 + 72) * v65, v113, v116);
    v56(v72[7] + *(v106 + 72) * v65, v112, v119);
    v76 = *(v73 + 8);
    v76(v74, v75);
    v77 = v72[2];
    v78 = __OFADD__(v77, 1);
    v79 = (v77 + 1);
    if (v78)
    {
      goto LABEL_56;
    }

    v72[2] = v79;
    v49 = v95;
LABEL_39:

    v80 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v48;
    v81 = sub_22CEEC698(v114, v115);
    v83 = v48[2];
    v84 = (v82 & 1) == 0;
    v78 = __OFADD__(v83, v84);
    v85 = v83 + v84;
    if (v78)
    {
      goto LABEL_55;
    }

    v86 = v82;
    if (v48[3] < v85)
    {
      sub_22CFB9B8C(v85, v80);
      v81 = sub_22CEEC698(v114, v115);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_58;
      }

LABEL_44:
      v8 = v108;
      if (v86)
      {
        goto LABEL_23;
      }

      goto LABEL_45;
    }

    if (v80)
    {
      goto LABEL_44;
    }

    v92 = v81;
    sub_22CFB6DEC();
    v81 = v92;
    v8 = v108;
    if (v86)
    {
LABEL_23:
      v50 = v81;

      v48 = v117;
      v51 = v117[7];
      v52 = *(v51 + v50);
      *(v51 + v50) = v72;

      (*v97)(v8, v119);
      v76(v49, v116);
      goto LABEL_24;
    }

LABEL_45:
    v48 = v117;
    v117[(v81 >> 6) + 8] = (v117[(v81 >> 6) + 8] | (1 << v81));
    v88 = (v48[6] + 16 * v81);
    v89 = v115;
    *v88 = v114;
    v88[1] = v89;
    *(v48[7] + v81) = v72;
    (*v97)(v8, v119);
    v76(v49, v116);
    v90 = v48[2];
    v78 = __OFADD__(v90, 1);
    v91 = (v90 + 1);
    if (v78)
    {
      goto LABEL_57;
    }

    v48[2] = v91;
LABEL_24:
    ++v46;

    v45 = v109;
    if (v104 == v46)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  sub_22D016E1C();
  __break(1u);
LABEL_59:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

void *sub_22CF5D6F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Assertion();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v29 = &v27 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_22D01450C() - 8);
  v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = v20;
  do
  {
    sub_22CF58ABC(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_22CEEC3D8(v8, &qword_27D9F26A0, &qword_22D019700);
    }

    else
    {
      v30 = v2;
      v22 = v9;
      v23 = v29;
      sub_22CF5DAE0(v8, v29, type metadata accessor for Assertion);
      sub_22CF5DAE0(v23, v31, type metadata accessor for Assertion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22CFCDFD8(0, v21[2] + 1, 1, v21);
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_22CFCDFD8(v24 > 1, v25 + 1, 1, v21);
      }

      v21[2] = v25 + 1;
      sub_22CF5DAE0(v31, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, type metadata accessor for Assertion);
      v9 = v22;
      v2 = v30;
      v20 = v28;
    }

    v19 += v20;
    --v17;
  }

  while (v17);
  return v21;
}

unint64_t sub_22CF5D9F4()
{
  result = qword_28143D978;
  if (!qword_28143D978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26F0, &qword_22D018F98);
    sub_22CF5E870(&qword_28143F6B8, MEMORY[0x277CB9500]);
    sub_22CF5E870(&qword_281443998, MEMORY[0x277CB9790]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D978);
  }

  return result;
}

uint64_t sub_22CF5DAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF5DB48(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26E8, &qword_22D018F90);
    sub_22CF5E870(a2, MEMORY[0x277CB9350]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22CF5DBE4()
{
  result = qword_28143D970;
  if (!qword_28143D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26F0, &qword_22D018F98);
    sub_22CF5E870(&qword_28143F6A0, MEMORY[0x277CB9500]);
    sub_22CF5E870(&qword_28143F650, MEMORY[0x277CB9790]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D970);
  }

  return result;
}

void sub_22CF5DCD0(uint64_t a1)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22D0141BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v73 = v66 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = v66 - v13;
  v72 = objc_opt_self();
  v15 = [v72 defaultManager];
  v16 = sub_22D01418C();
  v75[0] = 0;
  v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:v75];

  v18 = v75[0];
  if (v17)
  {
    v19 = sub_22D0167DC();
    v20 = v18;

    v22 = *(v19 + 16);
    if (v22)
    {
      v23 = v2;
      v26 = *(v3 + 16);
      v25 = v3 + 16;
      v24 = v26;
      v27 = *(v25 + 64);
      v66[1] = v19;
      v28 = v19 + ((v27 + 32) & ~v27);
      v69 = *(v25 + 56);
      v74 = (v25 - 8);
      *&v21 = 136446210;
      v67 = v21;
      v29 = v73;
      v68 = v25;
      v70 = v26;
      v71 = v14;
      v26(v14, v28, v23);
      while (1)
      {
        if (qword_28143FB00 != -1)
        {
          swift_once();
        }

        v31 = sub_22D01637C();
        __swift_project_value_buffer(v31, qword_2814443C0);
        v24(v29, v14, v23);
        v32 = sub_22D01636C();
        v33 = sub_22D01690C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v23;
          v36 = swift_slowAlloc();
          v75[0] = v36;
          *v34 = v67;
          sub_22CF5E870(&qword_27D9F2710, MEMORY[0x277CC9260]);
          v37 = sub_22D016DEC();
          v39 = v38;
          v40 = *v74;
          (*v74)(v73, v35);
          v41 = sub_22CEEE31C(v37, v39, v75);

          *(v34 + 4) = v41;
          _os_log_impl(&dword_22CEE1000, v32, v33, "Removing %{public}s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          v42 = v36;
          v23 = v35;
          MEMORY[0x2318C6860](v42, -1, -1);
          v43 = v34;
          v29 = v73;
          MEMORY[0x2318C6860](v43, -1, -1);
        }

        else
        {

          v40 = *v74;
          (*v74)(v29, v23);
        }

        v44 = [v72 defaultManager];
        v14 = v71;
        v45 = sub_22D01418C();
        v75[0] = 0;
        v46 = [v44 removeItemAtURL:v45 error:v75];

        if (v46)
        {
          v30 = v75[0];
        }

        else
        {
          v47 = v75[0];
          v48 = sub_22D01416C();

          swift_willThrow();
        }

        v40(v14, v23);
        v24 = v70;
        v28 += v69;
        if (!--v22)
        {
          break;
        }

        v70(v14, v28, v23);
      }
    }
  }

  else
  {
    v49 = v75[0];
    v50 = sub_22D01416C();

    swift_willThrow();
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v51 = sub_22D01637C();
    __swift_project_value_buffer(v51, qword_2814443C0);
    (*(v3 + 16))(v8, a1, v2);
    v52 = v50;
    v53 = sub_22D01636C();
    v54 = sub_22D01690C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = v3;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75[0] = v57;
      *v56 = 136446466;
      sub_22CF5E870(&qword_27D9F2710, MEMORY[0x277CC9260]);
      v58 = sub_22D016DEC();
      v60 = v59;
      (*(v55 + 8))(v8, v2);
      v61 = sub_22CEEE31C(v58, v60, v75);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      swift_getErrorValue();
      v62 = sub_22D016E2C();
      v64 = sub_22CEEE31C(v62, v63, v75);

      *(v56 + 14) = v64;
      _os_log_impl(&dword_22CEE1000, v53, v54, "Unable to clean up %{public}s: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v57, -1, -1);
      MEMORY[0x2318C6860](v56, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22CF5E3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01443C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v29 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0141BC();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v28 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11, v13);
  v18 = v21 - v16;
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v26 = (v15 + 16);
    v27 = "subscriptionType";
    v25 = (v15 + 8);
    *&v17 = 136446210;
    v21[1] = v17;
    *&v17 = 136315138;
    v21[0] = v17;
    v22 = a1;
    v23 = v21 - v16;
    v24 = v8;
    sub_22D01419C();
    (*v26)(v28, v18, v8);
    v19 = v29;
    sub_22D01442C();
    type metadata accessor for ActivityDatabase();
    v20 = swift_allocObject();
    sub_22CF4E0F0(v19);
    (*v25)(v18, v8);
    return v20;
  }

  return result;
}

uint64_t sub_22CF5E870(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22CF5E9A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22CF4414C(0, v2, 0);
    v3 = v36;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    v6 = sub_22D016AEC();
    v7 = 0;
    v8 = *(a1 + 36);
    v30 = v2;
    v31 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v32 = v7;
      v11 = *(*(a1 + 56) + 8 * v6);
      v35 = *(*(a1 + 48) + 4 * v6);
      sub_22CF65598();
      v12 = v11;
      v13 = sub_22D016ABC();
      v33 = v14;
      v34 = v13;
      v15 = [v12 description];
      v16 = sub_22D01667C();
      v18 = v17;

      v19 = v3;
      v37 = v3;
      v20 = *(v3 + 16);
      v21 = *(v19 + 24);
      if (v20 >= v21 >> 1)
      {
        sub_22CF4414C((v21 > 1), v20 + 1, 1);
        v19 = v37;
      }

      *(v19 + 16) = v20 + 1;
      v22 = (v19 + 48 * v20);
      v22[4] = v34;
      v22[5] = v33;
      v22[6] = v16;
      v22[7] = v18;
      v22[9] = MEMORY[0x277D837D0];
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_24;
      }

      v4 = a1 + 64;
      v23 = *(a1 + 64 + 8 * v10);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v3 = v19;
      v8 = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (a1 + 72 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_22CF44CF8(v6, v31, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v6, v31, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v6 = v9;
      if (v32 + 1 == v30)
      {
        return;
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
  }
}

uint64_t sub_22CF5EC5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void sub_22CF5ECD8(uint64_t a1)
{
  v2 = v1;
  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v4 = sub_22D01637C();
  __swift_project_value_buffer(v4, qword_2814443D8);

  v5 = sub_22D01636C();
  v6 = sub_22D01690C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136380675;
    v9 = sub_22D01686C();
    v11 = sub_22CEEE31C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22CEE1000, v5, v6, "Monitoring new bundle identifiers: %{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C6860](v8, -1, -1);
    MEMORY[0x2318C6860](v7, -1, -1);
  }

  v12 = *(v2[6] + 16);
  os_unfair_lock_lock(v12);
  sub_22CF5EE78(a1, v2);

  os_unfair_lock_unlock(v12);
}

void sub_22CF5EE78(uint64_t a1, void *a2)
{
  v4 = a2[3];
  if (*(a1 + 16) <= *(v4 + 16) >> 3)
  {

    sub_22CF627A8(a1);
    v5 = v4;
  }

  else
  {

    v5 = sub_22CF62C50(a1, v4);
  }

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  swift_beginAccess();
  v9 = 0;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_14:
    v13 = (*(v5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    v15 = *v13;
    v14 = v13[1];
    v16 = a2[4];
    v17 = *(v16 + 16);

    if (v17)
    {

      v18 = sub_22CEEC698(v15, v14);
      if (v19)
      {
        v20 = *(*(v16 + 56) + 4 * v18);

        swift_beginAccess();
        v21 = a2[5];
        v22 = sub_22CEE637C(v20);
        if (v23)
        {
          v24 = v22;
          v25 = a2[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = a2[5];
          a2[5] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22CFB72BC();
          }

          sub_22CFBD6BC(v24, v27);
          a2[5] = v27;
        }

        swift_endAccess();
      }

      else
      {
      }
    }

    swift_beginAccess();
    v28 = a2[4];
    v29 = sub_22CEEC698(v15, v14);
    LOBYTE(v28) = v30;

    if (v28)
    {
      v31 = a2[4];
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33 = a2[4];
      a2[4] = 0x8000000000000000;
      if (!v32)
      {
        sub_22CFB7154();
      }

      v11 = *(*(v33 + 48) + 16 * v29 + 8);

      sub_22CFBD50C(v29, v33);
      a2[4] = v33;
    }

    v8 &= v8 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      v34 = a2[3];
      a2[3] = a1;

      sub_22CF5F120();
      return;
    }

    v8 = *(v5 + 56 + 8 * v12);
    ++v9;
    if (v8)
    {
      v9 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22CF5F120()
{
  v1 = v0[6];
  os_unfair_lock_assert_owner(*(v1 + 16));
  os_unfair_lock_assert_owner(*(v1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22D018FE0;
  v3 = v0[3];

  v4 = sub_22D01684C();

  v5 = [objc_opt_self() predicateMatchingBundleIdentifiers_];

  *(v2 + 32) = v5;
  v8 = v0[2];
  if (v8)
  {
    v0 = swift_allocObject();
    v0[2] = v2;
    v2 = swift_allocObject();
    *(v2 + 16) = sub_22CF65518;
    *(v2 + 24) = v0;
    v21 = sub_22CF656A0;
    v22 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_22CEE5AA0;
    v20 = &block_descriptor_26;
    v9 = _Block_copy(&aBlock);
    v10 = v8;

    [v10 updateConfiguration_];

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  MEMORY[0x28223BE20](v6, v7);
  v16[2] = v2;
  v16[3] = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22CF65510;
  *(v11 + 24) = v16;
  v21 = sub_22CEE5B24;
  v22 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_22CEE5AA0;
  v20 = &block_descriptor_1;
  v12 = _Block_copy(&aBlock);
  v13 = objc_opt_self();

  v14 = [v13 monitorWithConfiguration_];
  _Block_release(v12);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[2];
    v0[2] = v14;
  }
}

void sub_22CF5F490(void *a1)
{
  sub_22CEE82F8(0, &unk_28143F9E8, 0x277D46FA0);
  v2 = sub_22D0167CC();
  [a1 setPredicates_];
}

void sub_22CF5F50C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v2 setValues_];
  [a1 setStateDescriptor_];
  sub_22CEE82F8(0, &unk_28143F9E8, 0x277D46FA0);
  v3 = sub_22D0167CC();
  [a1 setPredicates_];

  [a1 setServiceClass_];
  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_22CF65520;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_22CF5F960;
  v6[3] = &block_descriptor_32;
  v5 = _Block_copy(v6);

  [a1 setUpdateHandler_];
  _Block_release(v5);
}

uint64_t sub_22CF5F688(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF5F6FC(a3, a2);
  }

  return result;
}

void sub_22CF5F6FC(void *a1, id a2)
{
  v3 = v2;
  v5 = [a2 bundle];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];

    if (v7)
    {
      v8 = sub_22D01667C();
      v10 = v9;

      if (qword_28143FB08 != -1)
      {
        swift_once();
      }

      v11 = sub_22D01637C();
      __swift_project_value_buffer(v11, qword_2814443D8);

      v12 = a1;
      v13 = sub_22D01636C();
      v14 = sub_22D01690C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21 = v16;
        *v15 = 136380931;
        *(v15 + 4) = sub_22CEEE31C(v8, v10, &v21);
        *(v15 + 12) = 2082;
        [v12 state];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2798, &qword_22D019088);
        v17 = sub_22D01669C();
        v19 = sub_22CEEE31C(v17, v18, &v21);

        *(v15 + 14) = v19;
        _os_log_impl(&dword_22CEE1000, v13, v14, "Received state update for %{private}s with state %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v16, -1, -1);
        MEMORY[0x2318C6860](v15, -1, -1);
      }

      v20 = *(*(v3 + 48) + 16);
      os_unfair_lock_lock(v20);
      sub_22CF5FA00(v12, v3, v8, v10);

      os_unfair_lock_unlock(v20);
    }
  }
}

void sub_22CF5F960(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

void sub_22CF5FA00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 state];
  if (v8 && (v9 = v8, v10 = [v8 taskState], v9, v10 - 2 <= 2))
  {
    v11 = [a1 state];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 process];

      if (v13)
      {
        v14 = [v13 pid];

        swift_beginAccess();
        v15 = *(a2 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(a2 + 32);
        *(a2 + 32) = 0x8000000000000000;
        sub_22CFBEBF8(v14, a3, a4, isUniquelyReferenced_nonNull_native);
        *(a2 + 32) = v23;
        swift_endAccess();
        v17 = [a1 state];
        swift_beginAccess();
        sub_22CFB3198(v17, v14);
LABEL_9:
        swift_endAccess();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v18 = *(a2 + 32);
    if (!*(v18 + 16))
    {
      return;
    }

    v19 = *(a2 + 32);

    v20 = sub_22CEEC698(a3, a4);
    if (v21)
    {
      v22 = *(*(v18 + 56) + 4 * v20);

      swift_beginAccess();

      sub_22CFB31AC(0x100000000, a3, a4);
      swift_endAccess();
      swift_beginAccess();
      sub_22CFB3198(0, v22);
      goto LABEL_9;
    }
  }
}

uint64_t sub_22CF5FC38()
{
  v1 = *(*(v0 + 48) + 16);
  os_unfair_lock_lock(v1);
  swift_beginAccess();
  v2 = *(v0 + 40);

  sub_22CF5E9A8(v3);
  v5 = v4;

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
    v6 = sub_22D016D3C();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v10 = v6;

  sub_22CF623EC(v7, 1, &v10);

  v8 = v10;
  os_unfair_lock_unlock(v1);
  return v8;
}

uint64_t sub_22CF5FEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_22D016C2C();
    v22 = v8;
    sub_22D016B3C();
    if (sub_22D016BAC())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          a6(v16 + 1);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_22D016A5C();
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

      while (sub_22D016BAC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

unint64_t sub_22CF600B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22D016A5C();
  v5 = -1 << *(a2 + 32);
  result = sub_22D016B1C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_22CF60134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  v2 = *v0;
  v3 = sub_22D016C0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22CF60308()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  v2 = *v0;
  v3 = sub_22D016C0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22CF604A8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v3;
  v14 = sub_22D016C0C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v6;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v8 + 32;
    for (i = v8 + 16; v22; result = (*(v8 + 32))(*(v15 + 48) + v27, v12, v7))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v8 + 72) * (v24 | (v19 << 6));
      (*(v8 + 16))(v12, *(v13 + 48) + v27, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v6 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v15;
  }

  return result;
}

id sub_22CF60730(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D016C0C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_22CF608AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_22CF65648(qword_28143FBB0, MEMORY[0x277D4D450]);
  v35 = a1;
  v14 = sub_22D01661C();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_22CF65648(&qword_28143FBA8, MEMORY[0x277D4D450]);
      v22 = sub_22D01665C();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22CF604A8(MEMORY[0x277D4D450], &qword_27D9F27B8, &qword_22D0190A8);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_22CF61F50(v16, MEMORY[0x277D4D450], qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_22CF60BF8(void *a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, id))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v9 = *v5;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = *v5;

    v11 = a1;
    v12 = sub_22D016BBC();

    if (v12)
    {
      v13 = a5(v9, v11);

      return v13;
    }

    return 0;
  }

  v16 = v5;
  a2(0);
  v17 = *(v7 + 40);
  v18 = sub_22D016A5C();
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = sub_22D016A6C();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  v24 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v16;
  v29 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22CF60730(a3, a4);
    v26 = v29;
  }

  v27 = *(*(v26 + 48) + 8 * v20);
  sub_22CF6224C(v20);
  result = v27;
  *v16 = v29;
  return result;
}

unint64_t sub_22CF60D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = *v3;
  v11 = *(*v3 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  v35 = v7;
  sub_22D0166DC();
  v34 = v9;
  MEMORY[0x2318C6020](v9);
  result = sub_22D016ECC();
  v13 = -1 << *(v10 + 32);
  v14 = result & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_21;
  }

  v32 = v3;
  v33 = a2;
  v15 = ~v13;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = v16 + 40 * v14;
    result = *v17;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    if (*v17 != v5 || *(v17 + 8) != v6)
    {
      result = sub_22D016DFC();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v18 != v35 || v19 != v8)
    {
      break;
    }

    if (v34 == v20)
    {
      goto LABEL_16;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      a2 = v33;
      goto LABEL_21;
    }
  }

  result = sub_22D016DFC();
  if (result & 1) == 0 || ((v34 ^ v20))
  {
    goto LABEL_4;
  }

LABEL_16:
  v23 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v32;
  v36 = *v32;
  a2 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22CF60308();
    v25 = v36;
  }

  v26 = *(v25 + 48) + 40 * v14;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  v31 = *(v26 + 32);
  result = sub_22CF61CFC(v14);
  *v32 = v36;
LABEL_21:
  *a2 = v27;
  *(a2 + 8) = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v30;
  *(a2 + 32) = v31;
  return result;
}

uint64_t sub_22CF60FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22D015E7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8]);
  v35 = a1;
  v14 = sub_22D01661C();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_22CF65648(&qword_28143FB80, MEMORY[0x277D4D5D8]);
      v22 = sub_22D01665C();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22CF604A8(MEMORY[0x277D4D5D8], &qword_27D9F27F8, qword_22D0190F0);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_22CF61F50(v16, MEMORY[0x277D4D5D8], &qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_22CF6139C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D016B7C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22CF5FEC0(v4, v3, &qword_27D9F27E0, &unk_22D0190D0, type metadata accessor for Client, sub_22CF7729C);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D016A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for Client();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF6152C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D016B7C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22CF5FEC0(v4, v3, &qword_27D9F27D8, &qword_22D0190C8, _s11SessionCore6ClientCMa_0, sub_22CF77968);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D016A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s11SessionCore6ClientCMa_0();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF616BC()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D016B7C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22CF5FEC0(v4, v3, &qword_27D9F27D0, &qword_22D0190C0, _s11SessionCore6ClientCMa_1, sub_22CF77F80);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D016A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s11SessionCore6ClientCMa_1();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF6184C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D016B7C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22CF5FEC0(v4, v3, &qword_27D9F27C8, &qword_22D0190B8, type metadata accessor for PushFrequentUpdatesObservationClient, sub_22CF77F94);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D016A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for PushFrequentUpdatesObservationClient();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF619DC()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D016B7C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22CF5FEC0(v4, v3, &qword_27D9F27C0, &qword_22D0190B0, _s11SessionCore6ClientCMa_3, sub_22CF77FA8);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D016A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s11SessionCore6ClientCMa_3();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF61B6C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_22D016B7C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22CF5FEC0(v4, v3, &qword_27D9F27B0, &qword_22D0190A0, type metadata accessor for AuthorizationServiceClient, sub_22CF77FBC);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_22D016A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for AuthorizationServiceClient();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22CF61CFC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22D016AFC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v32 = v3;
      v33 = v4;
      do
      {
        v11 = 40 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 40 * v6;
        v14 = v7;
        v15 = *v13;
        v16 = *(v13 + 8);
        v17 = *(v13 + 16);
        v18 = *(v13 + 24);
        v19 = *(v13 + 32);
        v20 = v2;
        v21 = v10;
        sub_22D016EAC();

        sub_22D0166DC();
        sub_22D0166DC();
        MEMORY[0x2318C6020](v19);
        v22 = sub_22D016ECC();

        v7 = v14;

        v10 = v21;
        v2 = v20;
        v23 = v22 & v14;
        if (v20 >= v10)
        {
          if (v23 < v10)
          {
            v3 = v32;
          }

          else
          {
            v3 = v32;
            if (v20 >= v23)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v3 = v32;
          if (v23 >= v10 || v20 >= v23)
          {
LABEL_12:
            v24 = *(v3 + 48);
            v25 = v24 + 40 * v20;
            v26 = (v24 + v11);
            if (40 * v20 < v11 || v25 >= v26 + 40 || v20 != v6)
            {
              v27 = *v26;
              v28 = v26[1];
              *(v25 + 32) = *(v26 + 4);
              *v25 = v27;
              *(v25 + 16) = v28;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        v4 = v33;
      }

      while (((*(v33 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v29 = *(v3 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v31;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22CF61F50(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = MEMORY[0x28223BE20](v7, v10);
  v13 = &v41 - v12;
  v14 = *v5;
  v15 = *v5 + 56;
  v16 = -1 << *(*v5 + 32);
  v17 = (a1 + 1) & ~v16;
  if (((1 << v17) & *(v15 + 8 * (v17 >> 6))) != 0)
  {
    v18 = ~v16;
    v19 = *v5;

    v20 = sub_22D016AFC();
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) != 0)
    {
      v43 = (v20 + 1) & v18;
      v42 = v8[2];
      v48 = v8[9];
      v44 = v8 + 2;
      v21 = (v8 + 1);
      v22 = v14;
      v23 = v18;
      while (1)
      {
        v24 = v15;
        v25 = v48 * v17;
        v26 = v23;
        v42(v13, *(v22 + 48) + v48 * v17, v7);
        v27 = v22;
        v28 = *(v22 + 40);
        sub_22CF65648(v45, v46);
        v29 = sub_22D01661C();
        (*v21)(v13, v7);
        v23 = v26;
        v30 = v29 & v26;
        if (a1 >= v43)
        {
          if (v30 < v43 || a1 < v30)
          {
LABEL_4:
            v22 = v27;
            goto LABEL_5;
          }
        }

        else if (v30 < v43 && a1 < v30)
        {
          goto LABEL_4;
        }

        v22 = v27;
        v33 = *(v27 + 48);
        v34 = v48 * a1;
        v35 = v33 + v48 * a1;
        v36 = v33 + v25 + v48;
        if (v48 * a1 < v25 || v35 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v23 = v26;
          a1 = v17;
          goto LABEL_5;
        }

        a1 = v17;
        if (v34 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v17 = (v17 + 1) & v23;
        v15 = v24;
        if (((*(v24 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v22 = v14;
LABEL_28:
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v22 = v14;
  }

  v38 = *(v22 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v40;
    ++*(v22 + 36);
  }

  return result;
}

unint64_t sub_22CF6224C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22D016AFC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_22D016A5C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_22CF623EC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_22CF65528(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_22CF1D288(v48, v43);
  v9 = *a3;
  v10 = sub_22CEEC698(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22CFBA2E8(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_22CEEC698(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_22D016E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_22CFB72D0();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_22CF1D288(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_22CF65528(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_22CF1D288(v48, v43);
      v30 = *a3;
      v31 = sub_22CEEC698(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_22CFBA2E8(v35, 1);
        v37 = *a3;
        v31 = sub_22CEEC698(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_22CF1D288(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22D016C6C();
  MEMORY[0x2318C5860](0xD00000000000001BLL, 0x800000022D01D9D0);
  sub_22D016CEC();
  MEMORY[0x2318C5860](39, 0xE100000000000000);
  sub_22D016CFC();
  __break(1u);
}

uint64_t sub_22CF627A8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22CF3C4B0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22CF628D4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_22CEE5804(&v18))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 40 * (v10 | (v9 << 6));
      v16 = *(v11 + 32);
      v12 = *(v11 + 16);
      v15[0] = *v11;
      v15[1] = v12;
      v17 = v15[0];
      v18 = v12;
      sub_22CF655EC(&v17, v13);
      sub_22CF655EC(&v18, v13);
      sub_22CF60D9C(v15, v14);
      sub_22CEEC3D8(v14, &qword_27D9F27F0, &unk_22D0190E0);
      sub_22CEE5804(&v17);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22CF62A34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v22 - v6;
  v8 = sub_22D015E7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8, v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v22[0] = v9 + 8;
    v22[1] = v9 + 16;

    for (i = 0; v17; result = sub_22CEEC3D8(v7, &unk_27D9F3630, &unk_22D018FB0))
    {
      v20 = i;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v9 + 16))(v14, *(a1 + 48) + *(v9 + 72) * (v21 | (v20 << 6)), v8);
      sub_22CF60FD8(v14, v7);
      (*(v9 + 8))(v14, v8);
    }

    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(a1 + 56 + 8 * v20);
      ++i;
      if (v17)
      {
        i = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22CF62C50(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v51 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v57 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v61 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v65 = (a2 + 56);

  v15 = 0;
  v63 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v64 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22D016EAC();

    sub_22D0166DC();
    v24 = sub_22D016ECC();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v63;
    v15 = v64;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22D016DFC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v63;
  v28 = v64;
  v67 = v61;
  v68 = v64;
  v69 = v11;
  v66[0] = v63;
  v66[1] = v7;

  v31 = *(v5 + 32);
  v58 = ((1 << v31) + 63) >> 6;
  v14 = 8 * v58;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v59 = &v57;
    MEMORY[0x28223BE20](v29, v30);
    v2 = &v57 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v65, v32);
    v33 = *(v2 + 8 * v8) & ~v4;
    v34 = *(v5 + 16);
    v62 = v2;
    *(v2 + 8 * v8) = v33;
    v35 = v34 - 1;
LABEL_23:
    v60 = v35;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v37 = v28;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v12)
      {
        v5 = sub_22CF64FC4(v62, v58, v60, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v38);
      ++v37;
      if (v11)
      {
        v28 = v38;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v39 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v40 = *(v3 + 48);
            v64 = v28;
            v41 = (v40 + ((v28 << 10) | (16 * v39)));
            v42 = *v41;
            v4 = v41[1];
            v43 = *(v5 + 40);
            sub_22D016EAC();

            sub_22D0166DC();
            v44 = sub_22D016ECC();
            v45 = -1 << *(v5 + 32);
            v8 = v44 & ~v45;
            v2 = v8 >> 6;
            v46 = 1 << v8;
            if (((1 << v8) & v65[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v64;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v47 = (*(v5 + 48) + 16 * v8);
          if (*v47 != v42 || v47[1] != v4)
          {
            v49 = ~v45;
            while ((sub_22D016DFC() & 1) == 0)
            {
              v8 = (v8 + 1) & v49;
              v2 = v8 >> 6;
              v46 = 1 << v8;
              if (((1 << v8) & v65[v8 >> 6]) == 0)
              {
                v3 = v63;
                goto LABEL_45;
              }

              v50 = (*(v5 + 48) + 16 * v8);
              if (*v50 == v42 && v50[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v63;
          v36 = v62[v2];
          v62[v2] = v36 & ~v46;
          v27 = (v36 & v46) == 0;
          v28 = v64;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v35 = v60 - 1;
        if (__OFSUB__(v60, 1))
        {
          __break(1u);
        }

        if (v60 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v53 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v64;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v65, v53);
  v55 = v57;
  v56 = sub_22CF64364(v54, v58, v5, v2, v66);

  if (!v55)
  {

    MEMORY[0x2318C6860](v54, -1, -1);
    v61 = v67;
    v5 = v56;
LABEL_52:
    sub_22CEE57FC();
    goto LABEL_53;
  }

  result = MEMORY[0x2318C6860](v54, -1, -1);
  __break(1u);
  return result;
}