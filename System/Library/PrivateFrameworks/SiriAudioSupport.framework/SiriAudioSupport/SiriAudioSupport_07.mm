uint64_t InstalledAppContainer.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall InstalledAppContainer.bestApp(for:)(SiriAudioSupport::InstalledApp_optional *__return_ptr retstr, Swift::String_optional a2)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (a2.value._object)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = sub_2662A3E98(a2.value._countAndFlagsBits, a2.value._object);
    if (v7)
    {
LABEL_7:
      v9 = *(v4 + 56) + (v6 << 6);
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 16);
      v16[0] = *v9;
      v16[1] = v12;
      v16[2] = v11;
      v16[3] = v10;
      v13 = *(v9 + 16);
      retstr->value.bundleIdentifier = *v9;
      *&retstr->value.supportedMediaCategories._rawValue = v13;
      v14 = *(v9 + 48);
      *&retstr->value.appInstalledAs = *(v9 + 32);
      *&retstr->value.appName.value._object = v14;
      sub_2662C0AE0(v16, &v15);
      return;
    }

    v5 = *(v4 + 16);
  }

  if (v5)
  {
    v6 = sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  *&retstr->value.appInstalledAs = 0u;
  *&retstr->value.appName.value._object = 0u;
  retstr->value.bundleIdentifier = 0u;
  *&retstr->value.supportedMediaCategories._rawValue = 0u;
}

uint64_t sub_266349688@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a1;
  v59 = a4;
  v65 = sub_2664DFE38();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F98];
  v68[0] = MEMORY[0x277D84F98];
  v10 = *(a3 + 16);
  v66 = a2;
  v61 = v6;
  v63 = v10;
  if (v10)
  {
    v11 = (a3 + 32);
    v12 = v10;
    do
    {
      v13 = v11[1];
      v81 = *v11;
      v82 = v13;
      v14 = v11[3];
      v16 = *v11;
      v15 = v11[1];
      v83 = v11[2];
      v84 = v14;
      v77 = v16;
      v78 = v15;
      v17 = v11[3];
      v79 = v11[2];
      v80 = v17;
      sub_2662C0AE0(&v81, &v73);
      sub_266349D48(v68, &v77, v67, a2);
      v73 = v77;
      v74 = v78;
      v75 = v79;
      v76 = v80;
      sub_2662C0B3C(&v73);
      v11 += 4;
      --v12;
    }

    while (v12);
    v18 = v68[0];
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  *&v77 = v9;
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_13:
      v25 = (*(v18 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v21)))));
      v26 = v25[1];
      *&v81 = *v25;
      *(&v81 + 1) = v26;

      sub_26634A164(&v77, &v81, v67, v66, a3);
      v21 &= v21 - 1;

      v23 = v24;
      if (!v21)
      {
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);

      v73 = v77;
      v74 = v78;
      v75 = v79;
      v76 = v80;
      sub_2662C0B3C(&v73);

      __break(1u);

      __break(1u);
      return result;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 64 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  v27 = v77;
  v72 = v77;
  v28 = v66;
  if (*(v77 + 16))
  {
    sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
    if (v29)
    {
      goto LABEL_46;
    }
  }

  if (!v63)
  {
    goto LABEL_45;
  }

  v30 = 0;
  v31 = (a3 + 32);
  v32 = v61++;
  v62 = (v32 + 2);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v33 = v63 - 1;
  v60 = 0x8200202uLL;
  while (1)
  {
    v34 = v31[1];
    v73 = *v31;
    v74 = v34;
    v35 = v31[3];
    v75 = v31[2];
    v76 = v35;
    v36 = v73;
    if (v73 != v67 || *(&v73 + 1) != v28)
    {
      break;
    }

LABEL_25:
    if (v30)
    {
      v38 = v79;
      v39 = v75;
      v40 = &v77;
      if (v75 != 1 && (v79 & 1) != 0)
      {
        v40 = &v73;
        sub_2662C0AE0(&v73, v68);
        sub_26634AACC(&v77);
      }

      v41 = v40[1];
      v81 = *v40;
      v82 = v41;
      v42 = v40[3];
      v83 = v40[2];
      v84 = v42;
      if (v39 == (v38 & 1))
      {
        sub_2662C0AE0(&v73, v68);
        sub_26634AACC(&v81);
        v30 = *(&v73 + 1);
        v43 = v73;
        v44 = &v73;
      }

      else
      {
        v30 = *(&v81 + 1);
        v43 = v81;
        v44 = &v81;
      }

      v53 = v44[2];
      v69 = v44[1];
      v70 = v53;
      v71 = v44[3];
      v28 = v66;
      if (!v33)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v30 = *(&v73 + 1);
      v43 = v73;
      v69 = v74;
      v70 = v75;
      v71 = v76;
      sub_2662C0AE0(&v73, &v81);
      if (!v33)
      {
        goto LABEL_43;
      }
    }

LABEL_42:
    *&v77 = v43;
    *(&v77 + 1) = v30;
    v78 = v69;
    v79 = v70;
    v80 = v71;
    --v33;
    v31 += 4;
  }

  if (sub_2664E0D88())
  {
    v30 = *(&v77 + 1);
    goto LABEL_25;
  }

  v63 = v33;
  sub_2662C0AE0(&v73, &v81);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v45 = v65;
  v46 = __swift_project_value_buffer(v65, qword_280F914F0);
  swift_beginAccess();
  (*v62)(v64, v46, v45);
  sub_2662C0AE0(&v73, &v81);

  v47 = sub_2664DFE18();
  v48 = sub_2664E06D8();
  sub_2662C0B3C(&v73);

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v81 = v50;
    *v49 = v60;

    sub_2662C0B3C(&v73);
    v51 = sub_2662A320C(v36, *(&v36 + 1), &v81);

    *(v49 + 4) = v51;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_2662A320C(v67, v66, &v81);
    _os_log_impl(&dword_26629C000, v47, v48, "InstalledApp.bundleIdentifier: %s is different from queried bundleIdentifier: %s. Dropping...", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v50, -1, -1);
    v52 = v49;
    v28 = v66;
    MEMORY[0x266784AD0](v52, -1, -1);
  }

  else
  {
    sub_2662C0B3C(&v73);
  }

  (*v61)(v64, v65);
  v33 = v63;
  v30 = *(&v77 + 1);
  v43 = v77;
  v69 = v78;
  v70 = v79;
  v71 = v80;
  if (v63)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (v30)
  {
    *&v81 = v43;
    *(&v81 + 1) = v30;
    v82 = v69;
    v83 = v70;
    v84 = v71;
    v54 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v54;
    sub_26634ED9C(&v81, 0x6B6361626C6C6166, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v27 = v68[0];
    goto LABEL_46;
  }

LABEL_45:
  sub_26640793C(0x6B6361626C6C6166, 0xE800000000000000, &v81);
  sub_26634AACC(&v81);
  v27 = v72;
LABEL_46:
  v56 = v59;
  *v59 = v67;
  v56[1] = v28;
  v56[2] = v27;
}

