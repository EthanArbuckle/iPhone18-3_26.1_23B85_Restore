void sub_22CF8F470(uint64_t *a1, uint64_t a2)
{
  v93 = a1;
  v4 = sub_22D015A5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v106 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D0159BC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v105 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22D01436C();
  v107 = *(v108 - 8);
  v13 = *(v107 + 64);
  v15 = MEMORY[0x28223BE20](v108, v14);
  v92 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v109 = &v88 - v18;
  v19 = type metadata accessor for Activity();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v91 = (&v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22, v24);
  v26 = (&v88 - v25);
  v27 = sub_22D01659C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = (&v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v2 + 16);
  *v32 = v33;
  (*(v28 + 104))(v32, *MEMORY[0x277D85200], v27);
  v34 = v33;
  LOBYTE(v33) = sub_22D0165BC();
  (*(v28 + 8))(v32, v27);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_22CEEB6DC(v2 + 32, &v113, &qword_27D9F2E28, &unk_22D01A838);
  if (v114)
  {
    sub_22CFA3864(&v113, &v115);
    if (qword_28143DA98 == -1)
    {
LABEL_4:
      v35 = sub_22D01637C();
      v36 = __swift_project_value_buffer(v35, qword_2814442F0);
      sub_22CF0CBEC(v93, v26, type metadata accessor for Activity);

      v90 = v36;
      v37 = sub_22D01636C();
      v38 = sub_22D0168EC();

      v39 = os_log_type_enabled(v37, v38);
      v104 = v4;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v113 = v41;
        *v40 = 136446466;
        v42 = v5;
        v43 = *v26;
        v44 = v26[1];

        sub_22CF0F5E0(v26, type metadata accessor for Activity);
        v45 = sub_22CEEE31C(v43, v44, &v113);
        v5 = v42;

        *(v40 + 4) = v45;
        *(v40 + 12) = 2082;
        v46 = MEMORY[0x2318C5950](a2, v108);
        v48 = sub_22CEEE31C(v46, v47, &v113);

        *(v40 + 14) = v48;
        _os_log_impl(&dword_22CEE1000, v37, v38, "Removing activity from replicator: %{public}s for relationship IDs: %{public}s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v41, -1, -1);
        MEMORY[0x2318C6860](v40, -1, -1);
      }

      else
      {

        sub_22CF0F5E0(v26, type metadata accessor for Activity);
      }

      v53 = *(a2 + 16);
      v54 = v109;
      if (v53)
      {
        v112 = 0;
        v55 = v93[1];
        v103 = *v93;
        v102 = v55;
        v101 = "ubscriptionsPublisher";
        v56 = *(v107 + 16);
        v57 = a2 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
        v100 = *(v107 + 72);
        v99 = (v107 + 56);
        v98 = *MEMORY[0x277D46828];
        v97 = (v5 + 104);
        v96 = (v5 + 8);
        v95 = (v107 + 8);
        *(&v58 + 1) = 2;
        v94 = xmmword_22D0187A0;
        *&v58 = 136446466;
        v88 = v58;
        v107 += 16;
        v89 = v56;
        do
        {
          v111 = v53;
          v59 = v108;
          v56(v54, v57, v108);
          v110 = v117;
          __swift_project_boxed_opaque_existential_1(&v115, v116);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
          v60 = *(sub_22D0159DC() - 8);
          v61 = *(v60 + 72);
          v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
          *(swift_allocObject() + 16) = v94;
          *&v113 = v103;
          *(&v113 + 1) = v102;

          MEMORY[0x2318C5860](46, 0xE100000000000000);
          v63 = sub_22D01432C();
          MEMORY[0x2318C5860](v63);

          (*v99)(v105, 1, 1, v59);
          sub_22D01597C();
          v64 = v106;
          v65 = v104;
          (*v97)(v106, v98, v104);
          v66 = v112;
          sub_22D01586C();
          v112 = v66;
          if (v66)
          {
            (*v96)(v64, v65);

            v67 = v91;
            sub_22CF0CBEC(v93, v91, type metadata accessor for Activity);
            v68 = v92;
            v56(v92, v109, v59);
            v69 = sub_22D01636C();
            v70 = sub_22D0168EC();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *&v113 = v72;
              *v71 = v88;
              v74 = *v67;
              v73 = v67[1];

              sub_22CF0F5E0(v67, type metadata accessor for Activity);
              v75 = sub_22CEEE31C(v74, v73, &v113);

              *(v71 + 4) = v75;
              *(v71 + 12) = 2082;
              sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
              v76 = v108;
              v77 = sub_22D016DEC();
              v79 = v78;
              v80 = v68;
              v81 = *v95;
              (*v95)(v80, v76);
              v82 = sub_22CEEE31C(v77, v79, &v113);

              *(v71 + 14) = v82;
              _os_log_impl(&dword_22CEE1000, v69, v70, "Could not remove activity from replicator: %{public}s for relationship ID: %{public}s", v71, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v72, -1, -1);
              MEMORY[0x2318C6860](v71, -1, -1);

              v54 = v109;
              v83 = v76;
              v56 = v89;
              v81(v109, v83);
              v112 = 0;
            }

            else
            {

              v84 = v67;
              v85 = *v95;
              v86 = v108;
              (*v95)(v68, v108);
              sub_22CF0F5E0(v84, type metadata accessor for Activity);
              v87 = v109;
              v85(v109, v86);
              v112 = 0;
              v54 = v87;
            }
          }

          else
          {

            (*v96)(v64, v65);
            v54 = v109;
            (*v95)(v109, v59);
          }

          v57 += v100;
          v53 = v111 - 1;
        }

        while (v111 != 1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v115);
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_4;
  }

  sub_22CEEC3D8(&v113, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v49 = sub_22D01637C();
  __swift_project_value_buffer(v49, qword_2814442F0);
  v50 = sub_22D01636C();
  v51 = sub_22D0168EC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_22CEE1000, v50, v51, "Replicator is not available", v52, 2u);
    MEMORY[0x2318C6860](v52, -1, -1);
  }
}

void sub_22CF90068(uint64_t *a1)
{
  v91 = a1;
  v81 = sub_22D015A5C();
  v80 = *(v81 - 8);
  v2 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v3);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22D015A3C();
  v82 = *(v86 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v86, v6);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Activity();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v76 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E80, &unk_22D01A890);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v76 - v19;
  v89 = sub_22D01436C();
  v21 = *(v89 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v89, v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v90 = &v76 - v28;
  v85 = sub_22D01589C();
  v87 = *(v85 - 8);
  v29 = *(v87 + 64);
  MEMORY[0x28223BE20](v85, v30);
  v88 = (&v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_22D01659C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v37 = (&v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v1 + 16);
  *v37 = v38;
  (*(v33 + 104))(v37, *MEMORY[0x277D85200], v32);
  v39 = v38;
  LOBYTE(v38) = sub_22D0165BC();
  (*(v33 + 8))(v37, v32);
  if ((v38 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_7;
  }

  sub_22CEEB6DC(v1 + 32, &v92, &qword_27D9F2E28, &unk_22D01A838);
  if (v93)
  {
    sub_22CFA3864(&v92, &v94);
    v40 = (v91 + *(v8 + 52));
    if (v40[1])
    {
      v41 = *v40;
      sub_22D01431C();
      v42 = v21;
      v43 = *(v21 + 48);
      v44 = v89;
      if (v43(v20, 1, v89) == 1)
      {
        sub_22CEEC3D8(v20, &qword_27D9F2E80, &unk_22D01A890);
      }

      else
      {
        v78 = v1;
        (*(v42 + 32))(v26, v20, v44);
        v49 = *(v42 + 16);
        v50 = v90;
        v49(v90, v26, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20C8, &qword_22D0188F0);
        v51 = *(v42 + 72);
        v52 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v53 = swift_allocObject();
        v76 = xmmword_22D0187A0;
        *(v53 + 16) = xmmword_22D0187A0;
        v49(v53 + v52, v50, v44);
        v77 = *(v42 + 8);
        v77(v26, v44);
        v54 = v88;
        *v88 = v53;
        (*(v87 + 104))(v54, *MEMORY[0x277D46558], v85);
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v55 = sub_22D01637C();
        v56 = __swift_project_value_buffer(v55, qword_2814442F0);
        sub_22CF0CBEC(v91, v15, type metadata accessor for Activity);
        v57 = sub_22D01636C();
        v58 = sub_22D0168EC();
        v59 = os_log_type_enabled(v57, v58);
        v60 = v86;
        if (v59)
        {
          v61 = v56;
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v92 = v63;
          *v62 = 136446210;
          v64 = *v15;
          v65 = v15[1];

          sub_22CF0F5E0(v15, type metadata accessor for Activity);
          v66 = sub_22CEEE31C(v64, v65, &v92);
          v44 = v89;

          *(v62 + 4) = v66;
          _os_log_impl(&dword_22CEE1000, v57, v58, "Adding dismiss record for activity: %{public}s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x2318C6860](v63, -1, -1);
          v67 = v62;
          v56 = v61;
          v60 = v86;
          MEMORY[0x2318C6860](v67, -1, -1);
        }

        else
        {

          sub_22CF0F5E0(v15, type metadata accessor for Activity);
        }

        v68 = v82;
        v69 = v84;
        sub_22CF9161C(*v91, v91[1], v90, &v94, v84);
        v82 = v56;
        v83 = v95;
        v89 = v96;
        __swift_project_boxed_opaque_existential_1(&v94, v95);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E48, &qword_22D01A860);
        v70 = *(v68 + 72);
        v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v72 = swift_allocObject();
        *(v72 + 16) = v76;
        (*(v68 + 16))(v72 + v71, v69, v60);
        v73 = v80;
        v74 = v79;
        v75 = v81;
        (*(v80 + 104))(v79, *MEMORY[0x277D46828], v81);
        sub_22D01585C();

        (*(v73 + 8))(v74, v75);
        (*(v68 + 8))(v84, v86);
        v77(v90, v44);
        (*(v87 + 8))(v88, v85);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v94);
    return;
  }

  sub_22CEEC3D8(&v92, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    goto LABEL_18;
  }

LABEL_7:
  v45 = sub_22D01637C();
  __swift_project_value_buffer(v45, qword_2814442F0);
  v46 = sub_22D01636C();
  v47 = sub_22D0168EC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_22CEE1000, v46, v47, "Replicator is not available", v48, 2u);
    MEMORY[0x2318C6860](v48, -1, -1);
  }
}

uint64_t sub_22CF90C14()
{
  v1 = sub_22D0159BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v10[0] = *v0;
  v10[1] = v6;

  MEMORY[0x2318C5860](46, 0xE100000000000000);
  v7 = sub_22D01432C();
  MEMORY[0x2318C5860](v7);

  v8 = sub_22D01436C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  return sub_22D01597C();
}

uint64_t sub_22CF90D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v76[1] = a1;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v81 = v76 - v7;
  v8 = sub_22D01430C();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v90 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v78 = v76 - v15;
  v16 = sub_22D0159DC();
  v88 = *(v16 - 8);
  v89 = v16;
  v17 = *(v88 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v85 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v91 = v76 - v22;
  v23 = sub_22D01436C();
  v86 = *(v23 - 8);
  v87 = v23;
  v24 = *(v86 + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v79 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v92 = v76 - v29;
  v30 = sub_22D01504C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33 - 8, v35);
  v38 = v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v39);
  v41 = v76 - v40;
  v42 = sub_22D0150CC();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = v76 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Activity();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48, v50);
  v52 = v76 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v3;
  sub_22CF0CBEC(v3, v52, type metadata accessor for Activity);
  v96 = v48;
  v53 = *(v48 + 56);
  sub_22D01462C();
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_22CEEC3D8(v41, &qword_27D9F2308, &unk_22D018950);
  }

  else
  {
    (*(v43 + 32))(v47, v41, v42);
    sub_22D01503C();
    sub_22D0150AC();
    (*(v43 + 16))(v38, v47, v42);
    (*(v43 + 56))(v38, 0, 1, v42);
    sub_22D01463C();
    (*(v43 + 8))(v47, v42);
  }

  v54 = sub_22D0140BC();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_22D0140AC();
  sub_22CF1A164(&qword_27D9F2E50, type metadata accessor for Activity);
  v57 = v93;
  v58 = sub_22D01409C();
  if (v57)
  {
    sub_22CF0F5E0(v52, type metadata accessor for Activity);
  }

  else
  {
    v61 = v58;
    v62 = v59;
    v94 = v58;
    v95 = v59;
    sub_22CFA38FC();
    sub_22D01595C();
    sub_22CF90C14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E60, &qword_22D01A868);
    v63 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E68, &unk_22D01A870) - 8);
    v64 = *(*v63 + 72);
    v65 = (*(*v63 + 80) + 32) & ~*(*v63 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_22D0187A0;
    v67 = (v66 + v65);
    v68 = v63[14];
    *v67 = v80;
    v69 = sub_22D0141BC();
    (*(*(v69 - 8) + 56))(v78, 1, 1, v69);
    sub_22CEEC970(v61, v62);
    sub_22D015A0C();
    v93 = sub_22CFF76D0(v66);
    swift_setDeallocating();
    sub_22CEEC3D8(v67, &qword_27D9F2E68, &unk_22D01A870);
    swift_deallocClassInstance();
    v70 = &v52[*(v96 + 44)];
    v71 = v90;
    sub_22D01425C();
    (*(v88 + 16))(v85, v91, v89);
    (*(v86 + 16))(v79, v92, v87);
    v73 = v81;
    v72 = v82;
    v74 = v71;
    v75 = v83;
    (*(v82 + 16))(v81, v74, v83);
    (*(v72 + 56))(v73, 0, 1, v75);
    sub_22D0159EC();

    sub_22CEE7524(v61, v62);
    (*(v72 + 8))(v90, v75);
    (*(v88 + 8))(v91, v89);
    (*(v86 + 8))(v92, v87);
    return sub_22CF0F5E0(v52, type metadata accessor for Activity);
  }
}

uint64_t sub_22CF9161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a3;
  v75[2] = a1;
  v75[3] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v82 = v75 - v11;
  v83 = sub_22D01430C();
  v81 = *(v83 - 8);
  v12 = *(v81 + 64);
  v14 = MEMORY[0x28223BE20](v83, v13);
  v78 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v80 = v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v76 = v75 - v21;
  v22 = sub_22D0159BC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22D0159DC();
  v79 = *(v85 - 8);
  v27 = *(v79 + 64);
  v29 = MEMORY[0x28223BE20](v85, v28);
  v84 = v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v87 = v75 - v32;
  v88 = sub_22D01436C();
  v86 = *(v88 - 8);
  v33 = *(v86 + 64);
  v35 = MEMORY[0x28223BE20](v88, v34);
  v77 = v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v89 = v75 - v38;
  v39 = type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39, v41);
  v43 = v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22D01659C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  v49 = (v75 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = *(v5 + 16);
  *v49 = v50;
  (*(v45 + 104))(v49, *MEMORY[0x277D85200], v44);
  v51 = v50;
  LOBYTE(v50) = sub_22D0165BC();
  result = (*(v45 + 8))(v49, v44);
  if (v50)
  {
    v75[1] = a5;
    sub_22D0142DC();
    v53 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v54 = *(v53 + 16);
    sub_22CF1A164(&qword_27D9F2E88, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
    sub_22CF1A164(&qword_27D9F2E90, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
    v55 = v93;
    v56 = sub_22D0157FC();
    if (!v55)
    {
      v59 = v56;
      v60 = v57;
      v93 = v58;
      v91 = v56;
      v92 = v57;
      sub_22CFA38FC();
      sub_22D01595C();
      (*(v86 + 56))(v26, 1, 1, v88);

      sub_22D01597C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E60, &qword_22D01A868);
      v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E68, &unk_22D01A870) - 8);
      v62 = *(*v61 + 72);
      v63 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_22D0187A0;
      v65 = (v64 + v63);
      v66 = v61[14];
      *v65 = v93;
      v67 = sub_22D0141BC();
      (*(*(v67 - 8) + 56))(v76, 1, 1, v67);
      sub_22CEEC970(v59, v60);
      sub_22D015A0C();
      v93 = sub_22CFF76D0(v64);
      swift_setDeallocating();
      sub_22CEEC3D8(v65, &qword_27D9F2E68, &unk_22D01A870);
      swift_deallocClassInstance();
      v68 = v78;
      sub_22D0142DC();
      v90 = v59;
      v69 = v80;
      sub_22D01425C();
      v70 = v81;
      v76 = *(v81 + 8);
      v71 = v83;
      (v76)(v68, v83);
      v72 = v79;
      (*(v79 + 16))(v84, v87, v85);
      v73 = *(v86 + 16);
      v78 = v60;
      v73(v77, v89, v88);
      v74 = v82;
      (*(v70 + 16))(v82, v69, v71);
      (*(v70 + 56))(v74, 0, 1, v71);
      sub_22D0159EC();
      sub_22CEE7524(v90, v78);
      (v76)(v69, v71);
      (*(v72 + 8))(v87, v85);
      (*(v86 + 8))(v89, v88);
    }

    return sub_22CF0F5E0(v43, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF91EB4()
{
  sub_22D016EAC();
  MEMORY[0x2318C6020](0);
  return sub_22D016ECC();
}

uint64_t sub_22CF91F20()
{
  sub_22D016EAC();
  MEMORY[0x2318C6020](0);
  return sub_22D016ECC();
}

uint64_t sub_22CF91F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6165724365746164 && a2 == 0xEB00000000646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22D016DFC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22CF92024(uint64_t a1)
{
  v2 = sub_22CFA6618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22CF92060(uint64_t a1)
{
  v2 = sub_22CFA6618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22CF9209C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_22D01430C();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F78, &qword_22D01AAC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0142DC();
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFA6618();
  v19 = v26;
  sub_22D016EDC();
  if (!v19)
  {
    v20 = v24;
    sub_22CF1A164(&qword_27D9F2F88, MEMORY[0x277CC9578]);
    sub_22D016DAC();
    (*(v8 + 8))(v12, v7);
    (*(v20 + 40))(v17, v25, v3);
    sub_22CF0CBEC(v17, v23, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_22CF0F5E0(v17, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
}

uint64_t sub_22CF9236C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F90, &qword_22D01AAC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFA6618();
  sub_22D016EEC();
  sub_22D01430C();
  sub_22CF1A164(&qword_27D9F2F98, MEMORY[0x277CC9578]);
  sub_22D016DDC();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22CF924E4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v101 = a5;
  v99 = a4;
  v108 = a3;
  v102 = a2;
  v106 = type metadata accessor for ActivityManagerEvent(0);
  v6 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106, v7);
  v107 = (&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = sub_22D01502C();
  v9 = *(v105 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v105, v11);
  v100 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v95 - v15;
  v17 = sub_22D014EFC();
  v113 = *(v17 - 8);
  v114 = v17;
  v18 = *(v113 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v110 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v95 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v95 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v95 - v31;
  v109 = type metadata accessor for Activity();
  v33 = *(v109 + 28);
  v111 = a1;
  v34 = *(a1 + v33);
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v103 = (v9 + 8);
  v104 = (v9 + 32);
  swift_bridgeObjectRetain_n();
  v39 = 0;
  v112 = MEMORY[0x277D84F90];
  while (1)
  {
    v40 = v39;
    if (!v37)
    {
      break;
    }

LABEL_8:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = MEMORY[0x277CB9790];
    sub_22CF0CBEC(*(v34 + 56) + *(v113 + 72) * (v41 | (v39 << 6)), v32, MEMORY[0x277CB9790]);
    sub_22CF0CBEC(v32, v29, v42);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = MEMORY[0x277CB9790];
      sub_22CF0F5E0(v29, MEMORY[0x277CB9790]);
      sub_22CF0F5E0(v32, v43);
    }

    else
    {
      v44 = v105;
      (*v104)(v16, v29, v105);
      v45 = sub_22D014F9C();
      v97 = v46;
      v98 = v45;
      (*v103)(v16, v44);
      sub_22CF0F5E0(v32, MEMORY[0x277CB9790]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_22CFCE000(0, *(v112 + 2) + 1, 1, v112);
      }

      v48 = *(v112 + 2);
      v47 = *(v112 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v96 = v48 + 1;
        v53 = sub_22CFCE000((v47 > 1), v48 + 1, 1, v112);
        v49 = v96;
        v112 = v53;
      }

      v50 = v112;
      *(v112 + 2) = v49;
      v51 = &v50[16 * v48];
      v52 = v97;
      *(v51 + 4) = v98;
      *(v51 + 5) = v52;
    }
  }

  while (1)
  {
    v39 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v39 >= v38)
    {
      break;
    }

    v37 = *(v34 + 64 + 8 * v39);
    ++v40;
    if (v37)
    {
      goto LABEL_8;
    }
  }

  v34 = v111;
  v54 = *(v111 + *(v109 + 32));
  v55 = 1 << *(v54 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v54 + 64);
  v58 = (v55 + 63) >> 6;
  v59 = *(v111 + *(v109 + 32));
  swift_bridgeObjectRetain_n();
  v60 = 0;
  v61 = MEMORY[0x277D84F90];
  v62 = v110;
  if (v57)
  {
    while (1)
    {
      v63 = v60;
LABEL_22:
      v64 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v65 = MEMORY[0x277CB9790];
      sub_22CF0CBEC(*(v54 + 56) + *(v113 + 72) * (v64 | (v63 << 6)), v25, MEMORY[0x277CB9790]);
      sub_22CF0CBEC(v25, v62, v65);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = MEMORY[0x277CB9790];
        sub_22CF0F5E0(v62, MEMORY[0x277CB9790]);
        sub_22CF0F5E0(v25, v66);
        v60 = v63;
        if (!v57)
        {
          break;
        }
      }

      else
      {
        v67 = v100;
        v68 = v62;
        v69 = v105;
        (*v104)(v100, v68, v105);
        v109 = sub_22D014F9C();
        v71 = v70;
        (*v103)(v67, v69);
        sub_22CF0F5E0(v25, MEMORY[0x277CB9790]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_22CFCE000(0, *(v61 + 2) + 1, 1, v61);
        }

        v73 = *(v61 + 2);
        v72 = *(v61 + 3);
        if (v73 >= v72 >> 1)
        {
          v61 = sub_22CFCE000((v72 > 1), v73 + 1, 1, v61);
        }

        *(v61 + 2) = v73 + 1;
        v74 = &v61[16 * v73];
        *(v74 + 4) = v109;
        *(v74 + 5) = v71;
        v60 = v63;
        v34 = v111;
        v62 = v110;
        if (!v57)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v63 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v63 >= v58)
    {

      v115[0] = v112;
      sub_22CFA1444(v61);
      v75 = sub_22CF7BDC4(v115[0]);

      v76 = v108;

      v77 = *(sub_22CFA2D7C(v75, v76) + 16);

      if (v77)
      {
        if (qword_28143DA98 != -1)
        {
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      v92 = *(v34 + *(v106 + 20));
      if (v92 == 4)
      {
        v93 = 1;
        return v93 & 1;
      }

      if ((v102 & 1) == 0 || (v93 = 1, v92 != 1) && ((v92 == 0) & v99) == 0)
      {
        if (!*(v101 + 16))
        {
          goto LABEL_38;
        }

        sub_22CEEC698(*v34, *(v34 + 8));
      }

      return v93 & 1;
    }

    v57 = *(v54 + 64 + 8 * v63);
    ++v60;
    if (v57)
    {
      goto LABEL_22;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_33:
  v78 = sub_22D01637C();
  __swift_project_value_buffer(v78, qword_2814442F0);
  v79 = v34;
  v80 = v107;
  sub_22CF0CBEC(v79, v107, type metadata accessor for ActivityManagerEvent);

  v81 = sub_22D01636C();
  v82 = sub_22D01690C();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v115[0] = v84;
    *v83 = 136315394;
    v85 = *v80;
    v86 = v80[1];

    sub_22CF0F5E0(v80, type metadata accessor for ActivityManagerEvent);
    v87 = sub_22CEEE31C(v85, v86, v115);

    *(v83 + 4) = v87;
    *(v83 + 12) = 2080;
    v88 = sub_22D01686C();
    v90 = v89;

    v91 = sub_22CEEE31C(v88, v90, v115);

    *(v83 + 14) = v91;
    _os_log_impl(&dword_22CEE1000, v81, v82, "Not sending activity %s because %s overlaps presentationTargetBundleIDExceptions", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v84, -1, -1);
    MEMORY[0x2318C6860](v83, -1, -1);
  }

  else
  {

    sub_22CF0F5E0(v80, type metadata accessor for ActivityManagerEvent);
  }

LABEL_38:
  v93 = 0;
  return v93 & 1;
}

uint64_t sub_22CF92DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v12 = sub_22CF7C51C(v11);
  if (a2)
  {
  }

  else
  {
    v13 = sub_22CFF78AC(MEMORY[0x277D84F90]);
  }

  v14 = sub_22CF7C51C(v13);
  if (*(v14 + 16) <= *(v12 + 16) >> 3)
  {

    sub_22CF627A8(v14);
    v15 = v12;
  }

  else
  {

    v15 = sub_22CF62C50(v14, v12);
  }

  if (*(v12 + 16) <= *(v14 + 16) >> 3)
  {

    sub_22CF627A8(v12);
    v97 = v14;
  }

  else
  {

    v97 = sub_22CF62C50(v12, v14);
  }

  v94 = sub_22CFA2D7C(v14, v12);

  if (a2)
  {

    v16 = a2;
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v17 = a8;
  if (*(v16 + 16) <= *(a6 + 16) >> 3)
  {

    sub_22CF627A8(v16);
    v99 = a6;
  }

  else
  {

    v99 = sub_22CF62C50(v16, a6);
  }

  v92 = a2;
  v93 = a4;
  if (*(a6 + 16) <= *(v16 + 16) >> 3)
  {
    result = sub_22CF627A8(a6);
    v95 = v16;
  }

  else
  {
    result = sub_22CF62C50(a6, v16);
    v95 = result;
  }

  v19 = 0;
  v20 = 1 << *(v15 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v15 + 56);
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
LABEL_29:
    v27 = (*(v15 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v22)))));
    v29 = *v27;
    v28 = v27[1];
    v30 = *(v17 + 16);

    if (v30 && (v31 = sub_22CEEC698(v29, v28), (v32 & 1) != 0))
    {
      v33 = *(*(v17 + 56) + 8 * v31);
      v25 = sub_22D01510C();
      v24 = v34;
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }

    v22 &= v22 - 1;
    sub_22D016C6C();

    MEMORY[0x2318C5860](v29, v28);

    MEMORY[0x2318C5860](0x206570797420, 0xE600000000000000);
    MEMORY[0x2318C5860](v25, v24);

    MEMORY[0x2318C5860](10, 0xE100000000000000);
    MEMORY[0x2318C5860](0x206465646441, 0xE600000000000000);

    v17 = a8;
  }

  while (1)
  {
    v26 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v15 + 56 + 8 * v26);
    ++v19;
    if (v22)
    {
      v19 = v26;
      goto LABEL_29;
    }
  }

  v35 = 0;
  v36 = 1 << *(v99 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v99 + 56);
  v39 = (v36 + 63) >> 6;
  if (v38)
  {
    while (1)
    {
      v40 = v35;
LABEL_40:
      v41 = (*(v99 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v38)))));
      v42 = *v41;
      v43 = v41[1];
      v38 &= v38 - 1;

      sub_22D016C6C();

      MEMORY[0x2318C5860](v42, v43);

      MEMORY[0x2318C5860](10, 0xE100000000000000);
      MEMORY[0x2318C5860](0xD000000000000010, 0x800000022D020620);

      if (!v38)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
LABEL_36:
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_92;
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v99 + 56 + 8 * v40);
    ++v35;
    if (v38)
    {
      v35 = v40;
      goto LABEL_40;
    }
  }

  if (!v92)
  {

LABEL_90:

    return 0;
  }

  v44 = 0;
  v45 = 1 << *(v97 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v97 + 56);
  v48 = (v45 + 63) >> 6;
  while (v47)
  {
LABEL_53:
    v52 = (*(v97 + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v47)))));
    v54 = *v52;
    v53 = v52[1];
    v55 = *(a8 + 16);

    if (v55 && (v56 = sub_22CEEC698(v54, v53), (v57 & 1) != 0))
    {
      v58 = *(*(a8 + 56) + 8 * v56);
      v50 = sub_22D01510C();
      v49 = v59;
    }

    else
    {
      v49 = 0xE700000000000000;
      v50 = 0x6E776F6E6B6E75;
    }

    v47 &= v47 - 1;
    sub_22D016C6C();

    MEMORY[0x2318C5860](v54, v53);

    MEMORY[0x2318C5860](0x206570797420, 0xE600000000000000);
    MEMORY[0x2318C5860](v50, v49);

    MEMORY[0x2318C5860](10, 0xE100000000000000);
    MEMORY[0x2318C5860](0x206465766F6D6552, 0xE800000000000000);
  }

  while (1)
  {
    v51 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_93;
    }

    if (v51 >= v48)
    {
      break;
    }

    v47 = *(v97 + 56 + 8 * v51);
    ++v44;
    if (v47)
    {
      v44 = v51;
      goto LABEL_53;
    }
  }

  v60 = 0;
  v61 = 1 << *(v95 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v95 + 56);
  v64 = (v61 + 63) >> 6;
  v65 = v93;
  if (v63)
  {
    while (1)
    {
      v66 = v60;
LABEL_64:
      v67 = (*(v95 + 48) + ((v66 << 10) | (16 * __clz(__rbit64(v63)))));
      v68 = *v67;
      v69 = v67[1];
      v63 &= v63 - 1;

      sub_22D016C6C();

      MEMORY[0x2318C5860](v68, v69);

      MEMORY[0x2318C5860](10, 0xE100000000000000);
      MEMORY[0x2318C5860](0xD000000000000012, 0x800000022D020640);

      if (!v63)
      {
        goto LABEL_60;
      }
    }
  }

  while (1)
  {
LABEL_60:
    v66 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_94;
    }

    if (v66 >= v64)
    {
      break;
    }

    v63 = *(v95 + 56 + 8 * v66);
    ++v60;
    if (v63)
    {
      v60 = v66;
      goto LABEL_64;
    }
  }

  v70 = 0;
  v71 = 1 << *(v94 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v94 + 56);
  v74 = (v71 + 63) >> 6;
  while (v73)
  {
LABEL_76:
    v76 = (*(v94 + 48) + ((v70 << 10) | (16 * __clz(__rbit64(v73)))));
    v78 = *v76;
    v77 = v76[1];
    v79 = *(a8 + 16);

    if (v79 && (v80 = sub_22CEEC698(v78, v77), (v81 & 1) != 0))
    {
      v98 = *(*(a8 + 56) + 8 * v80);
      v100 = sub_22D01510C();
      v83 = v82;
      v84 = 0;
      if (!*(v65 + 16))
      {
        goto LABEL_85;
      }
    }

    else
    {
      v84 = 1;
      v83 = 0xE700000000000000;
      v100 = 0x6E776F6E6B6E75;
      if (!*(v65 + 16))
      {
        goto LABEL_85;
      }
    }

    v85 = sub_22CEEC698(v78, v77);
    if ((v86 & 1) == 0)
    {
LABEL_85:
      if (v84)
      {

        goto LABEL_70;
      }

      v89 = 0xE700000000000000;
      v91 = 0x6E776F6E6B6E75;
      goto LABEL_88;
    }

    v87 = *(*(v65 + 56) + 8 * v85);
    v96 = sub_22D01510C();
    v89 = v88;
    if ((v84 & 1) == 0)
    {
      v90 = sub_22D01511C();
      if (v90 == sub_22D01511C())
      {

        v65 = v93;
        goto LABEL_70;
      }
    }

    v91 = v96;
LABEL_88:
    sub_22D016C6C();

    MEMORY[0x2318C5860](v78, v77);

    MEMORY[0x2318C5860](0x206570797420, 0xE600000000000000);
    MEMORY[0x2318C5860](v91, v89);

    MEMORY[0x2318C5860](540945696, 0xE400000000000000);
    MEMORY[0x2318C5860](v100, v83);

    MEMORY[0x2318C5860](10, 0xE100000000000000);
    MEMORY[0x2318C5860](0x206465676E616843, 0xE800000000000000);
    v65 = v93;
LABEL_70:
    v73 &= v73 - 1;
  }

  while (1)
  {
    v75 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v75 >= v74)
    {
      goto LABEL_90;
    }

    v73 = *(v94 + 56 + 8 * v75);
    ++v70;
    if (v73)
    {
      v70 = v75;
      goto LABEL_76;
    }
  }

LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_22CF937B4()
{
  v1 = 0x766974634177656ELL;
  v2 = 0x7069726373627573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22CF93854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22CFA5648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22CF93888(uint64_t a1)
{
  v2 = sub_22CFA5AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22CF938C4(uint64_t a1)
{
  v2 = sub_22CFA5AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22CF93900(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v17 = a5;
  v18 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2ED0, &qword_22D01A8B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFA5AA8();
  sub_22D016EEC();
  LOBYTE(v20) = 0;
  sub_22D016DCC();
  if (!v5)
  {
    v16 = v17;
    LOBYTE(v20) = 1;
    sub_22D016DCC();
    v20 = v16;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EA8, &qword_22D01A8A8);
    sub_22CFA5B50(&qword_27D9F2ED8, sub_22CFA5BD4);
    sub_22D016DDC();
    v20 = a3;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EC0, &qword_22D01A8B0);
    sub_22CFA5C28(&qword_27D9F2EE8);
    sub_22D016DDC();
  }

  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_22CF93BDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22CFA57C8(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_22CF93C44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D01495C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ActivityParticipantEvent(0);
  v8 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74, v9);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22D0159DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01436C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22D0159BC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_22D0159CC();
  result = (*(v19 + 48))(v28, 1, v18);
  if (result != 1)
  {
    v30 = *(v19 + 32);
    v71 = v18;
    v30(v23, v28, v18);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v31 = sub_22D01637C();
    __swift_project_value_buffer(v31, qword_2814442F0);
    (*(v13 + 16))(v17, v75, v12);
    v32 = sub_22D01636C();
    v33 = sub_22D01690C();
    v34 = os_log_type_enabled(v32, v33);
    v70 = v2;
    v72 = v23;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&aBlock = v69;
      *v35 = 136446210;
      sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
      v36 = sub_22D016DEC();
      v37 = v11;
      v38 = v19;
      v40 = v39;
      (*(v13 + 8))(v17, v12);
      v41 = sub_22CEEE31C(v36, v40, &aBlock);
      v19 = v38;
      v11 = v37;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_22CEE1000, v32, v33, "ReplicatorParticipant stopping activity due to deleted replicator record ID: %{public}s", v35, 0xCu);
      v42 = v69;
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x2318C6860](v42, -1, -1);
      MEMORY[0x2318C6860](v35, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }

    v43 = sub_22CFA5E4C(v75);
    if (v44)
    {
      v45 = v43;
      v46 = v19;
      v47 = v44;

      v48 = sub_22D01432C();
      v50 = v49;
      v51 = v74;
      v52 = *(v74 + 24);
      sub_22D01494C();
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v53 = v51[7];
      v54 = *MEMORY[0x277CB9328];
      v55 = sub_22D01483C();
      (*(*(v55 - 8) + 104))(v11 + v53, v54, v55);
      v56 = v51[9];
      v57 = sub_22D0146BC();
      (*(*(v57 - 8) + 56))(v11 + v56, 1, 1, v57);
      *v11 = v45;
      v11[1] = v47;
      v11[2] = v48;
      v11[3] = v50;
      v58 = (v11 + v51[8]);
      v59 = v70;
      *v58 = v70;
      v58[1] = &off_28402B0C8;
      *(v11 + v51[10]) = 0;
      v60 = v59[2];
      v61 = swift_allocObject();
      v61[2] = v59;
      v61[3] = v45;
      v61[4] = v47;
      v62 = v59;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_22CFA61A0;
      *(v63 + 24) = v61;
      v79 = sub_22CEF4034;
      v80 = v63;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v77 = sub_22CEF3C20;
      v78 = &block_descriptor_62_0;
      v64 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v60, v64);
      _Block_release(v64);
      LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

      if (v60)
      {
        __break(1u);
      }

      else
      {
        v66 = v62[22];
        MEMORY[0x28223BE20](result, v65);
        *(&v69 - 2) = sub_22CFA68AC;
        *(&v69 - 1) = v62;
        os_unfair_lock_lock(v66 + 4);
        sub_22CFA6864(&aBlock);
        os_unfair_lock_unlock(v66 + 4);
        if (aBlock)
        {
          v67 = *(&aBlock + 1);
          ObjectType = swift_getObjectType();
          (*(v67 + 24))(v11, ObjectType, v67);
          swift_unknownObjectRelease();
        }

        sub_22CF0F5E0(v11, type metadata accessor for ActivityParticipantEvent);
        (*(v46 + 8))(v72, v71);
      }
    }

    else
    {
      return (*(v19 + 8))(v72, v71);
    }
  }

  return result;
}

uint64_t sub_22CF9439C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v12 - v8;
  sub_22CF944A4(a2, a3);
  v10 = type metadata accessor for Activity();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_beginAccess();

  sub_22CF0BC5C(v9, a2, a3);
  return swift_endAccess();
}

void sub_22CF944A4(uint64_t a1, unint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v48 = sub_22D015A5C();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48, v5);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0159BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D0159DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01659C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = (v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v2 + 16);
  *v23 = v24;
  (*(v19 + 104))(v23, *MEMORY[0x277D85200], v18);
  v25 = v24;
  LOBYTE(v24) = sub_22D0165BC();
  (*(v19 + 8))(v23, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v32 = sub_22D01637C();
    __swift_project_value_buffer(v32, qword_2814442F0);
    v33 = v50;

    v34 = v11;
    v35 = sub_22D01636C();
    v36 = sub_22D0168EC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v51 = v39;
      *v37 = 136446466;
      *(v37 + 4) = sub_22CEEE31C(v49, v33, &v51);
      *(v37 + 12) = 2114;
      v40 = v11;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v41;
      *v38 = v41;
      _os_log_impl(&dword_22CEE1000, v35, v36, "Could not delete dismiss record for activity: %{public}s; error: %{public}@", v37, 0x16u);
      sub_22CEEC3D8(v38, &qword_27D9F2380, &unk_22D019C50);
      MEMORY[0x2318C6860](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318C6860](v39, -1, -1);
      MEMORY[0x2318C6860](v37, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  sub_22CEEB6DC(v2 + 32, &v51, &qword_27D9F2E28, &unk_22D01A838);
  if (v52)
  {
    sub_22CFA3864(&v51, &v53);
    v26 = sub_22D01436C();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);

    sub_22D01597C();
    v46[1] = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
    v27 = *(v13 + 72);
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_22D0187A0;
    (*(v13 + 16))(v29 + v28, v17, v12);
    v31 = v47;
    v30 = v48;
    (*(v3 + 104))(v47, *MEMORY[0x277D46828], v48);
    sub_22D01586C();

    (*(v3 + 8))(v31, v30);
    (*(v13 + 8))(v17, v12);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    return;
  }

  sub_22CEEC3D8(&v51, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v42 = sub_22D01637C();
  __swift_project_value_buffer(v42, qword_2814442F0);
  v43 = sub_22D01636C();
  v44 = sub_22D0168EC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22CEE1000, v43, v44, "Replicator is not available", v45, 2u);
    MEMORY[0x2318C6860](v45, -1, -1);
  }
}

uint64_t sub_22CF94B60(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D01436C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2);
  swift_beginAccess();
  sub_22CFB3488(0, 0, 0, 0, v7);
  swift_endAccess();
  return sub_22CF8B8F0();
}

uint64_t sub_22CF94C64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v70 = a1;
  v71 = a3;
  v4 = sub_22D01430C();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v64 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v68 = &v64 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v69 = &v64 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v64 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v64 - v24;
  v26 = *a2;
  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  v29 = *(a2 + 24);
  v30 = sub_22D01436C();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v25, v70, v30);
  v32 = &v25[*(v8 + 48)];
  *v32 = v26;
  *(v32 + 1) = v27;
  v32[16] = v28;
  v33 = v8;
  *(v32 + 3) = v29;
  sub_22CEEB6DC(v25, v22, &qword_27D9F2E78, &qword_22D01A888);
  v34 = &v22[*(v8 + 48)];
  v35 = *(v34 + 1);

  if (!*(*(v34 + 3) + 16))
  {

LABEL_5:
    v38 = *(v31 + 8);
    v38(v22, v30);
    v39 = v69;
    sub_22CEEB6DC(v25, v69, &qword_27D9F2E78, &qword_22D01A888);
    v40 = (v39 + *(v8 + 48));
    v41 = *v40;
    v42 = *(v40 + 1);

    v43 = *(v40 + 3);

    if (v41 == 1)
    {
      v44 = *(type metadata accessor for Activity() + 40);
      v45 = v65;
      sub_22D0142DC();
      sub_22CF1A164(&qword_281443A30, MEMORY[0x277CC9578]);
      v46 = v67;
      LOBYTE(v44) = sub_22D01663C();
      v47 = v45;
      v33 = v8;
      (*(v66 + 8))(v47, v46);
      v38(v39, v30);
      if (v44)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v38(v39, v30);
    }

    v49 = v68;
    sub_22CEEB6DC(v25, v68, &qword_27D9F2E78, &qword_22D01A888);
    v50 = (v49 + *(v33 + 48));
    v51 = *v50;
    v52 = *(v50 + 1);

    v53 = *(v50 + 3);

    if (v51 == 1)
    {
      v54 = v33;
      v55 = v64;
      sub_22CEEB6DC(v25, v64, &qword_27D9F2E78, &qword_22D01A888);
      v56 = v55 + *(v54 + 48);
      v57 = *(v56 + 8);

      v58 = *(v56 + 16);
      v59 = *(v56 + 24);

      v38(v55, v30);
      v38(v49, v30);
      if (v58)
      {
        v60 = *(type metadata accessor for Activity() + 40);
        v61 = v65;
        sub_22D0142DC();
        sub_22CF1A164(&qword_281443A30, MEMORY[0x277CC9578]);
        v62 = v67;
        LOBYTE(v60) = sub_22D01663C();
        (*(v66 + 8))(v61, v62);
        sub_22CEEC3D8(v25, &qword_27D9F2E78, &qword_22D01A888);
        v48 = v60 ^ 1;
        return v48 & 1;
      }
    }

    else
    {
      v38(v49, v30);
    }

    sub_22CEEC3D8(v25, &qword_27D9F2E78, &qword_22D01A888);
    v48 = 0;
    return v48 & 1;
  }

  sub_22CEEC698(*v71, v71[1]);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v31 + 8))(v22, v30);
LABEL_7:
  sub_22CEEC3D8(v25, &qword_27D9F2E78, &qword_22D01A888);
  v48 = 1;
  return v48 & 1;
}

