uint64_t sub_261C67444@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v80 = a2;
  v91 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v90 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v89 = &v67[-v8];
  v82 = sub_261CFD674();
  v92 = *(v82 - 8);
  v9 = *(v92 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v67[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_261CFFA44();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_261CFD6A4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v75 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for ListEntity();
  v85 = *(v19 - 8);
  v86 = v19;
  v20 = *(v85 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v67[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v67[-v25];
  v76 = &v67[-v25];
  v27 = type metadata accessor for SectionEntityID();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v67[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = [a1 objectID];
  v32 = [v31 entityName];
  v33 = sub_261CFFA74();
  v35 = v34;

  v36 = [v31 uuid];
  v37 = type metadata accessor for AppEntityID();
  v38 = v30 + *(v37 + 20);
  sub_261CFD834();

  v39 = *(v37 + 24);
  v40 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v40 - 8) + 56))(v30 + v39, 1, 1, v40);
  v81 = v30;
  *v30 = v33;
  v30[1] = v35;
  swift_storeEnumTagMultiPayload();
  v41 = [a1 displayName];
  v42 = sub_261CFFA74();
  v83 = v43;
  v84 = v42;

  v44 = [a1 smartList];
  v45 = v80;
  v46 = v80;
  sub_261B750A0(v44, v45, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v80 = sub_261CFCB24();
  v47 = v91;
  *v91 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v72 = sub_261C6F064(&qword_280D227A0, type metadata accessor for ListEntity);
  v78 = sub_261CFCA64();
  v47[1] = v78;
  v48 = type metadata accessor for SectionEntity();
  v73 = *(v48 + 28);
  v69 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v49 = *MEMORY[0x277CC9110];
  v50 = v92 + 104;
  v70 = *(v92 + 104);
  v51 = v79;
  v52 = v82;
  v70(v79, v49, v82);
  v92 = v50;
  v53 = v75;
  sub_261CFD6B4();
  v74 = MEMORY[0x2667199E0](v53, &type metadata for UpdateSectionDisplayNameAppIntent);
  *(v47 + v73) = v74;
  v71 = *(v48 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v54 = v49;
  v55 = v49;
  v68 = v49;
  v56 = v52;
  v57 = v70;
  v70(v51, v54, v52);
  sub_261CFD6B4();
  v73 = MEMORY[0x2667199F0](v53, &type metadata for UpdateSectionIsCollapsedAppIntent);
  v58 = v91;
  *(v91 + v71) = v73;
  v59 = v69;
  v71 = *(v69 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v57(v51, v55, v56);
  sub_261CFD6C4();
  v72 = sub_261CFCA54();
  *(v58 + v71) = v72;
  v71 = *(v59 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v57(v51, v68, v56);
  sub_261CFD6C4();
  sub_261C6F064(&qword_280D22358, type metadata accessor for ReminderEntity);
  *(v58 + v71) = sub_261CFCA54();
  v60 = v81;
  sub_261C6F0D4(v81, v58 + *(v59 + 24), type metadata accessor for SectionEntityID);
  v61 = v76;
  v62 = v89;
  sub_261C6F0D4(v76, v89, type metadata accessor for ListEntity);
  (*(v85 + 56))(v62, 0, 1, v86);
  sub_261AFB668(v62, v90, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v62, &unk_27FEDE0C0, &unk_261D02500);
  v63 = v84;
  v93 = v84;
  v94 = v83;
  v64 = v83;
  sub_261CFD104();
  sub_261CFD2E4();
  LOBYTE(v93) = 0;
  sub_261CFD2E4();
  v93 = v63;
  v94 = v64;
  sub_261CFCA14();
  v65 = v87;
  sub_261C6F0D4(v61, v87, type metadata accessor for ListEntity);
  sub_261C6F0D4(v65, v88, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261C6F13C(v65, type metadata accessor for ListEntity);
  sub_261C6F13C(v61, type metadata accessor for ListEntity);
  return sub_261C6F13C(v60, type metadata accessor for SectionEntityID);
}

uint64_t sub_261C68028()
{
  v83 = v0;
  if (qword_27FED9C28 != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDD890);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v82[0] = v8;
    *v7 = 136446210;
    v9 = MEMORY[0x26671C340](v6, v5);
    v11 = sub_261B879C8(v9, v10, v82);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_261AE2000, v3, v4, "[SectionEntitySectionQueryPerforming] Query sections with identifiers %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v12 = v0[2];
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v0[14];
    v16 = v0[10];
    v82[0] = MEMORY[0x277D84F90];
    sub_261B3A190(0, v13, 0);
    v14 = v82[0];
    v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    do
    {
      v19 = v0[17];
      v21 = v0[11];
      v20 = v0[12];
      sub_261C6F0D4(v17, v20, type metadata accessor for SectionEntityID);
      sub_261C6FCC8(v20, v21, type metadata accessor for SectionEntityID);
      sub_261C6FCC8(v21, v19, type metadata accessor for AppEntityID);
      v82[0] = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_261B3A190(v22 > 1, v23 + 1, 1);
        v14 = v82[0];
      }

      v24 = v0[17];
      *(v14 + 16) = v23 + 1;
      sub_261C6FCC8(v24, v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, type metadata accessor for AppEntityID);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  v25 = *(v14 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = v0[14];
    v75 = v0[13];
    v78 = v0[16];
    v82[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v28 = v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v29 = *(v27 + 72);
    do
    {
      v30 = v0[16];
      sub_261C6F0D4(v28, v30, type metadata accessor for AppEntityID);
      v31 = *(v75 + 20);
      v32 = *v30;
      v33 = *(v78 + 8);
      v34 = objc_allocWithZone(MEMORY[0x277D44700]);
      v35 = sub_261CFD814();
      v36 = sub_261CFFA54();
      [v34 initWithUUID:v35 entityName:v36];

      sub_261C6F13C(v30, type metadata accessor for AppEntityID);
      sub_261D00374();
      v37 = *(v82[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v28 += v29;
      --v25;
    }

    while (v25);
    v26 = v82[0];
  }

  v38 = sub_261B3B11C(v26);

  v40 = v38 + 64;
  v39 = *(v38 + 64);
  v79 = v38;
  v81 = MEMORY[0x277D84F98];
  v41 = -1;
  v42 = -1 << *(v38 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & v39;
  v44 = (63 - v42) >> 6;
  sub_261CFD104();
  v45 = 0;
  if (v43)
  {
    while (1)
    {
      v46 = v45;
LABEL_20:
      v47 = v0[3];
      v48 = __clz(__rbit64(v43)) | (v46 << 6);
      v49 = (*(v79 + 48) + 16 * v48);
      v50 = v49[1];
      v51 = *(*(v79 + 56) + 8 * v48);
      v82[0] = *v49;
      v82[1] = v50;
      v82[2] = v51;
      sub_261CFD104();
      sub_261CFD104();
      sub_261C68878(&v81, v82, v47);

      v43 &= v43 - 1;
      v45 = v46;
      if (!v43)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
LABEL_17:
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v46 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v46);
    ++v45;
    if (v43)
    {
      goto LABEL_20;
    }
  }

  v76 = *(v14 + 16);
  v80 = v81;
  if (v76)
  {
    v52 = 0;
    v53 = v0[14];
    v74 = v0[6];
    v54 = MEMORY[0x277D84F90];
    while (v52 < *(v14 + 16))
    {
      v55 = v0[15];
      v57 = v0[3];
      v56 = v0[4];
      sub_261C6F0D4(v14 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v52, v55, type metadata accessor for AppEntityID);
      sub_261C69378(v55, v80, v57, v56);
      v59 = v0[4];
      v58 = v0[5];
      sub_261C6F13C(v0[15], type metadata accessor for AppEntityID);
      if ((*(v74 + 48))(v59, 1, v58) == 1)
      {
        sub_261AE6A40(v0[4], &qword_27FEDA1E0, &unk_261D02300);
      }

      else
      {
        v61 = v0[7];
        v60 = v0[8];
        sub_261C6FCC8(v0[4], v60, type metadata accessor for SectionEntity);
        sub_261C6FCC8(v60, v61, type metadata accessor for SectionEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_261B41C94(0, v54[2] + 1, 1, v54);
        }

        v63 = v54[2];
        v62 = v54[3];
        if (v63 >= v62 >> 1)
        {
          v54 = sub_261B41C94(v62 > 1, v63 + 1, 1, v54);
        }

        v64 = v0[7];
        v54[2] = v63 + 1;
        sub_261C6FCC8(v64, v54 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v63, type metadata accessor for SectionEntity);
      }

      if (v76 == ++v52)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_38;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_34:
  v66 = v0[16];
  v65 = v0[17];
  v67 = v0[15];
  v69 = v0[11];
  v68 = v0[12];
  v70 = v0[8];
  v77 = v0[7];
  v71 = v0[4];

  v72 = v0[1];

  return v72(v54);
}

uint64_t sub_261C68878(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v96[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
  v7 = [swift_getObjCClassFromMetadata() cdEntityName];
  v8 = sub_261CFFA74();
  v10 = v9;

  if (v8 == v4 && v10 == v5)
  {

LABEL_10:
    v17 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v18 = sub_261CFFC54();
    v96[0] = 0;
    v19 = [v17 fetchListSectionsWithObjectIDs:v18 error:v96];

    v20 = v96[0];
    if (v19)
    {
      sub_261B3B918();
      v21 = sub_261CFF8F4();
      v22 = v20;

      sub_261B35108(v21);
LABEL_12:

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD9F0, &qword_261D03110);
      sub_261CFF904();

LABEL_31:
      v51 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_29;
  }

  v12 = sub_261D00614();

  if (v12)
  {
    goto LABEL_10;
  }

  sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
  v13 = [swift_getObjCClassFromMetadata() cdEntityName];
  v14 = sub_261CFFA74();
  v16 = v15;

  if (v14 == v4 && v16 == v5)
  {

    goto LABEL_15;
  }

  v24 = sub_261D00614();

  if (v24)
  {
LABEL_15:
    v25 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v26 = sub_261CFFC54();
    v96[0] = 0;
    v27 = [v25 fetchSmartListSectionsWithObjectIDs:v26 error:v96];

    v20 = v96[0];
    if (v27)
    {
      sub_261B3B918();
      v28 = sub_261CFF8F4();
      v29 = v20;

      sub_261B3511C(v28);
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  sub_261B05020(0, &qword_27FEDA5F0, 0x277D448B8);
  v30 = [swift_getObjCClassFromMetadata() cdEntityName];
  v31 = sub_261CFFA74();
  v33 = v32;

  if (v31 == v4 && v33 == v5)
  {

    goto LABEL_21;
  }

  v34 = sub_261D00614();

  if (v34)
  {
LABEL_21:
    v35 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v36 = sub_261CFFC54();
    v96[0] = 0;
    v37 = [v35 fetchTemplateSectionsWithObjectIDs:v36 error:v96];

    v20 = v96[0];
    if (v37)
    {
      sub_261B3B918();
      v38 = sub_261CFF8F4();
      v39 = v20;

      sub_261B35130(v38);
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v40 = [objc_opt_self() cdEntityName];
  v41 = sub_261CFFA74();
  v43 = v42;

  if (v41 == v4 && v43 == v5)
  {

    goto LABEL_27;
  }

  v44 = sub_261D00614();

  if (v44)
  {
LABEL_27:
    v45 = *(a3 + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v46 = sub_261CFFC54();
    v96[0] = 0;
    v47 = [v45 fetchListsWithObjectIDs:v46 error:v96];

    v20 = v96[0];
    if (v47)
    {
      sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
      sub_261B3B918();
      v48 = sub_261CFF8F4();
      v49 = v20;

      sub_261B34B90(v48);
      goto LABEL_12;
    }

LABEL_29:
    v50 = v20;
    sub_261CFD654();

LABEL_30:
    result = swift_willThrow();
    goto LABEL_31;
  }

  v52 = [objc_opt_self() cdEntityName];
  v53 = sub_261CFFA74();
  v55 = v54;

  if (v53 == v4 && v55 == v5)
  {
  }

  else
  {
    v56 = sub_261D00614();

    if ((v56 & 1) == 0)
    {
      v73 = [objc_opt_self() cdEntityName];
      v74 = sub_261CFFA74();
      v76 = v75;

      if (v74 == v4 && v76 == v5)
      {
      }

      else
      {
        v77 = sub_261D00614();

        if ((v77 & 1) == 0)
        {
          if (qword_27FED9C28 != -1)
          {
            swift_once();
          }

          v88 = sub_261CFF7A4();
          __swift_project_value_buffer(v88, qword_27FEDD890);
          sub_261CFD104();
          v89 = sub_261CFF784();
          v90 = sub_261CFFE74();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v96[0] = v92;
            *v91 = 136446210;
            *(v91 + 4) = sub_261B879C8(v4, v5, v96);
            _os_log_impl(&dword_261AE2000, v89, v90, "[SectionEntitySectionQueryPerforming] Unknown section entity name: %{public}s", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v92);
            MEMORY[0x26671D560](v92, -1, -1);
            MEMORY[0x26671D560](v91, -1, -1);
          }

          sub_261C3AB78(MEMORY[0x277D84F90]);
          goto LABEL_13;
        }
      }

      if (qword_27FED9C28 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_74;
    }
  }

  v57 = *(a3 + 16);
  v96[0] = 0;
  v58 = [v57 fetchCustomSmartListsWithError_];
  v59 = v96[0];
  if (!v58)
  {
    v72 = v96[0];
    sub_261CFD654();

    goto LABEL_30;
  }

  v60 = v58;
  sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
  v6 = sub_261CFFC64();
  v61 = v59;

  if (!(v6 >> 62))
  {
    v62 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_39;
    }

LABEL_67:

    v64 = MEMORY[0x277D84F90];
    goto LABEL_68;
  }

  v62 = sub_261D00274();
  if (!v62)
  {
    goto LABEL_67;
  }

LABEL_39:
  v96[0] = MEMORY[0x277D84F90];
  sub_261B3A3A0(0, v62 & ~(v62 >> 63), 0);
  if (v62 < 0)
  {
    __break(1u);
LABEL_74:
    swift_once();
LABEL_56:
    v78 = sub_261CFF7A4();
    __swift_project_value_buffer(v78, qword_27FEDD890);
    sub_261CFD104();
    v79 = sub_261CFF784();
    v80 = sub_261CFFE74();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v96[0] = v82;
      *v81 = 136446210;
      v83 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v84 = MEMORY[0x26671C340](v6, v83);
      v86 = sub_261B879C8(v84, v85, v96);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_261AE2000, v79, v80, "[SectionEntitySectionQueryPerforming] Template section is not currently supported in RemindersAppIntent: %{public}s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x26671D560](v82, -1, -1);
      MEMORY[0x26671D560](v81, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v87 = 31;
    goto LABEL_30;
  }

  v63 = 0;
  v64 = v96[0];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x26671CA10](v63, v6);
    }

    else
    {
      if ((v63 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
      }

      if (v63 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v65 = *(v6 + 8 * v63 + 32);
    }

    v66 = v65;
    v67 = [v65 objectID];
    v96[0] = v64;
    v69 = v64[2];
    v68 = v64[3];
    if (v69 >= v68 >> 1)
    {
      v94 = v66;
      v71 = v67;
      sub_261B3A3A0((v68 > 1), v69 + 1, 1);
      v67 = v71;
      v64 = v96[0];
    }

    ++v63;
    v64[2] = v69 + 1;
    v70 = &v64[2 * v69];
    v70[4] = v67;
    v70[5] = v66;
  }

  while (v62 != v63);

LABEL_68:
  if (v64[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD240, &qword_261D031B0);
    v93 = sub_261D00544();
  }

  else
  {
    v93 = MEMORY[0x277D84F98];
  }

  v96[0] = v93;
  sub_261C6F19C(v64, 1, v96);
  if (!v95)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_261C69378(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a2;
  v117 = a3;
  v121 = a4;
  v123[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for ListEntity();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v116 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SectionEntity();
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v8);
  v118 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(type metadata accessor for AppEntityID() + 20);
  v13 = *a1;
  v12 = a1[1];
  v14 = objc_allocWithZone(MEMORY[0x277D44700]);
  v15 = sub_261CFD814();
  v16 = sub_261CFFA54();
  v17 = [v14 initWithUUID:v15 entityName:v16];

  v18 = objc_allocWithZone(MEMORY[0x277D44700]);
  v19 = sub_261CFD814();
  v20 = sub_261CFFA54();
  v21 = [v18 initWithUUID:v19 entityName:v20];

  v22 = sub_261CADDC8(v21, v122);
  if (v22)
  {
    v23 = [v17 entityName];
    v24 = sub_261CFFA74();
    v26 = v25;

    sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
    v27 = [swift_getObjCClassFromMetadata() cdEntityName];
    v28 = sub_261CFFA74();
    v30 = v29;

    if (v28 == v24 && v30 == v26)
    {

LABEL_11:

      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        v40 = v118;
        sub_261C66A58(v39, v118);

        swift_unknownObjectRelease();
LABEL_13:
        v41 = v121;
        sub_261C6FCC8(v40, v121, type metadata accessor for SectionEntity);
        (*(v119 + 56))(v41, 0, 1, v120);
        goto LABEL_21;
      }

      if (qword_27FED9C28 != -1)
      {
        swift_once();
      }

      v42 = sub_261CFF7A4();
      __swift_project_value_buffer(v42, qword_27FEDD890);
      v43 = v17;
      v44 = sub_261CFF784();
      v45 = sub_261CFFE74();

      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_19;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      v49 = "[SectionEntitySectionQueryPerforming] Should not happen that the section fetched with a list section ID not being a REMListSection: %{public}@";
      goto LABEL_18;
    }

    v38 = sub_261D00614();

    if (v38)
    {
      goto LABEL_11;
    }

    sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
    v53 = [swift_getObjCClassFromMetadata() cdEntityName];
    v54 = sub_261CFFA74();
    v56 = v55;

    if (v54 == v24 && v56 == v26)
    {

LABEL_26:

      objc_opt_self();
      v58 = swift_dynamicCastObjCClass();
      if (v58)
      {
        v59 = v58;
        v60 = [v58 smartList];
        v61 = [v60 parentListID];

        if (v61)
        {
          v62 = *(v117 + 16);
          v123[0] = 0;
          v63 = [v62 fetchListWithObjectID:v61 error:v123];
          v64 = v123[0];
          if (!v63)
          {
            v79 = v64;
            sub_261CFD654();

            swift_willThrow();
            swift_unknownObjectRelease();

            goto LABEL_21;
          }
        }

        else
        {
          v63 = 0;
        }

        v71 = v59;
        v40 = v118;
        sub_261C67444(v71, v63, v118);
        swift_unknownObjectRelease();

        goto LABEL_13;
      }

      if (qword_27FED9C28 != -1)
      {
        swift_once();
      }

      v65 = sub_261CFF7A4();
      __swift_project_value_buffer(v65, qword_27FEDD890);
      v43 = v17;
      v44 = sub_261CFF784();
      v45 = sub_261CFFE74();

      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_19;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      *(v46 + 4) = v43;
      *v47 = v43;
      v66 = v43;
      v49 = "[SectionEntitySectionQueryPerforming] Should not happen that the section fetched with a smartList section ID not being a REMSmartListSection: %{public}@";
      goto LABEL_18;
    }

    v57 = sub_261D00614();

    if (v57)
    {
      goto LABEL_26;
    }

    sub_261B05020(0, &qword_27FEDA5F0, 0x277D448B8);
    v67 = [swift_getObjCClassFromMetadata() cdEntityName];
    v68 = sub_261CFFA74();
    v70 = v69;

    if (v68 == v24 && v70 == v26)
    {
LABEL_69:

      goto LABEL_40;
    }

    v72 = sub_261D00614();

    if (v72)
    {
LABEL_40:

      goto LABEL_41;
    }

    v80 = [objc_opt_self() cdEntityName];
    v81 = sub_261CFFA74();
    v83 = v82;

    if (v81 == v24 && v83 == v26)
    {
    }

    else
    {
      v84 = sub_261D00614();

      if ((v84 & 1) == 0)
      {
        v91 = [objc_opt_self() cdEntityName];
        v92 = sub_261CFFA74();
        v94 = v93;

        if (v92 == v24 && v94 == v26)
        {
        }

        else
        {
          v95 = sub_261D00614();

          if ((v95 & 1) == 0)
          {
            v104 = [objc_opt_self() cdEntityName];
            v105 = sub_261CFFA74();
            v107 = v106;

            if (v105 != v24 || v107 != v26)
            {
              v110 = sub_261D00614();

              if ((v110 & 1) == 0)
              {
                if (qword_27FED9C28 != -1)
                {
                  swift_once();
                }

                v111 = sub_261CFF7A4();
                __swift_project_value_buffer(v111, qword_27FEDD890);
                v43 = v17;
                v44 = sub_261CFF784();
                v45 = sub_261CFFE74();

                if (!os_log_type_enabled(v44, v45))
                {
                  goto LABEL_19;
                }

                v46 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                *v46 = 138543362;
                *(v46 + 4) = v43;
                *v47 = v43;
                v112 = v43;
                v49 = "[SectionEntitySectionQueryPerforming] Unknown section entity type: %{public}@";
                goto LABEL_18;
              }

LABEL_41:
              if (qword_27FED9C28 != -1)
              {
                swift_once();
              }

              v73 = sub_261CFF7A4();
              __swift_project_value_buffer(v73, qword_27FEDD890);
              v43 = v17;
              v74 = sub_261CFF784();
              v75 = sub_261CFFE74();

              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                v77 = swift_slowAlloc();
                *v76 = 138543362;
                *(v76 + 4) = v43;
                *v77 = v43;
                v78 = v43;
                _os_log_impl(&dword_261AE2000, v74, v75, "[SectionEntitySectionQueryPerforming] Template section is not currently supported in RemindersAppIntent: %{public}@", v76, 0xCu);
                sub_261AE6A40(v77, &unk_27FEDA730, &unk_261D035C0);
                MEMORY[0x26671D560](v77, -1, -1);
                MEMORY[0x26671D560](v76, -1, -1);
              }

              sub_261B01D70();
              swift_allocError();
              v51 = 31;
              goto LABEL_20;
            }

            goto LABEL_69;
          }
        }

        objc_opt_self();
        v96 = swift_dynamicCastObjCClass();
        if (v96)
        {
          v97 = v96;
          swift_unknownObjectRetain();
          v98 = [v97 customContext];
          if (v98)
          {

            v99 = [v97 parentListID];
            if (v99)
            {
              v100 = v99;
              v101 = *(v117 + 16);
              v123[0] = 0;
              v102 = [v101 fetchListWithObjectID:v100 error:v123];
              v103 = v123[0];
              if (!v102)
              {
                v115 = v103;
                swift_unknownObjectRelease();
                sub_261CFD654();

                swift_willThrow();
                swift_unknownObjectRelease();

                goto LABEL_21;
              }
            }

            else
            {
              v102 = 0;
            }

            v113 = v102;
            swift_unknownObjectRetain();
            v114 = v116;
            sub_261B750A0(v97, v102, v116);
            v40 = v118;
            sub_261CF3F80(v114, v118);

            swift_unknownObjectRelease_n();
            v88 = v114;
            goto LABEL_53;
          }

          swift_unknownObjectRelease();
        }

        if (qword_27FED9C28 != -1)
        {
          swift_once();
        }

        v108 = sub_261CFF7A4();
        __swift_project_value_buffer(v108, qword_27FEDD890);
        v43 = v17;
        v44 = sub_261CFF784();
        v45 = sub_261CFFE74();

        if (!os_log_type_enabled(v44, v45))
        {
          goto LABEL_19;
        }

        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138543362;
        *(v46 + 4) = v43;
        *v47 = v43;
        v109 = v43;
        v49 = "[SectionEntitySectionQueryPerforming] Should not happen that the CSL fetched with a CSL ID not being a REMSmartList: %{public}@";
        goto LABEL_18;
      }
    }

    objc_opt_self();
    v85 = swift_dynamicCastObjCClass();
    if (!v85)
    {
      if (qword_27FED9C28 != -1)
      {
        swift_once();
      }

      v89 = sub_261CFF7A4();
      __swift_project_value_buffer(v89, qword_27FEDD890);
      v43 = v17;
      v44 = sub_261CFF784();
      v45 = sub_261CFFE74();

      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_19;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      *(v46 + 4) = v43;
      *v47 = v43;
      v90 = v43;
      v49 = "[SectionEntitySectionQueryPerforming] Should not happen that the list fetched with a list ID not being a REMList: %{public}@";
LABEL_18:
      _os_log_impl(&dword_261AE2000, v44, v45, v49, v46, 0xCu);
      sub_261AE6A40(v47, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v47, -1, -1);
      MEMORY[0x26671D560](v46, -1, -1);
LABEL_19:

      sub_261B01D70();
      swift_allocError();
      v51 = 20;
LABEL_20:
      *v50 = v51;
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    v86 = v85;
    swift_unknownObjectRetain();
    v87 = v116;
    sub_261B73240(v86, v116);
    v40 = v118;
    sub_261CF3F80(v87, v118);

    swift_unknownObjectRelease();
    v88 = v87;
LABEL_53:
    sub_261C6F13C(v88, type metadata accessor for ListEntity);
    goto LABEL_13;
  }

  if (qword_27FED9C28 != -1)
  {
    swift_once();
  }

  v31 = sub_261CFF7A4();
  __swift_project_value_buffer(v31, qword_27FEDD890);
  v32 = v17;
  v33 = sub_261CFF784();
  v34 = sub_261CFFE64();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_261AE2000, v33, v34, "[SectionEntitySectionQueryPerforming] Could not fetch section with %{public}@", v35, 0xCu);
    sub_261AE6A40(v36, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v36, -1, -1);
    MEMORY[0x26671D560](v35, -1, -1);
    v32 = v33;
    v33 = v37;
  }

  (*(v119 + 56))(v121, 1, 1, v120);
LABEL_21:
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t sub_261C6A314()
{
  v13 = v0;
  if (qword_27FED9C28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDD890);
  sub_261CFD104();
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_261B879C8(v6, v5, &v12);
    _os_log_impl(&dword_261AE2000, v3, v4, "[SectionEntitySectionQueryPerforming] Query all (list) sections matching string %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v9 = *(v0 + 48);
  sub_261C6A4D8(*(v0 + 24), *(v0 + 32), 0, MEMORY[0x277D84F90], 0, 1, 0, *(*(v0 + 40) + 16), *(v0 + 16));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_261C6A4D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v291 = a8;
  LODWORD(v277) = a7;
  LODWORD(v286) = a6;
  v287 = a5;
  v254 = a4;
  LODWORD(v273) = a3;
  v280 = a1;
  v281 = a2;
  v259 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v247 = &v240 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v260 = &v240 - v14;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5C0, &qword_261D031A0);
  v253 = *(v246 - 8);
  v15 = *(v253 + 64);
  MEMORY[0x28223BE20](v246);
  v255 = &v240 - v16;
  v261 = sub_261CFD6A4();
  v252 = *(v261 - 8);
  v17 = *(v252 + 64);
  v18 = MEMORY[0x28223BE20](v261);
  v245 = &v240 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v243 = &v240 - v20;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7A8, &qword_261D10A40);
  v269 = *(v268 - 8);
  v21 = *(v269 + 64);
  v22 = MEMORY[0x28223BE20](v268);
  v263 = &v240 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v262 = &v240 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v244 = &v240 - v27;
  MEMORY[0x28223BE20](v26);
  v251 = &v240 - v28;
  v284 = type metadata accessor for ListEntity();
  v258 = *(v284 - 8);
  v29 = *(v258 + 64);
  MEMORY[0x28223BE20](v284);
  v264 = &v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for AppEntityID();
  v31 = *(*(v270 - 8) + 64);
  MEMORY[0x28223BE20](v270);
  v293 = &v240 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v265 = &v240 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v272 = &v240 - v38;
  MEMORY[0x28223BE20](v37);
  v271 = &v240 - v39;
  v279 = type metadata accessor for SectionEntity();
  v289 = *(v279 - 8);
  v40 = *(v289 + 64);
  v41 = MEMORY[0x28223BE20](v279);
  v266 = &v240 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v256 = &v240 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v248 = &v240 - v46;
  MEMORY[0x28223BE20](v45);
  v285 = (&v240 - v47);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD8F0, &qword_261D0F100);
  v290 = *(v250 - 8);
  v48 = *(v290 + 64);
  MEMORY[0x28223BE20](v250);
  v249 = &v240 - v49;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8B0, &qword_261D0F0D0);
  v288 = *(v257 - 8);
  v50 = *(v288 + 64);
  MEMORY[0x28223BE20](v257);
  v52 = &v240 - v51;
  v53 = sub_261CFF3D4();
  v282 = *(v53 - 8);
  v54 = *(v282 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v240 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_261CFF404();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v240 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD8F8, &qword_261D0F108);
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v240 - v65;
  v67 = v292;
  result = sub_261CFF414();
  if (v67)
  {
    return result;
  }

  v240 = v56;
  v241 = v53;
  v242 = v52;
  v292 = 0;
  v278 = v63;
  v267 = v62;
  sub_261CFF534();
  v69 = sub_261CFF134();
  (*(v58 + 8))(v61, v57);
  v70 = *(v69 + 16);
  v283 = v66;
  if (!v70)
  {

    v74 = MEMORY[0x277D84F90];
LABEL_12:
    v83 = *(v74 + 16);
    v84 = MEMORY[0x277D84F90];
    v85 = v293;
    v86 = v290;
    if (v83)
    {
      v87 = 0;
      v73 = v74 + 32;
      while (v87 < *(v74 + 16))
      {
        v88 = *(v73 + 8 * v87);
        v89 = *(v88 + 16);
        v90 = v84[2];
        v91 = v90 + v89;
        if (__OFADD__(v90, v89))
        {
          goto LABEL_131;
        }

        v92 = *(v73 + 8 * v87);
        sub_261CFD104();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v91 > v84[3] >> 1)
        {
          if (v90 <= v91)
          {
            v94 = v90 + v89;
          }

          else
          {
            v94 = v90;
          }

          v84 = sub_261B41C94(isUniquelyReferenced_nonNull_native, v94, 1, v84);
        }

        v85 = v293;
        if (*(v88 + 16))
        {
          if ((v84[3] >> 1) - v84[2] < v89)
          {
            goto LABEL_137;
          }

          v95 = (*(v289 + 80) + 32) & ~*(v289 + 80);
          v96 = *(v289 + 72);
          swift_arrayInitWithCopy();

          if (v89)
          {
            v97 = v84[2];
            v98 = __OFADD__(v97, v89);
            v99 = v97 + v89;
            if (v98)
            {
              goto LABEL_140;
            }

            v84[2] = v99;
          }
        }

        else
        {

          if (v89)
          {
            goto LABEL_132;
          }
        }

        ++v87;
        v86 = v290;
        if (v83 == v87)
        {
          goto LABEL_29;
        }
      }

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

LABEL_29:

    v296 = v84;
    v100 = v254;
    v74 = *(v254 + 16);
    if (v74)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD900, &qword_261D0F110);
      v73 = 0;
      v102 = v288;
      v282 = v100 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
      v290 = v288 + 16;
      v291 = v101;
      v103 = (v288 + 8);
      v280 = (v86 + 8);
      v104 = 1;
      do
      {
        LODWORD(v281) = v104;
        v105 = v257;
        v106 = v242;
        while (1)
        {
          if (v73 >= v74)
          {
            goto LABEL_133;
          }

          v107 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_134;
          }

          (*(v102 + 16))(v106, v282 + *(v102 + 72) * v73, v105);
          v108 = sub_261CFCB74();
          v294[0] = swift_getKeyPath();
          v295 = v108;
          v100 = sub_261CFF974();

          if (v100)
          {
            break;
          }

          (*v103)(v106, v105);
          ++v73;
          v109 = v107 == v74;
          v85 = v293;
          v110 = v287;
          v102 = v288;
          v111 = v286;
          if (v109)
          {
            v114 = v281;
            goto LABEL_42;
          }
        }

        swift_getKeyPath();
        sub_261CFCB84();
        v112 = v249;
        sub_261CFD544();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA5D0, &qword_261D0A790);
        v281 = sub_261B01D28(&qword_27FEDD918, &unk_27FEDA5D0, &qword_261D0A790);
        sub_261B01D28(&qword_27FEDD920, &unk_27FEDA5D0, &qword_261D0A790);
        sub_261B01D28(&qword_27FEDD928, &qword_27FEDD8F0, &qword_261D0F100);
        v100 = &v296;
        v113 = v250;
        sub_261CFF964();
        (*v280)(v112, v113);
        (*v103)(v106, v105);
        v104 = 0;
        v114 = 0;
        v73 = v107;
        v109 = v107 == v74;
        v85 = v293;
        v110 = v287;
        v102 = v288;
        v111 = v286;
      }

      while (!v109);
    }

    else
    {
      v114 = 1;
      v110 = v287;
      v111 = v286;
    }

LABEL_42:
    v115 = v261;
    v73 = v278;
    v116 = v283;
    v117 = v284;
    v118 = v258;
    if ((v111 & 1) == 0)
    {
      v119 = v296[2];
      if (v119 > v110)
      {
        if (__OFSUB__(v119, v110))
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
          sub_261D00654();
          __break(1u);
          goto LABEL_146;
        }

        sub_261C6EE08(v119 - v110);
      }
    }

    if ((v114 & 1) == 0)
    {
      (*(v252 + 56))(v260, 1, 1, v115);
      sub_261C6F064(&qword_280D224C8, type metadata accessor for SectionEntity);
      sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity);
      sub_261CFCFB4();
      v146 = v267;
      return (*(v73 + 8))(v116, v146);
    }

    v120 = v296[2];
    v282 = v296;
    v277 = v120;
    if (v120)
    {
      v121 = *(v279 + 36);
      v122 = v296 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
      v288 = *(v289 + 72);
      v290 = v121;
      v291 = v118 + 48;
      v123 = MEMORY[0x277D84F90];
      do
      {
        v124 = v285;
        sub_261C6F0D4(v122, v285, type metadata accessor for SectionEntity);
        v125 = *(v124 + v290);
        v126 = v271;
        sub_261CFCA04();
        v127 = *v291;
        if ((*v291)(v126, 1, v117))
        {
          sub_261AE6A40(v126, &unk_27FEDE0C0, &unk_261D02500);
          v128 = 0;
        }

        else
        {
          sub_261C6F0D4(v126 + *(v117 + 20), v85, type metadata accessor for AppEntityID);
          sub_261AE6A40(v126, &unk_27FEDE0C0, &unk_261D02500);
          v129 = *(v270 + 20);
          v130 = *v85;
          v131 = v85[1];
          v132 = objc_allocWithZone(MEMORY[0x277D44700]);
          v133 = sub_261CFD814();
          v134 = sub_261CFFA54();
          v135 = v132;
          v85 = v293;
          v128 = [v135 initWithUUID:v133 entityName:v134];

          v117 = v284;
          sub_261C6F13C(v85, type metadata accessor for AppEntityID);
        }

        v136 = v272;
        sub_261CFCA04();
        if (v127(v136, 1, v117))
        {
          sub_261C6F13C(v285, type metadata accessor for SectionEntity);
          sub_261AE6A40(v136, &unk_27FEDE0C0, &unk_261D02500);
          v137 = 0;
          v138 = 0;
        }

        else
        {
          v139 = v264;
          sub_261C6F0D4(v136, v264, type metadata accessor for ListEntity);
          sub_261AE6A40(v136, &unk_27FEDE0C0, &unk_261D02500);
          v140 = *(v117 + 24);
          v141 = v139;
          v142 = *(v139 + v140);
          sub_261CFCA04();
          v137 = v294[0];
          v138 = v294[1];
          sub_261C6F13C(v141, type metadata accessor for ListEntity);
          sub_261C6F13C(v285, type metadata accessor for SectionEntity);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_261B41EC8(0, v123[2] + 1, 1, v123);
        }

        v144 = v123[2];
        v143 = v123[3];
        if (v144 >= v143 >> 1)
        {
          v123 = sub_261B41EC8((v143 > 1), v144 + 1, 1, v123);
        }

        v123[2] = v144 + 1;
        v145 = &v123[3 * v144];
        v145[4] = v128;
        v145[5] = v137;
        v145[6] = v138;
        v122 += v288;
        v120 = (v120 - 1);
        v117 = v284;
      }

      while (v120);
      v147 = v253;
      v148 = v251;
    }

    else
    {
      v123 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        v149 = MEMORY[0x277D84F98];
        v147 = v253;
        v148 = v251;
LABEL_65:
        v294[0] = v149;
        v150 = v292;
        sub_261C6F4EC(v123, 1, v294);
        v100 = v150;
        if (!v150)
        {

          v151 = v294[0];
          v152 = sub_261CFD104();
          v153 = sub_261C6F7A8(v152);
          v292 = 0;

          v154 = v153 + 64;
          v155 = 1 << *(v153 + 32);
          v156 = -1;
          if (v155 < 64)
          {
            v156 = ~(-1 << v155);
          }

          v74 = v156 & *(v153 + 64);
          v73 = (v155 + 63) >> 6;
          v285 = (v252 + 56);
          v280 = (v147 + 32);
          v286 = (v269 + 16);
          v288 = v269 + 32;
          v275 = v269 + 8;
          v274 = v269 + 40;
          v157 = sub_261CFD104();
          v158 = 0;
          v287 = MEMORY[0x277D84F98];
          v291 = v157;
          while (v74)
          {
LABEL_75:
            v161 = __clz(__rbit64(v74));
            v74 &= v74 - 1;
            v162 = (v158 << 9) | (8 * v161);
            v163 = *(*(v157 + 48) + v162);
            if (v163 && *(v151 + 16))
            {
              v164 = *(*(v157 + 56) + v162);
              v165 = v163;
              sub_261CFD104();
              v166 = sub_261B37DF8(v163);
              if (v167)
              {
                v168 = (*(v151 + 56) + 16 * v166);
                v169 = v168[1];
                v272 = *v168;
                v271 = v169;
                sub_261CFD104();
                v273 = v165;

                v170 = *(v164 + 16);
                v257 = v151;
                v264 = v164;
                if (v170)
                {
                  v295 = MEMORY[0x277D84F90];
                  v290 = v170;
                  sub_261B3A1F4(0, v170, 0);
                  v171 = v295;
                  v172 = v164 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
                  v276 = *(v289 + 72);
                  v173 = v256;
                  v174 = v260;
                  v175 = v248;
                  do
                  {
                    v281 = v172;
                    sub_261C6F0D4(v172, v175, type metadata accessor for SectionEntity);
                    sub_261C6F0D4(v175, v173, type metadata accessor for SectionEntity);
                    v176 = *(v175 + *(v279 + 28));
                    sub_261CFD2D4();
                    sub_261CFD664();
                    (*v285)(v174, 1, 1, v261);
                    v177 = sub_261CFD074();
                    (*(*(v177 - 8) + 56))(v247, 1, 1, v177);
                    sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity);
                    sub_261CFC7F4();
                    sub_261C6F13C(v175, type metadata accessor for SectionEntity);
                    v295 = v171;
                    v179 = *(v171 + 16);
                    v178 = *(v171 + 24);
                    if (v179 >= v178 >> 1)
                    {
                      sub_261B3A1F4(v178 > 1, v179 + 1, 1);
                      v171 = v295;
                    }

                    *(v171 + 16) = v179 + 1;
                    (*(v253 + 32))(v171 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v179, v255, v246);
                    v109 = v290-- == 1;
                    v174 = v260;
                    v173 = v256;
                    v175 = v248;
                    v172 = v281 + v276;
                  }

                  while (!v109);
                  v180 = v268;
                  v181 = v243;
                  v148 = v251;
                }

                else
                {
                  v171 = MEMORY[0x277D84F90];
                  v181 = v243;
                  v180 = v268;
                }

                sub_261CFD664();
                v182 = sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity);
                MEMORY[0x2667195E0](v181, v171, v279, v182);
                (*v286)(v244, v148, v180);
                v100 = v287;
                v183 = swift_isUniquelyReferenced_nonNull_native();
                v294[0] = v100;
                v184 = sub_261B37CA4(v273);
                v186 = *(v100 + 16);
                v187 = (v185 & 1) == 0;
                v98 = __OFADD__(v186, v187);
                v188 = v186 + v187;
                if (v98)
                {
                  goto LABEL_143;
                }

                v189 = v185;
                if (*(v100 + 24) >= v188)
                {
                  v191 = v244;
                  if ((v183 & 1) == 0)
                  {
                    v200 = v184;
                    sub_261CA4B58();
                    v191 = v244;
                    v184 = v200;
                  }
                }

                else
                {
                  sub_261CA3744(v188, v183);
                  v100 = v294[0];
                  v184 = sub_261B37CA4(v273);
                  if ((v189 & 1) != (v190 & 1))
                  {
                    goto LABEL_145;
                  }

                  v191 = v244;
                }

                v192 = v294[0];
                v287 = v294[0];
                if (v189)
                {
                  v193 = v269;
                  v194 = v268;
                  (*(v269 + 40))(*(v294[0] + 56) + *(v269 + 72) * v184, v191, v268);

                  v195 = v273;

                  (*(v193 + 8))(v148, v194);
                }

                else
                {
                  *(v294[0] + 8 * (v184 >> 6) + 64) |= 1 << v184;
                  v196 = v273;
                  *(v192[6] + 8 * v184) = v273;
                  v100 = v269;
                  v197 = v268;
                  (*(v269 + 32))(v192[7] + *(v269 + 72) * v184, v191, v268);

                  (*(v100 + 8))(v148, v197);
                  v198 = v192[2];
                  v98 = __OFADD__(v198, 1);
                  v199 = v198 + 1;
                  if (v98)
                  {
                    goto LABEL_144;
                  }

                  v192[2] = v199;
                }

                v151 = v257;
                v157 = v291;
              }

              else
              {

                v157 = v291;
              }
            }
          }

          v159 = v266;
          while (1)
          {
            v160 = v158 + 1;
            if (__OFADD__(v158, 1))
            {
              goto LABEL_135;
            }

            if (v160 >= v73)
            {
              break;
            }

            v74 = *(v154 + 8 * v160);
            ++v158;
            if (v74)
            {
              v158 = v160;
              v148 = v251;
              goto LABEL_75;
            }
          }

          v294[0] = MEMORY[0x277D84F90];
          v201 = v277;
          if (v277)
          {
            v73 = v278;
            v202 = *(v279 + 36);
            v203 = v282 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
            v290 = *(v289 + 72);
            v291 = v202;
            v204 = (v258 + 48);
            v289 = MEMORY[0x277D84F90];
            v205 = v284;
            v206 = v270;
            v207 = v265;
            do
            {
              sub_261C6F0D4(v203, v159, type metadata accessor for SectionEntity);
              v208 = *(v159 + v291);
              sub_261CFCA04();
              if ((*v204)(v207, 1, v205))
              {
                sub_261C6F13C(v159, type metadata accessor for SectionEntity);
                sub_261AE6A40(v207, &unk_27FEDE0C0, &unk_261D02500);
              }

              else
              {
                v209 = v207 + *(v205 + 20);
                v210 = v207;
                v211 = v293;
                sub_261C6F0D4(v209, v293, type metadata accessor for AppEntityID);
                sub_261AE6A40(v210, &unk_27FEDE0C0, &unk_261D02500);
                v212 = *(v206 + 20);
                v213 = *v211;
                v214 = v211[1];
                v215 = objc_allocWithZone(MEMORY[0x277D44700]);
                v216 = sub_261CFD814();
                v217 = sub_261CFFA54();
                [v215 initWithUUID:v216 entityName:v217];

                sub_261C6F13C(v211, type metadata accessor for AppEntityID);
                v218 = sub_261C6F13C(v159, type metadata accessor for SectionEntity);
                MEMORY[0x26671C310](v218);
                if (*((v294[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v294[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v219 = *((v294[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_261CFFC84();
                }

                sub_261CFFCB4();
                v289 = v294[0];
                v73 = v278;
                v205 = v284;
                v206 = v270;
                v207 = v265;
                v159 = v266;
              }

              v203 += v290;
              v201 = (v201 - 1);
            }

            while (v201);
          }

          else
          {
            v289 = MEMORY[0x277D84F90];
            v73 = v278;
          }

          v294[0] = v289;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
          sub_261B01D28(&qword_27FEDD910, &unk_27FEDE100, &qword_261D05750);
          sub_261B3B918();
          v74 = sub_261CFFC34();

          if (v74 >> 62)
          {
            goto LABEL_141;
          }

          for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
          {
            v146 = v267;
            v116 = v283;
            v221 = v287;
            if (!i)
            {
              break;
            }

            v222 = 0;
            v293 = v74 & 0xC000000000000001;
            v291 = v74 & 0xFFFFFFFFFFFFFF8;
            v223 = MEMORY[0x277D84F90];
            v290 = i;
            while (1)
            {
              if (v293)
              {
                v224 = MEMORY[0x26671CA10](v222, v74);
              }

              else
              {
                if (v222 >= *(v291 + 16))
                {
                  goto LABEL_139;
                }

                v224 = *(v74 + 8 * v222 + 32);
              }

              v73 = v224;
              v225 = v222 + 1;
              if (__OFADD__(v222, 1))
              {
                break;
              }

              if (*(v221 + 16))
              {
                v226 = sub_261B37CA4(v224);
                if (v227)
                {
                  v228 = v74;
                  v229 = v269;
                  v230 = *(v269 + 72);
                  v231 = *(v221 + 56) + v230 * v226;
                  v232 = v263;
                  v233 = v268;
                  (*(v269 + 16))(v263, v231, v268);

                  v234 = *(v229 + 32);
                  v235 = v232;
                  v236 = v262;
                  v234(v262, v235, v233);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v223 = sub_261B41CBC(0, *(v223 + 2) + 1, 1, v223);
                  }

                  v238 = *(v223 + 2);
                  v237 = *(v223 + 3);
                  v239 = v269;
                  if (v238 >= v237 >> 1)
                  {
                    v223 = sub_261B41CBC(v237 > 1, v238 + 1, 1, v223);
                    v239 = v269;
                  }

                  *(v223 + 2) = v238 + 1;
                  v234(&v223[((*(v239 + 80) + 32) & ~*(v239 + 80)) + v238 * v230], v236, v268);
                  v146 = v267;
                  v116 = v283;
                  v221 = v287;
                  v74 = v228;
                  i = v290;
                }

                else
                {

                  v146 = v267;
                }
              }

              else
              {
              }

              ++v222;
              v73 = v278;
              if (v225 == i)
              {
                goto LABEL_126;
              }
            }

LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            ;
          }

LABEL_126:

          (*v285)(v260, 1, 1, v261);
          sub_261C6F064(&qword_280D224D0, type metadata accessor for SectionEntity);
          sub_261CFCFC4();
          return (*(v73 + 8))(v116, v146);
        }

LABEL_146:

        __break(1u);
        return result;
      }

      v147 = v253;
      v148 = v251;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDF40, &qword_261D0F140);
    v149 = sub_261D00544();
    goto LABEL_65;
  }

  v294[0] = MEMORY[0x277D84F90];
  sub_261B3A1D4(0, v70, 0);
  v71 = 0;
  v72 = v282;
  v276 = v69 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v291 = v294[0];
  v275 = v282 + 16;
  LODWORD(v274) = v277 & 1;
  v277 = (v282 + 8);
  LODWORD(v273) = v273 & 1;
  v73 = v241;
  v74 = v240;
  while (1)
  {
    if (v71 >= *(v69 + 16))
    {
      goto LABEL_136;
    }

    (*(v72 + 16))(v74, v276 + *(v72 + 72) * v71, v73);
    v75 = sub_261CFF1A4();
    MEMORY[0x28223BE20](v75);
    *(&v240 - 6) = v74;
    *(&v240 - 40) = v274;
    v76 = v281;
    *(&v240 - 4) = v280;
    *(&v240 - 3) = v76;
    *(&v240 - 16) = v273;
    v77 = v292;
    v78 = sub_261C6662C(sub_261C6F0AC, (&v240 - 8), v75);
    v292 = v77;
    if (v77)
    {
      break;
    }

    v79 = v78;

    (*v277)(v74, v73);
    v80 = v291;
    v294[0] = v291;
    v82 = *(v291 + 16);
    v81 = *(v291 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_261B3A1D4((v81 > 1), v82 + 1, 1);
      v74 = v240;
      v73 = v241;
      v80 = v294[0];
    }

    ++v71;
    *(v80 + 16) = v82 + 1;
    v291 = v80;
    *(v80 + 8 * v82 + 32) = v79;
    v72 = v282;
    v66 = v283;
    if (v70 == v71)
    {

      v74 = v291;
      goto LABEL_12;
    }
  }

  (*(v278 + 8))(v66, v267);

  (*v277)(v74, v73);
}

uint64_t REMStoreIntentPerformer.entities(query:matching:mode:sortedBy:limit:excludeSectionlessSections:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 48) = a6;
  *(v9 + 56) = v8;
  *(v9 + 74) = a8;
  *(v9 + 73) = a7;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 72) = a4;
  *(v9 + 24) = a1;
  *(v9 + 64) = *v8;
  return MEMORY[0x2822009F8](sub_261C6C5A4, 0, 0);
}

uint64_t sub_261C6C5A4()
{
  v30 = v0;
  if (qword_27FED9C28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDD890);
  sub_261CFD104();
  sub_261CFD104();
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(v4, v5))
  {
    v28 = *(v0 + 73);
    v6 = *(v0 + 72);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 134218754;
    *(v9 + 4) = *(v8 + 16);

    *(v9 + 12) = 2082;
    v11 = v6 & 1;
    *(v0 + 16) = v6 & 1;
    v12 = sub_261CFFAB4();
    v14 = sub_261B879C8(v12, v13, v29);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8B0, &qword_261D0F0D0);
    v16 = MEMORY[0x26671C340](v7, v15);
    v18 = sub_261B879C8(v16, v17, v29);

    *(v9 + 24) = v18;
    *(v9 + 32) = 2082;
    if (v28)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      *(v0 + 16) = *(v0 + 48);
      v20 = sub_261CFFAB4();
      v19 = v23;
    }

    v24 = sub_261B879C8(v20, v19, v29);

    *(v9 + 34) = v24;
    _os_log_impl(&dword_261AE2000, v4, v5, "[SectionEntitySectionPropertyQueryPerforming] Query (list) sections matching comparators.count %ld, mode %{public}s, sorted by %{public}s, limit %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v10, -1, -1);
    MEMORY[0x26671D560](v9, -1, -1);
  }

  else
  {
    v21 = *(v0 + 72);
    v22 = *(v0 + 32);

    v11 = v21 & 1;
  }

  v25 = *(v0 + 64);
  sub_261C6A4D8(*(v0 + 32), v11, 1, *(v0 + 40), *(v0 + 48), *(v0 + 73) & 1, *(v0 + 74), *(*(v0 + 56) + 16), *(v0 + 24));
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_261C6C878@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v219 = a5;
  v217 = a4;
  v218 = a3;
  v210 = a2;
  v246 = a1;
  v221 = a6;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD940, &qword_261D04B70);
  v259 = *(v258 - 8);
  v6 = *(v259 + 64);
  MEMORY[0x28223BE20](v258);
  v260 = &v202 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v204 = &v202 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v216 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v215 = &v202 - v15;
  v211 = type metadata accessor for SectionEntityID();
  v16 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v248 = (&v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v245 = sub_261CFF184();
  v244 = *(v245 - 8);
  v18 = *(v244 + 8);
  MEMORY[0x28223BE20](v245);
  v243 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for SectionEntity();
  v220 = *(v255 - 8);
  v20 = *(v220 + 64);
  v21 = MEMORY[0x28223BE20](v255);
  v256 = &v202 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v261 = (&v202 - v23);
  v239 = sub_261CFEC94();
  v24 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v240 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_261CFD674();
  v265 = *(v268 - 1);
  v26 = *(v265 + 64);
  MEMORY[0x28223BE20](v268);
  v251 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_261CFD884();
  v202 = *(v203 - 8);
  v28 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v257 = &v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_261CFFA44();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v250 = &v202 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_261CFD6A4();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v263 = &v202 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v242 = &v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v241 = &v202 - v41;
  MEMORY[0x28223BE20](v40);
  v254 = &v202 - v42;
  v267 = sub_261CFF384();
  v43 = *(v267 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v267);
  v47 = &v202 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v266 = &v202 - v48;
  v49 = type metadata accessor for AppEntityID();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v202 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v262 = type metadata accessor for ListEntity();
  v212 = *(v262 - 1);
  v53 = *(v212 + 64);
  v54 = MEMORY[0x28223BE20](v262);
  v213 = &v202 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v214 = &v202 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v247 = &v202 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v264 = (&v202 - v61);
  MEMORY[0x28223BE20](v60);
  v252 = &v202 - v62;
  v63 = sub_261CFF394();
  v64 = [v63 entityName];
  v65 = sub_261CFFA74();
  v67 = v66;

  v68 = [v63 uuid];
  v69 = v52 + *(v49 + 20);
  sub_261CFD834();

  v209 = v49;
  v70 = *(v49 + 24);
  v71 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v72 = *(v71 - 8);
  v73 = *(v72 + 56);
  v206 = v72 + 56;
  v73(v52 + v70, 1, 1, v71);
  *v52 = v65;
  v52[1] = v67;
  v253 = v52;
  v74 = v266;
  v75 = sub_261CFF3A4();
  v77 = v76;
  sub_261CFF3B4();
  v78 = v267;
  (*(v43 + 16))(v47, v74, v267);
  v79 = (*(v43 + 88))(v47, v78);
  v80 = v79 == *MEMORY[0x277D45520];
  v208 = v71;
  v207 = v73;
  v238 = v75;
  v237 = v77;
  if (!v80)
  {
    if (v79 == *MEMORY[0x277D45510])
    {
      v234 = 1;
      goto LABEL_6;
    }

    if (v79 != *MEMORY[0x277D45518])
    {
LABEL_36:
      result = sub_261D00604();
      __break(1u);
      return result;
    }
  }

  v234 = 0;
LABEL_6:
  (*(v43 + 8))(v74, v78);
  v81 = type metadata accessor for GroupEntity();
  (*(*(v81 - 8) + 56))(v254, 1, 1, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v231 = sub_261AFF54C();
  v82 = sub_261CFCA44();
  v83 = v264;
  v236 = v82;
  *v264 = v82;
  v84 = v83;
  v85 = v262[6];
  v86 = v262;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v235 = sub_261CFCB24();
  *(v84 + v85) = v235;
  v233 = v86[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v266) = *MEMORY[0x277CC9110];
  v87 = v265 + 104;
  v267 = *(v265 + 104);
  v88 = v251;
  v89 = v268;
  (v267)();
  v265 = v87;
  v90 = v263;
  sub_261CFD6B4();
  v91 = MEMORY[0x2667199E0](v90, &type metadata for UpdateListNameAppIntent);
  v92 = v264;
  *(v264 + v233) = v91;
  v93 = v262;
  v232 = v262[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v94 = v266;
  (v267)(v88, v266, v89);
  v95 = v263;
  sub_261CFD6B4();
  v96 = sub_261AFF5A0();
  v233 = MEMORY[0x2667199D0](v95, &type metadata for UpdateListColorAppIntent, v96);
  *(v92 + v232) = v233;
  v230 = v93[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  v97 = v89;
  v98 = v267;
  (v267)(v88, v94, v97);
  v99 = v263;
  sub_261CFD6B4();
  v100 = sub_261AFF5F4();
  v232 = MEMORY[0x2667199D0](v99, &type metadata for UpdateListBadgeAppIntent, v100);
  v101 = v264;
  *(v264 + v230) = v232;
  v229 = v262[10];
  v102 = v262;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v98(v88, v94, v268);
  v103 = v263;
  sub_261CFD6B4();
  v104 = sub_261C6F064(&qword_280D22670, type metadata accessor for GroupEntity);
  v230 = MEMORY[0x2667199D0](v103, &type metadata for UpdateListParentAppIntent, v104);
  *(v101 + v229) = v230;
  v228 = v102[11];
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v105 = v266;
  v107 = v267;
  v106 = v268;
  (v267)(v88, v266, v268);
  sub_261CFD6B4();
  v229 = sub_261CFCA84();
  v108 = v264;
  *(v264 + v228) = v229;
  v227 = v262[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v107(v88, v105, v106);
  sub_261CFD6B4();
  sub_261C6F064(&qword_280D224E0, type metadata accessor for SectionEntity);
  v228 = sub_261CFCA54();
  v109 = v108;
  *(v108 + v227) = v228;
  v110 = v262;
  v226 = v262[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v111 = v88;
  v112 = v88;
  v113 = v266;
  v114 = v268;
  (v267)(v112, v266, v268);
  v115 = v263;
  sub_261CFD6B4();
  v227 = MEMORY[0x2667199F0](v115, &type metadata for UpdateListIsPinnedAppIntent);
  *(v109 + v226) = v227;
  v225 = v110[14];
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v116 = v267;
  (v267)(v111, v113, v114);
  v117 = v115;
  sub_261CFD6B4();
  v226 = MEMORY[0x2667199F0](v115, &type metadata for UpdateListShowsCompletedAppIntent);
  v118 = v264;
  *(v264 + v225) = v226;
  v224 = v110[15];
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v119 = v266;
  v120 = v268;
  v116(v111, v266, v268);
  sub_261CFD6B4();
  v225 = MEMORY[0x2667199F0](v117, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v118 + v224) = v225;
  v121 = v262;
  v223 = v262[16];
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v122 = v119;
  v123 = v267;
  (v267)(v111, v122, v120);
  sub_261CFD6B4();
  v124 = sub_261AFF648();
  v125 = MEMORY[0x2667199C0](v117, &type metadata for UpdateListListLayoutAppIntent, v124);
  v126 = v264;
  v224 = v125;
  *(v264 + v223) = v125;
  v222 = v121[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v123(v111, v266, v268);
  sub_261CFD6B4();
  v127 = sub_261AFF69C();
  v223 = MEMORY[0x2667199C0](v117, &type metadata for UpdateListSortingStyleAppIntent, v127);
  *(v126 + v222) = v223;
  v128 = v121[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  (v267)(v111, v266, v268);
  sub_261CFD6B4();
  *(v126 + v128) = MEMORY[0x2667199C0](v117, &type metadata for UpdateListTypeAppIntent, v231);
  v129 = (v126 + v121[19]);
  *v129 = 0;
  v129[1] = 0;
  v130 = v121[20];
  *(v126 + v130) = 0;
  sub_261C6F0D4(v253, v126 + v121[5], type metadata accessor for AppEntityID);
  v131 = v234;
  *(v126 + v121[21]) = v234;
  v231 = v130;
  if (v131)
  {
    v132 = sub_261D00614();
  }

  else
  {
    v132 = 1;
  }

  v133 = type metadata accessor for AnyListEntityLazyImage();
  v134 = *(v133 + 48);
  v135 = *(v133 + 52);
  v136 = swift_allocObject();
  *&v271 = MEMORY[0x277D84F90];
  sub_261C6F064(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
  sub_261D001D4();
  v137 = sub_261CFECB4();
  v138 = *(v137 + 48);
  v139 = *(v137 + 52);
  swift_allocObject();
  *(v136 + 128) = sub_261CFECA4();
  v140 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v141 = sub_261CFD074();
  (*(*(v141 - 8) + 56))(v136 + v140, 1, 1, v141);
  *(v136 + 16) = v132 & 1;
  *(v136 + 17) = *v275;
  *(v136 + 20) = *&v275[3];
  *(v136 + 24) = 0u;
  *(v136 + 40) = 0u;
  *(v136 + 56) = 0u;
  *(v136 + 72) = 0u;
  *(v136 + 88) = 0u;
  *(v136 + 104) = 0u;
  *(v136 + 120) = 256;
  v142 = v264;
  *(v264 + v121[22]) = v136;
  LOBYTE(v271) = 0;
  sub_261CFD2E4();
  LOBYTE(v271) = 0;
  sub_261CFD2E4();
  LOBYTE(v271) = 0;
  sub_261CFD2E4();
  LOBYTE(v271) = 2;
  sub_261CFD2E4();
  LOBYTE(v271) = 10;
  sub_261CFD2E4();
  LOBYTE(v271) = 2;
  sub_261CFD2E4();
  v274 = 0;
  v272 = 0u;
  v273 = 0u;
  v271 = 0u;
  sub_261CFD2E4();
  *&v273 = 0;
  v271 = 0u;
  v272 = 0u;
  sub_261CFD2E4();
  v143 = v254;
  v144 = v241;
  sub_261AFB668(v254, v241, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v144, v242, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v144, &unk_27FEDD950, &unk_261D01440);
  *v129 = 0;
  v129[1] = 0;
  *(v142 + v231) = 0;
  *&v271 = 0;
  sub_261CFCA14();
  *&v271 = 0;
  sub_261CFCA14();
  *&v271 = v238;
  *(&v271 + 1) = v237;
  sub_261CFCA14();
  LOBYTE(v271) = 0;
  sub_261CFCA14();
  sub_261AE6A40(v143, &unk_27FEDD950, &unk_261D01440);
  sub_261C6F13C(v253, type metadata accessor for AppEntityID);
  v145 = v142;
  v146 = v252;
  sub_261C6FCC8(v145, v252, type metadata accessor for ListEntity);
  v147 = v243;
  sub_261CFF194();
  v148 = v244;
  v149 = v245;
  v150 = (*(v244 + 11))(v147, v245);
  if (v150 == *MEMORY[0x277D453E0])
  {
    (*(v148 + 12))(v147, v149);
    v151 = *v147;
    v264 = *(v147 + 1);
    v254 = *(v147 + 2);
    v152 = *(v147 + 4);

    v153 = v151;
    v154 = [v153 entityName];
    v155 = sub_261CFFA74();
    v157 = v156;

    v158 = v153;
    v253 = v153;
    v159 = [v153 uuid];
    v160 = v209;
    v161 = v248;
    v162 = v248 + *(v209 + 20);
    sub_261CFD834();

    v207(v161 + *(v160 + 24), 1, 1, v208);
    *v161 = v155;
    v161[1] = v157;
    swift_storeEnumTagMultiPayload();
    v244 = type metadata accessor for ListEntity;
    sub_261C6F0D4(v146, v247, type metadata accessor for ListEntity);
    v246 = sub_261CFCB24();
    v163 = v261;
    *v261 = v246;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
    v241 = sub_261C6F064(&qword_280D227A0, type metadata accessor for ListEntity);
    v245 = sub_261CFCA64();
    v163[1] = v245;
    v242 = *(v255 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
    sub_261CFF9B4();
    sub_261CFD874();
    v164 = v251;
    v165 = v267;
    v166 = v268;
    (v267)(v251, v266, v268);
    v167 = v263;
    sub_261CFD6B4();
    v243 = MEMORY[0x2667199E0](v167, &type metadata for UpdateSectionDisplayNameAppIntent);
    *(v163 + v242) = v243;
    v168 = v255;
    v240 = *(v255 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
    sub_261CFF9B4();
    sub_261CFD874();
    v169 = v266;
    v165(v164, v266, v166);
    sub_261CFD6B4();
    v242 = MEMORY[0x2667199F0](v167, &type metadata for UpdateSectionIsCollapsedAppIntent);
    v170 = v261;
    *&v240[v261] = v242;
    v240 = v168[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
    sub_261CFF9B4();
    sub_261CFD874();
    v171 = v169;
    v172 = v267;
    (v267)(v164, v171, v268);
    sub_261CFD6C4();
    v241 = sub_261CFCA54();
    *&v240[v170] = v241;
    v240 = v168[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
    sub_261CFF9B4();
    sub_261CFD874();
    v172(v164, v266, v268);
    sub_261CFD6C4();
    sub_261C6F064(&qword_280D22358, type metadata accessor for ReminderEntity);
    *&v240[v170] = sub_261CFCA54();
    v173 = v248;
    sub_261C6F0D4(v248, v170 + v168[6], type metadata accessor for SectionEntityID);
    v174 = v247;
    v175 = v215;
    v176 = v244;
    sub_261C6F0D4(v247, v215, v244);
    (*(v212 + 56))(v175, 0, 1, v262);
    sub_261AFB668(v175, v216, &unk_27FEDE0C0, &unk_261D02500);
    sub_261CFCA14();
    sub_261AE6A40(v175, &unk_27FEDE0C0, &unk_261D02500);
    v177 = v264;
    *&v271 = v264;
    *(&v271 + 1) = v254;
    v178 = v254;
    sub_261CFD104();
    sub_261CFD2E4();
    LOBYTE(v271) = 0;
    sub_261CFD2E4();
    *&v271 = v177;
    *(&v271 + 1) = v178;
    sub_261CFCA14();
    v179 = v214;
    sub_261C6F0D4(v174, v214, v176);
    sub_261C6F0D4(v179, v213, v176);
    sub_261CFCA14();

    sub_261C6F13C(v179, type metadata accessor for ListEntity);
    sub_261C6F13C(v174, type metadata accessor for ListEntity);
    sub_261C6F13C(v173, type metadata accessor for SectionEntityID);
    v180 = v249;
    v181 = v260;
    goto LABEL_15;
  }

  v180 = v249;
  if (v150 != *MEMORY[0x277D453D8])
  {
    sub_261D00604();
    __break(1u);
    goto LABEL_36;
  }

  v181 = v260;
  if (v210)
  {
    v182 = type metadata accessor for ListEntity;
    v183 = v146;
    goto LABEL_33;
  }

  sub_261CF3F80(v146, v261);
LABEL_15:
  if ((v219 & 1) == 0)
  {
    v192 = v261;
    v193 = *(v261 + *(v255 + 28));
    sub_261CFD2D4();
    if (*(&v271 + 1))
    {
      v194 = v204;
      sub_261CFD874();
      (*(v202 + 56))(v194, 0, 1, v203);
      sub_261B3BA3C();
      v195 = sub_261D00194();
      v197 = v196;
      sub_261AE6A40(v194, &qword_27FEDA708, &qword_261D03298);

      *&v271 = v195;
      *(&v271 + 1) = v197;
      v269 = v218;
      v270 = v217;
      v198 = sub_261D00184();
      sub_261C6F13C(v252, type metadata accessor for ListEntity);

      if (v198)
      {
        v199 = v192;
LABEL_31:
        v200 = v221;
        sub_261C6FCC8(v199, v221, type metadata accessor for SectionEntity);
        return (*(v220 + 56))(v200, 0, 1, v255);
      }
    }

    else
    {
      sub_261C6F13C(v252, type metadata accessor for ListEntity);
    }

    v182 = type metadata accessor for SectionEntity;
    v183 = v192;
LABEL_33:
    sub_261C6F13C(v183, v182);
    return (*(v220 + 56))(v221, 1, 1, v255);
  }

  v184 = sub_261CFD1E4();
  v185 = v184;
  v186 = *(v218 + 16);
  if (!v186)
  {
    LOBYTE(v189) = v184;
LABEL_29:
    sub_261C6F13C(v252, type metadata accessor for ListEntity);
    if (v189)
    {
      v199 = v261;
      goto LABEL_31;
    }

    v182 = type metadata accessor for SectionEntity;
    v183 = v261;
    goto LABEL_33;
  }

  v268 = *(v259 + 16);
  v187 = (v259 + 8);
  v188 = v218 + ((*(v259 + 80) + 32) & ~*(v259 + 80));
  v259 += 16;
  v267 = *(v259 + 56);
  v189 = v184;
  v190 = v258;
  while (1)
  {
    (v268)(v181, v188, v190);
    if ((v185 ^ v189))
    {
      (*v187)(v181, v190);
      goto LABEL_29;
    }

    v191 = v256;
    sub_261C6F0D4(v261, v256, type metadata accessor for SectionEntity);
    *&v271 = v191;
    v189 = sub_261CFDAD4();
    (*v187)(v181, v190);
    if (v180)
    {
      break;
    }

    sub_261C6F13C(v191, type metadata accessor for SectionEntity);
    v188 += v267;
    --v186;
    v181 = v260;
    if (!v186)
    {
      goto LABEL_29;
    }
  }

  sub_261C6F13C(v252, type metadata accessor for ListEntity);
  sub_261C6F13C(v261, type metadata accessor for SectionEntity);
  return sub_261C6F13C(v191, type metadata accessor for SectionEntity);
}

unint64_t sub_261C6EE08(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_261C6F42C(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_261C6EE30(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B0D584;

  return REMStoreIntentPerformer.entities(query:for:)(v6, a2);
}

uint64_t sub_261C6EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.entities(query:matching:)(a1, v10, a3, a4);
}

uint64_t sub_261C6EF7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v17 = *v8;
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.entities(query:matching:mode:sortedBy:limit:excludeSectionlessSections:)(a1, v18, a3, a4 & 1, a5, a6, a7 & 1, a8);
}

uint64_t sub_261C6F064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261C6F0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C6F13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_261C6F19C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 40);
  v8 = *a3;
  v9 = *(result + 32);
  swift_unknownObjectRetain();
  result = sub_261B37CA4(v9);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    sub_261CA4344(v14, v5 & 1);
    v16 = *a3;
    result = sub_261B37CA4(v9);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    result = sub_261D00654();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = v9;
    *(v18[7] + 8 * result) = v7;
    v24 = v18[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v25;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  sub_261CA51C4();
  result = v23;
  v18 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 8 * result);
  v20 = result;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v21 = v18[7];
  v22 = *(v21 + 8 * v20);
  *(v21 + 8 * v20) = v19;
  result = swift_unknownObjectRelease();
  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v6 = *v5;
      v30 = *a3;
      v7 = *(v5 - 1);
      swift_unknownObjectRetain();
      result = sub_261B37CA4(v7);
      v32 = v30[2];
      v33 = (v31 & 1) == 0;
      v13 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v13)
      {
        goto LABEL_23;
      }

      v9 = v31;
      if (v30[3] < v34)
      {
        sub_261CA4344(v34, 1);
        v35 = *a3;
        result = sub_261B37CA4(v7);
        if ((v9 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v9)
      {
        v26 = *(v37[7] + 8 * result);
        v27 = result;
        swift_unknownObjectRetain();

        swift_unknownObjectRelease();
        v28 = v37[7];
        v29 = *(v28 + 8 * v27);
        *(v28 + 8 * v27) = v26;
        result = swift_unknownObjectRelease();
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        *(v37[6] + 8 * result) = v7;
        *(v37[7] + 8 * result) = v6;
        v38 = v37[2];
        v13 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v37[2] = v39;
      }

      v5 += 2;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_261C6F42C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_261B41C94(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_261C146CC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_261C6F4EC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v7 = *(result + 32);
    v47 = *(result + 40);
    v8 = *(result + 48);
    v9 = *a3;
    sub_261CFD104();
    v10 = v7;
    result = sub_261B37DF8(v7);
    v12 = *(v9 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v48 = v4;
    if (*(v9 + 24) < v15)
    {
      sub_261CA3490(v15, v5 & 1);
      v17 = *v4;
      result = sub_261B37DF8(v7);
      if ((v16 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD938, &unk_261D0F170);
      result = sub_261D00654();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v26 = result;
      sub_261CA49F0();
      result = v26;
      v19 = *v48;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v19 = *v4;
    if (v16)
    {
LABEL_8:
      v20 = 16 * result;
      v21 = (v19[7] + 16 * result);
      v23 = *v21;
      v22 = v21[1];
      sub_261CFD104();

      v24 = (v19[7] + v20);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;

LABEL_12:
      v16 = v3 - 1;
      v4 = v48;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 72);
      while (1)
      {
        v8 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v36 = *v4;
        sub_261CFD104();
        v7 = v8;
        result = sub_261B37DF8(v8);
        v38 = *(v36 + 16);
        v39 = (v37 & 1) == 0;
        v14 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v14)
        {
          goto LABEL_23;
        }

        v10 = v37;
        if (*(v36 + 24) < v40)
        {
          sub_261CA3490(v40, 1);
          v41 = *v4;
          result = sub_261B37DF8(v8);
          if ((v10 & 1) != (v42 & 1))
          {
            goto LABEL_5;
          }
        }

        v43 = *v4;
        if (v10)
        {
          v30 = 16 * result;
          v31 = (v43[7] + 16 * result);
          v33 = *v31;
          v32 = v31[1];
          sub_261CFD104();

          v34 = (v43[7] + v30);
          v35 = v34[1];
          *v34 = v33;
          v34[1] = v32;
        }

        else
        {
          v43[(result >> 6) + 8] |= 1 << result;
          *(v43[6] + 8 * result) = v8;
          v44 = (v43[7] + 16 * result);
          *v44 = v3;
          v44[1] = v6;
          v45 = v43[2];
          v14 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v43[2] = v46;
        }

        v5 += 3;
        --v16;
        v4 = v48;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = v7;
    v27 = (v19[7] + 16 * result);
    *v27 = v47;
    v27[1] = v8;
    v28 = v19[2];
    v14 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v29;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_261C6F7A8(uint64_t a1)
{
  v52 = type metadata accessor for AppEntityID();
  v2 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v51 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - v6;
  v58 = type metadata accessor for SectionEntity();
  v8 = *(*(v58 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = MEMORY[0x277D84F98];
  v60 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v54 = *(v11 + 80);
  v16 = *(v11 + 72);
  v56 = (v54 + 32) & ~v54;
  v17 = a1 + v56;
  v53 = xmmword_261D03450;
  v55 = &v50 - v12;
  v59 = v16;
  while (1)
  {
    sub_261C6F0D4(v17, v13, type metadata accessor for SectionEntity);
    v20 = *&v13[*(v58 + 36)];
    sub_261CFCA04();
    v21 = type metadata accessor for ListEntity();
    if ((*(*(v21 - 8) + 48))(v7, 1, v21))
    {
      sub_261AE6A40(v7, &unk_27FEDE0C0, &unk_261D02500);
      v22 = 0;
    }

    else
    {
      v23 = v51;
      sub_261C6F0D4(&v7[*(v21 + 20)], v51, type metadata accessor for AppEntityID);
      sub_261AE6A40(v7, &unk_27FEDE0C0, &unk_261D02500);
      v24 = *(v52 + 20);
      v25 = *v23;
      v26 = v23[1];
      v27 = objc_allocWithZone(MEMORY[0x277D44700]);
      v28 = sub_261CFD814();
      v29 = sub_261CFFA54();
      v22 = [v27 initWithUUID:v28 entityName:v29];

      v30 = v23;
      v13 = v55;
      sub_261C6F13C(v30, type metadata accessor for AppEntityID);
    }

    v32 = sub_261B37DF8(v22);
    v33 = v14[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v14[3] < v35)
    {
      sub_261CA347C(v35, 1);
      v14 = v60;
      v37 = sub_261B37DF8(v22);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_22;
      }

      v32 = v37;
    }

    if (v36)
    {

      v39 = v14[7];
      sub_261C6FCC8(v13, v57, type metadata accessor for SectionEntity);
      v40 = *(v39 + 8 * v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 8 * v32) = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_261B41C94(0, v40[2] + 1, 1, v40);
        *(v39 + 8 * v32) = v40;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        v40 = sub_261B41C94(v42 > 1, v43 + 1, 1, v40);
        *(v39 + 8 * v32) = v40;
      }

      v40[2] = v43 + 1;
      v18 = v40 + v56;
      v19 = v59;
      sub_261C6FCC8(v57, &v18[v43 * v59], type metadata accessor for SectionEntity);
      v13 = v55;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD930, &qword_261D03358);
      v44 = v56;
      v45 = swift_allocObject();
      *(v45 + 16) = v53;
      sub_261C6FCC8(v13, v45 + v44, type metadata accessor for SectionEntity);
      v14[(v32 >> 6) + 8] |= 1 << v32;
      *(v14[6] + 8 * v32) = v22;
      *(v14[7] + 8 * v32) = v45;
      v46 = v14[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_21;
      }

      v14[2] = v48;
      v19 = v59;
    }

    v17 += v19;
    if (!--v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD938, &unk_261D0F170);
  result = sub_261D00654();
  __break(1u);
  return result;
}

uint64_t sub_261C6FCC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261C6FD40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v5 = type metadata accessor for SectionEntity();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-v11 - 8];
  UpdateSectionAppIntent.init()(&v23);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  sub_261B2EAD0(a1, v12);
  sub_261B2EAD0(v12, v10);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v12);

  v17 = *(a1 + *(v6 + 36));
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD2D4();
  sub_261CFCBC4();
  v18 = *(a1 + *(v6 + 40));
  sub_261CFD2D4();
  sub_261CFCBC4();
  v19 = *a1;
  sub_261CFCA04();
  sub_261CFCBC4();
  sub_261AE498C(v21, &v23);
  sub_261AE498C(&v23, v22);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(&v23);

  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  return result;
}

uint64_t UpdateSectionAppIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261C7004C, v5, v4);
}

uint64_t sub_261C7004C()
{
  sub_261B30804(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_261BC28BC;
  v2 = *(v0 + 96);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t UpdateSectionAppIntent.title.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261C7017C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionAppIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t static UpdateSectionAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDD9F8 = a1;
  return result;
}

uint64_t sub_261C703D0()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDDA00);
  __swift_project_value_buffer(v9, qword_27FEDDA00);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSectionAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSectionAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261C70978(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SectionEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  sub_261B2EAD0(a1, &v17 - v9);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  sub_261B2EAD0(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v10);
}

uint64_t UpdateSectionAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for SectionEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 8);
  sub_261B2EAD0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*UpdateSectionAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSectionAppIntent.displayName.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261C70BFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionAppIntent.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t UpdateSectionAppIntent.isCollapsed.getter()
{
  v1 = *(v0 + 24);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261C70D6C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionAppIntent.isCollapsed.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSectionAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v87 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v71 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v57 - v6;
  v85 = sub_261CFD674();
  v88 = *(v85 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD6A4();
  v81 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_261CFD184();
  v19 = *(v72 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v72);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v67 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v57 - v34;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v36 = *(v16 + 56);
  v80 = v16 + 56;
  v84 = v36;
  v37 = v35;
  v36(v35, 1, 1, v15);
  v65 = sub_261CFF994();
  v90 = 0;
  v91 = 0;
  v38 = *(v65 - 8);
  v64 = *(v38 + 56);
  v66 = v38 + 56;
  v62 = v31;
  v64(v31, 1, 1, v65);
  v39 = sub_261CFC834();
  v40 = *(v39 - 8);
  v82 = *(v40 + 56);
  v83 = v40 + 56;
  v82(v27, 1, 1, v39);
  v86 = *MEMORY[0x277CBA308];
  v73 = *(v19 + 104);
  v77 = v19 + 104;
  v41 = v61;
  v73(v61);
  *v87 = sub_261CFCD04();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v76 = *MEMORY[0x277CC9110];
  v42 = *(v88 + 104);
  v88 += 104;
  v75 = v42;
  v43 = v69;
  v42(v69);
  sub_261CFD6B4();
  v58 = v37;
  v84(v37, 1, 1, v81);
  v44 = type metadata accessor for SectionEntity();
  (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
  v59 = v27;
  v74 = v39;
  v45 = v82;
  v82(v27, 1, 1, v39);
  v45(v67, 1, 1, v39);
  v46 = v41;
  v47 = v41;
  v48 = v72;
  v49 = v73;
  (v73)(v47, v86, v72);
  sub_261BB64D0();
  v50 = v46;
  v87[1] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  v75(v43, v76, v85);
  sub_261CFD6B4();
  v51 = v58;
  v84(v58, 1, 1, v81);
  v90 = 0;
  v91 = 0;
  v64(v62, 1, 1, v65);
  v52 = v59;
  v82(v59, 1, 1, v74);
  (v49)(v50, v86, v48);
  v53 = sub_261CFCD24();
  v54 = v87;
  v87[2] = v53;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v75(v43, v76, v85);
  sub_261CFD6B4();
  v84(v51, 1, 1, v81);
  LOBYTE(v90) = 2;
  v55 = sub_261CFFCE4();
  (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
  v82(v52, 1, 1, v74);
  (v73)(v50, v86, v72);
  v54[3] = sub_261CFCD44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A8, &qword_261D02CF0);
  v89 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v54[4] = result;
  return result;
}

unint64_t sub_261C7198C()
{
  result = qword_27FEDDA18;
  if (!qword_27FEDDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA18);
  }

  return result;
}

uint64_t sub_261C71A64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C71B54(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261C71BFC, v5, v4);
}

uint64_t sub_261C71BFC()
{
  sub_261B30804(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_261BC3C30;
  v2 = *(v0 + 96);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t sub_261C71CC8(uint64_t a1)
{
  v2 = sub_261C30BF4();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t destroy for UpdateSectionAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];
}

void *initializeWithCopy for UpdateSectionAppIntent(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateSectionAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v7 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v8 = a2[4];
  v9 = a1[4];
  a1[4] = v8;
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for UpdateSectionAppIntent(void *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);

  v8 = a1[4];
  a1[4] = *(a2 + 32);

  return a1;
}

uint64_t dispatch thunk of UpdateSectionIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_261C7201C()
{
  result = qword_27FEDA3F8;
  if (!qword_27FEDA3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA3B0, &qword_261D02D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA3F8);
  }

  return result;
}

uint64_t CreateListAppIntent.name.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t CreateListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v53[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v53[-v6];
  v66 = sub_261CFD674();
  v59 = *(v66 - 8);
  v7 = v59[8];
  MEMORY[0x28223BE20](v66);
  v58 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_261CFD6A4();
  v71 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v65 = &v53[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_261CFD184();
  v19 = *(v77 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v77);
  v22 = &v53[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v29 = &v53[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v53[-v32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC20, &unk_261D03A70);
  v34 = *(v16 + 56);
  v70 = v16 + 56;
  v72 = v34;
  v34(v33, 1, 1, v15);
  LOBYTE(v79) = 0;
  v35 = sub_261CFC834();
  v67 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v68 = v37;
  v69 = v36 + 56;
  v63 = v29;
  v37(v29, 1, 1, v35);
  v60 = v27;
  v37(v27, 1, 1, v35);
  v74 = *MEMORY[0x277CBA308];
  v38 = *(v19 + 104);
  v75 = v19 + 104;
  v76 = v38;
  v64 = v22;
  v38(v22);
  sub_261AFF54C();
  *v73 = sub_261CFCBF4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v40 = v59[13];
  v41 = v58;
  v54 = *MEMORY[0x277CC9110];
  v39 = v54;
  v42 = v66;
  (v40)(v58, v54, v66);
  v59 = v40;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  (v40)(v41, v39, v42);
  sub_261CFD6C4();
  v72(v33, 0, 1, v71);
  v43 = sub_261CFF994();
  v79 = 0;
  v80 = 0;
  (*(*(v43 - 8) + 56))(v61, 1, 1, v43);
  v68(v63, 1, 1, v67);
  v76(v64, v74, v77);
  v44 = sub_261CFCD24();
  v45 = v73;
  v73[1] = v44;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB140, &unk_261D051A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v46 = v54;
  v47 = v66;
  v48 = v59;
  (v59)(v41, v54, v66);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v48(v41, v46, v47);
  sub_261CFD6C4();
  v72(v33, 0, 1, v71);
  v49 = type metadata accessor for GroupEntity();
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  v50 = v67;
  v51 = v68;
  v68(v63, 1, 1, v67);
  v51(v60, 1, 1, v50);
  v76(v64, v74, v77);
  sub_261C73B88(&qword_280D22670, type metadata accessor for GroupEntity);
  v45[2] = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA38, &qword_261D0F318);
  v78 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v45[3] = result;
  return result;
}

uint64_t sub_261C72ACC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_261B7CD38(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  sub_261B7CD38(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B7CDA8(v10);
}

uint64_t CreateListAppIntent.group.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_261B7CD38(a1, &v8 - v6);
  sub_261CFCBC4();
  return sub_261B7CDA8(a1);
}

uint64_t sub_261C72C7C(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t CreateListAppIntent.type.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*CreateListAppIntent.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C72DEC()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDDA20);
  __swift_project_value_buffer(v9, qword_27FEDDA20);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C38 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*CreateListAppIntent.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*CreateListAppIntent.group.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t CreateListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C73548, v5, v4);
}

uint64_t sub_261C73548()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B06958;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_261C5C7D0(v10, "CreateListAppIntent", 19, 2, v8, v9, v6, v7);
}

uint64_t sub_261C7363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_261CFFD24();
  v5[16] = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_261C736DC, v7, v6);
}

uint64_t sub_261C736DC()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B24B0C(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_261B06CB8;
  v10 = v0[11];

  return (v12)(v10, v0 + 7, v5, v6);
}

uint64_t static CreateListAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA40, &qword_261D0F348);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA48, &qword_261D0F350);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31558();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA50, &qword_261D0F380);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDA58, &qword_261D0F3B0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261C73A74()
{
  swift_getKeyPath();
  sub_261B31558();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

unint64_t sub_261C73B34()
{
  result = qword_27FEDDA60;
  if (!qword_27FEDDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA60);
  }

  return result;
}

uint64_t sub_261C73B88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261C73BD4()
{
  result = qword_27FEDDA68;
  if (!qword_27FEDDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA68);
  }

  return result;
}

unint64_t sub_261C73C2C()
{
  result = qword_27FEDDA70;
  if (!qword_27FEDDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDA70);
  }

  return result;
}

uint64_t sub_261C73CD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C38 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDA20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C73D80(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C73E24, v5, v4);
}

uint64_t sub_261C73E24()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B07CF8;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_261C5C7D0(v10, "CreateListAppIntent", 19, 2, v8, v9, v6, v7);
}

uint64_t dispatch thunk of CreateListIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261C74064()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDA98);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDA98);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C7412C()
{
  sub_261C759F4(v0 + 16);

  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_261C74198(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = sub_261CFE504();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v3 + 104) = v11;
  *(v3 + 112) = v10;

  return MEMORY[0x2822009F8](sub_261C74304, v11, v10);
}

uint64_t sub_261C74304()
{
  if (qword_27FED9C40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDDA98);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderCreationUI: commit editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    v11 = *(MEMORY[0x277D45DC8] + 4);
    swift_unknownObjectRetain();
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_261C74548;
    v13 = *(v0 + 88);
    v14 = *(v0 + 48);

    return MEMORY[0x2821A8570](v13, v14, ObjectType, v8);
  }

  else
  {
    v15 = *(v0 + 96);

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = *(v0 + 48);
    **(v0 + 16) = 1;

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_261C74548()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 112);
  v7 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_261C75A1C, v7, v6);
}

uint64_t sub_261C746CC(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = sub_261CFE504();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v3 + 104) = v11;
  *(v3 + 112) = v10;

  return MEMORY[0x2822009F8](sub_261C74838, v11, v10);
}

uint64_t sub_261C74838()
{
  if (qword_27FED9C40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDDA98);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderCreationUI: cancel editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    v11 = *(MEMORY[0x277D45DC0] + 4);
    swift_unknownObjectRetain();
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_261C74A7C;
    v13 = *(v0 + 88);
    v14 = *(v0 + 48);

    return MEMORY[0x2821A8568](v13, v14, ObjectType, v8);
  }

  else
  {
    v15 = *(v0 + 96);

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = *(v0 + 48);
    **(v0 + 16) = 1;

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_261C74A7C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 112);
  v7 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_261C74C00, v7, v6);
}