uint64_t sub_266349D48(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[1];
  v42 = *a2;
  v43 = v13;
  v14 = a2[3];
  v44 = a2[2];
  v45 = v14;
  v15 = v42;
  if (v42 == __PAIR128__(a4, a3) || (sub_2664E0D88() & 1) != 0)
  {
    if (*(*a1 + 16))
    {
      sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
      if (v16)
      {
        goto LABEL_7;
      }

      v17 = *a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = *a1;
    sub_26634ED5C(MEMORY[0x277D84F90], 0x6B6361626C6C6166, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    *a1 = v41[0];
LABEL_7:
    v20 = sub_2663970CC(v40, 0x6B6361626C6C6166, 0xE800000000000000);
    v21 = *v19;
    if (!*v19)
    {
      return (v20)(v40, 0);
    }

    v22 = v19;
    sub_2662C0AE0(&v42, v41);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v21;
    if ((v23 & 1) == 0)
    {
      v21 = sub_2663845E8(0, *(v21 + 2) + 1, 1, v21);
      *v22 = v21;
    }

    v25 = *(v21 + 2);
    v24 = *(v21 + 3);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2663845E8((v24 > 1), v25 + 1, 1, v21);
      *v22 = v21;
    }

    *(v21 + 2) = v25 + 1;
    v26 = &v21[64 * v25];
    v27 = v42;
    v28 = v43;
    v29 = v45;
    *(v26 + 4) = v44;
    *(v26 + 5) = v29;
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    return (v20)(v40, 0);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v31, v8);
  sub_2662C0AE0(&v42, v41);

  v32 = sub_2664DFE18();
  v33 = sub_2664E06D8();
  sub_2662C0B3C(&v42);

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v38 = v32;
    v35 = v34;
    v39 = swift_slowAlloc();
    v41[0] = v39;
    *v35 = 136315394;
    *(v35 + 4) = sub_2662A320C(v15, *(&v15 + 1), v41);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2662A320C(a3, a4, v41);
    v36 = v38;
    _os_log_impl(&dword_26629C000, v38, v33, "InstalledApp.bundleIdentifier: %s is different from queried bundleIdentifier: %s. Dropping...", v35, 0x16u);
    v37 = v39;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26634A164(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v82 = a4;
  v106 = a3;
  v83 = sub_2664DFE38();
  v8 = *(v83 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v83);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = a2[1];
  v73 = *a2;
  v74 = a5;
  v17 = *(a5 + 16);
  if (!v17)
  {
    goto LABEL_32;
  }

  v81 = &v68 - v14;
  v70 = v15;
  v71 = a1;
  v72 = v16;
  v18 = (a5 + 32);
  v69 = v8;
  v78 = (v8 + 16);
  v79 = (v8 + 8);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v19 = v17 - 1;
  v75 = 0x8200202uLL;
  v20 = v82;
  v77 = v13;
  while (1)
  {
    v21 = v18[1];
    v94 = *v18;
    v95 = v21;
    v22 = v18[3];
    v96 = v18[2];
    v97 = v22;
    v23 = v94;
    v24 = v94 == v106 && *(&v94 + 1) == v20;
    if (!v24 && (sub_2664E0D88() & 1) == 0)
    {
      break;
    }

    if (*(&v98 + 1))
    {
      if (v100 & 1) == 0 || (v96)
      {
        v90 = v98;
        v91 = v99;
        v25 = v100;
        v26 = v101;
      }

      else
      {
        sub_2662C0AE0(&v94, &v102);
        sub_26634AACC(&v98);
        v90 = v94;
        v91 = v95;
        v25 = v96;
        v26 = v97;
      }
    }

    else
    {
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v105 = v97;
      sub_2662C0AE0(&v94, v89);
      v90 = v102;
      v91 = v103;
      v25 = v104;
      v26 = v105;
    }

    v92 = v25;
    v93 = v26;
    if (!v19)
    {
      goto LABEL_23;
    }

LABEL_22:
    v98 = v90;
    v99 = v91;
    v100 = v92;
    v101 = v93;
    --v19;
    v18 += 4;
  }

  sub_2662C0AE0(&v94, &v102);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = v83;
  v28 = __swift_project_value_buffer(v83, qword_280F914F0);
  swift_beginAccess();
  (*v78)(v81, v28, v27);
  sub_2662C0AE0(&v94, &v102);
  v29 = v82;

  v30 = sub_2664DFE18();
  v31 = sub_2664E06D8();
  sub_2662C0B3C(&v94);

  v80 = v30;
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v102 = v76;
    *v32 = v75;

    sub_2662C0B3C(&v94);
    v33 = sub_2662A320C(v23, *(&v23 + 1), &v102);

    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_2662A320C(v106, v29, &v102);
    v34 = v31;
    v35 = v80;
    _os_log_impl(&dword_26629C000, v80, v34, "InstalledApp.bundleIdentifier: %s is different from queried bundleIdentifier: %s. Dropping...", v32, 0x16u);
    v36 = v76;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  else
  {
    sub_2662C0B3C(&v94);
  }

  (*v79)(v81, v83);
  v90 = v98;
  v91 = v99;
  v92 = v100;
  v93 = v101;
  v13 = v77;
  v20 = v82;
  if (v19)
  {
    goto LABEL_22;
  }

LABEL_23:
  v89[0] = v90;
  v89[1] = v91;
  v89[2] = v92;
  v89[3] = v93;
  if (!*(&v90 + 1))
  {
    v16 = v72;
    v8 = v69;
LABEL_32:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = v83;
    v56 = __swift_project_value_buffer(v83, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v13, v56, v55);

    v57 = v74;

    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v8;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v98 = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_2662A320C(v73, v16, &v98);
      *(v61 + 12) = 2080;
      v63 = sub_2662B9B7C(v57);
      v65 = sub_2662A320C(v63, v64, &v98);

      *(v61 + 14) = v65;
      _os_log_impl(&dword_26629C000, v58, v59, "Fatal: Unable to get the best app for user: %s from installedApps: %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v62, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);

      return (*(v60 + 8))(v13, v83);
    }

    else
    {

      return (*(v8 + 8))(v13, v83);
    }
  }

  v102 = v90;
  v103 = v91;
  v104 = v92;
  v105 = v93;
  sub_2662C0AE0(v89, &v85);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v37 = v83;
  v38 = __swift_project_value_buffer(v83, qword_280F914F0);
  swift_beginAccess();
  v39 = v70;
  (*v78)(v70, v38, v37);

  sub_26634AE28(&v90, &v85);
  v40 = sub_2664DFE18();
  v41 = sub_2664E06C8();
  sub_26634AACC(&v90);

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v84[0] = v43;
    *v42 = v75;
    v85 = v102;
    v86 = v103;
    v87 = v104;
    v88 = v105;
    v44 = InstalledApp.slimDescription()();
    v45 = sub_2662A320C(v44._countAndFlagsBits, v44._object, v84);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2662A320C(v73, v72, v84);
    _os_log_impl(&dword_26629C000, v40, v41, "Found fallbackApp: %s for user: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  (*v79)(v39, v83);
  v46 = v71;
  v47 = *v71;
  if (*(*v71 + 16))
  {
    v48 = sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
    if (v49)
    {
      v50 = (*(v47 + 56) + (v48 << 6));
      v52 = v50[2];
      v51 = v50[3];
      v53 = *v50;
      v86 = v50[1];
      v87 = v52;
      v85 = v53;
      v88 = v51;
      sub_2662C0AE0(&v85, v84);
      sub_26634AACC(&v90);
      sub_26634AACC(&v90);
      return sub_2662C0B3C(&v85);
    }

    v66 = *v46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v85 = *v46;
  sub_26634ED9C(&v102, 0x6B6361626C6C6166, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  result = sub_26634AACC(&v90);
  *v46 = v85;
  return result;
}

uint64_t sub_26634AA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26634AA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26634AACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC0, &qword_2664E6858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26634AB34(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_26:
    v35 = sub_266349310(v1);

    return v35;
  }

  v3 = (a1 + 32);
  while (1)
  {
    v8 = v3[3];
    v41 = v3[2];
    v42 = v8;
    v9 = v3[1];
    v39 = *v3;
    v40 = v9;
    v10 = v39;
    v11 = v43;
    if (v43[2])
    {
      sub_2662C0AE0(&v39, v38);

      sub_2662A3E98(v10, *(&v10 + 1));
      if (v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_2662C0AE0(&v39, v38);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v11;
    v14 = sub_2662A3E98(v10, *(&v10 + 1));
    v16 = v11[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v11[3] < v19)
    {
      sub_26644FF98(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_2662A3E98(v10, *(&v10 + 1));
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_29;
      }

LABEL_14:
      v22 = v38[0];
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v25 = v14;
    sub_2664538E8();
    v14 = v25;
    v22 = v38[0];
    if ((v20 & 1) == 0)
    {
LABEL_17:
      v22[(v14 >> 6) + 8] |= 1 << v14;
      *(v22[6] + 16 * v14) = v10;
      *(v22[7] + 8 * v14) = MEMORY[0x277D84F90];
      v26 = v22[2];
      v18 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v18)
      {
        goto LABEL_28;
      }

      v22[2] = v27;

      goto LABEL_19;
    }

LABEL_15:
    v23 = v22[7];
    v24 = *(v23 + 8 * v14);
    *(v23 + 8 * v14) = MEMORY[0x277D84F90];

LABEL_19:
    v43 = v22;
LABEL_20:
    v29 = sub_2663970CC(v37, v10, *(&v10 + 1));
    v30 = *v28;
    if (*v28)
    {
      v31 = v28;
      sub_2662C0AE0(&v39, v38);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v30;
      if ((v32 & 1) == 0)
      {
        v30 = sub_2663845E8(0, *(v30 + 2) + 1, 1, v30);
        *v31 = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_2663845E8((v33 > 1), v34 + 1, 1, v30);
        *v31 = v30;
      }

      *(v30 + 2) = v34 + 1;
      v4 = &v30[64 * v34];
      v5 = v39;
      v6 = v40;
      v7 = v42;
      *(v4 + 4) = v41;
      *(v4 + 5) = v7;
      *(v4 + 2) = v5;
      *(v4 + 3) = v6;
    }

    (v29)(v37, 0);
    sub_2662C0B3C(&v39);

    v3 += 4;
    if (!--v2)
    {
      v1 = v43;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_26634AE1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26634AE28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC0, &qword_2664E6858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OpenPodcastChannelAppIntent.init(channelEntity:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC8, &qword_2664E6860);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2664DFA28();
  *a1 = result;
  return result;
}

uint64_t sub_26634AF58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_2664DE438();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_26636B8D0();
  }

  sub_2664DE428();
  sub_2664DE388();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  v15 = type metadata accessor for EntitySearchSignalLocal();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v14;
  v19[3] = v15;
  v19[4] = &off_2877EA300;
  v19[0] = v16;

  a4(v19);
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_26634B0C0(uint64_t a1)
{
  v3 = sub_2664DFE38();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v68 - v7;
  v8 = *(v1 + 16);

  v9 = sub_266449428(a1, v8);

  v10 = *(v1 + 16);
  *(v1 + 16) = v9;

  v11 = *(v1 + 24);

  v12 = sub_2664495A0(a1, v11);

  v13 = *(v1 + 24);
  *(v1 + 24) = v12;

  v72 = v1;
  v14 = *(v1 + 16);

  v16 = sub_26639F100(v15);
  v17 = sub_2663D8A24(v14, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v18 = sub_2664E0C78();
  v19 = v18;
  v20 = 0;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v17 + 64);
  v24 = (v21 + 63) >> 6;
  v73 = (v18 + 64);
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_10:
      v29 = v25 | (v20 << 6);
      v27 = 16 * v29;
      v30 = (*(v17 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(*(v17 + 56) + 8 * v29);

      v34 = Double.rounded(to:)(3);
      *(v73 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v35 = (v19[6] + 16 * v29);
      *v35 = v32;
      v35[1] = v31;
      *(v19[7] + 8 * v29) = v34;
      v36 = v19[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        break;
      }

      v19[2] = v38;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  else
  {
LABEL_5:
    v26 = v20;
    v27 = v71;
    v23 = v72;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v20 >= v24)
      {
        break;
      }

      v28 = *(v17 + 64 + 8 * v20);
      ++v26;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v23 = (v28 - 1) & v28;
        goto LABEL_10;
      }
    }

    v39 = *(v23 + 16);
    *(v23 + 16) = v19;

    if (qword_280F914E8 != -1)
    {
      goto LABEL_22;
    }
  }

  v40 = v70;
  v41 = __swift_project_value_buffer(v70, qword_280F914F0);
  swift_beginAccess();
  v42 = v69;
  v73 = *(v69 + 16);
  v73(v27, v41, v40);

  v43 = sub_2664DFE18();
  v44 = sub_2664E06C8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v74 = v46;
    *v45 = 136315138;
    v47 = *(v72 + 16);

    v48 = sub_2664E01D8();
    v50 = v49;

    v51 = sub_2662A320C(v48, v50, &v74);
    v40 = v70;

    *(v45 + 4) = v51;
    v42 = v69;
    _os_log_impl(&dword_26629C000, v43, v44, "EntitySearchSignalLocal#signal BundleScore from view %s ", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    v52 = v46;
    v23 = v72;
    MEMORY[0x266784AD0](v52, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v53 = *(v42 + 8);
  v53(v27, v40);
  v54 = v68;
  v73(v68, v41, v40);

  v55 = sub_2664DFE18();
  v56 = sub_2664E06C8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = v58;
    *v57 = 136315138;
    v59 = v40;
    v60 = *(v23 + 24);

    v61 = sub_2664E01D8();
    v63 = v62;

    v64 = sub_2662A320C(v61, v63, &v74);

    *(v57 + 4) = v64;
    _os_log_impl(&dword_26629C000, v55, v56, "EntitySearchSignalLocal#signal Bundle Recency from view  %s ", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);

    v65 = v68;
    v66 = v59;
  }

  else
  {

    v65 = v54;
    v66 = v40;
  }

  return (v53)(v65, v66);
}

uint64_t sub_26634B6A4()
{
  v0 = sub_2662C3A68(&unk_2877E18E0);
  result = swift_arrayDestroy();
  qword_280F91C58 = v0;
  return result;
}

unint64_t sub_26634B6F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 24);
  if (*(v11 + 16))
  {

    v12 = sub_2662A3E98(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v32 = [v15 integerValue];

      goto LABEL_6;
    }
  }

  v32 = -1;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_2664E36E0;
  *(inited + 40) = 0x80000002664F1510;
  v17 = *(v3 + 24);
  if (*(v17 + 16))
  {
    v18 = *(v3 + 24);

    v19 = sub_2662A3E98(a1, a2);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v19);

      goto LABEL_11;
    }
  }

  sub_2664DE428();
  sub_2664DE3E8();
  (*(v7 + 8))(v10, v6);
LABEL_11:
  v22 = Double.rounded(to:)(5);
  v23 = MEMORY[0x277D839F8];
  *(inited + 48) = v22;
  *(inited + 72) = v23;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000002664F14F0;
  v24 = *(v3 + 16);
  if (*(v24 + 16))
  {
    v25 = *(v3 + 16);

    v26 = sub_2662A3E98(a1, a2);
    v27 = 0;
    if (v28)
    {
      v27 = *(*(v24 + 56) + 8 * v26);
    }
  }

  else
  {
    v27 = 0;
  }

  *(inited + 96) = v27;
  *(inited + 120) = v23;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 168) = MEMORY[0x277D83B88];
  v29 = v32;
  *(inited + 136) = 0x80000002664F1530;
  *(inited + 144) = v29;
  v30 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v30;
}

void sub_26634B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26634B6F0(a1, a2);
  if (*(v4 + 16))
  {
    v5 = v4;
    v6 = sub_2662A3E98(0xD000000000000017, 0x80000002664F14F0);
    if (v7)
    {
      sub_2662A01E8(*(v5 + 56) + 32 * v6, v11);

      sub_266318804(v11, &v12);
      sub_266319BF4();
      swift_dynamicCast();
      [v10 doubleValue];
      v9 = v8;

      *(a3 + 184) = v9;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26634BAB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26634BB24()
{
  if (qword_280F8FB40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26634BBF8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[0] = a1;
  v5[1] = a2;

  a3(v5);
}

uint64_t sub_26634BC6C(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v84 = a5;
  v85 = a4;
  v80 = a3;
  v92 = a2;
  v91 = sub_2664DE438();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_2664DFE38();
  v82 = *(v83 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v89 = (v6 + 8);

  v16 = 0;
  v17 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
  v86 = a1 + 64;
  v87 = a1;
  v88 = v15;
  while (1)
  {
    v95 = v17;
    if (!v14)
    {
      break;
    }

    v94 = isUniquelyReferenced_nonNull_native;
LABEL_12:
    v20 = __clz(__rbit64(v14)) | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_2662A5550(*(a1 + 56) + 40 * v20, v98);
    v97[0] = v23;
    v97[1] = v22;
    v24 = v99;
    v25 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v26 = *(v25 + 8);

    v27 = v90;
    v26(v24, v25);
    v28 = v23;
    sub_2664DE388();
    v30 = v29;
    (*v89)(v27, v91);
    v31 = v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v31;
    v32 = sub_2662A3E98(v23, v22);
    v34 = *(v31 + 16);
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
      goto LABEL_39;
    }

    v38 = v33;
    if (*(v31 + 24) < v37)
    {
      sub_2664508BC(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_2662A3E98(v23, v22);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_48;
      }

LABEL_17:
      v17 = v96;
      if (v38)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v40 = v32;
    sub_266453E30();
    v32 = v40;
    v17 = v96;
    if (v38)
    {
LABEL_18:
      *(v17[7] + 8 * v32) = v30;
      goto LABEL_22;
    }

LABEL_20:
    v17[(v32 >> 6) + 8] |= 1 << v32;
    v41 = (v17[6] + 16 * v32);
    *v41 = v28;
    v41[1] = v22;
    *(v17[7] + 8 * v32) = v30;
    v42 = v17[2];
    v36 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v36)
    {
      goto LABEL_45;
    }

    v17[2] = v43;

LABEL_22:
    v44 = v99;
    v45 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v46 = (*(v45 + 16))(v44, v45);
    isUniquelyReferenced_nonNull_native = *(v46 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v93 = v28;
      v95 = v17;
      v96 = MEMORY[0x277D84F90];
      sub_2662FD0FC(0, isUniquelyReferenced_nonNull_native, 0);
      v47 = v96;
      v48 = v96[2];
      v49 = 32;
      do
      {
        v50 = *(v46 + v49);
        v96 = v47;
        v51 = *(v47 + 24);
        if (v48 >= v51 >> 1)
        {
          sub_2662FD0FC((v51 > 1), v48 + 1, 1);
          v47 = v96;
        }

        *(v47 + 16) = v48 + 1;
        *(v47 + 8 * v48 + 32) = v50;
        v49 += 2;
        ++v48;
        --isUniquelyReferenced_nonNull_native;
      }

      while (isUniquelyReferenced_nonNull_native);

      v17 = v95;
      v28 = v93;
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
    }

    sub_2663D8E90(v47, 604800.0);
    v53 = v52;

    v54 = v94;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v96 = v54;
    v56 = sub_2662A3E98(v28, v22);
    v58 = *(v54 + 16);
    v59 = (v57 & 1) == 0;
    v36 = __OFADD__(v58, v59);
    v60 = v58 + v59;
    if (v36)
    {
      goto LABEL_44;
    }

    v61 = v57;
    if (*(v54 + 24) >= v60)
    {
      if ((v55 & 1) == 0)
      {
        v66 = v56;
        sub_266453E30();
        v56 = v66;
      }
    }

    else
    {
      sub_2664508BC(v60, v55);
      v56 = sub_2662A3E98(v28, v22);
      if ((v61 & 1) != (v62 & 1))
      {
LABEL_48:
        result = sub_2664E0DD8();
        __break(1u);
        return result;
      }
    }

    v15 = v88;
    isUniquelyReferenced_nonNull_native = v96;
    if (v61)
    {
      *(v96[7] + 8 * v56) = v53;
    }

    else
    {
      v96[(v56 >> 6) + 8] |= 1 << v56;
      v63 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v56);
      *v63 = v28;
      v63[1] = v22;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v56) = v53;
      v64 = *(isUniquelyReferenced_nonNull_native + 16);
      v36 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v36)
      {
        goto LABEL_46;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v65;
    }

    v14 &= v14 - 1;
    sub_26634CD00(v97);
    v11 = v86;
    a1 = v87;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      v94 = isUniquelyReferenced_nonNull_native;
      v16 = v19;
      goto LABEL_12;
    }
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_47;
  }

LABEL_39:
  v67 = v83;
  v68 = __swift_project_value_buffer(v83, qword_280F914F0);
  swift_beginAccess();
  v69 = v82;
  v70 = v81;
  (*(v82 + 16))(v81, v68, v67);

  v71 = sub_2664DFE18();
  v72 = sub_2664E06C8();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v96 = v74;
    *v73 = 67109378;
    *(v73 + 4) = (v80 & 1) == 0;
    *(v73 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CE8, &qword_2664E69D8);
    v75 = sub_2664E01D8();
    v77 = sub_2662A320C(v75, v76, &v96);

    *(v73 + 10) = v77;
    _os_log_impl(&dword_26629C000, v71, v72, "EntitySearchSignal#signal Results from SRView for %{BOOL}d : %s", v73, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x266784AD0](v74, -1, -1);
    MEMORY[0x266784AD0](v73, -1, -1);
  }

  (*(v69 + 8))(v70, v67);
  v85(isUniquelyReferenced_nonNull_native, v95);
}

uint64_t sub_26634C428(void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v70 = sub_2664DFE08();
  v63 = *(v70 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v70);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v51 - v7;
  v67 = sub_2664DE438();
  v8 = *(v67 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  sub_2664DE428();
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v19 = sub_26632958C(1011);
  v20 = *(v8 + 16);
  v62 = v18;
  v21 = v67;
  v58 = v20;
  v59 = v8 + 16;
  v20(v16, v18, v67);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v69 = *(v8 + 80);
  v23 = swift_allocObject();
  v24 = v8;
  v25 = v23;
  v23[2] = v19;
  v23[3] = a2;
  v23[4] = a3;
  v65 = v24;
  v26 = *(v24 + 32);
  v57 = v24 + 32;
  v56 = v26;
  v26(v23 + v22, v16, v21);
  v60 = v19;

  sub_2664DE428();
  v68 = v13;
  if (qword_280F912D0 != -1)
  {
    swift_once();
  }

  v54 = ~v69;
  v74 = &type metadata for SiriRemembersEntityProvider;
  v75 = &off_2877EB680;
  v73[0] = swift_allocObject();
  sub_26634CBCC(&qword_280F91D20, v73[0] + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26634CB44;
  *(v27 + 24) = v25;
  v66 = v27;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CD0, &qword_2664E69B8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CD8, &unk_2664E69C0);
  v52 = sub_2664E0318();
  v51 = v28;
  v53 = v25;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v29 = qword_280F91D48;
  v30 = v71;
  sub_2664DFDE8();
  v31 = v63;
  v32 = v55;
  v33 = v70;
  (*(v63 + 16))(v55, v30, v70);
  v34 = (*(v31 + 80) + 33) & ~*(v31 + 80);
  v35 = (v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = "appSelectionSignalsSignal";
  *(v36 + 24) = 25;
  *(v36 + 32) = 2;
  (*(v31 + 32))(v36 + v34, v32, v33);
  v37 = (v36 + v35);
  v38 = v66;
  *v37 = sub_26634CC28;
  v37[1] = v38;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2664E36F0;
  *(v39 + 56) = MEMORY[0x277D837D0];
  *(v39 + 64) = sub_2662C4094();
  v40 = v51;
  *(v39 + 32) = v52;
  *(v39 + 40) = v40;
  sub_2664DFDC8();

  v41 = swift_allocObject();
  *(v41 + 16) = sub_2662DE3C4;
  *(v41 + 24) = v36;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_2662DE46C;
  *(v42 + 24) = v41;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v43 = v61;
  v44 = v67;
  v58(v61, v68, v67);
  v45 = (v69 + 16) & v54;
  v46 = v45 + v9;
  v47 = swift_allocObject();
  v56(v47 + v45, v43, v44);
  *(v47 + v46) = 0;
  v48 = v47 + (v46 & 0xFFFFFFFFFFFFFFF8);
  *(v48 + 8) = sub_26634CC58;
  *(v48 + 16) = v42;

  sub_266370CDC(v64, 0, sub_26634CC60, v47);

  (*(v31 + 8))(v71, v70);
  v49 = *(v65 + 8);
  v49(v68, v44);
  v49(v62, v44);
  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

uint64_t sub_26634CB44(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_2664DE438() - 8) + 80);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];

  return sub_26634AF58(a1, a2, v6, v7);
}

uint64_t sub_26634CC28(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_26634CC60(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);

  return sub_26634BC6C(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_26634CD00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CE0, &qword_2664E69D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26634CD68()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_2664E02A8();
  [v0 setName_];

  qword_280F914A0 = v0;
}

uint64_t sub_26634CDF4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001DLL, 0x80000002664F5160, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280072CF0 = v10;
  return result;
}

uint64_t sub_26634CF8C()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280072CF8);
  *__swift_project_value_buffer(v0, qword_280072CF8) = 60;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t static SiriEnvironmentWrapper.isSystemApertureEnabled()()
{
  v2 = byte_280072D10;
  if (byte_280072D10 == 2)
  {
    v2 = [objc_opt_self() isSystemApertureAvailable];
  }

  return v2 & 1;
}

uint64_t static SiriEnvironmentWrapper.mockSystemAperture(value:)(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "SiriEnvironmentWrapper#mockSystemAperture This should only be called in unit tests.", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  byte_280072D10 = a1 & 1;
  return result;
}

uint64_t static SiriEnvironmentWrapper.resetSystemApertureMockedValue()()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "SiriEnvironmentWrapper#mockSystemAperture This should only happen in unit tests.", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  result = (*(v1 + 8))(v4, v0);
  byte_280072D10 = 2;
  return result;
}

id sub_26634D3CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2662A320C(a1, a2, &v15);
    _os_log_impl(&dword_26629C000, v10, v11, "SiriEnvironmentWrapper#retrieve Removing old context with refId: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return _s16SiriAudioSupport0A18EnvironmentWrapperV6remove5refIdySSSg_tFZ_0(a1, a2);
}

uint64_t static SiriEnvironmentWrapper.store()()
{
  static SiriEnvironmentWrapper.retrieve()();
}

uint64_t sub_26634D618()
{
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();

  sub_2664E0368();
}

uint64_t sub_26634D78C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26634D800(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2662A320C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_26634D85C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D28, &qword_2664E6A28);
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

_BYTE **sub_26634D950(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_26634D960(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2664DE4A8();
  sub_2662A3D78(&qword_280072C08, MEMORY[0x277CC95F0]);
  v5 = sub_2664E0258();

  return sub_26634DDF8(a1, v5);
}

unint64_t sub_26634D9F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2664E0A98();

  return sub_26634DFB8(a1, v5);
}

unint64_t sub_26634DA3C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2664E0E68();
  MEMORY[0x266783E90](a1);
  v4 = sub_2664E0EB8();

  return sub_26634E080(a1, v4);
}

unint64_t sub_26634DAA8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2664E0E68();
  type metadata accessor for CFString(0);
  sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString);
  sub_2664DF658();
  v4 = sub_2664E0EB8();

  return sub_26634E0F0(a1, v4);
}

unint64_t sub_26634DB5C(char a1)
{
  v3 = *(v1 + 40);
  sub_2664E0E68();
  sub_2664E0368();

  v4 = sub_2664E0EB8();

  return sub_26634E1FC(a1, v4);
}

unint64_t sub_26634DC1C(__int16 a1)
{
  v3 = *(v1 + 40);
  sub_2664E0E68();
  sub_26634D618();
  v4 = sub_2664E0EB8();

  return sub_26634E374(a1, v4);
}

unint64_t sub_26634DC88(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2664E0908();
  return sub_26634EB04(a1, v5, &qword_280F8F5A0, 0x277CFE358);
}

unint64_t sub_26634DCD8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2664E0908();
  return sub_26634EB04(a1, v5, &qword_280072D18, 0x277D23800);
}

unint64_t sub_26634DD28(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2664E0E68();
  sub_2664E0E88();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString);
    sub_2664DF658();
  }

  v4 = sub_2664E0EB8();

  return sub_26634EBD0(a1, v4);
}

unint64_t sub_26634DDF8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2664DE4A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2662A3D78(&qword_280072D20, MEMORY[0x277CC95F0]);
      v16 = sub_2664E0298();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_26634DFB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_266350228(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266783AC0](v9, a1);
      sub_266350284(v9);
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