void sub_22CF951E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v293 = a2;
  v311 = a1;
  v290 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(*(v290 - 8) + 64);
  MEMORY[0x28223BE20](v290, v5);
  v291 = &v274 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0159DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v310 = &v274 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v305 = &v274 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v303 = &v274 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v302 = &v274 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v285 = &v274 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v283 = &v274 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v288 = &v274 - v29;
  v289 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  v30 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v289, v31);
  v296 = &v274 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_22D01430C();
  v298 = *(v295 - 8);
  v33 = *(v298 + 64);
  v35 = MEMORY[0x28223BE20](v295, v34);
  v292 = &v274 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v294 = &v274 - v38;
  v299 = type metadata accessor for Activity();
  v39 = *(*(v299 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v299, v40);
  v284 = &v274 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v282 = (&v274 - v45);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v287 = &v274 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v286 = (&v274 - v51);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v55 = &v274 - v54;
  MEMORY[0x28223BE20](v53, v56);
  v300 = &v274 - v57;
  v58 = sub_22D015A1C();
  v301 = *(v58 - 8);
  v59 = *(v301 + 64);
  MEMORY[0x28223BE20](v58, v60);
  v304 = &v274 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8, v64);
  v66 = &v274 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F20, &qword_22D01A908);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8, v69);
  v71 = &v274 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F28, &qword_22D01A910);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8, v74);
  v306 = &v274 - v75;
  v76 = sub_22D015A3C();
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76, v79);
  v81 = &v274 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = v3;
  sub_22CEEB6DC(v3 + 32, &v312, &qword_27D9F2E28, &unk_22D01A838);
  if (v313)
  {
    v278 = v58;
    v277 = v55;
    v279 = v81;
    v280 = v76;
    v281 = v77;
    sub_22CFA3864(&v312, &v314);
    v82 = v7;
    __swift_project_boxed_opaque_existential_1(&v314, v315);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
    v83 = *(v8 + 72);
    v84 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_22D0187A0;
    v308 = v8;
    v86 = *(v8 + 16);
    v87 = v311;
    v309 = v82;
    v307 = v86;
    (v86)(v85 + v84, v311, v82);
    v88 = sub_22D0141BC();
    (*(*(v88 - 8) + 56))(v66, 1, 1, v88);
    v89 = v87;
    v94 = sub_22D01587C();
    sub_22CEEC3D8(v66, &qword_27D9F2708, &qword_22D018FC0);

    sub_22CF8B4B0(v94, v71);

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
    v96 = (*(*(v95 - 8) + 48))(v71, 1, v95);
    if (v96 == 1)
    {
      sub_22CEEC3D8(v71, &qword_27D9F2F20, &qword_22D01A908);
      v97 = v306;
      (*(v281 + 56))(v306, 1, 1, v280);
LABEL_11:
      sub_22CEEC3D8(v97, &qword_27D9F2F28, &qword_22D01A910);
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v103 = sub_22D01637C();
      __swift_project_value_buffer(v103, qword_2814442F0);
      v104 = v305;
      v105 = v309;
      (v307)(v305, v89, v309);
      v106 = sub_22D01636C();
      v107 = sub_22D0168EC();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v308;
      if (v108)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v312 = v111;
        *v110 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
        v112 = sub_22D016DEC();
        v113 = v104;
        v115 = v114;
        (*(v109 + 8))(v113, v105);
        v116 = sub_22CEEE31C(v112, v115, &v312);

        *(v110 + 4) = v116;
        _os_log_impl(&dword_22CEE1000, v106, v107, "Received replicator record update but record does not exist: %{public}s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        MEMORY[0x2318C6860](v111, -1, -1);
        MEMORY[0x2318C6860](v110, -1, -1);
      }

      else
      {

        (*(v109 + 8))(v104, v105);
      }

      goto LABEL_16;
    }

    v98 = *(v95 + 48);
    v99 = v281;
    v100 = *(v281 + 32);
    v97 = v306;
    v101 = v280;
    v100(v306, &v71[v98], v280);
    (*(v99 + 56))(v97, 0, 1, v101);
    v102 = *(v308 + 8);
    v276 = v308 + 8;
    v102(v71, v309);
    if ((*(v99 + 48))(v97, 1, v101) == 1)
    {
      goto LABEL_11;
    }

    v117 = v279;
    v100(v279, v97, v101);
    if (qword_27D9F1E60 != -1)
    {
      swift_once();
    }

    v118 = sub_22D01582C();
    __swift_project_value_buffer(v118, qword_27D9F40E8);
    v119 = sub_22D01596C();
    v120 = v117;
    v121 = v304;
    if (v122)
    {
      v123 = v102;
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v124 = sub_22D01637C();
      __swift_project_value_buffer(v124, qword_2814442F0);
      v125 = v303;
      v126 = v89;
      v127 = v309;
      (v307)(v303, v126, v309);
      v128 = sub_22D01636C();
      v129 = sub_22D0168EC();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v312 = v131;
        *v130 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
        v132 = sub_22D016DEC();
        v133 = v120;
        v135 = v134;
        v123(v125, v127);
        v136 = sub_22CEEE31C(v132, v135, &v312);

        *(v130 + 4) = v136;
        _os_log_impl(&dword_22CEE1000, v128, v129, "Received replicator record update with incompatible data: %{public}s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        MEMORY[0x2318C6860](v131, -1, -1);
        MEMORY[0x2318C6860](v130, -1, -1);

        v137 = *(v281 + 8);
        v138 = v133;
LABEL_34:
        v137(v138, v280);
        goto LABEL_16;
      }

      v123(v125, v127);
    }

    else
    {
      v139 = v119;
      v140 = sub_22D015A2C();
      v141 = *(v140 + 16);
      v275 = v102;
      if (v141)
      {
        v142 = sub_22CFC1098(v139);
        if (v143)
        {
          (*(v301 + 16))(v121, *(v140 + 56) + *(v301 + 72) * v142, v278);

          v144 = sub_22D01408C();
          v145 = *(v144 + 48);
          v146 = *(v144 + 52);
          swift_allocObject();
          v147 = sub_22D01407C();
          v148 = sub_22D0159FC();
          v150 = v149;
          sub_22CF1A164(&qword_27D9F2F38, type metadata accessor for Activity);
          v151 = v300;
          v152 = v299;
          sub_22D01406C();
          v310 = v147;
          sub_22CEE7524(v148, v150);
          v166 = sub_22D01432C();
          v168 = v167;
          v169 = v151;
          v170 = v166;
          v171 = v277;
          sub_22CF0CBEC(v169, v277, type metadata accessor for Activity);
          v172 = (v171 + *(v152 + 52));
          v173 = v172[1];

          *v172 = v170;
          v172[1] = v168;
          v308 = v168;
          v175 = *(v297 + 16);
          MEMORY[0x28223BE20](v174, v176);
          *(&v274 - 2) = v177;
          *(&v274 - 1) = v171;
          sub_22D01699C();
          v306 = 0;
          v178 = v312;
          v179 = v294;
          sub_22D0142DC();
          v180 = *(v152 + 56);
          v181 = v292;
          sub_22D01469C();
          sub_22D01424C();
          v183 = v182;
          v184 = v298 + 8;
          v185 = *(v298 + 8);
          v186 = v295;
          v185(v181, v295);
          v303 = v185;
          v185(v179, v186);
          if (v178 == 1)
          {
            v305 = v180;
            v302 = v170;
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v187 = sub_22D01637C();
            __swift_project_value_buffer(v187, qword_2814442F0);
            v188 = v277;
            v189 = v286;
            sub_22CF0CBEC(v277, v286, type metadata accessor for Activity);
            v190 = v288;
            v191 = v309;
            (v307)(v288, v311, v309);
            v192 = v287;
            sub_22CF0CBEC(v188, v287, type metadata accessor for Activity);
            v193 = sub_22D01636C();
            v194 = sub_22D01690C();
            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              v298 = v184;
              v196 = v195;
              v311 = swift_slowAlloc();
              *&v312 = v311;
              *v196 = 136446978;
              v197 = *v189;
              v198 = v189[1];

              sub_22CF0F5E0(v189, type metadata accessor for Activity);
              v199 = sub_22CEEE31C(v197, v198, &v312);

              *(v196 + 4) = v199;
              *(v196 + 12) = 2082;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
              v200 = sub_22D016DEC();
              v202 = v201;
              v275(v190, v191);
              v203 = sub_22CEEE31C(v200, v202, &v312);

              *(v196 + 14) = v203;
              *(v196 + 22) = 2082;
              v204 = v192 + *(v299 + 56);
              v205 = v294;
              sub_22D01469C();
              sub_22CF1A164(&unk_281443A20, MEMORY[0x277CC9578]);
              v206 = v295;
              v207 = sub_22D016DEC();
              v209 = v208;
              (v303)(v205, v206);
              sub_22CF0F5E0(v192, type metadata accessor for Activity);
              v210 = sub_22CEEE31C(v207, v209, &v312);
              v211 = v281;

              *(v196 + 24) = v210;
              *(v196 + 32) = 2050;
              *(v196 + 34) = v183;
              _os_log_impl(&dword_22CEE1000, v193, v194, "ReplicatorParticipant updating activity %{public}s due to incoming replicator record ID: %{public}s; updated: %{public}s (%{public}f)s", v196, 0x2Au);
              v212 = v311;
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v212, -1, -1);
              MEMORY[0x2318C6860](v196, -1, -1);

              v213 = v277;
              v214 = v302;
            }

            else
            {

              sub_22CF0F5E0(v192, type metadata accessor for Activity);
              v275(v190, v191);
              sub_22CF0F5E0(v189, type metadata accessor for Activity);
              v213 = v277;
              v214 = v302;
              v211 = v281;
            }
          }

          else
          {
            v215 = v169;
            v214 = v170;
            v216 = sub_22CF0B5E0();
            v217 = v279;
            if (v216 == 1)
            {
              if (qword_28143DA98 != -1)
              {
                swift_once();
              }

              v218 = sub_22D01637C();
              __swift_project_value_buffer(v218, qword_2814442F0);
              v219 = v283;
              v220 = v309;
              (v307)(v283, v311, v309);
              v221 = sub_22D01636C();
              v222 = sub_22D0168EC();
              if (os_log_type_enabled(v221, v222))
              {
                v223 = swift_slowAlloc();
                v224 = swift_slowAlloc();
                *&v312 = v224;
                *v223 = 136446210;
                sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
                v225 = sub_22D016DEC();
                v226 = v219;
                v227 = v215;
                v229 = v228;
                v275(v226, v220);
                v230 = sub_22CEEE31C(v225, v229, &v312);

                *(v223 + 4) = v230;
                _os_log_impl(&dword_22CEE1000, v221, v222, "Ignoring zombie activity: %{public}s", v223, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v224);
                MEMORY[0x2318C6860](v224, -1, -1);
                MEMORY[0x2318C6860](v223, -1, -1);

                v231 = v227;
              }

              else
              {

                v275(v219, v220);
                v231 = v215;
              }

              sub_22CF0F5E0(v231, type metadata accessor for Activity);
              (*(v301 + 8))(v304, v278);
              (*(v281 + 8))(v217, v280);
              sub_22CF0F5E0(v277, type metadata accessor for Activity);
              goto LABEL_16;
            }

            v305 = v180;
            v298 = v184;
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v232 = sub_22D01637C();
            __swift_project_value_buffer(v232, qword_2814442F0);
            v233 = v277;
            v234 = v282;
            sub_22CF0CBEC(v277, v282, type metadata accessor for Activity);
            v235 = v285;
            v236 = v309;
            (v307)(v285, v311, v309);
            v237 = v284;
            sub_22CF0CBEC(v233, v284, type metadata accessor for Activity);
            v238 = sub_22D01636C();
            v239 = sub_22D01690C();
            if (os_log_type_enabled(v238, v239))
            {
              v240 = swift_slowAlloc();
              v311 = swift_slowAlloc();
              *&v312 = v311;
              *v240 = 136446978;
              v241 = *v234;
              v242 = v234[1];

              v307 = type metadata accessor for Activity;
              sub_22CF0F5E0(v234, type metadata accessor for Activity);
              v243 = sub_22CEEE31C(v241, v242, &v312);

              *(v240 + 4) = v243;
              *(v240 + 12) = 2082;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
              v244 = sub_22D016DEC();
              v246 = v245;
              v275(v235, v236);
              v247 = sub_22CEEE31C(v244, v246, &v312);

              *(v240 + 14) = v247;
              *(v240 + 22) = 2082;
              v248 = v237 + *(v299 + 56);
              v249 = v294;
              sub_22D01469C();
              sub_22CF1A164(&unk_281443A20, MEMORY[0x277CC9578]);
              v250 = v295;
              v251 = sub_22D016DEC();
              v253 = v252;
              (v303)(v249, v250);
              sub_22CF0F5E0(v237, v307);
              v254 = sub_22CEEE31C(v251, v253, &v312);
              v211 = v281;

              *(v240 + 24) = v254;
              *(v240 + 32) = 2050;
              *(v240 + 34) = v183;
              _os_log_impl(&dword_22CEE1000, v238, v239, "ReplicatorParticipant creating activity %{public}s due to incoming replicator record ID: %{public}s; updated: %{public}s (%{public}f)s", v240, 0x2Au);
              v255 = v311;
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v255, -1, -1);
              MEMORY[0x2318C6860](v240, -1, -1);
            }

            else
            {

              sub_22CF0F5E0(v237, type metadata accessor for Activity);
              v275(v235, v236);
              sub_22CF0F5E0(v234, type metadata accessor for Activity);
              v211 = v281;
            }

            v213 = v277;
            sub_22CF0CBEC(v277, v296, type metadata accessor for Activity);
          }

          v256 = v296;
          swift_storeEnumTagMultiPayload();
          v258 = *v213;
          v257 = *(v213 + 8);
          v259 = v290;
          v260 = v291;
          sub_22CF0CBEC(v256, &v291[*(v290 + 24)], type metadata accessor for ActivityParticipantEvent.EventType);
          v261 = v259[7];
          v262 = *MEMORY[0x277CB9328];
          v263 = sub_22D01483C();
          (*(*(v263 - 8) + 104))(&v260[v261], v262, v263);
          v264 = v259[9];
          v265 = sub_22D0146BC();
          v266 = *(v265 - 8);
          (*(v266 + 16))(&v260[v264], &v305[v213], v265);
          v267 = (*(v266 + 56))(&v260[v264], 0, 1, v265);
          *v260 = v258;
          *(v260 + 1) = v257;
          *(v260 + 2) = v214;
          *(v260 + 3) = v308;
          v268 = &v260[v259[8]];
          v269 = v297;
          *v268 = v297;
          *(v268 + 1) = &off_28402B0C8;
          v260[v259[10]] = 0;
          v270 = *(v269 + 176);
          MEMORY[0x28223BE20](v267, v271);
          *(&v274 - 2) = sub_22CFA68AC;
          *(&v274 - 1) = v269;

          os_unfair_lock_lock(v270 + 4);
          sub_22CFA6864(&v312);
          os_unfair_lock_unlock(v270 + 4);
          if (v312)
          {
            v272 = *(&v312 + 1);
            ObjectType = swift_getObjectType();
            (*(v272 + 24))(v260, ObjectType, v272);
            swift_unknownObjectRelease();
          }

          sub_22CF0F5E0(v260, type metadata accessor for ActivityParticipantEvent);
          sub_22CF0F5E0(v296, type metadata accessor for ActivityParticipantEvent.EventType);
          sub_22CF0F5E0(v300, type metadata accessor for Activity);
          (*(v301 + 8))(v304, v278);
          (*(v211 + 8))(v279, v280);
          sub_22CF0F5E0(v213, type metadata accessor for Activity);
LABEL_16:
          __swift_destroy_boxed_opaque_existential_1Tm(&v314);
          return;
        }
      }

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v153 = sub_22D01637C();
      __swift_project_value_buffer(v153, qword_2814442F0);
      v154 = v302;
      v155 = v89;
      v156 = v309;
      (v307)(v302, v155, v309);
      v157 = sub_22D01636C();
      v158 = sub_22D0168EC();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *&v312 = v160;
        *v159 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
        v161 = sub_22D016DEC();
        v162 = v120;
        v164 = v163;
        v275(v154, v156);
        v165 = sub_22CEEE31C(v161, v164, &v312);

        *(v159 + 4) = v165;
        _os_log_impl(&dword_22CEE1000, v157, v158, "Received replicator record update with missing data: %{public}s", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v160);
        MEMORY[0x2318C6860](v160, -1, -1);
        MEMORY[0x2318C6860](v159, -1, -1);

        v137 = *(v281 + 8);
        v138 = v162;
        goto LABEL_34;
      }

      v275(v154, v156);
    }

    v137 = *(v281 + 8);
    v138 = v120;
    goto LABEL_34;
  }

  sub_22CEEC3D8(&v312, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v90 = sub_22D01637C();
  __swift_project_value_buffer(v90, qword_2814442F0);
  v91 = sub_22D01636C();
  v92 = sub_22D0168EC();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_22CEE1000, v91, v92, "Replicator is not available", v93, 2u);
    MEMORY[0x2318C6860](v93, -1, -1);
  }
}

uint64_t sub_22CF97468@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v28 - v13;
  v15 = *a2;
  v16 = a2[1];
  swift_beginAccess();
  v17 = *(a1 + 208);
  v18 = *(v17 + 16);
  v29 = v16;
  v30 = v15;
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = sub_22CEEC698(v15, v16);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    v22 = type metadata accessor for Activity();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v25 = 0;
    goto LABEL_6;
  }

  v21 = v19;
  v28[0] = *(v17 + 56);
  v22 = type metadata accessor for Activity();
  v23 = *(v22 - 8);
  v28[1] = v3;
  v24 = v23;
  sub_22CF0CBEC(v28[0] + *(v23 + 72) * v21, v14, type metadata accessor for Activity);

  v25 = 1;
  (*(v24 + 56))(v14, 0, 1, v22);
LABEL_6:
  sub_22CEEC3D8(v14, &qword_27D9F3810, &unk_22D018FA0);
  sub_22CF0CBEC(a2, v11, type metadata accessor for Activity);
  type metadata accessor for Activity();
  (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
  swift_beginAccess();
  v26 = v29;

  sub_22CF0BC5C(v11, v30, v26);
  result = swift_endAccess();
  *v31 = v25;
  return result;
}

void sub_22CF97730(uint64_t a1)
{
  v147 = a1;
  v146 = sub_22D0159DC();
  v2 = *(v146 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v146, v4);
  v144 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v142 = (&v128 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v139 = &v128 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v138 = &v128 - v14;
  v140 = sub_22D015A1C();
  v137 = *(v140 - 8);
  v15 = *(v137 + 64);
  v17 = MEMORY[0x28223BE20](v140, v16);
  v134 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v135 = &v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v128 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F20, &qword_22D01A908);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v128 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F28, &qword_22D01A910);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v128 - v34;
  v143 = sub_22D015A3C();
  v36 = *(v143 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v143, v38);
  v141 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22D01436C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22D0159BC();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8, v48);
  v50 = &v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v1;
  sub_22CEEB6DC(v1 + 32, &v148, &qword_27D9F2E28, &unk_22D01A838);
  if (v149)
  {
    v145 = v2;
    sub_22CFA3864(&v148, &v150);
    v51 = v147;
    sub_22D0159CC();
    if ((*(v41 + 48))(v50, 1, v40) != 1)
    {
      v129 = v36;
      v132 = v41;
      v52 = *(v41 + 32);
      v133 = v45;
      v131 = v40;
      v52(v45, v50, v40);
      __swift_project_boxed_opaque_existential_1(&v150, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
      v53 = v145;
      v54 = *(v145 + 72);
      v55 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_22D0187A0;
      v130 = *(v53 + 16);
      v130(v56 + v55, v51, v146);
      v57 = sub_22D0141BC();
      (*(*(v57 - 8) + 56))(v25, 1, 1, v57);
      v58 = sub_22D01587C();
      v128 = v53 + 16;
      v63 = v58;
      sub_22CEEC3D8(v25, &qword_27D9F2708, &qword_22D018FC0);

      sub_22CF8B4B0(v63, v30);

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
      if ((*(*(v64 - 8) + 48))(v30, 1, v64) == 1)
      {
        sub_22CEEC3D8(v30, &qword_27D9F2F20, &qword_22D01A908);
        (*(v129 + 56))(v35, 1, 1, v143);
        v65 = v132;
        v66 = v146;
      }

      else
      {
        v67 = v129;
        v68 = *(v129 + 32);
        v69 = v143;
        v68(v35, &v30[*(v64 + 48)], v143);
        (*(v67 + 56))(v35, 0, 1, v69);
        v70 = *(v145 + 8);
        v71 = v30;
        v66 = v146;
        v70(v71, v146);
        v72 = (*(v67 + 48))(v35, 1, v69);
        v65 = v132;
        if (v72 != 1)
        {
          v142 = v70;
          v86 = v141;
          v68(v141, v35, v69);
          v87 = v69;
          if (qword_27D9F1E60 != -1)
          {
            swift_once();
          }

          v88 = sub_22D01582C();
          __swift_project_value_buffer(v88, qword_27D9F40E8);
          v89 = sub_22D01596C();
          v90 = v140;
          if (v91)
          {
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v92 = sub_22D01637C();
            __swift_project_value_buffer(v92, qword_2814442F0);
            v93 = v139;
            v130(v139, v147, v66);
            v94 = sub_22D01636C();
            v95 = sub_22D0168EC();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *&v148 = v97;
              *v96 = 136446210;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
              v98 = sub_22D016DEC();
              v99 = v67;
              v101 = v100;
              v142(v93, v66);
              v102 = sub_22CEEE31C(v98, v101, &v148);

              *(v96 + 4) = v102;
              _os_log_impl(&dword_22CEE1000, v94, v95, "Received replicator record update with incompatible data: %{public}s", v96, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v97);
              MEMORY[0x2318C6860](v97, -1, -1);
              MEMORY[0x2318C6860](v96, -1, -1);

              (*(v99 + 8))(v141, v143);
            }

            else
            {

              v142(v93, v66);
              (*(v67 + 8))(v86, v87);
            }

            (*(v132 + 8))(v133, v131);
          }

          else
          {
            v103 = v89;
            v104 = sub_22D015A2C();
            if (*(v104 + 16) && (v105 = sub_22CFC1098(v103), (v106 & 1) != 0))
            {
              v107 = v137;
              v108 = v134;
              (*(v137 + 16))(v134, *(v104 + 56) + *(v137 + 72) * v105, v90);

              v109 = *(v107 + 32);
              v110 = v135;
              v111 = v109(v135, v108, v90);
              v142 = &v128;
              v112 = *(v136 + 16);
              MEMORY[0x28223BE20](v111, v113);
              *(&v128 - 4) = v110;
              *(&v128 - 3) = v103;
              v114 = v133;
              *(&v128 - 2) = v115;
              *(&v128 - 1) = v114;
              sub_22D01699C();
              (*(v67 + 8))(v86, v143);
              (*(v137 + 8))(v110, v140);
              (*(v65 + 8))(v114, v131);
            }

            else
            {

              if (qword_28143DA98 != -1)
              {
                swift_once();
              }

              v116 = sub_22D01637C();
              __swift_project_value_buffer(v116, qword_2814442F0);
              v117 = v138;
              v130(v138, v147, v66);
              v118 = sub_22D01636C();
              v119 = sub_22D0168EC();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                *&v148 = v121;
                *v120 = 136446210;
                sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
                v122 = sub_22D016DEC();
                v123 = v67;
                v125 = v124;
                v142(v117, v66);
                v126 = sub_22CEEE31C(v122, v125, &v148);

                *(v120 + 4) = v126;
                _os_log_impl(&dword_22CEE1000, v118, v119, "Received replicator record update with missing data: %{public}s", v120, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v121);
                v127 = v121;
                v65 = v132;
                MEMORY[0x2318C6860](v127, -1, -1);
                MEMORY[0x2318C6860](v120, -1, -1);

                (*(v123 + 8))(v141, v143);
              }

              else
              {

                v142(v117, v66);
                (*(v67 + 8))(v141, v87);
              }

              (*(v65 + 8))(v133, v131);
            }
          }

          goto LABEL_18;
        }
      }

      sub_22CEEC3D8(v35, &qword_27D9F2F28, &qword_22D01A910);
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v73 = sub_22D01637C();
      __swift_project_value_buffer(v73, qword_2814442F0);
      v74 = v142;
      v130(v142, v147, v66);
      v75 = sub_22D01636C();
      v76 = sub_22D0168EC();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v133;
      if (v77)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v148 = v80;
        *v79 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
        v81 = sub_22D016DEC();
        v83 = v82;
        (*(v145 + 8))(v74, v66);
        v84 = sub_22CEEE31C(v81, v83, &v148);

        *(v79 + 4) = v84;
        _os_log_impl(&dword_22CEE1000, v75, v76, "Received replicator record update but record does not exist: %{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        v85 = v80;
        v65 = v132;
        MEMORY[0x2318C6860](v85, -1, -1);
        MEMORY[0x2318C6860](v79, -1, -1);
      }

      else
      {

        (*(v145 + 8))(v74, v66);
      }

      (*(v65 + 8))(v78, v131);
    }

LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(&v150);
    return;
  }

  sub_22CEEC3D8(&v148, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v59 = sub_22D01637C();
  __swift_project_value_buffer(v59, qword_2814442F0);
  v60 = sub_22D01636C();
  v61 = sub_22D0168EC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_22CEE1000, v60, v61, "Replicator is not available", v62, 2u);
    MEMORY[0x2318C6860](v62, -1, -1);
  }
}

uint64_t sub_22CF98A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v65 = a3;
  v5 = sub_22D01436C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0158FC();
  v11 = sub_22D0159FC();
  v13 = v12;
  sub_22CFA6208();
  sub_22D0158EC();
  result = sub_22CEE7524(v11, v13);
  if (!v4)
  {
    v57 = 0;
    v58 = v6;
    v59 = v5;
    v60 = v10;
    v15 = v62[0];
    v16 = v62[1];
    v17 = v63;
    v18 = v64;
    swift_beginAccess();

    v19 = v61;
    v20 = sub_22CFA331C(v15, v16, v17, v18, v61);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    swift_endAccess();
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814442F0);
    v28 = v58;
    (*(v58 + 16))(v60, v19, v59);

    sub_22CFA625C(v20, v22);
    v29 = sub_22D01636C();
    v30 = sub_22D01690C();

    sub_22CFA62A0(v20, v22);
    LODWORD(v61) = v30;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = v24;
      v32 = v31;
      v56 = swift_slowAlloc();
      v62[0] = v56;
      *v32 = 136446722;
      if (v22)
      {
        v33 = 0x64657461647075;
      }

      else
      {
        v33 = 0x6465646461;
      }

      v53 = v20;
      v55 = v29;
      if (v22)
      {
        v34 = 0xE700000000000000;
      }

      else
      {
        v34 = 0xE500000000000000;
      }

      v35 = sub_22CEEE31C(v33, v34, v62);
      v52 = v26;
      v36 = v60;
      v37 = v28;
      v38 = v35;

      *(v32 + 4) = v38;
      *(v32 + 12) = 2082;
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
      v39 = v59;
      v40 = sub_22D016DEC();
      v42 = v41;
      (*(v37 + 8))(v36, v39);
      v43 = sub_22CEEE31C(v40, v42, v62);

      *(v32 + 14) = v43;
      *(v32 + 22) = 2082;
      v46 = sub_22CF92DF8(v44, v22, v45, v52, 0, v16, 0, v18);
      v48 = v47;

      sub_22CFA62A0(v53, v22);
      v49 = sub_22CEEE31C(v46, v48, v62);

      *(v32 + 24) = v49;
      v50 = v55;
      _os_log_impl(&dword_22CEE1000, v55, v61, "ReplicatorParticipant got %{public}s subscription from %{public}s:\n%{public}s", v32, 0x20u);
      v51 = v56;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v51, -1, -1);
      MEMORY[0x2318C6860](v32, -1, -1);
    }

    else
    {

      sub_22CFA62A0(v20, v22);

      (*(v28 + 8))(v60, v59);
    }

    return sub_22CF8B8F0();
  }

  return result;
}

uint64_t sub_22CF98F1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22D01495C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = type metadata accessor for ActivityParticipantEvent(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v14 = sub_22D01637C();
  __swift_project_value_buffer(v14, qword_2814442F0);

  v15 = sub_22D01636C();
  v16 = sub_22D01690C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&aBlock = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_22CEEE31C(a1, a2, &aBlock);
    _os_log_impl(&dword_22CEE1000, v15, v16, "ReplicatorParticipant is dismissing activity cancelled on remote device: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2318C6860](v18, -1, -1);
    MEMORY[0x2318C6860](v17, -1, -1);
  }

  v19 = v9[6];
  sub_22D01494C();
  sub_22D01485C();
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  swift_storeEnumTagMultiPayload();
  v20 = v9[7];
  v21 = *MEMORY[0x277CB9328];
  v22 = sub_22D01483C();
  (*(*(v22 - 8) + 104))(v13 + v20, v21, v22);
  v23 = v9[9];
  v24 = sub_22D0146BC();
  (*(*(v24 - 8) + 56))(v13 + v23, 1, 1, v24);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = 0;
  v13[3] = 0;
  v25 = (v13 + v9[8]);
  *v25 = v3;
  v25[1] = &off_28402B0C8;
  *(v13 + v9[10]) = 0;
  v26 = *(v3 + 16);
  v27 = swift_allocObject();
  v27[2] = v3;
  v27[3] = a1;
  v27[4] = a2;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_22CFA6324;
  *(v28 + 24) = v27;
  v39 = sub_22CEF4034;
  v40 = v28;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v37 = sub_22CEF3C20;
  v38 = &block_descriptor_76_0;
  v29 = _Block_copy(&aBlock);
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  dispatch_sync(v26, v29);
  _Block_release(v29);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    v32 = *(v3 + 176);
    MEMORY[0x28223BE20](result, v31);
    *&v35[-16] = sub_22CFA68AC;
    *&v35[-8] = v3;
    os_unfair_lock_lock(v32 + 4);
    sub_22CFA6864(&aBlock);
    os_unfair_lock_unlock(v32 + 4);
    if (aBlock)
    {
      v33 = *(&aBlock + 1);
      ObjectType = swift_getObjectType();
      (*(v33 + 24))(v13, ObjectType, v33);
      swift_unknownObjectRelease();
    }

    sub_22CF0F5E0(v13, type metadata accessor for ActivityParticipantEvent);
  }

  return result;
}