uint64_t sub_261C74C00()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  v7 = *(v6 + 16);
  v7(v3, v2, v5);
  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D45E00])
  {
    v9 = 0;
LABEL_7:
    v10 = *(v0 + 120);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    swift_unknownObjectRelease();
    v15 = *(v14 + 8);
    v15(v11, v13);
    v15(v12, v13);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = *(v0 + 48);
    **(v0 + 16) = v9;

    v20 = *(v0 + 8);

    return v20();
  }

  if (v8 == *MEMORY[0x277D45DF8])
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D45DF0])
  {
    v9 = 2;
    goto LABEL_7;
  }

  v22 = *(v0 + 56);

  return sub_261D00604();
}

uint64_t sub_261C74DC0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_261C74DFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_261C74E5C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_261C74EF0;
}

void sub_261C74EF0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_261C74F74()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = sub_261CFE4F4();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_261C75028(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*(v3 + 40))
  {
    return 0;
  }

  v5 = *(v3 + 48);
  v6 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(a3) = a3(ObjectType, v5);
  swift_unknownObjectRelease();
  return a3 & 1;
}

uint64_t sub_261C750A4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    swift_unknownObjectRetain();
    sub_261CFE4B4();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261C75154(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF4BDC;

  return sub_261C74198(a1, a2);
}