unint64_t sub_26634E080(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_26634E0F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2664DF648();

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

unint64_t sub_26634E1FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000026;
      v6 = 0xD00000000000001DLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "mandPrepareForSetQueue";
      }

      else
      {
        v6 = 0xD000000000000018;
        v7 = "MRMediaRemoteCommandSendQueue";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000026;
      v9 = *(*(v2 + 48) + v4) ? v7 : "led";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD00000000000001DLL : 0xD000000000000018;
        v10 = a1 == 1 ? "mandPrepareForSetQueue" : "MRMediaRemoteCommandSendQueue";
      }

      else
      {
        v10 = "led";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_2664E0D88();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

unint64_t sub_26634E374(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    while (1)
    {
      v7 = (*(v2 + 48) + 2 * v4);
      v8 = v7[1];
      v9 = 0xEB000000006F6964;
      v10 = 0x6172706D61732D78;
      switch(*v7)
      {
        case 1:
          v10 = 0x6C70706D61732D78;
          v9 = 0xEE007473696C7961;
          break;
        case 2:
          v10 = 0xD000000000000016;
          v9 = 0x80000002664F1710;
          break;
        case 3:
          v10 = 0x656D706D61732D78;
          v9 = 0xED00006D65746964;
          break;
        case 4:
          v10 = 0xD000000000000014;
          v9 = 0x80000002664F1740;
          break;
        case 5:
          v10 = 0xD000000000000017;
          v9 = 0x80000002664F1760;
          break;
        case 6:
          v10 = 0xD000000000000018;
          v9 = 0x80000002664F1780;
          break;
        case 7:
          v10 = 0xD00000000000001FLL;
          v9 = 0x80000002664F17A0;
          break;
        case 8:
          v10 = 0xD000000000000017;
          v9 = 0x80000002664F17C0;
          break;
        case 9:
          v10 = 0xD000000000000016;
          v9 = 0x80000002664F17E0;
          break;
        case 0xA:
          v10 = 0x2D616964656D2D78;
          v9 = 0xEF7972617262696CLL;
          break;
        case 0xB:
          v10 = 0x6574616572632D78;
          v9 = 0xEF6E6F6974617473;
          break;
        case 0xC:
          v10 = 0xD000000000000011;
          v9 = 0x80000002664F1820;
          break;
        case 0xD:
          v10 = 0xD00000000000001ALL;
          v9 = 0x80000002664F1840;
          break;
        case 0xE:
          v10 = 0xD00000000000001ALL;
          v9 = 0x80000002664F1860;
          break;
        case 0xF:
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v11 = 0x6172706D61732D78;
      v12 = 0xEB000000006F6964;
      switch(a1)
      {
        case 1:
          v12 = 0xEE007473696C7961;
          if (v10 == 0x6C70706D61732D78)
          {
            goto LABEL_50;
          }

          goto LABEL_53;
        case 2:
          v12 = 0x80000002664F1710;
          if (v10 != 0xD000000000000016)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 3:
          v12 = 0xED00006D65746964;
          if (v10 != 0x656D706D61732D78)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 4:
          v12 = 0x80000002664F1740;
          if (v10 != 0xD000000000000014)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 5:
          v12 = 0x80000002664F1760;
          if (v10 != 0xD000000000000017)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 6:
          v12 = 0x80000002664F1780;
          if (v10 != 0xD000000000000018)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 7:
          v12 = 0x80000002664F17A0;
          if (v10 != 0xD00000000000001FLL)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 8:
          v12 = 0x80000002664F17C0;
          if (v10 != 0xD000000000000017)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 9:
          v12 = 0x80000002664F17E0;
          if (v10 != 0xD000000000000016)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 10:
          v11 = 0x2D616964656D2D78;
          v12 = 0xEF7972617262696CLL;
          goto LABEL_49;
        case 11:
          v12 = 0xEF6E6F6974617473;
          if (v10 != 0x6574616572632D78)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 12:
          v12 = 0x80000002664F1820;
          if (v10 != 0xD000000000000011)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 13:
          v12 = 0x80000002664F1840;
          if (v10 != 0xD00000000000001ALL)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 14:
          v12 = 0x80000002664F1860;
          if (v10 != 0xD00000000000001ALL)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 15:
          v12 = 0xE700000000000000;
          if (v10 != 0x6E776F6E6B6E75)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        default:
LABEL_49:
          if (v10 != v11)
          {
            goto LABEL_53;
          }

LABEL_50:
          if (v9 == v12)
          {
          }

          else
          {
LABEL_53:
            v13 = sub_2664E0D88();

            if ((v13 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (v8 > 3)
          {
            if (v8 > 5)
            {
              if (v8 == 6)
              {
                v15 = 0x62696C656C6F6877;
                v14 = 0xEC00000079726172;
              }

              else
              {
                v14 = 0xE700000000000000;
                v15 = 0x6E776F6E6B6E75;
              }
            }

            else if (v8 == 4)
            {
              v14 = 0xE400000000000000;
              v15 = 1684630645;
            }

            else
            {
              v15 = 0x6867696C746F7073;
              v14 = 0xE900000000000074;
            }
          }

          else if (v8 > 1)
          {
            if (v8 == 2)
            {
              v15 = 0x72657669746C756DLL;
              v14 = 0xEA00000000006573;
            }

            else
            {
              v14 = 0xE500000000000000;
              v15 = 0x65726F7473;
            }
          }

          else if (v8)
          {
            v14 = 0xE800000000000000;
            v15 = 0x636E797369726973;
          }

          else
          {
            v14 = 0xE600000000000000;
            v15 = 0x656369766564;
          }

          v16 = 0x62696C656C6F6877;
          if (HIBYTE(a1) != 6)
          {
            v16 = 0x6E776F6E6B6E75;
          }

          v17 = 0xEC00000079726172;
          if (HIBYTE(a1) != 6)
          {
            v17 = 0xE700000000000000;
          }

          v18 = 0x6867696C746F7073;
          if (HIBYTE(a1) == 4)
          {
            v18 = 1684630645;
          }

          v19 = 0xE900000000000074;
          if (HIBYTE(a1) == 4)
          {
            v19 = 0xE400000000000000;
          }

          if (HIBYTE(a1) <= 5u)
          {
            v16 = v18;
            v17 = v19;
          }

          v20 = 0x72657669746C756DLL;
          if (HIBYTE(a1) != 2)
          {
            v20 = 0x65726F7473;
          }

          v21 = 0xEA00000000006573;
          if (HIBYTE(a1) != 2)
          {
            v21 = 0xE500000000000000;
          }

          v22 = 0x636E797369726973;
          if (!HIBYTE(a1))
          {
            v22 = 0x656369766564;
          }

          v23 = 0xE600000000000000;
          if (HIBYTE(a1))
          {
            v23 = 0xE800000000000000;
          }

          if (HIBYTE(a1) <= 1u)
          {
            v20 = v22;
            v21 = v23;
          }

          if (HIBYTE(a1) <= 3u)
          {
            v24 = v20;
          }

          else
          {
            v24 = v16;
          }

          if (HIBYTE(a1) <= 3u)
          {
            v25 = v21;
          }

          else
          {
            v25 = v17;
          }

          if (v15 == v24 && v14 == v25)
          {

            return v4;
          }

          v6 = sub_2664E0D88();

          if (v6)
          {
            return v4;
          }

LABEL_4:
          v4 = (v4 + 1) & v27;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_26634EB04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2662C1744(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_2664E0918();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_26634EBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString);
          v10 = v9;
          v11 = sub_2664DF648();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26634ECF0(uint64_t a1, uint64_t a2)
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

uint64_t sub_26634ED9C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2662A3E98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2664538FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26644FFAC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 6);

    return sub_2663502D8(a1, v23);
  }

  else
  {
    sub_2664535A0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_26634EEE0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2662A3E98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_266453AC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_266450328(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_266318804(a1, v23);
  }

  else
  {
    sub_2664535F8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26634F084(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2662A3E98(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_266453E30();
      result = v19;
      goto LABEL_8;
    }

    sub_2664508BC(v16, a3 & 1);
    v20 = *v5;
    result = sub_2662A3E98(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    sub_26645367C(result, a1, a2, v22, a4);
  }

  return result;
}

uint64_t sub_26634F1AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2662A3E98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_26645410C();
      result = v19;
      goto LABEL_8;
    }

    sub_266450E14(v16, a4 & 1);
    v20 = *v5;
    result = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_2662A39CC(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_26634F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2662A3E98(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_26645429C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_2664510DC(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_2662A3E98(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_2664536C4(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_26634F52C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_2662A3E98(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_2664E0DD8();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v28);
}

_OWORD *sub_26634F694(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26634DAA8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_266454598();
      v8 = v16;
      goto LABEL_8;
    }

    sub_266451660(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_26634DAA8(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_266318804(a1, v20);
  }

  else
  {
    sub_266453714(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_26634F7D4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26634DB5C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_266454718();
      v11 = v19;
      goto LABEL_8;
    }

    sub_266451940(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26634DB5C(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_26645377C(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_26634F94C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_2662A3E98(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_26634FAB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2662A3E98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2664549F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_266451EFC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2662A39CC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26634FC54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = *v11;
    v33 = sub_2662A3E98(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

unint64_t sub_26634FE10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2662AEB4C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_266454F94();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26645284C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_2662AEB4C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_266453890(v9, a2, a1, v20);
  }
}

id _s16SiriAudioSupport0A18EnvironmentWrapperV6remove5refIdySSSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v10, v4);

    v11 = sub_2664DFE18();
    v12 = sub_2664E06C8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2662A320C(a1, a2, v16);
      _os_log_impl(&dword_26629C000, v11, v12, "SiriEnvironmentWrapper#remove Removing SiriEnvironment for current request, refId: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266784AD0](v14, -1, -1);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    if (qword_280F91498 != -1)
    {
      swift_once();
    }

    v15 = qword_280F914A0;
    [qword_280F914A0 lock];
    if (qword_280F914B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_266407910(a1, a2);
    swift_endAccess();

    return [v15 unlock];
  }

  return result;
}

id sub_2663503CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000002664F1EB0 == a2;
  if (v3 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x3365707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x31325F7176 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000014 && 0x80000002664F0ED0 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000022 && 0x80000002664F1ED0 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000016 && 0x80000002664F0EB0 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x343165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x383165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x303165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x373165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000023 && 0x80000002664F1F00 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x5F74726F70707573 && a2 == 0xEC00000067616C66 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000014 && 0x80000002664F0E30 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000020 && 0x80000002664F1F30 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000014 && 0x80000002664F0E50 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD00000000000001DLL && 0x80000002664F1F60 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v8 = *(v2 + 136);
    v9 = *(v2 + 144);

    v10 = sub_2664E02A8();

    v11 = [objc_opt_self() featureValueWithString_];

    return v11;
  }

  else
  {
    if (a1 == 0xD000000000000017 && 0x80000002664F0E70 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3065707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3265707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x5F6E726F63696E75 && a2 == 0xEC00000067616C66 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD00000000000001ELL && 0x80000002664F1F80 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000017 && 0x80000002664F1FA0 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000019 && 0x80000002664F1FC0 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000016 && 0x80000002664F1FE0 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3565707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000019 && 0x80000002664F0E90 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x363165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3465707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3665707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3165707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD00000000000001ALL && 0x80000002664F2000 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD00000000000001CLL && 0x80000002664F2020 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000017 && 0x80000002664F2040 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    return 0;
  }
}

uint64_t sub_266351148()
{
  v1 = *(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t sub_2663511A4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    sub_26635122C();
    v1 = v2;
    swift_unownedRelease();
    swift_unownedRelease();
    v3 = *(v0 + 40);
    *(v0 + 40) = v1;
  }

  return v1;
}

void sub_26635122C()
{
  v0 = *(swift_unownedRetainStrong() + 16);
  swift_unknownObjectRetain();

  v1 = sub_2664E02A8();
  v2 = [v0 featureValueForName_];

  if (v2)
  {
    swift_unknownObjectRelease();
    v3 = [v2 dictionaryValue];

    sub_266319BF4();
    v4 = sub_2664E01C8();

    sub_266351324(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_266351324(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D38, qword_2664E6BF0);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_266350228(*(a1 + 48) + 40 * v12, v30);
    v32 = *(*(a1 + 56) + 8 * v12);
    v26 = v30[0];
    v27 = v30[1];
    v28 = v31;
    v13 = v32;
    swift_dynamicCast();
    v24 = 0;
    v25 = 1;
    result = MEMORY[0x266783600](v13, &v24);
    if (v25)
    {
      goto LABEL_28;
    }

    v14 = v24;

    v15 = v29;
    v16 = *(v2 + 40);
    result = sub_2664E0E58();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_27;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v15;
    *(*(v2 + 56) + 8 * v10) = v14;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_266351688()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_2663516EC(unint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D30, &qword_2664E6BE8);
    sub_2664E0C58();
  }

  else
  {

    sub_2664E0D98();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D30, &qword_2664E6BE8);
  v7 = sub_2664E0488();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v24[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v24];
  v11 = v24[0];
  if (v10)
  {
    v12 = v10;
    v24[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2664E0A68();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_2663519BC(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for PlayMediaAppSelectionOutput();
        v20 = swift_allocObject();
        *(v20 + 32) = 1;
        *(v20 + 40) = 0;
        *(v20 + 16) = v19;
        *(v20 + 24) = 0;
        swift_unknownObjectRetain();

        MEMORY[0x266783490](v21);
        if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2664E04C8();
        }

        ++v18;
        sub_2664E0518();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v24[0];
    sub_2664DE1A8();

    swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2663519BC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_2664E0B68();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_2664E0A68();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t dispatch thunk of SiriAudioSessionManaging.currentSessionID(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_266351BD4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_266351BD4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_266351D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a1;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D40, &qword_2664E6D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D48, &qword_2664E6D80);
  v11 = sub_2664E0318();
  v23 = v12;
  v24 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v25;
  v17[1] = a3;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E36F0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2662C4094();
  v19 = v23;
  *(v18 + 32) = v24;
  *(v18 + 40) = v19;
  sub_2664DFDC8();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_266352A18;
  *(v20 + 24) = v16;

  sub_26635202C(sub_266352AC0, v20, v26);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26635202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v32 = sub_26632958C(1016);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v9;
    v21 = v11;
    v22 = a3;
    v23 = v4;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingStateSignal#signal", v20, 2u);
    v25 = v24;
    v4 = v23;
    a3 = v22;
    v11 = v21;
    v9 = v31;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v26 = swift_allocObject();
  v27 = v33;
  v26[2] = v32;
  v26[3] = v27;
  v26[4] = v34;

  sub_2664DE428();
  (*(v5 + 16))(v9, v11, v4);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_266352BC8;
  *(v29 + 24) = v26;
  (*(v5 + 32))(v29 + v28, v9, v4);

  sub_266352C88(a3, sub_266352C14, v29);

  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2663523F4(int a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_2664DE438();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26[1] = a4;
    v20 = a2;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "NowPlayingStateSignal#signal got playbackState", v19, 2u);
    v22 = v21;
    a2 = v20;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_2664DE428();
  sub_2664DE388();
  v24 = v23;
  (*(v27 + 8))(v10, v28);
  v29[3] = &type metadata for NowPlayingStateSignal;
  v29[4] = &off_2877EA5C0;
  LODWORD(v29[0]) = a1;
  v29[1] = v24;
  a2(v29);
  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_2663526B8()
{
  v0 = sub_2662C3A68(&unk_2877E17E0);
  result = sub_2662C1834(&unk_2877E1800);
  qword_280F91C68 = v0;
  return result;
}

uint64_t sub_2663526F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_26629C000, v10, v11, "NowPlayingAppSignal#NowPlayingStateClient#nowPlayingState as: %u", v12, 8u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1);
}

uint64_t sub_2663528D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t getEnumTagSinglePayload for NowPlayingStateSignal(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NowPlayingStateSignal(uint64_t result, int a2, int a3)
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

uint64_t sub_2663529B0()
{
  if (qword_280F8FD88 != -1)
  {
    swift_once();
  }
}

unint64_t sub_266352A0C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_266352AC8();
}

uint64_t sub_266352A18(uint64_t a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + 32);

  return sub_2662C4878(a1, v5, v6, v10, v1 + v4, v8, v9);
}

unint64_t sub_266352AC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = 0x6979616C50776F6ELL;
  *(inited + 40) = 0xEF6574617453676ELL;
  v1 = sub_2664E0D48();
  MEMORY[0x2667833B0](v1);

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0x6574617473;
  *(inited + 56) = 0xE500000000000000;
  v2 = sub_2663854AC(inited);
  swift_setDeallocating();
  sub_266352EF4(inited + 32);
  return v2;
}

uint64_t sub_266352BC8()
{
  v2 = v0[3];
  v1 = v0[4];
  if (v0[2])
  {
    sub_26636B8D0();
  }

  return v2();
}

uint64_t sub_266352C14(int a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2663523F4(a1, v4, v5, v6);
}

void sub_266352C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "NowPlayingAppSignal#NowPlayingStateClient#nowPlayingState...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_266352EEC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663528D4;
  aBlock[3] = &block_descriptor_14;
  v15 = _Block_copy(aBlock);

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v15);
}

uint64_t sub_266352EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LibraryProvider.init(mediaLibrary:cloudController:favoriteEntityProvider:musicPlayerController:playlistQuery:songQuery:albumQuery:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  sub_2662A5550(a2, (a9 + 1));
  sub_2662A5550(a3, (a9 + 6));
  a9[11] = a4;
  a9[12] = a5;
  a9[13] = a6;
  a9[14] = a7;
  a9[15] = a8;
  a9[16] = a10;
  a9[17] = a11;
  v19 = objc_allocWithZone(MEMORY[0x277CDD348]);
  v20 = a1;
  v21 = a4;

  v22 = [v19 init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v23 = qword_280F8F808;
  v28[3] = type metadata accessor for MultiUserConnectionProvider();
  v28[4] = &protocol witness table for MultiUserConnectionProvider;
  v28[0] = v23;
  type metadata accessor for AccountProvider();
  v24 = swift_allocObject();

  v25 = sub_266360778(v22, v28, v24);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a2);
  a9[18] = v25;
  return result;
}

uint64_t LibraryProvider.library(with:completion:)(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v65 = a5;
  v60 = a3;
  v59 = a1;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v63 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v19 = v10[2];
  v67 = v9;
  v19(v17, v18, v9);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v62 = a2;
    v23 = a4;
    v24 = a6;
    v25 = v22;
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#library...", v22, 2u);
    v26 = v25;
    a6 = v24;
    a4 = v23;
    a2 = v62;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v27 = v10[1];
  v28 = v67;
  v64 = v10 + 1;
  v27(v17, v67);
  if (a2 != 1 && a2 | a4)
  {
    v34 = v61;
    v19(v61, v18, v28);

    v35 = sub_2664DFE18();
    v36 = a2;
    v37 = sub_2664E06E8();

    v38 = os_log_type_enabled(v35, v37);
    v62 = a2;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v69[0] = v40;
      *v39 = 136315394;
      if (v36)
      {
        v41 = v59;
      }

      else
      {
        v41 = 0;
      }

      v42 = a6;
      if (v36)
      {
        v43 = v36;
      }

      else
      {
        v43 = 0xE000000000000000;
      }

      v44 = sub_2662A320C(v41, v43, v69);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      if (a4)
      {
        v45 = v60;
      }

      else
      {
        v45 = 0;
      }

      if (a4)
      {
        v46 = a4;
      }

      else
      {
        v46 = 0xE000000000000000;
      }

      v47 = sub_2662A320C(v45, v46, v69);
      a6 = v42;

      *(v39 + 14) = v47;
      _os_log_impl(&dword_26629C000, v35, v37, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);

      v48 = v61;
      v49 = v67;
    }

    else
    {

      v48 = v34;
      v49 = v28;
    }

    v27(v48, v49);
    v50 = v66[18];
    sub_2663608CC(v66, v69);
    v51 = swift_allocObject();
    *(v51 + 16) = v65;
    *(v51 + 24) = a6;
    v52 = v69[7];
    *(v51 + 128) = v69[6];
    *(v51 + 144) = v52;
    *(v51 + 160) = v69[8];
    *(v51 + 176) = v70;
    v53 = v69[3];
    *(v51 + 64) = v69[2];
    *(v51 + 80) = v53;
    v54 = v69[5];
    *(v51 + 96) = v69[4];
    *(v51 + 112) = v54;
    v55 = v69[1];
    *(v51 + 32) = v69[0];
    *(v51 + 48) = v55;
    v56 = objc_opt_self();

    v57 = [v56 currentDeviceInfo];
    v58 = [v57 supportsMultipleITunesAccounts];

    if (v58)
    {
      sub_26633393C(v59, v62, v60, a4, sub_266360904, v51);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v68[0] = 0x755F656C676E6973;
      v68[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v68, sub_266333820, 0, 0, 1, sub_266360904, v51);
    }
  }

  else
  {
    v29 = v63;
    v19(v63, v18, v28);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "LibraryProvider#library no sharedUserIdInfo found, using default library", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v27(v29, v67);
    return v65(*v66);
  }
}

void sub_2663537E0(void **a1, void (*a2)(void *), uint64_t a3, void **a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v47 - v19;
  v21 = *a1;
  if (*a1 >= 2)
  {
    v47 = a4;
    v48 = v18;
    v50 = a3;
    v51 = a2;
    v26 = qword_280F914E8;
    v27 = v21;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v49 = v9[2];
    v49(v17, v28, v8);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v27;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "LibraryProvider#library resolved user identity, building library", v32, 2u);
      v33 = v32;
      v27 = v31;
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v34 = v9[1];
    v34(v17, v8);
    v35 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
    if (v35)
    {
      v36 = v35;
      v49(v13, v28, v8);
      v37 = sub_2664DFE18();
      v38 = sub_2664E06E8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v27;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_26629C000, v37, v38, "LibraryProvider#library resolved library with identity", v40, 2u);
        v41 = v40;
        v27 = v39;
        MEMORY[0x266784AD0](v41, -1, -1);
      }

      v34(v13, v8);
      v51(v36);
    }

    else
    {
      v49(v48, v28, v8);
      v42 = sub_2664DFE18();
      v43 = sub_2664E06D8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v27;
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_26629C000, v42, v43, "LibraryProvider#library unexpected error resolving library with identity", v45, 2u);
        v46 = v45;
        v27 = v44;
        MEMORY[0x266784AD0](v46, -1, -1);
      }

      v34(v48, v8);
      v51(*v47);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (v9[2])(v20, v22, v8);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v23, v24, "LibraryProvider#library unexpected error resolving library", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (v9[1])(v20, v8);
    a2(*a4);
  }
}

uint64_t sub_266353CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = *(a1 + 8);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v15, v8);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v14;
    v19 = v13;
    v20 = a3;
    v21 = a4;
    v22 = a2;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "LibraryProvider#cloudController using multiuser identity for cloud controller", v18, 2u);
    v24 = v23;
    a2 = v22;
    a4 = v21;
    a3 = v20;
    v13 = v19;
    v14 = v31;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v34[0] = v14;
  v34[1] = v13;
  sub_2663608CC(a4, v32);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = v32[7];
  *(v25 + 128) = v32[6];
  *(v25 + 144) = v26;
  *(v25 + 160) = v32[8];
  *(v25 + 176) = v33;
  v27 = v32[3];
  *(v25 + 64) = v32[2];
  *(v25 + 80) = v27;
  v28 = v32[5];
  *(v25 + 96) = v32[4];
  *(v25 + 112) = v28;
  v29 = v32[1];
  *(v25 + 32) = v32[0];
  *(v25 + 48) = v29;

  sub_266411148(v34, sub_266367300);
}

uint64_t sub_266353F84(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_2662A7224(a1, &v24, &qword_280072D50, &unk_2664E6F18);
  if (v25)
  {
    sub_2662A8618(&v24, v26);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v12, v15, v7);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26629C000, v16, v17, "LibraryProvider#cloudController resolved mpCloudController with identity", v18, 2u);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    a2(v26);
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_2662A9238(&v24, &qword_280072D50, &unk_2664E6F18);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v14, v20, v7);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "LibraryProvider#cloudController unexpected error resolving user identity", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    return (a2)(a4 + 8);
  }
}

uint64_t LibraryProvider.mediaQuery(with:for:shouldAllowNonLibraryContent:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void), uint64_t a8)
{
  *(&v70 + 1) = a2;
  v73 = a7;
  v74 = a8;
  v68 = a6;
  *&v70 = a4;
  v66 = a1;
  v67 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v72 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v64 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v64 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v64 = &v64 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v64 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v26 = v25;
  v75 = v10[2];
  v75(v24, v25, v9);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "LibraryProvider#mediaQuery...", v29, 2u);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v30 = v10[1];
  v30(v24, v9);
  v31 = swift_allocObject();
  if (a5 == 6)
  {
    v47 = v65;
    v75(v65, v26, v9);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "LibraryProvider#mediaQuery playlist", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v51 = (v30)(v47, v9);
    v37 = v71;
    v52 = *(v71 + 104);
    v46 = (*(v71 + 96))(v51);
    goto LABEL_17;
  }

  if (a5 == 1)
  {
    v75(v20, v26, v9);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "LibraryProvider#mediaQuery album", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v44 = (v30)(v20, v9);
    v37 = v71;
    v45 = *(v71 + 136);
    v46 = (*(v71 + 128))(v44);
LABEL_17:
    *(v31 + 16) = v46;
    v40 = v72;
    goto LABEL_21;
  }

  if (a5)
  {
    v75(v69, v26, v9);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06E8();
    v55 = os_log_type_enabled(v53, v54);
    v40 = v72;
    if (v55)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "LibraryProvider#mediaQuery default, empty", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v30(v69, v9);
    *(v31 + 16) = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
    v37 = v71;
  }

  else
  {
    v32 = v64;
    v75(v64, v26, v9);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      *(v35 + 4) = v68 & 1;
      _os_log_impl(&dword_26629C000, v33, v34, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v35, 8u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v36 = (v30)(v32, v9);
    v37 = v71;
    v38 = *(v71 + 120);
    v39 = (*(v71 + 112))(v36);
    *(v31 + 16) = v39;
    [v39 setShouldIncludeNonLibraryEntities_];
    [v39 setIgnoreSystemFilterPredicates_];
    v40 = v72;
  }

LABEL_21:
  v57 = *(&v70 + 1);
  if (*(&v70 + 1) == 1 || v70 == 0)
  {
    v75(v40, v26, v9);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06E8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    v30(v40, v9);
    v61 = *(v31 + 16);
    v73();
  }

  else
  {

    v62 = v74;

    sub_266362AB4(v66, v57, v67, v70, v37, v31, v73, v62);
  }

  sub_266354A00(v31);
}

uint64_t sub_266354A00(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    swift_beginAccess();
    v12 = [*(a1 + 16) description];
    v13 = sub_2664E02C8();
    v15 = v14;

    v16 = sub_2662A320C(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_26629C000, v8, v9, "LocalPlaybackHelper#getResultQuery returning query: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266784AD0](v11, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_266354C5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  [*(a2 + 16) setMediaLibrary_];
  swift_beginAccess();
  v6 = *(a2 + 16);
  a3();
}

MPMediaItem_optional __swiftcall LibraryProvider.nowPlayingItem()()
{
  v1 = [*(v0 + 88) nowPlayingItem];

  v2 = v1;
  result.value.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t LibraryProvider.existsInLibrary(with:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v77 = a7;
  v78 = a8;
  v79 = a6;
  v83 = a3;
  v84 = a5;
  v81 = a4;
  v82 = a1;
  v88 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v76 = &v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v71 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v71 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v25 = v11[2];
  v86 = v11 + 2;
  v87 = v24;
  v85 = v25;
  v25(v23, v24, v10);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "LibraryProvider#existsInLibrary...", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v29 = v11[1];
  v29(v23, v10);
  if (v88)
  {
    v75 = v29;
    v73 = v11 + 1;
    sub_2663608CC(v9, v90);
    sub_2663608CC(v90, v89);
    v30 = swift_allocObject();
    v31 = v90[7];
    *(v30 + 112) = v90[6];
    *(v30 + 128) = v31;
    *(v30 + 144) = v90[8];
    v32 = v91;
    v33 = v90[3];
    *(v30 + 48) = v90[2];
    *(v30 + 64) = v33;
    v34 = v90[5];
    *(v30 + 80) = v90[4];
    *(v30 + 96) = v34;
    v35 = v90[1];
    *(v30 + 16) = v90[0];
    *(v30 + 32) = v35;
    v37 = v83;
    v36 = v84;
    *(v30 + 160) = v32;
    *(v30 + 168) = v37;
    v39 = v81;
    v38 = v82;
    *(v30 + 176) = v81;
    *(v30 + 184) = v36;
    *(v30 + 192) = v79;
    *(v30 + 200) = v38;
    v40 = v88;
    *(v30 + 208) = v88;
    v41 = *MEMORY[0x277CD5888];
    v72 = sub_2664E02C8();
    v43 = v42;
    v44 = swift_allocObject();
    v44[2] = sub_266365000;
    v44[3] = v30;
    v44[4] = v38;
    v44[5] = v40;
    v45 = v78;
    v44[6] = v77;
    v44[7] = v45;
    swift_bridgeObjectRetain_n();
    v71 = v10;
    v85(v80, v87, v10);
    swift_bridgeObjectRetain_n();
    v77 = v43;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_266365048(v83, v39);

    v46 = sub_2664DFE18();
    v47 = sub_2664E06E8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "LibraryProvider#mediaQuery...", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v49 = v71;
    v50 = v75;
    v75(v80, v71);
    v51 = v74;
    v85(v74, v87, v49);
    v52 = sub_2664DFE18();
    v53 = sub_2664E06E8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      _os_log_impl(&dword_26629C000, v52, v53, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v54, 8u);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = swift_allocObject();
    v56 = v50(v51, v49);
    v57 = (v89[14])(v56);
    *(v55 + 16) = v57;
    [v57 setShouldIncludeNonLibraryEntities_];
    [v57 setIgnoreSystemFilterPredicates_];
    v58 = v81;
    if (v81 != 1 && v81 | v79)
    {
      v69 = v88;

      v70 = v77;

      sub_266360910(v83, v58, v84, v79, v89, v55, v82, v69, v72, v70, 0, sub_266365038, v44);
    }

    else
    {
      v85(v76, v87, v49);
      v59 = sub_2664DFE18();
      v60 = sub_2664E06E8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_26629C000, v59, v60, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v61, 2u);
        MEMORY[0x266784AD0](v61, -1, -1);
      }

      v75(v76, v49);
      v62 = *(v55 + 16);
      sub_2663555CC(v62, v82, v88, v72, v77, 0, sub_266365038, v44);
    }

    sub_266354A00(v55);

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    return sub_266365090(v89);
  }

  else
  {
    v85(v15, v87, v10);
    v63 = sub_2664DFE18();
    v64 = sub_2664E06D8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = v29;
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26629C000, v63, v64, "LibraryProvider#existsInLibrary Incoming identifier is nil, returning false", v66, 2u);
      v67 = v66;
      v29 = v65;
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v29(v15, v10);
    return v77(0);
  }
}