void sub_22CF993D0(uint64_t a1)
{
  v3 = sub_22D015A5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v193 = v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v191 = v175 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = v175 - v13;
  v15 = sub_22D0159DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v206 = v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v198 = v175 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v192 = v175 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v190 = v175 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v184 = v175 - v31;
  v187 = sub_22D01430C();
  v186 = *(v187 - 8);
  v32 = *(v186 + 64);
  v34 = MEMORY[0x28223BE20](v187, v33);
  v183 = v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v185 = v175 - v37;
  v188 = type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal(0);
  v38 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188, v39);
  v189 = v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22D015A1C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v194 = v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8, v48);
  v50 = v175 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F20, &qword_22D01A908);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8, v53);
  v196 = v175 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F28, &qword_22D01A910);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8, v57);
  v197 = v175 - v58;
  v200 = sub_22D015A3C();
  v201 = *(v200 - 8);
  v59 = *(v201 + 64);
  MEMORY[0x28223BE20](v200, v60);
  v195 = v175 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CEEB6DC(v1 + 32, &v207, &qword_27D9F2E28, &unk_22D01A838);
  if (v208)
  {
    v178 = v42;
    v179 = v41;
    v177 = v14;
    v181 = v4;
    v182 = v3;
    sub_22CFA3864(&v207, &v209);
    v199 = v212;
    __swift_project_boxed_opaque_existential_1(&v209, v210);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
    v63 = *(v16 + 72);
    v64 = *(v16 + 80);
    v65 = swift_allocObject();
    v180 = xmmword_22D0187A0;
    *(v65 + 16) = xmmword_22D0187A0;
    v204 = v16;
    v66 = *(v16 + 16);
    v202 = a1;
    v205 = v15;
    v203 = v66;
    v66((v65 + ((v64 + 32) & ~v64)), a1, v15);
    v67 = sub_22D0141BC();
    (*(*(v67 - 8) + 56))(v50, 1, 1, v67);
    v68 = sub_22D01587C();
    v175[1] = v63;
    v175[2] = v64;
    v175[3] = v62;
    v176 = (v64 + 32) & ~v64;
    v199 = v16 + 16;
    v73 = v68;
    sub_22CEEC3D8(v50, &qword_27D9F2708, &qword_22D018FC0);

    v74 = v196;
    sub_22CF8B4B0(v73, v196);

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
    if ((*(*(v75 - 8) + 48))(v74, 1, v75) == 1)
    {
      sub_22CEEC3D8(v74, &qword_27D9F2F20, &qword_22D01A908);
      v76 = v197;
      (*(v201 + 56))(v197, 1, 1, v200);
      v77 = v202;
      v78 = v198;
LABEL_11:
      sub_22CEEC3D8(v76, &qword_27D9F2F28, &qword_22D01A910);
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v85 = sub_22D01637C();
      __swift_project_value_buffer(v85, qword_2814442F0);
      v86 = v205;
      v203(v78, v77, v205);
      v87 = sub_22D01636C();
      v88 = sub_22D0168EC();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v204;
      if (v89)
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&v207 = v92;
        *v91 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
        v93 = sub_22D016DEC();
        v95 = v94;
        (*(v90 + 8))(v78, v86);
        v96 = sub_22CEEE31C(v93, v95, &v207);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_22CEE1000, v87, v88, "Received local dismiss record update but record does not exist: %{public}s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        MEMORY[0x2318C6860](v92, -1, -1);
        MEMORY[0x2318C6860](v91, -1, -1);
      }

      else
      {

        (*(v90 + 8))(v78, v86);
      }

      goto LABEL_16;
    }

    v79 = v201;
    v80 = *(v201 + 32);
    v76 = v197;
    v81 = v200;
    v80(v197, v74 + *(v75 + 48), v200);
    (*(v79 + 56))(v76, 0, 1, v81);
    v83 = v204 + 8;
    v82 = *(v204 + 8);
    v82(v74, v205);
    v84 = (*(v79 + 48))(v76, 1, v81);
    v77 = v202;
    v78 = v198;
    if (v84 == 1)
    {
      goto LABEL_11;
    }

    v198 = v82;
    v80(v195, v76, v81);
    if (qword_27D9F1E60 != -1)
    {
      swift_once();
    }

    v97 = sub_22D01582C();
    __swift_project_value_buffer(v97, qword_27D9F40E8);
    v98 = sub_22D01596C();
    v99 = v203;
    v100 = v194;
    if (v101)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v102 = sub_22D01637C();
      __swift_project_value_buffer(v102, qword_2814442F0);
      v103 = v192;
      v104 = v205;
      v99(v192, v77, v205);
      v105 = sub_22D01636C();
      v106 = sub_22D0168EC();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = v103;
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&v207 = v109;
        *v108 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
        v110 = sub_22D016DEC();
        v112 = v111;
        v113 = v107;
        v99 = v203;
        (v198)(v113, v104);
        v114 = sub_22CEEE31C(v110, v112, &v207);

        *(v108 + 4) = v114;
        _os_log_impl(&dword_22CEE1000, v105, v106, "Received local dismiss record update with incompatible data: %{public}s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        MEMORY[0x2318C6860](v109, -1, -1);
        MEMORY[0x2318C6860](v108, -1, -1);
      }

      else
      {

        (v198)(v103, v104);
      }

      v138 = v176;
      __swift_project_boxed_opaque_existential_1(&v209, v210);
      v139 = swift_allocObject();
      *(v139 + 16) = v180;
      v99((v139 + v138), v202, v104);
      v140 = *MEMORY[0x277D46820];
      v141 = v181;
      v142 = *(v181 + 104);
      v143 = &v213;
    }

    else
    {
      v115 = v98;
      v116 = sub_22D015A2C();
      if (*(v116 + 16))
      {
        v117 = sub_22CFC1098(v115);
        if (v118)
        {
          v196 = v83;
          (*(v178 + 16))(v100, *(v116 + 56) + *(v178 + 72) * v117, v179);

          v119 = v211;
          v197 = __swift_project_boxed_opaque_existential_1(&v209, v210);
          v120 = sub_22D0159FC();
          v122 = v121;
          v123 = *(v119 + 8);
          sub_22CF1A164(&qword_27D9F2E88, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
          sub_22CF1A164(&qword_27D9F2E90, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
          v124 = v189;
          sub_22D015A4C();
          sub_22CEE7524(v120, v122);
          v148 = v185;
          sub_22D0142DC();
          v149 = sub_22D01427C();
          v150 = *(v186 + 8);
          v151 = v187;
          v150(v148, v187);
          if ((v149 & 1) == 0)
          {
            sub_22D01425C();
            v152 = v183;
            sub_22D0142DC();
            v153 = sub_22D01428C();
            v150(v152, v151);
            v150(v148, v151);
            v154 = v195;
            if ((v153 & 1) == 0)
            {
              sub_22CF0F5E0(v124, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
              (*(v178 + 8))(v194, v179);
              (*(v201 + 8))(v154, v81);
              goto LABEL_16;
            }
          }

          if (qword_28143DA98 != -1)
          {
            swift_once();
          }

          v155 = sub_22D01637C();
          __swift_project_value_buffer(v155, qword_2814442F0);
          v156 = v184;
          v157 = v202;
          v158 = v205;
          v159 = v203;
          v203(v184, v202, v205);
          v160 = sub_22D01636C();
          v161 = sub_22D01690C();
          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            *&v207 = v163;
            *v162 = 136446210;
            sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
            v164 = sub_22D016DEC();
            v165 = v156;
            v167 = v166;
            (v198)(v165, v158);
            v168 = sub_22CEEE31C(v164, v167, &v207);

            *(v162 + 4) = v168;
            _os_log_impl(&dword_22CEE1000, v160, v161, "Deleting obsolete dismiss record: %{public}s", v162, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v163);
            v169 = v163;
            v157 = v202;
            MEMORY[0x2318C6860](v169, -1, -1);
            MEMORY[0x2318C6860](v162, -1, -1);
          }

          else
          {

            (v198)(v156, v158);
          }

          v170 = v176;
          __swift_project_boxed_opaque_existential_1(&v209, v210);
          v171 = swift_allocObject();
          *(v171 + 16) = v180;
          v159(v171 + v170, v157, v158);
          v172 = v181;
          v173 = v177;
          v174 = v182;
          (*(v181 + 104))(v177, *MEMORY[0x277D46820], v182);
          sub_22D01586C();

          (*(v172 + 8))(v173, v174);
          sub_22CF0F5E0(v189, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
          (*(v178 + 8))(v194, v179);
LABEL_36:
          (*(v201 + 8))(v195, v200);
LABEL_16:
          __swift_destroy_boxed_opaque_existential_1Tm(&v209);
          return;
        }
      }

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v125 = sub_22D01637C();
      __swift_project_value_buffer(v125, qword_2814442F0);
      v126 = v190;
      v127 = v205;
      v99(v190, v77, v205);
      v128 = sub_22D01636C();
      v129 = sub_22D0168EC();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v207 = v131;
        *v130 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
        v132 = sub_22D016DEC();
        v134 = v133;
        (v198)(v126, v127);
        v135 = sub_22CEEE31C(v132, v134, &v207);

        *(v130 + 4) = v135;
        _os_log_impl(&dword_22CEE1000, v128, v129, "Received local dismiss record update with missing data: %{public}s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        v136 = v131;
        v77 = v202;
        MEMORY[0x2318C6860](v136, -1, -1);
        v137 = v130;
        v99 = v203;
        MEMORY[0x2318C6860](v137, -1, -1);
      }

      else
      {

        (v198)(v126, v127);
      }

      v144 = v176;
      __swift_project_boxed_opaque_existential_1(&v209, v210);
      v145 = swift_allocObject();
      *(v145 + 16) = v180;
      v99((v145 + v144), v77, v127);
      v140 = *MEMORY[0x277D46820];
      v141 = v181;
      v142 = *(v181 + 104);
      v143 = &v212;
    }

    v146 = *(v143 - 32);
    v147 = v182;
    v142(v146, v140, v182);
    sub_22D01586C();

    (*(v141 + 8))(v146, v147);
    goto LABEL_36;
  }

  sub_22CEEC3D8(&v207, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v69 = sub_22D01637C();
  __swift_project_value_buffer(v69, qword_2814442F0);
  v70 = sub_22D01636C();
  v71 = sub_22D0168EC();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_22CEE1000, v70, v71, "Replicator is not available", v72, 2u);
    MEMORY[0x2318C6860](v72, -1, -1);
  }
}