uint64_t sub_261C751FC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return sub_261C746CC(a1, a2);
}

uint64_t sub_261C752A4()
{
  v0 = sub_261CFED34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF674();
  v5 = *MEMORY[0x277D45918];
  v6 = sub_261CFF644();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  (*(v1 + 104))(v4, *MEMORY[0x277D44EA8], v0);
  MEMORY[0x26671BD30](v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_261C753E8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &off_287446A08, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261C754B4()
{
  qword_27FED9E08 = 0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, &off_287446A08, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261C75548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB0, &qword_261D0F650);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_261CFED34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF674();
  v11 = *MEMORY[0x277D45928];
  v12 = sub_261CFF644();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  (*(v7 + 104))(v10, *MEMORY[0x277D44EA8], v6);
  MEMORY[0x26671BD30](v10);
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v0 + 24);
    v15 = sub_261CFE6F4();
    if (v15)
    {
      v16 = v15;
      v17 = sub_261CFE6E4();
      if (qword_27FED9B40 != -1)
      {
        swift_once();
      }

      objc_setAssociatedObject(v16, qword_27FEDC830, v17, 1);

      sub_261C17528(v16, *(v1 + 32));
      v28 = v16;
      v18 = v16;
      v19 = [v18 displayDate];
      if (v19)
      {

        qword_27FED9E08 |= 1uLL;
      }

      sub_261B71AAC();
      sub_261CFE1E4();

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB8, &qword_261D0F658);
      v21 = (*(*(v20 - 8) + 48))(v5, 1, v20);
      sub_261C7598C(v5);
      if (v21 != 1)
      {
        qword_27FED9E08 |= 2uLL;
      }

      ObjectType = swift_getObjectType();
      (*(v14 + 24))(v1, &off_287446A08, v18, ObjectType, v14);
    }

    else
    {
      if (qword_27FED9C40 != -1)
      {
        swift_once();
      }

      v23 = sub_261CFF7A4();
      __swift_project_value_buffer(v23, qword_27FEDDA98);
      v24 = sub_261CFF784();
      v25 = sub_261CFFE64();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261AE2000, v24, v25, "ReminderCreationUI: unexpectedly got optimisticReminder=nil from reminderDetailDidCommit", v26, 2u);
        MEMORY[0x26671D560](v26, -1, -1);
      }

      qword_27FED9E08 = 0;
      v27 = swift_getObjectType();
      (*(v14 + 16))(v1, &off_287446A08, v27, v14);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261C7598C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB0, &qword_261D0F650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RemindersInCalendarEditingResult.hashValue.getter()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