uint64_t sub_2663554FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(_BOOL8), uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  sub_266364848(a7, a8, a9, a10, a1, 0, a6, a11, a12, a2, a3, a1, a4, a5);
}

uint64_t sub_2663555CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(_BOOL8), uint64_t a8)
{
  v68 = a8;
  v69 = a7;
  v63 = a6;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v67 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  v70[1] = a2;
  v70[2] = a3;

  v20 = sub_2664E0DB8();
  v64 = a4;
  v66 = a5;
  v21 = sub_2664E02A8();
  v22 = [objc_opt_self() predicateWithValue:v20 forProperty:v21];
  swift_unknownObjectRelease();

  [a1 addFilterPredicate_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v65 = v14[2];
  v65(v19, v23, v13);
  v24 = a1;
  v25 = v19;
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v62 = v13;
    v29 = v28;
    v30 = swift_slowAlloc();
    v61 = v23;
    v31 = v30;
    v70[0] = v30;
    *v29 = 136446210;
    v32 = [v24 description];
    v33 = sub_2664E02C8();
    v60 = v25;
    v34 = v14;
    v36 = v35;

    v37 = sub_2662A320C(v33, v36, v70);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_26629C000, v26, v27, "LibraryProvider#existsInLibrary existsByQuery using query: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v38 = v31;
    v23 = v61;
    MEMORY[0x266784AD0](v38, -1, -1);
    v39 = v29;
    v13 = v62;
    MEMORY[0x266784AD0](v39, -1, -1);

    v40 = v34[1];
    v40(v60, v13);
  }

  else
  {

    v40 = v14[1];
    v40(v25, v13);
  }

  v41 = v67;
  v42 = [v24 items];
  v43 = v66;
  if (v42 && ((v44 = v42, sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0), v45 = sub_2664E04A8(), v44, v45 >> 62) ? (v46 = sub_2664E0A68()) : (v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v46))
  {
    v47 = 1;
  }

  else
  {
    v48 = [v24 collections];
    if (v48)
    {
      v49 = v48;
      sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
      v50 = sub_2664E04A8();

      if (v50 >> 62)
      {
        v51 = sub_2664E0A68();
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = v51 != 0;
    }

    else
    {
      v47 = 0;
    }
  }

  v65(v41, v23, v13);

  v52 = sub_2664DFE18();
  v53 = sub_2664E06E8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v41;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v70[0] = v56;
    *v55 = 134349570;
    v57 = v64;
    *(v55 + 4) = v63;
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_2662A320C(v57, v43, v70);
    *(v55 + 22) = 1026;
    *(v55 + 24) = v47;
    _os_log_impl(&dword_26629C000, v52, v53, "LibraryProvider#existsInLibrary MPMediaGrouping %{public}ld and property %s exists: %{BOOL,public}d", v55, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x266784AD0](v56, -1, -1);
    MEMORY[0x266784AD0](v55, -1, -1);

    v58 = v54;
  }

  else
  {

    v58 = v41;
  }

  v40(v58, v13);
  return v69(v47);
}

