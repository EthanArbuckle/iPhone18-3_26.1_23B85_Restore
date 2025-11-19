uint64_t sub_1A9906640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = v90[8];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v77 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5940, &unk_1A99A6ED0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5938, &qword_1A99A6EC8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A50, &qword_1A99A74C8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v77 - v27;
  v29 = &v77 + *(v26 + 56) - v27;
  sub_1A97C13A4(a1, &v77 - v27, &qword_1EB3B5938, &qword_1A99A6EC8);
  sub_1A97C13A4(a2, v29, &qword_1EB3B5938, &qword_1A99A6EC8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v28, v23, &qword_1EB3B5938, &qword_1A99A6EC8);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5950, &qword_1A99A6EE0) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v29, v16, &qword_1EB3B5940, &unk_1A99A6ED0);
      v57 = v91;
      v58 = v90[4];
      v59 = v87;
      v58(v87, &v23[v54], v91);
      v60 = v86;
      v58(v86, &v29[v54], v57);
      if (*v23 == *v16 && *(v23 + 1) == *(v16 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v61 = *(v23 + 3);
        v62 = *(v23 + 4);
        v63 = *(v23 + 5);
        v64 = v23[48];
        v97 = *(v23 + 2);
        v98 = v61;
        v99 = v62;
        v100 = v63;
        v101 = v64;
        v66 = *(v16 + 3);
        v67 = *(v16 + 4);
        v68 = *(v16 + 5);
        v69 = v16[48];
        v92 = *(v16 + 2);
        v65 = v92;
        v93 = v66;
        v94 = v67;
        v95 = v68;
        v96 = v69;
        sub_1A97DC908(v97, v61, v62, v63, v64);
        sub_1A97DC908(v65, v66, v67, v68, v69);
        LOBYTE(v65) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
        sub_1A97DC96C(v92, v93, v94, v95, v96);
        sub_1A97DC96C(v97, v98, v99, v100, v101);
        sub_1A97B06FC(v23, &qword_1EB3B5940, &unk_1A99A6ED0);
        if (v65)
        {
          v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v70 = v91;
          v71 = v90[1];
          v71(v60, v91);
          v71(v59, v70);
          sub_1A97B06FC(v16, &qword_1EB3B5940, &unk_1A99A6ED0);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v23, &qword_1EB3B5940, &unk_1A99A6ED0);
      }

      v74 = v91;
      v75 = v90[1];
      v75(v60, v91);
      v75(v59, v74);
      sub_1A97B06FC(v16, &qword_1EB3B5940, &unk_1A99A6ED0);
      goto LABEL_20;
    }

    (v90[1])(&v23[v54], v91);
    sub_1A97B06FC(v23, &qword_1EB3B5940, &unk_1A99A6ED0);
LABEL_9:
    v55 = &qword_1EB3B5A50;
    v56 = &qword_1A99A74C8;
LABEL_21:
    sub_1A97B06FC(v28, v55, v56);
    v50 = 0;
    return v50 & 1;
  }

  sub_1A97C13A4(v28, v21, &qword_1EB3B5938, &qword_1A99A6EC8);
  v31 = *v21;
  v30 = *(v21 + 1);
  v32 = *(v21 + 3);
  v87 = *(v21 + 2);
  v85 = v32;
  LODWORD(v86) = v21[32];
  v33 = *(v21 + 5);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A58, &qword_1A99A74D0) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v90[1])(&v21[v34], v91);
    sub_1A97DC96C(v31, v30, v87, v85, v86);

    goto LABEL_9;
  }

  v79 = v28;
  v84 = v33;
  v35 = *(v29 + 1);
  v78 = *v29;
  v36 = *(v29 + 2);
  v77 = *(v29 + 3);
  v37 = v29[32];
  v83 = *(v29 + 5);
  v38 = v90[4];
  v39 = &v21[v34];
  v40 = v91;
  v38(v89, v39, v91);
  v38(v88, &v29[v34], v40);
  v97 = v31;
  v98 = v30;
  v41 = v85;
  v42 = v78;
  v99 = v87;
  v100 = v85;
  v43 = v86;
  v101 = v86;
  v92 = v78;
  v93 = v35;
  v44 = v77;
  v94 = v36;
  v95 = v77;
  v96 = v37;
  sub_1A97DC908(v31, v30, v87, v85, v86);
  v81 = v35;
  v82 = v36;
  v45 = v36;
  v46 = v44;
  v80 = v37;
  sub_1A97DC908(v42, v35, v45, v44, v37);
  LOBYTE(v44) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
  sub_1A97DC96C(v92, v93, v94, v95, v96);
  sub_1A97DC96C(v97, v98, v99, v100, v101);
  if ((v44 & 1) == 0)
  {
    sub_1A97DC96C(v42, v81, v82, v46, v80);

    sub_1A97DC96C(v31, v30, v87, v41, v43);

    v28 = v79;
    goto LABEL_17;
  }

  v47 = sub_1A9905724(v84, v83, &qword_1EB3B5940, &unk_1A99A6ED0);
  sub_1A97DC96C(v42, v81, v82, v46, v80);

  sub_1A97DC96C(v31, v30, v87, v41, v43);

  v28 = v79;
  if ((v47 & 1) == 0)
  {
LABEL_17:
    v72 = v91;
    v73 = v90[1];
    v73(v88, v91);
    v73(v89, v72);
LABEL_20:
    v55 = &qword_1EB3B5938;
    v56 = &qword_1A99A6EC8;
    goto LABEL_21;
  }

  v48 = v88;
  v49 = v89;
  v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v51 = v91;
  v52 = v48;
  v53 = v90[1];
  v53(v52, v91);
  v53(v49, v51);
LABEL_15:
  sub_1A97B06FC(v28, &qword_1EB3B5938, &qword_1A99A6EC8);
  return v50 & 1;
}

uint64_t sub_1A9906E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = v90[8];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v77 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A30, &qword_1A99A74A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A28, &qword_1A99A74A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A38, &qword_1A99A74B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v77 - v27;
  v29 = &v77 + *(v26 + 56) - v27;
  sub_1A97C13A4(a1, &v77 - v27, &qword_1EB3B5A28, &qword_1A99A74A0);
  sub_1A97C13A4(a2, v29, &qword_1EB3B5A28, &qword_1A99A74A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v28, v23, &qword_1EB3B5A28, &qword_1A99A74A0);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A48, &qword_1A99A74C0) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v29, v16, &qword_1EB3B5A30, &qword_1A99A74A8);
      v57 = v91;
      v58 = v90[4];
      v59 = v87;
      v58(v87, &v23[v54], v91);
      v60 = v86;
      v58(v86, &v29[v54], v57);
      if (*v23 == *v16 && *(v23 + 1) == *(v16 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v61 = *(v23 + 3);
        v62 = *(v23 + 4);
        v63 = *(v23 + 5);
        v64 = v23[48];
        v97 = *(v23 + 2);
        v98 = v61;
        v99 = v62;
        v100 = v63;
        v101 = v64;
        v66 = *(v16 + 3);
        v67 = *(v16 + 4);
        v68 = *(v16 + 5);
        v69 = v16[48];
        v92 = *(v16 + 2);
        v65 = v92;
        v93 = v66;
        v94 = v67;
        v95 = v68;
        v96 = v69;
        sub_1A97DC908(v97, v61, v62, v63, v64);
        sub_1A97DC908(v65, v66, v67, v68, v69);
        LOBYTE(v65) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
        sub_1A97DC96C(v92, v93, v94, v95, v96);
        sub_1A97DC96C(v97, v98, v99, v100, v101);
        sub_1A97B06FC(v23, &qword_1EB3B5A30, &qword_1A99A74A8);
        if (v65)
        {
          v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v70 = v91;
          v71 = v90[1];
          v71(v60, v91);
          v71(v59, v70);
          sub_1A97B06FC(v16, &qword_1EB3B5A30, &qword_1A99A74A8);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v23, &qword_1EB3B5A30, &qword_1A99A74A8);
      }

      v74 = v91;
      v75 = v90[1];
      v75(v60, v91);
      v75(v59, v74);
      sub_1A97B06FC(v16, &qword_1EB3B5A30, &qword_1A99A74A8);
      goto LABEL_20;
    }

    (v90[1])(&v23[v54], v91);
    sub_1A97B06FC(v23, &qword_1EB3B5A30, &qword_1A99A74A8);
LABEL_9:
    v55 = &qword_1EB3B5A38;
    v56 = &qword_1A99A74B0;
LABEL_21:
    sub_1A97B06FC(v28, v55, v56);
    v50 = 0;
    return v50 & 1;
  }

  sub_1A97C13A4(v28, v21, &qword_1EB3B5A28, &qword_1A99A74A0);
  v31 = *v21;
  v30 = *(v21 + 1);
  v32 = *(v21 + 3);
  v87 = *(v21 + 2);
  v85 = v32;
  LODWORD(v86) = v21[32];
  v33 = *(v21 + 5);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A40, &qword_1A99A74B8) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v90[1])(&v21[v34], v91);
    sub_1A97DC96C(v31, v30, v87, v85, v86);

    goto LABEL_9;
  }

  v79 = v28;
  v84 = v33;
  v35 = *(v29 + 1);
  v78 = *v29;
  v36 = *(v29 + 2);
  v77 = *(v29 + 3);
  v37 = v29[32];
  v83 = *(v29 + 5);
  v38 = v90[4];
  v39 = &v21[v34];
  v40 = v91;
  v38(v89, v39, v91);
  v38(v88, &v29[v34], v40);
  v97 = v31;
  v98 = v30;
  v41 = v85;
  v42 = v78;
  v99 = v87;
  v100 = v85;
  v43 = v86;
  v101 = v86;
  v92 = v78;
  v93 = v35;
  v44 = v77;
  v94 = v36;
  v95 = v77;
  v96 = v37;
  sub_1A97DC908(v31, v30, v87, v85, v86);
  v81 = v35;
  v82 = v36;
  v45 = v36;
  v46 = v44;
  v80 = v37;
  sub_1A97DC908(v42, v35, v45, v44, v37);
  LOBYTE(v44) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
  sub_1A97DC96C(v92, v93, v94, v95, v96);
  sub_1A97DC96C(v97, v98, v99, v100, v101);
  if ((v44 & 1) == 0)
  {
    sub_1A97DC96C(v42, v81, v82, v46, v80);

    sub_1A97DC96C(v31, v30, v87, v41, v43);

    v28 = v79;
    goto LABEL_17;
  }

  v47 = sub_1A9905724(v84, v83, &qword_1EB3B5A30, &qword_1A99A74A8);
  sub_1A97DC96C(v42, v81, v82, v46, v80);

  sub_1A97DC96C(v31, v30, v87, v41, v43);

  v28 = v79;
  if ((v47 & 1) == 0)
  {
LABEL_17:
    v72 = v91;
    v73 = v90[1];
    v73(v88, v91);
    v73(v89, v72);
LABEL_20:
    v55 = &qword_1EB3B5A28;
    v56 = &qword_1A99A74A0;
    goto LABEL_21;
  }

  v48 = v88;
  v49 = v89;
  v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v51 = v91;
  v52 = v48;
  v53 = v90[1];
  v53(v52, v91);
  v53(v49, v51);
LABEL_15:
  sub_1A97B06FC(v28, &qword_1EB3B5A28, &qword_1A99A74A0);
  return v50 & 1;
}

uint64_t sub_1A9907628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = v90[8];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v77 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59D8, &qword_1A99A7450);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59D0, &qword_1A99A7448);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59E0, &qword_1A99A7458);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v77 - v27;
  v29 = &v77 + *(v26 + 56) - v27;
  sub_1A97C13A4(a1, &v77 - v27, &qword_1EB3B59D0, &qword_1A99A7448);
  sub_1A97C13A4(a2, v29, &qword_1EB3B59D0, &qword_1A99A7448);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97C13A4(v28, v23, &qword_1EB3B59D0, &qword_1A99A7448);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59F0, &qword_1A99A7468) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A97D8380(v29, v16, &qword_1EB3B59D8, &qword_1A99A7450);
      v57 = v91;
      v58 = v90[4];
      v59 = v87;
      v58(v87, &v23[v54], v91);
      v60 = v86;
      v58(v86, &v29[v54], v57);
      if (*v23 == *v16 && *(v23 + 1) == *(v16 + 1) || (sub_1A99777E0() & 1) != 0)
      {
        v61 = *(v23 + 3);
        v62 = *(v23 + 4);
        v63 = *(v23 + 5);
        v64 = v23[48];
        v97 = *(v23 + 2);
        v98 = v61;
        v99 = v62;
        v100 = v63;
        v101 = v64;
        v66 = *(v16 + 3);
        v67 = *(v16 + 4);
        v68 = *(v16 + 5);
        v69 = v16[48];
        v92 = *(v16 + 2);
        v65 = v92;
        v93 = v66;
        v94 = v67;
        v95 = v68;
        v96 = v69;
        sub_1A97DC908(v97, v61, v62, v63, v64);
        sub_1A97DC908(v65, v66, v67, v68, v69);
        LOBYTE(v65) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
        sub_1A97DC96C(v92, v93, v94, v95, v96);
        sub_1A97DC96C(v97, v98, v99, v100, v101);
        sub_1A97B06FC(v23, &qword_1EB3B59D8, &qword_1A99A7450);
        if (v65)
        {
          v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
          v70 = v91;
          v71 = v90[1];
          v71(v60, v91);
          v71(v59, v70);
          sub_1A97B06FC(v16, &qword_1EB3B59D8, &qword_1A99A7450);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A97B06FC(v23, &qword_1EB3B59D8, &qword_1A99A7450);
      }

      v74 = v91;
      v75 = v90[1];
      v75(v60, v91);
      v75(v59, v74);
      sub_1A97B06FC(v16, &qword_1EB3B59D8, &qword_1A99A7450);
      goto LABEL_20;
    }

    (v90[1])(&v23[v54], v91);
    sub_1A97B06FC(v23, &qword_1EB3B59D8, &qword_1A99A7450);
LABEL_9:
    v55 = &qword_1EB3B59E0;
    v56 = &qword_1A99A7458;
LABEL_21:
    sub_1A97B06FC(v28, v55, v56);
    v50 = 0;
    return v50 & 1;
  }

  sub_1A97C13A4(v28, v21, &qword_1EB3B59D0, &qword_1A99A7448);
  v31 = *v21;
  v30 = *(v21 + 1);
  v32 = *(v21 + 3);
  v87 = *(v21 + 2);
  v85 = v32;
  LODWORD(v86) = v21[32];
  v33 = *(v21 + 5);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B59E8, &qword_1A99A7460) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v90[1])(&v21[v34], v91);
    sub_1A97DC96C(v31, v30, v87, v85, v86);

    goto LABEL_9;
  }

  v79 = v28;
  v84 = v33;
  v35 = *(v29 + 1);
  v78 = *v29;
  v36 = *(v29 + 2);
  v77 = *(v29 + 3);
  v37 = v29[32];
  v83 = *(v29 + 5);
  v38 = v90[4];
  v39 = &v21[v34];
  v40 = v91;
  v38(v89, v39, v91);
  v38(v88, &v29[v34], v40);
  v97 = v31;
  v98 = v30;
  v41 = v85;
  v42 = v78;
  v99 = v87;
  v100 = v85;
  v43 = v86;
  v101 = v86;
  v92 = v78;
  v93 = v35;
  v44 = v77;
  v94 = v36;
  v95 = v77;
  v96 = v37;
  sub_1A97DC908(v31, v30, v87, v85, v86);
  v81 = v35;
  v82 = v36;
  v45 = v36;
  v46 = v44;
  v80 = v37;
  sub_1A97DC908(v42, v35, v45, v44, v37);
  LOBYTE(v44) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v97, &v92);
  sub_1A97DC96C(v92, v93, v94, v95, v96);
  sub_1A97DC96C(v97, v98, v99, v100, v101);
  if ((v44 & 1) == 0)
  {
    sub_1A97DC96C(v42, v81, v82, v46, v80);

    sub_1A97DC96C(v31, v30, v87, v41, v43);

    v28 = v79;
    goto LABEL_17;
  }

  v47 = sub_1A9905724(v84, v83, &qword_1EB3B59D8, &qword_1A99A7450);
  sub_1A97DC96C(v42, v81, v82, v46, v80);

  sub_1A97DC96C(v31, v30, v87, v41, v43);

  v28 = v79;
  if ((v47 & 1) == 0)
  {
LABEL_17:
    v72 = v91;
    v73 = v90[1];
    v73(v88, v91);
    v73(v89, v72);
LABEL_20:
    v55 = &qword_1EB3B59D0;
    v56 = &qword_1A99A7448;
    goto LABEL_21;
  }

  v48 = v88;
  v49 = v89;
  v50 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  v51 = v91;
  v52 = v48;
  v53 = v90[1];
  v53(v52, v91);
  v53(v49, v51);
LABEL_15:
  sub_1A97B06FC(v28, &qword_1EB3B59D0, &qword_1A99A7448);
  return v50 & 1;
}

uint64_t SFItemDestinationAlertViewModel.Action.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SFItemDestinationAlertViewModel.Action.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t SFItemDestinationAlertViewModel.Action.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](8250, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v3, v4);
  MEMORY[0x1AC5895B0](15965, 0xE200000000000000);
  return 0xD00000000000002ALL;
}

uint64_t static SFItemDestinationAlertViewModel.Action.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1A99777E0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1A99777E0();
    }
  }

  return result;
}

uint64_t sub_1A9907FD8()
{
  if (*v0)
  {
    result = 0x656C746974;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1A9908004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A99080D4(uint64_t a1)
{
  v2 = sub_1A99082E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9908110(uint64_t a1)
{
  v2 = sub_1A99082E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFItemDestinationAlertViewModel.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5918, &qword_1A99A6EB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99082E0();
  sub_1A9977AA0();
  v16 = 0;
  v12 = v14[3];
  sub_1A9977690();
  if (!v12)
  {
    v15 = 1;
    sub_1A9977690();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A99082E0()
{
  result = qword_1EB3B5920;
  if (!qword_1EB3B5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5920);
  }

  return result;
}

uint64_t SFItemDestinationAlertViewModel.Action.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5928, &qword_1A99A6EB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99082E0();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v21 = 0;
  v11 = sub_1A99775A0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1A99775A0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A9908564(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1A99777E0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1A99777E0();
    }
  }

  return result;
}

uint64_t SFItemDestinationAlertViewModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SFItemDestinationAlertViewModel.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SFItemDestinationAlertViewModel.cancelAction.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1A9908688(v2, v3);
}

uint64_t sub_1A9908688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SFItemDestinationAlertViewModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[7];
  v7 = v0[8];
  sub_1A9908688(v0[5], v0[6]);
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000022, 0x80000001A99E8150);
  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v3, v4);
  MEMORY[0x1AC5895B0](0x6F69746361202C5DLL, 0xEC000000203A736ELL);
  v8 = MEMORY[0x1AC589770](v5, &type metadata for SFItemDestinationAlertViewModel.Action);
  MEMORY[0x1AC5895B0](v8);

  MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E8180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5930, &qword_1A99A6EC0);
  v9 = sub_1A9976880();
  MEMORY[0x1AC5895B0](v9);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  return 0;
}

void __swiftcall SFItemDestinationAlertViewModel.init(title:message:actions:cancelAction:)(Sharing::SFItemDestinationAlertViewModel *__return_ptr retstr, Swift::String title, Swift::String message, Swift::OpaquePointer actions, Sharing::SFItemDestinationAlertViewModel::Action_optional *cancelAction)
{
  v5 = cancelAction->value.title;
  retstr->cancelAction.value.id = cancelAction->value.id;
  retstr->title = title;
  retstr->message = message;
  retstr->actions = actions;
  retstr->cancelAction.value.title = v5;
}