unint64_t sub_261C75AAC()
{
  result = qword_27FEDDAC0;
  if (!qword_27FEDDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDAC0);
  }

  return result;
}

uint64_t AnyListEntityLazyImage.displayRepresentationImage.getter()
{
  v3 = v0[16];
  v2 = *v0;
  sub_261CFECB4();
  sub_261CFCDA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  sub_261CFF654();
}

uint64_t AnyListEntityLazyImage.__allocating_init(for:)(__int128 *a1)
{
  v3 = sub_261CFEC94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  v7 = swift_allocObject();
  v18 = a1[4];
  *v19 = a1[5];
  *&v19[10] = *(a1 + 90);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  sub_261BA9C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  v8 = sub_261CFECB4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v7 + 128) = sub_261CFECA4();
  v11 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v12 = sub_261CFD074();
  (*(*(v12 - 8) + 56))(v7 + v11, 1, 1, v12);
  *(v7 + 80) = v18;
  *(v7 + 96) = *v19;
  *(v7 + 106) = *&v19[10];
  *(v7 + 16) = v14;
  *(v7 + 32) = v15;
  *(v7 + 48) = v16;
  *(v7 + 64) = v17;
  return v7;
}

uint64_t sub_261C75D6C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDAC8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDAC8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_OWORD *AnyListEntityLazyImage.init(for:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_261CFEC94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v16 = a1[4];
  *v17 = a1[5];
  *&v17[10] = *(a1 + 90);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  sub_261BA9C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  v6 = sub_261CFECB4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v1 + 128) = sub_261CFECA4();
  v9 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v10 = sub_261CFD074();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v2[5] = v16;
  v2[6] = *v17;
  *(v2 + 106) = *&v17[10];
  v2[1] = v12;
  v2[2] = v13;
  v2[3] = v14;
  v2[4] = v15;
  return v2;
}