uint64_t sub_266355B74(int a1, void (*a2)(void, uint64_t, uint64_t, uint64_t (*)(int a1), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v28 = a6;
  v29 = a1;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v29 & 1;
    _os_log_impl(&dword_26629C000, v17, v18, "LibraryProvider#existsInLibrary by MPMediaItemPropertyStoreID (title) %{BOOL,public}d", v19, 8u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v20 = *MEMORY[0x277CD58A0];
  v21 = sub_2664E02C8();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  *(v24 + 32) = v29 & 1;
  v25 = v28;
  *(v24 + 40) = v27;
  *(v24 + 48) = a5;
  *(v24 + 56) = v25;
  *(v24 + 64) = a7;

  a2(0, v21, v23, sub_26636750C, v24);
}

uint64_t sub_266355DF8(int a1, void (*a2)(void, void, void, void, void), uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a5;
  v36 = a4;
  v38 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a3;
    v22 = a6;
    v23 = a8;
    v24 = a2;
    v25 = a7;
    v26 = v21;
    *v21 = 67240192;
    *(v21 + 4) = v38 & 1;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#existsInLibrary by MPMediaItemPropertySubscriptionStoreItemID (title) %{BOOL,public}d", v21, 8u);
    v27 = v26;
    a7 = v25;
    a2 = v24;
    a8 = v23;
    a6 = v22;
    a3 = v35;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v28 = *MEMORY[0x277CD5890];
  v29 = sub_2664E02C8();
  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  *(v32 + 32) = v36 & 1;
  *(v32 + 33) = v38 & 1;
  *(v32 + 40) = v37;
  *(v32 + 48) = a6;
  *(v32 + 56) = a7;
  *(v32 + 64) = a8;

  a2(1, v29, v31, sub_266367520, v32);
}

uint64_t sub_2663560B8(int a1, void (*a2)(void, void, void, void, void), uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a4;
  v40 = a5;
  v41 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v38 = a9;
  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = a6;
    v23 = a3;
    v24 = a7;
    v25 = a2;
    v26 = a8;
    v27 = v22;
    *v22 = 67240192;
    *(v22 + 4) = v41 & 1;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#existsInLibrary by MPMediaItemPropertyStorePlaylistID (album) %{BOOL,public}d", v22, 8u);
    v28 = v27;
    a8 = v26;
    a2 = v25;
    a7 = v24;
    a3 = v23;
    a6 = v37;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v29 = *MEMORY[0x277CD5858];
  v30 = sub_2664E02C8();
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  *(v33 + 32) = v39 & 1;
  *(v33 + 33) = v40 & 1;
  *(v33 + 34) = v41 & 1;
  *(v33 + 40) = a6;
  *(v33 + 48) = a7;
  v34 = v38;
  *(v33 + 56) = a8;
  *(v33 + 64) = v34;

  a2(1, v30, v32, sub_2663675A0, v33);
}

id sub_266356388(char a1, void (*a2)(void, uint64_t, uint64_t, uint64_t (*)(int a1), uint64_t), uint64_t a3, char a4, char a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a7;
  v32 = a3;
  v30 = a6;
  v33 = a2;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67240192;
    *(v22 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#existsInLibrary by MPMediaItemPropertyStoreCloudAlbumID (album) %{BOOL,public}d", v22, 8u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  result = [objc_opt_self() representativePersistentIDPropertyForGroupingType_];
  if (result)
  {
    v24 = result;
    v25 = sub_2664E02C8();
    v27 = v26;

    v28 = swift_allocObject();
    *(v28 + 16) = a4 & 1;
    *(v28 + 17) = a5 & 1;
    *(v28 + 18) = v30 & 1;
    *(v28 + 19) = a1 & 1;
    *(v28 + 24) = v31;
    *(v28 + 32) = a8;
    *(v28 + 40) = a9;
    *(v28 + 48) = a10;

    v33(0, v25, v27, sub_26636761C, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266356644(int a1, int a2, int a3, int a4, int a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v43 = a8;
  v37 = a6;
  v40 = a4;
  v41 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = a9;
  v18 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v19 = v11[2];
  v19(v17, v18, v10);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v15;
    v23 = a7;
    v24 = v22;
    *v22 = 67240192;
    *(v22 + 4) = v44 & 1;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#existsInLibrary by representativePersistentIDProperty for .title %{BOOL,public}d", v22, 8u);
    v25 = v24;
    a7 = v23;
    v15 = v36;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = v11[1];
  v26(v17, v10);
  v27 = v38 | v39 | v40 | v41 | v44;
  v19(v15, v18, v10);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = a7;
    v33 = v31;
    v45 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_2662A320C(v37, v32, &v45);
    *(v30 + 12) = 1026;
    *(v30 + 14) = v27 & 1;
    _os_log_impl(&dword_26629C000, v28, v29, "LibraryProvider#existsInLibrary Incoming identifier: %{public}s, exists: %{BOOL,public}d", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v26(v15, v10);
  return v43(v27 & 1);
}

uint64_t LibraryProvider.addToLibrary(identifier:sharedUserIdInfo:completion:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a6;
  v32 = a7;
  v33 = a8;
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v41 = sub_2664DFE08();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v41);
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#addToLibrary...", v22, 2u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  sub_2664DFDE8();
  v24 = v41;
  (*(v8 + 16))(v11, v13, v41);
  v25 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = "libraryProviderAddToLibrary";
  *(v27 + 24) = 27;
  *(v27 + 32) = 2;
  (*(v8 + 32))(v27 + v25, v11, v24);
  v28 = (v27 + v26);
  v29 = v33;
  *v28 = v32;
  v28[1] = v29;

  sub_2664E0848();
  sub_2664DFDD8();

  sub_266366848(v34, v35, v39, v36, v37, v38, v40, sub_2663650C0, v27);

  return (*(v8 + 8))(v13, v24);
}

void sub_266356D50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v23 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "LibraryProvider#addToLibrary received library, adding item...", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  aBlock[4] = sub_2663674EC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663576BC;
  aBlock[3] = &block_descriptor_15;
  v20 = _Block_copy(aBlock);

  [v22 addStoreItem:v23 andAddTracksToCloudLibrary:1 withCompletion:v20];
  _Block_release(v20);
}

uint64_t sub_266356FD4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v63 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  if (a2)
  {
    v61 = a6;
    v62 = a5;
    swift_getErrorValue();
    sub_266369588(v64, v68);
    v59 = v68[0];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v57 = v11[2];
    v58 = v21;
    v57(v18, v21, v10);
    v22 = a2;

    v23 = a2;
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();

    v26 = os_log_type_enabled(v24, v25);
    v60 = v15;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v65 = v56;
      *v27 = 136315906;
      *(v27 + 4) = sub_2662A320C(v63, a4, &v65);
      v63 = v11;
      *(v27 + 12) = 2082;
      swift_getErrorValue();
      v28 = sub_2664E0DE8();
      v30 = sub_2662A320C(v28, v29, &v65);

      *(v27 + 14) = v30;
      *(v27 + 22) = 2082;
      v31 = sub_2664DE198();
      v32 = [v31 domain];

      v33 = sub_2664E02C8();
      v35 = v34;

      v36 = sub_2662A320C(v33, v35, &v65);

      *(v27 + 24) = v36;
      *(v27 + 32) = 2050;
      v37 = sub_2664DE198();
      v38 = [v37 code];

      *(v27 + 34) = v38;
      v11 = v63;

      _os_log_impl(&dword_26629C000, v24, v25, "LibraryProvider#addToLibrary Error while adding item (identifier=%s) to library: %{public}s %{public}s %{public}ld", v27, 0x2Au);
      v39 = v56;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v39, -1, -1);
      v40 = v27;
      v15 = v60;
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    else
    {
    }

    v47 = v11[1];
    v47(v18, v10);
    v57(v15, v58, v10);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06B8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v65 = v51;
      *v50 = 134218498;
      *(v50 + 4) = 8;
      *(v50 + 12) = 2048;
      v52 = v59;
      *(v50 + 14) = qword_2664E6F50[v59 ^ 0x80];
      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F5820, &v65);
      _os_log_impl(&dword_26629C000, v48, v49, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v50, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      v47(v60, v10);
      v53 = v62;
    }

    else
    {

      v47(v15, v10);
      v53 = v62;
      v52 = v59;
    }

    v65 = v52 | 0x800;
    v66 = 0xD000000000000015;
    v67 = 0x80000002664F5820;
    v53(&v65);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (v11[2])(v20, v41, v10);

    v42 = sub_2664DFE18();
    v43 = sub_2664E06E8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v11;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_2662A320C(v63, a4, &v65);
      _os_log_impl(&dword_26629C000, v42, v43, "LibraryProvider#addToLibrary The item with identifier=%s was added to library successfully.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);

      (v44[1])(v20, v10);
    }

    else
    {

      (v11[1])(v20, v10);
    }

    v65 = 0;
    v66 = 0;
    v67 = 0;
    return (a5)(&v65);
  }
}

uint64_t sub_2663576BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2664E04A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v40 = a8;
  v38 = a7;
  v39 = a2;
  v37 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = a3;
    v23 = a4;
    v24 = v9;
    v25 = a5;
    v26 = a6;
    v27 = v22;
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#searchForPlaylist...", v22, 2u);
    v28 = v27;
    a6 = v26;
    a5 = v25;
    v9 = v24;
    a4 = v23;
    a3 = v36;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  sub_2663608CC(v9, v41);
  v29 = swift_allocObject();
  *(v29 + 16) = v37;
  v30 = v38;
  *(v29 + 24) = v39;
  *(v29 + 32) = v30;
  *(v29 + 40) = v40;
  v31 = v41[7];
  *(v29 + 144) = v41[6];
  *(v29 + 160) = v31;
  *(v29 + 176) = v41[8];
  *(v29 + 192) = v42;
  v32 = v41[3];
  *(v29 + 80) = v41[2];
  *(v29 + 96) = v32;
  v33 = v41[5];
  *(v29 + 112) = v41[4];
  *(v29 + 128) = v33;
  v34 = v41[1];
  *(v29 + 48) = v41[0];
  *(v29 + 64) = v34;

  LibraryProvider.mediaQuery(with:for:shouldAllowNonLibraryContent:completion:)(a3, a4, a5, a6, 6, 0, sub_266367008, v29);
}

void sub_266357A50(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v104 = a6;
  v109 = a5;
  v110 = a4;
  v112 = a1;
  v8 = sub_2664DFE38();
  v118 = *(v8 - 1);
  v9 = v118[8];
  v10 = MEMORY[0x28223BE20](v8);
  v114 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v99 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v105 = &v99 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v103 = &v99 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v99 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v113 = &v99 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v99 - v24;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v106 = v21;
  v107 = v14;
  v115 = a2;
  v26 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v27 = v118[2];
  v28 = v26;
  v116 = v118 + 2;
  v117 = v27;
  v27(v25, v26, v8);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v8;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v119[0] = v33;
    *v32 = 136315138;
    v34 = v115;
    *(v32 + 4) = sub_2662A320C(v115, a3, v119);
    _os_log_impl(&dword_26629C000, v29, v30, "LibraryProvider#searchForPlaylist Do the query to find local playlists whose title contain the search keyword %s...", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    v35 = v32;
    v8 = v31;
    MEMORY[0x266784AD0](v35, -1, -1);

    v36 = v118[1];
    v36(v25, v31);
  }

  else
  {

    v36 = v118[1];
    v36(v25, v8);
    v34 = v115;
  }

  v37 = *MEMORY[0x277CD5930];
  v119[0] = v34;
  v119[1] = a3;
  v108 = a3;

  v38 = v37;
  v39 = sub_2664E0DB8();
  v40 = [objc_opt_self() predicateWithValue:v39 forProperty:v38 comparisonType:1];
  swift_unknownObjectRelease();

  v41 = v112;
  v111 = v40;
  [v112 addFilterPredicate_];
  v42 = v113;
  v43 = v28;
  v117(v113, v28, v8);
  v44 = v41;
  v45 = sub_2664DFE18();
  v46 = sub_2664E06E8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v112 = v8;
    v48 = v47;
    v49 = swift_slowAlloc();
    v119[0] = v49;
    *v48 = 136446210;
    v50 = v36;
    v51 = [v44 description];
    v52 = sub_2664E02C8();
    v102 = v44;
    v101 = v43;
    v53 = v42;
    v54 = v52;
    v56 = v55;

    v36 = v50;
    v57 = sub_2662A320C(v54, v56, v119);

    *(v48 + 4) = v57;
    _os_log_impl(&dword_26629C000, v45, v46, "LibraryProvider#searchForPlaylist localPlaylistsQuery query: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    v58 = v48;
    v8 = v112;
    MEMORY[0x266784AD0](v58, -1, -1);

    v59 = v53;
    v43 = v101;
    v44 = v102;
    v50(v59, v8);
  }

  else
  {

    v36(v42, v8);
  }

  v60 = v114;
  v61 = [v44 collections];
  if (!v61)
  {
    goto LABEL_34;
  }

  v62 = v61;
  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v63 = sub_2664E04A8();

  if (!(v63 >> 62))
  {
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  if (sub_2664E0A68() < 1)
  {
LABEL_33:

LABEL_34:
    v117(v60, v43, v8);
    v96 = sub_2664DFE18();
    v97 = sub_2664E06D8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_26629C000, v96, v97, "LibraryProvider#searchForPlaylist No playlists were returned from the query.", v98, 2u);
      MEMORY[0x266784AD0](v98, -1, -1);
    }

    v36(v60, v8);
    goto LABEL_37;
  }

LABEL_12:
  v100 = v36;
  if ((v63 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x266783B70](0, v63);
  }

  else
  {
    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v64 = *(v63 + 32);
  }

  v65 = v64;

  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66 || (v67 = v66, (v68 = [v66 name]) == 0))
  {

    v88 = v107;
    v117(v107, v43, v8);
    v89 = sub_2664DFE18();
    v90 = sub_2664E06D8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_26629C000, v89, v90, "LibraryProvider#searchForPlaylist Cast MPMediaItemCollection to MPMediaPlaylist failed.", v91, 2u);
      MEMORY[0x266784AD0](v91, -1, -1);
    }

    v100(v88, v8);
LABEL_37:
    v110(0);
    v65 = v111;
LABEL_38:

    return;
  }

  v69 = v68;
  v116 = sub_2664E02C8();
  v71 = v70;

  v72 = v106;
  v117(v106, v43, v8);
  v73 = v108;

  v74 = sub_2664DFE18();
  v75 = sub_2664E06E8();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v112 = v8;
    v77 = v76;
    v78 = swift_slowAlloc();
    v119[0] = v78;
    *v77 = 136315394;
    *(v77 + 4) = sub_2662A320C(v116, v71, v119);
    *(v77 + 12) = 2080;
    *(v77 + 14) = sub_2662A320C(v115, v108, v119);
    _os_log_impl(&dword_26629C000, v74, v75, "LibraryProvider#searchForPlaylist Found one playlist title=%s contains the keyword=%s, performing string distance check..", v77, 0x16u);
    swift_arrayDestroy();
    v79 = v78;
    v73 = v108;
    MEMORY[0x266784AD0](v79, -1, -1);
    v80 = v77;
    v8 = v112;
    MEMORY[0x266784AD0](v80, -1, -1);
  }

  v100(v72, v8);
  v81 = v116;
  v82 = sub_2664E0378() * 0.34;
  if (COERCE_INT(fabs(v82)) > 2139095039)
  {
    goto LABEL_41;
  }

  if (v82 <= -9.2234e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v82 < 9.2234e18)
  {
    v83 = sub_2663585E0(v82, v81, v71, v115, v73);

    if (v83)
    {
      v117(v105, v43, v8);
      v84 = v65;
      v85 = sub_2664DFE18();
      v86 = sub_2664E06E8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_26629C000, v85, v86, "LibraryProvider#searchForPlaylist passed distance check", v87, 2u);
        MEMORY[0x266784AD0](v87, -1, -1);
      }

      v100(v105, v8);
      v65 = v84;
      v110(v67);
    }

    else
    {
      v92 = v103;
      v117(v103, v43, v8);
      v93 = sub_2664DFE18();
      v94 = sub_2664E06D8();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_26629C000, v93, v94, "LibraryProvider#searchForPlaylist failed distance check", v95, 2u);
        MEMORY[0x266784AD0](v95, -1, -1);
      }

      v100(v92, v8);
      v110(0);
    }

    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_2663585E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = a4;
  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  swift_bridgeObjectRetain_n();

  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = a5;
    v33 = a2;
    v18 = v17;
    *v17 = 134349568;
    v40 = v33;
    v41 = a3;
    v38 = 32;
    v39 = 0xE100000000000000;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_2662D2EBC();
    v31 = v16;
    v32 = v9;
    sub_2664E0998();
    v19 = sub_2664E0378();

    *(v18 + 1) = v19;

    *(v18 + 6) = 2050;
    v20 = v30;
    v40 = v35;
    v41 = v30;
    v38 = 32;
    v39 = 0xE100000000000000;
    v36 = 0;
    v37 = 0xE000000000000000;
    v9 = v32;
    sub_2664E0998();
    v21 = sub_2664E0378();

    *(v18 + 14) = v21;

    *(v18 + 11) = 2050;
    *(v18 + 3) = v34;
    _os_log_impl(&dword_26629C000, v15, v31, "LibraryProvider#isStringDistanceSmallerThan first len: %{public}ld, second len: %{public}ld, threshold: %{public}ld", v18, 0x20u);
    v22 = v18;
    a2 = v33;
    MEMORY[0x266784AD0](v22, -1, -1);

    v23 = v20;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v23 = a5;
  }

  (*(v10 + 8))(v13, v9);
  v40 = a2;
  v41 = a3;
  v38 = 32;
  v39 = 0xE100000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_2662D2EBC();
  sub_2664E0998();
  v24 = sub_2664E0378();

  v40 = v35;
  v41 = v23;
  v38 = 32;
  v39 = 0xE100000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_2664E0998();
  v25 = sub_2664E0378();

  v27 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
  }

  else
  {
    if ((v27 & 0x8000000000000000) == 0)
    {
      return v27 <= v34;
    }

    v28 = __OFSUB__(0, v27);
    v27 = v25 - v24;
    if (!v28)
    {
      return v27 <= v34;
    }
  }

  __break(1u);
  return result;
}

uint64_t LibraryProvider.searchForPlaylist(with:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, void *), uint64_t a8)
{
  v9 = v8;
  v31 = a7;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = a2;
    v23 = a8;
    v24 = a1;
    v25 = a6;
    v26 = v9;
    v27 = v22;
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#searchForPlaylistWithIdentifier...", v22, 2u);
    v28 = v27;
    v9 = v26;
    a6 = v25;
    a1 = v24;
    a8 = v23;
    a2 = v30;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v15 + 8))(v18, v14);

  sub_266365168(v32, v33, v34, a6, 6, 0, v9, a1, a2, v31, a8);
}

void sub_266358C74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, void *), uint64_t a5)
{
  v86 = a5;
  v87 = a4;
  v92 = sub_2664DFE38();
  v8 = *(v92 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v92);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v82 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v82 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v84 = v16;
  v22 = v92;
  v23 = __swift_project_value_buffer(v92, qword_280F914F0);
  swift_beginAccess();
  v90 = v8[2];
  v91 = v8 + 2;
  v90(v21, v23, v22);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v23;
    v27 = v8;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v24, v25, "LibraryProvider#searchForPlaylistWithIdentifier Do the query to find local playlists with specified identifier...", v28, 2u);
    v29 = v28;
    v8 = v27;
    v23 = v26;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v32 = v8[1];
  v31 = (v8 + 1);
  v30 = v32;
  v33 = v92;
  v32(v21, v92);
  v34 = *MEMORY[0x277CD5908];
  v93[0] = a2;
  v93[1] = a3;

  v35 = v34;
  v36 = sub_2664E0DB8();
  v37 = [objc_opt_self() predicateWithValue:v36 forProperty:v35 comparisonType:0];
  swift_unknownObjectRelease();

  v89 = v37;
  [a1 addFilterPredicate_];
  v38 = v19;
  v90(v19, v23, v33);
  v39 = a1;
  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v93[0] = v83;
    *v42 = 136446210;
    v43 = v30;
    v44 = v31;
    v45 = [v39 description];
    v46 = sub_2664E02C8();
    v82 = v38;
    v47 = v46;
    v48 = v23;
    v50 = v49;

    v31 = v44;
    v30 = v43;
    v51 = sub_2662A320C(v47, v50, v93);
    v23 = v48;
    v52 = v39;
    v53 = v92;

    *(v42 + 4) = v51;
    _os_log_impl(&dword_26629C000, v40, v41, "LibraryProvider#searchForPlaylistWithIdentifier localPlaylistsQuery query: %{public}s", v42, 0xCu);
    v54 = v83;
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);

    v55 = v53;
    v39 = v52;
    v43(v82, v55);
  }

  else
  {

    v30(v19, v92);
  }

  v56 = v88;
  v57 = [v39 collections];
  if (!v57)
  {
    goto LABEL_24;
  }

  v58 = v57;
  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v59 = sub_2664E04A8();

  if (!(v59 >> 62))
  {
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  if (sub_2664E0A68() < 1)
  {
LABEL_23:

LABEL_24:
    v90(v56, v23, v92);
    v79 = sub_2664DFE18();
    v80 = sub_2664E06D8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_26629C000, v79, v80, "LibraryProvider#searchForPlaylist No playlists were returned from the query.", v81, 2u);
      MEMORY[0x266784AD0](v81, -1, -1);
    }

    v78 = v56;
    goto LABEL_27;
  }