uint64_t SFItemDestinationAlertViewModel.init(permissionRequest:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5938, &qword_1A99A6EC8);
  v81 = *(v78 - 8);
  v4 = *(v81 + 8);
  MEMORY[0x1EEE9AC00](v78);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5940, &unk_1A99A6ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v65 - v13);
  v15 = type metadata accessor for SFAirDrop.DeclineAction();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  sub_1A97C13A4(a1 + *(v19 + 60), v14, &qword_1EB3B17F0, &qword_1A9992A00);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1A97B06FC(v14, &qword_1EB3B17F0, &qword_1A9992A00);
    type metadata accessor for SFAirDropReceive.Failure();
    sub_1A990A500(&qword_1EB3B5948, type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1A97B06FC(a1, &qword_1EB3B17A8, &unk_1A9999470);
  }

  v71 = a1;
  v72 = v2;
  v20 = *v14;
  v68 = v14[1];
  v69 = v20;
  v21 = v14[2];
  v66 = v14[3];
  v67 = v21;
  v22 = v14[4];
  v23 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
  v70 = v18;
  sub_1A98BAA80(v23, v18);
  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = (v81[80] + 32) & ~v81[80];
    v65 = v22;
    v26 = v22 + v25;
    v27 = *(v81 + 9);
    v28 = v10 + 16;
    v80 = v10 + 24;
    v74 = v10 + 40;
    v75 = v10 + 32;
    v81 = MEMORY[0x1E69E7CC0];
    v76 = v10 + 16;
    v77 = v27;
    while (1)
    {
      sub_1A97C13A4(v26, v6, &qword_1EB3B5938, &qword_1A99A6EC8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1A97B06FC(v6, &qword_1EB3B5938, &qword_1A99A6EC8);
        goto LABEL_5;
      }

      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5950, &qword_1A99A6EE0) + 48);
      sub_1A97D8380(v6, v10, &qword_1EB3B5940, &unk_1A99A6ED0);
      v30 = sub_1A99762C0();
      (*(*(v30 - 8) + 8))(&v6[v29], v30);
      v31 = v80;
      v32 = v28;
      if (!v10[48])
      {
        goto LABEL_11;
      }

      if (v10[48] != 1)
      {
        break;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
LABEL_12:

      v36 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v36 = v33;
      }

      if (v36)
      {
        v37 = *(v10 + 1);
        v38 = v80;
        v39 = v28;
        v40 = v10[48];
        v79 = *v10;
        if (v40)
        {
          if (v40 == 1)
          {
            v41 = 0;
            v42 = 0xE000000000000000;
LABEL_21:

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_1A97AEFB8(0, *(v81 + 2) + 1, 1, v81);
            }

            v44 = *(v81 + 2);
            v43 = *(v81 + 3);
            if (v44 >= v43 >> 1)
            {
              v81 = sub_1A97AEFB8((v43 > 1), v44 + 1, 1, v81);
            }

            v45 = v81;
            *(v81 + 2) = v44 + 1;
            v46 = &v45[32 * v44];
            *(v46 + 4) = v79;
            *(v46 + 5) = v37;
            *(v46 + 6) = v41;
            *(v46 + 7) = v42;
            sub_1A97B06FC(v10, &qword_1EB3B5940, &unk_1A99A6ED0);
            v27 = v77;
            v28 = v76;
            goto LABEL_5;
          }

          v38 = v74;
          v39 = v75;
        }

        v42 = *v38;
        v41 = *v39;

        goto LABEL_21;
      }

      sub_1A97B06FC(v10, &qword_1EB3B5940, &unk_1A99A6ED0);
LABEL_5:
      v26 += v27;
      if (!--v24)
      {

        goto LABEL_29;
      }
    }

    v31 = v74;
    v32 = v75;
LABEL_11:
    v34 = *v31;
    v35 = *v32;

    v33 = v35 & 0xFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v48 = v70;
  v49 = (v70 + 16);
  v50 = (v70 + 24);
  v51 = (v70 + 24);
  v52 = (v70 + 16);
  if (v70[48])
  {
    if (v70[48] == 1)
    {
      v53 = 0;
      v54 = 0xE000000000000000;
      goto LABEL_34;
    }

    v51 = (v70 + 40);
    v52 = (v70 + 32);
  }

  v54 = *v51;
  v55 = *v52;

  v53 = v55 & 0xFFFFFFFFFFFFLL;
LABEL_34:

  v56 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v56 = v53;
  }

  if (v56)
  {
    v58 = *v48;
    v57 = *(v48 + 8);
    v59 = v71;
    if (*(v48 + 48))
    {
      if (*(v48 + 48) == 1)
      {
        v60 = 0;
        v61 = 0xE000000000000000;
LABEL_43:

        sub_1A97B06FC(v59, &qword_1EB3B17A8, &unk_1A9999470);
        goto LABEL_44;
      }

      v50 = (v48 + 40);
      v49 = (v48 + 32);
    }

    v61 = *v50;
    v60 = *v49;

    goto LABEL_43;
  }

  sub_1A97B06FC(v71, &qword_1EB3B17A8, &unk_1A9999470);
  v58 = 0;
  v57 = 0;
  v60 = 0;
  v61 = 0;
LABEL_44:
  result = sub_1A98CB558(v48);
  v62 = v73;
  v63 = v68;
  *v73 = v69;
  v62[1] = v63;
  v64 = v66;
  v62[2] = v67;
  v62[3] = v64;
  v62[4] = v81;
  v62[5] = v58;
  v62[6] = v57;
  v62[7] = v60;
  v62[8] = v61;
  return result;
}

uint64_t sub_1A9908F20()
{
  v1 = 0x656C746974;
  v2 = 0x736E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_1A9908FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A990A39C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9908FC8(uint64_t a1)
{
  v2 = sub_1A9909D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9909004(uint64_t a1)
{
  v2 = sub_1A9909D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFItemDestinationAlertViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5958, &qword_1A99A6EE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v30 = v1[3];
  v31 = v10;
  v11 = v1[4];
  v28 = v1[5];
  v29 = v11;
  v12 = v1[6];
  v26 = v1[7];
  v27 = v12;
  v13 = v1[8];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_1A9909D48();
  sub_1A9977AA0();
  LOBYTE(v33) = 0;
  v19 = v32;
  sub_1A9977690();
  if (!v19)
  {
    v32 = v13;
    v22 = v26;
    v21 = v27;
    v23 = v28;
    v24 = v29;
    LOBYTE(v33) = 1;
    sub_1A9977690();
    v33 = v24;
    v37 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5968, &qword_1A99A6EF0);
    sub_1A9909E34(&qword_1EB3B5970, sub_1A9909D9C);
    sub_1A99776E0();
    v33 = v23;
    v34 = v21;
    v35 = v22;
    v36 = v32;
    v37 = 3;
    sub_1A9908688(v23, v21);
    sub_1A9909D9C();
    sub_1A9977680();
    sub_1A9909DF0(v33, v34);
  }

  return (*(v4 + 8))(v7, v18);
}

uint64_t SFItemDestinationAlertViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5980, &qword_1A99A6EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9909D48();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_1A99775A0();
  v13 = v12;
  v29 = v11;
  LOBYTE(v36[0]) = 1;
  v14 = sub_1A99775A0();
  v30 = v15;
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5968, &qword_1A99A6EF0);
  LOBYTE(v31) = 2;
  sub_1A9909E34(&qword_1EB3B5988, sub_1A9909EAC);
  sub_1A99775F0();
  v27 = v36[0];
  v40 = 3;
  sub_1A9909EAC();
  sub_1A9977590();
  (*(v6 + 8))(v9, v5);
  v26 = v37;
  v25 = v38;
  v16 = v39;
  v24 = *(&v38 + 1);
  v17 = v29;
  *&v31 = v29;
  v18 = v28;
  *(&v31 + 1) = v13;
  *&v32 = v28;
  v19 = v30;
  v20 = v27;
  *(&v32 + 1) = v30;
  *&v33 = v27;
  *(&v33 + 1) = v37;
  v34 = v38;
  v35 = v39;
  *(a2 + 64) = v39;
  v21 = v32;
  *a2 = v31;
  *(a2 + 16) = v21;
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  sub_1A9909F00(&v31, v36);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v36[0] = v17;
  v36[1] = v13;
  v36[2] = v18;
  v36[3] = v19;
  v36[4] = v20;
  v36[5] = v26;
  v36[6] = v25;
  v36[7] = v24;
  v36[8] = v16;
  return sub_1A9909F38(v36);
}

Sharing::SFItemDestinationAlertSettings_optional __swiftcall SFItemDestinationAlertSettings.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

id SFAirDropInvocations.ItemDestinationAlert.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFAirDropInvocations.ItemDestinationAlert.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFAirDropInvocations.ItemDestinationAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.ItemDestinationAlert.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SFAirDropInvocations.ItemDestinationAlert.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.ItemDestinationAlert.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

id SFAirDropInvocations.ItemDestinationAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s7Sharing31SFItemDestinationAlertViewModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v24 = a1[8];
  v25 = a2[5];
  v11 = a2[6];
  v22 = a2[7];
  v23 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A99777E0() & 1) == 0 || (v2 != v8 || v3 != v9) && (sub_1A99777E0() & 1) == 0 || (sub_1A99053F0(v4, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = v6;
  if (!v6)
  {
    v13 = v5;
    sub_1A9908688(v5, 0);
    if (!v11)
    {
      sub_1A9908688(v25, 0);
      v15 = v5;
      v16 = 0;
      goto LABEL_25;
    }

    v14 = v11;
    v17 = v25;
    sub_1A9908688(v25, v11);
    goto LABEL_19;
  }

  v13 = v5;
  v14 = v11;
  if (!v11)
  {
    sub_1A9908688(v5, v6);
    v17 = v25;
    sub_1A9908688(v25, 0);
    sub_1A9908688(v5, v12);

LABEL_19:
    sub_1A9909DF0(v13, v12);
    v18 = v17;
    v19 = v14;
LABEL_20:
    sub_1A9909DF0(v18, v19);
    return 0;
  }

  if ((v5 != v25 || v6 != v11) && (sub_1A99777E0() & 1) == 0)
  {
    sub_1A9908688(v5, v6);
    sub_1A9908688(v25, v11);
    sub_1A9908688(v5, v6);
    sub_1A9909DF0(v25, v11);

    v18 = v5;
    v19 = v6;
    goto LABEL_20;
  }

  if (v7 != v22 || v24 != v23)
  {
    v21 = sub_1A99777E0();
    sub_1A9908688(v5, v6);
    sub_1A9908688(v25, v11);
    sub_1A9908688(v5, v6);
    sub_1A9909DF0(v25, v11);

    sub_1A9909DF0(v5, v6);
    return (v21 & 1) != 0;
  }

  sub_1A9908688(v5, v6);
  sub_1A9908688(v25, v11);
  sub_1A9908688(v5, v6);
  sub_1A9909DF0(v25, v11);

  v15 = v5;
  v16 = v6;
LABEL_25:
  sub_1A9909DF0(v15, v16);
  return 1;
}

unint64_t sub_1A9909D48()
{
  result = qword_1EB3B5960;
  if (!qword_1EB3B5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5960);
  }

  return result;
}

unint64_t sub_1A9909D9C()
{
  result = qword_1EB3B5978;
  if (!qword_1EB3B5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5978);
  }

  return result;
}

uint64_t sub_1A9909DF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A9909E34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B5968, &qword_1A99A6EF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9909EAC()
{
  result = qword_1EB3B5990;
  if (!qword_1EB3B5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5990);
  }

  return result;
}

unint64_t sub_1A9909F6C()
{
  result = qword_1EB3B5998;
  if (!qword_1EB3B5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5998);
  }

  return result;
}

uint64_t sub_1A990A028(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B17A8, &unk_1A9999470);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Sharing31SFItemDestinationAlertViewModelV6ActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A990A0A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A990A0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A990A190()
{
  result = qword_1EB3B59A0;
  if (!qword_1EB3B59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59A0);
  }

  return result;
}

unint64_t sub_1A990A1E8()
{
  result = qword_1EB3B59A8;
  if (!qword_1EB3B59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59A8);
  }

  return result;
}

unint64_t sub_1A990A240()
{
  result = qword_1EB3B59B0;
  if (!qword_1EB3B59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59B0);
  }

  return result;
}

unint64_t sub_1A990A298()
{
  result = qword_1EB3B59B8;
  if (!qword_1EB3B59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59B8);
  }

  return result;
}

unint64_t sub_1A990A2F0()
{
  result = qword_1EB3B59C0;
  if (!qword_1EB3B59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59C0);
  }

  return result;
}

unint64_t sub_1A990A348()
{
  result = qword_1EB3B59C8;
  if (!qword_1EB3B59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B59C8);
  }

  return result;
}

uint64_t sub_1A990A39C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A990A500(unint64_t *a1, void (*a2)(uint64_t))
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

void SFAirDropReceive.Failure.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A9976BC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (swift_dynamicCast())
  {

    swift_storeEnumTagMultiPayload();
    (*(v9 + 8))(v12, v8);
LABEL_5:

    return;
  }

  v19[0] = a1;
  v14 = a1;
  if (swift_dynamicCast())
  {

    sub_1A990E76C(v7, a2);
    goto LABEL_5;
  }

  CodableError.init(_:)(a1, v19);
  v15 = v19[1];
  v16 = v22;
  *a2 = v19[0];
  *(a2 + 8) = v15;
  v17 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v17;
  *(a2 + 48) = v16;
  swift_storeEnumTagMultiPayload();
}

unint64_t SFAirDropReceive.Failure.errorDescription.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A990E7D0(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x64656E696C636564;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = *(v4 + 1);
      v10 = *(v4 + 3);
      v13 = *(v4 + 4);
      v14 = *(v4 + 6);

      goto LABEL_9;
    case 2:
      return result;
    case 3:
      result = 0x696D7369446B7361;
      break;
    case 4:
      result = 0x61437265646E6573;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x707954646578696DLL;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x72456D6165727473;
      break;
    case 10:
      result = 0x6148746F4E6B7361;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6575716552646162;
      break;
    case 13:
      result = 0x70416F5465766F6DLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      v7 = *v4;
      v8 = *(v4 + 1);
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8) + 48);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1A99772B0();

      v15 = 0xD000000000000010;
      v16 = 0x80000001A99E8210;
      MEMORY[0x1AC5895B0](v7, v8);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v10 = v15;
      v11 = sub_1A9976020();
      (*(*(v11 - 8) + 8))(&v4[v9], v11);
LABEL_9:
      result = v10;
      break;
  }

  return result;
}

unint64_t sub_1A990AA7C(char a1)
{
  result = 0x64656E696C636564;
  switch(a1)
  {
    case 1:
      result = 0x696D7369446B7361;
      break;
    case 2:
      result = 0x61437265646E6573;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x707954646578696DLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x72456D6165727473;
      break;
    case 8:
      result = 0x6148746F4E6B7361;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6575716552646162;
      break;
    case 11:
      result = 0x726F707075736E75;
      break;
    case 12:
      result = 0x70416F5465766F6DLL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x7463657078656E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A990AC70(uint64_t a1)
{
  v2 = sub_1A990ECCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990ACAC(uint64_t a1)
{
  v2 = sub_1A990ECCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990ACE8(uint64_t a1)
{
  v2 = sub_1A990EA80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AD24(uint64_t a1)
{
  v2 = sub_1A990EA80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AD60(uint64_t a1)
{
  v2 = sub_1A990E9D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AD9C(uint64_t a1)
{
  v2 = sub_1A990E9D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990ADE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A990FD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A990AE14(uint64_t a1)
{
  v2 = sub_1A990E834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AE50(uint64_t a1)
{
  v2 = sub_1A990E834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AE8C(uint64_t a1)
{
  v2 = sub_1A990ED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AEC8(uint64_t a1)
{
  v2 = sub_1A990ED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AF04(uint64_t a1)
{
  v2 = sub_1A990EA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AF40(uint64_t a1)
{
  v2 = sub_1A990EA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AF7C(uint64_t a1)
{
  v2 = sub_1A990E8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990AFB8(uint64_t a1)
{
  v2 = sub_1A990E8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990AFF4(uint64_t a1)
{
  v2 = sub_1A990EB7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B030(uint64_t a1)
{
  v2 = sub_1A990EB7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B06C(uint64_t a1)
{
  v2 = sub_1A990EB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B0A8(uint64_t a1)
{
  v2 = sub_1A990EB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B0E4(uint64_t a1)
{
  v2 = sub_1A990EBD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B120(uint64_t a1)
{
  v2 = sub_1A990EBD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B15C(uint64_t a1)
{
  v2 = sub_1A990E930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B198(uint64_t a1)
{
  v2 = sub_1A990E930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B1D4(uint64_t a1)
{
  v2 = sub_1A990EC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B210(uint64_t a1)
{
  v2 = sub_1A990EC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B24C(uint64_t a1)
{
  v2 = sub_1A990EC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B288(uint64_t a1)
{
  v2 = sub_1A990EC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B2C4(uint64_t a1)
{
  v2 = sub_1A990EAD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B300(uint64_t a1)
{
  v2 = sub_1A990EAD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B33C(uint64_t a1)
{
  v2 = sub_1A990E888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B378(uint64_t a1)
{
  v2 = sub_1A990E888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A990B3B4()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 6911093;
  }
}

uint64_t sub_1A990B3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6911093 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A990B4B4(uint64_t a1)
{
  v2 = sub_1A990E984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A990B4F0(uint64_t a1)
{
  v2 = sub_1A990E984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Failure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A68, &qword_1A99A74E0);
  v124 = *(v2 - 8);
  v125 = v2;
  v3 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v123 = &v80 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A70, &qword_1A99A74E8);
  v116 = *(v117 - 8);
  v5 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v80 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A78, &qword_1A99A74F0);
  v113 = *(v114 - 8);
  v7 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v80 - v8;
  *&v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A80, &qword_1A99A74F8);
  v81 = *(v122 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v80 - v10;
  v11 = sub_1A9976020();
  v120 = *(v11 - 8);
  v121 = v11;
  v12 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A88, &qword_1A99A7500);
  v110 = *(v111 - 8);
  v14 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v80 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A90, &qword_1A99A7508);
  v107 = *(v108 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v80 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A98, &qword_1A99A7510);
  v104 = *(v105 - 8);
  v18 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v80 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AA0, &qword_1A99A7518);
  v101 = *(v102 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v80 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AA8, &qword_1A99A7520);
  v98 = *(v99 - 8);
  v22 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v80 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AB0, &qword_1A99A7528);
  v95 = *(v96 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v80 - v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AB8, &qword_1A99A7530);
  v92 = *(v93 - 8);
  v26 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v80 - v27;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AC0, &qword_1A99A7538);
  v89 = *(v90 - 8);
  v28 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v80 - v29;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AC8, &qword_1A99A7540);
  v86 = *(v87 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v80 - v31;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AD0, &qword_1A99A7548);
  v83 = *(v84 - 8);
  v32 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v34 = &v80 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AD8, &qword_1A99A7550);
  v82 = *(v35 - 8);
  v36 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v80 - v37;
  v39 = type metadata accessor for SFAirDropReceive.Failure();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5AE0, &qword_1A99A7558);
  v127 = *(v129 - 8);
  v43 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v45 = &v80 - v44;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A990E834();
  v128 = v45;
  sub_1A9977AA0();
  sub_1A990E7D0(v126, v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v68 = *v42;
      v67 = *(v42 + 1);
      v69 = *(v42 + 6);
      LOBYTE(v130) = 14;
      sub_1A990E888();
      v70 = *(v42 + 2);
      v122 = *(v42 + 1);
      v126 = v70;
      v71 = v123;
      v73 = v128;
      v72 = v129;
      sub_1A9977640();
      v130 = v68;
      v131 = v67;
      v132 = v122;
      v133 = v126;
      v134 = v69;
      sub_1A988AE3C();
      v74 = v125;
      sub_1A99776E0();
      (*(v124 + 8))(v71, v74);
      (*(v127 + 8))(v73, v72);

    case 2u:
      LOBYTE(v130) = 0;
      sub_1A990ED20();
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v82 + 8))(v38, v35);
      goto LABEL_18;
    case 3u:
      LOBYTE(v130) = 1;
      sub_1A990ECCC();
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v83 + 8))(v34, v84);
      goto LABEL_18;
    case 4u:
      LOBYTE(v130) = 2;
      sub_1A990EC78();
      v63 = v85;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v86 + 8))(v63, v87);
      goto LABEL_18;
    case 5u:
      LOBYTE(v130) = 3;
      sub_1A990EC24();
      v75 = v88;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v89 + 8))(v75, v90);
      goto LABEL_18;
    case 6u:
      LOBYTE(v130) = 4;
      sub_1A990EBD0();
      v77 = v91;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v92 + 8))(v77, v93);
      goto LABEL_18;
    case 7u:
      LOBYTE(v130) = 5;
      sub_1A990EB7C();
      v66 = v94;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v95 + 8))(v66, v96);
      goto LABEL_18;
    case 8u:
      LOBYTE(v130) = 6;
      sub_1A990EB28();
      v79 = v97;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v98 + 8))(v79, v99);
      goto LABEL_18;
    case 9u:
      LOBYTE(v130) = 7;
      sub_1A990EAD4();
      v65 = v100;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v101 + 8))(v65, v102);
      goto LABEL_18;
    case 0xAu:
      LOBYTE(v130) = 8;
      sub_1A990EA80();
      v78 = v103;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v104 + 8))(v78, v105);
      goto LABEL_18;
    case 0xBu:
      LOBYTE(v130) = 9;
      sub_1A990EA2C();
      v62 = v106;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v107 + 8))(v62, v108);
      goto LABEL_18;
    case 0xCu:
      LOBYTE(v130) = 10;
      sub_1A990E9D8();
      v64 = v109;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v110 + 8))(v64, v111);
      goto LABEL_18;
    case 0xDu:
      LOBYTE(v130) = 12;
      sub_1A990E930();
      v76 = v112;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v113 + 8))(v76, v114);
      goto LABEL_18;
    case 0xEu:
      LOBYTE(v130) = 13;
      sub_1A990E8DC();
      v59 = v115;
      v61 = v128;
      v60 = v129;
      sub_1A9977640();
      (*(v116 + 8))(v59, v117);