uint64_t sub_261C75FB8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  swift_beginAccess();
  sub_261BA9C98(a1 + v10, v9);
  v11 = sub_261CFD074();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_261BBB1CC(v9);
    (*(v12 + 56))(a3, 1, 1, v11);
    sub_261CFCDA4();
    sub_261C77E20(a3, a1, a2);

    swift_beginAccess();
    sub_261C77DB0(a3, a1 + v10);
    return swift_endAccess();
  }

  else
  {
    (*(v12 + 32))(a3, v9, v11);
    return (*(v12 + 56))(a3, 0, 1, v11);
  }
}

uint64_t sub_261C7618C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = a2[4];
  v9 = a2[6];
  v25 = a2[5];
  v26[0] = v9;
  *(v26 + 10) = *(a2 + 106);
  v10 = a2[2];
  v22[0] = a2[1];
  v22[1] = v10;
  v11 = a2[4];
  v13 = a2[1];
  v12 = a2[2];
  v23 = a2[3];
  v24 = v11;
  v14 = a2[6];
  v20 = v25;
  v21[0] = v14;
  *(v21 + 10) = *(a2 + 106);
  v16 = v13;
  v17 = v12;
  v18 = v23;
  v19 = v8;
  sub_261C78058(v22, v27);
  sub_261C762B8(&v16, v7);
  v27[4] = v20;
  v28[0] = v21[0];
  *(v28 + 10) = *(v21 + 10);
  v27[0] = v16;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  sub_261C78090(v27);
  return sub_261C780C0(v7, a1);
}

void sub_261C762B8(char *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v93 = sub_261CFDC94();
  v92 = *(v93 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD044();
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = *(v96 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v88 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v81 - v10;
  MEMORY[0x28223BE20](v9);
  v95 = &v81 - v11;
  v12 = sub_261CFDED4();
  v103 = *(v12 - 1);
  v104 = v12;
  v13 = v103[8];
  MEMORY[0x28223BE20](v12);
  v102 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_261CFF8D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = a1[7];
  v22 = *(a1 + 5);
  v23 = *(a1 + 1);
  v24 = *(a1 + 1);
  v101 = *(a1 + 2);
  v26 = *(a1 + 3);
  v25 = *(a1 + 4);
  v98 = v24;
  v99 = v26;
  v100 = v25;
  v27 = *(a1 + 6);
  v94 = *(a1 + 5);
  v82 = v27;
  v28 = *(a1 + 8);
  v90 = *(a1 + 7);
  v83 = v28;
  v29 = *(a1 + 10);
  v84 = *(a1 + 9);
  v85 = v29;
  v30 = *(a1 + 12);
  v86 = *(a1 + 11);
  v87 = v30;
  v31 = a1[104];
  v32 = a1[105];
  sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
  *v19 = sub_261CFFF04();
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  LOBYTE(a1) = sub_261CFF8E4();
  (*(v16 + 8))(v19, v15);
  if (a1)
  {
    v33 = v20;
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        LOBYTE(v106) = v20;
        *(&v106 + 1) = v23;
        HIBYTE(v106) = (v23 | ((v22 | (v21 << 16)) << 32)) >> 48;
        *(&v106 + 5) = (v23 | ((v22 | (v21 << 16)) << 32)) >> 32;
        v107 = v98;
        v108 = v101;
        v109 = v99;
        v110 = v100;
        v35 = sub_261CA695C();
        sub_261C76E38(v35, v105);
      }

      else
      {
        sub_261C7711C(v105);
      }

      return;
    }

    if (!v32)
    {
      v21 = **(&unk_279AFAA28 + v20);
      v23 = sub_261CFFEC4();
      v19 = sub_261CFFEB4();
      v31 = [objc_allocWithZone(sub_261CFDF14()) initWithFrame_];
      if (v23)
      {
        v34 = v23;
        sub_261CFDEF4();
      }

      else
      {
        v40 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
        sub_261C77438(v40);
      }

      v42 = v102;
      v41 = v103;
      *v102 = 0;
      (v41[13])(v42, *MEMORY[0x277D45CB8], v104);
      sub_261CFDF04();
      [v31 setTintColor_];
      v43 = [objc_opt_self() ttr_systemWhiteColor];
      sub_261CFDEB4();
      v44 = sub_261D000A4();
      if (v44)
      {
        v45 = v44;
        v46 = UIImagePNGRepresentation(v44);
        if (v46)
        {
          v47 = v46;
          sub_261CFD774();
          v103 = v21;
          v104 = v23;

          v48 = v95;
          sub_261CFD034();
          v49 = v96;
          v50 = v19;
          v51 = v97;
          (*(v96 + 16))(v89, v48, v97);
          v52 = v105;
          sub_261CFD054();

          (*(v49 + 8))(v48, v51);
          v53 = sub_261CFD074();
          (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
          return;
        }
      }

      if (qword_27FED9C48 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }

    if (v31 == 2)
    {
      v36 = 0;
      v37 = v101;
      if (v101)
      {
LABEL_10:
        v106 = v98;
        v107 = v37;
        v108 = v99;
        v109 = v100;
        v110 = v94;
        v38 = sub_261CA695C();
        goto LABEL_26;
      }
    }

    else
    {
      if (v90)
      {
        v106 = v82;
        v107 = v90;
        v108 = v83;
        v109 = v84;
        v110 = v85;
        v111 = v86;
        v112 = v87;
        sub_261CFD104();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v39 = sub_261B42C3C(v31 & 1);
      }

      else
      {
        v39 = 0;
      }

      sub_261CFDCC4();
      v59 = v91;
      sub_261CFDCB4();
      v60 = sub_261CFDC84();

      (*(v92 + 8))(v59, v93);
      v36 = v60;
      v37 = v101;
      if (v101)
      {
        goto LABEL_10;
      }
    }

    v38 = 0;
LABEL_26:
    v61 = [objc_allocWithZone(sub_261CFDF14()) initWithFrame_];
    if (v38)
    {
      v62 = v38;
    }

    else
    {
      v62 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
      v38 = 0;
    }

    v63 = v38;
    sub_261C77438(v62);

    v65 = v102;
    v64 = v103;
    *v102 = 0;
    (v64[13])(v65, *MEMORY[0x277D45CB8], v104);
    sub_261CFDF04();
    [v61 setTintColor_];
    v66 = [objc_opt_self() ttr_systemWhiteColor];
    sub_261CFDEB4();
    v67 = sub_261D000A4();
    if (v67)
    {
      v68 = v67;
      v69 = UIImagePNGRepresentation(v67);
      if (v69)
      {
        v104 = v63;
        v70 = v69;
        sub_261CFD774();

        v71 = v88;
        if (v33)
        {
          sub_261CFD034();
        }

        else
        {
          sub_261CFD024();
        }

        v77 = v96;
        v78 = v97;
        (*(v96 + 16))(v95, v71, v97);
        v79 = v105;
        sub_261CFD054();

        (*(v77 + 8))(v71, v78);
        v80 = sub_261CFD074();
        (*(*(v80 - 8) + 56))(v79, 0, 1, v80);

LABEL_41:
        return;
      }
    }

    if (qword_27FED9C48 != -1)
    {
      swift_once();
    }

    v72 = sub_261CFF7A4();
    __swift_project_value_buffer(v72, qword_27FEDDAC8);
    v73 = sub_261CFF784();
    v74 = sub_261CFFE64();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_261AE2000, v73, v74, "AnyListEntityLazyImage.displayRepresentationImageForList: cannot load image data", v75, 2u);
      MEMORY[0x26671D560](v75, -1, -1);
    }

    v76 = sub_261CFD074();
    (*(*(v76 - 8) + 56))(v105, 1, 1, v76);

    goto LABEL_41;
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_20:
  v54 = sub_261CFF7A4();
  __swift_project_value_buffer(v54, qword_27FEDDAC8);
  v55 = sub_261CFF784();
  v56 = sub_261CFFE64();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_261AE2000, v55, v56, "AnyListEntityLazyImage.displayRepresentationImageForList: cannot load image data", v57, 2u);
    MEMORY[0x26671D560](v57, -1, -1);
  }

  v58 = sub_261CFD074();
  (*(*(v58 - 8) + 56))(v105, 1, 1, v58);
}

uint64_t sub_261C76E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFD044();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = [objc_allocWithZone(sub_261CFDF14()) initWithFrame_];
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
  }

  v8 = a1;
  sub_261C77438(v7);
  v9 = [objc_opt_self() ttr_systemWhiteColor];
  sub_261CFDEB4();
  v10 = sub_261D000A4();
  if (v10)
  {
    v11 = v10;
    v12 = UIImagePNGRepresentation(v10);
    if (v12)
    {
      v13 = v12;
      sub_261CFD774();

      sub_261CFD034();
      sub_261CFD054();

      v14 = sub_261CFD074();
      return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    }
  }

  if (qword_27FED9C48 != -1)
  {
    swift_once();
  }

  v16 = sub_261CFF7A4();
  __swift_project_value_buffer(v16, qword_27FEDDAC8);
  v17 = sub_261CFF784();
  v18 = sub_261CFFE64();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_261AE2000, v17, v18, "AnyListEntityLazyImage.displayRepresentationImageForBadge: cannot load image data", v19, 2u);
    MEMORY[0x26671D560](v19, -1, -1);
  }

  v20 = sub_261CFD074();
  v21 = *(*(v20 - 8) + 56);

  return v21(a2, 1, 1, v20);
}

uint64_t sub_261C7711C@<X0>(uint64_t a1@<X8>)
{
  sub_261B05020(0, &qword_27FEDDAE0, 0x277D755B8);
  v2 = sub_261D000D4();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTintColor_];

    v6 = sub_261D000A4();
    if (v6)
    {
      v7 = v6;
      v8 = UIImagePNGRepresentation(v6);
      if (v8)
      {
        v9 = v8;
        sub_261CFD774();

        sub_261CFD064();
        v10 = 0;
        goto LABEL_16;
      }
    }

    if (qword_27FED9C48 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FEDDAC8);
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261AE2000, v15, v16, "AnyListEntityLazyImage.displayRepresentationImage: cannot load group image data", v17, 2u);
      MEMORY[0x26671D560](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27FED9C48 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FEDDAC8);
    v3 = sub_261CFF784();
    v12 = sub_261CFFE64();
    if (os_log_type_enabled(v3, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261AE2000, v3, v12, "AnyListEntityLazyImage.displayRepresentationImage: cannot load group image: rectangle.stack", v13, 2u);
      MEMORY[0x26671D560](v13, -1, -1);
    }
  }

  v10 = 1;
LABEL_16:

  v18 = sub_261CFD074();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, v10, 1, v18);
}

uint64_t sub_261C77438(void *a1)
{
  v2 = [a1 emoji];
  if (v2)
  {
    v3 = v2;
    sub_261CFFA74();

    v4 = sub_261CFDEE4();
    v5.n128_u64[0] = 30.0;

    return MEMORY[0x2821A81F8](v4, v5);
  }

  else
  {
    v6 = [a1 emblem];
    if (v6)
    {
      v7 = v6;
      sub_261CFFFC4();
    }

    else
    {
      v8 = *MEMORY[0x277D44960];
      sub_261CFFFC4();
    }

    return sub_261CFDEF4();
  }
}

uint64_t AnyListEntityLazyImage.deinit()
{
  sub_261C77574(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), HIBYTE(*(v0 + 120)));
  v1 = *(v0 + 128);

  sub_261BBB1CC(v0 + OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage);
  return v0;
}

void sub_261C77574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  if (a15 == 2)
  {
  }

  else if (a15 == 1)
  {
    sub_261AF9C70(a2, a3);

    sub_261AF98C8(a7, a8);
  }
}

uint64_t AnyListEntityLazyImage.__deallocating_deinit()
{
  sub_261C77574(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), HIBYTE(*(v0 + 120)));
  v1 = *(v0 + 128);

  sub_261BBB1CC(v0 + OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AnyListEntityLazyImage()
{
  result = qword_280D220C0;
  if (!qword_280D220C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261C77770()
{
  sub_261C77844();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_261C77844()
{
  if (!qword_280D22DC0)
  {
    sub_261CFD074();
    v0 = sub_261D00154();
    if (!v1)
    {
      atomic_store(v0, &qword_280D22DC0);
    }
  }
}

void sub_261C7789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  if (a15 == 2)
  {
    sub_261CFCDA4();
    sub_261CFD104();
    sub_261CFCDA4();

    sub_261CFCDA4();
  }

  else if (a15 == 1)
  {
    sub_261AF9C0C(a2, a3);

    sub_261AF9844(a7, a8);
  }
}

uint64_t initializeWithCopy for AnyListEntityLazyImage.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 105);
  sub_261C7789C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 105) = v18;
  return a1;
}

uint64_t assignWithCopy for AnyListEntityLazyImage.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  v30 = *(a2 + 105);
  sub_261C7789C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29, v30);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  *(a1 + 96) = v28;
  *(a1 + 104) = v29;
  *(a1 + 105) = v30;
  sub_261C77574(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, SHIBYTE(v23));
  return a1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for AnyListEntityLazyImage.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  sub_261C77574(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16, SHIBYTE(v16));
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyListEntityLazyImage.Parameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 106))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 105);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyListEntityLazyImage.Parameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 105) = -a2;
    }
  }

  return result;
}

uint64_t sub_261C77D50(uint64_t a1)
{
  if (*(a1 + 105) <= 2u)
  {
    return *(a1 + 105);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_261C77D68(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 3;
    *(result + 104) = 0;
  }

  *(result + 105) = a2;
  return result;
}

uint64_t sub_261C77DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C77E20(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  if ([objc_opt_self() isMainThread])
  {

    return sub_261C7618C(a1, a2);
  }

  else
  {
    sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
    v6 = sub_261CFFF04();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_261C78004;
    *(v7 + 24) = v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_261C78010;
    *(v8 + 24) = v7;
    aBlock[4] = sub_261C78038;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261C92E40;
    aBlock[3] = &block_descriptor_2;
    v9 = _Block_copy(aBlock);
    sub_261CFCDA4();

    dispatch_sync(v6, v9);

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_261C78010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

uint64_t sub_261C780C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double ListBadgeEntity.init(emblem:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0x3A6D656C626D65;
  *&v10 = 0xE700000000000000;
  MEMORY[0x26671C210]();
  ListBadgeEntity.init(id:emblem:emoji:)(0x3A6D656C626D65, 0xE700000000000000, a1, a2, 0, 0, &v9);
  v6 = v11;
  v7 = v12;
  *a3 = v9;
  result = *&v10;
  *(a3 + 8) = v10;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t ListBadgeEntity.init(id:emblem:emoji:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *&v42 = a5;
  *(&v42 + 1) = a6;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  v43 = a1;
  v44 = a2;
  v45 = a7;
  v40[0] = sub_261CFEC94();
  v7 = *(*(v40[0] - 8) + 64);
  MEMORY[0x28223BE20](v40[0]);
  v40[1] = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD674();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_261CFFA44();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_261CFD6A4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v10 + 104);
  v21(v13, v20, v9);
  sub_261CFD6C4();
  v22 = sub_261CFCB14();
  sub_261CFF9B4();
  sub_261CFD874();
  v21(v13, v20, v9);
  sub_261CFD6C4();
  v23 = sub_261CFCB14();
  v46 = v41;
  v24 = *(&v41 + 1);
  sub_261CFD104();
  sub_261CFCA14();
  v46 = v42;
  result = sub_261CFCA14();
  if (v24)
  {

    v26 = type metadata accessor for AnyListEntityLazyImage();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    *&v46 = MEMORY[0x277D84F90];
    sub_261BA9C40();
    v30 = v44;
    sub_261CFD104();
    sub_261CFCDA4();
    sub_261CFCDA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
    sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
    sub_261D001D4();
    v31 = sub_261CFECB4();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    *(v29 + 128) = sub_261CFECA4();
    v34 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
    v35 = sub_261CFD074();
    result = (*(*(v35 - 8) + 56))(v29 + v34, 1, 1, v35);
    v36 = v46;
    *(v29 + 72) = v47;
    v37 = v49;
    *(v29 + 88) = v48;
    *(v29 + 104) = v37;
    v38 = v43;
    *(v29 + 16) = v43;
    *(v29 + 24) = v30;
    *(v29 + 32) = v22;
    *(v29 + 40) = v23;
    *(v29 + 48) = 0;
    *(v29 + 120) = v50;
    *(v29 + 56) = v36;
    *(v29 + 121) = 2;
  }

  else
  {
    v29 = 0;
    v38 = v43;
    v30 = v44;
  }

  v39 = v45;
  *v45 = v38;
  v39[1] = v30;
  v39[2] = v22;
  v39[3] = v23;
  v39[4] = v29;
  return result;
}

uint64_t ListBadgeEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261CFD104();
  return v1;
}

uint64_t ListBadgeEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ListBadgeEntity.emblem.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261C7871C(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v7 = *a1;
  v8 = a1[1];
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ListBadgeEntity.emblem.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t ListBadgeEntity.emoji.getter()
{
  v1 = *(v0 + 24);
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261C788B0(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v7 = *a1;
  v8 = a1[1];
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ListBadgeEntity.emoji.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261C78A10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDDAE8);
  __swift_project_value_buffer(v15, qword_27FEDDAE8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t static ListBadgeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ListBadgeEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ListBadgeEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDDAE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261C78F34@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261C78FF4(uint64_t a1)
{
  if (qword_27FED9C50 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDAE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ListBadgeEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = sub_261CFD074();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD6A4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - v22;
  v24 = v1[3];
  v25 = v1[4];
  v31 = *v1;
  v32 = *(v1 + 1);
  v33 = v24;
  v34 = v25;
  sub_261C794D8(&v28 - v22);
  if (!v25)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_5;
  }

  AnyListEntityLazyImage.displayRepresentationImage.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    sub_261BBB1CC(v10);
    (*(v17 + 16))(v21, v23, v16);
    (*(v17 + 56))(v29, 1, 1, v16);
    (*(v12 + 56))(v28, 1, 1, v11);
    sub_261CFD0A4();
    return (*(v17 + 8))(v23, v16);
  }

  (*(v12 + 32))(v15, v10, v11);
  (*(v17 + 16))(v21, v23, v16);
  (*(v17 + 56))(v29, 1, 1, v16);
  v26 = v28;
  (*(v12 + 16))(v28, v15, v11);
  (*(v12 + 56))(v26, 0, 1, v11);
  sub_261CFD0A4();
  (*(v12 + 8))(v15, v11);
  return (*(v17 + 8))(v23, v16);
}

uint64_t sub_261C794D8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_261CFD674();
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFFA24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  sub_261CFCA04();
  v18 = v32;
  if (v32)
  {
    v19 = v31;
    if (qword_27FED9C60 != -1)
    {
      v25 = v31;
      swift_once();
      v19 = v25;
    }

    v20 = qword_27FEF3EF8;
    if (*(qword_27FEF3EF8 + 16))
    {
      v21 = sub_261B37CE8(v19, v18);
      v23 = v22;

      if (v23)
      {
        (*(v12 + 16))(v15, *(v20 + 56) + *(v12 + 72) * v21, v11);
        return (*(v12 + 32))(v30, v15, v11);
      }
    }

    else
    {
    }
  }

  sub_261CFCA04();
  if (v32)
  {
    sub_261CFFA14();
    sub_261CFFA04();
    sub_261CFF9E4();

    sub_261CFFA04();
    return sub_261CFD684();
  }

  else
  {
    sub_261CFF9B4();
    sub_261CFD874();
    (*(v27 + 104))(v28, *MEMORY[0x277CC9110], v29);
    return sub_261CFD6C4();
  }
}

uint64_t sub_261C79898@<X0>(void *a1@<X8>)
{
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDDB00;
  return sub_261CFCDA4();
}

uint64_t static ListBadgeEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDDB00;
  return sub_261CFCDA4();
}

uint64_t sub_261C79998(uint64_t a1)
{
  v2 = sub_261AFF5F4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261C799E8(uint64_t a1)
{
  v2 = sub_261C7A080();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261C79A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA338, &qword_261D02AE0);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDDB00 = result;
  return result;
}

uint64_t static ListBadgeEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDDB00 = v1;
}

uint64_t (*static ListBadgeEntity.defaultQuery.modify())()
{
  if (qword_27FED9C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ListBadgeEntity.init(emoji:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a1;
  v24 = a2;
  v27 = a3;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFD6A4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v28 = 0x3A696A6F6D65;
  v29 = 0xE600000000000000;
  MEMORY[0x26671C210](a1, a2);
  v25 = v29;
  v26 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v16 = *MEMORY[0x277CC9110];
  v17 = *(v6 + 104);
  v17(v9, v16, v5);
  sub_261CFD6C4();
  v18 = sub_261CFCB14();
  sub_261CFF9B4();
  sub_261CFD874();
  v17(v9, v16, v5);
  sub_261CFD6C4();
  v19 = sub_261CFCB14();
  v28 = 0;
  v29 = 0;
  sub_261CFCA14();
  v28 = v23;
  v29 = v24;
  result = sub_261CFCA14();
  v21 = v27;
  v22 = v25;
  *v27 = v26;
  v21[1] = v22;
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = 0;
  return result;
}

unint64_t sub_261C79EC8()
{
  result = qword_27FEDDB08;
  if (!qword_27FEDDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB08);
  }

  return result;
}

unint64_t sub_261C79F20()
{
  result = qword_27FEDDB10;
  if (!qword_27FEDDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB10);
  }

  return result;
}

unint64_t sub_261C79F78()
{
  result = qword_27FEDDB18;
  if (!qword_27FEDDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB18);
  }

  return result;
}