uint64_t sub_22CF9ADA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  v6 = *(*(v97 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v97, v7);
  v96 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v95 = &v84 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v94 = &v84 - v14;
  v105 = sub_22D01436C();
  v99 = *(v105 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v105, v16);
  v98 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Activity();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v85 = (&v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v84 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v87 = &v84 - v34;
  swift_beginAccess();
  v86 = a1;
  v35 = *(a1 + 200);
  if (*(v35 + 16))
  {

    v36 = sub_22CEEC698(a2, a3);
    if (v37)
    {
      sub_22CF0CBEC(*(v35 + 56) + *(v19 + 72) * v36, v87, type metadata accessor for Activity);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 1;
  }

  v39 = *(v19 + 56);
  v40 = v87;
  v39(v87, v38, 1, v18);
  sub_22CEEB6DC(v40, v32, &qword_27D9F3810, &unk_22D018FA0);
  if ((*(v19 + 48))(v32, 1, v18) == 1)
  {
    sub_22CEEC3D8(v40, &qword_27D9F3810, &unk_22D018FA0);
    v41 = v32;
    return sub_22CEEC3D8(v41, &qword_27D9F3810, &unk_22D018FA0);
  }

  sub_22CF0FFD8(v32, v85, type metadata accessor for Activity);
  v39(v28, 1, 1, v18);
  v42 = v86;
  swift_beginAccess();

  sub_22CF0BC5C(v28, a2, a3);
  swift_endAccess();
  swift_beginAccess();
  v43 = *(v42 + 216);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x277D84F90];
  if (!v44)
  {
LABEL_28:
    v83 = v85;
    sub_22CF8F470(v85, v45);

    sub_22CF0F5E0(v83, type metadata accessor for Activity);
    v41 = v87;
    return sub_22CEEC3D8(v41, &qword_27D9F3810, &unk_22D018FA0);
  }

  v106 = MEMORY[0x277D84F90];

  sub_22CF442C0(0, v44, 0);
  v45 = v106;
  v46 = v43 + 64;
  v47 = -1 << *(v43 + 32);
  result = sub_22D016AEC();
  v49 = result;
  v50 = 0;
  v51 = v99;
  v92 = v99 + 16;
  v91 = v99 + 32;
  v88 = v43 + 72;
  v52 = v105;
  v89 = v44;
  v93 = v43 + 64;
  v90 = v43;
  while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v43 + 32))
  {
    v54 = v49 >> 6;
    if ((*(v46 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
    {
      goto LABEL_31;
    }

    v100 = v50;
    v101 = *(v43 + 36);
    v102 = 1 << v49;
    v55 = *(v43 + 48);
    v103 = *(v51 + 72);
    v104 = v45;
    v56 = v94;
    (*(v51 + 16))(v94, v55 + v103 * v49, v52);
    v57 = *(v43 + 56) + 32 * v49;
    v58 = *v57;
    v59 = *(v57 + 8);
    v60 = *(v57 + 16);
    v61 = *(v57 + 24);
    v62 = *(v51 + 32);
    v63 = v95;
    v62(v95, v56, v105);
    v64 = v97;
    v65 = &v63[*(v97 + 48)];
    *v65 = v58;
    *(v65 + 1) = v59;
    v65[16] = v60;
    *(v65 + 3) = v61;
    v66 = v63;
    v67 = v96;
    sub_22CEF0368(v66, v96, &qword_27D9F2E78, &qword_22D01A888);
    v68 = *(v64 + 48);
    v45 = v104;
    v69 = v67 + v68;
    v70 = *(v67 + v68 + 8);

    v71 = *(v69 + 24);
    v52 = v105;

    v72 = v98;
    v62(v98, v67, v52);
    v106 = v45;
    v74 = *(v45 + 16);
    v73 = *(v45 + 24);
    if (v74 >= v73 >> 1)
    {
      sub_22CF442C0(v73 > 1, v74 + 1, 1);
      v72 = v98;
      v45 = v106;
    }

    *(v45 + 16) = v74 + 1;
    v75 = v99;
    result = (v62)(v45 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + v74 * v103, v72, v52);
    v43 = v90;
    v53 = 1 << *(v90 + 32);
    v46 = v93;
    if (v49 >= v53)
    {
      goto LABEL_32;
    }

    v76 = *(v93 + 8 * v54);
    if ((v76 & v102) == 0)
    {
      goto LABEL_33;
    }

    if (v101 != *(v90 + 36))
    {
      goto LABEL_34;
    }

    v51 = v75;
    v77 = v76 & (-2 << (v49 & 0x3F));
    if (v77)
    {
      v53 = __clz(__rbit64(v77)) | v49 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v78 = v54 << 6;
      v79 = v54 + 1;
      v80 = (v88 + 8 * v54);
      while (v79 < (v53 + 63) >> 6)
      {
        v82 = *v80++;
        v81 = v82;
        v78 += 64;
        ++v79;
        if (v82)
        {
          result = sub_22CF44CF8(v49, v101, 0);
          v53 = __clz(__rbit64(v81)) + v78;
          goto LABEL_12;
        }
      }

      result = sub_22CF44CF8(v49, v101, 0);
    }

LABEL_12:
    v50 = v100 + 1;
    v49 = v53;
    if (v100 + 1 == v89)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_22CF9B574()
{
  v1 = v0;
  v189 = sub_22D015A5C();
  v204 = *(v189 - 8);
  v2 = *(v204 + 64);
  MEMORY[0x28223BE20](v189, v3);
  v5 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v6 = *(*(v203 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v203, v7);
  v202 = (&v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8, v10);
  v201 = &v187 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v200 = &v187 - v14;
  v205 = sub_22D0159DC();
  v206 = *(v205 - 8);
  v15 = *(v206 + 64);
  v17 = MEMORY[0x28223BE20](v205, v16);
  v191 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v188 = &v187 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v195 = &v187 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v193 = &v187 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v199 = &v187 - v29;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v30 = *(*(v212 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v212, v31);
  v211 = &v187 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v210 = (&v187 - v36);
  MEMORY[0x28223BE20](v35, v37);
  v209 = &v187 - v38;
  v39 = sub_22D01659C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = (&v187 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(v1 + 16);
  *v44 = v45;
  (*(v40 + 104))(v44, *MEMORY[0x277D85200], v39);
  v46 = v45;
  LOBYTE(v45) = sub_22D0165BC();
  (*(v40 + 8))(v44, v39);
  if ((v45 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_22CEEB6DC(v1 + 32, &v216, &qword_27D9F2E28, &unk_22D01A838);
  if (v217)
  {
    sub_22CFA3864(&v216, &v219);
    if (qword_28143DA98 != -1)
    {
      goto LABEL_103;
    }

    while (1)
    {
      v47 = sub_22D01637C();
      v190 = __swift_project_value_buffer(v47, qword_2814442F0);
      v48 = sub_22D01636C();
      v49 = sub_22D01690C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_22CEE1000, v48, v49, "Reconciling locally owned activity records", v50, 2u);
        MEMORY[0x2318C6860](v50, -1, -1);
      }

      v51 = *(v1 + 120);
      v52 = *(v1 + 128);
      __swift_project_boxed_opaque_existential_1((v1 + 96), v51);
      v53 = (*(v52 + 8))(v51, v52);
      v1 = 0;
      v54 = sub_22CFA1600(v53, sub_22CFA1770, sub_22CFA1770);

      v55 = *(v54 + 16);
      v187 = v5;
      if (v55)
      {
        v197 = 0;
        *&v216 = MEMORY[0x277D84F90];
        sub_22CF4412C(0, v55, 0);
        v56 = v216;
        v57 = (v54 + 64);
        v58 = -1 << *(v54 + 32);
        v59 = sub_22D016AEC();
        v60 = 0;
        v198 = v54 + 72;
        v207 = v55;
        v208 = (v54 + 64);
        do
        {
          if (v59 < 0 || v59 >= 1 << *(v54 + 32))
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          v64 = v59 >> 6;
          if ((v57[v59 >> 6] & (1 << v59)) == 0)
          {
            goto LABEL_92;
          }

          v65 = *(v54 + 36);
          v213 = v60;
          v214 = v65;
          v215 = v56;
          v66 = v212;
          v67 = *(v212 + 48);
          v68 = *(v54 + 56);
          v69 = (*(v54 + 48) + 16 * v59);
          v71 = *v69;
          v70 = v69[1];
          v72 = v68 + *(*(type metadata accessor for Activity() - 8) + 72) * v59;
          v73 = v209;
          sub_22CF0CBEC(v72, &v209[v67], type metadata accessor for Activity);
          v74 = v54;
          v75 = v210;
          *v210 = v71;
          v75[1] = v70;
          sub_22CF0FFD8(&v73[v67], v75 + *(v66 + 48), type metadata accessor for Activity);
          v76 = v75;
          v77 = v211;
          sub_22CEF0368(v76, v211, &unk_27D9F3840, &unk_22D01A2B0);
          v78 = *v77;
          v5 = v77[1];
          v79 = *(v66 + 48);
          v56 = v215;

          sub_22CF0F5E0(v77 + v79, type metadata accessor for Activity);
          *&v216 = v56;
          v1 = *(v56 + 16);
          v80 = *(v56 + 24);
          if (v1 >= v80 >> 1)
          {
            sub_22CF4412C((v80 > 1), v1 + 1, 1);
            v56 = v216;
          }

          *(v56 + 16) = v1 + 1;
          v81 = v56 + 16 * v1;
          *(v81 + 32) = v78;
          *(v81 + 40) = v5;
          v61 = 1 << *(v74 + 32);
          if (v59 >= v61)
          {
            goto LABEL_93;
          }

          v57 = v208;
          v82 = v208[v64];
          if ((v82 & (1 << v59)) == 0)
          {
            goto LABEL_94;
          }

          v54 = v74;
          if (v214 != *(v74 + 36))
          {
            goto LABEL_95;
          }

          v83 = v82 & (-2 << (v59 & 0x3F));
          if (v83)
          {
            v61 = __clz(__rbit64(v83)) | v59 & 0x7FFFFFFFFFFFFFC0;
            v62 = v207;
            v63 = v213;
          }

          else
          {
            v5 = v64 << 6;
            v84 = v64 + 1;
            v85 = (v198 + 8 * v64);
            v62 = v207;
            while (v84 < (v61 + 63) >> 6)
            {
              v86 = *v85++;
              v1 = v86;
              v5 += 64;
              ++v84;
              if (v86)
              {
                sub_22CF44CF8(v59, v214, 0);
                v61 = __clz(__rbit64(v1)) + v5;
                goto LABEL_24;
              }
            }

            sub_22CF44CF8(v59, v214, 0);
LABEL_24:
            v63 = v213;
          }

          v60 = (v63 + 1);
          v59 = v61;
        }

        while (v60 != v62);

        v1 = v197;
      }

      else
      {

        v56 = MEMORY[0x277D84F90];
      }

      v91 = sub_22CF7BDC4(v56);

      __swift_project_boxed_opaque_existential_1(&v219, v220);
      v92 = sub_22D01584C();
      if (v1)
      {
        break;
      }

      v5 = sub_22CFA1600(v92, sub_22CFA1E18, sub_22CFA1E18);
      v194 = 0;

      v93 = *(v5 + 16);
      v209 = v91;
      if (!v93)
      {

        v94 = MEMORY[0x277D84F90];
        v1 = v204;
        v99 = v206;
        goto LABEL_53;
      }

      *&v216 = MEMORY[0x277D84F90];
      sub_22CF4427C(0, v93, 0);
      v94 = v216;
      v95 = v5 + 64;
      v96 = -1 << *(v5 + 32);
      v97 = sub_22D016AEC();
      v98 = 0;
      v99 = v206;
      v208 = (v206 + 16);
      v207 = (v206 + 32);
      v192 = v5 + 72;
      v196 = v93;
      v197 = v5 + 64;
      v198 = v5;
      while (1)
      {
        if (v97 < 0 || v97 >= 1 << *(v5 + 32))
        {
          goto LABEL_97;
        }

        if ((*(v95 + 8 * (v97 >> 6)) & (1 << v97)) == 0)
        {
          break;
        }

        v212 = 1 << v97;
        v213 = v97 >> 6;
        v210 = v98;
        v211 = *(v5 + 36);
        v215 = v94;
        v102 = v203;
        v103 = *(v203 + 48);
        v104 = *(v5 + 48);
        v214 = *(v99 + 72);
        v105 = v200;
        v106 = v205;
        (*(v99 + 16))(v200, v104 + v214 * v97, v205);
        v107 = *(v5 + 56);
        v108 = v99;
        v109 = sub_22D01436C();
        v110 = *(v109 - 8);
        (*(v110 + 16))(&v105[v103], v107 + *(v110 + 72) * v97, v109);
        v111 = *(v108 + 32);
        v112 = v201;
        v111(v201, v105, v106);
        v113 = &v105[v103];
        v114 = v199;
        (*(v110 + 32))(&v112[*(v102 + 48)], v113, v109);
        v115 = v112;
        v116 = v202;
        sub_22CEF0368(v115, v202, &qword_27D9F2F00, &unk_22D01A8D0);
        v117 = *(v102 + 48);
        v94 = v215;
        v111(v114, v116, v106);
        (*(v110 + 8))(v116 + v117, v109);
        *&v216 = v94;
        v119 = *(v94 + 16);
        v118 = *(v94 + 24);
        v1 = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          sub_22CF4427C(v118 > 1, v119 + 1, 1);
          v94 = v216;
        }

        *(v94 + 16) = v1;
        v111((v94 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + v119 * v214), v114, v106);
        v5 = v198;
        v100 = 1 << *(v198 + 32);
        if (v97 >= v100)
        {
          goto LABEL_99;
        }

        v95 = v197;
        v120 = *(v197 + 8 * v213);
        if ((v120 & v212) == 0)
        {
          goto LABEL_100;
        }

        if (v211 != *(v198 + 36))
        {
          goto LABEL_101;
        }

        v121 = v120 & (-2 << (v97 & 0x3F));
        if (v121)
        {
          v100 = __clz(__rbit64(v121)) | v97 & 0x7FFFFFFFFFFFFFC0;
          v91 = v209;
          v101 = v196;
        }

        else
        {
          v122 = v213 << 6;
          v123 = v213 + 1;
          v124 = (v192 + 8 * v213);
          v91 = v209;
          v101 = v196;
          while (v123 < (v100 + 63) >> 6)
          {
            v126 = *v124++;
            v125 = v126;
            v122 += 64;
            ++v123;
            if (v126)
            {
              sub_22CF44CF8(v97, v211, 0);
              v100 = __clz(__rbit64(v125)) + v122;
              goto LABEL_36;
            }
          }

          sub_22CF44CF8(v97, v211, 0);
        }

LABEL_36:
        v98 = (v210 + 1);
        v97 = v100;
        v1 = v204;
        v99 = v206;
        if ((v210 + 1) == v101)
        {

LABEL_53:
          v127 = sub_22CF7C060(v94);

          v129 = 0;
          v131 = v127 + 56;
          v130 = *(v127 + 56);
          v214 = v127;
          v132 = 1 << *(v127 + 32);
          if (v132 < 64)
          {
            v133 = ~(-1 << v132);
          }

          else
          {
            v133 = -1;
          }

          v134 = v133 & v130;
          v135 = (v132 + 63) >> 6;
          v215 = v99 + 16;
          v213 = v99 + 32;
          v136 = v91 + 56;
          v207 = MEMORY[0x277D84F90];
          v212 = v99 + 8;
          *&v128 = 136446210;
          v203 = v128;
          if ((v133 & v130) == 0)
          {
            goto LABEL_60;
          }

LABEL_64:
          while (1)
          {
            v138 = __clz(__rbit64(v134));
            v134 &= v134 - 1;
            v139 = *(v214 + 48);
            v210 = *(v99 + 72);
            v140 = v193;
            v141 = v205;
            v211 = *(v99 + 16);
            (v211)(v193, v139 + v210 * (v138 | (v129 << 6)), v205);
            v5 = v195;
            v208 = *(v99 + 32);
            (v208)(v195, v140, v141);
            v142 = sub_22D01598C();
            *&v216 = 46;
            *(&v216 + 1) = 0xE100000000000000;
            MEMORY[0x28223BE20](v142, v143);
            *(&v187 - 2) = &v216;
            v144 = v194;
            v147 = sub_22D0046B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22CFA687C, (&v187 - 4), v145, v146, v218);
            v194 = v144;
            if (!v147[2])
            {
              break;
            }

            v148 = v147[4];
            v149 = v147[5];
            v150 = v147[6];
            v151 = v147[7];

            v152 = v209;

            v153 = MEMORY[0x2318C5820](v148, v149, v150, v151);
            v155 = v154;

            if (*(v152 + 2))
            {
              v156 = *(v152 + 5);
              sub_22D016EAC();
              sub_22D0166DC();
              v157 = sub_22D016ECC();
              v158 = -1 << v152[32];
              v159 = v157 & ~v158;
              if ((*(v136 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159))
              {
                v5 = ~v158;
                while (1)
                {
                  v160 = (*(v152 + 6) + 16 * v159);
                  v161 = *v160 == v153 && v160[1] == v155;
                  if (v161 || (sub_22D016DFC() & 1) != 0)
                  {
                    break;
                  }

                  v159 = (v159 + 1) & v5;
                  if (((*(v136 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                (*v212)(v195, v205);
LABEL_59:
                v1 = v204;
                v99 = v206;
                if (!v134)
                {
                  goto LABEL_60;
                }

                continue;
              }
            }

LABEL_74:

            v162 = v188;
            v163 = v205;
            (v211)(v188, v195, v205);
            v164 = sub_22D01636C();
            v165 = sub_22D01690C();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              v201 = v166;
              v202 = swift_slowAlloc();
              *&v216 = v202;
              *v166 = v203;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
              LODWORD(v200) = v165;
              v167 = sub_22D016DEC();
              v168 = v162;
              v170 = v169;
              v5 = *v212;
              (*v212)(v168, v163);
              v171 = sub_22CEEE31C(v167, v170, &v216);

              v172 = v201;
              *(v201 + 4) = v171;
              v173 = v172;
              _os_log_impl(&dword_22CEE1000, v164, v200, "Found record for non-existent activity: %{public}s", v172, 0xCu);
              v174 = v202;
              __swift_destroy_boxed_opaque_existential_1Tm(v202);
              MEMORY[0x2318C6860](v174, -1, -1);
              MEMORY[0x2318C6860](v173, -1, -1);
            }

            else
            {

              v175 = v162;
              v5 = *v212;
              (*v212)(v175, v163);
            }

            (v211)(v191, v195, v163);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v207 = sub_22CFCE5C0(0, v207[2] + 1, 1, v207);
            }

            v177 = v207[2];
            v176 = v207[3];
            v178 = v205;
            if (v177 >= v176 >> 1)
            {
              v180 = sub_22CFCE5C0(v176 > 1, v177 + 1, 1, v207);
              v178 = v205;
              v207 = v180;
            }

            (v5)(v195, v178);
            v179 = v207;
            v207[2] = v177 + 1;
            v99 = v206;
            (v208)(v179 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + v177 * v210, v191, v178);
            v1 = v204;
            if (!v134)
            {
LABEL_60:
              while (1)
              {
                v137 = v129 + 1;
                if (__OFADD__(v129, 1))
                {
                  break;
                }

                if (v137 >= v135)
                {

                  __swift_project_boxed_opaque_existential_1(&v219, v220);
                  v181 = v187;
                  v182 = v189;
                  (*(v1 + 104))(v187, *MEMORY[0x277D46828], v189);
                  v183 = v1;
                  v1 = v194;
                  sub_22D01586C();
                  if (v1)
                  {
                    (*(v183 + 8))(v181, v182);
                    goto LABEL_86;
                  }

                  (*(v183 + 8))(v181, v182);

                  goto LABEL_89;
                }

                v134 = *(v131 + 8 * v137);
                ++v129;
                if (v134)
                {
                  v129 = v137;
                  goto LABEL_64;
                }
              }

LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }
          }

          (*v212)(v5, v141);

          goto LABEL_59;
        }
      }

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
      swift_once();
    }

LABEL_86:

    v184 = sub_22D01636C();
    v185 = sub_22D0168EC();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 0;
      _os_log_impl(&dword_22CEE1000, v184, v185, "Failed to resolve locally owned activity records", v186, 2u);
      MEMORY[0x2318C6860](v186, -1, -1);
    }

LABEL_89:
    __swift_destroy_boxed_opaque_existential_1Tm(&v219);
  }

  else
  {
    sub_22CEEC3D8(&v216, &qword_27D9F2E28, &unk_22D01A838);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v87 = sub_22D01637C();
    __swift_project_value_buffer(v87, qword_2814442F0);
    v88 = sub_22D01636C();
    v89 = sub_22D0168EC();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_22CEE1000, v88, v89, "Replicator is not available", v90, 2u);
      MEMORY[0x2318C6860](v90, -1, -1);
    }
  }
}

void sub_22CF9CB04()
{
  v1 = v0;
  v172 = sub_22D0164CC();
  v2 = *(v172 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v172, v4);
  v171 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22D01653C();
  v6 = *(v170 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v170, v8);
  v169 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01495C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v168 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for ActivityParticipantEvent(0);
  v166 = *(v167 - 8);
  v14 = *(v166 + 64);
  v16 = MEMORY[0x28223BE20](v167, v15);
  v164 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v163 = (&v150 - v19);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v20 = *(*(v162 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v162, v21);
  v161 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v160 = (&v150 - v26);
  MEMORY[0x28223BE20](v25, v27);
  v159 = &v150 - v28;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v29 = *(*(v176 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v176, v30);
  v175 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v150 - v34;
  v36 = sub_22D01659C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = (&v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v1[2];
  *v41 = v42;
  (*(v37 + 104))(v41, *MEMORY[0x277D85200], v36);
  v43 = v42;
  v44 = sub_22D0165BC();
  (*(v37 + 8))(v41, v36);
  if ((v44 & 1) == 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  sub_22CEEB6DC((v1 + 4), &aBlock, &qword_27D9F2E28, &unk_22D01A838);
  if (v180)
  {
    v45 = sub_22CFA3864(&aBlock, &v183);
    v46 = v1[22];
    MEMORY[0x28223BE20](v45, v47);
    *(&v150 - 2) = sub_22CFA68AC;
    *(&v150 - 1) = v1;
    os_unfair_lock_lock(v46 + 4);
    v41 = 0;
    sub_22CFA6864(&aBlock);
    os_unfair_lock_unlock(v46 + 4);
    v173 = aBlock;
    if (!aBlock)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v60 = sub_22D01637C();
      __swift_project_value_buffer(v60, qword_2814442F0);
      v53 = sub_22D01636C();
      v61 = sub_22D0168EC();
      if (os_log_type_enabled(v53, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_22CEE1000, v53, v61, "ActivityManager is not available", v62, 2u);
        MEMORY[0x2318C6860](v62, -1, -1);
      }

      goto LABEL_20;
    }

    if (qword_28143DA98 == -1)
    {
LABEL_5:
      v48 = sub_22D01637C();
      v157 = __swift_project_value_buffer(v48, qword_2814442F0);
      v49 = sub_22D01636C();
      v50 = sub_22D01690C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_22CEE1000, v49, v50, "Reconciling remotely owned activity records", v51, 2u);
        MEMORY[0x2318C6860](v51, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(&v183, v184);
      v52 = sub_22D01584C();
      if (!v41)
      {
        v150 = v6;
        v151 = v2;
        v63 = sub_22CFA1600(v52, sub_22CFA24F0, sub_22CFA24F0);

        v64 = v63 + 64;
        v65 = 1 << *(v63 + 32);
        v66 = -1;
        if (v65 < 64)
        {
          v66 = ~(-1 << v65);
        }

        v6 = v66 & *(v63 + 64);
        v67 = (v65 + 63) >> 6;
        v155 = v63;

        v68 = 0;
        v152 = MEMORY[0x277D84F90];
        *&v158 = v1;
        v154 = v64;
        v153 = v67;
LABEL_25:
        v69 = v68;
        if (!v6)
        {
          goto LABEL_27;
        }

        do
        {
          v68 = v69;
LABEL_30:
          v70 = __clz(__rbit64(v6));
          v6 &= v6 - 1;
          v71 = v70 | (v68 << 6);
          v72 = v155;
          v73 = v155[6];
          v74 = sub_22D0159DC();
          v75 = *(v74 - 8);
          (*(v75 + 16))(v35, v73 + *(v75 + 72) * v71, v74);
          v76 = v35;
          v77 = v72[7];
          v174 = sub_22D01436C();
          v78 = *(v174 - 8);
          v79 = v77 + *(v78 + 72) * v71;
          v80 = v176;
          (*(v78 + 16))(v76 + *(v176 + 48), v79, v174);
          v81 = v175;
          sub_22CEEB6DC(v76, v175, &qword_27D9F2F00, &unk_22D01A8D0);
          v156 = *(v80 + 48);
          v82 = sub_22D01598C();
          v84 = v83;
          v85 = (*(v75 + 8))(v81, v74);
          v2 = &v150;
          *&aBlock = 46;
          *(&aBlock + 1) = 0xE100000000000000;
          MEMORY[0x28223BE20](v85, v86);
          *(&v150 - 2) = &aBlock;
          v87 = sub_22D0046B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22CF88744, (&v150 - 4), v82, v84, &v150);
          (*(v78 + 8))(&v156[v81], v174);
          if (v87[2])
          {
            v89 = v87[4];
            v88 = v87[5];
            v90 = v87[6];
            v91 = v87[7];

            v92 = MEMORY[0x2318C5820](v89, v88, v90, v91);
            v2 = v93;

            sub_22CEEC3D8(v76, &qword_27D9F2F00, &unk_22D01A8D0);
            v35 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v152 = sub_22CFCE000(0, *(v152 + 2) + 1, 1, v152);
            }

            v1 = v158;
            v64 = v154;
            v95 = *(v152 + 2);
            v94 = *(v152 + 3);
            if (v95 >= v94 >> 1)
            {
              v152 = sub_22CFCE000((v94 > 1), v95 + 1, 1, v152);
            }

            v96 = v152;
            *(v152 + 2) = v95 + 1;
            v97 = &v96[16 * v95];
            *(v97 + 4) = v92;
            *(v97 + 5) = v2;
            v67 = v153;
            goto LABEL_25;
          }

          sub_22CEEC3D8(v76, &qword_27D9F2F00, &unk_22D01A8D0);
          v69 = v68;
          v1 = v158;
          v35 = v76;
          v64 = v154;
          v67 = v153;
        }

        while (v6);
        while (1)
        {
LABEL_27:
          v68 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
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
            goto LABEL_70;
          }

          if (v68 >= v67)
          {
            break;
          }

          v6 = *(v64 + 8 * v68);
          ++v69;
          if (v6)
          {
            goto LABEL_30;
          }
        }

        v2 = sub_22CF7BDC4(v152);

        v98 = v1[15];
        v99 = v1[16];
        __swift_project_boxed_opaque_existential_1(v1 + 12, v98);
        v100 = (*(v99 + 8))(v98, v99);
        v101 = sub_22CFA1600(v100, sub_22CFA1AC4, sub_22CFA1AC4);

        v35 = sub_22CFA3D04(v101, v2);

        swift_bridgeObjectRelease_n();
        v41 = *(v35 + 2);
        if (v41)
        {
          *&aBlock = MEMORY[0x277D84F90];
          sub_22CF4412C(0, v41, 0);
          v102 = aBlock;
          v103 = ~(-1 << v35[32]);
          v175 = v35 + 64;
          v104 = sub_22D016AEC();
          v105 = 0;
          v154 = v35 + 72;
          v155 = v41;
          v156 = v35;
          while ((v104 & 0x8000000000000000) == 0 && v104 < 1 << v35[32])
          {
            v6 = v104 >> 6;
            if ((*&v175[8 * (v104 >> 6)] & (1 << v104)) == 0)
            {
              goto LABEL_66;
            }

            v174 = *(v35 + 9);
            v176 = v102;
            v107 = v162;
            v108 = *(v162 + 48);
            v109 = *(v35 + 7);
            v110 = (*(v35 + 6) + 16 * v104);
            v112 = *v110;
            v111 = v110[1];
            v113 = type metadata accessor for Activity();
            v114 = v159;
            sub_22CF0CBEC(v109 + *(*(v113 - 8) + 72) * v104, &v159[v108], type metadata accessor for Activity);
            v115 = v160;
            *v160 = v112;
            *(v115 + 8) = v111;
            sub_22CF0FFD8(&v114[v108], v115 + *(v107 + 48), type metadata accessor for Activity);
            v116 = v161;
            sub_22CEF0368(v115, v161, &unk_27D9F3840, &unk_22D01A2B0);
            v41 = *v116;
            v1 = *(v116 + 8);
            v117 = *(v107 + 48);
            v102 = v176;

            sub_22CF0F5E0(v116 + v117, type metadata accessor for Activity);
            *&aBlock = v102;
            v2 = v102[2];
            v118 = v102[3];
            if (v2 >= v118 >> 1)
            {
              sub_22CF4412C((v118 > 1), v2 + 1, 1);
              v102 = aBlock;
            }

            v102[2] = v2 + 1;
            v119 = &v102[2 * v2];
            v119[4] = v41;
            v119[5] = v1;
            v35 = v156;
            v106 = 1 << v156[32];
            if (v104 >= v106)
            {
              goto LABEL_67;
            }

            v120 = *&v175[8 * v6];
            if ((v120 & (1 << v104)) == 0)
            {
              goto LABEL_68;
            }

            if (v174 != *(v156 + 9))
            {
              goto LABEL_69;
            }

            v121 = v120 & (-2 << (v104 & 0x3F));
            if (v121)
            {
              v106 = __clz(__rbit64(v121)) | v104 & 0x7FFFFFFFFFFFFFC0;
              v1 = v158;
            }

            else
            {
              v122 = v6 << 6;
              v123 = v6 + 1;
              v124 = &v154[8 * v6];
              v1 = v158;
              while (v123 < (v106 + 63) >> 6)
              {
                v125 = *v124++;
                v2 = v125;
                v122 += 64;
                ++v123;
                if (v125)
                {
                  sub_22CF44CF8(v104, v174, 0);
                  v106 = __clz(__rbit64(v2)) + v122;
                  goto LABEL_41;
                }
              }

              sub_22CF44CF8(v104, v174, 0);
            }

LABEL_41:
            v105 = (v105 + 1);
            v104 = v106;
            v41 = v155;
            if (v105 == v155)
            {

              v126 = v102[2];
              if (!v126)
              {
                goto LABEL_63;
              }

              goto LABEL_57;
            }
          }

          goto LABEL_65;
        }

        v102 = MEMORY[0x277D84F90];
        v126 = *(MEMORY[0x277D84F90] + 16);
        if (v126)
        {
LABEL_57:
          v174 = &v179;
          v162 = v151 + 8;
          v161 = v1[3];
          v160 = (v150 + 8);
          *(&v127 + 1) = *(&v173 + 1);
          v175 = v173;
          LODWORD(v159) = *MEMORY[0x277CB9328];
          v176 = v102;
          v128 = v102 + 5;
          *&v127 = 136446210;
          v158 = v127;
          do
          {
            v144 = *(v128 - 1);
            v145 = *v128;
            swift_bridgeObjectRetain_n();
            v146 = sub_22D01636C();
            v147 = sub_22D01690C();

            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              *&aBlock = v149;
              *v148 = v158;
              *(v148 + 4) = sub_22CEEE31C(v144, v145, &aBlock);
              _os_log_impl(&dword_22CEE1000, v146, v147, "Ending remote activity that has been removed from replicator: %{public}s", v148, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v149);
              MEMORY[0x2318C6860](v149, -1, -1);
              MEMORY[0x2318C6860](v148, -1, -1);
            }

            v129 = v167;
            v130 = *(v167 + 24);
            sub_22D01494C();
            v131 = v163;
            sub_22D01485C();
            type metadata accessor for ActivityParticipantEvent.EventType(0);
            swift_storeEnumTagMultiPayload();
            v132 = v129[7];
            v133 = sub_22D01483C();
            (*(*(v133 - 8) + 104))(v131 + v132, v159, v133);
            v134 = v129[9];
            v135 = sub_22D0146BC();
            (*(*(v135 - 8) + 56))(v131 + v134, 1, 1, v135);
            *v131 = v144;
            v131[1] = v145;
            v131[2] = 0;
            v131[3] = 0;
            v136 = (v131 + v129[8]);
            *v136 = v1;
            v136[1] = &off_28402B0C8;
            *(v131 + v129[10]) = 0;
            v137 = v164;
            sub_22CF0CBEC(v131, v164, type metadata accessor for ActivityParticipantEvent);
            v138 = (*(v166 + 80) + 32) & ~*(v166 + 80);
            v139 = swift_allocObject();
            *(v139 + 16) = v173;
            sub_22CF0FFD8(v137, v139 + v138, type metadata accessor for ActivityParticipantEvent);
            v181 = sub_22CFA5C9C;
            v182 = v139;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v179 = sub_22CEF8B58;
            v180 = &block_descriptor_36;
            v140 = _Block_copy(&aBlock);

            swift_unknownObjectRetain();
            v141 = v169;
            sub_22D0164EC();
            v177 = MEMORY[0x277D84F90];
            sub_22CF1A164(&qword_28143FA60, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
            sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
            v142 = v171;
            v143 = v172;
            sub_22D016ADC();
            MEMORY[0x2318C5B10](0, v141, v142, v140);
            _Block_release(v140);
            (*v162)(v142, v143);
            (*v160)(v141, v170);
            sub_22CF0F5E0(v131, type metadata accessor for ActivityParticipantEvent);

            v128 += 2;
            --v126;
          }

          while (v126);
        }

LABEL_63:
        swift_unknownObjectRelease();

        goto LABEL_21;
      }

      v53 = sub_22D01636C();
      v54 = sub_22D0168EC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_22CEE1000, v53, v54, "Failed to resolve remotely owned activity records", v55, 2u);
        MEMORY[0x2318C6860](v55, -1, -1);
      }

      swift_unknownObjectRelease();

LABEL_20:
LABEL_21:
      __swift_destroy_boxed_opaque_existential_1Tm(&v183);
      return;
    }

LABEL_71:
    swift_once();
    goto LABEL_5;
  }

  sub_22CEEC3D8(&aBlock, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v56 = sub_22D01637C();
  __swift_project_value_buffer(v56, qword_2814442F0);
  v57 = sub_22D01636C();
  v58 = sub_22D0168EC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_22CEE1000, v57, v58, "Replicator is not available", v59, 2u);
    MEMORY[0x2318C6860](v59, -1, -1);
  }
}

uint64_t sub_22CF9E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_22D0157EC();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = sub_22D01436C();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v5[18] = *(v10 + 64);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v11 = *(*(sub_22D0159BC() - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v12 = sub_22D0159DC();
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v15 = sub_22D0157CC();
  v5[37] = v15;
  v16 = *(v15 - 8);
  v5[38] = v16;
  v17 = *(v16 + 64) + 15;
  v5[39] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F10, &qword_22D01A8F0);
  v5[40] = v18;
  v19 = *(v18 - 8);
  v5[41] = v19;
  v20 = *(v19 + 64) + 15;
  v5[42] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F18, &unk_22D01A8F8);
  v5[43] = v21;
  v22 = *(v21 - 8);
  v5[44] = v22;
  v23 = *(v22 + 64) + 15;
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CF9E3A8, 0, 0);
}

uint64_t sub_22CF9E3A8()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[9];
  v6 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_22D01583C();
  sub_22D01682C();
  (*(v3 + 8))(v2, v4);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = sub_22CF9E4C4;
  v9 = v0[45];
  v10 = v0[43];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v10);
}

uint64_t sub_22CF9E4C4()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22CF9E5C0, 0, 0);
}