LABEL_18:
      result = (*(v127 + 8))(v61, v60);
      break;
    default:
      v48 = *v42;
      v47 = *(v42 + 1);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8);
      v51 = v120;
      v50 = v121;
      v52 = v118;
      (*(v120 + 32))(v118, &v42[*(v49 + 48)], v121);
      LOBYTE(v130) = 11;
      sub_1A990E984();
      v53 = v119;
      v54 = v128;
      v55 = v129;
      sub_1A9977640();
      LOBYTE(v130) = 0;
      v56 = v122;
      v57 = v135;
      sub_1A9977690();
      v135 = v57;

      if (v57)
      {
        (*(v81 + 8))(v53, v56);
        (*(v51 + 8))(v52, v50);
        result = (*(v127 + 8))(v54, v55);
      }

      else
      {
        LOBYTE(v130) = 1;
        sub_1A990EE04(&qword_1EB3B1918, MEMORY[0x1E6968FB0]);
        sub_1A99776E0();
        (*(v81 + 8))(v53, v56);
        (*(v51 + 8))(v52, v50);
        result = (*(v127 + 8))(v128, v129);
      }

      break;
  }

  return result;
}

uint64_t SFAirDropReceive.Failure.hash(into:)()
{
  v1 = sub_1A9976020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.Failure();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A990E7D0(v0, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = *v9;
      v14 = *(v9 + 1);
      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      v18 = *(v9 + 4);
      v19 = *(v9 + 5);
      v20 = *(v9 + 6);
      MEMORY[0x1AC58A630](14);
      sub_1A99768D0();
      MEMORY[0x1AC58A630](v17);
      if (v18)
      {
        sub_1A99779A0();
        sub_1A99768D0();
        if (v20)
        {
LABEL_13:
          sub_1A99779A0();
          sub_1A99768D0();
          goto LABEL_21;
        }
      }

      else
      {
        sub_1A99779A0();
        if (v20)
        {
          goto LABEL_13;
        }
      }

      sub_1A99779A0();
LABEL_21:

    case 2u:
      return MEMORY[0x1AC58A630](0);
    case 3u:
      return MEMORY[0x1AC58A630](1);
    case 4u:
      return MEMORY[0x1AC58A630](2);
    case 5u:
      return MEMORY[0x1AC58A630](3);
    case 6u:
      return MEMORY[0x1AC58A630](4);
    case 7u:
      return MEMORY[0x1AC58A630](5);
    case 8u:
      return MEMORY[0x1AC58A630](6);
    case 9u:
      return MEMORY[0x1AC58A630](7);
    case 0xAu:
      return MEMORY[0x1AC58A630](8);
    case 0xBu:
      return MEMORY[0x1AC58A630](9);
    case 0xCu:
      return MEMORY[0x1AC58A630](10);
    case 0xDu:
      return MEMORY[0x1AC58A630](12);
    case 0xEu:
      return MEMORY[0x1AC58A630](13);
    default:
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8);
      (*(v2 + 32))(v5, &v9[*(v12 + 48)], v1);
      MEMORY[0x1AC58A630](11);
      sub_1A99768D0();

      sub_1A990EE04(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0]);
      sub_1A9976740();
      return (*(v2 + 8))(v5, v1);
  }
}

uint64_t SFAirDropReceive.Failure.hashValue.getter()
{
  sub_1A9977980();
  SFAirDropReceive.Failure.hash(into:)();
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.Failure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B68, &qword_1A99A7560);
  v157 = *(v159 - 8);
  v3 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v156 = &v112 - v4;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B70, &qword_1A99A7568);
  v140 = *(v141 - 8);
  v5 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v154 = &v112 - v6;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B78, &qword_1A99A7570);
  v138 = *(v139 - 8);
  v7 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v153 = &v112 - v8;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B80, &qword_1A99A7578);
  v142 = *(v143 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v155 = &v112 - v10;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B88, &qword_1A99A7580);
  v136 = *(v137 - 8);
  v11 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v152 = &v112 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B90, &qword_1A99A7588);
  v134 = *(v135 - 8);
  v13 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v151 = &v112 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5B98, &qword_1A99A7590);
  v132 = *(v133 - 8);
  v15 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v150 = &v112 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BA0, &qword_1A99A7598);
  v130 = *(v131 - 8);
  v17 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v149 = &v112 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BA8, &qword_1A99A75A0);
  v128 = *(v129 - 8);
  v19 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v148 = &v112 - v20;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BB0, &qword_1A99A75A8);
  v126 = *(v127 - 8);
  v21 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v158 = &v112 - v22;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BB8, &qword_1A99A75B0);
  v124 = *(v125 - 8);
  v23 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v147 = &v112 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BC0, &qword_1A99A75B8);
  v122 = *(v123 - 8);
  v25 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v146 = &v112 - v26;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BC8, &qword_1A99A75C0);
  v120 = *(v121 - 8);
  v27 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v145 = &v112 - v28;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BD0, &qword_1A99A75C8);
  v118 = *(v119 - 8);
  v29 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v144 = &v112 - v30;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BD8, &qword_1A99A75D0);
  v116 = *(v117 - 8);
  v31 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v33 = &v112 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5BE0, &unk_1A99A75D8);
  v161 = *(v34 - 8);
  v162 = v34;
  v35 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v112 - v36;
  v38 = type metadata accessor for SFAirDropReceive.Failure();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v112 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v112 - v46;
  v49 = a1[3];
  v48 = a1[4];
  v173 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  sub_1A990E834();
  v50 = v163;
  sub_1A9977A70();
  if (v50)
  {
LABEL_8:
    v67 = v173;
    return __swift_destroy_boxed_opaque_existential_0Tm(v67);
  }

  v114 = v33;
  v112 = v42;
  v113 = v45;
  v52 = v158;
  v51 = v159;
  v163 = 0;
  v115 = v47;
  v53 = v160;
  v54 = v162;
  v55 = sub_1A9977620();
  v56 = (2 * *(v55 + 16)) | 1;
  v169 = v55;
  v170 = v55 + 32;
  v171 = 0;
  v172 = v56;
  v57 = sub_1A97AB894();
  if (v171 != v172 >> 1)
  {
LABEL_6:
    v61 = v37;
    v62 = sub_1A9977300();
    swift_allocError();
    v64 = v63;
    v65 = v54;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v64 = v38;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v62);
    swift_willThrow();
    (*(v161 + 8))(v61, v65);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v38 = v157;
  switch(v57)
  {
    case 0:
      LOBYTE(v164) = 0;
      sub_1A990ED20();
      v58 = v114;
      v59 = v163;
      sub_1A9977530();
      if (v59)
      {
        goto LABEL_37;
      }

      (*(v116 + 8))(v58, v117);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 1:
      LOBYTE(v164) = 1;
      sub_1A990ECCC();
      v90 = v144;
      v91 = v163;
      sub_1A9977530();
      if (v91)
      {
        goto LABEL_37;
      }

      (*(v118 + 8))(v90, v119);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 2:
      LOBYTE(v164) = 2;
      sub_1A990EC78();
      v84 = v145;
      v85 = v163;
      sub_1A9977530();
      if (v85)
      {
        goto LABEL_37;
      }

      (*(v120 + 8))(v84, v121);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 3:
      LOBYTE(v164) = 3;
      sub_1A990EC24();
      v86 = v146;
      v87 = v163;
      sub_1A9977530();
      if (v87)
      {
        goto LABEL_37;
      }

      (*(v122 + 8))(v86, v123);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 4:
      LOBYTE(v164) = 4;
      sub_1A990EBD0();
      v78 = v147;
      v79 = v163;
      sub_1A9977530();
      if (v79)
      {
        goto LABEL_37;
      }

      (*(v124 + 8))(v78, v125);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 5:
      LOBYTE(v164) = 5;
      sub_1A990EB7C();
      v92 = v163;
      sub_1A9977530();
      if (v92)
      {
        goto LABEL_37;
      }

      (*(v126 + 8))(v52, v127);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 6:
      LOBYTE(v164) = 6;
      sub_1A990EB28();
      v95 = v148;
      v96 = v163;
      sub_1A9977530();
      if (v96)
      {
        goto LABEL_37;
      }

      (*(v128 + 8))(v95, v129);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 7:
      LOBYTE(v164) = 7;
      sub_1A990EAD4();
      v88 = v149;
      v89 = v163;
      sub_1A9977530();
      if (v89)
      {
        goto LABEL_37;
      }

      (*(v130 + 8))(v88, v131);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 8:
      LOBYTE(v164) = 8;
      sub_1A990EA80();
      v99 = v150;
      v100 = v163;
      sub_1A9977530();
      if (v100)
      {
        goto LABEL_37;
      }

      (*(v132 + 8))(v99, v133);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 9:
      LOBYTE(v164) = 9;
      sub_1A990EA2C();
      v82 = v151;
      v83 = v163;
      sub_1A9977530();
      if (v83)
      {
        goto LABEL_37;
      }

      (*(v134 + 8))(v82, v135);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 10:
      LOBYTE(v164) = 10;
      sub_1A990E9D8();
      v97 = v152;
      v98 = v163;
      sub_1A9977530();
      if (v98)
      {
        goto LABEL_37;
      }

      (*(v136 + 8))(v97, v137);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 11:
      LOBYTE(v164) = 11;
      sub_1A990E984();
      v74 = v155;
      v75 = v163;
      sub_1A9977530();
      if (v75)
      {
        goto LABEL_37;
      }

      LOBYTE(v164) = 0;
      v76 = v143;
      v77 = sub_1A99775A0();
      v107 = v106;
      v163 = v37;
      v108 = v77;
      v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8) + 48);
      v110 = v113;
      *v113 = v108;
      v110[1] = v107;
      sub_1A9976020();
      LOBYTE(v164) = 1;
      sub_1A990EE04(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0]);
      sub_1A99775F0();
      (*(v142 + 8))(v74, v76);
      (*(v161 + 8))(v163, v162);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v105 = v110;
      goto LABEL_39;
    case 12:
      LOBYTE(v164) = 12;
      sub_1A990E930();
      v80 = v153;
      v81 = v163;
      sub_1A9977530();
      if (v81)
      {
        goto LABEL_37;
      }

      (*(v138 + 8))(v80, v139);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 13:
      LOBYTE(v164) = 13;
      sub_1A990E8DC();
      v93 = v154;
      v94 = v163;
      sub_1A9977530();
      if (v94)
      {
        goto LABEL_37;
      }

      (*(v140 + 8))(v93, v141);
      (*(v161 + 8))(v37, v54);
      swift_unknownObjectRelease();
      v60 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    case 14:
      LOBYTE(v164) = 14;
      sub_1A990E888();
      v69 = v156;
      v70 = v163;
      sub_1A9977530();
      if (v70)
      {
LABEL_37:
        (*(v161 + 8))(v37, v54);
        goto LABEL_7;
      }

      v71 = v69;
      v72 = v37;
      sub_1A988B2D4();
      sub_1A99775F0();
      v73 = v161;
      (*(v38 + 8))(v71, v51);
      (*(v73 + 8))(v72, v54);
      swift_unknownObjectRelease();
      v101 = v165;
      v102 = v168;
      v103 = v112;
      *v112 = v164;
      v103[1] = v101;
      v104 = v167;
      *(v103 + 1) = v166;
      *(v103 + 2) = v104;
      v103[6] = v102;
      swift_storeEnumTagMultiPayload();
      v105 = v103;
LABEL_39:
      v60 = v115;
      sub_1A990E76C(v105, v115);
LABEL_40:
      v111 = v173;
      sub_1A990E76C(v60, v53);
      v67 = v111;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v67);
}

uint64_t sub_1A990E114()
{
  sub_1A9977980();
  SFAirDropReceive.Failure.hash(into:)();
  return sub_1A99779B0();
}

uint64_t sub_1A990E158()
{
  sub_1A9977980();
  SFAirDropReceive.Failure.hash(into:)();
  return sub_1A99779B0();
}

uint64_t _s7Sharing16SFAirDropReceiveO7FailureO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  *&v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = type metadata accessor for SFAirDropReceive.Failure();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B5D08, &unk_1A99A84A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v43 - v21;
  v23 = &v43 + *(v20 + 56) - v21;
  sub_1A990E7D0(a1, &v43 - v21);
  sub_1A990E7D0(a2, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A990E7D0(v22, v15);
      v27 = *(v15 + 1);
      v28 = *(v15 + 4);
      v29 = *(v15 + 6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *(v15 + 5);
        v31 = *v23;
        v32 = *(v23 + 1);
        v33 = *(v23 + 6);
        v52[0] = *v15;
        v52[1] = v27;
        v53 = *(v15 + 1);
        v54 = v28;
        v55 = v30;
        v56 = v29;
        v48[0] = v31;
        v48[1] = v32;
        v34 = *(v23 + 1);
        v47 = *(v23 + 2);
        v49 = v34;
        v50 = v47;
        v51 = v33;
        v35 = _s7Sharing12CodableErrorV2eeoiySbAC_ACtFZ_0(v52, v48);

        goto LABEL_45;
      }

      goto LABEL_33;
    case 2u:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_34;
      }

LABEL_31:
      sub_1A99102B0(v22);
      v35 = 1;
      return v35 & 1;
    default:
      sub_1A990E7D0(v22, v17);
      v25 = *v17;
      v24 = *(v17 + 1);
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5A60, &qword_1A99A74D8) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v47 + 8))(&v17[v26], v4);
LABEL_33:

LABEL_34:
        sub_1A9910248(v22);
        goto LABEL_35;
      }

      v37 = *v23;
      v44 = *(v23 + 1);
      v45 = v37;
      v46 = v25;
      v38 = *(v47 + 32);
      v38(v10, &v17[v26], v4);
      v38(v8, &v23[v26], v4);
      if (v46 == v45 && v24 == v44)
      {
      }

      else
      {
        v40 = sub_1A99777E0();

        if ((v40 & 1) == 0)
        {
          v41 = *(v47 + 8);
          v41(v8, v4);
          v41(v10, v4);
          sub_1A99102B0(v22);
LABEL_35:
          v35 = 0;
          return v35 & 1;
        }
      }

      v35 = sub_1A9975FD0();
      v42 = *(v47 + 8);
      v42(v8, v4);
      v42(v10, v4);
LABEL_45:
      sub_1A99102B0(v22);
      return v35 & 1;
  }
}

uint64_t type metadata accessor for SFAirDropReceive.Failure()
{
  result = qword_1EB3AC570;
  if (!qword_1EB3AC570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A990E76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A990E7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A990E834()
{
  result = qword_1EB3B5AE8;
  if (!qword_1EB3B5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5AE8);
  }

  return result;
}

unint64_t sub_1A990E888()
{
  result = qword_1EB3B5AF0;
  if (!qword_1EB3B5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5AF0);
  }

  return result;
}

unint64_t sub_1A990E8DC()
{
  result = qword_1EB3B5AF8;
  if (!qword_1EB3B5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5AF8);
  }

  return result;
}

unint64_t sub_1A990E930()
{
  result = qword_1EB3B5B00;
  if (!qword_1EB3B5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B00);
  }

  return result;
}

unint64_t sub_1A990E984()
{
  result = qword_1EB3B5B08;
  if (!qword_1EB3B5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B08);
  }

  return result;
}

unint64_t sub_1A990E9D8()
{
  result = qword_1EB3B5B10;
  if (!qword_1EB3B5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B10);
  }

  return result;
}

unint64_t sub_1A990EA2C()
{
  result = qword_1EB3B5B18;
  if (!qword_1EB3B5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B18);
  }

  return result;
}

unint64_t sub_1A990EA80()
{
  result = qword_1EB3B5B20;
  if (!qword_1EB3B5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B20);
  }

  return result;
}

unint64_t sub_1A990EAD4()
{
  result = qword_1EB3B5B28;
  if (!qword_1EB3B5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B28);
  }

  return result;
}

unint64_t sub_1A990EB28()
{
  result = qword_1EB3B5B30;
  if (!qword_1EB3B5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B30);
  }

  return result;
}

unint64_t sub_1A990EB7C()
{
  result = qword_1EB3B5B38;
  if (!qword_1EB3B5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B38);
  }

  return result;
}

unint64_t sub_1A990EBD0()
{
  result = qword_1EB3B5B40;
  if (!qword_1EB3B5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B40);
  }

  return result;
}

unint64_t sub_1A990EC24()
{
  result = qword_1EB3B5B48;
  if (!qword_1EB3B5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B48);
  }

  return result;
}

unint64_t sub_1A990EC78()
{
  result = qword_1EB3B5B50;
  if (!qword_1EB3B5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B50);
  }

  return result;
}

unint64_t sub_1A990ECCC()
{
  result = qword_1EB3B5B58;
  if (!qword_1EB3B5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B58);
  }

  return result;
}

unint64_t sub_1A990ED20()
{
  result = qword_1EB3B5B60;
  if (!qword_1EB3B5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5B60);
  }

  return result;
}

uint64_t sub_1A990EE04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A990EE4C()
{
  sub_1A990EEB4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1A990EEB4()
{
  if (!qword_1EB3AB768)
  {
    sub_1A9976020();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AB768);
    }
  }
}