unint64_t sub_261C79FD4()
{
  result = qword_27FEDDB20;
  if (!qword_27FEDDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB20);
  }

  return result;
}

unint64_t sub_261C7A028()
{
  result = qword_27FEDDB28;
  if (!qword_27FEDDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB28);
  }

  return result;
}

unint64_t sub_261C7A080()
{
  result = qword_27FEDDB30;
  if (!qword_27FEDDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB30);
  }

  return result;
}

unint64_t sub_261C7A11C()
{
  result = qword_27FEDDB48;
  if (!qword_27FEDDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDB48);
  }

  return result;
}

uint64_t destroy for ListBadgeEntity(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];
}

void *initializeWithCopy for ListBadgeEntity(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for ListBadgeEntity(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  sub_261CFD104();

  v5 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v6 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v7 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for ListBadgeEntity(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  v6 = a1[3];

  v7 = a1[4];
  *(a1 + 3) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for ListBadgeEntity(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ListBadgeEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261C7A3B4()
{
  v0 = sub_261CFD884();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v306 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v306 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFFA44();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB848, &qword_261D07720);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD230, &qword_261D0F9D0);
  v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v319 = *(*(v11 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_261D0F780;
  v310 = v13;
  v14 = (v13 + v12);
  v15 = *(v11 + 48);
  *v14 = 0x746C7561666564;
  v14[1] = 0xE700000000000000;
  v16 = v13 + v12;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v316 = __swift_project_value_buffer(v4, qword_280D27028);
  v314 = *(v5 + 16);
  v314(v8, v316, v4);
  v311 = v3;
  sub_261CFD874();
  v318 = v16;
  sub_261CFD6C4();
  v17 = v319;
  v18 = (v16 + v319);
  v317 = v11;
  v19 = *(v11 + 48);
  v313 = v4;
  *v18 = 0x6B72616D6B6F6F62;
  v18[1] = 0xEA00000000003173;
  sub_261CFF9B4();
  v20 = v316;
  v21 = v4;
  v22 = v314;
  v314(v8, v316, v21);
  sub_261CFD874();
  sub_261CFD6C4();
  v23 = 2 * v17;
  v24 = v318;
  v25 = (v318 + 2 * v17);
  v315 = v5 + 16;
  v26 = *(v317 + 48);
  *v25 = 0x6B72616D6B6F6F62;
  v25[1] = 0xEA00000000003273;
  sub_261CFF9B4();
  v27 = v20;
  v28 = v313;
  v22(v8, v27, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v29 = v319;
  v30 = v24 + v23 + v319;
  v312 = *(v317 + 48);
  strcpy(v30, "celebration1");
  *(v30 + 13) = 0;
  *(v30 + 14) = -5120;
  sub_261CFF9B4();
  v31 = v316;
  v32 = v28;
  v22(v8, v316, v28);
  sub_261CFD874();
  sub_261CFD6C4();
  v33 = 4 * v29;
  v34 = v24 + 4 * v29;
  v35 = v317;
  v312 = *(v317 + 48);
  strcpy(v34, "celebration2");
  *(v34 + 13) = 0;
  *(v34 + 14) = -5120;
  sub_261CFF9B4();
  v22(v8, v31, v32);
  v36 = v22;
  sub_261CFD874();
  sub_261CFD6C4();
  v37 = v319;
  v38 = (v318 + v33 + v319);
  v312 = *(v35 + 48);
  *v38 = 0x6F69746163756465;
  v38[1] = 0xEA0000000000316ELL;
  sub_261CFF9B4();
  v39 = v316;
  v36(v8, v316, v32);
  sub_261CFD874();
  sub_261CFD6C4();
  v40 = v318;
  v41 = (v318 + 6 * v37);
  v42 = v37;
  v43 = *(v35 + 48);
  *v41 = 0x6F69746163756465;
  v41[1] = 0xEA0000000000326ELL;
  sub_261CFF9B4();
  v44 = v32;
  v45 = v32;
  v46 = v314;
  v314(v8, v39, v44);
  sub_261CFD874();
  sub_261CFD6C4();
  v312 = 8 * v42;
  v47 = (v40 + 7 * v42);
  v48 = v317;
  v309 = *(v317 + 48);
  *v47 = 0x6F69746163756465;
  v47[1] = 0xEA0000000000336ELL;
  sub_261CFF9B4();
  v49 = v316;
  v46(v8, v316, v45);
  v50 = v46;
  sub_261CFD874();
  sub_261CFD6C4();
  v51 = v318;
  v52 = v312;
  v53 = (v318 + v312);
  v309 = *(v48 + 48);
  *v53 = 0x6F69746163756465;
  v53[1] = 0xEA0000000000346ELL;
  sub_261CFF9B4();
  v50(v8, v49, v45);
  sub_261CFD874();
  sub_261CFD6C4();
  v54 = v319;
  v55 = (v51 + v52 + v319);
  v56 = *(v48 + 48);
  *v55 = 0x6F69746163756465;
  v55[1] = 0xEA0000000000356ELL;
  sub_261CFF9B4();
  v57 = v316;
  v58 = v45;
  v59 = v45;
  v60 = v314;
  v314(v8, v316, v58);
  sub_261CFD874();
  sub_261CFD6C4();
  v61 = v318;
  v62 = (v318 + 10 * v54);
  v312 = *(v317 + 48);
  *v62 = 0x3165636E616E6966;
  v62[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v60(v8, v57, v59);
  sub_261CFD874();
  sub_261CFD6C4();
  v63 = (v61 + 11 * v54);
  v64 = v317;
  v65 = *(v317 + 48);
  *v63 = 0x3265636E616E6966;
  v63[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v66 = v59;
  v67 = v59;
  v68 = v314;
  v314(v8, v57, v67);
  sub_261CFD874();
  sub_261CFD6C4();
  v70 = v318;
  v69 = v319;
  v71 = (v318 + 12 * v319);
  v312 = *(v64 + 48);
  *v71 = 0x3365636E616E6966;
  v71[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v72 = v316;
  v68(v8, v316, v66);
  sub_261CFD874();
  sub_261CFD6C4();
  v73 = (v70 + 13 * v69);
  v74 = v317;
  v312 = *(v317 + 48);
  *v73 = 0x7373656E746966;
  v73[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v75 = v72;
  v76 = v72;
  v77 = v314;
  v314(v8, v76, v66);
  sub_261CFD874();
  sub_261CFD6C4();
  v78 = (v70 + 14 * v319);
  v312 = *(v74 + 48);
  *v78 = 0x3674726F7073;
  v78[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v79 = v75;
  v80 = v66;
  v77(v8, v79, v66);
  sub_261CFD874();
  sub_261CFD6C4();
  v312 = 16 * v319;
  v81 = (v70 + 15 * v319);
  v82 = v70;
  v83 = v74;
  v309 = *(v74 + 48);
  *v81 = 1685024614;
  v81[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v84 = v316;
  v85 = v80;
  v86 = v314;
  v314(v8, v316, v80);
  sub_261CFD874();
  sub_261CFD6C4();
  v87 = (v82 + v312);
  v88 = *(v83 + 48);
  *v87 = 1701734775;
  v87[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v86(v8, v84, v80);
  sub_261CFD874();
  sub_261CFD6C4();
  v89 = v319;
  v90 = (v82 + v312 + v319);
  v91 = v317;
  v312 = *(v317 + 48);
  *v90 = 0x3168746C616568;
  v90[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v92 = v316;
  v86(v8, v316, v85);
  sub_261CFD874();
  sub_261CFD6C4();
  v93 = (v82 + 18 * v89);
  v94 = *(v91 + 48);
  *v93 = 0x3268746C616568;
  v93[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v95 = v92;
  v96 = v314;
  v314(v8, v92, v85);
  sub_261CFD874();
  sub_261CFD6C4();
  v98 = v318;
  v97 = v319;
  v99 = (v318 + 19 * v319);
  v100 = v317;
  v312 = *(v317 + 48);
  *v99 = 0x6C7974736566696CLL;
  v99[1] = 0xEA00000000003165;
  sub_261CFF9B4();
  v101 = v95;
  v102 = v313;
  v96(v8, v101, v313);
  v103 = v96;
  sub_261CFD874();
  sub_261CFD6C4();
  v104 = (v98 + 20 * v97);
  v105 = v97;
  v312 = *(v100 + 48);
  v106 = v100;
  *v104 = 0x6C7974736566696CLL;
  v104[1] = 0xEA00000000003265;
  sub_261CFF9B4();
  v107 = v316;
  v103(v8, v316, v102);
  sub_261CFD874();
  sub_261CFD6C4();
  v108 = v318;
  v109 = (v318 + 21 * v105);
  v309 = *(v106 + 48);
  v312 = 0xE900000000000031;
  *v109 = 0x6E6F697461636F6CLL;
  v109[1] = 0xE900000000000031;
  sub_261CFF9B4();
  v110 = v107;
  v111 = v313;
  v103(v8, v110, v313);
  v112 = v103;
  sub_261CFD874();
  sub_261CFD6C4();
  v113 = v319;
  v114 = (v108 + 22 * v319);
  v115 = v317;
  v308 = *(v317 + 48);
  v309 = 0xE900000000000032;
  *v114 = 0x6E6F697461636F6CLL;
  v114[1] = 0xE900000000000032;
  sub_261CFF9B4();
  v116 = v316;
  v112(v8, v316, v111);
  sub_261CFD874();
  sub_261CFD6C4();
  v117 = v318;
  v118 = (v318 + 23 * v113);
  v307 = *(v115 + 48);
  v119 = v115;
  v308 = 0xE900000000000033;
  *v118 = 0x6E6F697461636F6CLL;
  v118[1] = 0xE900000000000033;
  sub_261CFF9B4();
  v120 = v116;
  v121 = v111;
  v122 = v314;
  v314(v8, v120, v111);
  sub_261CFD874();
  sub_261CFD6C4();
  v123 = v319;
  v124 = (v117 + 24 * v319);
  v125 = *(v119 + 48);
  *v124 = 0x31616964656DLL;
  v124[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v126 = v316;
  v122(v8, v316, v121);
  sub_261CFD874();
  sub_261CFD6C4();
  v127 = v318;
  v128 = (v318 + 25 * v123);
  v129 = v123;
  v130 = v317;
  v307 = *(v317 + 48);
  *v128 = 0x32616964656DLL;
  v128[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v131 = v126;
  v132 = v313;
  v122(v8, v131, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v133 = (v127 + 26 * v129);
  v134 = *(v130 + 48);
  *v133 = 0x33616964656DLL;
  v133[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v135 = v316;
  v122(v8, v316, v132);
  sub_261CFD874();
  sub_261CFD6C4();
  v136 = v318;
  v137 = v319;
  v138 = (v318 + 27 * v319);
  v307 = *(v130 + 48);
  *v138 = 0x34616964656DLL;
  v138[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v139 = v135;
  v140 = v135;
  v141 = v313;
  v314(v8, v140, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v142 = (v136 + 28 * v137);
  v143 = *(v130 + 48);
  *v142 = 0x35616964656DLL;
  v142[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v144 = v139;
  v145 = v141;
  v146 = v141;
  v147 = v314;
  v314(v8, v144, v145);
  sub_261CFD874();
  sub_261CFD6C4();
  v148 = v136;
  v149 = (v136 + 29 * v319);
  v307 = *(v130 + 48);
  *v149 = 0x3165727574616ELL;
  v149[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v150 = v316;
  v147(v8, v316, v146);
  sub_261CFD874();
  sub_261CFD6C4();
  v151 = v319;
  v152 = (v148 + 30 * v319);
  v153 = *(v130 + 48);
  *v152 = 0x3265727574616ELL;
  v152[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v154 = v150;
  v155 = v313;
  v147(v8, v154, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v156 = 32 * v151;
  v157 = 31 * v151;
  v307 = 32 * v151;
  v158 = v318;
  v159 = (v318 + v157);
  v306 = *(v130 + 48);
  *v159 = 0x31656C706F6570;
  v159[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v160 = v316;
  v161 = v314;
  v314(v8, v316, v155);
  sub_261CFD874();
  sub_261CFD6C4();
  v162 = (v158 + v156);
  v163 = v158;
  v164 = *(v130 + 48);
  *v162 = 0x32656C706F6570;
  v162[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v165 = v313;
  v161(v8, v160, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v166 = v319;
  v167 = (v163 + v307 + v319);
  v168 = v317;
  v307 = *(v317 + 48);
  *v167 = 0x33656C706F6570;
  v167[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v169 = v160;
  v170 = v314;
  v314(v8, v160, v165);
  sub_261CFD874();
  sub_261CFD6C4();
  v171 = (v318 + 34 * v166);
  v172 = *(v168 + 48);
  *v171 = 829711728;
  v171[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v170(v8, v160, v165);
  sub_261CFD874();
  sub_261CFD6C4();
  v174 = v318;
  v173 = v319;
  v175 = (v318 + 35 * v319);
  v307 = *(v168 + 48);
  *v175 = 846488944;
  v175[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v176 = v314;
  v314(v8, v160, v165);
  sub_261CFD874();
  sub_261CFD6C4();
  v177 = (v174 + 36 * v173);
  v178 = v317;
  v307 = *(v317 + 48);
  *v177 = 863266160;
  v177[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v176(v8, v169, v165);
  sub_261CFD874();
  sub_261CFD6C4();
  v179 = (v174 + 37 * v319);
  v307 = *(v178 + 48);
  v180 = v312;
  *v179 = 0x676E6970706F6873;
  v179[1] = v180;
  v312 = 0x676E6970706F6853;
  sub_261CFF9B4();
  v176(v8, v169, v165);
  sub_261CFD874();
  sub_261CFD6C4();
  v307 = *(v178 + 48);
  v181 = v318;
  v182 = v319;
  v183 = (v318 + 38 * v319);
  *v183 = 0x676E6970706F6873;
  v183[1] = v309;
  sub_261CFF9B4();
  v184 = v316;
  v176(v8, v316, v165);
  sub_261CFD874();
  sub_261CFD6C4();
  v309 = *(v317 + 48);
  v185 = (v181 + 39 * v182);
  v186 = v182;
  *v185 = 0x676E6970706F6873;
  v185[1] = v308;
  sub_261CFF9B4();
  v187 = v313;
  v176(v8, v184, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v188 = (v181 + 40 * v186);
  v189 = v317;
  v312 = *(v317 + 48);
  *v188 = 0x676E6970706F6873;
  v188[1] = 0xE900000000000034;
  sub_261CFF9B4();
  v176(v8, v184, v187);
  v190 = v176;
  sub_261CFD874();
  sub_261CFD6C4();
  v191 = v318;
  v192 = (v318 + 41 * v186);
  v312 = *(v189 + 48);
  *v192 = 0x3174726F7073;
  v192[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v193 = v316;
  v194 = v313;
  v190(v8, v316, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v195 = (v191 + 42 * v186);
  v196 = v186;
  v197 = v317;
  v312 = *(v317 + 48);
  *v195 = 0x3274726F7073;
  v195[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v198 = v193;
  v199 = v194;
  v200 = v314;
  v314(v8, v198, v194);
  sub_261CFD874();
  sub_261CFD6C4();
  v201 = (v318 + 43 * v196);
  v202 = *(v197 + 48);
  *v201 = 0x3374726F7073;
  v201[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v203 = v316;
  v200(v8, v316, v199);
  v204 = v200;
  sub_261CFD874();
  sub_261CFD6C4();
  v205 = v318;
  v206 = v319;
  v207 = (v318 + 44 * v319);
  v312 = *(v197 + 48);
  *v207 = 0x3474726F7073;
  v207[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v208 = v203;
  v209 = v313;
  v204(v8, v208, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v210 = (v205 + 45 * v206);
  v312 = *(v197 + 48);
  *v210 = 0x3574726F7073;
  v210[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v211 = v316;
  v204(v8, v316, v209);
  sub_261CFD874();
  sub_261CFD6C4();
  v212 = (v205 + 46 * v206);
  v213 = v317;
  v214 = *(v317 + 48);
  *v212 = 0x726F70736E617274;
  v212[1] = 0xEA00000000003174;
  sub_261CFF9B4();
  v215 = v211;
  v216 = v314;
  v314(v8, v215, v209);
  sub_261CFD874();
  sub_261CFD6C4();
  v217 = v319;
  v218 = (v205 + 47 * v319);
  v312 = *(v213 + 48);
  *v218 = 0x726F70736E617274;
  v218[1] = 0xEA00000000003274;
  sub_261CFF9B4();
  v216(v8, v316, v209);
  sub_261CFD874();
  sub_261CFD6C4();
  v219 = (v205 + 48 * v217);
  v220 = v213;
  v312 = *(v213 + 48);
  *v219 = 0x726F70736E617274;
  v219[1] = 0xEA00000000003374;
  sub_261CFF9B4();
  v221 = v316;
  v216(v8, v316, v209);
  sub_261CFD874();
  sub_261CFD6C4();
  v222 = v319;
  v223 = (v205 + 49 * v319);
  v224 = *(v220 + 48);
  *v223 = 0x726F70736E617274;
  v223[1] = 0xEA00000000003474;
  sub_261CFF9B4();
  v216(v8, v221, v209);
  sub_261CFD874();
  sub_261CFD6C4();
  v226 = v317;
  v225 = v318;
  v227 = (v318 + 50 * v222);
  v228 = *(v317 + 48);
  *v227 = 0x6E6F697461636176;
  v227[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v216(v8, v221, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v229 = v319;
  v230 = (v225 + 51 * v319);
  v231 = *(v226 + 48);
  *v230 = 0x3272656874616577;
  v230[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v232 = v313;
  v233 = v314;
  v314(v8, v221, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v235 = v317;
  v234 = v318;
  v236 = (v318 + 52 * v229);
  v312 = *(v317 + 48);
  *v236 = 0x3172656874616577;
  v236[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v237 = v232;
  v233(v8, v316, v232);
  sub_261CFD874();
  sub_261CFD6C4();
  v238 = v319;
  v239 = (v234 + 53 * v319);
  v240 = *(v235 + 48);
  *v239 = 0x3372656874616577;
  v239[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v241 = v316;
  v242 = v237;
  v243 = v314;
  v314(v8, v316, v242);
  sub_261CFD874();
  sub_261CFD6C4();
  v244 = (v234 + 54 * v238);
  v245 = v317;
  v246 = *(v317 + 48);
  *v244 = 0x3472656874616577;
  v244[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v247 = v313;
  v243(v8, v241, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v248 = v318;
  v249 = v319;
  v250 = (v318 + 55 * v319);
  v312 = *(v245 + 48);
  *v250 = 0x3572656874616577;
  v250[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v251 = v316;
  v252 = v247;
  v253 = v314;
  v314(v8, v316, v252);
  sub_261CFD874();
  sub_261CFD6C4();
  v254 = (v248 + 56 * v249);
  v312 = *(v245 + 48);
  v255 = v245;
  *v254 = 0x316B726F77;
  v254[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v253(v8, v251, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v256 = v318;
  v257 = (v318 + 57 * v249);
  v258 = *(v255 + 48);
  *v257 = 0x326B726F77;
  v257[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v259 = v313;
  v253(v8, v251, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v260 = v319;
  v261 = (v256 + 58 * v319);
  v262 = v317;
  v312 = *(v317 + 48);
  *v261 = 0x336B726F77;
  v261[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v263 = v251;
  v253(v8, v251, v259);
  sub_261CFD874();
  sub_261CFD6C4();
  v264 = (v318 + 59 * v260);
  v265 = *(v262 + 48);
  *v264 = 0x346B726F77;
  v264[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v253(v8, v251, v259);
  sub_261CFD874();
  sub_261CFD6C4();
  v267 = v318;
  v266 = v319;
  v268 = (v318 + 60 * v319);
  v312 = *(v317 + 48);
  *v268 = 0x356B726F77;
  v268[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v253(v8, v263, v259);
  sub_261CFD874();
  sub_261CFD6C4();
  v269 = (v267 + 61 * v266);
  v270 = v317;
  v312 = *(v317 + 48);
  *v269 = 0x31747065636E6F63;
  v269[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v253(v8, v263, v259);
  sub_261CFD874();
  sub_261CFD6C4();
  v271 = (v267 + 62 * v266);
  v272 = *(v270 + 48);
  *v271 = 0x32747065636E6F63;
  v271[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v273 = v259;
  v253(v8, v263, v259);
  sub_261CFD874();
  sub_261CFD6C4();
  v274 = v318;
  v312 = v319 << 6;
  v275 = (v318 + 63 * v319);
  v276 = v317;
  v309 = *(v317 + 48);
  *v275 = 0x33747065636E6F63;
  v275[1] = 0xE800000000000000;
  sub_261CFF9B4();
  v253(v8, v263, v273);
  v277 = v253;
  sub_261CFD874();
  sub_261CFD6C4();
  v278 = v312;
  v279 = (v274 + v312);
  v309 = *(v276 + 48);
  *v279 = 0x376C6F626D7973;
  v279[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v280 = v316;
  v281 = v313;
  v277(v8, v316, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v282 = v319;
  v283 = (v274 + v278 + v319);
  v312 = *(v317 + 48);
  *v283 = 0x346C6F626D7973;
  v283[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v284 = v281;
  v285 = v314;
  v314(v8, v280, v281);
  sub_261CFD874();
  sub_261CFD6C4();
  v286 = v318;
  v287 = (v318 + 66 * v282);
  v312 = *(v317 + 48);
  *v287 = 0x336C6F626D7973;
  v287[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v288 = v316;
  v289 = v284;
  v290 = v285;
  v285(v8, v316, v289);
  sub_261CFD874();
  sub_261CFD6C4();
  v291 = (v286 + 67 * v282);
  v292 = v317;
  v293 = *(v317 + 48);
  *v291 = 0x326C6F626D7973;
  v291[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v294 = v313;
  v290(v8, v288, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v295 = v318;
  v296 = v319;
  v297 = (v318 + 68 * v319);
  v312 = *(v292 + 48);
  *v297 = 0x356C6F626D7973;
  v297[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v290(v8, v288, v294);
  sub_261CFD874();
  sub_261CFD6C4();
  v298 = (v295 + 69 * v296);
  v299 = *(v292 + 48);
  *v298 = 0x366C6F626D7973;
  v298[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v300 = v288;
  v301 = v313;
  v290(v8, v300, v313);
  sub_261CFD874();
  sub_261CFD6C4();
  v302 = (v318 + 70 * v296);
  v303 = *(v292 + 48);
  *v302 = 0x316C6F626D7973;
  v302[1] = 0xE700000000000000;
  sub_261CFF9B4();
  v290(v8, v316, v301);
  sub_261CFD874();
  sub_261CFD6C4();
  v304 = sub_261C39E1C(v310);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEF3EF8 = v304;
  return result;
}

id sub_261C7D36C(uint64_t a1)
{
  v2 = sub_261C84BF4();
  v3 = sub_261C84F24();
  if (*(v2 + 2) || *(v3 + 2))
  {
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_261CFFC54();

    v6 = sub_261CFFC54();

    v7 = [v4 initWithPhones:v5 emails:v6];

    v8 = sub_261CFC954();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  else
  {

    if (qword_27FED9C68 != -1)
    {
      swift_once();
    }

    v10 = sub_261CFF7A4();
    __swift_project_value_buffer(v10, qword_27FEDDB50);
    v11 = sub_261CFF784();
    v12 = sub_261CFFE64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261AE2000, v11, v12, "Both intentPerson.phones and intentPerson.emails is nil or empty, will not create REMContactRepresentation.", v13, 2u);
      MEMORY[0x26671D560](v13, -1, -1);
    }

    v14 = sub_261CFC954();
    (*(*(v14 - 8) + 8))(a1, v14);
    return 0;
  }

  return v7;
}

uint64_t ReminderEntity.init(reminderChangeItem:parentReminderChangeItem:subtaskChangeItems:recurrentInstanceSpecifier:)@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = v30 - v12;
  v13 = [a1 listChangeItem];
  if (!v13 || (v14 = v13, v15 = [v13 storage], v14, (v36 = v15) == 0))
  {

    sub_261B01D70();
    swift_allocError();
    *v26 = 11;
    swift_willThrow();

    v27 = a4;
    return sub_261AE6A40(v27, &qword_27FEDA108, &unk_261D020C0);
  }

  v16 = [a1 storage];
  v17 = [a1 accountCapabilities];
  v18 = v17;
  if (a2)
  {
    v33 = [a2 storage];
    v34 = v18;
    v35 = v16;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_16:
    v28 = 0;
LABEL_20:
    v29 = v37;
    sub_261AFB668(a4, v37, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v35, v36, v34, v33, v28, v29, v38);

    v27 = a4;
    return sub_261AE6A40(v27, &qword_27FEDA108, &unk_261D020C0);
  }

  v33 = 0;
  v34 = v17;
  v35 = v16;
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_5:
  v32 = a2;
  if (!(a3 >> 62))
  {
    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_18:

    v28 = MEMORY[0x277D84F90];
LABEL_19:
    a2 = v32;
    goto LABEL_20;
  }

  v19 = sub_261D00274();
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_7:
  v30[1] = v5;
  v31 = a4;
  v39 = MEMORY[0x277D84F90];
  result = sub_261D003A4();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26671CA10](v21, a3);
      }

      else
      {
        v22 = *(a3 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v22 storage];

      sub_261D00374();
      v25 = *(v39 + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v19 != v21);

    v28 = v39;
    a4 = v31;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_261C7D878@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a2;
  v139 = a1;
  v152 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v138 = &v131 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0D8, &qword_261D050F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v141 = &v131 - v9;
  v137 = sub_261CFC8A4();
  v136 = *(v137 - 8);
  v10 = *(v136 + 64);
  v11 = MEMORY[0x28223BE20](v137);
  v145 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v148 = &v131 - v13;
  v146 = sub_261CFC864();
  v150 = *(v146 - 8);
  v14 = *(v150 + 64);
  v15 = MEMORY[0x28223BE20](v146);
  v143 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = &v131 - v17;
  v163 = sub_261CFC8D4();
  v147 = *(v163 - 8);
  v18 = *(v147 + 64);
  MEMORY[0x28223BE20](v163);
  v162 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFC914();
  v21 = *(v20 - 8);
  v164 = v20;
  v165 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v153 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v142 = &v131 - v25;
  v170 = sub_261CFC8F4();
  v151 = *(v170 - 8);
  v26 = *(v151 + 64);
  v27 = MEMORY[0x28223BE20](v170);
  v161 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v149 = &v131 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA650, &qword_261D03210);
  v31 = *(v30 - 8);
  v168 = v30;
  v169 = v31;
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v131 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v131 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = (&v131 - v42);
  sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
  sub_261CFFF04();
  sub_261CFED04();
  sub_261CFECF4();
  v44 = sub_261CFEDF4();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_261CFEDD4();
  sub_261CFEDE4();
  v166 = v3;
  v48 = sub_261CFEDC4();
  v50 = v49;

  v171 = v48;
  v172 = v50 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDB68, &qword_261D0F9D8);
  sub_261D00704();
  sub_261C867EC(v48);
  v51 = v173;
  sub_261CFEDE4();
  v52 = sub_261CFEDB4();
  v54 = v53;

  v171 = v52;
  v172 = v54 & 1;
  sub_261D00704();
  sub_261C867EC(v52);
  if (v51)
  {
    v55 = v152;
    IntentPerson.init(fromContact:meCard:)(v51, v173, v152);

    v56 = sub_261CFC954();
    v57 = *(*(v56 - 8) + 56);
    v58 = v55;
    return v57(v58, 0, 1, v56);
  }

  v158 = v41;
  v159 = v38;
  v160 = v35;
  v135 = v173;
  v134 = v47;
  v59 = v166;
  v60 = [v166 emails];
  v61 = sub_261CFFC64();

  v62 = *(v61 + 16);
  if (v62)
  {
    v171 = MEMORY[0x277D84F90];
    sub_261B39F64(0, v62, 0);
    v63 = v171;
    v51 = (v151 + 104);
    v167 = *(v151 + 104);
    v64 = *MEMORY[0x277CB9D90];
    v157 = v61;
    v65 = (v61 + 40);
    do
    {
      v66 = *(v65 - 1);
      v67 = *v65;
      v68 = (v43 + *(v168 + 48));
      *v43 = v66;
      v43[1] = v67;
      *v68 = v66;
      v68[1] = v67;
      v167();
      v171 = v63;
      v70 = v63[2];
      v69 = v63[3];
      swift_bridgeObjectRetain_n();
      if (v70 >= v69 >> 1)
      {
        sub_261B39F64(v69 > 1, v70 + 1, 1);
        v63 = v171;
      }

      v63[2] = v70 + 1;
      sub_261BB4448(v43, v63 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + v169[9] * v70, &qword_27FEDA650, &qword_261D03210);
      v65 += 2;
      --v62;
    }

    while (v62);

    v59 = v166;
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
  }

  v71 = [v59 phones];
  v72 = sub_261CFFC64();

  v73 = *(v72 + 16);
  if (v73)
  {
    v171 = MEMORY[0x277D84F90];
    sub_261B39F64(0, v73, 0);
    v74 = v171;
    v167 = *(v151 + 104);
    LODWORD(v166) = *MEMORY[0x277CB9D88];
    v157 = v72;
    v75 = (v72 + 40);
    v51 = v158;
    do
    {
      v76 = *(v75 - 1);
      v77 = *v75;
      v78 = (v51 + *(v168 + 48));
      *v51 = v76;
      v51[1] = v77;
      *v78 = v76;
      v78[1] = v77;
      v167();
      v171 = v74;
      v80 = v74[2];
      v79 = v74[3];
      swift_bridgeObjectRetain_n();
      if (v80 >= v79 >> 1)
      {
        sub_261B39F64(v79 > 1, v80 + 1, 1);
        v74 = v171;
      }

      v74[2] = v80 + 1;
      sub_261BB4448(v51, v74 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + v169[9] * v80, &qword_27FEDA650, &qword_261D03210);
      v75 += 2;
      --v73;
    }

    while (v73);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v173 = v63;
  sub_261BBB8E4(v74);
  v81 = v173;
  v82 = v150;
  v83 = v149;
  if (v173[2])
  {
    v84 = (*(v169 + 80) + 32) & ~*(v169 + 80);
    sub_261AFB668(v173 + v84, v159, &qword_27FEDA650, &qword_261D03210);
    v85 = v81[2];
    if (v85)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v81;
      v87 = v170;
      v88 = v151;
      v89 = v147;
      if (!isUniquelyReferenced_nonNull_native || (v85 - 1) > v81[3] >> 1)
      {
        v81 = sub_261B41870(isUniquelyReferenced_nonNull_native, v85, 1, v81);
        v171 = v81;
      }

      sub_261C1456C(0, 1, 0);
      v90 = v159[1];
      v133 = *v159;
      v132 = v90;
      (*(v88 + 32))(v83, v159 + *(v168 + 48), v87);
      v91 = v81[2];
      if (!v91)
      {

        v114 = *(v88 + 16);
        v104 = v82;
        LODWORD(v167) = *MEMORY[0x277CB9D48];
        v169 = MEMORY[0x277D84F90];
        v106 = v142;
        v101 = v141;
        v102 = v148;
        v103 = v146;
        v105 = v144;
        v114(v161, v83, v87);
LABEL_34:
        (*(v147 + 104))(v162, v167, v163);
        sub_261CFC924();
        v115 = v139;
        v116 = v140;
        *v105 = v139;
        v105[1] = v116;
        (*(v104 + 104))(v105, *MEMORY[0x277CB9CC8], v103);
        v117 = v132;
        *v102 = v133;
        *(v102 + 1) = v117;
        v118 = v136;
        v119 = v104;
        v120 = v137;
        (*(v136 + 104))(v102, *MEMORY[0x277CB9CF8], v137);
        (*(v119 + 16))(v143, v105, v103);
        (*(v118 + 16))(v145, v102, v120);
        v122 = v164;
        v121 = v165;
        (*(v165 + 16))(v101, v106, v164);
        (*(v121 + 56))(v101, 0, 1, v122);
        v123 = v135;
        if (v135)
        {
          sub_261CFD104();
          v124 = [v123 identifier];
          v125 = sub_261CFFA74();
          v127 = v126;

          v128 = v152;
          if (v125 == v115 && v127 == v116)
          {
          }

          else
          {
            sub_261D00614();
          }

          v129 = v135;
        }

        else
        {
          sub_261CFD104();
          v129 = 0;
          v128 = v152;
        }

        v130 = sub_261CFD074();
        (*(*(v130 - 8) + 56))(v138, 1, 1, v130);
        sub_261CFC874();

        (*(v118 + 8))(v148, v120);
        (*(v150 + 8))(v144, v146);
        (*(v165 + 8))(v142, v122);
        (*(v151 + 8))(v149, v170);
        v56 = sub_261CFC954();
        v57 = *(*(v56 - 8) + 56);
        v58 = v128;
        return v57(v58, 0, 1, v56);
      }

      v173 = MEMORY[0x277D84F90];
      sub_261B39EE0(0, v91, 0);
      v82 = 0;
      v74 = v173;
      v166 = v81;
      v158 = v81 + v84;
      v92 = *MEMORY[0x277CB9D48];
      v155 = v165 + 32;
      v156 = (v89 + 104);
      v157 = (v88 + 16);
      v93 = v148;
      v51 = v153;
      v159 = ((v88 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v154 = v91;
      LODWORD(v167) = v92;
      while (v82 < *(v166 + 2))
      {
        v94 = v74;
        v95 = v93;
        v96 = v160;
        sub_261AFB668(&v158[v169[9] * v82], v160, &qword_27FEDA650, &qword_261D03210);
        v97 = v96 + *(v168 + 48);
        v153 = *v157;
        (v153)(v161, v97, v170);
        (*v156)(v162, v92, v163);
        sub_261CFC924();
        v98 = v96;
        v93 = v95;
        v74 = v94;
        sub_261AE6A40(v98, &qword_27FEDA650, &qword_261D03210);
        v173 = v94;
        v100 = v94[2];
        v99 = v94[3];
        if (v100 >= v99 >> 1)
        {
          sub_261B39EE0(v99 > 1, v100 + 1, 1);
          v93 = v148;
          v74 = v173;
        }

        ++v82;
        v74[2] = v100 + 1;
        (*(v165 + 32))(v74 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v100, v51, v164);
        v92 = v167;
        if (v154 == v82)
        {
          v169 = v74;

          v101 = v141;
          v102 = v93;
          v103 = v146;
          v104 = v150;
          v105 = v144;
          v106 = v142;
          (v153)(v161, v149, v170);
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }

  v74 = v152;
  v51 = v140;
  v82 = v139;
  if (qword_27FED9C68 != -1)
  {
LABEL_45:
    swift_once();
  }

  v107 = sub_261CFF7A4();
  __swift_project_value_buffer(v107, qword_27FEDDB50);
  sub_261CFD104();
  v108 = sub_261CFF784();
  v109 = sub_261CFFE64();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v173 = v111;
    *v110 = 136315138;
    *(v110 + 4) = sub_261B879C8(v82, v51, &v173);
    _os_log_impl(&dword_261AE2000, v108, v109, "Both contactHandles.phones and contactHandles.emails is nil or empty, will not create IntentPerson for %s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v111);
    MEMORY[0x26671D560](v111, -1, -1);
    MEMORY[0x26671D560](v110, -1, -1);
  }

  v112 = sub_261CFC954();
  return (*(*(v112 - 8) + 56))(v74, 1, 1, v112);
}

uint64_t ReminderEntity.init(reminder:subtasks:recurrentInstanceSpecifier:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = [a1 storage];
  v13 = [a1 list];
  v14 = [v13 storage];

  v15 = sub_261CFFDF4();
  v16 = [a1 parentReminder];
  if (v16)
  {
    v17 = v16;
    v30 = [v16 storage];

    v31 = v15;
    v32 = v14;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v25 = 0;
LABEL_16:
    sub_261AFB668(a3, v11, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v12, v32, v31, v30, v25, v11, a4);

    return sub_261AE6A40(a3, &qword_27FEDA108, &unk_261D020C0);
  }

  v30 = 0;
  v31 = v15;
  v32 = v14;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!(a2 >> 62))
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  v18 = sub_261D00274();
  if (!v18)
  {
LABEL_15:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

LABEL_5:
  v33 = MEMORY[0x277D84F90];
  result = sub_261D003A4();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v27 = v12;
    v28 = a4;
    v29 = a3;
    v20 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26671CA10](v20, a2);
      }

      else
      {
        v21 = *(a2 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      v23 = [v21 storage];

      sub_261D00374();
      v24 = *(v33 + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v18 != v20);

    v25 = v33;
    a4 = v28;
    a3 = v29;
    v12 = v27;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_261C7ECFC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDB50);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDB50);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C7EDC4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v343 = a5;
  v327 = a4;
  v344 = a2;
  v345 = a3;
  v339 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v319 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v318 = &v261 - v13;
  v14 = sub_261CFD564();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v315 = &v261 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v317 = &v261 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v316 = &v261 - v21;
  v341 = sub_261CFD674();
  v340 = *(v341 - 8);
  v22 = *(v340 + 64);
  MEMORY[0x28223BE20](v341);
  v309 = &v261 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_261CFD884();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v308 = &v261 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_261CFFA44();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v323 = &v261 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_261CFD6A4();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v306 = &v261 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v311 = &v261 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v310 = &v261 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v331 = &v261 - v40;
  MEMORY[0x28223BE20](v39);
  v330 = &v261 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v324 = &v261 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v314 = &v261 - v47;
  MEMORY[0x28223BE20](v46);
  v329 = &v261 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v313 = &v261 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v312 = &v261 - v54;
  MEMORY[0x28223BE20](v53);
  v337 = &v261 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v305 = &v261 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v304 = &v261 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v336 = &v261 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v335 = &v261 - v65;
  MEMORY[0x28223BE20](v64);
  v334 = &v261 - v66;
  v67 = type metadata accessor for ListEntity();
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v67 - 8);
  v300 = &v261 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v69);
  v301 = &v261 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v333 = &v261 - v74;
  MEMORY[0x28223BE20](v73);
  v326 = (&v261 - v75);
  v342 = type metadata accessor for ReminderEntity();
  v76 = *(v342 - 1);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v342);
  v79 = &v261 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v83 = &v261 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v85 = *(*(v84 - 8) + 64);
  v86 = MEMORY[0x28223BE20](v84 - 8);
  v307 = &v261 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v328 = &v261 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v321 = &v261 - v91;
  MEMORY[0x28223BE20](v90);
  v338 = &v261 - v92;
  v93 = type metadata accessor for AppEntityID();
  v94 = v93 - 8;
  v95 = *(*(v93 - 8) + 64);
  v96 = MEMORY[0x28223BE20](v93);
  v332 = &v261 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v99 = (&v261 - v98);
  v100 = [a1 objectID];
  v101 = v99 + *(v94 + 32);
  v320 = a6;
  sub_261AFB668(a6, v101, &qword_27FEDA108, &unk_261D020C0);
  v102 = [v100 entityName];
  v103 = sub_261CFFA74();
  v105 = v104;

  v106 = [v100 uuid];
  v107 = v99 + *(v94 + 28);
  sub_261CFD834();

  *v99 = v103;
  v99[1] = v105;
  v325 = v99;
  v346 = a1;
  v108 = [a1 titleAsString];
  if (v108)
  {
    v109 = v108;
    v303 = sub_261CFFA74();
    v302 = v110;
  }

  else
  {
    v303 = 0;
    v302 = 0xE000000000000000;
  }

  v111 = *(v76 + 56);
  v112 = v338;
  v113 = v342;
  v111(v338, 1, 1, v342);
  v114 = v327;
  if (v327)
  {
    v115 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v115 - 8) + 56))(v83, 1, 1, v115);
    v116 = v114;
    v117 = v344;
    v118 = v345;
    v119 = v321;
    sub_261C7EDC4(v116, v117, v118, 0, 0, v83);
    v114 = &unk_27FEDE110;
    sub_261AE6A40(v112, &unk_27FEDE110, &unk_261D035B0);
    v111(v119, 0, 1, v113);
    sub_261BB4448(v119, v112, &unk_27FEDE110, &unk_261D035B0);
  }

  if (!v343)
  {
    v347 = 0;
LABEL_19:
    v76 = 0;
    goto LABEL_22;
  }

  if (v343 >> 62)
  {
    v120 = v343;
    v121 = sub_261D00274();
    if (v121)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v120 = v343;
    v121 = *((v343 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v121)
    {
LABEL_9:
      *&v351 = MEMORY[0x277D84F90];
      v122 = &v351;
      v123 = sub_261B39DB8(0, v121 & ~(v121 >> 63), 0);
      if (v121 < 0)
      {
        __break(1u);
        goto LABEL_84;
      }

      v124 = 0;
      v347 = v351;
      v125 = v120;
      v126 = v120 & 0xC000000000000001;
      v127 = v346;
      do
      {
        if (v126)
        {
          v128 = MEMORY[0x26671CA10](v124, v125);
        }

        else
        {
          v128 = *(v125 + 8 * v124 + 32);
        }

        v129 = v128;
        v130 = type metadata accessor for RecurrentInstanceSpecifier(0);
        (*(*(v130 - 8) + 56))(v83, 1, 1, v130);
        v131 = v344;
        v132 = v345;
        v133 = v127;
        sub_261C7EDC4(v129, v131, v132, v127, MEMORY[0x277D84F90], v83);
        v134 = v347;
        *&v351 = v347;
        v136 = *(v347 + 16);
        v135 = *(v347 + 24);
        if (v136 >= v135 >> 1)
        {
          sub_261B39DB8(v135 > 1, v136 + 1, 1);
          v134 = v351;
        }

        ++v124;
        *(v134 + 16) = v136 + 1;
        v137 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v347 = v134;
        sub_261B837B0(v79, v134 + v137 + *(v76 + 72) * v136);
        v125 = v343;
      }

      while (v121 != v124);

      goto LABEL_19;
    }
  }

  v76 = 0;
  v347 = MEMORY[0x277D84F90];
LABEL_22:
  v138 = v334;
  v139 = v344;
  v140 = v326;
  v322 = v139;
  sub_261C81A3C(v139, v326);
  sub_261B01DC4(v325, v332, type metadata accessor for AppEntityID);
  sub_261B01DC4(v140, v333, type metadata accessor for ListEntity);
  v141 = v346;
  v299 = [v346 isCompleted];
  v142 = [v141 completionDate];
  if (v142)
  {
    v143 = v142;
    sub_261CFD7C4();

    v144 = 0;
  }

  else
  {
    v144 = 1;
  }

  v145 = sub_261CFD7E4();
  v146 = *(*(v145 - 8) + 56);
  v147 = 1;
  v146(v138, v144, 1, v145);
  v148 = [v346 creationDate];
  if (v148)
  {
    v149 = v335;
    v150 = v148;
    sub_261CFD7C4();

    v151 = v149;
    v147 = 0;
  }

  else
  {
    v151 = v335;
  }

  v152 = 1;
  v146(v151, v147, 1, v145);
  v153 = [v346 lastModifiedDate];
  if (v153)
  {
    v154 = v336;
    v155 = v153;
    sub_261CFD7C4();

    v156 = v154;
    v152 = 0;
  }

  else
  {
    v156 = v336;
  }

  v146(v156, v152, 1, v145);
  v122 = v346;
  sub_261C82D98(v337);
  v157 = [v122 fetchedDueDateDeltaAlerts];
  if (v157)
  {
    v158 = v157;
    sub_261B05020(0, &qword_27FEDDB70, 0x277D44608);
    v114 = sub_261CFFC64();

    if (v114 >> 62)
    {
      v159 = sub_261D00274();
      if (v159)
      {
LABEL_34:
        v160 = __OFSUB__(v159, 1);
        v123 = v159 - 1;
        if (!v160)
        {
          if ((v114 & 0xC000000000000001) == 0)
          {
            if ((v123 & 0x8000000000000000) != 0)
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            if (v123 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v161 = *(v114 + 8 * v123 + 32);
            goto LABEL_39;
          }

LABEL_85:
          v161 = MEMORY[0x26671CA10](v123, v114);
LABEL_39:
          v162 = v161;

          EarlyAlertEntity.init(dueDateDeltaInterval:)([v162 dueDateDelta], &v351);

          v163 = v351;
          v297 = v352;
          v164 = &v329;
          goto LABEL_43;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    else
    {
      v159 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v159)
      {
        goto LABEL_34;
      }
    }
  }

  v351 = 0u;
  v352 = 0u;
  v163 = 0uLL;
  v298 = 0u;
  v164 = &v327;
LABEL_43:
  *(v164 - 16) = v163;
  sub_261C8350C(v329);
  sub_261C83674(v350);
  v165 = v350[0];
  v293 = v350[1];
  v292 = v350[2];
  sub_261C83950(v330);
  sub_261C83D54(v322, v331);
  v166 = [v122 notesAsString];
  if (v166)
  {
    v167 = v166;
    v168 = sub_261CFFA74();
    v170 = v169;
  }

  else
  {
    v168 = 0;
    v170 = 0;
  }

  v171 = v338;
  if ([v345 supportsFlagged])
  {
    if ([v122 flagged] <= 0)
    {
      v172 = 1;
    }

    else
    {
      v172 = 2;
    }

    v291 = v172;
  }

  else
  {
    v291 = 0;
  }

  [v122 priority];
  v344 = REMReminderPriorityLevelForPriority();
  sub_261AFB668(v171, v328, &unk_27FEDE110, &unk_261D035B0);
  v173 = [v122 hashtags];
  v296 = v168;
  v295 = v170;
  v294 = v165;
  if (v173)
  {
    v174 = v173;
    sub_261B05020(0, &qword_27FEDD488, 0x277D44648);
    sub_261C8680C();
    v175 = sub_261CFFD64();

    *&v348 = sub_261BC6AE0(v175);
    sub_261C85690(&v348);
    if (v76)
    {
LABEL_89:

      __break(1u);
      return result;
    }

    v176 = v348;
    if ((v348 & 0x8000000000000000) != 0 || (v348 & 0x4000000000000000) != 0)
    {
      v177 = sub_261D00274();
      v178 = v342;
      if (v177)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v177 = *(v348 + 16);
      v178 = v342;
      if (v177)
      {
LABEL_57:
        *&v348 = MEMORY[0x277D84F90];
        sub_261B39FA4(0, v177 & ~(v177 >> 63), 0);
        if ((v177 & 0x8000000000000000) == 0)
        {
          v179 = 0;
          v180 = v348;
          do
          {
            v181 = v180;
            if ((v176 & 0xC000000000000001) != 0)
            {
              v182 = MEMORY[0x26671CA10](v179, v176);
            }

            else
            {
              v182 = *(v176 + 8 * v179 + 32);
            }

            v183 = v182;
            v184 = [v182 name];
            v185 = sub_261CFFA74();
            v187 = v186;

            v180 = v181;
            *&v348 = v181;
            v188 = v181[2];
            v189 = v180[3];
            if (v188 >= v189 >> 1)
            {
              sub_261B39FA4((v189 > 1), v188 + 1, 1);
              v180 = v348;
            }

            ++v179;
            v180[2] = v188 + 1;
            v190 = &v180[2 * v188];
            v190[4] = v185;
            v190[5] = v187;
          }

          while (v177 != v179);
          v290 = v180;

          goto LABEL_67;
        }

        __break(1u);
        goto LABEL_87;
      }
    }

    v290 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v290 = 0;
LABEL_67:
  v178 = v342;
LABEL_70:
  if (v344 >= 4)
  {
    v191 = 0;
  }

  else
  {
    v191 = v344;
  }

  v281 = v191;
  v282 = sub_261C8427C();
  v283 = sub_261C848F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC998, &qword_261D0B628);
  v284 = sub_261CFCAB4();
  v192 = v339;
  *v339 = v284;
  v193 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A0, &unk_261D11CA0);
  v285 = sub_261CFCB24();
  v193[1] = v285;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A8, &qword_261D0B630);
  v286 = sub_261CFCAA4();
  v193[2] = v286;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B0, &unk_261D11CB0);
  v288 = sub_261CFCAF4();
  v193[3] = v288;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B8, &qword_261D0B638);
  sub_261AE8384(&qword_280D224E0, type metadata accessor for SectionEntity);
  v289 = sub_261CFCA64();
  v193[4] = v289;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C0, &unk_261D11CC0);
  v274 = sub_261AE8384(&qword_280D22358, type metadata accessor for ReminderEntity);
  v287 = sub_261CFCA64();
  v193[5] = v287;
  v194 = v193;
  v279 = v178[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  sub_261CFF9B4();
  sub_261CFD874();
  v195 = *MEMORY[0x277CC9110];
  v196 = *(v340 + 104);
  v340 += 104;
  v197 = v309;
  v198 = v341;
  v196(v309, v195, v341);
  sub_261CFD6C4();
  v280 = sub_261CFCB14();
  *(v194 + v279) = v280;
  v278 = v178[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v344) = v195;
  v196(v197, v195, v198);
  sub_261CFD6C4();
  sub_261AE8384(&qword_280D227A0, type metadata accessor for ListEntity);
  v279 = sub_261CFCA54();
  *(v194 + v278) = v279;
  v199 = v342;
  v277 = v342[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D0, &qword_261D0B640);
  sub_261CFF9B4();
  sub_261CFD874();
  v200 = v341;
  v196(v197, v195, v341);
  sub_261CFD6C4();
  v278 = sub_261CFCB34();
  *(v194 + v277) = v278;
  v276 = v199[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D8, &unk_261D11CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v201 = v344;
  v196(v197, v344, v200);
  v202 = v196;
  sub_261CFD6C4();
  v277 = sub_261CFCAD4();
  v203 = v339;
  *(v339 + v276) = v277;
  v204 = v342;
  v275 = v342[15];
  sub_261CFF9B4();
  sub_261CFD874();
  v205 = v341;
  v202(v197, v201, v341);
  sub_261CFD6C4();
  v276 = sub_261CFCAD4();
  *(v203 + v275) = v276;
  v272 = v204[16];
  sub_261CFF9B4();
  sub_261CFD874();
  v206 = v344;
  v343 = v202;
  v202(v197, v344, v205);
  sub_261CFD6C4();
  v275 = sub_261CFCAD4();
  v207 = v339;
  *(v339 + v272) = v275;
  v208 = v342;
  v272 = v342[17];
  sub_261CFF9B4();
  sub_261CFD874();
  v202(v197, v206, v205);
  sub_261CFD6C4();
  v273 = sub_261CFCA94();
  *(v207 + v272) = v273;
  v209 = v208[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E0, &qword_261D0B648);
  sub_261CFF9B4();
  sub_261CFD874();
  (v343)(v197, v344, v341);
  sub_261CFD6C4();
  sub_261B51818();
  v272 = sub_261CFCA54();
  *(v207 + v209) = v272;
  v270 = v208[19];
  v210 = v208;
  sub_261CFF9B4();
  sub_261CFD874();
  v211 = v344;
  v212 = v341;
  v213 = v343;
  (v343)(v197, v344, v341);
  sub_261CFD6C4();
  v271 = sub_261CFCAE4();
  *(v207 + v270) = v271;
  v269 = v210[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E8, &unk_261D11CF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v214 = v212;
  v213(v197, v211, v212);
  sub_261CFD6C4();
  sub_261B5186C();
  v270 = sub_261CFCA54();
  v215 = v339;
  *(v339 + v269) = v270;
  v216 = v342;
  v268 = v342[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F0, &qword_261D0B650);
  sub_261CFF9B4();
  sub_261CFD874();
  v217 = v214;
  v218 = v343;
  (v343)(v197, v211, v217);
  sub_261CFD6C4();
  v269 = sub_261CFCA84();
  *(v215 + v268) = v269;
  v267 = v216[22];
  sub_261CFF9B4();
  sub_261CFD874();
  v219 = v341;
  v218(v197, v211, v341);
  sub_261CFD6C4();
  v268 = sub_261CFCA84();
  *(v215 + v267) = v268;
  v220 = v342;
  v266 = v342[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v221 = v344;
  v218(v197, v344, v219);
  sub_261CFD6C4();
  v267 = sub_261CFCB14();
  v222 = v339;
  *(v339 + v266) = v267;
  v265 = v220[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F8, &qword_261D0B658);
  sub_261CFF9B4();
  sub_261CFD874();
  v218(v197, v221, v219);
  sub_261CFD6C4();
  sub_261B52470();
  v266 = sub_261CFCA34();
  *(v222 + v265) = v266;
  v223 = v222;
  v224 = v342;
  v264 = v342[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA00, &unk_261D11D00);
  sub_261CFF9B4();
  sub_261CFD874();
  v225 = v221;
  v226 = v341;
  v227 = v343;
  (v343)(v197, v225, v341);
  sub_261CFD6C4();
  sub_261B524C4();
  v265 = sub_261CFCA34();
  *(v223 + v264) = v265;
  v263 = v224[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA08, &qword_261D0B660);
  sub_261CFF9B4();
  sub_261CFD874();
  v228 = v344;
  v227(v197, v344, v226);
  sub_261CFD6C4();
  v264 = sub_261CFCA54();
  v229 = v339;
  *(v339 + v263) = v264;
  v263 = v342[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  (v343)(v197, v228, v226);
  sub_261CFD6C4();
  v274 = sub_261CFCA54();
  *(v229 + v263) = v274;
  v230 = v342;
  v262 = v342[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA10, &qword_261D0B668);
  sub_261CFF9B4();
  sub_261CFD874();
  v231 = v228;
  v232 = v228;
  v233 = v341;
  v234 = v343;
  (v343)(v197, v231, v341);
  sub_261CFD6C4();
  v263 = sub_261CFCB14();
  *(v339 + v262) = v263;
  v261 = v230[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA18, &unk_261D11D20);
  sub_261CFF9B4();
  sub_261CFD874();
  v234(v197, v232, v233);
  sub_261CFD6C4();
  v262 = sub_261CFCA74();
  v235 = v339;
  *(v339 + v261) = v262;
  v236 = v230[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA20, &qword_261D0B670);
  sub_261CFF9B4();
  sub_261CFD874();
  v234(v197, v344, v341);
  sub_261CFD6C4();
  v343 = sub_261CFCAC4();
  *(v235 + v236) = v343;
  sub_261B01DC4(v332, v235 + v230[10], type metadata accessor for AppEntityID);
  v237 = v301;
  sub_261B01DC4(v333, v301, type metadata accessor for ListEntity);
  sub_261B01DC4(v237, v300, type metadata accessor for ListEntity);
  sub_261CFCA14();
  v344 = type metadata accessor for ListEntity;
  sub_261BAF87C(v237, type metadata accessor for ListEntity);
  LOBYTE(v348) = v299;
  sub_261CFCA14();
  v238 = v304;
  sub_261AFB668(v334, v304, &qword_27FEDAB68, &unk_261D11C90);
  v239 = v305;
  sub_261AFB668(v238, v305, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v238, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v335, v238, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v238, v239, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v238, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v336, v238, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v238, v239, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v238, &qword_27FEDAB68, &unk_261D11C90);
  v240 = v312;
  sub_261AFB668(v337, v312, &qword_27FEDA160, &qword_261D02220);
  v241 = v313;
  sub_261AFB668(v240, v313, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v240, &qword_27FEDA160, &qword_261D02220);
  v348 = v298;
  v349 = v297;
  sub_261CFCA14();
  v242 = v314;
  sub_261AFB668(v329, v314, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v242, v324, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v242, &qword_27FEDA9A0, &unk_261D034A0);
  *&v348 = v294;
  *(&v348 + 1) = v293;
  *&v349 = v292;
  sub_261CFCA14();
  v243 = v310;
  sub_261AFB668(v330, v310, &unk_27FEDB0B0, &unk_261D035D0);
  v244 = v311;
  sub_261AFB668(v243, v311, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v243, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v331, v243, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v243, v244, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v243, &unk_27FEDB0B0, &unk_261D035D0);
  *&v348 = v296;
  *(&v348 + 1) = v295;
  sub_261CFD104();
  sub_261CFCA14();
  LOBYTE(v348) = v291;
  sub_261CFCA14();
  LOBYTE(v348) = v281;
  sub_261CFCA14();
  v245 = v321;
  sub_261AFB668(v328, v321, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v245, v307, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  sub_261AE6A40(v245, &unk_27FEDE110, &unk_261D035B0);
  v246 = v347;
  *&v348 = v347;
  sub_261CFD104();
  sub_261CFCA14();
  v247 = v290;
  *&v348 = v290;
  sub_261CFD104();
  sub_261CFCA14();
  v248 = v282;
  v249 = MEMORY[0x277D84F90];
  if (!v282)
  {
    v248 = MEMORY[0x277D84F90];
  }

  *&v348 = v248;
  sub_261CFCA14();
  v250 = v283;
  if (!v283)
  {
    v250 = v249;
  }

  *&v348 = v250;
  sub_261CFCA14();
  *&v348 = v303;
  *(&v348 + 1) = v302;
  sub_261CFCA14();
  sub_261CFD554();
  v251 = v316;
  sub_261CFD534();
  v252 = sub_261CFD524();
  (*(*(v252 - 8) + 56))(v251, 0, 1, v252);
  sub_261AFB668(v251, v317, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  sub_261AE6A40(v251, &qword_27FEDA9A8, &qword_261D034B0);
  if (v247)
  {
    v253 = v247;
  }

  else
  {
    v253 = v249;
  }

  *&v348 = v253;
  sub_261CFCA14();
  v254 = v337;
  sub_261AFB668(v337, v240, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v240, v241, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v240, &qword_27FEDA160, &qword_261D02220);
  v255 = v329;
  sub_261AFB668(v329, v242, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v242, v324, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v242, &qword_27FEDA9A0, &unk_261D034A0);
  v256 = type metadata accessor for SectionEntity();
  v257 = v318;
  (*(*(v256 - 8) + 56))(v318, 1, 1, v256);
  sub_261AFB668(v257, v319, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  sub_261AE6A40(v257, &qword_27FEDA1E0, &unk_261D02300);
  v258 = MEMORY[0x277D84F90];
  if (v246)
  {
    v258 = v246;
  }

  *&v348 = v258;
  sub_261CFCA14();

  sub_261AE6A40(v320, &qword_27FEDA108, &unk_261D020C0);
  sub_261AE6A40(v328, &unk_27FEDE110, &unk_261D035B0);
  sub_261AE6A40(v331, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v330, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v255, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v254, &qword_27FEDA160, &qword_261D02220);
  sub_261AE6A40(v336, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v335, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v334, &qword_27FEDAB68, &unk_261D11C90);
  v259 = v344;
  sub_261BAF87C(v333, v344);
  sub_261BAF87C(v332, type metadata accessor for AppEntityID);
  sub_261BAF87C(v326, v259);
  sub_261AE6A40(v338, &unk_27FEDE110, &unk_261D035B0);
  return sub_261BAF87C(v325, type metadata accessor for AppEntityID);
}

uint64_t sub_261C81A3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v137 = a2;
  v127 = sub_261CFEC94();
  v3 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD674();
  v135 = *(v5 - 8);
  v136 = v5;
  v6 = *(v135 + 64);
  MEMORY[0x28223BE20](v5);
  v111 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v129 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v106 - v21;
  MEMORY[0x28223BE20](v20);
  v131 = &v106 - v22;
  v23 = type metadata accessor for AppEntityID();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = a1;
  v28 = [a1 objectID];
  v29 = [v28 entityName];
  v30 = sub_261CFFA74();
  v32 = v31;

  v33 = [v28 uuid];
  v34 = v27 + *(v24 + 28);
  sub_261CFD834();

  v35 = *(v24 + 32);
  v36 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v37 = *(*(v36 - 8) + 56);
  v130 = v27;
  v37(v27 + v35, 1, 1, v36);
  *v27 = v30;
  v27[1] = v32;
  v38 = [a1 name];
  v124 = sub_261CFFA74();
  v123 = v39;

  v40 = type metadata accessor for GroupEntity();
  (*(*(v40 - 8) + 56))(v131, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v119 = sub_261AFF54C();
  v122 = sub_261CFCA44();
  v41 = v137;
  *v137 = v122;
  v42 = type metadata accessor for ListEntity();
  v43 = *(v42 + 24);
  v44 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v121 = sub_261CFCB24();
  *(v41 + v43) = v121;
  v120 = v44[7];
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  v134 = *MEMORY[0x277CC9110];
  v46 = v136;
  v47 = v135 + 104;
  v133 = *(v135 + 104);
  v48 = v111;
  v133(v111);
  sub_261CFD6B4();
  v49 = MEMORY[0x2667199E0](v15, &type metadata for UpdateListNameAppIntent);
  *(v41 + v120) = v49;
  v118 = v45[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v50 = v48;
  v51 = v134;
  v52 = v46;
  v53 = v133;
  (v133)(v48, v134, v52);
  v54 = v15;
  sub_261CFD6B4();
  v55 = sub_261AFF5A0();
  v120 = MEMORY[0x2667199D0](v15, &type metadata for UpdateListColorAppIntent, v55);
  v56 = v137;
  *(v137 + v118) = v120;
  v117 = v45[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  v57 = v51;
  v58 = v136;
  v135 = v47;
  v53(v50, v57, v136);
  sub_261CFD6B4();
  v59 = sub_261AFF5F4();
  v118 = MEMORY[0x2667199D0](v15, &type metadata for UpdateListBadgeAppIntent, v59);
  *(v56 + v117) = v118;
  v116 = v45[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v60 = v134;
  v61 = v133;
  (v133)(v50, v134, v58);
  v62 = v50;
  sub_261CFD6B4();
  v63 = sub_261AE8384(&qword_280D22670, type metadata accessor for GroupEntity);
  v64 = v54;
  v117 = MEMORY[0x2667199D0](v54, &type metadata for UpdateListParentAppIntent, v63);
  v65 = v137;
  *(v137 + v116) = v117;
  v115 = v45[11];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v66 = v60;
  v67 = v60;
  v68 = v136;
  v61(v62, v66, v136);
  v132 = v64;
  sub_261CFD6B4();
  v116 = sub_261CFCA84();
  *(v65 + v115) = v116;
  v114 = v45[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v69 = v68;
  v70 = v68;
  v71 = v133;
  (v133)(v62, v67, v69);
  v72 = v132;
  v73 = v62;
  sub_261CFD6B4();
  sub_261AE8384(&qword_280D224E0, type metadata accessor for SectionEntity);
  v115 = sub_261CFCA54();
  v74 = v137;
  *(v137 + v114) = v115;
  v113 = v45[13];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v75 = v134;
  (v71)(v73, v134, v70);
  sub_261CFD6B4();
  v114 = MEMORY[0x2667199F0](v72, &type metadata for UpdateListIsPinnedAppIntent);
  *(v74 + v113) = v114;
  v112 = v45[14];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v76 = v136;
  v77 = v133;
  (v133)(v73, v75, v136);
  v78 = v132;
  sub_261CFD6B4();
  v113 = MEMORY[0x2667199F0](v78, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v74 + v112) = v113;
  v110 = v45[15];
  v79 = v45;
  v108 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v80 = v76;
  v81 = v76;
  v82 = v77;
  (v77)(v73, v75, v80);
  v83 = v132;
  sub_261CFD6B4();
  v84 = v83;
  v112 = MEMORY[0x2667199F0](v83, &type metadata for UpdateListAutoCategorizeAppIntent);
  v85 = v137;
  *(v137 + v110) = v112;
  v109 = v79[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v86 = v134;
  (v82)(v73, v134, v81);
  sub_261CFD6B4();
  v87 = sub_261AFF648();
  v110 = MEMORY[0x2667199C0](v84, &type metadata for UpdateListListLayoutAppIntent, v87);
  *(v85 + v109) = v110;
  v88 = v108;
  v107 = v108[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v89 = v136;
  (v82)(v73, v86, v136);
  sub_261CFD6B4();
  v90 = sub_261AFF69C();
  v109 = MEMORY[0x2667199C0](v84, &type metadata for UpdateListSortingStyleAppIntent, v90);
  v91 = v137;
  *(v137 + v107) = v109;
  v92 = v88[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  (v133)(v73, v134, v89);
  sub_261CFD6B4();
  *(v91 + v92) = MEMORY[0x2667199C0](v84, &type metadata for UpdateListTypeAppIntent, v119);
  v93 = (v91 + v88[19]);
  *v93 = 0;
  v93[1] = 0;
  v136 = v88[20];
  *(v91 + v136) = 0;
  sub_261B01DC4(v130, v91 + v88[5], type metadata accessor for AppEntityID);
  *(v91 + v88[21]) = 0;
  v94 = type metadata accessor for AnyListEntityLazyImage();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  v97 = swift_allocObject();
  *&v138 = MEMORY[0x277D84F90];
  sub_261AE8384(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B91FF0(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
  sub_261D001D4();
  v98 = sub_261CFECB4();
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  *(v97 + 128) = sub_261CFECA4();
  v101 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v102 = sub_261CFD074();
  (*(*(v102 - 8) + 56))(v97 + v101, 1, 1, v102);
  *(v97 + 16) = 1;
  *(v97 + 24) = 0u;
  *(v97 + 40) = 0u;
  *(v97 + 56) = 0u;
  *(v97 + 72) = 0u;
  *(v97 + 88) = 0u;
  *(v97 + 104) = 0u;
  *(v97 + 120) = 0;
  *(v97 + 121) = 1;
  *(v91 + v88[22]) = v97;
  LOBYTE(v138) = 0;
  sub_261CFD2E4();
  LOBYTE(v138) = 0;
  sub_261CFD2E4();
  LOBYTE(v138) = 0;
  sub_261CFD2E4();
  LOBYTE(v138) = 2;
  sub_261CFD2E4();
  LOBYTE(v138) = 10;
  sub_261CFD2E4();
  LOBYTE(v138) = 2;
  sub_261CFD2E4();
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v138 = 0u;
  sub_261CFD2E4();
  *&v140 = 0;
  v138 = 0u;
  v139 = 0u;
  sub_261CFD2E4();
  v103 = v131;
  v104 = v128;
  sub_261AFB668(v131, v128, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v104, v129, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v104, &unk_27FEDD950, &unk_261D01440);
  *v93 = 0;
  v93[1] = 0;
  *(v91 + v136) = 0;
  *&v138 = 0;
  sub_261CFCA14();
  *&v138 = 0;
  sub_261CFCA14();
  *&v138 = v124;
  *(&v138 + 1) = v123;
  sub_261CFCA14();
  LOBYTE(v138) = 0;
  sub_261CFCA14();

  sub_261AE6A40(v103, &unk_27FEDD950, &unk_261D01440);
  return sub_261BAF87C(v130, type metadata accessor for AppEntityID);
}