LABEL_11:
  if ((v59 & 0xC000000000000001) != 0)
  {
    v60 = MEMORY[0x266783B70](0, v59);
LABEL_14:
    v61 = v60;

    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      v63 = v62;
      v64 = [v62 name];
      if (v64)
      {
        v88 = v31;
        v65 = v64;
        v66 = sub_2664E02C8();
        v68 = v67;

        v69 = v84;
        v90(v84, v23, v92);

        v70 = sub_2664DFE18();
        v71 = sub_2664E06E8();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v93[0] = v73;
          *v72 = 136315138;
          *(v72 + 4) = sub_2662A320C(v66, v68, v93);
          _os_log_impl(&dword_26629C000, v70, v71, "LibraryProvider#searchForPlaylist Found one playlist title=%s with the specified identifier", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v73);
          MEMORY[0x266784AD0](v73, -1, -1);
          MEMORY[0x266784AD0](v72, -1, -1);
        }

        v30(v69, v92);
        v74 = v61;
        v87(v66, v68, v63);

        v89 = v74;
        goto LABEL_28;
      }
    }

    v90(v85, v23, v92);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06D8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26629C000, v75, v76, "LibraryProvider#searchForPlaylistWithIdentifier Cast MPMediaItemCollection to MPMediaPlaylist failed.", v77, 2u);
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    v78 = v85;
LABEL_27:
    v30(v78, v92);
    v87(0, 0, 0);
LABEL_28:

    return;
  }

  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v60 = *(v59 + 32);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t LibraryProvider.addToPlaylist(adamID:to:sharedUserIdInfo:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v48 = a8;
  v47 = a7;
  v46 = a6;
  v44 = a5;
  v45 = a3;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v43 = a10;
  v42 = a9;
  v20 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();

  v23 = os_log_type_enabled(v21, v22);
  v49 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v11;
    v26 = v25;
    *&v50[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_2662A320C(a1, a2, v50);
    *(v24 + 12) = 2080;
    v27 = v45;
    *(v24 + 14) = sub_2662A320C(v45, v49, v50);
    _os_log_impl(&dword_26629C000, v21, v22, "LibraryProvider#addToPlaylist (adamId) Starting add the item with identifier %s to playlist %s.", v24, 0x16u);
    swift_arrayDestroy();
    v28 = v26;
    v11 = v41;
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);

    (*(v16 + 8))(v19, v15);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v27 = v45;
  }

  sub_2663608CC(v11, v50);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 16) = v42;
  *(v29 + 24) = v30;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  v31 = v50[7];
  *(v29 + 144) = v50[6];
  *(v29 + 160) = v31;
  *(v29 + 176) = v50[8];
  v32 = v51;
  v33 = v50[3];
  *(v29 + 80) = v50[2];
  *(v29 + 96) = v33;
  v34 = v50[5];
  *(v29 + 112) = v50[4];
  *(v29 + 128) = v34;
  v35 = v50[1];
  *(v29 + 48) = v50[0];
  *(v29 + 64) = v35;
  v36 = v44;
  *(v29 + 192) = v32;
  *(v29 + 200) = v36;
  v37 = v46;
  v38 = v47;
  *(v29 + 208) = v46;
  *(v29 + 216) = v38;
  v39 = v48;
  *(v29 + 224) = v48;

  sub_266365048(v36, v37);
  LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(v27, v49, v36, v37, v38, v39, sub_266367018, v29);
}

unsigned __int8 *sub_266359884(void *a1, void (*a2)(uint64_t, uint64_t, __int128 *), void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7, void *a8, void *a9, unint64_t a10)
{
  v111 = a7;
  v112 = a8;
  v113 = a6;
  v114 = a2;
  v14 = sub_2664DFE38();
  v115 = *(v14 - 8);
  v15 = *(v115 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v108 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v108 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v108 - v27;
  result = MEMORY[0x28223BE20](v26);
  v32 = &v108 - v31;
  if (!a1)
  {
    v113 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v42 = v115;
    v43 = *(v115 + 16);
    v43(v32, v41, v14);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06D8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "LibraryProvider#addToPlaylist (adamId) Empty playlistCandidate.", v46, 2u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v47 = v14;
    v48 = *(v42 + 8);
    v48(v32, v47);
    v43(v18, v41, v47);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06B8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v118 = v52;
      *v51 = 134218498;
      *(v51 + 4) = 8;
      *(v51 + 12) = 2048;
      *(v51 + 14) = 45;
      *(v51 + 22) = 2080;
      *(v51 + 24) = sub_2662A320C(0xD000000000000022, 0x80000002664F5760, &v118);
      _os_log_impl(&dword_26629C000, v49, v50, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v51, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266784AD0](v52, -1, -1);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    v48(v18, v47);
    v118 = xmmword_2664E6DC0;
    *&v119 = 0x80000002664F5760;
    v114(0, 0, &v118);
  }

  v33 = HIBYTE(a5) & 0xF;
  v34 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v35 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v110 = v30;
  if (!v35)
  {
    v83 = a1;
    goto LABEL_71;
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      *&v120 = a4;
      *(&v120 + 1) = a5 & 0xFFFFFFFFFFFFFFLL;
      if (a4 == 43)
      {
        if (v33)
        {
          if (--v33)
          {
            v37 = 0;
            v59 = &v120 + 1;
            while (1)
            {
              v60 = *v59 - 48;
              if (v60 > 9)
              {
                break;
              }

              v61 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v61 + v60;
              if (__OFADD__(v61, v60))
              {
                break;
              }

              ++v59;
              if (!--v33)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_107:
        __break(1u);
        return result;
      }

      if (a4 != 45)
      {
        if (v33)
        {
          v37 = 0;
          v64 = &v120;
          while (1)
          {
            v65 = *v64 - 48;
            if (v65 > 9)
            {
              break;
            }

            v66 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v66 + v65;
            if (__OFADD__(v66, v65))
            {
              break;
            }

            v64 = (v64 + 1);
            if (!--v33)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v33)
      {
        if (--v33)
        {
          v37 = 0;
          v53 = &v120 + 1;
          while (1)
          {
            v54 = *v53 - 48;
            if (v54 > 9)
            {
              break;
            }

            v55 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v55 - v54;
            if (__OFSUB__(v55, v54))
            {
              break;
            }

            ++v53;
            if (!--v33)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_2664E0B78();
      }

      v36 = *result;
      if (v36 == 43)
      {
        if (v34 >= 1)
        {
          v33 = v34 - 1;
          if (v34 != 1)
          {
            v37 = 0;
            if (result)
            {
              v56 = result + 1;
              while (1)
              {
                v57 = *v56 - 48;
                if (v57 > 9)
                {
                  goto LABEL_69;
                }

                v58 = 10 * v37;
                if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                {
                  goto LABEL_69;
                }

                v37 = v58 + v57;
                if (__OFADD__(v58, v57))
                {
                  goto LABEL_69;
                }

                ++v56;
                if (!--v33)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_106;
      }

      if (v36 != 45)
      {
        if (v34)
        {
          v37 = 0;
          if (result)
          {
            while (1)
            {
              v62 = *result - 48;
              if (v62 > 9)
              {
                goto LABEL_69;
              }

              v63 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_69;
              }

              v37 = v63 + v62;
              if (__OFADD__(v63, v62))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v34)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v37 = 0;
        LOBYTE(v33) = 1;
LABEL_70:
        LOBYTE(v118) = v33;
        v67 = v33;
        v68 = a1;
        if (v67)
        {
LABEL_71:
          v112 = a1;
          v113 = a3;
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v69 = __swift_project_value_buffer(v14, qword_280F914F0);
          swift_beginAccess();
          v70 = v14;
          v71 = v115;
          v72 = *(v115 + 16);
          v73 = v70;
          v72(v28, v69);
          v74 = sub_2664DFE18();
          v75 = sub_2664E06D8();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&dword_26629C000, v74, v75, "LibraryProvider#addToPlaylist (adamId) Error converting identifier from String to Int64", v76, 2u);
            v71 = v115;
            MEMORY[0x266784AD0](v76, -1, -1);
          }

          v77 = *(v71 + 8);
          v77(v28, v73);
          v78 = v110;
          (v72)(v110, v69, v73);
          v79 = sub_2664DFE18();
          v80 = sub_2664E06B8();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *&v118 = v82;
            *v81 = 134218498;
            *(v81 + 4) = 8;
            *(v81 + 12) = 2048;
            *(v81 + 14) = 22;
            *(v81 + 22) = 2080;
            *(v81 + 24) = sub_2662A320C(0xD000000000000023, 0x80000002664F5790, &v118);
            _os_log_impl(&dword_26629C000, v79, v80, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v81, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v82);
            MEMORY[0x266784AD0](v82, -1, -1);
            MEMORY[0x266784AD0](v81, -1, -1);
          }

          v77(v78, v73);
          v118 = xmmword_2664E6DB0;
          *&v119 = 0x80000002664F5790;
          v114(0, 0, &v118);
        }

        goto LABEL_81;
      }

      if (v34 >= 1)
      {
        v33 = v34 - 1;
        if (v34 != 1)
        {
          v37 = 0;
          if (result)
          {
            v38 = result + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                goto LABEL_69;
              }

              v40 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_69;
              }

              v37 = v40 - v39;
              if (__OFSUB__(v40, v39))
              {
                goto LABEL_69;
              }

              ++v38;
              if (!--v33)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v33) = 0;
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v84 = a1;

  v37 = sub_26640687C(a4, a5, 10);
  v86 = v85;

  if (v86)
  {
    goto LABEL_71;
  }

LABEL_81:
  if ([a1 isFavoriteSongsPlaylist])
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v87 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v88 = v115;
    (*(v115 + 16))(v25, v87, v14);
    v89 = sub_2664DFE18();
    v90 = sub_2664E06B8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = v14;
      v92 = a1;
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_26629C000, v89, v90, "LibraryProvider#addToPlaylist (adamId) target playlist is Favorite Songs playlist. Marking as favorite", v93, 2u);
      v94 = v93;
      a1 = v92;
      v14 = v91;
      MEMORY[0x266784AD0](v94, -1, -1);
    }

    (*(v88 + 8))(v25, v14);
    v95 = sub_26631C99C(v37, 1, 0, 0, 0);
    v96 = v113[9];
    v97 = v113[10];
    __swift_project_boxed_opaque_existential_1(v113 + 6, v96);
    (*(v97 + 8))(v95, 0, 2, v96, v97);
    if ([a1 valueForProperty_])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = 0u;
      v119 = 0u;
    }

    v103 = v114;
    v120 = v118;
    v121 = v119;
    if (*(&v119 + 1))
    {
      v104 = swift_dynamicCast();
      v105 = v104 == 0;
      if (v104)
      {
        v106 = v116;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        v107 = 0;
      }

      else
      {
        v107 = v117;
      }
    }

    else
    {
      sub_2662A9238(&v120, &unk_280074250, &unk_2664E3680);
      v106 = 0;
      v107 = 0;
    }

    v120 = 0uLL;
    *&v121 = 0;
    v103(v106, v107, &v120);
  }

  v109 = a9;
  v110 = a10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v98 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v115 + 16))(v22, v98, v14);
  v99 = sub_2664DFE18();
  v100 = sub_2664E06E8();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_26629C000, v99, v100, "LibraryProvider#addToPlaylist (adamId) getting controller...", v101, 2u);
    MEMORY[0x266784AD0](v101, -1, -1);
  }

  (*(v115 + 8))(v22, v14);
  v102 = a1;

  sub_2663639A8(v111, v112, v109, v110, v113, v37, v102, a4, a5, v114, a3);
}

uint64_t sub_26635A544(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a6;
  v30 = a2;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "LibraryProvider#addToPlaylist (adamId) retrieved controller, adding item...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = [a3 persistentID];
  v23 = swift_allocObject();
  v24 = v29;
  v23[2] = v28;
  v23[3] = a5;
  v23[4] = a3;
  v23[5] = v24;
  v23[6] = a7;
  v25 = *(v21 + 8);

  v26 = a3;

  v25(v30, v22, sub_266367664, v23, v20, v21);
}

uint64_t sub_26635A7B8(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v83 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v74 - v20;
  if (a1)
  {
    v75 = a2;
    v78 = a4;
    v81 = a6;
    v82 = a5;
    swift_getErrorValue();
    sub_266369588(v84, &v89);
    v22 = v89;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v24 = v13[2];
    v77 = v23;
    v76 = v24;
    v24(v19, v23, v12);
    v25 = a1;
    v26 = a1;

    v27 = sub_2664DFE18();
    v28 = sub_2664E06D8();

    v29 = os_log_type_enabled(v27, v28);
    v80 = v13;
    v79 = v22;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v89 = v74;
      *v30 = 136315906;
      *(v30 + 4) = sub_2662A320C(v75, a3, &v89);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v31 = sub_2664E0DE8();
      v33 = sub_2662A320C(v31, v32, &v89);

      *(v30 + 14) = v33;
      *(v30 + 22) = 2080;
      v34 = sub_2664DE198();
      v35 = [v34 domain];

      v36 = sub_2664E02C8();
      v38 = v37;

      v39 = sub_2662A320C(v36, v38, &v89);
      v13 = v80;

      *(v30 + 24) = v39;
      *(v30 + 32) = 2048;
      v40 = sub_2664DE198();
      v41 = [v40 code];

      *(v30 + 34) = v41;
      _os_log_impl(&dword_26629C000, v27, v28, "LibraryProvider#addToPlaylist (adamId) Error while adding item (identifier=%s) to playlist: description=%s domain=%s code=%ld", v30, 0x2Au);
      v42 = v74;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    else
    {
    }

    v54 = v13[1];
    v54(v19, v12);
    v55 = v83;
    if ([v78 valueForProperty_])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v89 = v87;
    v90 = v88;
    if (*(&v88 + 1))
    {
      v56 = swift_dynamicCast();
      if (v56)
      {
        v57 = v85;
      }

      else
      {
        v57 = 0;
      }

      if (v56)
      {
        v58 = v86;
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      sub_2662A9238(&v89, &unk_280074250, &unk_2664E3680);
      v57 = 0;
      v58 = 0;
    }

    v76(v55, v77, v12);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06B8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v89 = v62;
      *v61 = 134218498;
      *(v61 + 4) = 8;
      *(v61 + 12) = 2048;
      v63 = v79;
      *(v61 + 14) = qword_2664E6F50[v79 ^ 0x80];
      *(v61 + 22) = 2080;
      *(v61 + 24) = sub_2662A320C(0xD00000000000001DLL, 0x80000002664F57C0, &v89);
      _os_log_impl(&dword_26629C000, v59, v60, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v61, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x266784AD0](v62, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);

      v54(v83, v12);
    }

    else
    {

      v54(v55, v12);
      v63 = v79;
    }

    *&v89 = v63 | 0x800;
    *(&v89 + 1) = 0xD00000000000001DLL;
    *&v90 = 0x80000002664F57C0;
    v82(v57, v58, &v89);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (v13[2])(v21, v43, v12);
    v44 = a4;
    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v87 = v82;
      v83 = v47;
      *v47 = 136315138;
      v48 = [v44 name];
      if (v48)
      {
        LODWORD(v81) = v46;
        v49 = a5;
        v50 = v48;
        v51 = sub_2664E02C8();
        v53 = v52;

        a5 = v49;
        LOBYTE(v46) = v81;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      *&v89 = v51;
      *(&v89 + 1) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v64 = sub_2664E0318();
      v66 = sub_2662A320C(v64, v65, &v87);

      v67 = v83;
      *(v83 + 4) = v66;
      _os_log_impl(&dword_26629C000, v45, v46, "LibraryProvider#addToPlaylist (adamId) Successfully added item into playlist %s", v67, 0xCu);
      v68 = v82;
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x266784AD0](v68, -1, -1);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    (v13[1])(v21, v12);
    if ([v44 valueForProperty_])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v89 = v87;
    v90 = v88;
    if (*(&v88 + 1))
    {
      v69 = swift_dynamicCast();
      v70 = v69 == 0;
      if (v69)
      {
        v71 = v85;
      }

      else
      {
        v71 = 0;
      }

      if (v70)
      {
        v72 = 0;
      }

      else
      {
        v72 = v86;
      }
    }

    else
    {
      sub_2662A9238(&v89, &unk_280074250, &unk_2664E3680);
      v71 = 0;
      v72 = 0;
    }

    v89 = 0uLL;
    *&v90 = 0;
    (a5)(v71, v72, &v89);
  }
}

uint64_t LibraryProvider.addToPlaylist(ulid:item:to:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v50 = a4;
  v49 = a3;
  v48 = a2;
  v47 = a1;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v45 = a11;
  v44 = a10;
  v46 = a9;
  v22 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  (*(v18 + 16))(v21, v22, v17);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = v12;
    v30 = v25;
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "LibraryProvider#addToPlaylist (ulid)...", v25, 2u);
    v31 = v30;
    v12 = v29;
    a8 = v28;
    a7 = v27;
    a6 = v26;
    a5 = v43;
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  (*(v18 + 8))(v21, v17);
  sub_2663608CC(v12, v51);
  v32 = swift_allocObject();
  v33 = v51[7];
  *(v32 + 152) = v51[6];
  *(v32 + 168) = v33;
  *(v32 + 184) = v51[8];
  v34 = v51[3];
  *(v32 + 88) = v51[2];
  *(v32 + 104) = v34;
  v35 = v51[5];
  *(v32 + 120) = v51[4];
  *(v32 + 136) = v35;
  v36 = v51[1];
  *(v32 + 56) = v51[0];
  *(v32 + 16) = v44;
  v37 = v47;
  *(v32 + 24) = v45;
  *(v32 + 32) = v37;
  v38 = v49;
  *(v32 + 40) = v48;
  *(v32 + 48) = v38;
  v39 = v52;
  *(v32 + 72) = v36;
  *(v32 + 200) = v39;
  *(v32 + 208) = a6;
  *(v32 + 216) = a7;
  *(v32 + 224) = a8;
  v40 = v46;
  *(v32 + 232) = v46;

  sub_266365048(a6, a7);
  LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(v50, a5, a6, a7, a8, v40, sub_266367050, v32);
}

void sub_26635B470(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v71 = a6;
  v72 = a4;
  v73 = a2;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  if (a1)
  {
    v69 = a8;
    v70 = a7;
    v27 = qword_280F914E8;
    v66 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = a11;
    v68 = a10;
    v67 = a9;
    v29 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    (*(v17 + 16))(v24, v29, v16);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v65 = a11;
      v34 = a3;
      v35 = v33;
      *&v74[0] = v33;
      *v32 = 136315138;
      v36 = v72;
      *(v32 + 4) = sub_2662A320C(v72, a5, v74);
      _os_log_impl(&dword_26629C000, v30, v31, "LibraryProvider#addToPlaylist (ulid) Building query to find item with ulid %s...", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v37 = v35;
      a3 = v34;
      v28 = v65;
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);

      (*(v17 + 8))(v24, v16);
    }

    else
    {

      (*(v17 + 8))(v24, v16);
      v36 = v72;
    }

    v50 = sub_26637C354(v71);
    if (v51)
    {
      v52 = 0;
    }

    else
    {
      v52 = v50;
    }

    sub_2663608CC(v70, v74);
    v53 = swift_allocObject();
    v54 = v74[7];
    *(v53 + 152) = v74[6];
    *(v53 + 168) = v54;
    *(v53 + 184) = v74[8];
    v55 = v74[3];
    *(v53 + 88) = v74[2];
    *(v53 + 104) = v55;
    v56 = v74[5];
    *(v53 + 120) = v74[4];
    *(v53 + 136) = v56;
    v57 = v74[1];
    *(v53 + 56) = v74[0];
    *(v53 + 16) = v36;
    *(v53 + 24) = a5;
    v58 = v73;
    *(v53 + 32) = v52;
    *(v53 + 40) = v58;
    *(v53 + 48) = a3;
    v59 = v75;
    *(v53 + 72) = v57;
    v60 = v69;
    *(v53 + 200) = v59;
    *(v53 + 208) = v60;
    v61 = v67;
    v62 = v68;
    *(v53 + 216) = v67;
    *(v53 + 224) = v62;
    v63 = v66;
    *(v53 + 232) = v28;
    *(v53 + 240) = v63;
    v64 = v63;

    sub_266365048(v60, v61);
    LibraryProvider.mediaQuery(with:for:shouldAllowNonLibraryContent:completion:)(v60, v61, v62, v28, v52, 1, sub_266367360, v53);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v39 = *(v17 + 16);
    v39(v26, v38, v16);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v72 = a3;
      v43 = v42;
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "LibraryProvider#addToPlaylist (ulid) Empty playlistCandidate.", v42, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v44 = *(v17 + 8);
    v44(v26, v16);
    v39(v21, v38, v16);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06B8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v44;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v76 = v49;
      *v48 = 134218498;
      *(v48 + 4) = 8;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 45;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_2662A320C(0xD000000000000020, 0x80000002664F56F0, &v76);
      _os_log_impl(&dword_26629C000, v45, v46, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v48, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);

      v47(v21, v16);
    }

    else
    {

      v44(v21, v16);
    }

    v76 = xmmword_2664E6DD0;
    v77 = 0x80000002664F56F0;
    v73(&v76);
  }
}