uint64_t _s7FailureO10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7FailureO10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A990F164()
{
  result = qword_1EB3B5BF0;
  if (!qword_1EB3B5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5BF0);
  }

  return result;
}

unint64_t sub_1A990F1BC()
{
  result = qword_1EB3B5BF8;
  if (!qword_1EB3B5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5BF8);
  }

  return result;
}

unint64_t sub_1A990F214()
{
  result = qword_1EB3B5C00;
  if (!qword_1EB3B5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C00);
  }

  return result;
}

unint64_t sub_1A990F26C()
{
  result = qword_1EB3B5C08;
  if (!qword_1EB3B5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C08);
  }

  return result;
}

unint64_t sub_1A990F2C4()
{
  result = qword_1EB3B5C10;
  if (!qword_1EB3B5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C10);
  }

  return result;
}

unint64_t sub_1A990F31C()
{
  result = qword_1EB3B5C18;
  if (!qword_1EB3B5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C18);
  }

  return result;
}

unint64_t sub_1A990F374()
{
  result = qword_1EB3B5C20;
  if (!qword_1EB3B5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C20);
  }

  return result;
}

unint64_t sub_1A990F3CC()
{
  result = qword_1EB3B5C28;
  if (!qword_1EB3B5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C28);
  }

  return result;
}

unint64_t sub_1A990F424()
{
  result = qword_1EB3B5C30;
  if (!qword_1EB3B5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C30);
  }

  return result;
}

unint64_t sub_1A990F47C()
{
  result = qword_1EB3B5C38;
  if (!qword_1EB3B5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C38);
  }

  return result;
}

unint64_t sub_1A990F4D4()
{
  result = qword_1EB3B5C40;
  if (!qword_1EB3B5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C40);
  }

  return result;
}

unint64_t sub_1A990F52C()
{
  result = qword_1EB3B5C48;
  if (!qword_1EB3B5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C48);
  }

  return result;
}

unint64_t sub_1A990F584()
{
  result = qword_1EB3B5C50;
  if (!qword_1EB3B5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C50);
  }

  return result;
}

unint64_t sub_1A990F5DC()
{
  result = qword_1EB3B5C58;
  if (!qword_1EB3B5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C58);
  }

  return result;
}

unint64_t sub_1A990F634()
{
  result = qword_1EB3B5C60;
  if (!qword_1EB3B5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C60);
  }

  return result;
}

unint64_t sub_1A990F68C()
{
  result = qword_1EB3B5C68;
  if (!qword_1EB3B5C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C68);
  }

  return result;
}

unint64_t sub_1A990F6E4()
{
  result = qword_1EB3B5C70;
  if (!qword_1EB3B5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C70);
  }

  return result;
}

unint64_t sub_1A990F73C()
{
  result = qword_1EB3B5C78;
  if (!qword_1EB3B5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C78);
  }

  return result;
}

unint64_t sub_1A990F794()
{
  result = qword_1EB3B5C80;
  if (!qword_1EB3B5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C80);
  }

  return result;
}

unint64_t sub_1A990F7EC()
{
  result = qword_1EB3B5C88;
  if (!qword_1EB3B5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C88);
  }

  return result;
}

unint64_t sub_1A990F844()
{
  result = qword_1EB3B5C90;
  if (!qword_1EB3B5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C90);
  }

  return result;
}

unint64_t sub_1A990F89C()
{
  result = qword_1EB3B5C98;
  if (!qword_1EB3B5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5C98);
  }

  return result;
}

unint64_t sub_1A990F8F4()
{
  result = qword_1EB3B5CA0;
  if (!qword_1EB3B5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CA0);
  }

  return result;
}

unint64_t sub_1A990F94C()
{
  result = qword_1EB3B5CA8;
  if (!qword_1EB3B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CA8);
  }

  return result;
}

unint64_t sub_1A990F9A4()
{
  result = qword_1EB3B5CB0;
  if (!qword_1EB3B5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CB0);
  }

  return result;
}

unint64_t sub_1A990F9FC()
{
  result = qword_1EB3B5CB8;
  if (!qword_1EB3B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CB8);
  }

  return result;
}

unint64_t sub_1A990FA54()
{
  result = qword_1EB3B5CC0;
  if (!qword_1EB3B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CC0);
  }

  return result;
}

unint64_t sub_1A990FAAC()
{
  result = qword_1EB3B5CC8;
  if (!qword_1EB3B5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CC8);
  }

  return result;
}

unint64_t sub_1A990FB04()
{
  result = qword_1EB3B5CD0;
  if (!qword_1EB3B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CD0);
  }

  return result;
}

unint64_t sub_1A990FB5C()
{
  result = qword_1EB3B5CD8;
  if (!qword_1EB3B5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CD8);
  }

  return result;
}

unint64_t sub_1A990FBB4()
{
  result = qword_1EB3B5CE0;
  if (!qword_1EB3B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CE0);
  }

  return result;
}

unint64_t sub_1A990FC0C()
{
  result = qword_1EB3B5CE8;
  if (!qword_1EB3B5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CE8);
  }

  return result;
}

unint64_t sub_1A990FC64()
{
  result = qword_1EB3B5CF0;
  if (!qword_1EB3B5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CF0);
  }

  return result;
}

unint64_t sub_1A990FCBC()
{
  result = qword_1EB3B5CF8;
  if (!qword_1EB3B5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5CF8);
  }

  return result;
}

unint64_t sub_1A990FD14()
{
  result = qword_1EB3B5D00;
  if (!qword_1EB3B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5D00);
  }

  return result;
}

uint64_t sub_1A990FD68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656E696C636564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696D7369446B7361 && a2 == 0xEC00000064657373 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61437265646E6573 && a2 == 0xEF64656C6C65636ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E8250 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954646578696DLL && a2 == 0xEA00000000007365 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E5E30 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5E10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72456D6165727473 && a2 == 0xEB00000000726F72 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6148746F4E6B7361 && a2 == 0xED000064656C646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E8230 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6575716552646162 && a2 == 0xEA00000000007473 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEF65707954646574 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x70416F5465766F6DLL && a2 == 0xEF64656C69614670 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E5DD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7463657078656E75 && a2 == 0xEA00000000006465)
  {

    return 14;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1A9910248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B5D08, &unk_1A99A84A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A99102B0(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.Failure();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFXPCProgressTask.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v40 = a6;
  v38 = a3;
  v35 = a2;
  v14 = type metadata accessor for SFProgressTask();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v37 = &v33 - v18;
  SFProgressTask.initialValue.getter(v17, a8);
  WitnessTable = swift_getWitnessTable();
  v34 = a4;
  v36 = a5;
  v39 = a1;
  AsyncSequence<>.xpc.getter(v14, WitnessTable, a4, a5, &v47);
  v41 = a2;
  v20 = v38;
  v42 = v38;
  v43 = a4;
  v21 = v40;
  v44 = a5;
  v45 = v40;
  v46 = a7;
  v22 = type metadata accessor for SFXPCProgressTask();
  *(a8 + *(v22 + 68)) = v47;
  v23 = v37;
  (*(v15 + 16))(v37, a1, v14);
  v24 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 2) = v35;
  *(v25 + 3) = v20;
  v27 = v36;
  *(v25 + 4) = v26;
  *(v25 + 5) = v27;
  v28 = v33;
  *(v25 + 6) = v21;
  *(v25 + 7) = v28;
  (*(v15 + 32))(&v25[v24], v23, v14);
  v29 = *(v22 + 72);
  v30 = sub_1A984B03C();
  v31 = sub_1A984B090();
  SFXPCBlock.init(_:)(&unk_1A99A84C0, v25, &type metadata for VoidParameters, v20, v30, v31, v21, v28, a8 + v29);
  return (*(v15 + 8))(v39, v14);
}

uint64_t sub_1A99105A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for SFProgressTask();
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return SFProgressTask.finalValue.getter(a1, v4);
}

uint64_t sub_1A9910674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(type metadata accessor for SFProgressTask() - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1A97B2638;

  return sub_1A99105A0(a1);
}

uint64_t SFXPCProgressTask.finalValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  v7 = *(a2 + 24);
  v8 = sub_1A984B03C();
  v9 = sub_1A984B090();
  v10 = *(a2 + 48);
  *(v2 + 16) = &type metadata for VoidParameters;
  *(v2 + 24) = v7;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  *(v2 + 48) = v10;
  v11 = type metadata accessor for SFXPCBlock();
  *v6 = v2;
  v6[1] = sub_1A97C1AD8;
  v12 = MEMORY[0x1E69E7CC0];

  return SFXPCBlock.dynamicallyCall(withArguments:)(a1, v12, v11);
}

uint64_t SFXPCProgressTask.makeAsyncIterator()(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v7 = *v2;
  v8 = v2[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  type metadata accessor for SFXPCAsyncSequence();

  SFXPCAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1A9910924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566C616974696E69 && a2 == 0xEC00000065756C61;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61566C616E6966 && a2 == 0xEF6B636F6C426575)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A9910A48(char a1)
{
  if (!a1)
  {
    return 0x566C616974696E69;
  }

  if (a1 == 1)
  {
    return 0x65636E6575716573;
  }

  return 0x6C61566C616E6966;
}

BOOL sub_1A9910AB4(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return sub_1A9677820(*a1, *a2);
}

uint64_t sub_1A9910AD0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_1A98C4B88(*v1);
}

uint64_t sub_1A9910AE4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  return sub_1A9677830(a1, *v2);
}

uint64_t sub_1A9910AF8(uint64_t a1, void *a2)
{
  sub_1A9977980();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  sub_1A9677830(v11, *v2);
  return sub_1A99779B0();
}

uint64_t sub_1A9910B48(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_1A9910A48(*v1);
}

uint64_t sub_1A9910B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  result = sub_1A9910924(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1A9910B94@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  result = sub_1A98CB7F8();
  *a2 = result;
  return result;
}

uint64_t sub_1A9910BCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A9910C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFXPCProgressTask.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  v30 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v32 = v5;
  v33 = v4;
  v27 = v4;
  v28 = v6;
  v34 = v6;
  v35 = v30;
  v25 = v8;
  v26 = v7;
  v36 = v7;
  v37 = v8;
  type metadata accessor for SFXPCProgressTask.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_1A9977710();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v9;
  v16 = v29;
  sub_1A9977AA0();
  LOBYTE(v32) = 0;
  v17 = v31;
  v18 = v13;
  sub_1A99776E0();
  if (!v17)
  {
    v19 = v16 + *(a2 + 68);
    v20 = *(v19 + 8);
    v32 = *v19;
    v33 = v20;
    v38 = 1;
    type metadata accessor for SFXPCAsyncSequence();

    swift_getWitnessTable();
    sub_1A99776E0();

    v21 = *(a2 + 72);
    v38 = 2;
    v22 = sub_1A984B03C();
    v23 = sub_1A984B090();
    v32 = &type metadata for VoidParameters;
    v33 = v27;
    v34 = v22;
    v35 = v23;
    v36 = v26;
    v37 = v25;
    type metadata accessor for SFXPCBlock();
    swift_getWitnessTable();
    sub_1A99776E0();
  }

  return (*(v10 + 8))(v18, v15);
}

uint64_t SFXPCProgressTask.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a8;
  *&v52 = &type metadata for VoidParameters;
  *(&v52 + 1) = a3;
  v53 = sub_1A984B03C();
  v54 = sub_1A984B090();
  v55 = a6;
  v56 = a7;
  v50 = a7;
  v41 = type metadata accessor for SFXPCBlock();
  v39 = *(v41 - 8);
  v15 = *(v39 + 64);
  v16 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v38 - v17;
  v44 = *(a2 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = a2;
  *(&v52 + 1) = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v56 = a7;
  type metadata accessor for SFXPCProgressTask.CodingKeys();
  swift_getWitnessTable();
  v49 = sub_1A9977630();
  v43 = *(v49 - 8);
  v20 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v22 = &v38 - v21;
  v46 = a4;
  v47 = a2;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  v53 = a4;
  v54 = a5;
  v45 = a5;
  v55 = a6;
  v56 = v50;
  v23 = type metadata accessor for SFXPCProgressTask();
  v38 = *(v23 - 8);
  v24 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v50 = v22;
  v28 = v51;
  sub_1A9977A70();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v51 = v26;
  v30 = v43;
  v29 = v44;
  LOBYTE(v52) = 0;
  v31 = v47;
  sub_1A99775F0();
  (*(v29 + 32))(v51, v48, v31);
  type metadata accessor for SFXPCAsyncSequence();
  v57 = 1;
  swift_getWitnessTable();
  sub_1A99775F0();
  v48 = v23;
  v32 = *(v23 + 68);
  v33 = v51;
  *&v51[v32] = v52;
  LOBYTE(v52) = 2;
  v34 = v41;
  swift_getWitnessTable();
  sub_1A99775F0();
  (*(v30 + 8))(v50, v49);
  v35 = v48;
  (*(v39 + 32))(&v33[*(v48 + 18)], v42, v34);
  v36 = v38;
  (*(v38 + 16))(v40, v33, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (*(v36 + 8))(v33, v35);
}

uint64_t sub_1A99114B4(uint64_t a1)
{
  SFXPCProgressTask.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t SFProgressTask<>.xpc.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v6, a1);
  return SFXPCProgressTask.init(_:)(v15, *(a1 + 16), *(a1 + 24), a2, a3, a4, a5, a6);
}

uint64_t sub_1A9911628(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    result = type metadata accessor for SFXPCAsyncSequence();
    if (v7 <= 0x3F)
    {
      v9 = *(a1 + 24);
      sub_1A984B03C();
      sub_1A984B090();
      v10 = *(a1 + 48);
      result = type metadata accessor for SFXPCBlock();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A9911704(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  if (*(v9 + 84) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 16;
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

LABEL_26:
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

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v11)
  {
    v22 = *(v6 + 48);

    return v22(a1, v7, v5);
  }

  else
  {
    v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) != 0)
    {
      v25 = *(v9 + 48);

      return v25((v23 + v12 + 16) & ~v12);
    }

    else
    {
      v24 = *v23;
      if (*v23 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }
}

void sub_1A9911970(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1A99762C0() - 8);
  v11 = *(v8 + 64);
  if (*(v10 + 84) <= 0x7FFFFFFFu)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v9 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFF8) + 16) & ~v14) == -16)
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
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
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

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 >= v12)
      {
        v23 = *(v25 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v22 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v24 = *(v10 + 56);

          v24((v22 + v14 + 16) & ~v14, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v22 = a2 & 0x7FFFFFFF;
          v22[1] = 0;
        }

        else
        {
          *v22 = (a2 - 1);
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFF8) + 16) & ~v14) == -16)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((v14 + ((v11 + 7) & 0xFFFFFFF8) + 16) & ~v14) != -16)
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

uint64_t combineLatest<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v41 = a8;
  v42 = a4;
  v40 = a3;
  v39[0] = a2;
  v44 = a9;
  v43 = a10;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  v39[1] = a12;
  v39[2] = a11;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v17);
  v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v23);
  v31 = v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v35 = v39 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  (*(v27 + 16))(v31, v39[0], a6);
  (*(v21 + 16))(v25, v40, a7);
  v37 = v41;
  (*(v15 + 16))(v19, v42, v41);
  return sub_1A9911F5C(v35, v31, v25, v19, a5, a6, a7, v37, v44);
}

uint64_t sub_1A9911F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v16 = type metadata accessor for AsyncCombineLatest4Sequence();
  (*(*(a6 - 8) + 32))(a9 + v16[21], a2, a6);
  (*(*(a7 - 8) + 32))(a9 + v16[22], a3, a7);
  return (*(*(a8 - 8) + 32))(a9 + v16[23], a4, a8);
}

uint64_t AsyncCombineLatest4Sequence.Iterator.next()(uint64_t a1, void *a2)
{
  *(v2 + 176) = a1;
  v27 = a2[2];
  v28 = a2[6];
  *(v2 + 184) = swift_getAssociatedTypeWitness();
  v25 = a2[3];
  v26 = a2[7];
  *(v2 + 192) = swift_getAssociatedTypeWitness();
  *(v2 + 200) = swift_getTupleTypeMetadata2();
  v4 = a2[8];
  v5 = a2[4];
  *(v2 + 208) = swift_getAssociatedTypeWitness();
  v6 = a2[9];
  v7 = a2[5];
  *(v2 + 216) = swift_getAssociatedTypeWitness();
  *(v2 + 224) = swift_getTupleTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v2 + 232) = TupleTypeMetadata2;
  v9 = sub_1A99770A0();
  *(v2 + 240) = v9;
  v10 = *(v9 - 8);
  *(v2 + 248) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v2 + 256) = v12;
  v13 = *(TupleTypeMetadata2 - 8);
  *(v2 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v15 = swift_task_alloc();
  *(v2 + 312) = v15;
  *&v16 = v27;
  *&v17 = v28;
  *(&v16 + 1) = v25;
  *(&v17 + 1) = v26;
  *(v2 + 32) = v17;
  *(v2 + 16) = v16;
  v18 = type metadata accessor for AsyncCombineLatest2Sequence();
  *&v19 = v5;
  *(&v19 + 1) = v7;
  *&v20 = v4;
  *(&v20 + 1) = v6;
  *(v2 + 64) = v20;
  *(v2 + 48) = v19;
  v21 = type metadata accessor for AsyncCombineLatest2Sequence();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *(v2 + 80) = v18;
  *(v2 + 88) = v21;
  *(v2 + 96) = WitnessTable;
  *(v2 + 104) = v23;
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator();
  *v15 = v2;
  v15[1] = sub_1A9912410;

  return AsyncCombineLatest2Sequence.Iterator.next()(v12);
}

uint64_t sub_1A9912410()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1A9912B04;
  }

  else
  {
    v3 = sub_1A9912524;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9912524()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 208);
    v48 = v5;
    v50 = *(v0 + 184);
    (*(*(v0 + 248) + 8))(v1, *(v0 + 240));
    *(v0 + 112) = v50;
    *(v0 + 128) = v48;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    (*(*(TupleTypeMetadata - 8) + 56))(v4, 1, 1, TupleTypeMetadata);
  }

  else
  {
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v46 = *(v0 + 288);
    v45 = *(v0 + 280);
    v39 = *(v0 + 272);
    v9 = *(v0 + 224);
    v28 = v9;
    v51 = *(v0 + 208);
    v10 = *(v0 + 200);
    v47 = *(v0 + 184);
    v11 = *(v0 + 176);
    v36 = *(v2 + 32);
    v36(v7, v1, v3);
    *(v0 + 144) = v47;
    *(v0 + 160) = v51;
    v12 = swift_getTupleTypeMetadata();
    v30 = v12[16];
    v32 = v12[12];
    v34 = v12[20];
    v13 = *(v2 + 16);
    v13(v8, v7, v3);
    v43 = v8 + *(v3 + 48);
    v44 = *(v10 + 48);
    v42 = *(v9 + 48);
    v38 = v47;
    v49 = *(v47 - 8);
    (*(v49 + 32))(v11, v8, v47);
    v13(v46, v7, v3);
    v41 = v46 + *(v3 + 48);
    v40 = *(v9 + 48);
    *&v47 = *(*(&v47 + 1) - 8);
    (*(v47 + 32))(v11 + v32, v46 + *(v10 + 48), *(&v47 + 1));
    v13(v45, v7, v3);
    v33 = *(v10 + 48);
    v29 = v45 + *(v3 + 48);
    v31 = *(v9 + 48);
    v14 = *(v51 - 8);
    (*(v14 + 32))(v11 + v30);
    v36(v39, v7, v3);
    v37 = *(v10 + 48);
    v15 = v39 + *(v3 + 48);
    v16 = *(*(&v51 + 1) - 8);
    (*(v16 + 32))(v11 + v34, v15 + *(v28 + 48), *(&v51 + 1));
    (*(*(v12 - 1) + 56))(v11, 0, 1, v12);
    v35 = *(v14 + 8);
    v35(v15, v51);
    v17 = *(v47 + 8);
    v17(v39 + v37, *(&v47 + 1));
    v18 = *(v49 + 8);
    v18(v39, v38);
    v19 = *(v16 + 8);
    v19(v29 + v31, *(&v51 + 1));
    v17(v45 + v33, *(&v47 + 1));
    v18(v45, v38);
    v19(v41 + v40, *(&v51 + 1));
    v35(v41, v51);
    v18(v46, v38);
    v19(v43 + v42, *(&v51 + 1));
    v35(v43, v51);
    v17(v8 + v44, *(&v47 + 1));
  }

  v21 = *(v0 + 296);
  v20 = *(v0 + 304);
  v23 = *(v0 + 280);
  v22 = *(v0 + 288);
  v24 = *(v0 + 272);
  v25 = *(v0 + 256);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A9912B04()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[32];

  v7 = v0[1];
  v8 = v0[40];

  return v7();
}