uint64_t sub_22CF9E5C0()
{
  v250 = v0;
  v1 = v0[8];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[38];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v240 = *(v3 + 72);
      while (1)
      {
        v11 = v0[37];
        sub_22CF0CBEC(v4, v0[39], MEMORY[0x277D46518]);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v13 = v0[39];
        v14 = v0[27];
        v15 = v0[28];
        v16 = v0[16];
        v17 = (v0[17] + 48);
        if (EnumCaseMultiPayload != 1)
        {
          break;
        }

        v18 = v0[26];
        (*(v15 + 32))(v0[36], v13, v0[27]);
        sub_22D0159CC();
        v19 = *v17;
        v20 = (*v17)(v18, 1, v16);
        v21 = v0[36];
        if (v20 == 1)
        {
          v22 = v0[27];
          v23 = v0[28];
LABEL_11:
          (*(v23 + 8))(v21, v22);
          goto LABEL_7;
        }

        v36 = v0[36];
        v38 = sub_22D01599C();
        v39 = v37;
        if (v38 == 0x7974697669746361 && v37 == 0xE800000000000000 || (sub_22D016DFC() & 1) != 0)
        {

          v40 = v0[10];
          sub_22CF93C44(v0[36]);
        }

        else if (v38 == 0x7069726373627573 && v39 == 0xEC0000006E6F6974 || (sub_22D016DFC() & 1) != 0)
        {

          v56 = v0[36];
          v57 = v0[25];
          v58 = v0[16];
          sub_22D0159CC();
          if (v19(v57, 1, v58) != 1)
          {
            v247 = v2;
            v235 = *(v0[17] + 32);
            v235(v0[22], v0[25], v0[16]);
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v243 = v4;
            v60 = v0[21];
            v59 = v0[22];
            v61 = v0[16];
            v62 = v0[17];
            v63 = sub_22D01637C();
            __swift_project_value_buffer(v63, qword_2814442F0);
            v220 = *(v62 + 16);
            v220(v60, v59, v61);
            v64 = sub_22D01636C();
            v65 = sub_22D01690C();
            v66 = os_log_type_enabled(v64, v65);
            v67 = v0[21];
            v68 = v0[16];
            v69 = v0[17];
            if (v66)
            {
              v70 = swift_slowAlloc();
              v216 = swift_slowAlloc();
              v249 = v216;
              *v70 = 136446210;
              sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
              v71 = sub_22D016DEC();
              v73 = v72;
              v230 = *(v69 + 8);
              v230(v67, v68);
              v74 = sub_22CEEE31C(v71, v73, &v249);

              *(v70 + 4) = v74;
              _os_log_impl(&dword_22CEE1000, v64, v65, "ReplicatorParticipant removed subscription from: %{public}s", v70, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v216);
              MEMORY[0x2318C6860](v216, -1, -1);
              MEMORY[0x2318C6860](v70, -1, -1);
            }

            else
            {

              v230 = *(v69 + 8);
              v230(v67, v68);
            }

            v76 = v0[22];
            v77 = v0[20];
            v79 = v0[17];
            v78 = v0[18];
            v80 = v0[16];
            v81 = v0[10];
            v82 = *(v81 + 16);
            v220(v77, v76, v80);
            v83 = (*(v79 + 80) + 24) & ~*(v79 + 80);
            v84 = swift_allocObject();
            *(v84 + 16) = v81;
            v235(v84 + v83, v77, v80);
            v85 = swift_allocObject();
            *(v85 + 16) = sub_22CFA613C;
            *(v85 + 24) = v84;
            v0[6] = sub_22CEF3C48;
            v0[7] = v85;
            v0[2] = MEMORY[0x277D85DD0];
            v0[3] = 1107296256;
            v0[4] = sub_22CEF3C20;
            v0[5] = &block_descriptor_52;
            v86 = _Block_copy(v0 + 2);
            v87 = v0[7];

            dispatch_sync(v82, v86);
            _Block_release(v86);
            v230(v76, v80);
            LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

            v4 = v243;
            v2 = v247;
            if (v76)
            {
              __break(1u);
              return MEMORY[0x2822003E8](v88, v89, v90, v91);
            }
          }
        }

        else if (v38 == 0x657373696D736964 && v39 == 0xE900000000000064)
        {
        }

        else
        {
          v93 = sub_22D016DFC();

          if ((v93 & 1) == 0)
          {
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v94 = v0[35];
            v95 = v0[36];
            v96 = v0[27];
            v97 = v0[28];
            v98 = sub_22D01637C();
            __swift_project_value_buffer(v98, qword_2814442F0);
            (*(v97 + 16))(v94, v95, v96);
            v99 = sub_22D01636C();
            v100 = sub_22D0168EC();
            v101 = os_log_type_enabled(v99, v100);
            v102 = v0[35];
            v103 = v0[36];
            v104 = v0[27];
            v105 = v0[28];
            if (v101)
            {
              v244 = v4;
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v249 = v107;
              *v106 = 136446210;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
              v236 = v100;
              v108 = sub_22D016DEC();
              v238 = v103;
              v110 = v109;
              v111 = *(v105 + 8);
              v111(v102, v104);
              v112 = sub_22CEEE31C(v108, v110, &v249);

              *(v106 + 4) = v112;
              _os_log_impl(&dword_22CEE1000, v99, v236, "ReplicatorParticipant received a deleted record with an unknown zone: %{public}s", v106, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v107);
              MEMORY[0x2318C6860](v107, -1, -1);
              v113 = v106;
              v4 = v244;
              MEMORY[0x2318C6860](v113, -1, -1);

              v111(v238, v104);
            }

            else
            {

              v183 = *(v105 + 8);
              v183(v102, v104);
              v183(v103, v104);
            }

            sub_22CF0F5E0(v0[26], MEMORY[0x277D46780]);
            goto LABEL_7;
          }
        }

        v41 = v0[26];
        (*(v0[28] + 8))(v0[36], v0[27]);
        sub_22CF0F5E0(v41, MEMORY[0x277D46780]);
LABEL_7:
        v4 += v240;
        if (!--v2)
        {
          goto LABEL_87;
        }
      }

      v242 = v4;
      v246 = v2;
      v24 = v0[34];
      v25 = v0[24];
      (*(v0[12] + 32))(v0[15], v13, v0[11]);
      sub_22D0157DC();
      sub_22D0159CC();
      v26 = *(v15 + 8);
      v26(v24, v14);
      v27 = *v17;
      v28 = (*v17)(v25, 1, v16);
      v29 = v0[27];
      if (v28 == 1)
      {
        v30 = v0[33];
        v31 = v0[15];
        sub_22D0157DC();
        v32 = sub_22D01599C();
        v34 = v33;
        v26(v30, v29);
        v35 = v26;
        if (v32 == 0x657373696D736964 && v34 == 0xE900000000000064)
        {

          v2 = v246;
        }

        else
        {
          v2 = v246;
          if ((sub_22D016DFC() & 1) == 0)
          {
            if ((v32 != 0x7974697669746361 || v34 != 0xE800000000000000) && (sub_22D016DFC() & 1) == 0)
            {
              v4 = v242;
              if (v32 == 0x7069726373627573 && v34 == 0xEC0000006E6F6974)
              {
              }

              else
              {
                v92 = sub_22D016DFC();

                if ((v92 & 1) == 0)
                {
                  if (qword_28143DA98 != -1)
                  {
                    swift_once();
                  }

                  v141 = v0[14];
                  v142 = v0[15];
                  v143 = v0[11];
                  v144 = v0[12];
                  v145 = sub_22D01637C();
                  __swift_project_value_buffer(v145, qword_2814442F0);
                  (*(v144 + 16))(v141, v142, v143);
                  v146 = sub_22D01636C();
                  v147 = sub_22D0168EC();
                  if (os_log_type_enabled(v146, v147))
                  {
                    v148 = v0[32];
                    v149 = v0[27];
                    v231 = v0[15];
                    v212 = v0[14];
                    v214 = v0[12];
                    v217 = v0[11];
                    v150 = swift_slowAlloc();
                    v221 = swift_slowAlloc();
                    v249 = v221;
                    *v150 = 136446210;
                    sub_22D0157DC();
                    sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
                    v151 = sub_22D016DEC();
                    v153 = v152;
                    v35(v148, v149);
                    v154 = *(v214 + 8);
                    v154(v212, v217);
                    v155 = sub_22CEEE31C(v151, v153, &v249);

                    *(v150 + 4) = v155;
                    _os_log_impl(&dword_22CEE1000, v146, v147, "ReplicatorParticipant received an updated local record with an unknown zone: %{public}s", v150, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v221);
                    MEMORY[0x2318C6860](v221, -1, -1);
                    v156 = v150;
                    v4 = v242;
                    MEMORY[0x2318C6860](v156, -1, -1);

                    v154(v231, v217);
                  }

                  else
                  {
                    v184 = v0[14];
                    v185 = v0[15];
                    v186 = v0[11];
                    v187 = v0[12];

                    v188 = *(v187 + 8);
                    v188(v184, v186);
                    v188(v185, v186);
                  }

                  goto LABEL_7;
                }
              }

              v21 = v0[15];
              v22 = v0[11];
              v23 = v0[12];
              goto LABEL_11;
            }

            (*(v0[12] + 8))(v0[15], v0[11]);

            goto LABEL_6;
          }
        }

        v5 = v0[32];
        v6 = v0[27];
        v7 = v0[15];
        v8 = v0[11];
        v9 = v0[12];
        v10 = v0[10];
        sub_22D0157DC();
        sub_22CF993D0(v5);
        v35(v5, v6);
        (*(v9 + 8))(v7, v8);
      }

      else
      {
        v42 = v0[31];
        v43 = v0[15];
        (*(v0[17] + 32))(v0[19], v0[24], v0[16]);
        sub_22D0157DC();
        v44 = sub_22D01599C();
        v46 = v45;
        v26(v42, v29);
        v47 = v26;
        v234 = v26;
        if (v44 == 0x7974697669746361 && v46 == 0xE800000000000000 || (v2 = v246, (sub_22D016DFC() & 1) != 0))
        {

          v48 = v0[32];
          v49 = v0[27];
          v50 = v0[19];
          v51 = v0[16];
          v52 = v0[17];
          v53 = v0[15];
          v54 = v0[12];
          v229 = v0[11];
          v55 = v0[10];
          sub_22D0157DC();
          sub_22CF951E8(v48, v50);
        }

        else
        {
          if ((v44 != 0x7069726373627573 || v46 != 0xEC0000006E6F6974) && (sub_22D016DFC() & 1) == 0)
          {
            if (v44 == 0x657373696D736964 && v46 == 0xE900000000000064)
            {

LABEL_63:
              v115 = v0[30];
              v116 = v0[15];
              sub_22D0157DC();
              v117 = sub_22CFA5E4C(v115);
              if (v118)
              {
                v119 = v118;
                v120 = v117;
                v121 = v0[30];
                v122 = v0[23];
                v123 = v0[16];
                sub_22D0159CC();
                if (v27(v122, 1, v123) == 1)
                {
                }

                else
                {
                  v174 = v0[23];
                  v175 = v0[10];
                  sub_22CF98F1C(v120, v119);

                  sub_22CF0F5E0(v174, MEMORY[0x277D46780]);
                }

                v4 = v242;
              }

              else
              {
                if (qword_28143DA98 != -1)
                {
                  swift_once();
                }

                v124 = v0[29];
                v125 = v0[30];
                v126 = v0[27];
                v127 = v0[28];
                v128 = sub_22D01637C();
                __swift_project_value_buffer(v128, qword_2814442F0);
                (*(v127 + 16))(v124, v125, v126);
                v129 = sub_22D01636C();
                v130 = sub_22D01690C();
                v131 = os_log_type_enabled(v129, v130);
                v132 = v0[29];
                v133 = v0[27];
                if (v131)
                {
                  v134 = swift_slowAlloc();
                  v135 = swift_slowAlloc();
                  v249 = v135;
                  *v134 = 136446210;
                  sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
                  v136 = sub_22D016DEC();
                  v138 = v137;
                  v139 = v133;
                  v47 = v234;
                  v234(v132, v139);
                  v140 = sub_22CEEE31C(v136, v138, &v249);

                  *(v134 + 4) = v140;
                  _os_log_impl(&dword_22CEE1000, v129, v130, "Cannot dismiss activity as dismiss record ID is malformed: %{public}s", v134, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v135);
                  MEMORY[0x2318C6860](v135, -1, -1);
                  MEMORY[0x2318C6860](v134, -1, -1);
                }

                else
                {

                  v176 = v133;
                  v47 = v234;
                  v234(v132, v176);
                }

                v4 = v242;
              }

              v177 = v0[19];
              v178 = v0[16];
              v179 = v0[17];
              v180 = v0[15];
              v181 = v0[11];
              v182 = v0[12];
              v47(v0[30], v0[27]);
              (*(v179 + 8))(v177, v178);
              (*(v182 + 8))(v180, v181);
              goto LABEL_7;
            }

            v114 = sub_22D016DFC();

            if (v114)
            {
              goto LABEL_63;
            }

            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v157 = v0[15];
            v159 = v0[12];
            v158 = v0[13];
            v160 = v0[11];
            v161 = sub_22D01637C();
            __swift_project_value_buffer(v161, qword_2814442F0);
            (*(v159 + 16))(v158, v157, v160);
            v162 = sub_22D01636C();
            v163 = sub_22D0168EC();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = v0[32];
              v165 = v0[27];
              v215 = v0[17];
              v218 = v0[16];
              v222 = v0[19];
              v232 = v0[15];
              v166 = v0[13];
              v210 = v0[12];
              v211 = v0[11];
              v167 = swift_slowAlloc();
              v213 = swift_slowAlloc();
              v249 = v213;
              *v167 = 136446210;
              sub_22D0157DC();
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
              v168 = sub_22D016DEC();
              v169 = v47;
              v171 = v170;
              v169(v164, v165);
              v172 = *(v210 + 8);
              v172(v166, v211);
              v173 = sub_22CEEE31C(v168, v171, &v249);

              *(v167 + 4) = v173;
              _os_log_impl(&dword_22CEE1000, v162, v163, "ReplicatorParticipant received an updated remote record with an unknown zone: %{public}s", v167, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v213);
              MEMORY[0x2318C6860](v213, -1, -1);
              MEMORY[0x2318C6860](v167, -1, -1);

              (*(v215 + 8))(v222, v218);
              v172(v232, v211);
            }

            else
            {
              v189 = v0[19];
              v190 = v0[16];
              v191 = v0[17];
              v192 = v0[15];
              v194 = v0[12];
              v193 = v0[13];
              v195 = v0[11];

              v196 = *(v194 + 8);
              v196(v193, v195);
              (*(v191 + 8))(v189, v190);
              v196(v192, v195);
            }

            goto LABEL_6;
          }

          v48 = v0[32];
          v49 = v0[27];
          v50 = v0[19];
          v51 = v0[16];
          v52 = v0[17];
          v53 = v0[15];
          v54 = v0[12];
          v229 = v0[11];
          v75 = v0[10];
          sub_22D0157DC();
          sub_22CF97730(v48);
        }

        v234(v48, v49);
        (*(v52 + 8))(v50, v51);
        (*(v54 + 8))(v53, v229);
        v2 = v246;
      }

LABEL_6:
      v4 = v242;
      goto LABEL_7;
    }

LABEL_87:

    v197 = *(MEMORY[0x277D85798] + 4);
    v198 = swift_task_alloc();
    v0[46] = v198;
    *v198 = v0;
    v198[1] = sub_22CF9E4C4;
    v199 = v0[45];
    v91 = v0[43];
    v88 = (v0 + 8);
    v89 = 0;
    v90 = 0;

    return MEMORY[0x2822003E8](v88, v89, v90, v91);
  }

  else
  {
    v200 = v0[42];
    v201 = v0[39];
    v203 = v0[35];
    v202 = v0[36];
    v204 = v0[33];
    v205 = v0[34];
    v207 = v0[31];
    v206 = v0[32];
    v219 = v0[30];
    v223 = v0[29];
    v224 = v0[26];
    v225 = v0[25];
    v226 = v0[24];
    v227 = v0[23];
    v228 = v0[22];
    v233 = v0[21];
    v237 = v0[20];
    v239 = v0[19];
    v241 = v0[15];
    v245 = v0[14];
    v248 = v0[13];
    (*(v0[44] + 8))(v0[45], v0[43]);

    v208 = v0[1];

    return v208();
  }
}

void sub_22CF9FC9C(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a1;
  v6 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Activity();
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v43[-v18];
  v20 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v21 = a3 + *(v11 + 24);
  v22 = sub_22D014F9C();
  v23 = *v20;
  v24 = *(*v20 + OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_appSettingsLock);
  v48 = v23;
  v49 = v22;
  v50 = v25;
  os_unfair_lock_lock((v24 + 20));
  sub_22CFA38DC((v24 + 16), &v51);
  if (v3)
  {
    os_unfair_lock_unlock((v24 + 20));
    __break(1u);
  }

  else
  {
    v47 = 0;
    os_unfair_lock_unlock((v24 + 20));

    v46 = v51;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v26 = sub_22D01637C();
    __swift_project_value_buffer(v26, qword_2814442F0);
    sub_22CF0CBEC(a3, v19, type metadata accessor for Activity);
    sub_22CF0CBEC(a3, v16, type metadata accessor for Activity);
    sub_22CF0CBEC(v45, v10, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
    v27 = sub_22D01636C();
    v28 = sub_22D0168DC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v29 = 136446979;
      v44 = v28;
      v31 = *v19;
      v30 = v19[1];

      sub_22CF0F5E0(v19, type metadata accessor for Activity);
      v32 = sub_22CEEE31C(v31, v30, &v51);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2081;
      v33 = &v16[*(v11 + 24)];
      v34 = sub_22D014F9C();
      v36 = v35;
      sub_22CF0F5E0(v16, type metadata accessor for Activity);
      v37 = sub_22CEEE31C(v34, v36, &v51);

      *(v29 + 14) = v37;
      *(v29 + 22) = 1026;
      *(v29 + 24) = v46;
      *(v29 + 28) = 2082;
      sub_22D01436C();
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
      v38 = sub_22D016DEC();
      v40 = v39;
      sub_22CF0F5E0(v10, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
      v41 = sub_22CEEE31C(v38, v40, &v51);

      *(v29 + 30) = v41;
      _os_log_impl(&dword_22CEE1000, v27, v44, "%{public}s/%{private}s replicationAllowed %{BOOL,public}d for relationshipSchedule %{public}s", v29, 0x26u);
      v42 = v45;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v42, -1, -1);
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    else
    {

      sub_22CF0F5E0(v10, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
      sub_22CF0F5E0(v16, type metadata accessor for Activity);
      sub_22CF0F5E0(v19, type metadata accessor for Activity);
    }
  }
}

uint64_t sub_22CFA011C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v82 = sub_22D0149AC();
  v3 = *(v82 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v82, v5);
  v80 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D014EFC();
  v78 = *(v7 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v79 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v110 = &v78 - v14;
  v15 = sub_22D01430C();
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = v100[8];
  v18 = MEMORY[0x28223BE20](v15, v17);
  v109 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v108 = &v78 - v21;
  v107 = sub_22D0146BC();
  v22 = *(v107 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v107, v24);
  v106 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22D01502C();
  v26 = *(v105 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v105, v28);
  v104 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22D014E2C();
  v30 = *(v103 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v103, v32);
  v102 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22D01471C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CF0D3A8(v39);
  v94 = sub_22D0146EC();
  v41 = v40;
  (*(v35 + 8))(v39, v34);
  v81 = v3;
  if (v41)
  {
    v93 = v41;
  }

  else
  {
    v42 = a1 + *(type metadata accessor for Activity() + 24);
    v43 = sub_22CF1B538();
    v93 = v44;
    v94 = v43;
  }

  v45 = a1[1];
  v92 = *a1;
  v98 = v45;
  v46 = type metadata accessor for Activity();
  v47 = (a1 + v46[13]);
  v48 = *v47;
  v49 = v47[1];
  v50 = v46[5];
  v95 = v30;
  v90 = *(v30 + 16);
  v91 = v48;
  v90(v102, a1 + v50, v103);
  v51 = v46[6];
  v96 = v26;
  v88 = *(v26 + 16);
  v88(v104, a1 + v51, v105);
  v89 = *(a1 + v46[9]);
  v52 = v46[8];
  v86 = *(a1 + v46[7]);
  v87 = *(a1 + v52);
  v53 = v46[14];
  v97 = v22;
  v85 = *(v22 + 16);
  v85(v106, a1 + v53, v107);
  v54 = v101;
  v55 = v100[2];
  v55(v108, a1 + v46[10], v101);
  v55(v109, a1 + v46[11], v54);
  v84 = *(a1 + v46[12]);
  sub_22CEEB6DC(a1 + v46[15], v110, &qword_27D9F26E0, &unk_22D018F80);
  v56 = v46[15];
  v83 = v56;
  v57 = sub_22D01486C();
  v58 = v99;
  (*(*(v57 - 8) + 56))(&v99[v56], 1, 1, v57);
  v59 = v91;
  v60 = v98;
  *v58 = v92;
  *(v58 + 1) = v60;
  v61 = &v58[v46[13]];
  *v61 = v59;
  *(v61 + 1) = v49;
  v90(&v58[v46[5]], v102, v103);
  v88(&v58[v46[6]], v104, v105);
  *&v58[v46[9]] = v89;
  v62 = v86;
  *&v58[v46[7]] = v86;
  *&v58[v46[8]] = v87;
  v85(&v58[v46[14]], v106, v107);
  v55(&v58[v46[10]], v108, v54);
  v55(&v58[v46[11]], v109, v54);
  v58[v46[12]] = v84;

  sub_22CF0A6BC(v110, &v58[v83]);
  v63 = v93;
  if (v93)
  {
    v65 = v96;
    v64 = v97;
    v66 = v94;
  }

  else
  {
    v67 = v81;
    v68 = v80;
    v69 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x277CB94E0], v82);
    if (*(v62 + 16) && (v70 = sub_22CEFF728(v68), (v71 & 1) != 0))
    {
      v72 = v79;
      sub_22CF0CBEC(*(v62 + 56) + *(v78 + 72) * v70, v79, MEMORY[0x277CB9790]);
      (*(v67 + 8))(v68, v69);
      v66 = sub_22CF0A190();
      v63 = v73;
      sub_22CF0F5E0(v72, MEMORY[0x277CB9790]);
    }

    else
    {
      (*(v67 + 8))(v68, v69);
      v66 = 0;
      v63 = 0;
    }

    v65 = v96;
    v64 = v97;
  }

  sub_22CEEC3D8(v110, &qword_27D9F26E0, &unk_22D018F80);
  v74 = v101;
  v75 = v100[1];
  v75(v109, v101);
  v75(v108, v74);
  (*(v64 + 8))(v106, v107);
  (*(v65 + 8))(v104, v105);
  result = (*(v95 + 8))(v102, v103);
  v77 = &v99[v46[16]];
  *v77 = v66;
  v77[1] = v63;
  return result;
}

uint64_t sub_22CFA09F8()
{
  v0 = sub_22D01436C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01592C();
  v6 = sub_22D01434C();
  (*(v1 + 8))(v5, v0);
  return v6 & 1;
}

uint64_t sub_22CFA0AE4()
{
  v0 = sub_22D0158BC();
  v2 = v1;
  if (v0 == sub_22D01599C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22D016DFC();
  }

  return v4 & 1;
}