void sub_26635BB2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, void *a8, unint64_t a9, void *a10, unint64_t a11, void *a12)
{
  v104 = a8;
  v105 = a7;
  v109 = a5;
  v17 = sub_2664DFE38();
  v115 = *(v17 - 8);
  v18 = *(v115 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v111 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v110 = &v102 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v103 = &v102 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v102 = &v102 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v106 = &v102 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v102 - v29;
  v31 = MEMORY[0x277D837D0];
  v118[3] = MEMORY[0x277D837D0];
  v118[0] = a2;
  v118[1] = a3;
  v32 = objc_opt_self();

  v33 = [v32 ULIDPropertyForGroupingType_];
  if (!v33)
  {
    goto LABEL_42;
  }

  v34 = v33;
  v35 = __swift_project_boxed_opaque_existential_1(v118, v31);
  v36 = *(v31 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39);
  v40 = sub_2664E0D78();
  (*(v36 + 8))(v39, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  v41 = [objc_opt_self() predicateWithValue:v40 forProperty:v34];
  swift_unknownObjectRelease();

  [a1 addFilterPredicate_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v43 = v115;
  v44 = *(v115 + 16);
  v112 = v42;
  v113 = v44;
  v114 = v115 + 16;
  v44(v30, v42, v17);
  v45 = a1;
  v46 = sub_2664DFE18();
  v47 = v17;
  v48 = sub_2664E06E8();

  v49 = os_log_type_enabled(v46, v48);
  v107 = v41;
  v108 = a6;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v116 = v51;
    *v50 = 136446210;
    v52 = [v45 description];
    v53 = sub_2664E02C8();
    v55 = v54;

    v56 = sub_2662A320C(v53, v55, &v116);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_26629C000, v46, v48, "LibraryProvider#addToPlaylist (ulid) built query: %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v57 = v51;
    v43 = v115;
    MEMORY[0x266784AD0](v57, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);
  }

  v58 = *(v43 + 8);
  v58(v30, v47);
  v59 = v47;
  v60 = [v45 collections];
  v61 = v111;
  v62 = v112;
  v63 = v110;
  if (!v60)
  {
    goto LABEL_31;
  }

  v64 = v60;
  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v65 = sub_2664E04A8();

  if (!(v65 >> 62))
  {
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  if (sub_2664E0A68() < 1)
  {
LABEL_30:

LABEL_31:
    v113(v63, v62, v59);
    v95 = sub_2664DFE18();
    v96 = sub_2664E06D8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_26629C000, v95, v96, "LibraryProvider#addToPlaylist (ulid) No item were found.", v97, 2u);
      MEMORY[0x266784AD0](v97, -1, -1);
    }

    v58(v63, v59);
    v113(v61, v62, v59);
    v98 = sub_2664DFE18();
    v99 = sub_2664E06B8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&v116 = v101;
      *v100 = 134218498;
      *(v100 + 4) = 8;
      *(v100 + 12) = 2048;
      *(v100 + 14) = 18;
      *(v100 + 22) = 2080;
      *(v100 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664F5720, &v116);
      _os_log_impl(&dword_26629C000, v98, v99, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v100, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x266784AD0](v101, -1, -1);
      MEMORY[0x266784AD0](v100, -1, -1);
    }

    v58(v61, v59);
    v116 = xmmword_2664E6DF0;
    v117 = 0x80000002664F5720;
    v109(&v116);

    goto LABEL_36;
  }

LABEL_9:
  if ((v65 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x266783B70](0, v65);
  }

  else
  {
    if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_40:
      v84 = v59;
      v85 = MEMORY[0x266783B70](0, v65);
      goto LABEL_26;
    }

    v66 = *(v65 + 32);
  }

  v67 = v66;
  v68 = [v66 items];

  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v69 = sub_2664E04A8();

  if (v69 >> 62)
  {
    v70 = sub_2664E0A68();
  }

  else
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v70 < 1)
  {

    v72 = v102;
    v113(v102, v62, v59);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06D8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_26629C000, v73, v74, "LibraryProvider#addToPlaylist (ulid) Result MPMediaCollection has no items.", v75, 2u);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v58(v72, v59);
    v76 = v103;
    v113(v103, v62, v59);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06B8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v116 = v80;
      *v79 = 134218498;
      *(v79 + 4) = 8;
      *(v79 + 12) = 2048;
      *(v79 + 14) = 15;
      *(v79 + 22) = 2080;
      *(v79 + 24) = sub_2662A320C(0x5F736D6574496F4ELL, 0xEC00000044494C55, &v116);
      _os_log_impl(&dword_26629C000, v77, v78, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v79, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      MEMORY[0x266784AD0](v79, -1, -1);
    }

    v58(v76, v59);
    v81 = v107;
    v116 = xmmword_2664E6DE0;
    v117 = 0xEC00000044494C55;
    v109(&v116);

LABEL_36:

    return;
  }

  if ((v65 & 0xC000000000000001) != 0)
  {
    v71 = MEMORY[0x266783B70](0, v65);
  }

  else
  {
    v71 = *(v65 + 32);
  }

  v82 = v71;

  v83 = [v82 items];

  v65 = sub_2664E04A8();
  if ((v65 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v84 = v59;
  v85 = *(v65 + 32);
LABEL_26:
  v86 = v85;

  v87 = v106;
  v113(v106, v112, v84);
  v88 = sub_2664DFE18();
  v89 = sub_2664E06E8();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_26629C000, v88, v89, "LibraryProvider#addToPlaylist (ulid) getting controller...", v90, 2u);
    v91 = v90;
    v87 = v106;
    MEMORY[0x266784AD0](v91, -1, -1);
  }

  v58(v87, v84);
  v92 = v86;
  v93 = v108;

  v94 = a12;
  sub_266363FB8(v104, a9, a10, a11, v105, v92, v109, v93, v94);
}

uint64_t sub_26635C6B8(void *a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v43 = a1;
  v44 = a5;
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v16 = v6[2];
  v16(v14, v15, v5);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "LibraryProvider#addToPlaylist (ulid) received controller, adding...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v20 = v6[1];
  v20(v14, v5);
  if ([v46 valueForProperty_])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52 = v50;
  v53 = v51;
  if (*(&v51 + 1))
  {
    if (swift_dynamicCast())
    {
      v21 = v49;
      v22 = v43[3];
      v23 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v22);
      v24 = v44;
      v25 = [v44 persistentID];
      v26 = swift_allocObject();
      v27 = v47;
      v26[2] = v21;
      v26[3] = v27;
      v26[4] = v48;
      v26[5] = v24;
      v28 = *(v23 + 16);

      v29 = v24;
      v28(v21, v25, sub_2663673B0, v26, v22, v23);
    }
  }

  else
  {
    sub_2662A9238(&v52, &unk_280074250, &unk_2664E3680);
  }

  v16(v12, v15, v5);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06D8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26629C000, v31, v32, "LibraryProvider#addToPlaylist (ulid) Cast value to UInt64 failed.", v33, 2u);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v20(v12, v5);
  v34 = v45;
  v16(v45, v15, v5);
  v35 = sub_2664DFE18();
  v36 = v20;
  v37 = sub_2664E06B8();
  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v34;
    v40 = swift_slowAlloc();
    *&v52 = v40;
    *v38 = 134218498;
    *(v38 + 4) = 8;
    *(v38 + 12) = 2048;
    *(v38 + 14) = 22;
    *(v38 + 22) = 2080;
    *(v38 + 24) = sub_2662A320C(0x494C555F74736143, 0xE900000000000044, &v52);
    _os_log_impl(&dword_26629C000, v35, v37, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);

    v41 = v39;
  }

  else
  {

    v41 = v34;
  }

  v36(v41, v5);
  v52 = xmmword_2664E6E00;
  *&v53 = 0xE900000000000044;
  v47(&v52);
}