uint64_t sub_1A9912BAC(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2638;

  return AsyncCombineLatest4Sequence.Iterator.next()(a1, a2);
}

uint64_t sub_1A9912C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v12 = *(a5 + 48);
  v13 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v6[5] = swift_task_alloc();
  v17 = *(MEMORY[0x1E69E85D8] + 4);
  v18 = swift_task_alloc();
  v6[6] = v18;
  *v18 = v6;
  v18[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t AsyncCombineLatest4Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 + 48);
  v28 = *(a1 + 16);
  v29 = v4;
  v33 = v28;
  v34 = v4;
  v5 = type metadata accessor for AsyncCombineLatest2Sequence();
  v6 = *(a1 + 64);
  v30 = *(a1 + 32);
  v31 = v6;
  v7 = type metadata accessor for AsyncCombineLatest2Sequence();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  *&v33 = v5;
  *(&v33 + 1) = v7;
  *&v34 = WitnessTable;
  *(&v34 + 1) = v26;
  v25 = type metadata accessor for AsyncCombineLatest2Sequence();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v25);
  v12 = &v24 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v24 - v16;
  v18 = *(v5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v24 - v20;
  combineLatest<A, B>(_:_:)(v2, v2 + *(a1 + 84), v28, *(&v28 + 1), &v24 - v20);
  combineLatest<A, B>(_:_:)(v2 + *(a1 + 88), v2 + *(a1 + 92), v30, *(&v30 + 1), v17);
  combineLatest<A, B>(_:_:)(v21, v17, v5, v7, v12);
  v22 = v25;
  AsyncCombineLatest2Sequence.makeAsyncIterator()(v25, &v33);
  (*(v8 + 8))(v12, v22);
  (*(v13 + 8))(v17, v7);
  result = (*(v18 + 8))(v21, v5);
  *v32 = v33;
  return result;
}

uint64_t sub_1A9913094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A9913154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AsyncCombineLatest4Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A99131BC(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A9913280(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  if (v9 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = a3[5];
  v15 = *(v14 - 8);
  v16 = *(v8 + 80);
  v17 = *(*(a3[3] - 8) + 64);
  v18 = *(v10 + 80);
  v19 = *(v10 + 64);
  v20 = *(v15 + 80);
  if (*(v15 + 84) <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(a3[2] - 8) + 64) + v16;
  v23 = a2 - v21;
  if (a2 <= v21)
  {
    goto LABEL_34;
  }

  v24 = ((v19 + v20 + ((v17 + v18 + (v22 & ~v16)) & ~v18)) & ~v20) + *(*(v14 - 8) + 64);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((v23 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v27 < 2)
    {
LABEL_33:
      if (v21)
      {
LABEL_34:
        if (v6 == v21)
        {
          v31 = *(v5 + 48);

          return v31();
        }

        else
        {
          v33 = (a1 + v22) & ~v16;
          if (v9 == v21)
          {
            v34 = *(v8 + 48);
            v35 = *(v8 + 84);
            v36 = a3[3];
          }

          else
          {
            v33 = (v33 + v17 + v18) & ~v18;
            if (v12 == v21)
            {
              v34 = *(*(v7 - 8) + 48);
              v35 = v12;
              v36 = a3[4];
            }

            else
            {
              v37 = ~v20;
              v38 = v33 + v19 + v20;
              v34 = *(v15 + 48);
              v33 = v38 & v37;
              v35 = *(v15 + 84);
              v36 = a3[5];
            }
          }

          return v34(v33, v35, v36);
        }
      }

      return 0;
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_33;
  }

LABEL_20:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = ((v19 + v20 + ((v17 + v18 + (v22 & ~v16)) & ~v18)) & ~v20) + *(*(v14 - 8) + 64);
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v21 + (v30 | v28) + 1;
}

char *sub_1A9913628(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[4];
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v14 + 84);
  }

  v22 = v15 + v16;
  v23 = ((v19 + v20 + ((v17 + v18 + ((v15 + v16) & ~v16)) & ~v18)) & ~v20) + *(v14 + 64);
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v30 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v30))
      {
        v26 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v26 = v31;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v29 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v32 = v27 & ~(-1 << (8 * v23));
        v33 = result;
        bzero(result, v23);
        result = v33;
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *v33 = v32;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&result[v23] = v29;
              }

              else
              {
                *&result[v23] = v29;
              }

              return result;
            }
          }

          else
          {
            *v33 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v33 = v32;
        v33[2] = BYTE2(v32);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v28 = result;
      bzero(result, v23);
      result = v28;
      *v28 = v27;
      v29 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      result[v23] = v29;
    }

    return result;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&result[v23] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *&result[v23] = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    goto LABEL_36;
  }

  result[v23] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v21)
  {
    v34 = *(v5 + 56);

    return v34();
  }

  else
  {
    v35 = &result[v22] & ~v16;
    if (v9 == v21)
    {
      v36 = *(v8 + 56);
    }

    else
    {
      v35 = (v35 + v17 + v18) & ~v18;
      if (v12 == v21)
      {
        v36 = *(v11 + 56);
      }

      else
      {
        v37 = v35 + v19 + v20;
        v36 = *(v14 + 56);
        v35 = v37 & ~v20;
      }
    }

    return v36(v35);
  }
}

uint64_t sub_1A9913A90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id _SFXPCError.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A99195C8(a1);

  return v4;
}

void sub_1A9913B28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1A9976060();
  }

  v8 = v7;
  (*(a6 + 16))(a6);
}

uint64_t sub_1A9913BB4()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ACDD0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ACDD0);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFXPCListener.connections.getter()
{
  v1 = qword_1EB3B5F18;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SFXPCListener.containerRegistry.getter()
{
  v1 = qword_1EB3B5F20;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SFXPCListener.containerRegistry.setter(uint64_t a1)
{
  v3 = qword_1EB3B5F20;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A9913DC4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1EB3B5F28);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A991A9C8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A9913E64(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A991A9EC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1EB3B5F28);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

uint64_t sub_1A9913FCC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1EB3B5F30);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A991A914;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A991406C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A991A8EC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1EB3B5F30);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

uint64_t sub_1A99141D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + qword_1EB3B5F38);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A9914234(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (*a2 + qword_1EB3B5F38);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v2;
  v5[1] = v4;
  sub_1A967C510(v2);
  return sub_1A967C46C(v6);
}

uint64_t sub_1A99142D8(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1A9914360(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1A9914480(void *a1, SEL *a2)
{
  v4 = [objc_opt_self() *a2];
  v5 = a1;
  v6 = objc_allocWithZone(v2);
  return SFXPCListener.init(takingOver:queue:)(v4, v5);
}

id SFXPCListener.init(takingOver:queue:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  *(v2 + qword_1EB3B5F20) = 0;
  v8 = (v2 + qword_1EB3B5F28);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v2 + qword_1EB3B5F30);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + qword_1EB3B5F38);
  *v10 = 0;
  v10[1] = 0;
  [a1 sf:a2 setQueue:?];
  *(v2 + qword_1EB3B5F40) = a1;
  v11 = *((v7 & v6) + 0x50);
  type metadata accessor for SFXPCListener.ClientConnection();
  v12 = a1;
  *(v2 + qword_1EB3B5F18) = sub_1A9976B00();
  *(v2 + qword_1EB3B5F48) = a2;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v12 setDelegate_];

  return v14;
}

id SFXPCListener.__allocating_init(machServiceName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v6 = sub_1A99767E0();

  v7 = [v5 initWithMachServiceName_];

  v8 = objc_allocWithZone(v3);
  return SFXPCListener.init(takingOver:queue:)(v7, a3);
}

id SFXPCListener.endpoint.getter()
{
  v1 = [*(v0 + qword_1EB3B5F40) endpoint];

  return v1;
}

uint64_t sub_1A99147C4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = qword_1EB3B5F18;
  swift_beginAccess();
  v11 = *(a1 + v4);
  sub_1A9976B60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A9976F10();
  if (v10 != 1)
  {
    swift_beginAccess();
    sub_1A9976B50();
    swift_endAccess();
  }

  v5 = a1 + qword_1EB3B5F30;
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v5 + 8);
    v9 = qword_1EB3EAF98;

    v7(a2 + v9);
    return sub_1A967C46C(v7);
  }

  return result;
}

uint64_t sub_1A9914934(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1A9919C30(v7);

  return v9 & 1;
}

uint64_t sub_1A99149C4(uint64_t a1)
{
  v2 = *(a1 + qword_1EB3B5F18);

  v3 = *(a1 + qword_1EB3B5F20);

  v4 = *(a1 + qword_1EB3B5F28 + 8);
  sub_1A967C46C(*(a1 + qword_1EB3B5F28));
  v5 = *(a1 + qword_1EB3B5F30 + 8);
  sub_1A967C46C(*(a1 + qword_1EB3B5F30));
  v6 = *(a1 + qword_1EB3B5F38);
  v7 = *(a1 + qword_1EB3B5F38 + 8);

  return sub_1A967C46C(v6);
}

id SFXPCListener.ClientConnection.init(connection:clientIdentity:containerRegistry:contextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[qword_1EB3EAFA0] = a1;
  sub_1A9903A68(a2, &v5[qword_1EB3EAF98]);
  v12 = &v5[qword_1EB3EAF90];
  *v12 = a4;
  *(v12 + 1) = a5;
  *&v5[qword_1EB3EAF88] = a3;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_1A9903B30(a2);
  return v13;
}

Swift::Void __swiftcall SFXPCListener.ClientConnection.activate()()
{
  v1 = *(v0 + qword_1EB3EAFA0);
  swift_beginAccess();
  [*(v1 + 16) activate];
}

uint64_t SFXPCListener.ClientConnection.invoke(_:parametersData:parametersAsyncSequenceContainer:parametersBlocksContainer:sync:completion:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, unint64_t, char *, id, id), uint64_t a8)
{
  v178 = a8;
  v177 = a7;
  LODWORD(v174) = a6;
  v160 = a5;
  v161 = a4;
  v164 = a3;
  v163 = a2;
  v173 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x50);
  v10 = *(v173 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v154 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v175 = &v154 - v19;
  v171 = sub_1A99762C0();
  v170 = *(v171 - 8);
  v20 = *(v170 + 64);
  v21 = MEMORY[0x1EEE9AC00](v171);
  v168 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v154 - v22;
  v172 = type metadata accessor for SFClientIdentity();
  v157 = *(v172 - 1);
  v24 = *(v157 + 64);
  v25 = MEMORY[0x1EEE9AC00](v172);
  v27 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v162 = &v154 - v29;
  v158 = v30;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v154 - v31;
  v179 = v8;
  sub_1A9903A68(&v8[qword_1EB3EAF98], &v154 - v31);
  v169 = a1;
  v33 = *&a1[OBJC_IVAR___SFXPCInvocation_name + 8];
  if (!v33)
  {
    if (qword_1EB3ACDC8 != -1)
    {
      swift_once();
    }

    v44 = sub_1A99764A0();
    __swift_project_value_buffer(v44, qword_1EB3ACDD0);
    v45 = v32;
    sub_1A9903A68(v32, v27);
    v46 = v169;
    v47 = sub_1A9976480();
    v48 = sub_1A9976F80();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v187 = v50;
      *v49 = 136315394;
      v51 = SFClientIdentity.shortDescription.getter();
      v53 = v52;
      sub_1A9903B30(v27);
      v54 = sub_1A97AF148(v51, v53, &v187);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      v55 = v46;
      v56 = [v55 description];
      v57 = sub_1A9976820();
      v59 = v58;

      v60 = sub_1A97AF148(v57, v59, &v187);

      *(v49 + 14) = v60;
      _os_log_impl(&dword_1A9662000, v47, v48, "invocable has no name -- Daemon {client: %s, invocable: %{public}s}", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC58D2C0](v50, -1, -1);
      MEMORY[0x1AC58D2C0](v49, -1, -1);
    }

    else
    {

      sub_1A9903B30(v27);
    }

    sub_1A97BCDE0();
    v99 = swift_allocError();
    *v100 = xmmword_1A99A8800;
    *(v100 + 16) = 0xD00000000000004FLL;
    *(v100 + 24) = 0x80000001A99E8280;
    *(v100 + 32) = 260;
    *(v100 + 80) = 0x2000000000000000;
    v101 = objc_allocWithZone(type metadata accessor for _SFXPCError());
    v102 = sub_1A99195C8(v99);

    v177(0, 0xF000000000000000, 0, 0, v102);
    v98 = v45;
    return sub_1A9903B30(v98);
  }

  v156 = v16;
  v187 = *&a1[OBJC_IVAR___SFXPCInvocation_name];
  v188 = v33;

  MEMORY[0x1AC5895B0](58, 0xE100000000000000);
  v34 = SFClientIdentity.shortDescription.getter();
  MEMORY[0x1AC5895B0](v34);

  v35 = v188;
  v176 = v187;
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v36 = sub_1A99764A0();
  v37 = __swift_project_value_buffer(v36, qword_1EB3ACDD0);

  v165 = v37;
  v38 = sub_1A9976480();
  v39 = sub_1A9976F90();

  v40 = os_log_type_enabled(v38, v39);
  v167 = v32;
  v155 = v10;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v187 = v42;
    *v41 = 136446466;
    v43 = v176;
    *(v41 + 4) = sub_1A97AF148(v176, v35, &v187);
    *(v41 + 12) = 1024;
    *(v41 + 14) = v174 & 1;
    _os_log_impl(&dword_1A9662000, v38, v39, "Invocation [%{public}s] START -- Daemon {sync: %{BOOL}d}", v41, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x1AC58D2C0](v42, -1, -1);
    MEMORY[0x1AC58D2C0](v41, -1, -1);
  }

  else
  {

    v43 = v176;
  }

  v154 = v14;
  v61 = *&v179[qword_1EB3EAF88];
  v166 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v62 = objc_allocWithZone(v166);

  v63 = v23;
  sub_1A99762B0();
  v64 = v170;
  v65 = *(v170 + 16);
  v66 = v23;
  v67 = v171;
  v65(&v62[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v66, v171);
  v68 = &v62[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v68 = v43;
  v68[1] = v35;

  *&v62[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v62[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v61;
  if (v61)
  {
    v69 = sub_1A9976C00();
    (*(*(v69 - 8) + 56))(v175, 1, 1, v69);
    v70 = v168;
    v65(v168, v63, v67);
    v71 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v72 = swift_allocObject();
    *(v72 + 2) = 0;
    *(v72 + 3) = 0;
    *(v72 + 4) = v61;
    v73 = v70;
    v43 = v176;
    (*(v64 + 32))(&v72[v71], v73, v67);
    v74 = &v72[(v20 + v71 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v74 = v43;
    v74[1] = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v175, &unk_1A9999B40, v72);

    (*(v64 + 8))(v63, v67);
  }

  else
  {
    (*(v64 + 8))(v63, v67);
  }

  v191.receiver = v62;
  v191.super_class = v166;
  v75 = objc_msgSendSuper2(&v191, sel_init);
  v76 = objc_allocWithZone(type metadata accessor for _SFXPCBlockContainer());

  v171 = v35;
  v77 = sub_1A97BE9E8(v43, v35, v61);

  v78 = *&v179[qword_1EB3EAF90];
  v79 = *&v179[qword_1EB3EAF90 + 8];
  if (v78)
  {
    v80 = *&v179[qword_1EB3EAF90 + 8];
  }

  else
  {
    v80 = 0;
  }

  *&v182 = *&v179[qword_1EB3EAF90];
  *(&v182 + 1) = v80;
  sub_1A967C510(v78);
  v81 = v173;
  swift_getFunctionTypeMetadata1();
  v82 = sub_1A99770A0();
  Optional.tryUnwrap(_:file:line:)(0xD000000000000010, 0x80000001A99E82D0, 0xD00000000000004FLL, 0x80000001A99E8280, 269, v82, &v187);
  v172 = v77;
  v179 = v75;
  sub_1A967C46C(v78);
  v83 = v188;
  v84 = v167;
  (v187)(v167);
  if ((v174 & 1) == 0)
  {
    v109 = sub_1A9976C00();
    (*(*(v109 - 8) + 56))(v175, 1, 1, v109);
    v110 = v155;
    (*(v155 + 16))(v154, v156, v81);
    sub_1A9903A68(v84, v162);
    v111 = (*(v110 + 80) + 64) & ~*(v110 + 80);
    v168 = ((v159 + *(v157 + 80) + v111) & ~*(v157 + 80));
    v174 = &v168[v158 + 7] & 0xFFFFFFFFFFFFFFF8;
    v170 = v83;
    v112 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
    v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
    v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
    v116 = swift_allocObject();
    *(v116 + 16) = 0;
    *(v116 + 24) = 0;
    v117 = v169;
    *(v116 + 32) = v81;
    *(v116 + 40) = v117;
    v118 = v164;
    *(v116 + 48) = v163;
    *(v116 + 56) = v118;
    (*(v110 + 32))(v116 + v111, v154, v81);
    sub_1A9903ACC(v162, &v168[v116]);
    *(v116 + v174) = v161;
    *(v116 + v112) = v160;
    v119 = v179;
    *(v116 + v113) = v179;
    v120 = v172;
    *(v116 + v114) = v172;
    v121 = (v116 + v115);
    v122 = v171;
    *v121 = v176;
    v121[1] = v122;
    v123 = (v116 + ((v115 + 23) & 0xFFFFFFFFFFFFFFF8));
    v124 = v178;
    *v123 = v177;
    v123[1] = v124;
    v125 = v117;
    v126 = v119;
    v127 = v120;
    sub_1A97B40FC(v163, v164);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1A97B4F40(0, 0, v175, &unk_1A99A8828, v116);

    (*(v155 + 8))(v156, v173);
    v98 = v167;
    return sub_1A9903B30(v98);
  }

  v186[3] = type metadata accessor for SFXPCInvocation();
  v104 = v169;
  v186[0] = v169;
  sub_1A97AF7EC(v186, v185);
  v105 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F58, &qword_1A99A8830);
  if (!swift_dynamicCast())
  {
    v184 = 0;
    v183 = 0u;
    v182 = 0u;
    sub_1A97B06FC(&v182, &unk_1EB3B5F60, &qword_1A99A8838);
    v180 = 0;
    v181 = 0xE000000000000000;
    sub_1A9977400();
    v128 = v180;
    v129 = v181;
    sub_1A97BCDE0();
    v130 = swift_allocError();
    *v131 = v128;
    v131[1] = v129;
    v131[2] = 0xD00000000000001ELL;
    v131[3] = 0x80000001A99A8820;
    v131[4] = 0;
    v131[5] = 0;
    v131[6] = 0xD00000000000004FLL;
    v131[7] = 0x80000001A99E8280;
    v131[8] = 272;
    v131[10] = 0xA000000000000000;
    swift_willThrow();

    (*(v155 + 8))(v156, v81);
    __swift_destroy_boxed_opaque_existential_0Tm(v186);
    v85 = v171;

    v86 = v130;
    v87 = sub_1A9976480();
    v88 = sub_1A9976F90();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v187 = v90;
      *v89 = 136446722;
      v91 = sub_1A97AF148(v176, v85, &v187);

      *(v89 + 4) = v91;
      *(v89 + 12) = 2082;
      swift_getErrorValue();
      v92 = sub_1A99778E0();
      v94 = sub_1A97AF148(v92, v93, &v187);

      *(v89 + 14) = v94;
      *(v89 + 22) = 1024;
      *(v89 + 24) = v174 & 1;
      _os_log_impl(&dword_1A9662000, v87, v88, "Invocation [%{public}s] FAIL -- Daemon {error: %{public}s, sync: %{BOOL}d}", v89, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1AC58D2C0](v90, -1, -1);
      MEMORY[0x1AC58D2C0](v89, -1, -1);
    }

    else
    {
    }

    v95 = objc_allocWithZone(type metadata accessor for _SFXPCError());
    v96 = v130;
    v97 = sub_1A99195C8(v130);

    v177(0, 0xF000000000000000, 0, 0, v97);
    v98 = v84;
    return sub_1A9903B30(v98);
  }

  v170 = v83;
  sub_1A967A538(&v182, &v187);
  __swift_destroy_boxed_opaque_existential_0Tm(v186);
  v106 = v189;
  v107 = v190;
  __swift_project_boxed_opaque_existential_1(&v187, v189);
  *(&v183 + 1) = v81;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v182);
  (*(v155 + 16))(boxed_opaque_existential_0, v156, v81);
  v132 = (*(v107 + 8))(v163, v164, &v182, v84, v161, v160, v179, v172, v106, v107);
  v134 = v133;
  __swift_destroy_boxed_opaque_existential_0Tm(&v182);
  v135 = v171;

  sub_1A97B40FC(v132, v134);
  v136 = v134;
  v137 = sub_1A9976480();
  v138 = sub_1A9976F90();

  sub_1A97B43C4(v132, v136);
  v139 = v132;
  if (os_log_type_enabled(v137, v138))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *&v182 = v141;
    *v140 = 136446466;
    v142 = sub_1A97AF148(v176, v135, &v182);

    *(v140 + 4) = v142;
    *(v140 + 12) = 2080;
    sub_1A97B40FC(v132, v136);
    v143 = sub_1A9976040();
    v145 = v144;
    sub_1A97B43C4(v132, v136);
    v146 = sub_1A97AF148(v143, v145, &v182);

    *(v140 + 14) = v146;
    v147 = v167;
    _os_log_impl(&dword_1A9662000, v137, v138, "Invocation [%{public}s] END -- Daemon {responseData: %s, sync: true}", v140, 0x16u);
    swift_arrayDestroy();
    v81 = v173;
    MEMORY[0x1AC58D2C0](v141, -1, -1);
    MEMORY[0x1AC58D2C0](v140, -1, -1);

    v148 = v179;
  }

  else
  {

    v148 = v179;
    v147 = v167;
  }

  v149 = v172;
  sub_1A97B40FC(v139, v136);
  v150 = v148;
  v151 = v149;
  v152 = v149;
  v153 = v151;
  v177(v139, v136, v148, v152, 0);

  sub_1A97B43C4(v139, v136);
  sub_1A97B43C4(v139, v136);

  (*(v155 + 8))(v156, v81);
  sub_1A9903B30(v147);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v187);
}