uint64_t sub_22CFA0B80@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v98 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v5 = *(*(v104 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v104, v6);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v103 = (&v96 - v11);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v102 = (&v96 - v14);
  MEMORY[0x28223BE20](v13, v15);
  v101 = &v96 - v16;
  swift_beginAccess();
  v17 = a1[26];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v96 = v2;
    v97 = a1;
    v114[0] = MEMORY[0x277D84F90];

    sub_22CF440C8(0, v18, 0);
    v19 = v114[0];
    v20 = -1 << *(v17 + 32);
    v21 = sub_22D016AEC();
    v22 = 0;
    v23 = *(v17 + 36);
    v99 = v17;
    do
    {
      LODWORD(v109) = v22;
      v110 = v21;
      v111 = v23;
      v112 = v18;
      v113 = v19;
      v24 = v104;
      v25 = *(v104 + 48);
      v26 = v101;
      v27 = sub_22CFA3598(&v101[v25], v21, v23, v22 & 1, v17);
      v28 = v102;
      *v102 = v27;
      *(v28 + 8) = v29;
      sub_22CF0FFD8(&v26[v25], v28 + *(v24 + 48), type metadata accessor for Activity);
      v30 = v103;
      sub_22CEEB6DC(v28, v103, &unk_27D9F3840, &unk_22D01A2B0);
      v31 = *v30;
      v107 = v30[1];
      v108 = v31;
      v105 = *(v24 + 48);
      v32 = v100;
      sub_22CEEB6DC(v28, v100, &unk_27D9F3840, &unk_22D01A2B0);
      v33 = *(v32 + 8);

      v34 = *(v24 + 48);
      v106 = sub_22CF0B174();
      v36 = v35;
      sub_22CEEC3D8(v28, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F5E0(v32 + v34, type metadata accessor for Activity);
      v37 = v30 + v105;
      v19 = v113;
      sub_22CF0F5E0(v37, type metadata accessor for Activity);
      v114[0] = v19;
      v39 = *(v19 + 16);
      v38 = *(v19 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22CF440C8((v38 > 1), v39 + 1, 1);
        v19 = v114[0];
      }

      *(v19 + 16) = v39 + 1;
      v40 = (v19 + 32 * v39);
      v41 = v107;
      v40[4] = v108;
      v40[5] = v41;
      v40[6] = v106;
      v40[7] = v36;
      v42 = v109;
      v44 = v110;
      v43 = v111;
      v17 = v99;
      v45 = sub_22CFA3518(v110, v111, v109 & 1, v99);
      v47 = v46;
      v49 = v48;
      sub_22CF44CF8(v44, v43, v42 & 1);
      v21 = v45;
      v23 = v47;
      v22 = v49;
      v18 = v112 - 1;
    }

    while (v112 != 1);
    sub_22CF44CF8(v45, v47, v49 & 1);

    v3 = v96;
    a1 = v97;
  }

  if (*(v19 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v50 = sub_22D016D3C();
  }

  else
  {
    v50 = MEMORY[0x277D84F98];
  }

  v114[0] = v50;

  sub_22CF43CD4(v51, 1, v114);
  if (!v3)
  {

    v52 = v114[0];
    swift_beginAccess();
    v53 = a1[27];

    v55 = sub_22CF8B1A8(v54);

    swift_beginAccess();
    v56 = a1[25];
    v57 = *(v56 + 16);
    v58 = MEMORY[0x277D84F90];
    if (!v57)
    {
LABEL_31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22D01A630;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x800000022D0205E0;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
      *(inited + 48) = v52;
      *(inited + 72) = v92;
      strcpy((inited + 80), "subscriptions");
      *(inited + 94) = -4864;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
      *(inited + 96) = v55;
      *(inited + 120) = v93;
      *(inited + 128) = 0xD000000000000010;
      *(inited + 168) = v93;
      *(inited + 136) = 0x800000022D020600;
      *(inited + 144) = v58;
      v94 = sub_22CF11C44(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
      result = swift_arrayDestroy();
      *v98 = v94;
      return result;
    }

    v99 = v55;
    v100 = v52;
    v105 = 0;
    v115 = MEMORY[0x277D84F90];

    sub_22CF4412C(0, v57, 0);
    v58 = v115;
    v59 = v56 + 64;
    v60 = -1 << *(v56 + 32);
    v61 = sub_22D016AEC();
    v62 = 0;
    v106 = v56 + 72;
    v107 = v57;
    v63 = v56;
    v108 = v56 + 64;
    v109 = v56;
    while ((v61 & 0x8000000000000000) == 0 && v61 < 1 << *(v63 + 32))
    {
      v66 = v61 >> 6;
      if ((*(v59 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
      {
        goto LABEL_33;
      }

      v110 = v62;
      v111 = *(v63 + 36);
      v112 = 1 << v61;
      v113 = v58;
      v67 = v104;
      v68 = *(v104 + 48);
      v69 = *(v63 + 48);
      v70 = *(v63 + 56);
      v71 = (v69 + 16 * v61);
      v73 = *v71;
      v72 = v71[1];
      v74 = type metadata accessor for Activity();
      v75 = v101;
      sub_22CF0CBEC(v70 + *(*(v74 - 8) + 72) * v61, &v101[v68], type metadata accessor for Activity);
      v76 = v102;
      *v102 = v73;
      *(v76 + 8) = v72;
      sub_22CF0FFD8(&v75[v68], v76 + *(v67 + 48), type metadata accessor for Activity);
      v77 = v103;
      sub_22CEF0368(v76, v103, &unk_27D9F3840, &unk_22D01A2B0);
      v79 = *v77;
      v78 = v77[1];
      v80 = *(v67 + 48);
      v58 = v113;

      sub_22CF0F5E0(v77 + v80, type metadata accessor for Activity);
      v115 = v58;
      v82 = *(v58 + 16);
      v81 = *(v58 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_22CF4412C((v81 > 1), v82 + 1, 1);
        v58 = v115;
      }

      *(v58 + 16) = v82 + 1;
      v83 = v58 + 16 * v82;
      *(v83 + 32) = v79;
      *(v83 + 40) = v78;
      v63 = v109;
      v64 = 1 << *(v109 + 32);
      if (v61 >= v64)
      {
        goto LABEL_34;
      }

      v59 = v108;
      v84 = *(v108 + 8 * v66);
      if ((v84 & v112) == 0)
      {
        goto LABEL_35;
      }

      if (v111 != *(v109 + 36))
      {
        goto LABEL_36;
      }

      v85 = v84 & (-2 << (v61 & 0x3F));
      if (v85)
      {
        v64 = __clz(__rbit64(v85)) | v61 & 0x7FFFFFFFFFFFFFC0;
        v65 = v110;
      }

      else
      {
        v86 = v66 << 6;
        v87 = v66 + 1;
        v88 = (v106 + 8 * v66);
        while (v87 < (v64 + 63) >> 6)
        {
          v90 = *v88++;
          v89 = v90;
          v86 += 64;
          ++v87;
          if (v90)
          {
            sub_22CF44CF8(v61, v111, 0);
            v64 = __clz(__rbit64(v89)) + v86;
            goto LABEL_29;
          }
        }

        sub_22CF44CF8(v61, v111, 0);
LABEL_29:
        v65 = v110;
      }

      v62 = v65 + 1;
      v61 = v64;
      if (v62 == v107)
      {

        v55 = v99;
        v52 = v100;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_22CFA137C()
{
  v1 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v3;
}

uint64_t sub_22CFA13F0()
{
  v1 = v0[3];
  *(v0[2] + 192) = v0[4];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_22CFA1444(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22CFCE000(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_22CFA1600(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v21 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v17 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v17;
    goto LABEL_2;
  }

  v18 = swift_slowAlloc();
  v19 = v5;
  v20 = sub_22CFA2C64(v18, v10, v6, a3);
  result = MEMORY[0x2318C6860](v18, -1, -1);
  if (!v19)
  {
    result = v20;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CFA1770(unint64_t *a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v43 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v4 = *(*(v51 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v51, v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v46 = (&v42 - v9);
  v10 = type metadata accessor for Activity();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  result = MEMORY[0x28223BE20](v10, v12);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v15 = 0;
  v52 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v23 = v47;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_11:
    v27 = v24 | (v15 << 6);
    v28 = v52[7];
    v29 = (v52[6] + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v48 + 72);
    v45 = v27;
    sub_22CF0CBEC(v28 + v32 * v27, v23, type metadata accessor for Activity);
    v33 = v46;
    *v46 = v30;
    *(v33 + 8) = v31;
    v34 = v51;
    sub_22CF0CBEC(v23, v33 + *(v51 + 48), type metadata accessor for Activity);
    v35 = v50;
    sub_22CEEB6DC(v33, v50, &unk_27D9F3840, &unk_22D01A2B0);
    v36 = *(v35 + 8);
    swift_bridgeObjectRetain_n();

    v37 = v35 + *(v34 + 48);
    v38 = (v37 + *(v49 + 52));
    v40 = *v38;
    v39 = v38[1];

    sub_22CF0F5E0(v37, type metadata accessor for Activity);
    LOBYTE(v40) = sub_22D014F5C();

    sub_22CEEC3D8(v33, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0F5E0(v23, type metadata accessor for Activity);

    v21 = v53;
    if (v40)
    {
      *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v43, v42, v44, v52);
      }
    }
  }

  v25 = v15;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_22CEE4A40(v43, v42, v44, v52);
    }

    v26 = v17[v15];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA1AC4(unint64_t *a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v43 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v4 = *(*(v51 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v51, v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v46 = (&v42 - v9);
  v10 = type metadata accessor for Activity();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  result = MEMORY[0x28223BE20](v10, v12);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v15 = 0;
  v52 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v23 = v47;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_11:
    v27 = v24 | (v15 << 6);
    v28 = v52[7];
    v29 = (v52[6] + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v48 + 72);
    v45 = v27;
    sub_22CF0CBEC(v28 + v32 * v27, v23, type metadata accessor for Activity);
    v33 = v46;
    *v46 = v30;
    *(v33 + 8) = v31;
    v34 = v51;
    sub_22CF0CBEC(v23, v33 + *(v51 + 48), type metadata accessor for Activity);
    v35 = v50;
    sub_22CEEB6DC(v33, v50, &unk_27D9F3840, &unk_22D01A2B0);
    v36 = *(v35 + 8);
    swift_bridgeObjectRetain_n();

    v37 = v35 + *(v34 + 48);
    v38 = (v37 + *(v49 + 52));
    v40 = *v38;
    v39 = v38[1];

    sub_22CF0F5E0(v37, type metadata accessor for Activity);
    LOBYTE(v40) = sub_22D014F5C();

    sub_22CEEC3D8(v33, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0F5E0(v23, type metadata accessor for Activity);

    v21 = v53;
    if ((v40 & 1) == 0)
    {
      *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v43, v42, v44, v52);
      }
    }
  }

  v25 = v15;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_22CEE4A40(v43, v42, v44, v52);
    }

    v26 = v17[v15];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA1E18(unint64_t *a1, uint64_t a2, void *a3)
{
  v75 = a2;
  v76 = a1;
  v4 = sub_22D0159BC();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v80 = &v74 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v11 = *(*(v95 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v95, v12);
  v79 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v74 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v99 = &v74 - v20;
  v100 = sub_22D01436C();
  v21 = *(v100 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v100, v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22D0159DC();
  v26 = *(*(v102 - 8) + 64);
  result = MEMORY[0x28223BE20](v102, v27);
  v97 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0;
  v31 = 0;
  v91 = a3;
  v34 = a3[8];
  v33 = a3 + 8;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v84 = v21 + 16;
  v85 = v29 + 2;
  v98 = v29;
  v101 = v29 + 1;
  v83 = (v21 + 8);
  v89 = v21;
  v78 = (v21 + 56);
  v90 = v18;
  v86 = v38;
  v87 = v33;
  v88 = v25;
  while (v37)
  {
    v39 = __clz(__rbit64(v37));
    v96 = (v37 - 1) & v37;
LABEL_12:
    v42 = v39 | (v31 << 6);
    v43 = v91;
    v44 = v97;
    v45 = v98[2];
    v45(v97, v91[6] + v98[9] * v42, v102);
    v46 = v43[7];
    v47 = *(v89 + 72);
    v82 = v42;
    v48 = *(v89 + 16);
    v49 = v100;
    v48(v25, v46 + v47 * v42, v100);
    v50 = v99;
    v51 = v44;
    v52 = v102;
    v45(v99, v51, v102);
    v53 = v95;
    v48((v50 + *(v95 + 48)), v25, v49);
    v54 = v90;
    sub_22CEEB6DC(v50, v90, &qword_27D9F2F00, &unk_22D01A8D0);
    v55 = *(v53 + 48);
    v56 = sub_22D01599C();
    v58 = v57;
    v59 = v98[1];
    v59(v54, v52);
    v60 = v83;
    if (v56 == 0x7974697669746361 && v58 == 0xE800000000000000)
    {
      v61 = v59;

      v62 = v100;
      v94 = *v60;
      v94(v54 + v55, v100);
      goto LABEL_17;
    }

    v63 = sub_22D016DFC();

    v64 = *v60;
    (*v60)(v54 + v55, v100);
    if (v63)
    {
      v61 = v59;
      v62 = v100;
      v94 = v64;
LABEL_17:
      v65 = v99;
      v66 = v79;
      sub_22CEEB6DC(v99, v79, &qword_27D9F2F00, &unk_22D01A8D0);
      v93 = *(v95 + 48);
      v67 = v80;
      sub_22D0159CC();
      v68 = v61;
      v61(v66, v102);
      v69 = v81;
      (*v78)(v81, 1, 1, v62);
      v92 = MEMORY[0x2318C4B10](v67, v69);
      v70 = MEMORY[0x277D46780];
      sub_22CF0F5E0(v69, MEMORY[0x277D46780]);
      sub_22CF0F5E0(v67, v70);
      sub_22CEEC3D8(v65, &qword_27D9F2F00, &unk_22D01A8D0);
      v71 = v66 + v93;
      v72 = v94;
      v94(v71, v62);
      v25 = v88;
      v72(v88, v62);
      result = v68(v97, v102);
      v38 = v86;
      v33 = v87;
      v37 = v96;
      if (v92)
      {
        *(v76 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v82;
        if (__OFADD__(v77++, 1))
        {
          __break(1u);
          return sub_22CF7AC3C(v76, v75, v77, v91);
        }
      }
    }

    else
    {
      sub_22CEEC3D8(v99, &qword_27D9F2F00, &unk_22D01A8D0);
      v25 = v88;
      v64(v88, v100);
      result = (v59)(v97, v102);
      v38 = v86;
      v33 = v87;
      v37 = v96;
    }
  }

  v40 = v31;
  while (1)
  {
    v31 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v31 >= v38)
    {
      return sub_22CF7AC3C(v76, v75, v77, v91);
    }

    v41 = v33[v31];
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      v96 = (v41 - 1) & v41;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA24F0(unint64_t *a1, uint64_t a2, void *a3)
{
  v75 = a2;
  v76 = a1;
  v4 = sub_22D0159BC();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v80 = &v74 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v11 = *(*(v95 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v95, v12);
  v79 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v74 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v99 = &v74 - v20;
  v100 = sub_22D01436C();
  v21 = *(v100 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v100, v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22D0159DC();
  v26 = *(*(v102 - 8) + 64);
  result = MEMORY[0x28223BE20](v102, v27);
  v97 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0;
  v31 = 0;
  v91 = a3;
  v34 = a3[8];
  v33 = a3 + 8;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v84 = v21 + 16;
  v85 = v29 + 2;
  v98 = v29;
  v101 = v29 + 1;
  v83 = (v21 + 8);
  v89 = v21;
  v78 = (v21 + 56);
  v90 = v18;
  v86 = v38;
  v87 = v33;
  v88 = v25;
  while (v37)
  {
    v39 = __clz(__rbit64(v37));
    v96 = (v37 - 1) & v37;
LABEL_12:
    v42 = v39 | (v31 << 6);
    v43 = v91;
    v44 = v97;
    v45 = v98[2];
    v45(v97, v91[6] + v98[9] * v42, v102);
    v46 = v43[7];
    v47 = *(v89 + 72);
    v82 = v42;
    v48 = *(v89 + 16);
    v49 = v100;
    v48(v25, v46 + v47 * v42, v100);
    v50 = v99;
    v51 = v44;
    v52 = v102;
    v45(v99, v51, v102);
    v53 = v95;
    v48((v50 + *(v95 + 48)), v25, v49);
    v54 = v90;
    sub_22CEEB6DC(v50, v90, &qword_27D9F2F00, &unk_22D01A8D0);
    v55 = *(v53 + 48);
    v56 = sub_22D01599C();
    v58 = v57;
    v59 = v98[1];
    v59(v54, v52);
    v60 = v83;
    if (v56 == 0x7974697669746361 && v58 == 0xE800000000000000)
    {
      v61 = v59;

      v62 = v100;
      v94 = *v60;
      v94(v54 + v55, v100);
      goto LABEL_17;
    }

    v63 = sub_22D016DFC();

    v64 = *v60;
    (*v60)(v54 + v55, v100);
    if (v63)
    {
      v61 = v59;
      v62 = v100;
      v94 = v64;
LABEL_17:
      v65 = v99;
      v66 = v79;
      sub_22CEEB6DC(v99, v79, &qword_27D9F2F00, &unk_22D01A8D0);
      v93 = *(v95 + 48);
      v67 = v80;
      sub_22D0159CC();
      v68 = v61;
      v61(v66, v102);
      v69 = v81;
      (*v78)(v81, 1, 1, v62);
      v92 = MEMORY[0x2318C4B10](v67, v69);
      v70 = MEMORY[0x277D46780];
      sub_22CF0F5E0(v69, MEMORY[0x277D46780]);
      sub_22CF0F5E0(v67, v70);
      sub_22CEEC3D8(v65, &qword_27D9F2F00, &unk_22D01A8D0);
      v71 = v66 + v93;
      v72 = v94;
      v94(v71, v62);
      v25 = v88;
      v72(v88, v62);
      result = v68(v97, v102);
      v38 = v86;
      v33 = v87;
      v37 = v96;
      if ((v92 & 1) == 0)
      {
        *(v76 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v82;
        if (__OFADD__(v77++, 1))
        {
          __break(1u);
          return sub_22CF7AC3C(v76, v75, v77, v91);
        }
      }
    }

    else
    {
      sub_22CEEC3D8(v99, &qword_27D9F2F00, &unk_22D01A8D0);
      v25 = v88;
      v64(v88, v100);
      result = (v59)(v97, v102);
      v38 = v86;
      v33 = v87;
      v37 = v96;
    }
  }

  v40 = v31;
  while (1)
  {
    v31 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v31 >= v38)
    {
      return sub_22CF7AC3C(v76, v75, v77, v91);
    }

    v41 = v33[v31];
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      v96 = (v41 - 1) & v41;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22CFA2BC8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22CFA3950(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_22CFA2C64(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_22CFA2CEC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22CFA2F40(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22CFA2D7C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_22CFA2F40(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_22CFA2CEC(v13, v6, a2, a1);

    MEMORY[0x2318C6860](v13, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22CFA2F40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_22D016EAC();

      sub_22D0166DC();
      v27 = sub_22D016ECC();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_22CF64FC4(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_22D016EAC();

      sub_22D0166DC();
      v41 = sub_22D016ECC();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_22D016DFC() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA331C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v36 = a2;
  v37 = a4;
  v11 = sub_22D01436C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v5;
  v38 = v19;
  v20 = sub_22CEF5CD8(a5);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v21;
  if (v19[3] < v25)
  {
    sub_22CFBB678(v25, isUniquelyReferenced_nonNull_native);
    v20 = sub_22CEF5CD8(a5);
    if ((v6 & 1) == (v26 & 1))
    {
      goto LABEL_6;
    }

    v20 = sub_22D016E1C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v33 = v20;
    sub_22CFB7F00();
    v20 = v33;
    v27 = v38;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v34 = v20;
    (*(v12 + 16))(v16, a5, v11);
    sub_22CFC03E4(v34, v16, a1 & 1, v36, a3 & 1, v37, v27);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  v27 = v38;
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v28 = (v27[7] + 32 * v20);
  result = *v28;
  v30 = *(v28 + 1);
  v31 = v28[16];
  v32 = *(v28 + 3);
  *v28 = a1 & 1;
  *(v28 + 1) = v36;
  v28[16] = a3 & 1;
  *(v28 + 3) = v37;
LABEL_11:
  *v7 = v27;
  return result;
}

uint64_t sub_22CFA3518(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_22D016B0C();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22CFA3598(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = (*(a5 + 48) + 16 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = type metadata accessor for Activity();
    sub_22CF0CBEC(v7 + *(*(v11 - 8) + 72) * a2, v6, type metadata accessor for Activity);

    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22CFA3668(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_22D0159DC();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = sub_22D015A3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v12 + *(v14 + 72) * a3;

  return v15(a2, v16, v13);
}

uint64_t sub_22CFA377C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = type metadata accessor for TaskScheduler.Task();
    sub_22CF0CBEC(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for TaskScheduler.Task);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_22CFA3864(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  return a2;
}

unint64_t sub_22CFA38FC()
{
  result = qword_27D9F2E58;
  if (!qword_27D9F2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2E58);
  }

  return result;
}

uint64_t sub_22CFA3950(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v44 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v6 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48, v7);
  v9 = (&v41 - v8);
  v10 = type metadata accessor for Activity();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  result = MEMORY[0x28223BE20](v10 - 8, v12);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v50 = a3;
  v16 = *(a3 + 64);
  v43 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v21 = a4 + 56;
  v45 = 0;
  v46 = v20;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v51 = (v19 - 1) & v19;
LABEL_13:
    v25 = v22 | (v15 << 6);
    v26 = v50[7];
    v27 = (v50[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v47 + 72);
    v49 = v25;
    v31 = v52;
    sub_22CF0CBEC(v26 + v30 * v25, v52, type metadata accessor for Activity);
    *v9 = v28;
    v9[1] = v29;
    v32 = v9;
    sub_22CF0CBEC(v31, v9 + *(v48 + 48), type metadata accessor for Activity);
    if (!*(a4 + 16))
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_22;
    }

    v33 = *(a4 + 40);
    sub_22D016EAC();
    swift_bridgeObjectRetain_n();
    sub_22D0166DC();
    v34 = sub_22D016ECC();
    v35 = -1 << *(a4 + 32);
    v36 = v34 & ~v35;
    if ((*(v21 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
    {
      v37 = ~v35;
      while (1)
      {
        v38 = (*(a4 + 48) + 16 * v36);
        v39 = *v38 == v28 && v38[1] == v29;
        if (v39 || (sub_22D016DFC() & 1) != 0)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v21 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v9 = v32;
      sub_22CEEC3D8(v32, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F5E0(v52, type metadata accessor for Activity);

      v20 = v46;
      v19 = v51;
    }

    else
    {
LABEL_22:
      v9 = v32;
      sub_22CEEC3D8(v32, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F5E0(v52, type metadata accessor for Activity);

      *(v44 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v20 = v46;
      v40 = __OFADD__(v45++, 1);
      v19 = v51;
      if (v40)
      {
        goto LABEL_28;
      }
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return sub_22CEE4A40(v44, v42, v45, v50);
    }

    v24 = *(v43 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v51 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22CFA3D04(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_22CFA2BC8(v14, v7, a1, a2);
      MEMORY[0x2318C6860](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9, v10);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_22CFA3950((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_22CFA3EC4(uint64_t a1, uint64_t a2)
{
  v211 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v207 - v6;
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  v209 = v8;
  v210 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v208 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityManagerEvent(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = (&v207 - v19);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = (&v207 - v25);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = MEMORY[0x28223BE20](v28, &v207 - v29);
  v32 = (&v207 - v31);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v38 = (&v207 - v37);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = MEMORY[0x28223BE20](v40, v41);
  v44 = MEMORY[0x28223BE20](v42, v43);
  v46 = MEMORY[0x28223BE20](v44, v45);
  v48 = MEMORY[0x28223BE20](v46, v47);
  v50 = &v207 - v49;
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = (&v207 - v53);
  v56 = MEMORY[0x28223BE20](v52, v55);
  v58 = &v207 - v57;
  v60 = MEMORY[0x28223BE20](v56, v59);
  v70 = (&v207 - v69);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_16;
      }

      v96 = v68;
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v97 = sub_22D01637C();
      __swift_project_value_buffer(v97, qword_2814442F0);
      v98 = v211;
      sub_22CF0CBEC(v211, v26, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v98, v96, type metadata accessor for ActivityManagerEvent);
      v99 = sub_22D01636C();
      v100 = sub_22D01690C();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v212 = v102;
        *v101 = 136446466;
        v103 = *v26;
        v104 = v26[1];

        sub_22CF0F5E0(v26, type metadata accessor for ActivityManagerEvent);
        v105 = sub_22CEEE31C(v103, v104, &v212);

        *(v101 + 4) = v105;
        *(v101 + 12) = 2082;
        v106 = v96 + *(type metadata accessor for Activity() + 56);
        v107 = v208;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
        v108 = v209;
        v109 = sub_22D016DEC();
        v111 = v110;
        (*(v210 + 8))(v107, v108);
        sub_22CF0F5E0(v96, type metadata accessor for ActivityManagerEvent);
        v112 = sub_22CEEE31C(v109, v111, &v212);

        *(v101 + 14) = v112;
        v113 = "Sending state change opportunistically for 'none' subscription: %{public}s.%{public}s";
        v114 = v100;
LABEL_26:
        _os_log_impl(&dword_22CEE1000, v99, v114, v113, v101, 0x16u);
        swift_arrayDestroy();
        v146 = v102;
LABEL_32:
        MEMORY[0x2318C6860](v146, -1, -1);
        MEMORY[0x2318C6860](v101, -1, -1);

        return 0;
      }

      sub_22CF0F5E0(v96, type metadata accessor for ActivityManagerEvent);
      v163 = v26;
LABEL_53:
      sub_22CF0F5E0(v163, type metadata accessor for ActivityManagerEvent);
      return 0;
    }

    v147 = v211;
    if (*(v211 + *(v60 + 20)) == 3)
    {
      v148 = v63;
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v149 = sub_22D01637C();
      __swift_project_value_buffer(v149, qword_2814442F0);
      sub_22CF0CBEC(v147, v38, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v147, v148, type metadata accessor for ActivityManagerEvent);
      v99 = sub_22D01636C();
      v150 = sub_22D01690C();
      if (os_log_type_enabled(v99, v150))
      {
        v101 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v212 = v151;
        *v101 = 136446466;
        v152 = *v38;
        v153 = v38[1];

        sub_22CF0F5E0(v38, type metadata accessor for ActivityManagerEvent);
        v154 = sub_22CEEE31C(v152, v153, &v212);

        *(v101 + 4) = v154;
        *(v101 + 12) = 2082;
        v155 = v148 + *(type metadata accessor for Activity() + 56);
        v156 = v208;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
        v157 = v209;
        v158 = sub_22D016DEC();
        v160 = v159;
        (*(v210 + 8))(v156, v157);
        sub_22CF0F5E0(v148, type metadata accessor for ActivityManagerEvent);
        v161 = sub_22CEEE31C(v158, v160, &v212);

        *(v101 + 14) = v161;
        _os_log_impl(&dword_22CEE1000, v99, v150, "Sending state change opportunistically for stateChanges subscription: %{public}s.%{public}s", v101, 0x16u);
        swift_arrayDestroy();
        v146 = v151;
        goto LABEL_32;
      }

      sub_22CF0F5E0(v148, type metadata accessor for ActivityManagerEvent);
      v163 = v38;
      goto LABEL_53;
    }

    v180 = v61;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v181 = sub_22D01637C();
    __swift_project_value_buffer(v181, qword_2814442F0);
    sub_22CF0CBEC(v147, v32, type metadata accessor for ActivityManagerEvent);
    sub_22CF0CBEC(v147, v180, type metadata accessor for ActivityManagerEvent);
    v165 = sub_22D01636C();
    v182 = sub_22D01690C();
    if (!os_log_type_enabled(v165, v182))
    {

      sub_22CF0F5E0(v180, type metadata accessor for ActivityManagerEvent);
      v162 = v32;
      goto LABEL_55;
    }

    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v212 = v184;
    *v183 = 136446466;
    v185 = *v32;
    v186 = v32[1];

    sub_22CF0F5E0(v32, type metadata accessor for ActivityManagerEvent);
    v187 = sub_22CEEE31C(v185, v186, &v212);

    *(v183 + 4) = v187;
    *(v183 + 12) = 2082;
    v188 = v180 + *(type metadata accessor for Activity() + 56);
    v189 = v208;
    sub_22D01466C();
    sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
    v190 = v209;
    v191 = sub_22D016DEC();
    v193 = v192;
    (*(v210 + 8))(v189, v190);
    sub_22CF0F5E0(v180, type metadata accessor for ActivityManagerEvent);
    v194 = sub_22CEEE31C(v191, v193, &v212);

    *(v183 + 14) = v194;
    _os_log_impl(&dword_22CEE1000, v165, v182, "Sending state change immediately for stateChanges subscription: %{public}s.%{public}s", v183, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v184, -1, -1);
    v179 = v183;
LABEL_43:
    MEMORY[0x2318C6860](v179, -1, -1);

    return 1;
  }

  if (!a2)
  {
    v133 = v211;
    if (*(v211 + *(v60 + 20)) == 3)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v134 = sub_22D01637C();
      __swift_project_value_buffer(v134, qword_2814442F0);
      sub_22CF0CBEC(v133, v70, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v133, v58, type metadata accessor for ActivityManagerEvent);
      v99 = sub_22D01636C();
      v135 = sub_22D01690C();
      if (os_log_type_enabled(v99, v135))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v212 = v102;
        *v101 = 136446466;
        v136 = *v70;
        v137 = v70[1];

        sub_22CF0F5E0(v70, type metadata accessor for ActivityManagerEvent);
        v138 = sub_22CEEE31C(v136, v137, &v212);

        *(v101 + 4) = v138;
        *(v101 + 12) = 2082;
        v139 = &v58[*(type metadata accessor for Activity() + 56)];
        v140 = v208;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
        v141 = v209;
        v142 = sub_22D016DEC();
        v144 = v143;
        (*(v210 + 8))(v140, v141);
        sub_22CF0F5E0(v58, type metadata accessor for ActivityManagerEvent);
        v145 = sub_22CEEE31C(v142, v144, &v212);

        *(v101 + 14) = v145;
        v113 = "Sending update opportunistically for full subscription: %{public}s.%{public}s";
        v114 = v135;
        goto LABEL_26;
      }

      sub_22CF0F5E0(v58, type metadata accessor for ActivityManagerEvent);
      v163 = v70;
      goto LABEL_53;
    }

    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v164 = sub_22D01637C();
    __swift_project_value_buffer(v164, qword_2814442F0);
    sub_22CF0CBEC(v133, v54, type metadata accessor for ActivityManagerEvent);
    sub_22CF0CBEC(v133, v50, type metadata accessor for ActivityManagerEvent);
    v165 = sub_22D01636C();
    v166 = sub_22D01690C();
    if (!os_log_type_enabled(v165, v166))
    {

      sub_22CF0F5E0(v50, type metadata accessor for ActivityManagerEvent);
      v162 = v54;
      goto LABEL_55;
    }

    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v212 = v168;
    *v167 = 136446466;
    v169 = *v54;
    v170 = v54[1];

    sub_22CF0F5E0(v54, type metadata accessor for ActivityManagerEvent);
    v171 = sub_22CEEE31C(v169, v170, &v212);

    *(v167 + 4) = v171;
    *(v167 + 12) = 2082;
    v172 = &v50[*(type metadata accessor for Activity() + 56)];
    v173 = v208;
    sub_22D01466C();
    sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
    v174 = v209;
    v175 = sub_22D016DEC();
    v177 = v176;
    (*(v210 + 8))(v173, v174);
    sub_22CF0F5E0(v50, type metadata accessor for ActivityManagerEvent);
    v178 = sub_22CEEE31C(v175, v177, &v212);

    *(v167 + 14) = v178;
    _os_log_impl(&dword_22CEE1000, v165, v166, "Sending update immediately for full subscription: %{public}s.%{public}s", v167, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v168, -1, -1);
    v179 = v167;
    goto LABEL_43;
  }

  if (a2 != 1)
  {
LABEL_16:
    v115 = v66;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v116 = sub_22D01637C();
    __swift_project_value_buffer(v116, qword_2814442F0);
    v117 = v211;
    sub_22CF0CBEC(v211, v20, type metadata accessor for ActivityManagerEvent);
    sub_22CF0CBEC(v117, v115, type metadata accessor for ActivityManagerEvent);
    v118 = sub_22D01636C();
    v119 = sub_22D01690C();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v212 = v121;
      *v120 = 136446466;
      v122 = *v20;
      v123 = v20[1];

      sub_22CF0F5E0(v20, type metadata accessor for ActivityManagerEvent);
      v124 = sub_22CEEE31C(v122, v123, &v212);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2082;
      v125 = v115 + *(type metadata accessor for Activity() + 56);
      v126 = v208;
      sub_22D01466C();
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
      v127 = v209;
      v128 = sub_22D016DEC();
      v130 = v129;
      (*(v210 + 8))(v126, v127);
      sub_22CF0F5E0(v115, type metadata accessor for ActivityManagerEvent);
      v131 = sub_22CEEE31C(v128, v130, &v212);

      *(v120 + 14) = v131;
      v132 = "Sending state change immediately for unhandled subscription: %{public}s.%{public}s";
LABEL_20:
      _os_log_impl(&dword_22CEE1000, v118, v119, v132, v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v121, -1, -1);
      MEMORY[0x2318C6860](v120, -1, -1);

      return 1;
    }

    sub_22CF0F5E0(v115, type metadata accessor for ActivityManagerEvent);
    v162 = v20;
LABEL_55:
    sub_22CF0F5E0(v162, type metadata accessor for ActivityManagerEvent);
    return 1;
  }

  v71 = v211;
  if (*(v211 + *(v60 + 20)) == 3)
  {
    v72 = v65;
    v73 = v64;
    v74 = v62;
    v75 = v67;
    v76 = type metadata accessor for Activity();
    v77 = v71 + *(v76 + 56);
    sub_22D01462C();
    v78 = sub_22D0150CC();
    LODWORD(v77) = (*(*(v78 - 8) + 48))(v7, 1, v78);
    sub_22CEEC3D8(v7, &qword_27D9F2308, &unk_22D018950);
    if (v77 == 1)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v79 = sub_22D01637C();
      __swift_project_value_buffer(v79, qword_2814442F0);
      v80 = v73;
      sub_22CF0CBEC(v71, v73, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v71, v75, type metadata accessor for ActivityManagerEvent);
      v81 = sub_22D01636C();
      v82 = sub_22D01690C();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v212 = v84;
        *v83 = 136446466;
        v85 = *v80;
        v86 = v80[1];

        sub_22CF0F5E0(v80, type metadata accessor for ActivityManagerEvent);
        v87 = sub_22CEEE31C(v85, v86, &v212);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2082;
        v88 = v75 + *(v76 + 56);
        v89 = v208;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
        v90 = v209;
        v91 = sub_22D016DEC();
        v93 = v92;
        (*(v210 + 8))(v89, v90);
        sub_22CF0F5E0(v75, type metadata accessor for ActivityManagerEvent);
        v94 = sub_22CEEE31C(v91, v93, &v212);

        *(v83 + 14) = v94;
        _os_log_impl(&dword_22CEE1000, v81, v82, "Sending non-alerting update opportunistically for alerts subscription: %{public}s.%{public}s", v83, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v84, -1, -1);
        MEMORY[0x2318C6860](v83, -1, -1);

        return 0;
      }

      sub_22CF0F5E0(v75, type metadata accessor for ActivityManagerEvent);
      v163 = v73;
      goto LABEL_53;
    }

    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v195 = sub_22D01637C();
    __swift_project_value_buffer(v195, qword_2814442F0);
    sub_22CF0CBEC(v71, v72, type metadata accessor for ActivityManagerEvent);
    v196 = v74;
    sub_22CF0CBEC(v71, v74, type metadata accessor for ActivityManagerEvent);
    v118 = sub_22D01636C();
    v119 = sub_22D01690C();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v212 = v121;
      *v120 = 136446466;
      v197 = *v72;
      v198 = v72[1];

      sub_22CF0F5E0(v72, type metadata accessor for ActivityManagerEvent);
      v199 = sub_22CEEE31C(v197, v198, &v212);

      *(v120 + 4) = v199;
      *(v120 + 12) = 2082;
      v200 = v196 + *(v76 + 56);
      v201 = v208;
      sub_22D01466C();
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0]);
      v202 = v209;
      v203 = sub_22D016DEC();
      v205 = v204;
      (*(v210 + 8))(v201, v202);
      sub_22CF0F5E0(v196, type metadata accessor for ActivityManagerEvent);
      v206 = sub_22CEEE31C(v203, v205, &v212);

      *(v120 + 14) = v206;
      v132 = "Sending alerting update immediately for alerts subscription: %{public}s.%{public}s";
      goto LABEL_20;
    }

    sub_22CF0F5E0(v196, type metadata accessor for ActivityManagerEvent);
    v162 = v72;
    goto LABEL_55;
  }

  return 1;
}

uint64_t sub_22CFA5558(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return (a3 & 1) != 0 && !*(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) || (a2 & 1) != 0 && *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) == 1;
  }

  v8 = sub_22CEEC698(*a1, a1[1]);
  if ((v9 & 1) == 0)
  {
    return (a3 & 1) != 0 && !*(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) || (a2 & 1) != 0 && *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) == 1;
  }

  v10 = *(*(a4 + 56) + 8 * v8);

  return sub_22CFA3EC4(a1, v10);
}

uint64_t sub_22CFA5648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766974634177656ELL && a2 == 0xED00007365697469;
  if (v4 || (sub_22D016DFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022D020660 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xED0000736E6F6974 || (sub_22D016DFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x800000022D020680 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22D016DFC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22CFA57C8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E98, &qword_22D01A8A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_22CFA5AA8();
  sub_22D016EDC();
  if (!v1)
  {
    LOBYTE(v13) = 0;
    LOBYTE(v9) = sub_22D016D9C();
    LOBYTE(v13) = 1;
    sub_22D016D6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EA8, &qword_22D01A8A8);
    v12 = 2;
    sub_22CFA5B50(&qword_27D9F2EB0, sub_22CFA5AFC);
    sub_22D016DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EC0, &qword_22D01A8B0);
    v12 = 3;
    sub_22CFA5C28(&qword_27D9F2EC8);
    sub_22D016D7C();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9 & 1;
}

unint64_t sub_22CFA5AA8()
{
  result = qword_27D9F2EA0;
  if (!qword_27D9F2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2EA0);
  }

  return result;
}

unint64_t sub_22CFA5AFC()
{
  result = qword_27D9F2EB8;
  if (!qword_27D9F2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2EB8);
  }

  return result;
}

uint64_t sub_22CFA5B50(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2EA8, &qword_22D01A8A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22CFA5BD4()
{
  result = qword_27D9F2EE0;
  if (!qword_27D9F2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2EE0);
  }

  return result;
}

uint64_t sub_22CFA5C28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2EC0, &qword_22D01A8B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CFA5C9C()
{
  v1 = *(type metadata accessor for ActivityParticipantEvent(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 24))(v0 + v2, ObjectType, v4);
}

uint64_t sub_22CFA5D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22CFA5D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22CF80CDC;

  return sub_22CF9E01C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_22CFA5E4C(uint64_t a1)
{
  v2 = sub_22D0159DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = sub_22D01598C();
  v23[1] = v8;
  v22[0] = 46;
  v22[1] = 0xE100000000000000;
  sub_22CFA6368();
  v9 = sub_22D016AAC();

  if (v9[2])
  {
    v10 = v9[4];
    v11 = v9[5];
  }

  else
  {

    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v12 = sub_22D01637C();
    __swift_project_value_buffer(v12, qword_2814442F0);
    (*(v3 + 16))(v7, a1, v2);
    v13 = sub_22D01636C();
    v14 = sub_22D0168EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136446210;
      sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790]);
      v17 = sub_22D016DEC();
      v19 = v18;
      (*(v3 + 8))(v7, v2);
      v20 = sub_22CEEE31C(v17, v19, v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22CEE1000, v13, v14, "Malformed record ID: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2318C6860](v16, -1, -1);
      MEMORY[0x2318C6860](v15, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_22CFA613C()
{
  v1 = *(sub_22D01436C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22CF94B60(v2, v3);
}

unint64_t sub_22CFA6208()
{
  result = qword_27D9F2F40;
  if (!qword_27D9F2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F40);
  }

  return result;
}

uint64_t sub_22CFA625C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22CFA62A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CFA6330@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 192);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22CFA6368()
{
  result = qword_27D9F2F48;
  if (!qword_27D9F2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F48);
  }

  return result;
}

uint64_t sub_22CFA63F8()
{
  result = sub_22D01430C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22CFA648C()
{
  result = sub_22D01436C();
  if (v1 <= 0x3F)
  {
    result = sub_22D015A5C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22CFA6514()
{
  result = qword_27D9F2F60;
  if (!qword_27D9F2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F60);
  }

  return result;
}

unint64_t sub_22CFA656C()
{
  result = qword_27D9F2F68;
  if (!qword_27D9F2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F68);
  }

  return result;
}

unint64_t sub_22CFA65C4()
{
  result = qword_27D9F2F70;
  if (!qword_27D9F2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F70);
  }

  return result;
}

unint64_t sub_22CFA6618()
{
  result = qword_27D9F2F80;
  if (!qword_27D9F2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorParticipant.RemoteActivityDismissal.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ReplicatorParticipant.RemoteActivityDismissal.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_22CFA6750()
{
  result = qword_27D9F2FA0;
  if (!qword_27D9F2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2FA0);
  }

  return result;
}

unint64_t sub_22CFA67A8()
{
  result = qword_27D9F2FA8;
  if (!qword_27D9F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2FA8);
  }

  return result;
}

unint64_t sub_22CFA6800()
{
  result = qword_27D9F2FB0;
  if (!qword_27D9F2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2FB0);
  }

  return result;
}

uint64_t sub_22CFA68C4(void *a1)
{
  v2 = v1;
  v79 = a1;
  v85 = sub_22D01534C();
  v76 = *(v85 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v85, v4);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Assertion();
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v83 = &v75 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v75 - v15;
  v82 = sub_22D01697C();
  v17 = *(v82 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v82, v19);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D01691C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v25 = sub_22D01653C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  type metadata accessor for CachingAssertionStore();
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x277D84F98];
  *(v1 + 2) = v28;
  type metadata accessor for UnfairLock();
  v29 = swift_allocObject();
  v30 = swift_slowAlloc();
  *(v29 + 16) = v30;
  *v30 = 0;
  *(v1 + 4) = v29;
  v78 = sub_22CEEC38C();
  sub_22D0164FC();
  v87 = MEMORY[0x277D84F90];
  sub_22CFA86B8(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v17 + 104))(v21, *MEMORY[0x277D85268], v82);
  v31 = v79;
  *(v1 + 3) = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v32 = qword_2814444F8;
    *(v2 + 5) = qword_2814444F8;
    if (!v32)
    {

      return v2;
    }

    v33 = *(v32 + 88);

    v34 = sub_22CF58758();
    v75 = v31;

    v35 = *(v34 + 16);
    v79 = v35;
    v31 = 0;
    if (v35)
    {
      v36 = v34 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v37 = *(v81 + 72);
      v38 = 0xE000000000000000;
      do
      {
        sub_22CFA84A0(v36, v16);
        v40 = HIBYTE(v38) & 0xF;
        if ((v38 & 0x2000000000000000) == 0)
        {
          v40 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          v87 = v31;
          v88 = v38;

          MEMORY[0x2318C5860](8236, 0xE200000000000000);
          sub_22CFA86B8(&qword_28143FBA0, MEMORY[0x277D4D450]);
          v39 = sub_22D016DEC();
          MEMORY[0x2318C5860](v39);

          v31 = v87;
          v38 = v88;
        }

        else
        {
          sub_22CFA86B8(&qword_28143FBA0, MEMORY[0x277D4D450]);
          v31 = sub_22D016DEC();
          v42 = v41;

          v38 = v42;
        }

        sub_22CFA865C(v16);
        v36 += v37;
        --v35;
      }

      while (v35);
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v43 = sub_22D01637C();
    __swift_project_value_buffer(v43, qword_2814443C0);

    v44 = sub_22D01636C();
    v45 = sub_22D01690C();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v80;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v87 = v49;
      *v48 = 136446210;
      v31 = sub_22CEEE31C(v31, v38, &v87);

      *(v48 + 4) = v31;
      _os_log_impl(&dword_22CEE1000, v44, v45, "Restored assertions: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2318C6860](v49, -1, -1);
      MEMORY[0x2318C6860](v48, -1, -1);
    }

    else
    {
    }

    if (!v79)
    {
      break;
    }

    v16 = 0;
    v78 = v34 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v82 = (v76 + 16);
    v77 = (v76 + 8);
    while (v16 < *(v34 + 16))
    {
      v51 = v34;
      v31 = *(v81 + 72);
      v52 = v83;
      sub_22CFA84A0(v78 + v31 * v16, v83);
      v53 = v2;
      v54 = *(v2 + 2);
      v2 = *v82;
      (*v82)(v47, v52, v85);
      swift_beginAccess();
      sub_22CFA84A0(v52, v84);
      v55 = *(v54 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *(v54 + 16);
      v57 = v86;
      *(v54 + 16) = 0x8000000000000000;
      v58 = sub_22CFB606C(v47);
      v60 = v57[2];
      v61 = (v59 & 1) == 0;
      v62 = __OFADD__(v60, v61);
      v63 = v60 + v61;
      if (v62)
      {
        goto LABEL_36;
      }

      v64 = v59;
      if (v57[3] < v63)
      {
        sub_22CFB8B04(v63, isUniquelyReferenced_nonNull_native);
        v58 = sub_22CFB606C(v47);
        if ((v64 & 1) != (v65 & 1))
        {
          sub_22D016E1C();
          __break(1u);

          result = sub_22D016CFC();
          __break(1u);
          return result;
        }

LABEL_28:
        v66 = v86;
        if (v64)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v73 = v58;
      sub_22CFB635C();
      v58 = v73;
      v66 = v86;
      if (v64)
      {
LABEL_20:
        sub_22CF7B5B4(v84, v66[7] + v58 * v31);
        (*v77)(v47, v85);
        goto LABEL_21;
      }

LABEL_29:
      v66[(v58 >> 6) + 8] |= 1 << v58;
      v67 = v76;
      v68 = v58;
      v69 = v85;
      v2(v66[6] + *(v76 + 72) * v58, v80, v85);
      sub_22CFA8504(v84, v66[7] + v68 * v31);
      v70 = *(v67 + 8);
      v47 = v80;
      v70(v80, v69);
      v71 = v66[2];
      v62 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v62)
      {
        goto LABEL_37;
      }

      v66[2] = v72;
LABEL_21:
      ++v16;
      v50 = *(v54 + 16);
      *(v54 + 16) = v66;

      swift_endAccess();
      sub_22CFA865C(v83);
      v2 = v53;
      v34 = v51;
      if (v79 == v16)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_33:

  return v2;
}

uint64_t sub_22CFA724C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_22CFA72C0(uint64_t a1)
{
  v2 = v1;
  v23 = type metadata accessor for Assertion();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v22 - v10;
  v12 = sub_22D01534C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v24);
  v18 = *(v1 + 16);
  (*(v13 + 16))(v17, a1, v12);
  sub_22CFA84A0(a1, v11);
  (*(v4 + 56))(v11, 0, 1, v23);
  swift_beginAccess();
  sub_22CFB2F78(v11, v17);
  swift_endAccess();
  sub_22D01566C();
  v19 = *(v2 + 24);
  sub_22CFA84A0(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  sub_22CFA8504(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v24);
}

uint64_t sub_22CFA7570(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Assertion();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = *(a3 + 40);
  if (v13)
  {
    v21[1] = a2;
    v22 = a1;
    v21[0] = v21;
    MEMORY[0x28223BE20](v11, v12);
    v21[-2] = a4;
    v14 = *(v13 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v15 = sub_22CF3D558();
    v16 = *(*(v13 + 96) + 16);

    os_unfair_lock_lock(v16);
    v17 = *(v13 + 16);
    MEMORY[0x28223BE20](v18, v19);
    v21[-4] = sub_22CFA8630;
    v21[-3] = &v21[-4];
    v21[-2] = v15;
    sub_22D0143FC();
    os_unfair_lock_unlock(v16);

    sub_22CF3DC24();

    a1 = v22;
  }

  return a1(v11);
}

void sub_22CFA7968(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = sub_22D01534C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v19 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v19);
  v13 = *(v1 + 16);
  v14 = *(v10 + 16);
  v14(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v15 = type metadata accessor for Assertion();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  swift_beginAccess();
  sub_22CFB2F78(v8, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_endAccess();
  sub_22D01566C();
  v16 = *(v2 + 24);
  v14(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v10 + 32))(v18 + v17, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v19);
}

uint64_t sub_22CFA7BD4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D01534C();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v14 = *(a3 + 40);
  if (v14)
  {
    v22[3] = a2;
    v23 = a1;
    v22[1] = v13;
    v22[2] = v22;
    MEMORY[0x28223BE20](v11, v12);
    v22[0] = a4;
    v22[-2] = a4;
    v15 = *(v14 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v16 = sub_22CF3D558();
    v17 = *(*(v14 + 96) + 16);

    os_unfair_lock_lock(v17);
    v18 = *(v14 + 16);
    MEMORY[0x28223BE20](v19, v20);
    v22[-4] = sub_22CFA8474;
    v22[-3] = &v22[-4];
    v22[-2] = v16;
    sub_22D0143FC();
    os_unfair_lock_unlock(v17);

    sub_22CF3DC24();

    a1 = v23;
  }

  return a1(v11);
}

void sub_22CFA8030()
{
  v1 = v0;
  v2 = *(*(v0 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v0 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = MEMORY[0x277D84F98];

  sub_22D01566C();
  v5 = *(v1 + 24);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v2);
}

uint64_t sub_22CFA80FC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (v4)
  {
    v5 = *(v4 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v6 = *(*(v4 + 96) + 16);

    os_unfair_lock_lock(v6);
    v7 = *(v4 + 16);
    MEMORY[0x28223BE20](v8, v9);
    sub_22D0143FC();
    os_unfair_lock_unlock(v6);

    sub_22CF3DC24();
  }

  return a1();
}

uint64_t sub_22CFA8474(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 80);
  return sub_22CF5A80C();
}

uint64_t sub_22CFA84A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFA8504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFA8594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

uint64_t sub_22CFA8630(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 80);
  return sub_22CF59EEC(v2);
}

uint64_t sub_22CFA865C(uint64_t a1)
{
  v2 = type metadata accessor for Assertion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CFA86B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CFA871C()
{
  sub_22CF460CC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFA8788(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 88) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CFA87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v85 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v84 = &v69 - v11;
  v83 = sub_22D01461C();
  v12 = *(v83 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v83, v14);
  v82 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v87 = &v69 - v19;
  v20 = sub_22D01430C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v70 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v71 = &v69 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v69 - v30;
  v32 = type metadata accessor for Activity();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v81 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v69 - v39;
  v72 = *(v33 + 56);
  v73 = v33 + 56;
  result = v72(a2, 1, 1, v32);
  v42 = *(a1 + 16);
  if (v42)
  {
    v43 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v44 = v21;
    v45 = (v21 + 8);
    v78 = (v12 + 8);
    v79 = (v33 + 48);
    v76 = a2;
    v77 = (v44 + 48);
    v69 = (v44 + 32);
    v46 = *(v33 + 72);
    v88 = v45;
    v89 = v46;
    v80 = v32;
    v74 = v20;
    v75 = v40;
    v86 = v31;
    while (1)
    {
      sub_22CF0CC54(v43, v40, type metadata accessor for Activity);
      v47 = *(v32 + 40);
      sub_22D0142DC();
      sub_22CEFF220(&qword_281443A30, MEMORY[0x277CC9578]);
      v48 = sub_22D01663C();
      v49 = *v45;
      (*v45)(v31, v20);
      if ((v48 & 1) == 0)
      {
        goto LABEL_4;
      }

      v50 = &v40[*(v32 + 60)];
      v51 = v32;
      v52 = v87;
      sub_22CEEB6DC(v50, v87, &qword_27D9F26E0, &unk_22D018F80);
      v53 = sub_22D01486C();
      v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
      sub_22CEEC3D8(v52, &qword_27D9F26E0, &unk_22D018F80);
      if (v54 == 1)
      {
        break;
      }

      v59 = v76;
      v60 = v85;
      sub_22CEEB6DC(v76, v85, &qword_27D9F3810, &unk_22D018FA0);
      v61 = *v79;
      if ((*v79)(v60, 1, v51) == 1)
      {
        sub_22CEEC3D8(v60, &qword_27D9F3810, &unk_22D018FA0);
        v62 = v59;
        sub_22CEEC3D8(v59, &qword_27D9F3810, &unk_22D018FA0);
        v40 = v75;
        sub_22CFA8FC0(v75, v62);
        result = v72(v62, 0, 1, v51);
        v32 = v51;
        v45 = v88;
        v20 = v74;
        v31 = v86;
      }

      else
      {
        v63 = v60;
        v64 = v81;
        sub_22CFA8FC0(v63, v81);
        v65 = v59;
        result = v61(v59, 1, v51);
        v31 = v86;
        v40 = v75;
        if (result == 1)
        {
          __break(1u);
          return result;
        }

        v66 = v65 + *(v51 + 56);
        sub_22D01469C();
        v67 = v64 + *(v51 + 56);
        v68 = v70;
        sub_22D01469C();
        LOBYTE(v67) = sub_22D01428C();
        v20 = v74;
        v49(v68, v74);
        v49(v31, v20);
        sub_22CF0F640(v40, type metadata accessor for Activity);
        if (v67)
        {
          sub_22CEEC3D8(v65, &qword_27D9F3810, &unk_22D018FA0);
          sub_22CFA8FC0(v81, v65);
          result = v72(v65, 0, 1, v51);
        }

        else
        {
          result = sub_22CF0F640(v81, type metadata accessor for Activity);
        }

        v32 = v51;
        v45 = v88;
      }

LABEL_5:
      v43 += v89;
      if (!--v42)
      {
        return result;
      }
    }

    v55 = &v40[*(v51 + 56)];
    v56 = v82;
    sub_22D01467C();
    v57 = v84;
    sub_22D01460C();
    (*v78)(v56, v83);
    if ((*v77)(v57, 1, v20) == 1)
    {
      sub_22CEEC3D8(v57, &qword_27D9F2648, &unk_22D018BC0);
      v32 = v80;
      v45 = v88;
      v31 = v86;
    }

    else
    {
      v58 = v71;
      (*v69)(v71, v57, v20);
      v31 = v86;
      sub_22D0142DC();
      sub_22D01428C();
      v45 = v88;
      v49(v31, v20);
      v49(v58, v20);
      v32 = v80;
    }

LABEL_4:
    result = sub_22CF0F640(v40, type metadata accessor for Activity);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_22CFA8FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22CFA9024(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, double a4)
{
  v77 = a3;
  v71 = a1;
  v72 = a2;
  v6 = sub_22D0164CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01653C();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v75 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01658C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v69 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v81 = &v63 - v22;
  v23 = sub_22D0164BC();
  v73 = *(v23 - 8);
  v74 = v23;
  v24 = *(v73 + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v70 = &v63 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v80 = (&v63 - v33);
  v34 = sub_22D0169CC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v63 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v4 + 24) + 16));
  v40 = a4 * 1000000.0;
  if (COERCE__INT64(fabs(a4 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v41 = v40;
  v79 = v15;
  if (v40 >= 0x7FFFFFFF)
  {
    v41 = 0x7FFFFFFFLL;
  }

  v65 = v41;
  sub_22CFA9994();
  v42 = v16;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFA99EC(&qword_27D9F2FC0, MEMORY[0x277D85278]);
  v68 = v6;
  v64 = v4;
  v66 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2FC8, qword_22D01AD08);
  v67 = v11;
  sub_22CEE8340(&unk_27D9F2FD0, &qword_27D9F2FC8, qword_22D01AD08);
  sub_22D016ADC();
  v43 = sub_22D0169DC();
  (*(v35 + 8))(v39, v34);
  v44 = v80;
  *v80 = v65;
  v46 = v73;
  v45 = v74;
  v47 = *(v73 + 104);
  v47(v44, *MEMORY[0x277D85170], v74);
  v48 = v69;
  sub_22D01657C();
  v49 = v81;
  MEMORY[0x2318C5710](v48, v44);
  v50 = v42;
  v51 = v28;
  v52 = *(v50 + 8);
  v65 = v50 + 8;
  v71 = v52;
  v52(v48, v79);
  ObjectType = swift_getObjectType();
  v54 = v70;
  v47(v70, *MEMORY[0x277D85180], v45);
  *v51 = 0;
  v47(v51, *MEMORY[0x277D85168], v45);
  MEMORY[0x2318C5B90](v49, v54, v51, ObjectType);
  v55 = *(v46 + 8);
  v55(v51, v45);
  v55(v54, v45);
  v56 = swift_allocObject();
  v57 = v64;
  v58 = v72;
  v56[2] = v64;
  v56[3] = v58;
  v56[4] = v77;
  aBlock[4] = sub_22CFA99E0;
  aBlock[5] = v56;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_14;
  v59 = _Block_copy(aBlock);

  v60 = v75;
  sub_22D0164EC();
  v61 = v78;
  sub_22CFA97D0();
  sub_22D0169EC();
  _Block_release(v59);
  (*(v66 + 8))(v61, v68);
  (*(v76 + 8))(v60, v67);

  v62 = *(v57 + 16);
  *(v57 + 16) = v43;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_22D016A0C();
  swift_unknownObjectRelease_n();
  v71(v81, v79);
  v55(v80, v45);
}

uint64_t sub_22CFA9760(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(*(a1 + 24) + 16);

  os_unfair_lock_lock(v3);
  sub_22CFA98A8();
  os_unfair_lock_unlock(v3);

  return a2(v4);
}

uint64_t sub_22CFA97D0()
{
  sub_22D0164CC();
  sub_22CFA99EC(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  return sub_22D016ADC();
}