uint64_t sub_26635CBF4(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v73 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v65[-v18];
  if (a1)
  {
    v69 = a2;
    v72 = a4;
    swift_getErrorValue();
    sub_266369588(v74, v79);
    v20 = v79[0];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v70 = v10[2];
    v70(v17, v21, v9);
    v22 = a1;
    v23 = a1;
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    v26 = os_log_type_enabled(v24, v25);
    v71 = v20;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v76 = v67;
      *v27 = 134218754;
      *(v27 + 4) = v69;
      v68 = v21;
      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v66 = v25;
      v28 = sub_2664E0DE8();
      v30 = sub_2662A320C(v28, v29, &v76);
      v69 = v9;
      v31 = v14;
      v32 = v10;
      v33 = v30;

      *(v27 + 14) = v33;
      *(v27 + 22) = 2080;
      v34 = sub_2664DE198();
      v35 = [v34 domain];

      v36 = sub_2664E02C8();
      v38 = v37;

      v10 = v32;
      v14 = v31;
      v9 = v69;
      v39 = sub_2662A320C(v36, v38, &v76);

      *(v27 + 24) = v39;
      *(v27 + 32) = 2048;
      v40 = sub_2664DE198();
      v41 = [v40 code];

      *(v27 + 34) = v41;
      v21 = v68;

      _os_log_impl(&dword_26629C000, v24, v66, "LibraryProvider#addToPlaylist (ulid) Error while adding item (sagaID=%llu) to playlist: description=%s domain=%s code=%ld", v27, 0x2Au);
      v42 = v67;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    else
    {
    }

    v54 = v10[1];
    v54(v17, v9);
    v70(v14, v21, v9);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06B8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v14;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v76 = v59;
      *v58 = 134218498;
      *(v58 + 4) = 8;
      *(v58 + 12) = 2048;
      v60 = v71;
      *(v58 + 14) = qword_2664E6F50[v71 ^ 0x80];
      *(v58 + 22) = 2080;
      *(v58 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F5740, &v76);
      _os_log_impl(&dword_26629C000, v55, v56, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v58, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      v54(v57, v9);
    }

    else
    {

      v54(v14, v9);
      v60 = v71;
    }

    v76 = v60 | 0x800;
    v77 = 0xD00000000000001BLL;
    v78 = 0x80000002664F5740;
    v73(&v76);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (v10[2])(v19, v43, v9);
    v44 = a5;
    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75 = v48;
      *v47 = 136315138;
      v49 = [v44 name];
      if (v49)
      {
        v72 = v47;
        v50 = v49;
        v51 = sub_2664E02C8();
        v53 = v52;

        v47 = v72;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v76 = v51;
      v77 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v62 = sub_2664E0318();
      v64 = sub_2662A320C(v62, v63, &v75);

      *(v47 + 4) = v64;
      _os_log_impl(&dword_26629C000, v45, v46, "LibraryProvider#addToPlaylist (ulid) Successfully added item into playlist %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    (v10[1])(v19, v9);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    return (v73)(&v76);
  }
}

void sub_26635D398(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v74 = a8;
  v75 = a5;
  v76 = a7;
  v77 = a2;
  v78 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v69 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v69 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v69 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v69 - v29;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v46 = v15[2];
    v46(v30, v45, v14);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "LibraryProvider#addToPlaylist (siriSyncID) Empty playlistCandidate.", v49, 2u);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v50 = v15[1];
    v50(v30, v14);
    v46(v19, v45, v14);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06B8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v79 = v54;
      *v53 = 134218498;
      *(v53 + 4) = 8;
      *(v53 + 12) = 2048;
      *(v53 + 14) = 45;
      *(v53 + 22) = 2080;
      *(v53 + 24) = sub_2662A320C(0xD000000000000026, 0x80000002664F5660, &v79);
      _os_log_impl(&dword_26629C000, v51, v52, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v53, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v50(v19, v14);
    v79 = xmmword_2664E6E20;
    v80 = 0x80000002664F5660;
    v77(&v79);
    goto LABEL_17;
  }

  v31 = a1;
  v32 = sub_26637C354(a4);
  if (v33)
  {
    v73 = v31;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v35 = v15[2];
    v35(v28, v34, v14);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "LocalPlaybackHandler#addToPlaylist (siriSyncID) Failed to get grouping for scheme", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v39 = v15[1];
    v39(v28, v14);
    v35(v22, v34, v14);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06B8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v79 = v43;
      *v42 = 134218498;
      *(v42 + 4) = 8;
      *(v42 + 12) = 2048;
      *(v42 + 14) = 11;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F5690, &v79);
      _os_log_impl(&dword_26629C000, v40, v41, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v42, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v39(v22, v14);
    v44 = v73;
    v79 = xmmword_2664E6E10;
    v80 = 0x80000002664F5690;
    v77(&v79);

LABEL_17:

    return;
  }

  v55 = v32;
  v56 = a11;
  v71 = a9;
  v72 = a10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (v15[2])(v25, v57, v14);

  v58 = sub_2664DFE18();
  v59 = sub_2664E06E8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v70 = a11;
    v61 = v60;
    v62 = swift_slowAlloc();
    v73 = v31;
    v63 = v62;
    *&v79 = v62;
    *v61 = 136315394;
    v64 = v75;
    *(v61 + 4) = sub_2662A320C(v75, a6, &v79);
    *(v61 + 12) = 2048;
    *(v61 + 14) = v55;
    _os_log_impl(&dword_26629C000, v58, v59, "LibraryProvider#addToPlaylist (siriSyncID) Building query to find item with siriSyncID %s grouping %ld...", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v65 = v63;
    v31 = v73;
    MEMORY[0x266784AD0](v65, -1, -1);
    v66 = v61;
    v56 = v70;
    MEMORY[0x266784AD0](v66, -1, -1);

    (v15[1])(v25, v14);
  }

  else
  {

    (v15[1])(v25, v14);
    v64 = v75;
  }

  v67 = v31;

  v68 = v78;

  sub_2663658E0(v74, v71, v72, v56, v55, 1, v76, v64, a6, v77, v68, v55, v67);
}

void sub_26635DBA4(void *a1, uint64_t a2, void *a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6, void *a7)
{
  v124 = a7;
  v132 = a5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v133 = v12;
  v134 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v130 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v122 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v127 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v125 = &v122 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v126 = &v122 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v128 = &v122 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v122 - v28;
  v30 = [a1 mediaLibrary];
  if (!v30)
  {
    __break(1u);
    return;
  }

  v31 = v30;
  v32._countAndFlagsBits = a2;
  v32._object = a3;
  v139 = MPMediaLibrary.persistentID(fromSiriSyncID:)(v32);
  value = v139.value;
  is_nil = v139.is_nil;

  v131 = a4;
  if (is_nil)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v133;
    v36 = __swift_project_value_buffer(v133, qword_280F914F0);
    swift_beginAccess();
    v37 = v134;
    v38 = *(v134 + 16);
    v38(v19, v36, v35);

    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v137 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_2662A320C(a2, a3, &v137);
      _os_log_impl(&dword_26629C000, v39, v40, "LibraryProvider#addToPlaylist (siriSyncID) received nil persistentID when converting siriSyncID: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v43 = v42;
      v35 = v133;
      MEMORY[0x266784AD0](v43, -1, -1);
      v44 = v41;
      v37 = v134;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v45 = *(v37 + 8);
    v45(v19, v35);
    v46 = v130;
    v38(v130, v36, v35);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06B8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v137 = v50;
      *v49 = 134218498;
      *(v49 + 4) = 8;
      *(v49 + 12) = 2048;
      *(v49 + 14) = 18;
      *(v49 + 22) = 2080;
      *(v49 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F56B0, &v137);
      _os_log_impl(&dword_26629C000, v47, v48, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v49, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v45(v46, v35);
    v137 = xmmword_2664E6E40;
    v138 = 0x80000002664F56B0;
    v131(&v137);
LABEL_38:

    return;
  }

  v51 = MEMORY[0x277D84D38];
  v136[3] = MEMORY[0x277D84D38];
  v136[0] = value;
  v52 = [objc_opt_self() persistentIDPropertyForGroupingType_];
  if (!v52)
  {
    sub_2664E02C8();
    v52 = sub_2664E02A8();
  }

  v53 = __swift_project_boxed_opaque_existential_1(v136, v51);
  v54 = *(v51 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v122 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 16))(v57);
  v58 = sub_2664E0D78();
  (*(v54 + 8))(v57, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v136);
  v59 = [objc_opt_self() predicateWithValue:v58 forProperty:v52];
  swift_unknownObjectRelease();

  v123 = v59;
  [a1 addFilterPredicate_];
  v60 = v133;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v61 = __swift_project_value_buffer(v60, qword_280F914F0);
  swift_beginAccess();
  v62 = v134;
  v129 = *(v134 + 16);
  v130 = v61;
  v129(v29, v61, v60);
  v63 = a1;
  v64 = sub_2664DFE18();
  v65 = sub_2664E06E8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v137 = v67;
    *v66 = 136446210;
    v68 = [v63 description];
    v69 = sub_2664E02C8();
    v71 = v70;

    v72 = v69;
    v62 = v134;
    v73 = sub_2662A320C(v72, v71, &v137);
    v60 = v133;

    *(v66 + 4) = v73;
    _os_log_impl(&dword_26629C000, v64, v65, "LibraryProvider#addToPlaylist (siriSyncID) query: %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x266784AD0](v67, -1, -1);
    MEMORY[0x266784AD0](v66, -1, -1);
  }

  v74 = *(v62 + 8);
  v74(v29, v60);
  v75 = v128;
  v129(v128, v130, v60);
  v76 = v63;
  v77 = sub_2664DFE18();
  v78 = sub_2664E06E8();

  if (os_log_type_enabled(v77, v78))
  {
    v122 = v74;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&v137 = v80;
    *v79 = 136315394;
    v81 = [v76 items];
    if (v81)
    {
      v82 = v81;
      sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
      v83 = sub_2664E04A8();
    }

    else
    {
      v83 = 0;
    }

    v135 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D60, &qword_2664E6F28);
    v86 = sub_2664E0318();
    v88 = sub_2662A320C(v86, v87, &v137);

    *(v79 + 4) = v88;
    *(v79 + 12) = 2080;
    v89 = [v76 collections];
    if (v89)
    {
      v90 = v89;
      sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
      v91 = sub_2664E04A8();
    }

    else
    {
      v91 = 0;
    }

    v135 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D68, &unk_2664E6F30);
    v92 = sub_2664E0318();
    v94 = sub_2662A320C(v92, v93, &v137);

    *(v79 + 14) = v94;
    _os_log_impl(&dword_26629C000, v77, v78, "LibraryProvider#addToPlaylist (siriSyncID) queryItems: %s queryCollections: %s...", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v80, -1, -1);
    MEMORY[0x266784AD0](v79, -1, -1);

    v60 = v133;
    v84 = v128;
    v85 = v133;
    v74 = v122;
  }

  else
  {

    v84 = v75;
    v85 = v60;
  }

  v74(v84, v85);
  v95 = [v76 items];
  v96 = v127;
  if (!v95)
  {
LABEL_33:
    v111 = v125;
    v129(v125, v130, v60);
    v112 = sub_2664DFE18();
    v113 = sub_2664E06D8();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_26629C000, v112, v113, "LibraryProvider#addToPlaylist (siriSyncID) No item were found.", v114, 2u);
      MEMORY[0x266784AD0](v114, -1, -1);
    }

    v74(v111, v60);
    v129(v96, v130, v60);
    v115 = sub_2664DFE18();
    v116 = sub_2664E06B8();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v137 = v118;
      *v117 = 134218498;
      *(v117 + 4) = 8;
      *(v117 + 12) = 2048;
      *(v117 + 14) = 18;
      *(v117 + 22) = 2080;
      *(v117 + 24) = sub_2662A320C(0xD000000000000017, 0x80000002664F56D0, &v137);
      _os_log_impl(&dword_26629C000, v115, v116, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v117, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      MEMORY[0x266784AD0](v118, -1, -1);
      MEMORY[0x266784AD0](v117, -1, -1);
    }

    v74(v96, v60);
    v137 = xmmword_2664E6E30;
    v138 = 0x80000002664F56D0;
    v131(&v137);

    goto LABEL_38;
  }

  v97 = v95;
  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v98 = sub_2664E04A8();
  if (v98 >> 62)
  {
    v99 = sub_2664E0A68();
  }

  else
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v126;

  if (v99 < 1)
  {

    goto LABEL_33;
  }

  v129(v100, v130, v60);
  v101 = v124;
  v102 = sub_2664DFE18();
  v103 = sub_2664E06E8();

  if (os_log_type_enabled(v102, v103))
  {
    v122 = v74;
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v135 = v105;
    *v104 = 136315138;
    v106 = [v101 name];
    if (v106)
    {
      v107 = v106;
      v108 = sub_2664E02C8();
      v110 = v109;
    }

    else
    {
      v108 = 0;
      v110 = 0;
    }

    *&v137 = v108;
    *(&v137 + 1) = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v119 = sub_2664E0318();
    v121 = sub_2662A320C(v119, v120, &v135);

    *(v104 + 4) = v121;
    _os_log_impl(&dword_26629C000, v102, v103, "LibraryProvider#addToPlaylist (siriSyncID) Successfully added item(s) into playlist %s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    MEMORY[0x266784AD0](v105, -1, -1);
    MEMORY[0x266784AD0](v104, -1, -1);

    v122(v100, v133);
  }

  else
  {

    v74(v100, v60);
  }

  [v101 addMediaItems:v97 completionHandler:0];

  v137 = 0uLL;
  v138 = 0;
  v131(&v137);
}

uint64_t sub_26635EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, const char *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v54 = a4;
  v52 = a3;
  v53 = a2;
  v51 = a1;
  v55 = a14;
  v49 = a13;
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v48 = a11;
  v47 = a10;
  v50 = a9;
  v25 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  (*(v21 + 16))(v24, v25, v20);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v45 = a12;
    v28 = swift_slowAlloc();
    v46 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v32 = v15;
    v33 = v28;
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, v45, v28, 2u);
    v34 = v33;
    v15 = v32;
    a8 = v31;
    a7 = v30;
    a6 = v29;
    a5 = v46;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  (*(v21 + 8))(v24, v20);
  sub_2663608CC(v15, v56);
  v35 = swift_allocObject();
  v36 = v56[7];
  *(v35 + 152) = v56[6];
  *(v35 + 168) = v36;
  *(v35 + 184) = v56[8];
  v37 = v56[3];
  *(v35 + 88) = v56[2];
  *(v35 + 104) = v37;
  v38 = v56[5];
  *(v35 + 120) = v56[4];
  *(v35 + 136) = v38;
  v39 = v56[1];
  *(v35 + 56) = v56[0];
  *(v35 + 16) = v47;
  v40 = v52;
  *(v35 + 24) = v48;
  *(v35 + 32) = v40;
  v41 = v53;
  *(v35 + 40) = v51;
  *(v35 + 48) = v41;
  v42 = v57;
  *(v35 + 72) = v39;
  *(v35 + 200) = v42;
  *(v35 + 208) = a6;
  *(v35 + 216) = a7;
  *(v35 + 224) = a8;
  v43 = v50;
  *(v35 + 232) = v50;

  sub_266365048(a6, a7);
  LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(v54, a5, a6, a7, a8, v43, v55, v35);
}

void sub_26635EDC0(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v74 = a8;
  v75 = a5;
  v76 = a7;
  v77 = a2;
  v78 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v69 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v69 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v69 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v69 - v29;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v46 = v15[2];
    v46(v30, v45, v14);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "LibraryProvider#addToPlaylist (deviceID) Empty playlistCandidate.", v49, 2u);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v50 = v15[1];
    v50(v30, v14);
    v46(v19, v45, v14);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06B8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v79 = v54;
      *v53 = 134218498;
      *(v53 + 4) = 8;
      *(v53 + 12) = 2048;
      *(v53 + 14) = 45;
      *(v53 + 22) = 2080;
      *(v53 + 24) = sub_2662A320C(0xD000000000000024, 0x80000002664F55F0, &v79);
      _os_log_impl(&dword_26629C000, v51, v52, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v53, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v50(v19, v14);
    v79 = xmmword_2664E6E60;
    v80 = 0x80000002664F55F0;
    v77(&v79);
    goto LABEL_17;
  }

  v31 = a1;
  v32 = sub_26637C354(a4);
  if (v33)
  {
    v73 = v31;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v35 = v15[2];
    v35(v28, v34, v14);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "LocalPlaybackHandler#addToPlaylist (deviceID) Failed to get grouping for scheme", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v39 = v15[1];
    v39(v28, v14);
    v35(v22, v34, v14);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06B8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v79 = v43;
      *v42 = 134218498;
      *(v42 + 4) = 8;
      *(v42 + 12) = 2048;
      *(v42 + 14) = 11;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_2662A320C(0xD000000000000013, 0x80000002664F5620, &v79);
      _os_log_impl(&dword_26629C000, v40, v41, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v42, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v39(v22, v14);
    v44 = v73;
    v79 = xmmword_2664E6E50;
    v80 = 0x80000002664F5620;
    v77(&v79);

LABEL_17:

    return;
  }

  v55 = v32;
  v56 = a11;
  v71 = a9;
  v72 = a10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (v15[2])(v25, v57, v14);

  v58 = sub_2664DFE18();
  v59 = sub_2664E06E8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v70 = a11;
    v61 = v60;
    v62 = swift_slowAlloc();
    v73 = v31;
    v63 = v62;
    *&v79 = v62;
    *v61 = 136315394;
    v64 = v75;
    *(v61 + 4) = sub_2662A320C(v75, a6, &v79);
    *(v61 + 12) = 2048;
    *(v61 + 14) = v55;
    _os_log_impl(&dword_26629C000, v58, v59, "LibraryProvider#addToPlaylist (deviceID) Building query to find item with deviceID %s grouping %ld...", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v65 = v63;
    v31 = v73;
    MEMORY[0x266784AD0](v65, -1, -1);
    v66 = v61;
    v56 = v70;
    MEMORY[0x266784AD0](v66, -1, -1);

    (v15[1])(v25, v14);
  }

  else
  {

    (v15[1])(v25, v14);
    v64 = v75;
  }

  v67 = v31;

  v68 = v78;

  sub_266366098(v74, v71, v72, v56, v55, 1, v76, v64, a6, v55, v77, v68, v67);
}

void sub_26635F5CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, void *a7)
{
  v101 = a7;
  v107 = a6;
  v108 = a5;
  v11 = sub_2664DFE38();
  v110 = *(v11 - 8);
  v12 = *(v110 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v105 = &v101 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v101 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v109 = &v101 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v101 - v23;
  v25 = MEMORY[0x277D837D0];
  v117[3] = MEMORY[0x277D837D0];
  v117[0] = a2;
  v117[1] = a3;
  v26 = objc_opt_self();

  v27 = [v26 persistentIDPropertyForGroupingType_];
  if (!v27)
  {
    sub_2664E02C8();
    v27 = sub_2664E02A8();
  }

  v103 = v20;
  v106 = v15;
  v28 = __swift_project_boxed_opaque_existential_1(v117, v25);
  v29 = *(v25 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32);
  v33 = sub_2664E0D78();
  (*(v29 + 8))(v32, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  v34 = [objc_opt_self() predicateWithValue:v33 forProperty:v27];
  swift_unknownObjectRelease();

  [a1 addFilterPredicate_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v36 = v110;
  v37 = *(v110 + 16);
  v112 = v110 + 16;
  v113 = v35;
  v111 = v37;
  v37(v24, v35, v11);
  v38 = a1;
  v39 = sub_2664DFE18();
  v40 = sub_2664E06E8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v102 = v34;
    v43 = v11;
    v44 = v42;
    *&v115 = v42;
    *v41 = 136446210;
    v45 = [v38 description];
    v46 = sub_2664E02C8();
    v48 = v47;

    v36 = v110;
    v49 = sub_2662A320C(v46, v48, &v115);

    *(v41 + 4) = v49;
    _os_log_impl(&dword_26629C000, v39, v40, "LibraryProvider#addToPlaylist (deviceID) query: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v50 = v44;
    v11 = v43;
    v34 = v102;
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);
  }

  v51 = *(v36 + 8);
  v51(v24, v11);
  v52 = v109;
  v111(v109, v113, v11);
  v53 = v38;
  v54 = sub_2664DFE18();
  v55 = sub_2664E06E8();

  if (os_log_type_enabled(v54, v55))
  {
    v102 = v11;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v115 = v57;
    *v56 = 136315394;
    v58 = [v53 &selRef_stringValue];
    v104 = v51;
    if (v58)
    {
      v59 = v58;
      sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
      v60 = sub_2664E04A8();
    }

    else
    {
      v60 = 0;
    }

    v114 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D60, &qword_2664E6F28);
    v61 = sub_2664E0318();
    v63 = sub_2662A320C(v61, v62, &v115);

    *(v56 + 4) = v63;
    *(v56 + 12) = 2080;
    v64 = [v53 collections];
    if (v64)
    {
      v65 = v64;
      sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
      v66 = sub_2664E04A8();
    }

    else
    {
      v66 = 0;
    }

    v114 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D68, &unk_2664E6F30);
    v67 = sub_2664E0318();
    v69 = sub_2662A320C(v67, v68, &v115);

    *(v56 + 14) = v69;
    _os_log_impl(&dword_26629C000, v54, v55, "LibraryProvider#addToPlaylist (deviceID) queryItems: %s queryCollections: %s...", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v57, -1, -1);
    MEMORY[0x266784AD0](v56, -1, -1);

    v11 = v102;
    v51 = v104;
    v104(v109, v102);
  }

  else
  {

    v51(v52, v11);
  }

  v70 = [v53 items];
  v71 = v105;
  v72 = v106;
  if (v70)
  {
    v73 = v70;
    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v74 = sub_2664E04A8();
    if (v74 >> 62)
    {
      v75 = sub_2664E0A68();
    }

    else
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v75 >= 1)
    {
      v104 = v51;
      v76 = v103;
      v111(v103, v113, v11);
      v77 = v101;
      v78 = sub_2664DFE18();
      v79 = sub_2664E06E8();

      if (os_log_type_enabled(v78, v79))
      {
        v102 = v34;
        v80 = v11;
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v114 = v82;
        *v81 = 136315138;
        v83 = [v77 name];
        if (v83)
        {
          v84 = v83;
          v85 = sub_2664E02C8();
          v87 = v86;
        }

        else
        {
          v85 = 0;
          v87 = 0;
        }

        *&v115 = v85;
        *(&v115 + 1) = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v98 = sub_2664E0318();
        v100 = sub_2662A320C(v98, v99, &v114);

        *(v81 + 4) = v100;
        _os_log_impl(&dword_26629C000, v78, v79, "LibraryProvider#addToPlaylist (deviceID) Successfully added item(s) into playlist %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        MEMORY[0x266784AD0](v82, -1, -1);
        MEMORY[0x266784AD0](v81, -1, -1);

        v104(v103, v80);
        v34 = v102;
      }

      else
      {

        v104(v76, v11);
      }

      [v77 addMediaItems:v73 completionHandler:0];

      v115 = 0uLL;
      v116 = 0;
      v108(&v115);

      return;
    }
  }

  v111(v71, v113, v11);
  v88 = sub_2664DFE18();
  v89 = sub_2664E06D8();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = v51;
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_26629C000, v88, v89, "LibraryProvider#addToPlaylist (deviceID) No item were found.", v91, 2u);
    v92 = v91;
    v51 = v90;
    MEMORY[0x266784AD0](v92, -1, -1);
  }

  v51(v71, v11);
  v111(v72, v113, v11);
  v93 = sub_2664DFE18();
  v94 = v51;
  v95 = sub_2664E06B8();
  if (os_log_type_enabled(v93, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v115 = v97;
    *v96 = 134218498;
    *(v96 + 4) = 8;
    *(v96 + 12) = 2048;
    *(v96 + 14) = 18;
    *(v96 + 22) = 2080;
    *(v96 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F5640, &v115);
    _os_log_impl(&dword_26629C000, v93, v95, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v96, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x266784AD0](v97, -1, -1);
    MEMORY[0x266784AD0](v96, -1, -1);
  }

  v94(v72, v11);
  v115 = xmmword_2664E6E40;
  v116 = 0x80000002664F5640;
  v108(&v115);
}