uint64_t sub_1A9916080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v14;
  *(v8 + 328) = v13;
  *(v8 + 312) = v12;
  *(v8 + 296) = v11;
  *(v8 + 280) = v10;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 240) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A99160DC, 0, 0);
}

uint64_t sub_1A99160DC()
{
  v47 = v0;
  v1 = *(v0 + 240);
  v2 = type metadata accessor for SFXPCInvocation();
  *(v0 + 96) = v1;
  *(v0 + 120) = v2;
  sub_1A97AF7EC(v0 + 96, v0 + 128);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FB0, &qword_1A99A89B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 344);
    v5 = *(v0 + 264);
    sub_1A967A538((v0 + 56), v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    *(v0 + 184) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
    v9 = *(v7 + 8);
    v45 = v9 + *v9;
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 352) = v11;
    *v11 = v0;
    v11[1] = sub_1A99165C4;
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v14 = *(v0 + 280);
    v15 = *(v0 + 288);
    v16 = *(v0 + 272);
    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    v49 = v6;
    v50 = v7;

    __asm { BRAA            X8, X16 }
  }

  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_1A97B06FC(v0 + 56, &qword_1EB3B5FB8, &unk_1A99A89C0);
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  sub_1A9977400();
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  sub_1A97BCDE0();
  v21 = swift_allocError();
  *v22 = v20;
  v22[1] = v19;
  v22[2] = 0xD00000000000001FLL;
  v22[3] = 0x80000001A99A8950;
  v22[4] = 0;
  v22[5] = 0;
  v22[6] = 0xD00000000000004FLL;
  v22[7] = 0x80000001A99E8280;
  v22[8] = 285;
  v22[10] = 0xA000000000000000;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 320);
  v24 = sub_1A99764A0();
  __swift_project_value_buffer(v24, qword_1EB3ACDD0);

  v25 = v21;
  v26 = sub_1A9976480();
  v27 = sub_1A9976F90();

  if (os_log_type_enabled(v26, v27))
  {
    v29 = *(v0 + 312);
    v28 = *(v0 + 320);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46[0] = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_1A97AF148(v29, v28, v46);
    *(v30 + 12) = 2082;
    swift_getErrorValue();
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v34 = *(v0 + 208);
    v35 = sub_1A99778E0();
    v37 = sub_1A97AF148(v35, v36, v46);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_1A9662000, v26, v27, "Invocation [%{public}s] FAIL -- Daemon post-async-invocation {error: %{public}s, sync: false}", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v31, -1, -1);
    MEMORY[0x1AC58D2C0](v30, -1, -1);
  }

  v39 = *(v0 + 328);
  v38 = *(v0 + 336);
  v40 = objc_allocWithZone(type metadata accessor for _SFXPCError());
  v41 = v21;
  v42 = sub_1A99195C8(v21);

  v39(0, 0xF000000000000000, 0, 0, v42);
  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1A99165C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[44];
  v8 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  if (v2)
  {
    v6 = sub_1A9916948;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 20);
    v6 = sub_1A99166E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A99166E4()
{
  v26 = v0;
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[40];
  v4 = sub_1A99764A0();
  __swift_project_value_buffer(v4, qword_1EB3ACDD0);

  sub_1A97B40FC(v2, v1);
  v5 = sub_1A9976480();
  v6 = sub_1A9976F90();

  sub_1A97B43C4(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[45];
    v7 = v0[46];
    v10 = v0[39];
    v9 = v0[40];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1A97AF148(v10, v9, &v25);
    *(v11 + 12) = 2080;
    sub_1A97B40FC(v8, v7);
    v13 = sub_1A9976040();
    v15 = v14;
    sub_1A97B43C4(v8, v7);
    v16 = sub_1A97AF148(v13, v15, &v25);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1A9662000, v5, v6, "Invocation [%{public}s] END -- Daemon {responseData: %s, sync: false}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
  }

  v18 = v0[45];
  v17 = v0[46];
  v20 = v0[41];
  v19 = v0[42];
  v22 = v0[37];
  v21 = v0[38];
  sub_1A97B40FC(v18, v17);
  v20(v18, v17, v22, v21, 0);
  sub_1A97B43C4(v18, v17);
  sub_1A97B43C4(v18, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v23 = v0[1];

  return v23();
}

uint64_t sub_1A9916948()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[47];
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v3 = sub_1A99764A0();
  __swift_project_value_buffer(v3, qword_1EB3ACDD0);

  v4 = v1;
  v5 = sub_1A9976480();
  v6 = sub_1A9976F90();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[39];
    v7 = v0[40];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1A97AF148(v8, v7, &v24);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[26];
    v14 = sub_1A99778E0();
    v16 = sub_1A97AF148(v14, v15, &v24);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1A9662000, v5, v6, "Invocation [%{public}s] FAIL -- Daemon post-async-invocation {error: %{public}s, sync: false}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v10, -1, -1);
    MEMORY[0x1AC58D2C0](v9, -1, -1);
  }

  v18 = v0[41];
  v17 = v0[42];
  v19 = objc_allocWithZone(type metadata accessor for _SFXPCError());
  v20 = v1;
  v21 = sub_1A99195C8(v1);

  v18(0, 0xF000000000000000, 0, 0, v21);
  v22 = v0[1];

  return v22();
}

void sub_1A9916B98(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, int a7, void *aBlock)
{
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = a1;
  v17 = sub_1A9976070();
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  SFXPCListener.ClientConnection.invoke(_:parametersData:parametersAsyncSequenceContainer:parametersBlocksContainer:sync:completion:)(v15, v17, v19, a5, a6, a7, sub_1A97C0D38, v20);

  sub_1A97B43C4(v17, v19);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1A9916D50(uint64_t a1)
{
  sub_1A9903B30(a1 + qword_1EB3EAF98);
  v2 = *(a1 + qword_1EB3EAFA0);

  v3 = *(a1 + qword_1EB3EAF90 + 8);
  sub_1A967C46C(*(a1 + qword_1EB3EAF90));
  v4 = *(a1 + qword_1EB3EAF88);
}

uint64_t sub_1A9916DC0()
{
  result = sub_1A9916DE8();
  qword_1ED7182C8 = result;
  unk_1ED7182D0 = v1;
  qword_1ED7182D8 = v2;
  unk_1ED7182E0 = v3;
  return result;
}

uint64_t sub_1A9916DE8()
{
  v0 = objc_opt_self();
  [v0 interfaceWithProtocol_];
  [v0 interfaceWithProtocol_];
  [v0 interfaceWithProtocol_];
  [v0 interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A9998170;
  v2 = sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC8, &qword_1A99A89D0);
  *(v1 + 32) = v2;
  v3 = type metadata accessor for SFXPCInvocation();
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B5FD0, &qword_1A99A89D8);
  *(v1 + 64) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v5 = sub_1A9976AB0();

  [v4 initWithArray_];

  result = sub_1A9976E10();
  __break(1u);
  return result;
}

uint64_t _AnySFXPCSyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlockContainer:responseAsyncSequenceContainer:responseXPCBlockContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v85 = a8;
  v92 = a7;
  v101 = a6;
  v95 = a4;
  v98 = a3;
  v102 = a1;
  v103 = a2;
  v12 = *(a11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v13 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v96 = &v82 - v14;
  v94 = a11;
  v99 = swift_getAssociatedTypeWitness();
  v93 = *(v99 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v82 - v16;
  v105 = v12;
  v106 = a9;
  v108 = swift_getAssociatedTypeWitness();
  v97 = *(v108 - 8);
  v17 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v90 = &v82 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v82 - v28;
  v30 = sub_1A9977460();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v84 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v89 = &v82 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v82 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v82 - v40;
  v42 = sub_1A9975E40();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_1A9975E30();
  v88 = "rProtocol>24@_SFXPCError32";
  sub_1A9977450();
  v109 = v31[6];
  v110 = v31 + 6;
  result = v109(v29, 1, v30);
  if (result == 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = v30;
  v48 = v30;
  v49 = v31[4];
  v111 = v31 + 4;
  v49(v41, v29, v48);
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v51 = a5;
  }

  else
  {
    v51 = 0;
    ObjectType = 0;
    v114 = 0;
    v115 = 0;
  }

  v113 = v51;
  v116 = ObjectType;
  swift_unknownObjectRetain();
  v117 = v45;
  v52 = sub_1A9975E20();
  sub_1A97DCC4C(&v113, v41);
  v52(v112, 0);
  sub_1A9977450();
  v53 = v47;
  result = v109(v27, 1, v47);
  if (result == 1)
  {
    goto LABEL_17;
  }

  v49(v39, v27, v47);
  v54 = v107;
  v55 = v101;
  v83 = v49;
  v82 = "amework/XPC/SFXPCBlock.swift";
  if (v101)
  {
    v56 = swift_getObjectType();
    v57 = v55;
  }

  else
  {
    v57 = 0;
    v56 = 0;
    v114 = 0;
    v115 = 0;
  }

  v113 = v57;
  v116 = v56;
  swift_unknownObjectRetain();
  v58 = sub_1A9975E20();
  sub_1A97DCC4C(&v113, v39);
  v58(v112, 0);
  v59 = v106;
  swift_getAssociatedConformanceWitness();
  v60 = v104;
  sub_1A9975E10();
  if (v60)
  {

    return v55;
  }

  v62 = v99;
  v61 = v100;
  tryCast<A>(_:as:description:file:line:)(v98, v99, 0, 0, 0xD00000000000004FLL, 0x80000001A99E8280, 440, v99, v100);
  (*(v94 + 24))(v54, v61, v95, v59);
  v63 = sub_1A9975E80();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_1A9975E70();
  v67 = v90;
  sub_1A9977450();
  v68 = v109;
  result = v109(v67, 1, v53);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v69 = v89;
  v70 = v67;
  v71 = v53;
  v72 = v53;
  v73 = v83;
  v83(v89, v70, v71);
  v116 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v113 = v92;
  v74 = v92;
  v104 = v66;
  v75 = sub_1A9975E60();
  sub_1A97DCC4C(&v113, v69);
  v75(v112, 0);
  v76 = v91;
  sub_1A9977450();
  result = v68(v76, 1, v72);
  if (result != 1)
  {
    v77 = v84;
    v73(v84, v76, v72);
    v116 = type metadata accessor for _SFXPCBlockContainer();
    v113 = v85;
    v78 = v85;
    v79 = sub_1A9975E60();
    sub_1A97DCC4C(&v113, v77);
    v79(v112, 0);
    v80 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v81 = v96;
    v55 = sub_1A9975E50();

    (*(v86 + 8))(v81, v80);
    (*(v93 + 8))(v100, v62);
    (*(v97 + 8))(v107, v108);
    return v55;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[27] = v26;
  v9[28] = v8;
  v9[25] = a8;
  v9[26] = v25;
  v9[23] = a6;
  v9[24] = a7;
  v9[21] = a4;
  v9[22] = a5;
  v9[19] = a2;
  v9[20] = a3;
  v9[18] = a1;
  v9[29] = *(v26 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[30] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[31] = v11;
  v12 = *(v11 + 64) + 15;
  v9[32] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v9[33] = v13;
  v14 = *(v13 - 8);
  v9[34] = v14;
  v15 = *(v14 + 64) + 15;
  v9[35] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v9[36] = v16;
  v17 = *(v16 - 8);
  v9[37] = v17;
  v18 = *(v17 + 64) + 15;
  v9[38] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0) - 8) + 64) + 15;
  v9[39] = swift_task_alloc();
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  v20 = sub_1A9977460();
  v9[43] = v20;
  v21 = *(v20 - 8);
  v9[44] = v21;
  v22 = *(v21 + 64) + 15;
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v9[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9917E74, 0, 0);
}

uint64_t sub_1A9917E74()
{
  v51 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = sub_1A9975E40();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[49] = sub_1A9975E30();
  sub_1A9977450();
  v7 = *(v1 + 48);
  v0[50] = v7;
  v0[51] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  result = v7(v3, 1, v2);
  if (result == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v9 = v0[48];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];
  v13 = v0[22];
  v14 = *(v11 + 32);
  v0[52] = v14;
  v0[53] = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v9, v12, v10);
  v15 = v0[22];
  v44 = v7;
  if (v13)
  {
    ObjectType = swift_getObjectType();
    v17 = v15;
  }

  else
  {
    v17 = 0;
    ObjectType = 0;
    v48 = 0;
    v49 = 0;
  }

  v18 = v0[48];
  v19 = v0[43];
  v20 = v0[41];
  v47 = v17;
  v50 = ObjectType;
  swift_unknownObjectRetain();
  v21 = sub_1A9975E20();
  sub_1A97DCC4C(&v47, v18);
  v21(v0 + 2, 0);
  sub_1A9977450();
  result = v44(v20, 1, v19);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v22 = v0[23];
  v14(v0[47], v0[41], v0[43]);
  v23 = v0[23];
  if (v22)
  {
    v24 = v0[23];
    v25 = swift_getObjectType();
    v26 = v23;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v48 = 0;
    v49 = 0;
  }

  v27 = v0[47];
  v45 = v0[38];
  v47 = v26;
  v28 = v0[36];
  v29 = v0[29];
  v30 = v0[26];
  v31 = v0[18];
  v42 = v0[19];
  v50 = v25;
  swift_unknownObjectRetain();
  v32 = sub_1A9975E20();
  sub_1A97DCC4C(&v47, v27);
  v32(v0 + 6, 0);
  swift_getAssociatedConformanceWitness();
  sub_1A9975E10();
  tryCast<A>(_:as:description:file:line:)(v0[20], v0[33], 0, 0, 0xD00000000000004FLL, 0x80000001A99E8280, 475, v0[33], v0[35]);
  v43 = (v0[27] + 24);
  v46 = (*v43 + **v43);
  v33 = (*v43)[1];
  v34 = swift_task_alloc();
  v0[54] = v34;
  *v34 = v0;
  v34[1] = sub_1A9918330;
  v35 = v0[38];
  v36 = v0[35];
  v37 = v0[32];
  v38 = v0[27];
  v39 = v0[28];
  v40 = v0[26];
  v41 = v0[21];

  return v46(v37, v35, v36, v41, v40, v38);
}

uint64_t sub_1A9918330()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1A99188B8;
  }

  else
  {
    v3 = sub_1A9918444;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9918444()
{
  v74 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = sub_1A9975E80();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1A9975E70();
  sub_1A9977450();
  result = v2(v4, 1, v3);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v0 + 424);
  v11 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 368);
  v13 = *(v0 + 344);
  v14 = *(v0 + 312);
  v15 = *(v0 + 192);
  (*(v0 + 416))(v12, *(v0 + 320), v13);
  v73 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v72[0] = v15;
  v16 = v15;
  v17 = sub_1A9975E60();
  sub_1A97DCC4C(v72, v12);
  v17(v0 + 80, 0);
  sub_1A9977450();
  result = v11(v14, 1, v13);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v68 = *(v0 + 440);
  v18 = *(v0 + 424);
  v19 = *(v0 + 360);
  v20 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v23 = *(v0 + 200);
  v24 = *(v0 + 208);
  (*(v0 + 416))(v19, *(v0 + 312), *(v0 + 344));
  v73 = type metadata accessor for _SFXPCBlockContainer();
  v72[0] = v23;
  v25 = v23;
  v26 = sub_1A9975E60();
  sub_1A97DCC4C(v72, v19);
  v26(v0 + 112, 0);
  swift_getAssociatedConformanceWitness();
  v27 = sub_1A9975E50();
  v29 = *(v0 + 392);
  if (v68)
  {
    v30 = *(v0 + 296);
    v66 = *(v0 + 304);
    v32 = *(v0 + 280);
    v31 = *(v0 + 288);
    v34 = *(v0 + 264);
    v33 = *(v0 + 272);
    v35 = *(v0 + 248);
    v36 = *(v0 + 256);
    v37 = *(v0 + 240);

    (*(v35 + 8))(v36, v37);
    (*(v33 + 8))(v32, v34);
    (*(v30 + 8))(v66, v31);
    v39 = *(v0 + 376);
    v38 = *(v0 + 384);
    v41 = *(v0 + 360);
    v40 = *(v0 + 368);
    v43 = *(v0 + 328);
    v42 = *(v0 + 336);
    v45 = *(v0 + 312);
    v44 = *(v0 + 320);
    v46 = *(v0 + 304);
    v70 = *(v0 + 280);
    v47 = *(v0 + 256);

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    v59 = *(v0 + 384);
    v60 = *(v0 + 376);
    v61 = *(v0 + 368);
    v62 = *(v0 + 360);
    v63 = *(v0 + 336);
    v64 = *(v0 + 328);
    v65 = *(v0 + 320);
    v67 = *(v0 + 312);
    v49 = *(v0 + 296);
    v58 = *(v0 + 304);
    v50 = *(v0 + 280);
    v51 = *(v0 + 288);
    v53 = *(v0 + 264);
    v52 = *(v0 + 272);
    v54 = *(v0 + 248);
    v55 = *(v0 + 256);
    v56 = *(v0 + 240);
    v69 = v27;
    v71 = v28;

    (*(v54 + 8))(v55, v56);
    (*(v52 + 8))(v50, v53);
    (*(v49 + 8))(v58, v51);

    v57 = *(v0 + 8);

    return v57(v69, v71);
  }
}

uint64_t sub_1A99188B8()
{
  v1 = v0[49];
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v7 = v0[34];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v9 = v0[47];
  v8 = v0[48];
  v11 = v0[45];
  v10 = v0[46];
  v13 = v0[41];
  v12 = v0[42];
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[38];
  v17 = v0[35];
  v20 = v0[32];
  v21 = v0[55];

  v18 = v0[1];

  return v18();
}

uint64_t _SFXPCError.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_domain);
  v2 = *(v0 + OBJC_IVAR____SFXPCError_domain + 8);

  return v1;
}

uint64_t _SFXPCError.internalLocalizedDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_internalLocalizedDescription);
  v2 = *(v0 + OBJC_IVAR____SFXPCError_internalLocalizedDescription + 8);

  return v1;
}

uint64_t _SFXPCError.internalDebugDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_internalDebugDescription);
  v2 = *(v0 + OBJC_IVAR____SFXPCError_internalDebugDescription + 8);

  return v1;
}

uint64_t _SFXPCError.file.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_file);
  v2 = *(v0 + OBJC_IVAR____SFXPCError_file + 8);

  return v1;
}

uint64_t _SFXPCError.line.getter()
{
  result = *(v0 + OBJC_IVAR____SFXPCError_line);
  v2 = *(v0 + OBJC_IVAR____SFXPCError_line + 8);
  return result;
}

uint64_t _SFXPCError.process.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_process);
  v2 = *(v0 + OBJC_IVAR____SFXPCError_process + 8);

  return v1;
}

id _SFXPCError.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FA8, &unk_1A99A8868);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A9996D60;
  v6 = sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
  *(v5 + 32) = v6;
  sub_1A9977010();

  if (!v43)
  {

LABEL_13:
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_14:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v40;
  v7 = v41;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A9996D60;
  v10 = sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
  *(v9 + 32) = v10;
  sub_1A9977010();

  if (!v43)
  {
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_14;
  }

  v38 = v40;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A9996D60;
  *(v11 + 32) = v6;
  sub_1A9977010();

  if (!v43)
  {
LABEL_12:

    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v36 = v41;
  v37 = v40;
  v12 = &v2[OBJC_IVAR____SFXPCError_domain];
  *v12 = v8;
  *(v12 + 1) = v7;
  *&v2[OBJC_IVAR____SFXPCError_errorCode] = v38;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A9996D60;
  *(v13 + 32) = v6;
  sub_1A9977010();

  if (v43)
  {
    v14 = swift_dynamicCast();
    v15 = v40;
    v16 = v41;
    if (!v14)
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v15 = 0;
    v16 = 0;
  }

  v18 = &v2[OBJC_IVAR____SFXPCError_internalLocalizedDescription];
  *v18 = v15;
  *(v18 + 1) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A9996D60;
  *(v19 + 32) = v6;
  sub_1A9977010();

  if (v43)
  {
    v20 = swift_dynamicCast();
    v21 = v40;
    v22 = v41;
    if (!v20)
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v21 = 0;
    v22 = 0;
  }

  v23 = &v2[OBJC_IVAR____SFXPCError_internalDebugDescription];
  *v23 = v21;
  *(v23 + 1) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A9996D60;
  *(v24 + 32) = v6;
  sub_1A9977010();

  if (v43)
  {
    v25 = swift_dynamicCast();
    v26 = v40;
    v27 = v41;
    if (!v25)
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v26 = 0;
    v27 = 0;
  }

  v28 = &v2[OBJC_IVAR____SFXPCError_file];
  *v28 = v26;
  *(v28 + 1) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A9996D60;
  *(v29 + 32) = v10;
  sub_1A9977010();

  if (v43)
  {
    v30 = swift_dynamicCast();
    v31 = v40;
    if (!v30)
    {
      v31 = 0;
    }

    v32 = v30 ^ 1;
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v31 = 0;
    v32 = 1;
  }

  v33 = &v2[OBJC_IVAR____SFXPCError_line];
  *v33 = v31;
  v33[8] = v32;
  v34 = &v2[OBJC_IVAR____SFXPCError_process];
  *v34 = v37;
  *(v34 + 1) = v36;
  v39.receiver = v2;
  v39.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v39, sel_init);

  return v35;
}

Swift::Void __swiftcall _SFXPCError.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____SFXPCError_domain);
  v4 = *(v1 + OBJC_IVAR____SFXPCError_domain + 8);
  v5 = sub_1A99767E0();
  v6 = sub_1A99767E0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____SFXPCError_errorCode);
  v8 = sub_1A99767E0();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  if (*(v1 + OBJC_IVAR____SFXPCError_internalLocalizedDescription + 8))
  {
    v9 = *(v1 + OBJC_IVAR____SFXPCError_internalLocalizedDescription);
    v10 = sub_1A99767E0();
    v11 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  }

  if (*(v1 + OBJC_IVAR____SFXPCError_internalDebugDescription + 8))
  {
    v12 = *(v1 + OBJC_IVAR____SFXPCError_internalDebugDescription);
    v13 = sub_1A99767E0();
    v14 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  }

  if (*(v1 + OBJC_IVAR____SFXPCError_file + 8))
  {
    v15 = *(v1 + OBJC_IVAR____SFXPCError_file);
    v16 = sub_1A99767E0();
    v17 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  }

  if ((*(v1 + OBJC_IVAR____SFXPCError_line + 8) & 1) == 0)
  {
    v18 = *(v1 + OBJC_IVAR____SFXPCError_line);
    v19 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeInteger:v18 forKey:v19];
  }

  v20 = *(v1 + OBJC_IVAR____SFXPCError_process);
  v21 = *(v1 + OBJC_IVAR____SFXPCError_process + 8);
  v22 = sub_1A99767E0();
  v23 = sub_1A99767E0();
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];
}

id _SFXPCError.init(_:)(void *a1)
{
  v2 = sub_1A99195C8(a1);

  return v2;
}

id _SFXPCError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A99195C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v68 = a1;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (swift_dynamicCast())
  {
    v6 = *(&v76 + 1);
    v7 = *v77;
    v8 = *&v77[24];
    v9 = v78;
    v10 = *&v77[8];
    v11 = &v2[OBJC_IVAR____SFXPCError_domain];
    *v11 = v76;
    *(v11 + 1) = v6;
    *&v2[OBJC_IVAR____SFXPCError_errorCode] = v7;
    *&v2[OBJC_IVAR____SFXPCError_internalLocalizedDescription] = v10;
    goto LABEL_16;
  }

  v12 = sub_1A9975F10();
  v13 = [v12 domain];
  v14 = sub_1A9976820();
  v16 = v15;

  v17 = &v2[OBJC_IVAR____SFXPCError_domain];
  *v17 = v14;
  v17[1] = v16;
  v18 = [v12 code];
  *&v2[OBJC_IVAR____SFXPCError_errorCode] = v18;
  swift_getErrorValue();
  v19 = sub_1A99778E0();
  v20 = &v2[OBJC_IVAR____SFXPCError_internalLocalizedDescription];
  *v20 = v19;
  v20[1] = v21;
  v22 = [v12 userInfo];
  v23 = sub_1A9976700();

  v24 = *MEMORY[0x1E696A278];
  v25 = sub_1A9976820();
  if (*(v23 + 16))
  {
    v27 = sub_1A97BCEB8(v25, v26);
    v29 = v28;

    if (v29)
    {
      sub_1A97AF7EC(*(v23 + 56) + 32 * v27, &v76);

      if (swift_dynamicCast())
      {

        v9 = *(&v68 + 1);
        v8 = v68;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v30 = [v12 userInfo];
  v31 = sub_1A9976700();

  if (!*(v31 + 16) || (v32 = sub_1A97BCEB8(0xD000000000000015, 0x80000001A99E5AE0), (v33 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_1A97AF7EC(*(v31 + 56) + 32 * v32, &v76);

  sub_1A9812DE0(0, &unk_1EB3B5FE0, 0x1E695DF30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    *&v76 = a1;
    v40 = a1;
    v8 = sub_1A9976860();
    v9 = v41;

    goto LABEL_16;
  }

  v34 = v68;
  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E5B00);
  *&v68 = [v68 name];
  type metadata accessor for NSExceptionName(0);
  sub_1A9977400();

  MEMORY[0x1AC5895B0](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
  v35 = [v34 reason];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A9976820();
    v39 = v38;
  }

  else
  {
    v39 = 0xE500000000000000;
    v37 = 0x296C696E28;
  }

  MEMORY[0x1AC5895B0](v37, v39);

  v9 = *(&v76 + 1);
  v8 = v76;
LABEL_16:
  v42 = &v2[OBJC_IVAR____SFXPCError_internalDebugDescription];
  *v42 = v8;
  v42[1] = v9;
  v43 = [objc_opt_self() processInfo];
  v44 = [v43 processName];

  v45 = sub_1A9976820();
  v47 = v46;

  v82 = a1;
  v48 = a1;
  if (swift_dynamicCast())
  {
    v70 = *&v77[16];
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    v68 = v76;
    v69 = *v77;
    v49 = *v77;
    v50 = *&v77[16];
    v51 = BYTE7(v80) >> 5;
    if (v51 > 3)
    {
      v60 = *(&v71 + 1);
      v59 = v72;
      if (BYTE7(v80) >> 5 > 5u)
      {
        v52 = *&v77[8];
        if (v51 == 6)
        {
          v61 = v73;
          v62 = *(&v72 + 1);
          v64 = *(&v73 + 1);
          v63 = v74;

          sub_1A991A970(&v68);
          v65 = &v2[OBJC_IVAR____SFXPCError_file];
          *v65 = v60;
          *(v65 + 1) = v59;
          v66 = &v2[OBJC_IVAR____SFXPCError_line];
          *v66 = v62;
          v66[8] = v61 & 1;
          v67 = &v2[OBJC_IVAR____SFXPCError_process];
          *v67 = v64;
          *(v67 + 1) = v63;
          goto LABEL_22;
        }
      }

      else if (v51 == 4)
      {
        v52 = *&v77[16];
        v50 = *(&v70 + 1);
        v49 = *&v77[8];
      }

      else
      {
        v52 = *(&v71 + 1);
        v49 = v71;
        v50 = v72;
      }
    }

    else
    {
      v52 = *&v77[8];
    }

    sub_1A991A970(&v68);
    v53 = &v2[OBJC_IVAR____SFXPCError_file];
    *v53 = v49;
    *(v53 + 1) = v52;
    v54 = &v2[OBJC_IVAR____SFXPCError_line];
    *v54 = v50;
    v54[8] = 0;
  }

  else
  {
    v55 = &v2[OBJC_IVAR____SFXPCError_file];
    *v55 = 0;
    *(v55 + 1) = 0;
    v56 = &v2[OBJC_IVAR____SFXPCError_line];
    *v56 = 0;
    v56[8] = 1;
  }

  v57 = &v2[OBJC_IVAR____SFXPCError_process];
  *v57 = v45;
  v57[1] = v47;
LABEL_22:
  v75.receiver = v2;
  v75.super_class = ObjectType;
  return objc_msgSendSuper2(&v75, sel_init, v68, v69, v70);
}

uint64_t sub_1A9919C30(void *a1)
{
  v2 = v1;
  v45[0] = *MEMORY[0x1E69E7D40] & *v2;
  v4 = type metadata accessor for SFClientIdentity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v45 - v9;
  v11 = a1;
  SFClientAccessLevel.init(xpcConnection:)(v11, &aBlock);
  v12 = aBlock;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
  v14 = v13[12];
  v15 = &v10[v13[16]];
  v16 = &v10[v13[20]];
  v17 = v13[24];
  sub_1A99762B0();
  *&v10[v14] = [v11 processIdentifier];
  *v15 = sub_1A986F808();
  v15[1] = v18;
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v10[v17] = v12;
  swift_storeEnumTagMultiPayload();
  v19 = *(v2 + qword_1EB3B5F48);
  type metadata accessor for SFXPCConnection();
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v11;
  v45[1] = v20 + 16;
  v21 = v11;
  [v21 sf:v19 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v21 setRemoteObjectInterface_];
  v22 = *(v45[0] + 80);
  v23 = type metadata accessor for SFXPCListener.ClientConnection();
  sub_1A9903A68(v10, v8);
  v24 = qword_1EB3B5F20;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = (v2 + qword_1EB3B5F38);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];

  sub_1A967C510(v28);
  v29 = objc_allocWithZone(v23);
  v30 = SFXPCListener.ClientConnection.init(connection:clientIdentity:containerRegistry:contextProvider:)(v20, v8, v25, v28, v27);
  [v21 setExportedInterface_];
  [v21 setExportedObject_];
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = v30;
  v50 = sub_1A991A9DC;
  v51 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1A981D3F8;
  v49 = &block_descriptor_10;
  v32 = _Block_copy(&aBlock);
  v33 = v2;
  v34 = v30;

  [v21 setInvalidationHandler_];
  _Block_release(v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  v50 = sub_1A991A954;
  v51 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1A981D3F8;
  v49 = &block_descriptor_52;
  v36 = _Block_copy(&aBlock);
  v37 = v33;
  v38 = v34;

  [v21 setInterruptionHandler_];
  _Block_release(v36);
  v45[2] = v38;
  swift_beginAccess();
  sub_1A9976B60();
  v39 = v38;
  sub_1A9976B40();
  swift_endAccess();
  swift_beginAccess();
  [*(v20 + 16) activate];
  v40 = &v37[qword_1EB3B5F28];
  swift_beginAccess();
  v41 = *v40;
  if (*v40)
  {
    v42 = *(v40 + 1);
    swift_endAccess();
    v43 = qword_1EB3EAF98;

    v41(&v39[v43]);
    sub_1A967C46C(v41);

    sub_1A9903B30(v10);
  }

  else
  {
    sub_1A9903B30(v10);
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1A991A1C0(uint64_t a1)
{
  v3 = v2;
  v4 = *(*(v1[4] - 8) + 64);
  v28 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v5 = *(type metadata accessor for SFClientIdentity() - 8);
  v6 = (v28 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = v1[3];
  v27 = v1[2];
  v24 = v1[6];
  v25 = v1[5];
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + v7);
  v23 = v1[7];
  v21 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + v10);
  v16 = *(v1 + v11);
  v15 = *(v1 + v11 + 8);
  v17 = *(v1 + v12);
  v18 = *(v1 + v12 + 8);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_1A97B2638;

  return sub_1A9916080(a1, v27, v26, v25, v24, v23, v1 + v28, v1 + v6);
}

uint64_t dispatch thunk of _SFXPCAsyncInvocableProtocol.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1A97B2638;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1A991A630()
{
  result = type metadata accessor for SFClientIdentity();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_1A97E5E54;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1A991A8EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1A991A914()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t SFAirDropClient.Identifier.description.getter()
{
  v1 = type metadata accessor for SFAirDropClient.Identifier();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A991DA0C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x755379636167656CLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1A991DA70(v4);
      result = 0x636972656E6567;
      break;
    case 2:
      return result;
    case 3:
      result = 6909027;
      break;
    case 4:
      result = 0x6E6F6D656164;
      break;
    case 5:
      result = 0x6568536572616873;
      break;
    case 6:
      result = 1886351202;
      break;
    case 7:
      result = 0x7265646E6966;
      break;
    case 8:
      result = 0x74656C6C6177;
      break;
    case 9:
      result = 0x4E706F7244726961;
      break;
    case 10:
      result = 0x55706F7264726961;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x79636167656CLL;
      break;
    case 13:
      result = 1769301092;
      break;
    default:
      v7 = sub_1A99762C0();
      (*(*(v7 - 8) + 8))(v4, v7);
      result = 0x69577265646E6966;
      break;
  }

  return result;
}

unint64_t sub_1A991AC38(char a1)
{
  result = 0x755379636167656CLL;
  switch(a1)
  {
    case 1:
      result = 6909027;
      break;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x6568536572616873;
      break;
    case 4:
      result = 1886351202;
      break;
    case 5:
      result = 0x7265646E6966;
      break;
    case 6:
      result = 0x74656C6C6177;
      break;
    case 7:
      result = 0x4E706F7244726961;
      break;
    case 8:
      result = 0x69577265646E6966;
      break;
    case 9:
      result = 0x55706F7264726961;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x636972656E6567;
      break;
    case 12:
      result = 0x79636167656CLL;
      break;
    case 13:
      result = 1230324804;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A991ADB0(uint64_t a1)
{
  v2 = sub_1A991DC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991ADEC(uint64_t a1)
{
  v2 = sub_1A991DC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AE28(uint64_t a1)
{
  v2 = sub_1A991DC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AE64(uint64_t a1)
{
  v2 = sub_1A991DC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AEA0(uint64_t a1)
{
  v2 = sub_1A991DD18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AEDC(uint64_t a1)
{
  v2 = sub_1A991DD18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AF18(uint64_t a1)
{
  v2 = sub_1A991DE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AF54(uint64_t a1)
{
  v2 = sub_1A991DE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A991EA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A991AFC0(uint64_t a1)
{
  v2 = sub_1A991DACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AFFC(uint64_t a1)
{
  v2 = sub_1A991DACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B038(uint64_t a1)
{
  v2 = sub_1A991DB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B074(uint64_t a1)
{
  v2 = sub_1A991DB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B0B0(uint64_t a1)
{
  v2 = sub_1A991DDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B0EC(uint64_t a1)
{
  v2 = sub_1A991DDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B128()
{
  if (*v0)
  {
    result = 0x797469726F697270;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1A991B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A991B238(uint64_t a1)
{
  v2 = sub_1A991DBC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B274(uint64_t a1)
{
  v2 = sub_1A991DBC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B2B0(uint64_t a1)
{
  v2 = sub_1A991DB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B2EC(uint64_t a1)
{
  v2 = sub_1A991DB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B328(uint64_t a1)
{
  v2 = sub_1A991DE68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B364(uint64_t a1)
{
  v2 = sub_1A991DE68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B3A0(uint64_t a1)
{
  v2 = sub_1A991DD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B3DC(uint64_t a1)
{
  v2 = sub_1A991DD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B418(uint64_t a1)
{
  v2 = sub_1A991DCC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B454(uint64_t a1)
{
  v2 = sub_1A991DCC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FF0, &qword_1A99A89E0);
  v91 = *(v2 - 8);
  v92 = v2;
  v3 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v90 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FF8, &qword_1A99A89E8);
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v67 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6000, &qword_1A99A89F0);
  v68 = *(v84 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v97 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6008, &qword_1A99A89F8);
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v67 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6010, &qword_1A99A8A00);
  v81 = *(v82 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v67 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6018, &qword_1A99A8A08);
  v78 = *(v79 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6020, &qword_1A99A8A10);
  v75 = *(v76 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v67 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6028, &qword_1A99A8A18);
  v72 = *(v73 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v96 = &v67 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6030, &qword_1A99A8A20);
  v70 = *(v71 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v95 = &v67 - v22;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6038, &qword_1A99A8A28);
  v94 = *(v69 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v25 = &v67 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6040, &qword_1A99A8A30);
  v93 = *(v26 - 8);
  v27 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v67 - v28;
  v30 = type metadata accessor for SFAirDropClient.Identifier();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6048, &qword_1A99A8A38);
  v35 = *(v34 - 8);
  v100 = v34;
  v101 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v67 - v37;
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A991DACC();
  v99 = v38;
  sub_1A9977AA0();
  sub_1A991DA0C(v98, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v107 = 4;
          sub_1A991DD18();
          v65 = v74;
          v43 = v99;
          v42 = v100;
          sub_1A9977640();
          v44 = *(v75 + 8);
          v45 = v65;
          v46 = &v116;
          goto LABEL_26;
        case 8:
          v108 = 6;
          sub_1A991DCC4();
          v41 = v77;
          v43 = v99;
          v42 = v100;
          sub_1A9977640();
          v44 = *(v78 + 8);
          v45 = v41;
          v46 = &v117;
LABEL_26:
          v53 = *(v46 - 32);
LABEL_30:
          v44(v45, v53);
          return (*(v101 + 8))(v43, v42);
        case 10:
          v109 = 9;
          sub_1A991DC70();
          v66 = v80;
          v43 = v99;
          v42 = v100;
          sub_1A9977640();
          v44 = *(v81 + 8);
          v45 = v66;
          v46 = &v118;
          goto LABEL_26;
      }

      goto LABEL_32;
    }

    switch(EnumCaseMultiPayload)
    {
      case 11:
        v110 = 10;
        sub_1A991DC1C();
        v52 = v83;
        v43 = v99;
        v42 = v100;
        sub_1A9977640();
        v54 = v85;
        v53 = v86;
        goto LABEL_29;
      case 12:
        v114 = 12;
        sub_1A991DB74();
        v52 = v87;
        v43 = v99;
        v42 = v100;
        sub_1A9977640();
        v54 = v88;
        v53 = v89;
LABEL_29:
        v44 = *(v54 + 8);
        v45 = v52;
        goto LABEL_30;
      case 13:
        v115 = 13;
        sub_1A991DB20();
        v52 = v90;
        v43 = v99;
        v42 = v100;
        sub_1A9977640();
        v54 = v91;
        v53 = v92;
        goto LABEL_29;
    }

LABEL_32:
    result = sub_1A99777D0();
    __break(1u);
    return result;
  }

  v48 = v93;
  v47 = v94;
  v98 = v26;
  v50 = v95;
  v49 = v96;
  v51 = v97;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v104 = 1;
      sub_1A991DE14();
      v63 = v99;
      v64 = v100;
      sub_1A9977640();
      (*(v47 + 8))(v25, v69);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v105 = 2;
        sub_1A991DDC0();
        v43 = v99;
        v42 = v100;
        sub_1A9977640();
        (*(v70 + 8))(v50, v71);
        return (*(v101 + 8))(v43, v42);
      }

      v106 = 3;
      sub_1A991DD6C();
      v63 = v99;
      v64 = v100;
      sub_1A9977640();
      (*(v72 + 8))(v49, v73);
    }

    return (*(v101 + 8))(v63, v64);
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_32;
    }

    v103 = 0;
    sub_1A991DE68();
    v43 = v99;
    v42 = v100;
    sub_1A9977640();
    (*(v48 + 8))(v29, v98);
    return (*(v101 + 8))(v43, v42);
  }

  v55 = *v33;
  v56 = v33[1];
  v57 = v33[2];
  v113 = 11;
  sub_1A991DBC8();
  v59 = v99;
  v58 = v100;
  sub_1A9977640();
  v112 = 0;
  v60 = v84;
  v61 = v102;
  sub_1A9977690();

  if (!v61)
  {
    v111 = 1;
    sub_1A99776C0();
  }

  (*(v68 + 8))(v51, v60);
  return (*(v101 + 8))(v59, v58);
}

uint64_t SFAirDropClient.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60B0, &qword_1A99A8A40);
  v110 = *(v124 - 8);
  v3 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v119 = &v89 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60B8, &qword_1A99A8A48);
  v108 = *(v109 - 8);
  v5 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v118 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60C0, &qword_1A99A8A50);
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v89 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60C8, &qword_1A99A8A58);
  v106 = *(v107 - 8);
  v10 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v117 = &v89 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60D0, &qword_1A99A8A60);
  v104 = *(v105 - 8);
  v12 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v116 = &v89 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60D8, &qword_1A99A8A68);
  v103 = *(v102 - 8);
  v14 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v115 = &v89 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60E0, &qword_1A99A8A70);
  v100 = *(v101 - 8);
  v16 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v122 = &v89 - v17;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60E8, &qword_1A99A8A78);
  v98 = *(v99 - 8);
  v18 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v114 = &v89 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60F0, &qword_1A99A8A80);
  v96 = *(v97 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v113 = &v89 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60F8, &qword_1A99A8A88);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v121 = &v89 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6100, &qword_1A99A8A90);
  v92 = *(v93 - 8);
  v24 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v26 = &v89 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6108, &unk_1A99A8A98);
  v125 = *(v27 - 8);
  v28 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v89 - v29;
  v31 = type metadata accessor for SFAirDropClient.Identifier();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v89 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v126 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1A991DACC();
  v40 = v127;
  sub_1A9977A70();
  v127 = v40;
  if (v40)
  {
LABEL_8:
    v57 = v126;
    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  v90 = v26;
  v89 = v35;
  v41 = v121;
  v42 = v122;
  v44 = v123;
  v43 = v124;
  v91 = v31;
  v45 = sub_1A9977620();
  v46 = (2 * *(v45 + 16)) | 1;
  v128 = v45;
  v129 = v45 + 32;
  v130 = 0;
  v131 = v46;
  v47 = sub_1A97B2980();
  if (v130 != v131 >> 1)
  {
LABEL_5:
    v52 = sub_1A9977300();
    v53 = swift_allocError();
    v55 = v54;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v55 = v91;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v52 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v52);
    v127 = v53;
LABEL_6:
    swift_willThrow();
LABEL_7:
    (*(v125 + 8))(v30, v27);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v47)
  {
    case 0:
      v132 = 0;
      sub_1A991DE68();
      v72 = v90;
      v73 = v127;
      sub_1A9977530();
      v127 = v73;
      if (v73)
      {
        goto LABEL_7;
      }

      (*(v92 + 8))(v72, v93);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 1:
      v132 = 1;
      sub_1A991DE14();
      v74 = v127;
      sub_1A9977530();
      v127 = v74;
      if (v74)
      {
        goto LABEL_7;
      }

      (*(v94 + 8))(v41, v95);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 2:
      v132 = 2;
      sub_1A991DDC0();
      v68 = v113;
      v69 = v127;
      sub_1A9977530();
      v127 = v69;
      if (v69)
      {
        goto LABEL_7;
      }

      (*(v96 + 8))(v68, v97);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 3:
      v132 = 3;
      sub_1A991DD6C();
      v70 = v114;
      v71 = v127;
      sub_1A9977530();
      v127 = v71;
      if (v71)
      {
        goto LABEL_7;
      }

      (*(v98 + 8))(v70, v99);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 4:
      v132 = 4;
      sub_1A991DD18();
      v65 = v127;
      sub_1A9977530();
      v127 = v65;
      if (v65)
      {
        goto LABEL_7;
      }

      (*(v100 + 8))(v42, v101);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 5:
    case 7:
    case 8:
      v48 = sub_1A9977300();
      v49 = swift_allocError();
      v51 = v50;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v48 - 8) + 104))(v51, *MEMORY[0x1E69E6B00], v48);
      v127 = v49;
      goto LABEL_6;
    case 6:
      v132 = 6;
      sub_1A991DCC4();
      v80 = v115;
      v81 = v127;
      sub_1A9977530();
      v127 = v81;
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v103 + 8))(v80, v102);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 9:
      v132 = 9;
      sub_1A991DC70();
      v66 = v116;
      v67 = v127;
      sub_1A9977530();
      v127 = v67;
      if (v67)
      {
        goto LABEL_7;
      }

      (*(v104 + 8))(v66, v105);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 10:
      v132 = 10;
      sub_1A991DC1C();
      v78 = v117;
      v79 = v127;
      sub_1A9977530();
      v127 = v79;
      if (v79)
      {
        goto LABEL_7;
      }

      (*(v106 + 8))(v78, v107);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 11:
      v132 = 11;
      sub_1A991DBC8();
      v59 = v127;
      sub_1A9977530();
      v127 = v59;
      if (v59)
      {
        goto LABEL_7;
      }

      v132 = 0;
      v60 = v112;
      v61 = sub_1A99775A0();
      v62 = v125;
      v127 = 0;
      v124 = v61;
      v83 = v44;
      v85 = v84;
      v132 = 1;
      v86 = sub_1A99775D0();
      v127 = 0;
      v87 = v86;
      (*(v111 + 8))(v83, v60);
      (*(v62 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v88 = v89;
      *v89 = v124;
      *(v88 + 8) = v85;
      *(v88 + 16) = v87;
      swift_storeEnumTagMultiPayload();
      sub_1A991DEBC(v88, v37);
      goto LABEL_33;
    case 12:
      v132 = 12;
      sub_1A991DB74();
      v63 = v118;
      v64 = v127;
      sub_1A9977530();
      v127 = v64;
      if (v64)
      {
        goto LABEL_7;
      }

      (*(v108 + 8))(v63, v109);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 13:
      v75 = v43;
      v132 = 13;
      sub_1A991DB20();
      v76 = v119;
      v77 = v127;
      sub_1A9977530();
      v127 = v77;
      if (v77)
      {
        goto LABEL_7;
      }

      (*(v110 + 8))(v76, v75);
      (*(v125 + 8))(v30, v27);
      swift_unknownObjectRelease();
LABEL_32:
      swift_storeEnumTagMultiPayload();
LABEL_33:
      v82 = v126;
      sub_1A991DEBC(v37, v120);
      v57 = v82;
      break;
    default:
      goto LABEL_5;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v57);
}

BOOL _s7Sharing15SFAirDropClientC10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61E8, &unk_1A99A9560);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v27 - v14;
  v16 = (&v27 + *(v13 + 56) - v14);
  sub_1A991DA0C(a1, &v27 - v14);
  sub_1A991DA0C(a2, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_18;
    case 2u:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_36;
      }

LABEL_34:
      sub_1A991DA70(v15);
      return 1;
    default:
      sub_1A991DA0C(v15, v10);
      if (swift_getEnumCaseMultiPayload())
      {
        v17 = sub_1A99762C0();
        (*(*(v17 - 8) + 8))(v10, v17);
LABEL_36:
        sub_1A991EEC4(v15);
        return 0;
      }

LABEL_17:
      sub_1A9977810();
      __break(1u);
LABEL_18:
      sub_1A991DA0C(v15, v8);
      v19 = *v8;
      v18 = v8[1];
      v20 = v8[2];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_36;
      }

      v21 = v16[2];
      if (v19 == *v16 && v18 == v16[1])
      {
        v26 = v16[1];
      }

      else
      {
        v23 = v16[1];
        v24 = sub_1A99777E0();

        if ((v24 & 1) == 0)
        {
          sub_1A991DA70(v15);
          return 0;
        }
      }

      sub_1A991DA70(v15);
      return v20 == v21;
  }
}

uint64_t _s7Sharing15SFAirDropClientC10IdentifierO1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61E8, &unk_1A99A9560);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v34 - v17;
  v19 = (&v34 + *(v16 + 56) - v17);
  sub_1A991DA0C(a1, &v34 - v17);
  sub_1A991DA0C(a2, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A991DA0C(v18, v13);
    v21 = *v13;
    v20 = v13[1];
    v22 = v13[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v19[2];
      if (v22 == v23)
      {
        if (v21 == *v19 && v20 == v19[1])
        {
          v26 = 0;
        }

        else
        {
          v25 = v19[1];
          v26 = sub_1A99777E0();
        }
      }

      else
      {
        v28 = v19[1];

        v26 = v22 < v23;
      }

      sub_1A991DA70(v18);
      return v26 & 1;
    }
  }

  sub_1A991DA0C(a1, v11);
  v27 = 100;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A991DA70(v11);
      v27 = 600;
      break;
    case 2u:
      break;
    case 3u:
      v27 = 200;
      break;
    case 4u:
      v27 = 250;
      break;
    case 5u:
      v27 = 500;
      break;
    case 6u:
      v27 = 375;
      break;
    case 7u:
      v27 = 400;
      break;
    case 8u:
      v27 = 450;
      break;
    case 9u:
    case 0xAu:
      v27 = 300;
      break;
    case 0xBu:
      v27 = 350;
      break;
    case 0xCu:
      v27 = 700;
      break;
    case 0xDu:
      v27 = 750;
      break;
    default:
      v29 = sub_1A99762C0();
      (*(*(v29 - 8) + 8))(v11, v29);
      v27 = 425;
      break;
  }

  sub_1A991DA0C(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = 100;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1A991DA70(v8);
      v31 = 600;
      break;
    case 2:
      break;
    case 3:
      v31 = 200;
      break;
    case 4:
      v31 = 250;
      break;
    case 5:
      v31 = 500;
      break;
    case 6:
      v31 = 375;
      break;
    case 7:
      v31 = 400;
      break;
    case 8:
      v31 = 450;
      break;
    case 9:
    case 10:
      v31 = 300;
      break;
    case 11:
      v31 = 350;
      break;
    case 12:
      v31 = 700;
      break;
    case 13:
      v31 = 750;
      break;
    default:
      v32 = sub_1A99762C0();
      (*(*(v32 - 8) + 8))(v8, v32);
      v31 = 425;
      break;
  }

  v26 = v27 < v31;
  sub_1A991EEC4(v18);
  return v26 & 1;
}

uint64_t type metadata accessor for SFAirDropClient.Identifier()
{
  result = qword_1EB3AC650;
  if (!qword_1EB3AC650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A991DA0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A991DA70(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropClient.Identifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A991DACC()
{
  result = qword_1EB3B6050;
  if (!qword_1EB3B6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6050);
  }

  return result;
}

unint64_t sub_1A991DB20()
{
  result = qword_1EB3B6058;
  if (!qword_1EB3B6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6058);
  }

  return result;
}

unint64_t sub_1A991DB74()
{
  result = qword_1EB3B6060;
  if (!qword_1EB3B6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6060);
  }

  return result;
}

unint64_t sub_1A991DBC8()
{
  result = qword_1EB3B6068;
  if (!qword_1EB3B6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6068);
  }

  return result;
}

unint64_t sub_1A991DC1C()
{
  result = qword_1EB3B6070;
  if (!qword_1EB3B6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6070);
  }

  return result;
}

unint64_t sub_1A991DC70()
{
  result = qword_1EB3B6078;
  if (!qword_1EB3B6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6078);
  }

  return result;
}

unint64_t sub_1A991DCC4()
{
  result = qword_1EB3B6080;
  if (!qword_1EB3B6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6080);
  }

  return result;
}

unint64_t sub_1A991DD18()
{
  result = qword_1EB3B6088;
  if (!qword_1EB3B6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6088);
  }

  return result;
}

unint64_t sub_1A991DD6C()
{
  result = qword_1EB3B6090;
  if (!qword_1EB3B6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6090);
  }

  return result;
}

unint64_t sub_1A991DDC0()
{
  result = qword_1EB3B6098;
  if (!qword_1EB3B6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6098);
  }

  return result;
}

unint64_t sub_1A991DE14()
{
  result = qword_1EB3B60A0;
  if (!qword_1EB3B60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B60A0);
  }

  return result;
}

unint64_t sub_1A991DE68()
{
  result = qword_1EB3B60A8;
  if (!qword_1EB3B60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B60A8);
  }

  return result;
}

uint64_t sub_1A991DEBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A991DF24()
{
  result = qword_1EB3B6110;
  if (!qword_1EB3B6110)
  {
    type metadata accessor for SFAirDropClient.Identifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6110);
  }

  return result;
}

void sub_1A991DF7C()
{
  sub_1A991DFF0();
  if (v0 <= 0x3F)
  {
    sub_1A991E038();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A991DFF0()
{
  if (!qword_1EB3AC898)
  {
    v0 = sub_1A99762C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AC898);
    }
  }
}

void sub_1A991E038()
{
  if (!qword_1EB3AB760)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AB760);
    }
  }
}

unint64_t sub_1A991E160()
{
  result = qword_1EB3B6118;
  if (!qword_1EB3B6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6118);
  }

  return result;
}

unint64_t sub_1A991E1B8()
{
  result = qword_1EB3B6120;
  if (!qword_1EB3B6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6120);
  }

  return result;
}

unint64_t sub_1A991E210()
{
  result = qword_1EB3B6128;
  if (!qword_1EB3B6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6128);
  }

  return result;
}

unint64_t sub_1A991E268()
{
  result = qword_1EB3B6130;
  if (!qword_1EB3B6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6130);
  }

  return result;
}

unint64_t sub_1A991E2C0()
{
  result = qword_1EB3B6138;
  if (!qword_1EB3B6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6138);
  }

  return result;
}

unint64_t sub_1A991E318()
{
  result = qword_1EB3B6140;
  if (!qword_1EB3B6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6140);
  }

  return result;
}

unint64_t sub_1A991E370()
{
  result = qword_1EB3B6148;
  if (!qword_1EB3B6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6148);
  }

  return result;
}

unint64_t sub_1A991E3C8()
{
  result = qword_1EB3B6150;
  if (!qword_1EB3B6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6150);
  }

  return result;
}

unint64_t sub_1A991E420()
{
  result = qword_1EB3B6158;
  if (!qword_1EB3B6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6158);
  }

  return result;
}

unint64_t sub_1A991E478()
{
  result = qword_1EB3B6160;
  if (!qword_1EB3B6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6160);
  }

  return result;
}

unint64_t sub_1A991E4D0()
{
  result = qword_1EB3B6168;
  if (!qword_1EB3B6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6168);
  }

  return result;
}

unint64_t sub_1A991E528()
{
  result = qword_1EB3B6170;
  if (!qword_1EB3B6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6170);
  }

  return result;
}

unint64_t sub_1A991E580()
{
  result = qword_1EB3B6178;
  if (!qword_1EB3B6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6178);
  }

  return result;
}

unint64_t sub_1A991E5D8()
{
  result = qword_1EB3B6180;
  if (!qword_1EB3B6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6180);
  }

  return result;
}

unint64_t sub_1A991E630()
{
  result = qword_1EB3B6188;
  if (!qword_1EB3B6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6188);
  }

  return result;
}

unint64_t sub_1A991E688()
{
  result = qword_1EB3B6190;
  if (!qword_1EB3B6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6190);
  }

  return result;
}

unint64_t sub_1A991E6E0()
{
  result = qword_1EB3B6198;
  if (!qword_1EB3B6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6198);
  }

  return result;
}

unint64_t sub_1A991E738()
{
  result = qword_1EB3B61A0;
  if (!qword_1EB3B61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61A0);
  }

  return result;
}

unint64_t sub_1A991E790()
{
  result = qword_1EB3B61A8;
  if (!qword_1EB3B61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61A8);
  }

  return result;
}