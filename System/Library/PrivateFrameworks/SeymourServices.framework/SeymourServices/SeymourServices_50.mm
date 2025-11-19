uint64_t sub_2273842DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a3;
  v114 = a2;
  v106 = a4;
  v124 = sub_2276658B0();
  v122 = *(v124 - 8);
  v5 = *(v122 + 64);
  v6 = MEMORY[0x28223BE20](v124);
  v118 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v120 = v103 - v8;
  v119 = sub_227666F60();
  v121 = *(v119 - 8);
  v9 = v121[8];
  MEMORY[0x28223BE20](v119);
  v105 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_227663D60();
  v108 = *(v109 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v111 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v112 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v103 - v18;
  sub_22766A730();
  sub_22766B370();
  v20 = *(v14 + 8);
  v113 = v13;
  v110 = v14 + 8;
  v107 = v20;
  v20(v19, v13);
  v21 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = &qword_2813B2078;
  v31 = v22;
  v32 = v23;

  sub_22766A070();
  *(v29 + 16) = v31;
  *(v29 + 24) = v32;
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  v33 = sub_227014728();
  swift_beginAccess();
  v34 = sub_22766A080();
  v36 = v35;
  v37 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    sub_22766C3A0();
    (v34)(v123, 0);
    swift_endAccess();

    v38 = v117;
    v39 = sub_2272397F8(100);
    if (v38)
    {
      swift_setDeallocating();

      v40 = *(v29 + 40);

      v41 = *v30;
      v42 = sub_22766A100();
      (*(*(v42 - 8) + 8))(v29 + v41, v42);
      v43 = *(*v29 + 48);
      v44 = *(*v29 + 52);
      return swift_deallocClassInstance();
    }

    v46 = v39;
    swift_setDeallocating();

    v47 = *(v29 + 40);

    v48 = *v30;
    v49 = sub_22766A100();
    (*(*(v49 - 8) + 8))(v29 + v48, v49);
    v50 = *(*v29 + 48);
    v51 = *(*v29 + 52);
    v52 = swift_deallocClassInstance();
    MEMORY[0x28223BE20](v52);
    v53 = &v103[-4];
    v101 = v54;
    v55 = *(v46 + 16);
    if (v55)
    {
      v116 = v103;
      v56 = sub_2274CDB54(v55, 0);
      v57 = sub_2274CF01C(v123, (v56 + ((*(v122 + 80) + 32) & ~*(v122 + 80))), v55, v46);
      v58 = v123[0];
      v117 = v123[4];

      sub_226EBB21C();
      v59 = v57 == v55;
      v60 = v113;
      if (!v59)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v61 = v111;
      v53 = &v103[-4];
    }

    else
    {
      v56 = MEMORY[0x277D84F90];
      v61 = v111;
      v60 = v113;
    }

    v123[0] = v56;
    sub_22720AE34(sub_22739039C, v53);
    v103[1] = 0;

    v62 = v123[0];
    v63 = *(v123[0] + 16);
    v34 = MEMORY[0x277D84F90];
    v104 = v123[0];
    if (v63)
    {
      v123[0] = MEMORY[0x277D84F90];
      sub_226F1FA28(0, v63, 0);
      v34 = v123[0];
      v64 = *(v122 + 16);
      v65 = v62 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v116 = *(v122 + 72);
      v117 = v64;
      v66 = (v122 + 8);
      v115 = v121 + 4;
      v67 = v105;
      do
      {
        v68 = v120;
        v69 = v124;
        v117(v120, v65, v124);
        sub_227665880();
        sub_227666F30();
        (*v66)(v68, v69);
        v123[0] = v34;
        v71 = *(v34 + 16);
        v70 = *(v34 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_226F1FA28(v70 > 1, v71 + 1, 1);
          v34 = v123[0];
        }

        *(v34 + 16) = v71 + 1;
        (v121[4])(v34 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + v121[9] * v71, v67, v119);
        v65 += v116;
        --v63;
      }

      while (v63);
      v60 = v113;
      v61 = v111;
      v62 = v104;
    }

    sub_22766A710();
    v72 = v108;
    v73 = v109;
    (*(v108 + 16))(v61, v114, v109);

    v74 = v62;
    v75 = sub_22766B380();
    v76 = sub_22766C8B0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = v72;
      v78 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v123[0] = v121;
      *v78 = 134218242;
      *(v78 + 4) = *(v74 + 16);

      *(v78 + 12) = 2080;
      sub_227390744(&qword_28139BC38, MEMORY[0x277D504B0]);
      v79 = sub_22766D140();
      v80 = v73;
      v82 = v81;
      (*(v77 + 8))(v61, v80);
      v83 = sub_226E97AE8(v79, v82, v123);

      *(v78 + 14) = v83;
      _os_log_impl(&dword_226E8E000, v75, v76, "FilterCatalog found %ld tips with filter: %s", v78, 0x16u);
      v84 = v121;
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x22AA9A450](v84, -1, -1);
      MEMORY[0x22AA9A450](v78, -1, -1);

      v85 = v112;
      v86 = v113;
    }

    else
    {

      (*(v72 + 8))(v61, v73);
      v85 = v112;
      v86 = v60;
    }

    v107(v85, v86);
    v87 = *(v74 + 16);
    if (!v87)
    {
      break;
    }

    v88 = *(v122 + 16);
    v29 = v74 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v120 = *(v122 + 72);
    v121 = v88;
    v122 += 16;
    v89 = (v122 - 8);
    v90 = MEMORY[0x277D84F90];
    while (1)
    {
      v91 = v118;
      v92 = v124;
      (v121)(v118, v29, v124);
      v37 = sub_2276658A0();
      (*v89)(v91, v92);
      v93 = v37[2];
      v94 = *(v90 + 2);
      v30 = (v94 + v93);
      if (__OFADD__(v94, v93))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v30 <= *(v90 + 3) >> 1)
      {
        if (v37[2])
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v94 <= v30)
        {
          v96 = v94 + v93;
        }

        else
        {
          v96 = v94;
        }

        v90 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v96, 1, v90);
        if (v37[2])
        {
LABEL_31:
          if ((*(v90 + 3) >> 1) - *(v90 + 2) < v93)
          {
            goto LABEL_40;
          }

          swift_arrayInitWithCopy();

          if (v93)
          {
            v97 = *(v90 + 2);
            v98 = __OFADD__(v97, v93);
            v99 = v97 + v93;
            if (v98)
            {
              goto LABEL_41;
            }

            *(v90 + 2) = v99;
          }

          goto LABEL_21;
        }
      }

      if (v93)
      {
        goto LABEL_39;
      }

LABEL_21:
      v29 += v120;
      if (!--v87)
      {

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    sub_22766C360();
  }

  v90 = MEMORY[0x277D84F90];
LABEL_37:
  v100 = sub_226F3E6A8(v90);

  v101 = v100;
  v102 = MEMORY[0x277D84FA0];
  return sub_2276657C0();
}

char *sub_227384E90@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226F87C04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_227384EBC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226F87894(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_227384EE8@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226F88950(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_227384F14@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226F885E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_227384F40@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226F891AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_227384F6C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226F8951C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_227384F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_226F86AB0(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_227384FCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  v68 = a2;
  v15 = sub_227665DD0();
  v16 = sub_227230638(v15);

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v71[0] = v16;
  v17 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v67 = v17;
  v18 = sub_22766C820();
  sub_226E93170(v71, v69, &unk_27D7BC990, &qword_227670A30);
  v19 = v70;
  if (v70)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v69, v70);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  else
  {
    v25 = 0;
  }

  v66 = objc_opt_self();
  v26 = [v66 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  [objc_allocWithZone(v27) initWithLeftExpression:v18 rightExpression:v26 modifier:0 type:10 options:0];

  sub_226E97D1C(v71, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v71, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v33 = sub_227665DC0();
  swift_getKeyPath();

  v34 = v73;
  v35 = sub_22738F564(v33, sub_22738FA3C);
  v36 = v34;

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v71[0] = v35;

  v37 = sub_22766C820();
  sub_226E93170(v71, v69, &unk_27D7BC990, &qword_227670A30);
  v38 = v70;
  if (v70)
  {
    v39 = __swift_project_boxed_opaque_existential_0(v69, v70);
    v73 = v28;
    v68 = KeyPath;
    v40 = v27;
    v41 = *(v38 - 8);
    v42 = *(v41 + 64);
    MEMORY[0x28223BE20](v39);
    v44 = &v65 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v38);
    v27 = v40;
    v36 = v34;
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  else
  {
    v45 = 0;
  }

  v46 = [v66 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v27) initWithLeftExpression:v37 rightExpression:v46 modifier:0 type:10 options:0];

  sub_226E97D1C(v71, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v64 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v47(v71, 0);
  swift_endAccess();

  v50 = swift_getKeyPath();
  v51 = sub_2273FC91C(v50);
  if (v36)
  {

    swift_setDeallocating();

    v52 = *(v12 + 40);

    v53 = qword_2813B2078;
    v54 = sub_22766A100();
    (*(*(v54 - 8) + 8))(v12 + v53, v54);
    v55 = *(*v12 + 48);
    v56 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v58 = sub_226F3E6A8(v51);

    swift_setDeallocating();

    v59 = *(v12 + 40);

    v60 = qword_2813B2078;
    v61 = sub_22766A100();
    (*(*(v61 - 8) + 8))(v12 + v60, v61);
    v62 = *(*v12 + 48);
    v63 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *v65 = v58;
  }

  return result;
}

uint64_t sub_227385790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, size_t *a3@<X8>)
{
  result = sub_226F8616C(a2, a1);
  if (!v3)
  {
    v6 = *(result + 16);
    if (v6)
    {
      v7 = result;
      v8 = sub_2274CD7E0(*(result + 16), 0);
      v9 = *(sub_227666B60() - 8);
      v10 = sub_2274CDF78(&v11, (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), v6, v7);
      result = sub_226EBB21C();
      if (v10 == v6)
      {
        *a3 = v8;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      *a3 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_227385880@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a2;
  v64 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7C0, &qword_227682268);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v53 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v51[-v9];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B0, &unk_227682270);
  v11 = *(v60 - 8);
  v59 = *(v11 + 64);
  v12 = MEMORY[0x28223BE20](v60);
  v57 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v54 = &v51[-v14];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v56 = *(v63 - 8);
  v62 = *(v56 + 64);
  v15 = MEMORY[0x28223BE20](v63);
  v61 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v58 = &v51[-v17];
  v18 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v19 = *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a1;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF10, qword_227682280);
  sub_226ECF5D8(sub_22738F808, v20, v18, v21, v19, v10);

  v22 = swift_allocObject();
  *(v22 + 16) = v52 & 1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22738F824;
  *(v23 + 24) = v22;
  v24 = v53;
  v25 = v55;
  (*(v6 + 16))(v53, v10, v55);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v26, v24, v25);
  v28 = (v27 + ((v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_22738F864;
  v28[1] = v23;
  sub_2276690A0();
  v29 = v54;
  sub_227669270();
  (*(v6 + 8))(v10, v25);
  v30 = v4;
  v31 = *__swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v66[3] = type metadata accessor for CatalogScriptClient();
  v66[4] = &off_283AC6368;
  v66[0] = v31;
  sub_226E91B50(v66, v65);
  v32 = swift_allocObject();
  sub_226E92AB8(v65, v32 + 16);

  __swift_destroy_boxed_opaque_existential_0(v66);
  v33 = v57;
  v34 = v29;
  v35 = v60;
  (*(v11 + 16))(v57, v29, v60);
  v36 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v37 = (v59 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v11 + 32))(v38 + v36, v33, v35);
  v39 = (v38 + v37);
  *v39 = sub_22738F8D8;
  v39[1] = v32;
  sub_227668CE0();
  v40 = v58;
  sub_227669270();
  (*(v11 + 8))(v34, v35);
  v41 = v56;
  v42 = v61;
  v43 = v40;
  v44 = v63;
  (*(v56 + 16))(v61, v40, v63);
  v45 = v41;
  v46 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v47 = (v62 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v45 + 32))(v48 + v46, v42, v44);
  v49 = (v48 + v47);
  *v49 = sub_22738F934;
  v49[1] = v30;

  sub_227669270();
  return (*(v45 + 8))(v43, v44);
}

uint64_t sub_227385EE0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v8 = *__swift_project_boxed_opaque_existential_0((*v7 + 16), *(*v7 + 40));
  return a4(a3, a1);
}

uint64_t sub_227385F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_227668CE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_227669FB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v12 = *(sub_227668CD0() + 16);

  if (v12)
  {
    v13 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub);
    v17 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_eventHub + 8);
    swift_getObjectType();
    sub_227669FA0();
    sub_2276699D0();
    (*(v8 + 8))(v11, v7);
  }

  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return sub_227669280();
}

uint64_t sub_227386190@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v209 = *MEMORY[0x277D85DE8];
  v7 = sub_227666B60();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v186 - v13;
  result = sub_226F8616C(a2, a1);
  if (v3)
  {
    goto LABEL_65;
  }

  v16 = result;
  v193 = a1;
  v194 = v12;
  v196 = v8;
  v197 = 0;
  v17 = *(result + 32);
  v18 = v17 & 0x3F;
  v19 = ((1 << v17) + 63) >> 6;
  v20 = 8 * v19;

  v195 = v21;
  v200 = v7;
  v201 = v14;
  v22 = v14;
  v187 = a3;
  if (v18 <= 0xD)
  {
    goto LABEL_3;
  }

  while (1)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_3:
      v190 = v19;
      v189 = &v186;
      MEMORY[0x28223BE20](v21);
      v191 = &v186 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v191, v20);
      v192 = 0;
      v19 = 0;
      v20 = (v16 + 56);
      v23 = 1 << v16[32];
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *(v16 + 7);
      v26 = (v23 + 63) >> 6;
      v16 = v196;
      v198 = (v196 + 1);
      v199 = (v196 + 2);
      while (v25)
      {
        v27 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v28 = v27 | (v19 << 6);
        v29 = v195;
LABEL_13:
        v32 = v28;
        (*(v16 + 2))(v22, v29[6] + *(v16 + 9) * v28, v7);
        v33 = sub_227666B50();
        v35 = v34;
        v204 = v33;
        v205 = v34;
        v37 = v36 & 1;
        LOBYTE(v206) = v36 & 1;
        LOBYTE(v202[0]) = 2;
        sub_22738F9B0();
        sub_226ED56C4();
        v38 = sub_227663B30();
        v39 = v33;
        v40 = v35;
        v16 = v196;
        v41 = v37;
        v7 = v200;
        v22 = v201;
        sub_226EB2DFC(v39, v40, v41);
        (*(v16 + 1))(v22, v7);
        if (v38)
        {
          *&v191[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
          v42 = __OFADD__(v192, 1);
          v192 = (v192 + 1);
          if (v42)
          {
            __break(1u);
LABEL_17:
            v43 = sub_22726A560(v191, v190, v192, v29);
            goto LABEL_18;
          }
        }
      }

      v30 = v19;
      v29 = v195;
      while (1)
      {
        v19 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v19 >= v26)
        {
          goto LABEL_17;
        }

        v31 = *(v20 + 8 * v19);
        ++v30;
        if (v31)
        {
          v25 = (v31 - 1) & v31;
          v28 = __clz(__rbit64(v31)) | (v19 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    while (1)
    {
      v44 = swift_slowAlloc();
      v179 = v197;
      v180 = sub_22735AC6C(v44, v19, v16, sub_2273875E4, 0);
      v197 = v179;
      if (v179)
      {
        goto LABEL_86;
      }

      v43 = v180;

      MEMORY[0x22AA9A450](v44, -1, -1);
      v16 = v196;
LABEL_18:
      v44 = *(v43 + 16);
      v45 = MEMORY[0x277D84F90];
      if (!v44)
      {
        break;
      }

      v46 = sub_2274CD7E0(*(v43 + 16), 0);
      v47 = sub_2274CDF78(&v204, &v46[(v16[80] + 32) & ~v16[80]], v44, v43);
      v16 = v205;
      v7 = v206;
      v19 = v208;

      sub_226EBB21C();
      if (v47 == v44)
      {
        v16 = v196;
        v48 = v197;
        v7 = v200;
        goto LABEL_22;
      }

      __break(1u);
    }

    v46 = MEMORY[0x277D84F90];
    v48 = v197;
LABEL_22:
    v204 = v46;
    sub_22738B2E0(&v204);
    v191 = v48;
    if (v48)
    {
      break;
    }

    v49 = v204;
    v50 = v204[2];
    if (v50)
    {
      v204 = v45;
      sub_226F1EF90(0, v50, 0);
      v51 = v204;
      v52 = v16 + 16;
      v53 = *(v16 + 2);
      v54 = v16[80];
      v192 = v49;
      v55 = v49 + ((v54 + 32) & ~v54);
      v197 = *(v52 + 7);
      v198 = v53;
      v199 = v52;
      v56 = (v52 - 8);
      v57 = v201;
      do
      {
        (v198)(v57, v55, v7);
        v58 = sub_227666A50();
        v57 = v201;
        v59 = v58;
        v61 = v60;
        (*v56)(v201, v7);
        v204 = v51;
        v63 = v51[2];
        v62 = v51[3];
        if (v63 >= v62 >> 1)
        {
          sub_226F1EF90(v62 > 1, v63 + 1, 1);
          v57 = v201;
          v51 = v204;
        }

        v51[2] = v63 + 1;
        v64 = &v51[2 * v63];
        v64[4] = v59;
        v64[5] = v61;
        v55 = &v197[v55];
        --v50;
        v7 = v200;
      }

      while (v50);
    }

    else
    {

      v51 = MEMORY[0x277D84F90];
    }

    v192 = v51;
    v66 = v51[2];
    if (v66 >= 0xE)
    {
      v66 = 14;
    }

    v188 = v66;
    v16 = v195;
    v67 = v195[32];
    v68 = ((1 << v67) + 63) >> 6;
    if ((v67 & 0x3Fu) <= 0xD)
    {
      goto LABEL_33;
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v181 = swift_slowAlloc();
      v182 = v191;
      v183 = sub_22735AC6C(v181, v68, v16, sub_227387AF0, 0);
      if (v182)
      {

        v185 = v181;
        goto LABEL_88;
      }

      v83 = v183;

      MEMORY[0x22AA9A450](v181, -1, -1);
      v84 = 0;
LABEL_50:
      v201 = sub_22736F27C(v83, MEMORY[0x277D52828], MEMORY[0x277D527A8]);

      v85 = v193;
      v86 = __swift_project_boxed_opaque_existential_0(v193, v193[3]);
      v87 = *v86;
      v88 = v86[1];
      v89 = *(v86 + 16);
      v90 = v86[3];
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
      v92 = *(v91 + 48);
      v93 = *(v91 + 52);
      v94 = swift_allocObject();
      v95 = v87;
      v96 = v88;

      sub_22766A070();
      *(v94 + 16) = v95;
      *(v94 + 24) = v96;
      *(v94 + 32) = v89;
      *(v94 + 40) = v90;
      KeyPath = swift_getKeyPath();
      v98 = sub_2273FC9C4(KeyPath);
      v197 = v84;
      if (v84)
      {

        swift_setDeallocating();

        v99 = *(v94 + 40);

        v100 = qword_2813B2078;
        v101 = sub_22766A100();
        (*(*(v101 - 8) + 8))(v94 + v100, v101);
        v102 = *(*v94 + 48);
        v103 = *(*v94 + 52);
LABEL_64:
        result = swift_deallocClassInstance();
        goto LABEL_65;
      }

      v104 = sub_226F3E6A8(v98);

      swift_setDeallocating();

      v105 = *(v94 + 40);

      v106 = qword_2813B2078;
      v107 = sub_22766A100();
      v108 = *(v107 - 8);
      v199 = *(v108 + 8);
      v200 = v107;
      v198 = (v108 + 8);
      v199(v94 + v106);
      v109 = *(*v94 + 48);
      v110 = *(*v94 + 52);
      swift_deallocClassInstance();
      v111 = __swift_project_boxed_opaque_existential_0(v85, v85[3]);
      v112 = *v111;
      v113 = v111[1];
      v114 = *(v111 + 16);
      v115 = v111[3];
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
      v117 = *(v116 + 48);
      v118 = *(v116 + 52);
      v119 = swift_allocObject();
      v120 = v112;
      v121 = v113;

      sub_22766A070();
      *(v119 + 16) = v120;
      *(v119 + 24) = v121;
      *(v119 + 32) = v114;
      *(v119 + 40) = v115;
      swift_getKeyPath();
      v122 = sub_227230638(v104);

      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
      v204 = v122;
      v123 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v196 = v123;
      v124 = sub_22766C820();
      sub_226E93170(&v204, v202, &unk_27D7BC990, &qword_227670A30);
      v125 = v203;
      if (v203)
      {
        v126 = __swift_project_boxed_opaque_existential_0(v202, v203);
        v127 = *(v125 - 8);
        v128 = *(v127 + 64);
        MEMORY[0x28223BE20](v126);
        v130 = &v186 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v127 + 16))(v130);
        v131 = sub_22766D170();
        (*(v127 + 8))(v130, v125);
        __swift_destroy_boxed_opaque_existential_0(v202);
      }

      else
      {
        v131 = 0;
      }

      v195 = objc_opt_self();
      v132 = [v195 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
      [objc_allocWithZone(v133) initWithLeftExpression:v124 rightExpression:v132 modifier:0 type:10 options:0];

      sub_226E97D1C(&v204, &unk_27D7BC990, &qword_227670A30);
      swift_beginAccess();
      v134 = sub_22766A080();
      v136 = v135;
      MEMORY[0x22AA985C0]();
      if (*((*v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v134(&v204, 0);
      swift_endAccess();

      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_227670CD0;
      *(v137 + 32) = sub_227664C10();
      *(v137 + 40) = v138;
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
      v204 = v137;

      v139 = sub_22766C820();
      sub_226E93170(&v204, v202, &unk_27D7BC990, &qword_227670A30);
      v140 = v203;
      if (v203)
      {
        v141 = __swift_project_boxed_opaque_existential_0(v202, v203);
        v196 = &v186;
        v142 = v133;
        v143 = *(v140 - 8);
        v144 = *(v143 + 64);
        MEMORY[0x28223BE20](v141);
        v146 = &v186 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v143 + 16))(v146);
        v147 = sub_22766D170();
        (*(v143 + 8))(v146, v140);
        v133 = v142;
        __swift_destroy_boxed_opaque_existential_0(v202);
      }

      else
      {
        v147 = 0;
      }

      v148 = [v195 expressionForConstantValue_];
      swift_unknownObjectRelease();
      [objc_allocWithZone(v133) initWithLeftExpression:v139 rightExpression:v148 modifier:0 type:10 options:0];

      sub_226E97D1C(&v204, &unk_27D7BC990, &qword_227670A30);
      swift_beginAccess();
      v149 = sub_22766A080();
      v151 = v150;
      MEMORY[0x22AA985C0]();
      if (*((*v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v184 = *((*v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v149(&v204, 0);
      swift_endAccess();

      v152 = swift_getKeyPath();
      v153 = v197;
      v154 = sub_2273FC91C(v152);
      v197 = v153;
      v155 = v193;
      v156 = v201;
      if (v153)
      {

        swift_setDeallocating();

        v157 = *(v119 + 40);

        (v199)(v119 + qword_2813B2078, v200);
        v158 = *(*v119 + 48);
        v159 = *(*v119 + 52);
        goto LABEL_64;
      }

      v161 = v192;
      v162 = (2 * v188) | 1;
      v163 = sub_226F3E6A8(v154);

      swift_setDeallocating();

      v164 = *(v119 + 40);

      (v199)(v119 + qword_2813B2078, v200);
      v165 = *(*v119 + 48);
      v166 = *(*v119 + 52);
      swift_deallocClassInstance();
      v204 = v161;
      v205 = v161 + 4;
      v206 = 0;
      v207 = v162;

      sub_22738E5C8(v163);
      sub_22738E388(v156);
      v167 = sub_226F47060(v205, v206, v207);
      swift_unknownObjectRelease();
      v168 = *(v167 + 16);
      if (v168)
      {
        v169 = sub_2274CD6BC(*(v167 + 16), 0);
        v170 = sub_2274CDE20(&v204, v169 + 4, v168, v167);

        sub_226EBB21C();
        if (v170 != v168)
        {
          __break(1u);
        }

        v171 = v197;
        v155 = v193;
      }

      else
      {
        v169 = MEMORY[0x277D84F90];
        v171 = v197;
      }

      v172 = sub_226F7F468(v169, 0, 1, v155);
      if (v171)
      {
      }

      else
      {
        v173 = v172;

        v174 = sub_226F420C8(v173);

        v175 = sub_22736F27C(v174, MEMORY[0x277D522A0], MEMORY[0x277D52290]);

        v176 = sub_227009018(v175, v167);

        v177 = sub_22736EEA0(v176);

        v178 = sub_22742F5E0(v177, v174);

        *v187 = v178;
      }

LABEL_65:
      v160 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_33:
    v190 = v68;
    v189 = &v186;
    MEMORY[0x28223BE20](v65);
    v197 = &v186 - ((v69 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v197, v69);
    v20 = 0;
    v70 = v16 + 56;
    v71 = 1 << v16[32];
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v19 = v72 & *(v16 + 7);
    v73 = (v71 + 63) >> 6;
    v201 = (v196 + 2);
    v198 = 0;
    v199 = (v196 + 1);
    while (1)
    {
      v22 = v194;
      if (!v19)
      {
        break;
      }

      while (1)
      {
        v74 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_43:
        v77 = v74 | (v20 << 6);
        (v196[2])(v22, *(v16 + 6) + v196[9] * v77, v7);
        v78 = sub_227666B50();
        v80 = v79;
        v204 = v78;
        v205 = v79;
        v82 = v81 & 1;
        LOBYTE(v206) = v81 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
        sub_227663B00();
        sub_226EB2DFC(v78, v80, v82);
        if (((1 << SLOBYTE(v202[0])) & 0x14) == 0)
        {
          break;
        }

        v7 = v200;
        v22 = v194;
        (*v199)(v194, v200);
        v16 = v195;
        if (!v19)
        {
          goto LABEL_38;
        }
      }

      v7 = v200;
      (*v199)(v194, v200);
      *&v197[(v77 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v77;
      v42 = __OFADD__(v198++, 1);
      v16 = v195;
      if (v42)
      {
        __break(1u);
LABEL_49:
        v83 = sub_22726A560(v197, v190, v198, v16);
        v84 = v191;
        goto LABEL_50;
      }
    }

LABEL_38:
    v75 = v20;
    while (1)
    {
      v20 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v20 >= v73)
      {
        goto LABEL_49;
      }

      v76 = *&v70[8 * v20];
      ++v75;
      if (v76)
      {
        v74 = __clz(__rbit64(v76));
        v19 = (v76 - 1) & v76;
        goto LABEL_43;
      }
    }

LABEL_74:
    __break(1u);
  }

  __break(1u);
LABEL_86:

  v185 = v44;
LABEL_88:
  result = MEMORY[0x22AA9A450](v185, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2273875E4()
{
  v0 = sub_227666B50();
  v2 = v1;
  v4 = v3 & 1;
  sub_22738F9B0();
  sub_226ED56C4();
  v5 = sub_227663B30();
  sub_226EB2DFC(v0, v2, v4);
  return v5 & 1;
}

uint64_t sub_227387684(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v40 = sub_227662190();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_227662940();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = sub_227662750();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v34 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  sub_227662920();
  sub_227666A60();
  sub_2276628D0();
  v23 = *(v2 + 8);
  v37 = v2 + 8;
  v33 = v23;
  v23(v5, v40);
  v24 = *(v6 + 8);
  v35 = v6 + 8;
  v32 = v24;
  v24(v9, v39);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    sub_227662670();
    if (v25(v15, 1, v16) != 1)
    {
      sub_226E97D1C(v15, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
  }

  sub_227662920();
  sub_227666A60();
  v26 = v36;
  sub_2276628D0();
  v33(v5, v40);
  v32(v9, v39);
  if (v25(v26, 1, v16) == 1)
  {
    v27 = v34;
    sub_227662670();
    if (v25(v26, 1, v16) != 1)
    {
      sub_226E97D1C(v26, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v27 = v34;
    (*(v17 + 32))(v34, v26, v16);
  }

  v28 = sub_2276626B0();
  v29 = *(v17 + 8);
  v29(v27, v16);
  v29(v22, v16);
  return v28 & 1;
}

uint64_t sub_227387AF0()
{
  v0 = sub_227666B50();
  v2 = v1;
  v4 = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
  sub_227663B00();
  sub_226EB2DFC(v0, v2, v4);
  return (0xBu >> v6) & 1;
}

uint64_t sub_227387BE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226F918B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_227387C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  result = sub_226F91154(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_227387C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v22 = *v2;
  v23 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator + 24));
  v27 = 16;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  v10 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v11 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24));
  v12 = swift_allocObject();
  v13 = v22;
  v14 = v23;
  v12[2] = v3;
  v12[3] = v14;
  v12[4] = v13;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  sub_226ECF5D8(sub_2273881D8, v12, v10, v15, v11, v8);

  v17 = v24;
  v16 = v25;
  (*(v4 + 16))(v24, v8, v25);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v17, v16);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_2273882B0;
  v20[1] = v3;

  sub_227669270();
  return (*(v4 + 8))(v8, v16);
}

uint64_t sub_227387F54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v30 = a3;
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF08, &qword_227682248);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = sub_227663FA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *__swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore + 24));
  result = sub_226EAF48C(a1, v16);
  if (!v4)
  {
    v25 = a1;
    v26 = v13;
    v19 = v27;
    if (qword_28139B098 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_28139B0A0);
    (*(v8 + 16))(v11, v20, v7);
    sub_227669730();
    (*(v8 + 8))(v11, v7);
    if (v29 == 1)
    {
      v21 = sub_227663EA0();
    }

    else
    {
      v21 = v28;
    }

    v22 = v26;
    v23 = sub_226F91ACC(v21, v30, v25);
    result = (*(v22 + 8))(v16, v12);
    *v19 = v23;
  }

  return result;
}

uint64_t sub_2273881F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator + 32);
  __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator + 24));
  sub_226F19410();
  sub_226F19464();
  return sub_22766A120();
}

uint64_t sub_2273882B8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v36 = sub_2276657F0();
  v3 = sub_227665800();
  sub_227665820();
  sub_227665830();
  sub_227665810();

  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_2272DD664(v36, v3);

  swift_beginAccess();
  v16 = sub_22766A080();
  v18 = v17;
  v19 = v15;
  MEMORY[0x22AA985C0]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v16(v37, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  sub_22766A0F0();
  swift_endAccess();
  v20 = v38;
  v21 = sub_226EE010C(100);
  if (v20)
  {
    swift_setDeallocating();

    v22 = *(v12 + 40);

    v23 = qword_2813B2078;
    v24 = sub_22766A100();
    (*(*(v24 - 8) + 8))(v12 + v23, v24);
    v25 = *(*v12 + 48);
    v26 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v28 = v21;
    swift_setDeallocating();

    v29 = *(v12 + 40);

    v30 = qword_2813B2078;
    v31 = sub_22766A100();
    (*(*(v31 - 8) + 8))(v12 + v30, v31);
    v32 = *(*v12 + 48);
    v33 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v28;
  }

  return result;
}

char *sub_22738860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  result = sub_226F91C44(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_227388640@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v15 = *(*__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40)) + 16);
  sub_22728D3DC(10, 0, 0, v8);
  sub_2272AC928(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_227388838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_22728CE18(20, 0, 0, v7);
  sub_2272AC3E4(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390894;
  v20[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2B0, &unk_227682480);
  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_227388B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v15 = *(*__swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40)) + 16);
  sub_22728EAD4(21, 0, 0, v8);
  sub_2272ADE18(v8, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_227388D34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v16 = *(*__swift_project_boxed_opaque_existential_0((*v15 + 16), *(*v15 + 40)) + 16);
  sub_2272858E0(23, 0, 0, v7);
  sub_2272A1748(v7, v9);
  v17 = *(v4 + 8);
  v17(v7, v3);
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_227390624;
  v20[1] = v2;
  sub_227666250();

  sub_227669270();
  return (v17)(v9, v3);
}

uint64_t sub_227389030()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766A8A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_platform);
  v12 = sub_2276693C0();
  (*(v7 + 104))(v10, *MEMORY[0x277D4F980], v6);
  v13 = sub_226EC9A38(v10, v12);

  (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    sub_22766A730();
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Current platform does not support background workout metadata refreshing", v16, 2u);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return v13 & 1;
}

uint64_t sub_22738925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_227662750();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22738931C, 0, 0);
}

uint64_t sub_22738931C()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_0((v0[2] + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator), *(v0[2] + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator + 24));
  v3 = sub_227666340();
  v4 = *v2;
  sub_227662740();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2273893EC;
  v6 = v0[5];

  return sub_2273A75C8(v3, v6);
}

uint64_t sub_2273893EC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227391D78, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_227389594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_226E93170(a3, v24 - v10, &unk_27D7BC8E0, &qword_2276784C0);
  v12 = sub_22766C4B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E97D1C(v11, &unk_27D7BC8E0, &qword_2276784C0);
  }

  else
  {
    sub_22766C4A0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22766C420();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22766C0B0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_226E97D1C(a3, &unk_27D7BC8E0, &qword_2276784C0);

      return v22;
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

  sub_226E97D1C(a3, &unk_27D7BC8E0, &qword_2276784C0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_227389840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_227662750();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227389900, 0, 0);
}

uint64_t sub_227389900()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_0((v0[2] + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator), *(v0[2] + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator + 24));
  v3 = sub_227666340();
  v4 = *v2;
  sub_227662740();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2273899D0;
  v6 = v0[5];

  return sub_2273A75C8(v3, v6);
}

uint64_t sub_2273899D0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22709BB4C, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_227389B78(void *a1)
{
  v3 = sub_227664F50();
  v4 = sub_22736F27C(v3, MEMORY[0x277D53BA0], MEMORY[0x277D53B80]);

  v6 = sub_226F7F468(v5, 0, 1, a1);

  if (v1)
  {
  }

  v8 = sub_226F420C8(v6);

  v9 = sub_226F3E6A8(v4);

  v10 = sub_22736F27C(v8, MEMORY[0x277D522A0], MEMORY[0x277D52290]);

  v11 = sub_227009018(v10, v9);

  v12 = sub_22736EEA0(v11);

  sub_22742F5E0(v12, v8);

  return sub_227669090();
}

void sub_227389D0C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v169 = a2;
  v106[1] = a3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v147 = *(v146 - 8);
  v4 = *(v147 + 64);
  v5 = MEMORY[0x28223BE20](v146);
  v145 = v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v144 = v106 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v168 = *(v143 - 8);
  v7 = *(v168 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = v106 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v9 = *(v141 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v141);
  v140 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v139 = v106 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v13 = *(v138 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v138);
  v163 = v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v136 = v106 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v162 = v106 - v20;
  v137 = v21;
  MEMORY[0x28223BE20](v19);
  v135 = v106 - v22;
  v161 = sub_227668E80();
  v23 = *(v161 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v161);
  v133 = v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v26;
  MEMORY[0x28223BE20](v25);
  v160 = v106 - v27;
  v159 = sub_2276642E0();
  v28 = *(v159 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v159);
  v158 = v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v157 = v106 - v31;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB188, &unk_227684DF0);
  v32 = *(v132 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = v106 - v34;
  v35 = *a1;
  v36 = *(*a1 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v171 = MEMORY[0x277D84F90];
    v154 = v36;
    sub_226F20568(0, v36, 0);
    v153 = 0;
    v127 = (v169 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient);
    v39 = *(v28 + 16);
    v38 = v28 + 16;
    v152 = v39;
    v40 = *(v38 + 64);
    v41 = (v35 + ((v40 + 32) & ~v40));
    v125 = v23 + 16;
    v37 = v171;
    v124 = v23 + 32;
    v123 = v9 + 16;
    v122 = *(v38 + 56);
    v121 = v10 + 7;
    v120 = v9 + 32;
    v119 = v9 + 8;
    v118 = (v168 + 16);
    v117 = (v168 + 8);
    v168 = v13 + 32;
    v169 = v13 + 16;
    v116 = v147 + 16;
    v115 = v4 + 7;
    v114 = v147 + 32;
    v113 = v147 + 8;
    v156 = v13;
    v112 = v13 + 8;
    v126 = v40;
    v111 = (v40 + 16) & ~v40;
    v110 = v111 + v29;
    v109 = (v38 + 16);
    v108 = v23 + 8;
    v107 = (v38 - 8);
    v106[2] = v32 + 32;
    v130 = v9;
    v129 = v23;
    v155 = v38;
    v128 = v32;
    do
    {
      v151 = v37;
      v42 = v157;
      v150 = v41;
      v43 = v159;
      v44 = v152;
      v152(v157, v41, v159);
      v44(v158, v42, v43);
      v45 = v160;
      sub_227668E70();
      v46 = __swift_project_boxed_opaque_existential_0(v127, v127[3]);
      v47 = __swift_project_boxed_opaque_existential_0((*v46 + 16), *(*v46 + 40));
      v48 = *v47;
      v49 = *(*v47 + 24);
      v50 = v133;
      v51 = v161;
      (*(v23 + 16))(v133, v45, v161);
      v52 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v53 = swift_allocObject();
      (*(v23 + 32))(v53 + v52, v50, v51);
      v54 = v139;
      sub_227669280();
      v55 = swift_allocObject();
      *(v55 + 16) = v49;
      *(v55 + 24) = 3;
      v56 = v140;
      v57 = v141;
      (*(v9 + 16))(v140, v54, v141);
      v58 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v59 = (v121 + v58) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      (*(v9 + 32))(v60 + v58, v56, v57);
      v61 = (v60 + v59);
      *v61 = sub_227390930;
      v61[1] = v55;
      v149 = sub_2276685B0();

      v62 = v162;
      sub_227669270();
      (*(v9 + 8))(v54, v57);
      v63 = v142;
      v64 = v143;
      (*v118)(v142, v48 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v143);
      sub_227669730();
      (*v117)(v63, v64);
      v65 = v170;
      v148 = v48;
      v66 = *(v48 + 112);
      v67 = v144;
      v68 = v146;
      v69 = v153;
      sub_2276696A0();
      v153 = v69;
      v70 = v156;
      v167 = *(v156 + 16);
      v71 = v163;
      v72 = v138;
      v167(v163, v62, v138);
      v73 = v70;
      v166 = *(v70 + 80);
      v74 = ((v166 + 16) & ~v166) + v137;
      v75 = (v166 + 16) & ~v166;
      v165 = v75;
      v76 = swift_allocObject();
      v164 = *(v73 + 32);
      v164(v76 + v75, v71, v72);
      v77 = v147;
      v78 = v145;
      (*(v147 + 16))(v145, v67, v68);
      v79 = (*(v77 + 80) + 16) & ~*(v77 + 80);
      v80 = (v115 + v79) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      (*(v77 + 32))(v81 + v79, v78, v68);
      v82 = (v81 + v80);
      *v82 = sub_227390964;
      v82[1] = v76;
      v83 = v136;
      sub_227669270();
      (*(v77 + 8))(v67, v68);
      v84 = swift_allocObject();
      swift_weakInit();
      v85 = swift_allocObject();
      *(v85 + 16) = v65;
      *(v85 + 24) = v84;
      v86 = v163;
      v167(v163, v83, v72);
      v87 = (v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      v164(v88 + v165, v86, v72);
      v89 = (v88 + v87);
      *v89 = sub_227390A18;
      v89[1] = v85;

      v90 = v135;
      sub_227669270();
      v91 = *(v156 + 8);
      v91(v83, v72);

      v92 = v162;
      v91(v162, v72);
      v94 = v157;
      v93 = v158;
      v95 = v159;
      v152(v158, v157, v159);
      v96 = swift_allocObject();
      (*v109)(v96 + v111, v93, v95);
      v97 = swift_allocObject();
      *(v97 + 16) = sub_227390A4C;
      *(v97 + 24) = v96;
      v167(v92, v90, v72);
      v98 = swift_allocObject();
      v164(v98 + v165, v92, v72);
      v99 = (v98 + v87);
      *v99 = sub_227390B14;
      v99[1] = v97;
      v37 = v151;
      sub_227665D90();
      v100 = v131;
      sub_227669270();
      v101 = v72;
      v23 = v129;
      v91(v90, v101);
      (*(v23 + 8))(v160, v161);
      (*v107)(v94, v95);
      v171 = v37;
      v103 = *(v37 + 16);
      v102 = *(v37 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_226F20568(v102 > 1, v103 + 1, 1);
        v37 = v171;
      }

      *(v37 + 16) = v103 + 1;
      (*(v128 + 32))(v37 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v103, v100, v132);
      v41 = &v150[v122];
      v104 = v154-- == 1;
      v9 = v130;
    }

    while (!v104);
  }

  v171 = v37;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v105 = sub_22766C950();
  sub_227669A50();
  sub_227665D90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF38, &unk_227682490);
  sub_227390B44();
  sub_227669210();
}

uint64_t sub_22738ACCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD820, &qword_22767D590);
  v10 = *(v41 - 8);
  v39 = *(v10 + 64);
  v11 = MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v37 - v13;
  v14 = *a1;
  v15 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v16 = sub_22745016C(v14);
  v17 = sub_2273D1B98(v16);

  v18 = *v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v20 + 24) = 50;
  *(v20 + 32) = 2;
  *(v20 + 40) = 32;
  *(v20 + 48) = &unk_227682460;
  *(v20 + 56) = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_227391D98;
  *(v22 + 24) = v21;
  v23 = v38;
  (*(v5 + 16))(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v38);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v24, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v26 = (v25 + ((v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227390654;
  v26[1] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  v27 = v37;
  sub_227669270();
  (*(v5 + 8))(v9, v23);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_22738B190;
  *(v28 + 24) = 0;
  v30 = v40;
  v29 = v41;
  v31 = v27;
  (*(v10 + 16))(v40, v27, v41);
  v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = (v39 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v10 + 32))(v34 + v32, v30, v29);
  v35 = (v34 + v33);
  *v35 = sub_2273906C4;
  v35[1] = v28;
  sub_227666250();
  sub_227669270();
  return (*(v10 + 8))(v31, v29);
}

uint64_t sub_22738B190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_227666250();
    return (*(*(v4 - 8) + 16))(a2, v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
  }

  else
  {
    v6 = sub_2276639E0();
    sub_227390744(&qword_27D7BCBF8, MEMORY[0x277D50230]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D50218], v6);
    return swift_willThrow();
  }
}

uint64_t sub_22738B2E0(void **a1)
{
  v2 = *(sub_227666B60() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2271179F8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22738B388(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22738B388(char **a1)
{
  v2 = a1[1];
  result = sub_22766D130();
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
        sub_227666B60();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227666B60() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22738BC14(v8, v9, a1, v4);
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
    return sub_22738B4B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22738B4B4(char *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v84 = a4;
  v81 = a1;
  v90 = sub_227662190();
  v6 = *(v90 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_227662940();
  v9 = *(v88 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = sub_227662750();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v86 = &v60 - v25;
  v26 = sub_227666B60();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v70 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v91 = &v60 - v31;
  result = MEMORY[0x28223BE20](v30);
  v85 = &v60 - v34;
  v62 = a2;
  if (a3 != a2)
  {
    v35 = result;
    v37 = *(v33 + 16);
    v36 = v33 + 16;
    v38 = *v84;
    v39 = *(v36 + 56);
    v84 = (v6 + 8);
    v83 = (v9 + 8);
    v82 = (v20 + 48);
    v73 = (v20 + 32);
    v74 = v37;
    v71 = (v36 - 8);
    v72 = (v20 + 8);
    v76 = v36;
    v68 = (v36 + 16);
    v40 = &v38[v39 * (a3 - 1)];
    v67 = -v39;
    v41 = &v81[-a3];
    v69 = v38;
    v61 = v39;
    v42 = &v38[v39 * a3];
    v80 = v18;
    v77 = result;
    v78 = v24;
    v75 = v16;
LABEL_5:
    v66 = a3;
    v63 = v42;
    v64 = v41;
    v65 = v40;
    while (1)
    {
      v79 = v41;
      v43 = v74;
      v74(v85, v42, v35);
      v43(v91, v40, v35);
      v44 = v87;
      sub_227662920();
      v45 = v89;
      sub_227666A60();
      sub_2276628D0();
      v81 = *v84;
      (v81)(v45, v90);
      v46 = *v83;
      (*v83)(v44, v88);
      v47 = *v82;
      if ((*v82)(v18, 1, v19) == 1)
      {
        sub_227662670();
        if (v47(v18, 1, v19) != 1)
        {
          sub_226E97D1C(v18, &qword_27D7B9690, qword_227670B50);
        }
      }

      else
      {
        (*v73)(v86, v18, v19);
      }

      v48 = v87;
      sub_227662920();
      v49 = v89;
      sub_227666A60();
      v50 = v75;
      sub_2276628D0();
      v51 = v49;
      v52 = v50;
      (v81)(v51, v90);
      v46(v48, v88);
      if (v47(v50, 1, v19) == 1)
      {
        v53 = v78;
        sub_227662670();
        if (v47(v52, 1, v19) != 1)
        {
          sub_226E97D1C(v52, &qword_27D7B9690, qword_227670B50);
        }
      }

      else
      {
        v53 = v78;
        (*v73)(v78, v52, v19);
      }

      v54 = v86;
      v55 = sub_2276626B0();
      v56 = *v72;
      (*v72)(v53, v19);
      v56(v54, v19);
      v57 = *v71;
      v35 = v77;
      (*v71)(v91, v77);
      result = v57(v85, v35);
      v18 = v80;
      if ((v55 & 1) == 0)
      {
LABEL_4:
        a3 = v66 + 1;
        v40 = &v65[v61];
        v41 = v64 - 1;
        v42 = &v63[v61];
        if (v66 + 1 == v62)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v69)
      {
        break;
      }

      v58 = *v68;
      v59 = v70;
      (*v68)(v70, v42, v35);
      swift_arrayInitWithTakeFrontToBack();
      result = (v58)(v40, v59, v35);
      v18 = v80;
      v40 += v67;
      v42 += v67;
      v41 = v79 + 1;
      if (v79 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22738BC14(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v177 = a1;
  v219 = sub_227662190();
  v9 = *(v219 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v219);
  v218 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_227662940();
  v12 = *(v217 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v217);
  v216 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v201 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v202 = &v172 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v187 = &v172 - v22;
  MEMORY[0x28223BE20](v21);
  v189 = &v172 - v23;
  v188 = sub_227662750();
  v24 = *(v188 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v188);
  v200 = &v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v212 = &v172 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v186 = &v172 - v31;
  MEMORY[0x28223BE20](v30);
  v193 = &v172 - v32;
  v208 = sub_227666B60();
  v33 = *(*(v208 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v208);
  v181 = &v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v198 = &v172 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v220 = &v172 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v211 = &v172 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v195 = &v172 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v192 = &v172 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v174 = &v172 - v47;
  result = MEMORY[0x28223BE20](v46);
  v173 = &v172 - v50;
  v51 = a3[1];
  v190 = v49;
  if (v51 < 1)
  {
    v53 = MEMORY[0x277D84F90];
LABEL_114:
    a4 = *v177;
    if (!*v177)
    {
      goto LABEL_156;
    }

    v9 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v190;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_150;
    }

    result = v9;
LABEL_117:
    v221 = result;
    v9 = *(result + 16);
    if (v9 >= 2)
    {
      while (*a3)
      {
        v167 = *(result + 16 * v9);
        v168 = result;
        v169 = *(result + 16 * (v9 - 1) + 40);
        sub_22738CF64(*a3 + *(v5 + 9) * v167, *a3 + *(v5 + 9) * *(result + 16 * (v9 - 1) + 32), (*a3 + *(v5 + 9) * v169), a4);
        if (v6)
        {
        }

        if (v169 < v167)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = sub_2271171D0(v168);
        }

        if (v9 - 2 >= *(v168 + 2))
        {
          goto LABEL_144;
        }

        v170 = &v168[16 * v9];
        *v170 = v167;
        *(v170 + 1) = v169;
        v221 = v168;
        sub_227117144(v9 - 1);
        result = v221;
        v9 = *(v221 + 16);
        if (v9 <= 1)
        {
        }
      }

      goto LABEL_154;
    }
  }

  v176 = a4;
  v52 = 0;
  v206 = v49 + 16;
  v207 = (v49 + 8);
  v214 = (v12 + 8);
  v215 = (v9 + 8);
  v213 = (v24 + 48);
  v204 = (v24 + 8);
  v205 = (v24 + 32);
  v203 = (v49 + 32);
  v53 = MEMORY[0x277D84F90];
  v178 = a3;
  while (1)
  {
    v54 = v52;
    v182 = v53;
    if (v52 + 1 >= v51)
    {
      v82 = v52 + 1;
      v83 = v177;
      v84 = v176;
      goto LABEL_34;
    }

    v194 = v51;
    v55 = *a3;
    v56 = *(v190 + 72);
    v57 = *a3 + v56 * (v52 + 1);
    v58 = *(v190 + 16);
    v59 = v173;
    v9 = v208;
    v58(v173, v57, v208);
    v199 = v56;
    v60 = v55 + v56 * v54;
    v61 = v174;
    v196 = v58;
    v58(v174, v60, v9);
    LODWORD(v197) = sub_227387684(v59, v61);
    if (v6)
    {
      v171 = *v207;
      (*v207)(v61, v9);
      (v171)(v59, v9);
    }

    v62 = *v207;
    (*v207)(v61, v9);
    v185 = v62;
    result = (v62)(v59, v9);
    v175 = v54;
    v63 = v54 + 2;
    v64 = v199;
    v65 = v55 + v199 * (v54 + 2);
    v66 = v189;
    a4 = v9;
    v5 = v213;
    v191 = 0;
    do
    {
      if (v194 == v63)
      {
        v82 = v194;
        goto LABEL_20;
      }

      v71 = v196;
      (v196)(v192, v65, a4);
      v210 = v57;
      v71(v195, v57, a4);
      v72 = v216;
      sub_227662920();
      v73 = v218;
      sub_227666A60();
      sub_2276628D0();
      v74 = *v215;
      (*v215)(v73, v219);
      v75 = *v214;
      (*v214)(v72, v217);
      v76 = *v5;
      v77 = v188;
      v78 = (*v5)(v66, 1, v188);
      v209 = v74;
      if (v78 == 1)
      {
        sub_227662670();
        if (v76(v66, 1, v77) != 1)
        {
          sub_226E97D1C(v66, &qword_27D7B9690, qword_227670B50);
        }
      }

      else
      {
        (*v205)(v193, v66, v77);
      }

      v79 = v216;
      sub_227662920();
      v80 = v218;
      sub_227666A60();
      v81 = v187;
      sub_2276628D0();
      (v209)(v80, v219);
      v75(v79, v217);
      v5 = v213;
      if (v76(v81, 1, v77) == 1)
      {
        v67 = v186;
        sub_227662670();
        if (v76(v81, 1, v77) != 1)
        {
          sub_226E97D1C(v81, &qword_27D7B9690, qword_227670B50);
        }
      }

      else
      {
        v67 = v186;
        (*v205)(v186, v81, v77);
      }

      v68 = v193;
      v9 = sub_2276626B0();
      v69 = *v204;
      (*v204)(v67, v77);
      v69(v68, v77);
      a4 = v208;
      v70 = v185;
      (v185)(v195, v208);
      result = v70(v192, a4);
      ++v63;
      v64 = v199;
      v65 += v199;
      v57 = &v210[v199];
      v66 = v189;
      v6 = v191;
    }

    while (((v197 ^ v9) & 1) == 0);
    v82 = (v63 - 1);
LABEL_20:
    a3 = v178;
    v83 = v177;
    v84 = v176;
    v85 = v182;
    v54 = v175;
    if (v197)
    {
      if (v82 < v175)
      {
        goto LABEL_149;
      }

      if (v175 < v82)
      {
        a4 = v64 * (v82 - 1);
        v86 = v82 * v64;
        v194 = v82;
        v87 = v82;
        v5 = v175;
        v88 = v175 * v64;
        do
        {
          if (v5 != --v87)
          {
            v90 = *a3;
            if (!*a3)
            {
              goto LABEL_153;
            }

            v9 = v90 + v88;
            v91 = *v203;
            (*v203)(v181, v90 + v88, v208, v85);
            if (v88 < a4 || v9 >= v90 + v86)
            {
              v89 = v208;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v89 = v208;
              if (v88 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v91(v90 + a4, v181, v89);
            a3 = v178;
            v85 = v182;
            v6 = v191;
            v64 = v199;
          }

          ++v5;
          a4 -= v64;
          v86 -= v64;
          v88 += v64;
        }

        while (v5 < v87);
        v83 = v177;
        v84 = v176;
        v54 = v175;
        v82 = v194;
      }
    }

LABEL_34:
    v92 = a3[1];
    if (v82 >= v92)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v82, v54))
    {
      goto LABEL_146;
    }

    if (v82 - v54 >= v84)
    {
      goto LABEL_43;
    }

    if (__OFADD__(v54, v84))
    {
      goto LABEL_147;
    }

    if (&v54[v84] >= v92)
    {
      v93 = a3[1];
    }

    else
    {
      v93 = &v54[v84];
    }

    if (v93 < v54)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      result = sub_2271171D0(v9);
      goto LABEL_117;
    }

    if (v82 == v93)
    {
LABEL_43:
      v94 = v82;
      if (v82 < v54)
      {
        goto LABEL_145;
      }

      goto LABEL_44;
    }

    v191 = v6;
    v138 = *a3;
    v139 = *(v190 + 72);
    v199 = *(v190 + 16);
    v140 = (v138 + v139 * (v82 - 1));
    v196 = -v139;
    v175 = v54;
    v141 = &v54[-v82];
    v197 = v138;
    v179 = v139;
    v142 = v138 + v82 * v139;
    a4 = v202;
    v143 = v188;
    v144 = v208;
    v180 = v93;
LABEL_95:
    v194 = v82;
    v183 = v142;
    v184 = v141;
    v145 = v141;
    v185 = v140;
    v146 = v140;
LABEL_96:
    v209 = v145;
    v147 = v199;
    (v199)(v211, v142, v144);
    v147(v220, v146, v144);
    v148 = v216;
    sub_227662920();
    v149 = v218;
    sub_227666A60();
    sub_2276628D0();
    v210 = *v215;
    (v210)(v149, v219);
    v150 = v213;
    v151 = *v214;
    (*v214)(v148, v217);
    v152 = *v150;
    if ((*v150)(a4, 1, v143) == 1)
    {
      sub_227662670();
      v153 = v143;
      if (v152(a4, 1, v143) != 1)
      {
        sub_226E97D1C(a4, &qword_27D7B9690, qword_227670B50);
      }
    }

    else
    {
      (*v205)(v212, a4, v143);
      v153 = v143;
    }

    v154 = v216;
    sub_227662920();
    v155 = v218;
    sub_227666A60();
    v156 = v201;
    sub_2276628D0();
    v157 = v156;
    (v210)(v155, v219);
    v151(v154, v217);
    v158 = v152(v156, 1, v153);
    v143 = v153;
    if (v158 == 1)
    {
      v159 = v200;
      sub_227662670();
      if (v152(v157, 1, v153) != 1)
      {
        sub_226E97D1C(v157, &qword_27D7B9690, qword_227670B50);
      }
    }

    else
    {
      v159 = v200;
      (*v205)(v200, v157, v153);
    }

    v160 = v212;
    v9 = sub_2276626B0();
    v5 = v204;
    v161 = *v204;
    (*v204)(v159, v143);
    v161(v160, v143);
    v144 = v208;
    v162 = *v207;
    (*v207)(v220, v208);
    result = (v162)(v211, v144);
    a4 = v202;
    if (v9)
    {
      break;
    }

LABEL_94:
    v82 = v194 + 1;
    v140 = &v185[v179];
    v141 = v184 - 1;
    v142 = v183 + v179;
    v94 = v180;
    if (v194 + 1 != v180)
    {
      goto LABEL_95;
    }

    v6 = v191;
    a3 = v178;
    v83 = v177;
    v54 = v175;
    if (v180 < v175)
    {
      goto LABEL_145;
    }

LABEL_44:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v53 = v182;
    }

    else
    {
      result = sub_2273A4F9C(0, *(v182 + 2) + 1, 1, v182);
      v53 = result;
    }

    a4 = *(v53 + 2);
    v95 = *(v53 + 3);
    v9 = a4 + 1;
    if (a4 >= v95 >> 1)
    {
      result = sub_2273A4F9C((v95 > 1), a4 + 1, 1, v53);
      v53 = result;
    }

    *(v53 + 2) = v9;
    v96 = &v53[16 * a4];
    *(v96 + 4) = v54;
    *(v96 + 5) = v94;
    v97 = *v83;
    if (!v97)
    {
      goto LABEL_155;
    }

    v52 = v94;
    if (a4)
    {
      while (1)
      {
        v98 = v9 - 1;
        if (v9 >= 4)
        {
          break;
        }

        if (v9 == 3)
        {
          v99 = *(v53 + 4);
          v100 = *(v53 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_63:
          if (v102)
          {
            goto LABEL_134;
          }

          v115 = &v53[16 * v9];
          v117 = *v115;
          v116 = *(v115 + 1);
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_137;
          }

          v121 = &v53[16 * v98 + 32];
          v123 = *v121;
          v122 = *(v121 + 1);
          v109 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v109)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v119, v124))
          {
            goto LABEL_141;
          }

          if (v119 + v124 >= v101)
          {
            if (v101 < v124)
            {
              v98 = v9 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v125 = &v53[16 * v9];
        v127 = *v125;
        v126 = *(v125 + 1);
        v109 = __OFSUB__(v126, v127);
        v119 = v126 - v127;
        v120 = v109;
LABEL_77:
        if (v120)
        {
          goto LABEL_136;
        }

        v128 = &v53[16 * v98];
        v130 = *(v128 + 4);
        v129 = *(v128 + 5);
        v109 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v109)
        {
          goto LABEL_139;
        }

        if (v131 < v119)
        {
          goto LABEL_3;
        }

LABEL_84:
        a4 = v98 - 1;
        if (v98 - 1 >= v9)
        {
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
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*a3)
        {
          goto LABEL_152;
        }

        v5 = v53;
        v9 = *&v53[16 * a4 + 32];
        v136 = *&v53[16 * v98 + 40];
        sub_22738CF64(*a3 + *(v190 + 72) * v9, *a3 + *(v190 + 72) * *&v53[16 * v98 + 32], (*a3 + *(v190 + 72) * v136), v97);
        if (v6)
        {
        }

        if (v136 < v9)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2271171D0(v5);
        }

        if (a4 >= *(v5 + 2))
        {
          goto LABEL_131;
        }

        v137 = &v5[16 * a4];
        *(v137 + 4) = v9;
        *(v137 + 5) = v136;
        v221 = v5;
        result = sub_227117144(v98);
        v53 = v221;
        v9 = *(v221 + 16);
        if (v9 <= 1)
        {
          goto LABEL_3;
        }
      }

      v103 = &v53[16 * v9 + 32];
      v104 = *(v103 - 64);
      v105 = *(v103 - 56);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_132;
      }

      v108 = *(v103 - 48);
      v107 = *(v103 - 40);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_133;
      }

      v110 = &v53[16 * v9];
      v112 = *v110;
      v111 = *(v110 + 1);
      v109 = __OFSUB__(v111, v112);
      v113 = v111 - v112;
      if (v109)
      {
        goto LABEL_135;
      }

      v109 = __OFADD__(v101, v113);
      v114 = v101 + v113;
      if (v109)
      {
        goto LABEL_138;
      }

      if (v114 >= v106)
      {
        v132 = &v53[16 * v98 + 32];
        v134 = *v132;
        v133 = *(v132 + 1);
        v109 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v109)
        {
          goto LABEL_142;
        }

        if (v101 < v135)
        {
          v98 = v9 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v51 = a3[1];
    if (v52 >= v51)
    {
      goto LABEL_114;
    }
  }

  v163 = v209;
  if (v197)
  {
    v5 = v203;
    v9 = *v203;
    v164 = v198;
    (*v203)(v198, v142, v144);
    swift_arrayInitWithTakeFrontToBack();
    (v9)(v146, v164, v144);
    v146 += v196;
    v142 += v196;
    v165 = __CFADD__(v163, 1);
    v145 = v163 + 1;
    if (v165)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_22738CF64(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v108 = a4;
  v132 = sub_227662190();
  v126 = *(v132 - 8);
  v7 = *(v126 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_227662940();
  v110 = *(v130 - 8);
  v9 = *(v110 + 64);
  MEMORY[0x28223BE20](v130);
  v129 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v113 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v105 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v116 = v105 - v19;
  MEMORY[0x28223BE20](v18);
  v118 = v105 - v20;
  v21 = sub_227662750();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v122 = v105 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v115 = v105 - v30;
  MEMORY[0x28223BE20](v29);
  v125 = v105 - v31;
  v32 = sub_227666B60();
  v117 = *(v32 - 8);
  v33 = *(v117 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v123 = v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v121 = v105 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v128 = v105 - v39;
  result = MEMORY[0x28223BE20](v38);
  v124 = v105 - v41;
  v119 = *(v42 + 72);
  if (!v119)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

  v127 = a1;
  if (a2 - a1 == 0x8000000000000000 && v119 == -1)
  {
    goto LABEL_78;
  }

  v43 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v119 == -1)
  {
    goto LABEL_79;
  }

  v112 = v26;
  v114 = v17;
  v44 = (a2 - a1) / v119;
  v135 = v127;
  v45 = v108;
  v134 = v108;
  v120 = v32;
  if (v44 >= v43 / v119)
  {
    v49 = v43 / v119 * v119;
    if (v108 < a2 || a2 + v49 <= v108)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v108 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = v45 + v49;
    if (v49 < 1)
    {
      v76 = v45 + v49;
    }

    else
    {
      v73 = -v119;
      v111 = (v117 + 16);
      v124 = (v126 + 8);
      v118 = (v22 + 48);
      v119 = v110 + 8;
      v110 = v22 + 32;
      v109 = (v22 + 8);
      v107 = (v117 + 8);
      v74 = v72;
      v75 = v114;
      v76 = v72;
      v125 = v73;
      do
      {
        v105[0] = v76;
        v77 = a2;
        v78 = a2 + v73;
        v126 = v78;
        v115 = v77;
        while (1)
        {
          if (v77 <= v127)
          {
            v135 = v77;
            v133 = v105[0];
            goto LABEL_76;
          }

          v116 = a3;
          v106 = v76;
          v117 = v74;
          v80 = *v111;
          v128 = (v74 + v73);
          (v80)(v121);
          v80(v123, v78, v32);
          v81 = v21;
          v82 = v129;
          sub_227662920();
          v83 = v131;
          sub_227666A60();
          sub_2276628D0();
          v84 = *v124;
          (*v124)(v83, v132);
          v85 = *v119;
          (*v119)(v82, v130);
          v86 = *v118;
          if ((*v118)(v75, 1, v81) == 1)
          {
            sub_227662670();
            if (v86(v75, 1, v81) != 1)
            {
              sub_226E97D1C(v75, &qword_27D7B9690, qword_227670B50);
            }
          }

          else
          {
            (*v110)(v122, v75, v81);
          }

          v87 = v129;
          sub_227662920();
          v88 = v131;
          sub_227666A60();
          v89 = v113;
          sub_2276628D0();
          v90 = v89;
          v84(v88, v132);
          v85(v87, v130);
          if (v86(v89, 1, v81) == 1)
          {
            v91 = v112;
            sub_227662670();
            v92 = v86(v90, 1, v81);
            v32 = v120;
            v93 = v125;
            v94 = v81;
            if (v92 != 1)
            {
              sub_226E97D1C(v90, &qword_27D7B9690, qword_227670B50);
            }
          }

          else
          {
            v91 = v112;
            (*v110)(v112, v90, v81);
            v32 = v120;
            v93 = v125;
            v94 = v81;
          }

          v95 = v116;
          v96 = &v93[v116];
          v97 = v122;
          v98 = sub_2276626B0();
          v99 = *v109;
          (*v109)(v91, v94);
          v100 = v97;
          v101 = v94;
          v99(v100, v94);
          v102 = *v107;
          (*v107)(v123, v32);
          v102(v121, v32);
          v75 = v114;
          if (v98)
          {
            break;
          }

          v76 = v128;
          a3 = v96;
          if (v95 < v117 || v96 >= v117)
          {
            swift_arrayInitWithTakeFrontToBack();
            v73 = v125;
            v78 = v126;
            v21 = v101;
            v79 = v108;
          }

          else
          {
            v103 = v95 == v117;
            v73 = v125;
            v78 = v126;
            v21 = v101;
            v79 = v108;
            if (!v103)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v74 = v76;
          v77 = v115;
          if (v128 <= v79)
          {
            a2 = v115;
            goto LABEL_75;
          }
        }

        a3 = v96;
        if (v95 < v115 || v96 >= v115)
        {
          a2 = v126;
          swift_arrayInitWithTakeFrontToBack();
          v76 = v106;
          v73 = v125;
          v21 = v101;
          v104 = v108;
        }

        else
        {
          v103 = v95 == v115;
          v76 = v106;
          v73 = v125;
          a2 = v126;
          v21 = v101;
          v104 = v108;
          if (!v103)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v74 = v117;
      }

      while (v117 > v104);
    }

LABEL_75:
    v135 = a2;
    v133 = v76;
  }

  else
  {
    v46 = v44 * v119;
    v47 = v108;
    v48 = v127;
    if (v108 < v127 || v127 + v46 <= v108)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v108 != v127)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v114 = (v47 + v46);
    v133 = v47 + v46;
    v113 = a3;
    v50 = v46 < 1 || a2 >= a3;
    v51 = v118;
    if (!v50)
    {
      v112 = *(v117 + 16);
      v123 = (v126 + 8);
      v121 = (v22 + 48);
      v122 = (v110 + 8);
      v111 = (v22 + 32);
      v110 = v22 + 8;
      v117 += 16;
      v109 = (v117 - 8);
      do
      {
        v126 = a2;
        v127 = v48;
        v52 = v112;
        (v112)(v124, a2, v32);
        v53 = v47;
        (v52)(v128, v47, v32);
        v54 = v129;
        sub_227662920();
        v55 = v131;
        sub_227666A60();
        sub_2276628D0();
        v56 = *v123;
        (*v123)(v55, v132);
        v57 = *v122;
        (*v122)(v54, v130);
        v58 = *v121;
        if ((*v121)(v51, 1, v21) == 1)
        {
          sub_227662670();
          v59 = v21;
          if (v58(v51, 1, v21) != 1)
          {
            sub_226E97D1C(v51, &qword_27D7B9690, qword_227670B50);
          }
        }

        else
        {
          (*v111)(v125, v51, v21);
          v59 = v21;
        }

        v60 = v129;
        sub_227662920();
        v61 = v131;
        sub_227666A60();
        v62 = v116;
        sub_2276628D0();
        v56(v61, v132);
        v57(v60, v130);
        v21 = v59;
        if (v58(v62, 1, v59) == 1)
        {
          v63 = v115;
          sub_227662670();
          v64 = v58(v62, 1, v21);
          a2 = v126;
          v47 = v53;
          v32 = v120;
          if (v64 != 1)
          {
            sub_226E97D1C(v62, &qword_27D7B9690, qword_227670B50);
          }
        }

        else
        {
          v63 = v115;
          (*v111)(v115, v62, v21);
          a2 = v126;
          v47 = v53;
          v32 = v120;
        }

        v65 = v125;
        v66 = sub_2276626B0();
        v67 = *v110;
        (*v110)(v63, v21);
        (v67)(v65, v21);
        v68 = *v109;
        (*v109)(v128, v32);
        v68(v124, v32);
        v69 = v127;
        v51 = v118;
        if (v66)
        {
          v70 = v119;
          if (v127 < a2 || v127 >= a2 + v119)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v127 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v70;
        }

        else
        {
          v70 = v119;
          v71 = v47 + v119;
          if (v127 < v47 || v127 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v127 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v134 = v71;
          v47 += v70;
        }

        v48 = v69 + v70;
        v135 = v48;
      }

      while (v47 < v114 && a2 < v113);
    }
  }

LABEL_76:
  sub_2271173E4(&v135, &v134, &v133);
  return 1;
}

uint64_t sub_22738DD98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2271716E4;

  return sub_22747B708(a3);
}

uint64_t sub_22738DE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_2276642E0();
    return (*(*(v4 - 8) + 16))(a2, v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
  }

  else
  {
    v6 = sub_227663B90();
    sub_227390744(&qword_28139BC48, MEMORY[0x277D50320]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D50318], v6);
    return swift_willThrow();
  }
}

uint64_t sub_22738DF5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22738DFF8;

  return sub_227473854(a3);
}

uint64_t sub_22738DFF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_227391D58, 0, 0);
  }
}

uint64_t sub_22738E144(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a2;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_226E92F34;

  return sub_227478CBC(a1, a3, a4, a5 & 1);
}

uint64_t sub_22738E208(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_22766D1D0();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_2274CD6BC(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = v1[1];
        v16 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v17 = *(v5 + 16);
          v13 = __OFADD__(v14, v17);
          v18 = v14 + v17;
          if (!v13)
          {
            if (v18 >= v14)
            {
              if ((v18 & 0x8000000000000000) == 0)
              {
                v19 = (2 * v18) | 1;
                v20 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v16 - 16 * v14;
                v1[2] = v14;
                v1[3] = v19;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22738E388(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *v1;
  v8 = v1[1];
  sub_22766D1D0();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v3 + 16 * v4 != v9 + 16 * v10 + 32)
  {

LABEL_7:
    v11 = v4;
    goto LABEL_9;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v4, v13);
  v11 = v4 + v13;
  if (v14)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v11 < result)
  {
    if (v11 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = 2 * v11;
    if (v15 > result)
    {
      result = v15;
    }
  }

  result = sub_22738E208(result);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_39;
  }

  v19 = v1[1] + 16 * v17 + 16 * v18;
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v23 = v18;
    goto LABEL_22;
  }

  v20 = *v1;
  sub_22766D1D0();
  swift_unknownObjectRetain();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);
  if (v19 != v21 + 16 * v22 + 32)
  {

    goto LABEL_20;
  }

  v24 = *(v21 + 24);

  v25 = (v24 >> 1) - v22;
  v14 = __OFADD__(v18, v25);
  v23 = v18 + v25;
  if (v14)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v26 = v23 - v18;
  if (__OFSUB__(v23, v18))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v27 = *(v5 + 16);
  if (v27)
  {
    if (v26 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = v18 + v6;
      if (!__OFADD__(v18, v6))
      {
        sub_22738EAB8(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v26)
  {

    return sub_22738EB70(v5, v27);
  }

  else
  {
  }
}

uint64_t sub_22738E5C8(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_33;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *v1;
  v8 = v1[1];
  sub_22766D1D0();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v3 + 16 * v4 != v9 + 16 * v10 + 32)
  {

LABEL_7:
    v11 = v4;
    goto LABEL_9;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v4, v13);
  v11 = v4 + v13;
  if (v14)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 < result)
  {
    if (v11 + 0x4000000000000000 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v15 = 2 * v11;
    if (v15 > result)
    {
      result = v15;
    }
  }

  result = sub_22738E208(result);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_34;
  }

  v19 = (v1[1] + 16 * v17 + 16 * v18);
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v23 = v18;
    goto LABEL_22;
  }

  v20 = *v1;
  sub_22766D1D0();
  swift_unknownObjectRetain();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);
  if (v19 != (v21 + 16 * v22 + 32))
  {

    goto LABEL_20;
  }

  v24 = *(v21 + 24);

  v25 = (v24 >> 1) - v22;
  v14 = __OFADD__(v18, v25);
  v23 = v18 + v25;
  if (v14)
  {
LABEL_40:
    __break(1u);
    return result;
  }

LABEL_22:
  v26 = v23 - v18;
  if (__OFSUB__(v23, v18))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_2274CDE20(v28, v19, v23 - v18, v5);
  if (result < v6)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = result;
  if (result <= 0)
  {
    goto LABEL_27;
  }

  result += v18;
  if (__OFADD__(v18, v27))
  {
    goto LABEL_37;
  }

  sub_22738EAB8(result);
LABEL_27:
  if (v27 == v26)
  {
    v29[0] = v28[0];
    v29[1] = v28[1];
    v29[2] = v28[2];
    v29[3] = v28[3];
    v29[4] = v28[4];
    return sub_22738EE4C(v29);
  }

  else
  {

    return sub_226EBB21C();
  }
}

uint64_t sub_22738E800(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v14;
  v34 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  result = sub_22738F35C(v7);
  v36 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 16 * a3);
    v32 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 16 * v20);
    v22 = &v21[16 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[16 * v34];
    if (__dst != v23 || __dst >= &v23[16 * v33])
    {
      memmove(__dst, v23, 16 * v33);
    }

    *(v19 + 16);
    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v32;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v25 = v4[1];
    swift_arrayInitWithCopy();
    result = (a4)(v36 + 16 * a2, a3);
    v26 = v24 + v34;
    if (__OFADD__(v24, v34))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v28 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v20, v29);
  v30 = v20 + v29;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v30 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v30 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v36 - 16 * v20;
  v4[2] = v20;
  v4[3] = (2 * v30) | 1;
}

uint64_t sub_22738EAB8(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_22766D1D0();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v9 = *(result + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

uint64_t sub_22738EB70(uint64_t result, unint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    goto LABEL_44;
  }

  v6 = result;
  v7 = *(result + 16);
  v36 = v7;
  if (v7 == a2)
  {
LABEL_3:
  }

  if (v7 <= a2)
  {
    goto LABEL_45;
  }

  v8 = result + 16 * a2;
  v37 = a2 + 1;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  v30 = v2;
  while (!__OFADD__(v5, 1))
  {
    v38 = sub_22738F0B8(v5, v5 + 1, *v2, v2[1], v4, v3);
    v11 = sub_22738F278();
    sub_22738E800(&v38, v5, 0, v11);

    v4 = v2[2];
    v3 = v2[3];
    v12 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      goto LABEL_38;
    }

    v34 = *v2;
    v35 = v2[1];
    v33 = v3 >> 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_22766D1D0();
    swift_unknownObjectRetain();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = MEMORY[0x277D84F90];
    }

    v14 = *(v13 + 16);
    if (v35 + 16 * v4 + 16 * v12 != v13 + 16 * v14 + 32)
    {

LABEL_16:
      v15 = (v3 >> 1) - v4;
      goto LABEL_18;
    }

    v16 = *(v13 + 24);

    v17 = (v16 >> 1) - v14;
    v15 = v12 + v17;
    if (__OFADD__(v12, v17))
    {
      goto LABEL_43;
    }

LABEL_18:
    if (v5 < v15)
    {
      v31 = v3;
      v18 = 0;
      v19 = v6;
      v20 = v4;
      v21 = v37;
      v22 = v6 + 16 * v37;
      v32 = v20;
      v23 = v35 + 16 * v5 + 16 * v20;
      while (1)
      {
        v24 = (v23 + v18);
        *v24 = v10;
        v24[1] = v9;
        ++v5;
        if (v36 == v21)
        {
          v10 = 0;
          v9 = 0;
          v37 = v36;
          goto LABEL_26;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v21 >= *(v19 + 16))
        {
          goto LABEL_36;
        }

        ++v21;
        v10 = *(v22 + v18 + 32);
        v9 = *(v22 + v18 + 40);

        v18 += 16;
        if (v15 == v5)
        {
          v37 = v21;
          v5 = v15;
LABEL_26:
          v6 = v19;
          v2 = v30;
          v3 = v31;
          v4 = v32;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

LABEL_27:
    v25 = v5 - v12;
    if (__OFSUB__(v5, v12))
    {
      goto LABEL_39;
    }

    if (v25)
    {
      sub_22766D1D0();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x277D84F90];
      }

      v26 = *(result + 16);
      v27 = __OFADD__(v26, v25);
      v28 = v26 + v25;
      if (v27)
      {
        goto LABEL_40;
      }

      *(result + 16) = v28;

      v29 = v33 + v25;
      if (__OFADD__(v33, v25))
      {
        goto LABEL_41;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v3 = v3 & 1 | (2 * v29);
      v2[3] = v3;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_22738EE4C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v5 = v1;
    v6 = *(result + 16);
    v34 = *result;
    v35 = v6;
    v36 = *(result + 32);
    result = sub_22738F294();
    if (v7)
    {
      v8 = result;
      v9 = v7;
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        if (__OFADD__(v4, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v33 = sub_22738F0B8(v4, v4 + 1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
        v11 = sub_22738F278();
        sub_22738E800(&v33, v4, 0, v11);

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        v14 = (v12 >> 1) - v13;
        if (__OFSUB__(v12 >> 1, v13))
        {
          goto LABEL_34;
        }

        v15 = *(v5 + 8) + 16 * v13;
        if (v12)
        {
          v16 = *v5;
          sub_22766D1D0();
          swift_unknownObjectRetain();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            swift_unknownObjectRelease();
            v17 = v10;
          }

          v18 = *(v17 + 16);
          if (v15 + 16 * v14 == v17 + 16 * v18 + 32)
          {
            v19 = *(v17 + 24);

            v20 = (v19 >> 1) - v18;
            v21 = __OFADD__(v14, v20);
            v14 += v20;
            if (v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
          }
        }

        if (v4 < v14)
        {
          break;
        }

        v14 = v4;
LABEL_22:
        result = sub_22738EAB8(v14);
        if (!v9)
        {
          goto LABEL_29;
        }
      }

      v22 = *(&v34 + 1);
      v32 = v34;
      v23 = *(&v35 + 1);
      v24 = (v35 + 64) >> 6;
      v25 = v36;
      while (1)
      {
        v28 = (v15 + 16 * v4);
        *v28 = v8;
        v28[1] = v9;
        ++v4;
        if (!v25)
        {
          break;
        }

LABEL_14:
        v26 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v27 = (*(v32 + 48) + ((v23 << 10) | (16 * v26)));
        v8 = *v27;
        v9 = v27[1];

        if (v4 == v14)
        {
          *(&v35 + 1) = v23;
          v36 = v25;
          v4 = v14;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      v29 = v23;
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v30 >= v24)
        {
          break;
        }

        v25 = *(v22 + 8 * v30);
        ++v29;
        if (v25)
        {
          v23 = v30;
          goto LABEL_14;
        }
      }

      if (v24 <= v23 + 1)
      {
        v31 = v23 + 1;
      }

      else
      {
        v31 = v24;
      }

      *(&v35 + 1) = v31 - 1;
      v36 = 0;
      sub_22738EAB8(v4);
    }

LABEL_29:

    return sub_226EBB21C();
  }

  return result;
}

void *sub_22738F0B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_22766D1D0();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_2274CD6BC(v6, v25);
}

uint64_t sub_22738F294()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];
LABEL_10:
    v7 = (v2 - 1) & v2;
    v8 = (*(*v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
    v9 = *v8;
    v10 = v8[1];

    v6 = v3;
LABEL_11:
    v0[3] = v6;
    v0[4] = v7;
    return v9;
  }

  else
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        v7 = 0;
        v9 = 0;
        goto LABEL_11;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22738F35C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v1;
  v10 = v1[1] + 16 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_22766D1D0();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (v10 + 16 * v8 != v11 + 16 * v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_22766D1D0();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v17 = v10 - result - 17;
  if (v10 - result - 32 >= 0)
  {
    v17 = v10 - result - 32;
  }

  v16 = __OFADD__(v8, v17 >> 4);
  v6 = v8 + (v17 >> 4);
  if (v16)
  {
    goto LABEL_20;
  }

  v5 = *(result + 16);
  if (v6 < v5)
  {
LABEL_21:
    v18 = result;
    sub_22732CD54(v6, v5, 0);
    return v18;
  }

  return result;
}

uint64_t sub_22738F4BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  a5(0);

  return sub_227669270();
}

uint64_t sub_22738F564(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v30 = MEMORY[0x277D84F90];
  sub_226F1EFF0(0, v2, 0);
  v3 = v30;
  v5 = a1 + 56;
  v6 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v8 = result;
  v9 = 0;
  v26 = v2;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v9;
    v29 = *(a1 + 36);
    result = a2(*(*(a1 + 48) + v8));
    v12 = result;
    v14 = v13;
    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    v17 = v3;
    if (v16 >= v15 >> 1)
    {
      result = sub_226F1EFF0((v15 > 1), v16 + 1, 1);
      v17 = v3;
    }

    *(v17 + 16) = v16 + 1;
    v18 = v17 + 16 * v16;
    *(v18 + 32) = v12;
    *(v18 + 40) = v14;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v5 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v11);
    if ((v19 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    v3 = v17;
    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v8 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (a1 + 64 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_226EB526C(v8, v29, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v8, v29, 0);
    }

LABEL_4:
    v9 = v28 + 1;
    v8 = v10;
    if (v28 + 1 == v26)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22738F79C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8C38, &unk_227682250);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22738F824(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;

  return sub_227669090();
}

unint64_t sub_22738F9B0()
{
  result = qword_27D7BCF18;
  if (!qword_27D7BCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF18);
  }

  return result;
}

uint64_t sub_22738FA70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_227668AC0() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_22737F480(a1, a2);
}

uint64_t sub_22738FBF8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22738DF5C(a1, (v1 + 16), v4);
}

uint64_t sub_22738FF38(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22738FF44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*(sub_227667B60() - 8) + 80);
  v6 = *(v2 + 16);
  return sub_22737E8C8(a1, a2);
}

uint64_t sub_22739009C(uint64_t a1)
{
  v4 = *(sub_2276642E0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226E93028;

  return sub_22738E144(a1, (v1 + 16), v1 + v5, v7, v8);
}

uint64_t objectdestroy_155Tm()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_227390744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227390964@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2272B4010(v4, a1);
}

unint64_t sub_227390B44()
{
  result = qword_27D7BCF40;
  if (!qword_27D7BCF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCF38, &unk_227682490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF40);
  }

  return result;
}

uint64_t sub_227390C18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226F1B8F8(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

char *sub_227390CC8@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_22732DBF8(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_227390D30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2274508FC(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t objectdestroy_98Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_173Tm()
{
  v1 = sub_2276642E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_22739129C(uint64_t a1)
{
  v4 = *(sub_2276654E0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_22738DD98(a1, (v1 + 16), v1 + v5);
}

uint64_t sub_227391388@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_227391430(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22742A744(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_119Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  a2(*(v2 + 16));
  (*(v5 + 8))(v2 + v7, v4);

  return MEMORY[0x2821FE8E8](v2, v7 + v8, v6 | 7);
}

uint64_t sub_2273916DC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t objectdestroy_95Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_116Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  v7 = *(v1 + v6);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_227391A60(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227391B14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227391BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_227389840(a1, v4, v5, v6);
}

uint64_t sub_227391CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22738925C(a1, v4, v5, v6);
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

uint64_t sub_227391DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_227391E0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t WorkoutPlanGenerationScheduledItem.init(modalityKind:duration:filterProperties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3 & 1;
  *a6 = a4;
  *(a6 + 8) = a5;
  return result;
}

uint64_t WorkoutPlanGenerationScheduledItem.filterProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t WorkoutPlanGenerationScheduledItem.modalityKind.getter()
{
  v1 = *(v0 + 16);
  sub_226EB396C(v1, *(v0 + 24), *(v0 + 32));
  return v1;
}

uint64_t WorkoutPlanGenerationScheduledItem.modalityKind.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_226EB2DFC(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t WorkoutPlanGenerationScheduledItem.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  MEMORY[0x22AA996B0](*v1);
  sub_22739223C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t WorkoutPlanGenerationScheduledItem.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_22766D370();
  sub_226F482E4();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_2273920BC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_227392130(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  MEMORY[0x22AA996B0](*v1);
  sub_22739223C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t sub_2273921C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 32);
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_22739223C(__int128 *a1, uint64_t a2)
{
  v19 = a1[2];
  v20 = a1[3];
  v21 = *(a1 + 8);
  v17 = *a1;
  v18 = a1[1];
  sub_22766D3F0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v16)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 24 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_22766D370();
    sub_226F491FC(v13, v14, v15);
    sub_227668BD0();
    v16 = sub_22766D3F0();
    result = sub_226F49200(v13, v14, v15);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x22AA996B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2273923B0(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v32 = a1[2];
  v33 = v3;
  v34 = *(a1 + 8);
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  sub_22766D3F0();
  v21 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v24 = v11;
LABEL_12:
    v15 = (*(v21 + 48) + 112 * (__clz(__rbit64(v8)) | (v12 << 6)));
    v17 = v15[1];
    v16 = v15[2];
    v25[0] = *v15;
    v25[1] = v17;
    v26 = v16;
    v19 = v15[4];
    v18 = v15[5];
    v20 = *(v15 + 90);
    v27 = v15[3];
    *&v29[10] = v20;
    v28 = v19;
    *v29 = v18;
    sub_22766D370();
    v22 = v26;
    v23 = *&v29[8];
    if ((v29[25] & 0x80000000) != 0)
    {
      MEMORY[0x22AA996B0](1);

      sub_22766C100();
      sub_22766C100();
      MEMORY[0x22AA996B0](v22);
      sub_22766D3A0();
      sub_22766C100();
      sub_22766C100();
      MEMORY[0x22AA996B0](v23);
      sub_22766D3A0();
    }

    else
    {
      MEMORY[0x22AA996B0](0);

      sub_22766C100();
      sub_22766C100();
      MEMORY[0x22AA996B0](v22);
      sub_22766D3A0();
      sub_22766C100();
      sub_22766C100();
      MEMORY[0x22AA996B0](v23);
    }

    v8 &= v8 - 1;
    sub_22766D3A0();
    v13 = sub_22766D3F0();
    result = sub_2270360B0(v25);
    v11 = v13 ^ v24;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return MEMORY[0x22AA996B0](v11);
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v24 = v11;
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2273926B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v20[13] = *(a1 + 32);
  *&v20[15] = v3;
  v20[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v20[9] = *a1;
  *&v20[11] = v4;
  sub_22766D3F0();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v19)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(a2 + 48) + ((v12 << 11) | (32 * v13)));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    sub_22766D370();

    sub_22766C100();
    sub_22739284C(v20, v17);
    sub_227392BA8(v20, v18);
    v19 = sub_22766D3F0();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x22AA996B0](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22739284C(__int128 *a1, uint64_t a2)
{
  v20 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 8);
  v18 = *a1;
  v19 = a1[1];
  sub_22766D3F0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v17)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 40 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 32);
    sub_22766D370();

    sub_22766C100();
    MEMORY[0x22AA996B0](v15);
    sub_22766D3A0();
    v17 = sub_22766D3F0();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x22AA996B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2273929E0(__int128 *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v20 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 8);
  v18 = *a1;
  v19 = a1[1];
  sub_22766D3F0();
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
LABEL_12:
    v13 = *(a2 + 48) + 24 * (__clz(__rbit64(v6)) | (v10 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_22766D370();
    if (!v16)
    {
      MEMORY[0x22AA996B0](0);
      sub_227663FB0();
LABEL_5:
      sub_22766C100();

      goto LABEL_6;
    }

    if (v16 == 1)
    {
      MEMORY[0x22AA996B0](1);
      sub_227664C10();
      goto LABEL_5;
    }

    MEMORY[0x22AA996B0](2);

    sub_22766C100();
LABEL_6:
    v6 &= v6 - 1;
    v11 = sub_22766D3F0();
    result = a3(v14, v15, v16);
    v9 ^= v11;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x22AA996B0](v9);
    }

    v6 = *(a2 + 56 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227392BA8(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v23 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = *(*(a2 + 56) + 8 * v12);
    v25 = a1[2];
    v26 = a1[3];
    v16 = *(a1 + 8);
    v17 = *a1;
    v24 = a1[1];
    if (v13[1])
    {
      MEMORY[0x22AA996B0](1);

      sub_22766C100();
    }

    else
    {
      MEMORY[0x22AA996B0](0);
    }

    MEMORY[0x22AA996B0](*(v15 + 16));
    v18 = *(v15 + 16);
    if (v18)
    {
      v19 = (v15 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        sub_22766C100();

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    v6 &= v6 - 1;

    result = sub_22766D3F0();
    v9 = result ^ v23;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x22AA996B0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v23 = v9;
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15SeymourServices34WorkoutPlanGenerationScheduledItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  v3 = *(a2 + 32);
  if (sub_227033E88(*(a1 + 8), *(a2 + 8)))
  {
    sub_226F48150();
    sub_226EC1E18();
    v4 = sub_227663B20();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_227392E28()
{
  result = qword_27D7BCF58;
  if (!qword_27D7BCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF58);
  }

  return result;
}

uint64_t sub_227392E8C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  sub_2276696A0();
  v3 = *MEMORY[0x277D2BC90];
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v1 selector:sel_update name:v3 object:0];

  sub_2276696A0();
  sub_227393184();
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  swift_getObjectType();
  sub_227089A90();
  return sub_2276699D0();
}

uint64_t sub_227393048(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 getActivePairedDevice];

  if (!v3)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_9:
    sub_226EBC888(&v11);
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  if ([v3 valueForProperty_])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  v4 = swift_dynamicCast();
  v6 = *(&v9 + 1);
  v5 = v9;
  if (!v4)
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_10:
  v7 = *(a1 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
}

uint64_t sub_227393184()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v9 = [objc_opt_self() sharedInstance];
  if (v9 && (v10 = v9, v11 = [v9 getPairedDevices], v10, v11))
  {
    v49 = v2;
    v50 = v1;
    sub_227393AB8();
    v12 = sub_22766C2C0();

    v52 = *(v0 + 56);
    v53 = v0;
    v48 = v8;
    if (v12 >> 62)
    {
LABEL_39:
      v13 = sub_22766CD20();
      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_5:
        v14 = 0;
        v15 = v12 & 0xC000000000000001;
        v16 = v12 & 0xFFFFFFFFFFFFFF8;
        v17 = v12 + 32;
        v18 = *MEMORY[0x277D2BBC0];
        v19 = &selRef_setFetchBatchSize_;
        v51 = v12;
        v47 = v12 & 0xC000000000000001;
        v46 = v12 & 0xFFFFFFFFFFFFFF8;
        v45 = v12 + 32;
        do
        {
          while (1)
          {
            if (v15)
            {
              v20 = MEMORY[0x22AA991A0](v14, v12);
            }

            else
            {
              if (v14 >= *(v16 + 16))
              {
                goto LABEL_38;
              }

              v20 = *(v17 + 8 * v14);
            }

            v21 = v20;
            if (__OFADD__(v14++, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            if ([v20 v19[385]])
            {
              sub_22766CC20();
              swift_unknownObjectRelease();
            }

            else
            {
              v57 = 0u;
              v58 = 0u;
            }

            v54[0] = v57;
            v54[1] = v58;
            if (*(&v58 + 1))
            {
              break;
            }

            sub_226EBC888(v54);
LABEL_7:

            if (v14 == v13)
            {
              goto LABEL_40;
            }
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_7;
          }

          v23 = v55;
          v24 = v56;
          if (qword_27D7B7F30 != -1)
          {
            swift_once();
          }

          v25 = off_27D7BE2A0;
          if (!*(off_27D7BE2A0 + 2) || (v26 = *(off_27D7BE2A0 + 5), sub_22766D370(), sub_22766C100(), v27 = sub_22766D3F0(), v28 = -1 << v25[32], v29 = v27 & ~v28, ((*&v25[((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v29) & 1) == 0))
          {
LABEL_35:

            v38 = 1;
            v39 = v53;
            if ((v52 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_44;
          }

          v30 = ~v28;
          while (1)
          {
            v31 = (*(v25 + 6) + 16 * v29);
            v32 = *v31 == v23 && v31[1] == v24;
            if (v32 || (sub_22766D190() & 1) != 0)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*&v25[((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v29) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v12 = v51;
          v15 = v47;
          v16 = v46;
          v17 = v45;
          v19 = &selRef_setFetchBatchSize_;
        }

        while (v14 != v13);
      }
    }

LABEL_40:

    v38 = 0;
    v39 = v53;
    if (v52)
    {
LABEL_41:
      v40 = v48;
      sub_22766A730();
      v41 = sub_22766B380();
      v42 = sub_22766C8B0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67240192;
        *(v43 + 4) = v38;
        _os_log_impl(&dword_226E8E000, v41, v42, "Updated if any paired watches are supported: %{BOOL,public}d", v43, 8u);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      v37 = (*(v49 + 8))(v40, v50);
    }

LABEL_44:
    v44 = *(v39 + 32);
    MEMORY[0x28223BE20](v37);
    *(&v45 - 2) = v39;
    *(&v45 - 8) = v38;
    return sub_2276696A0();
  }

  else
  {
    sub_22766A730();
    v33 = sub_22766B380();
    v34 = sub_22766C890();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_226E8E000, v33, v34, "PairedDeviceRegistry failed to get paired devices", v35, 2u);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_227393710()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_227393794(char a1)
{
  if (a1)
  {
    v3 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    result = sub_2276696A0();
    if (!v2)
    {
      if (v9)
      {
        return v8;
      }

      else
      {
        v6 = sub_227663190();
        sub_226F92508();
        swift_allocError();
        (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D4FD80], v6);
        return swift_willThrow();
      }
    }
  }

  else
  {
    v5 = *(v1 + 32);
    result = sub_2276696A0();
    if (!v2)
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_2273938CC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 72))
  {
    *a2 = *(result + 56);
  }

  else
  {
    v2 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D4FD90], v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_227393970@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1[9])
  {
    v3 = a1[5];
    v2 = a1[6];
    *a2 = v3;
    a2[1] = v2;
  }

  else
  {
    v5 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D4FD90], v5);
    return swift_willThrow();
  }
}

uint64_t sub_227393A14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    *a2 = *(a1 + 64);
    a2[1] = v3;
  }

  else
  {
    v5 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D4FD90], v5);
    return swift_willThrow();
  }
}

unint64_t sub_227393AB8()
{
  result = qword_281398A08;
  if (!qword_281398A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A08);
  }

  return result;
}

uint64_t sub_227393B30()
{
  v1 = sub_2276697B0();
  v2 = *(v0 + 72);
  *(v0 + 64) = v1;
  *(v0 + 72) = v3;
}

uint64_t getEnumTagSinglePayload for SyncError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_20;
  }

  v2 = a2 + 19;
  if (a2 + 19 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 19;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 19;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x10)
  {
    return v8 - 15;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 19;
  if (a3 + 19 >= 0xFFFF00)
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

  if (a3 < 0xED)
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_227393CD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_227393CEC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

void sub_227393D0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = [a1 identifier];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = sub_22766C000();

  v13 = [a1 title];
  if (!v13)
  {

LABEL_7:
    v20 = sub_227664DD0();
    sub_2273944B0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
    swift_willThrow();

    return;
  }

  v14 = v13;
  v15 = sub_22766C000();
  v23[3] = v16;

  v17 = [a1 thumbnailURL];
  if (v17)
  {
    v23[0] = v15;
    v23[1] = v12;

    v18 = [a1 thumbnailURL];
    if (v18)
    {
      v19 = v18;
      sub_22766C000();
    }

    sub_227662310();
  }

  else
  {
    v22 = sub_2276624A0();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  }

  sub_227125BF8(v9, v5);
  sub_227668790();

  sub_226FB1188(v9);
}

uint64_t static AssetRequestMediaStreamMetadata.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v38 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v37 = v29 - v4;
  v36 = sub_2276687D0();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766C090();
  v10 = sub_22766C090();
  v11 = sub_2276622F0();
  v48 = v10;
  v49[0] = v9;
  v49[1] = v49;
  v49[2] = &v48;
  v47 = v11;
  v49[3] = &v47;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v41 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v42 = v41;
  v43 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v40 = MEMORY[0x277D84F90];
    sub_226F1F488(0, v13, 0);
    v14 = v40;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF60, &qword_2276827E8);
    v16 = 0;
    v32 = result;
    v31 = *(result - 8);
    v30 = v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v29[1] = v5 + 32;
    v34 = v12;
    v35 = v5;
    v33 = v13;
    while (v16 < *(v12 + 16))
    {
      v17 = v8;
      v18 = (v30 + *(v31 + 72) * v16);
      v19 = v18[1];
      v39 = *v18;
      v20 = v18[2];
      v21 = v18[3];
      v22 = *(v32 + 64);
      v23 = sub_2276624A0();
      v24 = *(v23 - 8);
      v25 = v18 + v22;
      v8 = v17;
      v26 = v37;
      (*(v24 + 16))(v37, v25, v23);
      (*(v24 + 56))(v26, 0, 1, v23);
      sub_227125BF8(v26, v38);

      sub_227668790();
      sub_226FB1188(v26);
      v40 = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F1F488(v27 > 1, v28 + 1, 1);
        v14 = v40;
      }

      ++v16;
      *(v14 + 16) = v28 + 1;
      result = (*(v35 + 32))(v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28, v17, v36);
      v12 = v34;
      if (v33 == v16)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227394458(uint64_t a1)
{
  result = sub_2273944B0(&qword_28139B490, MEMORY[0x277D535A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273944B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2273944F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  sub_2276687A0();
  v6 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276687C0();
  v7 = sub_22766BFD0();

  [a1 setTitle_];

  sub_2276687B0();
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_226FB1188(v5);
    v10 = 0;
  }

  else
  {
    sub_227662390();
    (*(v9 + 8))(v5, v8);
    v10 = sub_22766BFD0();
  }

  [a1 setThumbnailURL_];
}

uint64_t sub_2273946A4(uint64_t result)
{
  if (result)
  {
    if (result == 101)
    {
      return 2;
    }

    else if (result == 100)
    {
      return 1;
    }

    else
    {
      v1 = result;
      v2 = _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(result);
      if (v2 == 28)
      {
        sub_22706F95C();
        swift_allocError();
        *v3 = v1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 1;
      }

      else
      {
        v4 = v2;
        sub_22706F9EC();
        swift_allocError();
        *v5 = v4;
      }

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2273947E4(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v162 = a2;
  v173 = *v4;
  v171 = sub_227665A20();
  v166 = *(v171 - 8);
  v10 = *(v166 + 64);
  MEMORY[0x28223BE20](v171);
  v165 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_22766B390();
  v158 = *(v159 - 1);
  v12 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v157 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_227664140();
  v167 = *(v183 - 8);
  v14 = *(v167 + 64);
  MEMORY[0x28223BE20](v183);
  v164 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v174 = &v149 - v17;
  v18 = *(a3 - 1);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v18 + 16);
  v24(v23, a1, a3, v21);
  v25 = sub_22766C250();
  (v24)(v23, a1, a3);
  v26 = a3;
  v27 = sub_22766C250();
  v28 = v173;
  v161 = v25;
  v181 = v25;
  v29 = v26;
  v175 = *(v173 + 10);
  v176 = v26;
  v173 = v6;
  v177 = *(v28 + 11);
  v30 = v177;
  v178 = a4;
  v172 = a4;
  v31 = v175;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE710, &qword_22768D920);
  swift_getAssociatedTypeWitness();
  sub_227396F7C();
  v181 = sub_22766C240();
  sub_22766C3D0();
  v32 = v162;
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v33 = sub_22766C740();
  v34 = type metadata accessor for PairedSyncZoneCoordinator();
  WitnessTable = swift_getWitnessTable();
  v36 = sub_2274F6F98(v33, v32, v34, WitnessTable);

  if (v5)
  {

    return v33;
  }

  v163 = v27;
  v170 = &v149;
  v181 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = v172;
  v38 = v173;
  *(&v149 - 4) = v29;
  *(&v149 - 3) = v39;
  *(&v149 - 2) = v38;
  v40 = *(v30 + 32);
  v41 = sub_22766C730();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v43 = swift_getWitnessTable();
  v44 = v42;
  v45 = v43;
  v46 = sub_2274F47D0(sub_227396FE0, (&v149 - 6), v41, v171, v44, v43, MEMORY[0x277D84950], &v179);
  v151 = v45;
  v152 = v41;
  v153 = v36;
  v154 = v31;
  v155 = v30;
  v150 = v46;
  v156 = 0;
  v48 = v161;
  v49 = v161[2];
  v160 = v29;
  v50 = v163;
  if (v49)
  {
    v181 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v49, 0);
    v51 = v181;
    v169 = *(v167 + 16);
    v52 = v48 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
    v168 = *(v167 + 72);
    v170 = (v167 + 16);
    v53 = (v167 + 8);
    v54 = v183;
    v55 = v174;
    do
    {
      v169(v55, v52, v54);
      v56 = sub_2276640C0();
      v54 = v183;
      v57 = v56;
      v59 = v58;
      (*v53)(v55, v183);
      v181 = v51;
      v61 = *(v51 + 16);
      v60 = *(v51 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_226F1EF90(v60 > 1, v61 + 1, 1);
        v54 = v183;
        v51 = v181;
      }

      *(v51 + 16) = v61 + 1;
      v62 = v51 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
      v52 += v168;
      --v49;
      v55 = v174;
    }

    while (v49);

    v29 = v160;
    v50 = v163;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v63 = sub_226F3E6A8(v51);

  v181 = v153;
  MEMORY[0x28223BE20](v64);
  *(&v149 - 4) = v154;
  *(&v149 - 3) = v29;
  v65 = v155;
  v66 = v172;
  *(&v149 - 2) = v155;
  *(&v149 - 1) = v66;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v149 - 4) = v29;
  *(&v149 - 3) = v65;
  *(&v149 - 2) = v66;
  *(&v149 - 1) = v68;
  v69 = v156;
  v71 = sub_2274F47D0(sub_227397004, (&v149 - 6), v152, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v151, MEMORY[0x277D84AC0], v70);
  v174 = v69;

  v72 = sub_227009018(v71, v63);

  v73 = v173;
  if (!*(v72 + 16))
  {

    goto LABEL_18;
  }

  v74 = v157;
  sub_22766A6B0();

  v75 = sub_22766B380();
  v76 = sub_22766C8B0();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v181 = v78;
    *v77 = 136446210;
    v79 = sub_22766C610();
    v81 = sub_226E97AE8(v79, v80, &v181);

    *(v77 + 4) = v81;
    _os_log_impl(&dword_226E8E000, v75, v76, "Deleting orphaned sync operations: %{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x22AA9A450](v78, -1, -1);
    MEMORY[0x22AA9A450](v77, -1, -1);
  }

  (*(v158 + 8))(v74, v159);
  v82 = __swift_project_boxed_opaque_existential_0(v162, v162[3]);
  v83 = *v82;
  v84 = v82[1];
  v85 = *(v82 + 16);
  v86 = v82[3];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  v90 = swift_allocObject();
  v91 = v83;
  v92 = v84;

  sub_22766A070();
  v161 = v91;
  *(v90 + 16) = v91;
  *(v90 + 24) = v92;
  v159 = v92;
  LODWORD(v169) = v85;
  *(v90 + 32) = v85;
  v170 = v86;
  *(v90 + 40) = v86;
  swift_getKeyPath();
  v93 = sub_227230638(v72);

  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v181 = v93;
  v94 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v168 = v94;
  v95 = sub_22766C820();
  sub_226ED25F8(&v181, &v179);
  v96 = v180;
  if (v180)
  {
    v97 = __swift_project_boxed_opaque_existential_0(&v179, v180);
    v98 = *(v96 - 8);
    v99 = *(v98 + 64);
    v100 = MEMORY[0x28223BE20](v97);
    v102 = v90;
    v103 = &v149 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v98 + 16))(v103, v100);
    v104 = sub_22766D170();
    v105 = v103;
    v90 = v102;
    (*(v98 + 8))(v105, v96);
    __swift_destroy_boxed_opaque_existential_0(&v179);
  }

  else
  {
    v104 = 0;
  }

  v162 = objc_opt_self();
  v117 = [v162 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  [objc_allocWithZone(v107) initWithLeftExpression:v95 rightExpression:v117 modifier:0 type:10 options:0];

  sub_226EBC888(&v181);
  v111 = qword_2813B2078;
  swift_beginAccess();
  v29 = sub_22766A080();
  v119 = v118;
  MEMORY[0x22AA985C0]();
  if (*((*v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_43:
    sub_22766C360();
    v73 = v173;
  }

  sub_22766C3A0();
  (v29)(&v181, 0);
  swift_endAccess();

  swift_getKeyPath();
  v120 = sub_2276633C0();
  v182 = MEMORY[0x277D849A8];
  LODWORD(v181) = v120;

  v121 = sub_22766C820();
  sub_226ED25F8(&v181, &v179);
  v122 = v180;
  if (v180)
  {
    v123 = __swift_project_boxed_opaque_existential_0(&v179, v180);
    v168 = &v149;
    v124 = v107;
    v125 = v90;
    v126 = *(v122 - 8);
    v127 = *(v126 + 64);
    v128 = MEMORY[0x28223BE20](v123);
    v29 = &v149 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v126 + 16))(v29, v128);
    v130 = sub_22766D170();
    (*(v126 + 8))(v29, v122);
    v90 = v125;
    v107 = v124;
    v73 = v173;
    __swift_destroy_boxed_opaque_existential_0(&v179);
  }

  else
  {
    v130 = 0;
  }

  v131 = [v162 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v132 = [objc_allocWithZone(v107) initWithLeftExpression:v121 rightExpression:v131 modifier:0 type:4 options:0];

  sub_226EBC888(&v181);
  swift_beginAccess();
  v133 = v132;
  v134 = sub_22766A080();
  v136 = v135;
  MEMORY[0x22AA985C0]();
  if (*((*v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v147 = v90;
    v148 = *((*v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
    v90 = v147;
  }

  sub_22766C3A0();
  v134(&v181, 0);
  swift_endAccess();

  v137 = sub_227542300(v90 + v111, v169, v170);
  if (!v137)
  {
    v139 = v174;
    v140 = sub_22728497C(0);
    v50 = v163;
    if (v139)
    {
LABEL_41:

      swift_setDeallocating();
      v33 = qword_2813B2078;
      v143 = sub_22766A100();
      (*(*(v143 - 8) + 8))(v90 + v33, v143);
      v144 = *(*v90 + 48);
      v145 = *(*v90 + 52);
      swift_deallocClassInstance();
      return v33;
    }

    v141 = v140;
    [v140 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v142 = sub_22766C9E0();
    v174 = 0;
    v146 = sub_226EDAB24(v142);

    sub_226EDAB78(v146, v159);

LABEL_18:
    v106 = v166;
    v107 = *(v50 + 16);
    if (!v107)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  v106 = v166;
  v50 = v163;
  if (v137 != 1)
  {
    swift_willThrow();
    goto LABEL_41;
  }

  v107 = *(v50 + 16);
  if (!v107)
  {
LABEL_36:

    v110 = MEMORY[0x277D84F90];
LABEL_37:
    v138 = sub_226F47124(v150);

    v33 = sub_22742F6A0(v110, v138);

    return v33;
  }

LABEL_19:
  v181 = MEMORY[0x277D84F90];
  sub_226F20588(0, v107, 0);
  v108 = 0;
  v109 = v167;
  v110 = v181;
  v170 = (v50 + ((*(v167 + 80) + 32) & ~*(v167 + 80)));
  v169 = (v167 + 16);
  v90 = v167 + 8;
  v111 = v106 + 32;
  while (1)
  {
    if (v108 >= *(v163 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    v112 = v164;
    v29 = v73;
    v113 = v183;
    (*(v109 + 16))(v164, v170 + *(v109 + 72) * v108, v183);
    v114 = v174;
    sub_227395EBC(v112, v29);
    v174 = v114;
    if (v114)
    {
      break;
    }

    (*v90)(v112, v113);
    v181 = v110;
    v116 = *(v110 + 16);
    v115 = *(v110 + 24);
    if (v116 >= v115 >> 1)
    {
      sub_226F20588(v115 > 1, v116 + 1, 1);
      v110 = v181;
    }

    v108 = (v108 + 1);
    *(v110 + 16) = v116 + 1;
    (*(v166 + 32))(v110 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v116, v165, v171);
    v73 = v173;
    v109 = v167;
    if (v107 == v108)
    {

      goto LABEL_37;
    }
  }

  (*v90)(v112, v113);

  __break(1u);
  return result;
}

uint64_t sub_227395B18()
{
  swift_getAssociatedTypeWitness();
  sub_2276640C0();
  swift_getAssociatedConformanceWitness();
  return sub_22766D160();
}

uint64_t sub_227395BD0@<X0>(uint64_t a1@<X1>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v8 = *(v18 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v17 - v9;
  v11 = sub_2276694E0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = *(v5 + 8);
  result = sub_227667700();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v17[0] = v15;
    v17[1] = 0;
    type metadata accessor for PairedSyncZoneCoordinator();
    swift_getWitnessTable();
    sub_2274F5148();
    (*(v5 + 104))(v6, v5);
    v16 = *(swift_getAssociatedConformanceWitness() + 8);
    sub_22766D140();
    (*(v18 + 8))(v10, AssociatedTypeWitness);
    return sub_227665A00();
  }

  return result;
}

uint64_t sub_227395E28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 16);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  result = sub_22766D140();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_227395EBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for PairedSyncZoneCoordinator();
  swift_getWitnessTable();
  sub_2274F5148();
  sub_2276640C0();
  return sub_227665A00();
}

uint64_t sub_227395FD4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x2822009F8](sub_22739601C, 0, 0);
}

uint64_t sub_22739601C()
{
  v1 = *(v0 + 72);
  v15 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_0(v1 + 15, v1[18]);
  *(v0 + 120) = 4;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v4);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = *(v5 + 24);

  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = *(v15 + 80);
  v11 = *(v15 + 88);
  *(v0 + 104) = type metadata accessor for SyncablesUpdated();
  v12 = sub_22766CB90();
  *v9 = v0;
  v9[1] = sub_227396264;

  return (v14)(v0 + 16, sub_227397030, v6, v12, v4, v5);
}

uint64_t sub_227396264()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22739647C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_227396380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227396380()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[13];
    v5 = v0[9];
    v6 = *(v5 + 96);
    v7 = *(v5 + 104);
    swift_getObjectType();
    v0[5] = v1;
    v0[6] = v2;
    v0[7] = v3;
    swift_getWitnessTable();
    sub_2276699D0();
  }

  sub_2273964EC(v0[9]);
  v8 = v0[1];

  return v8();
}

uint64_t sub_22739647C()
{
  v1 = v0[11];
  v2 = v0[9];

  sub_2273964EC(v2);
  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_2273964EC(void *a1)
{
  v1 = a1[19];
  __swift_project_boxed_opaque_existential_0(a1 + 15, a1[18]);
  sub_226F19410();
  sub_226F19464();
  return sub_22766A120();
}

uint64_t sub_22739659C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v77 = a1;
  v75 = a4;
  v5 = *a3;
  v6 = *(*a3 + 88);
  v76 = a3;
  v7 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = sub_22766CB90();
  v73 = *(v74 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v92 = &v73 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v89 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v87 = &v73 - v18;
  v102 = *(v7 - 8);
  v19 = *(v102 + 64);
  MEMORY[0x28223BE20](v20);
  v91 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v86 = &v73 - v23;
  v103 = sub_227665A20();
  v24 = *(v103 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v103);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v97 = &v73 - v29;
  v84 = *(v6 + 32);
  v106 = sub_22766BE60();
  v100 = v6;
  v30 = v7;
  v31 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v94 = AssociatedTypeWitness;
  v83 = AssociatedConformanceWitness;
  v33 = sub_22766BE60();
  v35 = a2 + 56;
  v34 = *(a2 + 56);
  v36 = 1 << *(a2 + 32);
  v37 = -1;
  v105 = v33;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v34;
  v39 = (v36 + 63) >> 6;
  v95 = v31 + 32;
  v96 = v31 + 16;
  v82 = (v102 + 8);
  v98 = (v31 + 8);
  v90 = (v11 + 48);
  v81 = (v11 + 32);
  v80 = (v11 + 16);
  v79 = (v11 + 8);
  v40 = v27;
  v102 = a2;

  v42 = 0;
  v99 = v40;
  v93 = a2 + 56;
  v85 = v31;
  v78 = v30;
  while (v38)
  {
LABEL_12:
    v51 = v103;
    v52 = v97;
    (*(v31 + 16))(v97, *(v102 + 48) + *(v31 + 72) * (__clz(__rbit64(v38)) | (v42 << 6)), v103);
    (*(v31 + 32))(v40, v52, v51);
    v53 = sub_227665A10();
    if (v54 >> 60 == 15)
    {
      sub_2276659E0();
      v43 = v94;
      swift_getAssociatedConformanceWitness();
      v44 = v92;
      sub_22766D160();
      if ((*v90)(v44, 1, v43) == 1)
      {

        (*(v73 + 8))(v44, v74);
        sub_226F1893C();
        swift_allocError();
        *v72 = 16;
        swift_willThrow();

        return (*v98)(v99, v103);
      }

      v45 = v94;
      v46 = v87;
      (*v81)(v87, v44, v94);
      (*v80)(v89, v46, v45);
      sub_22766C730();
      v47 = v88;
      sub_22766C6E0();
      v48 = *v79;
      (*v79)(v47, v45);
      v49 = v46;
      v30 = v78;
      v48(v49, v45);
    }

    else
    {
      v55 = v53;
      v56 = v54;
      sub_226F5E0B4(v53, v54);
      v57 = v101;
      v58 = *(v100 + 8);
      sub_2276676F0();
      v101 = v57;
      if (v57)
      {

        sub_226FB1424(v55, v56);
        (*v98)(v99, v103);
      }

      sub_22766C730();
      v59 = v86;
      sub_22766C6E0();
      sub_226FB1424(v55, v56);
      v60 = v59;
      v31 = v85;
      (*v82)(v60, v30);
    }

    v38 &= v38 - 1;
    v40 = v99;
    result = (*v98)(v99, v103);
    v35 = v93;
  }

  while (1)
  {
    v50 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return result;
    }

    if (v50 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v50);
    ++v42;
    if (v38)
    {
      v42 = v50;
      goto LABEL_12;
    }
  }

  v104 = v76;
  v61 = v106;
  v62 = v105;
  v63 = type metadata accessor for PairedSyncZoneCoordinator();
  WitnessTable = swift_getWitnessTable();
  v65 = v101;
  v66 = sub_2274F54D0(v61, v62, v77, v63, WitnessTable);
  v68 = v67;
  v70 = v69;

  if (!v65)
  {
    v71 = v75;
    *v75 = v66;
    v71[1] = v68;
    v71[2] = v70;
  }

  return result;
}

BOOL sub_227396DC4()
{
  v1 = *v0;
  if (*(v0 + 112))
  {
    if (*(v0 + 112) != 2)
    {
      return 0;
    }

    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for PairedSyncZoneCoordinator();
  swift_getWitnessTable();

  return sub_2274F6E04(v2);
}

uint64_t sub_227396EA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return sub_227395FD4(a1);
}

uint64_t sub_227396F5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_227395B18();
}

unint64_t sub_227396F7C()
{
  result = qword_281399110;
  if (!qword_281399110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE710, &qword_22768D920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399110);
  }

  return result;
}

uint64_t sub_227396FE0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_227395BD0(v2[4], a1, a2);
}

uint64_t sub_22739704C(uint64_t a1)
{
  v37 = sub_227664E20();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227664E00();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EFF0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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
  }

  return result;
}

uint64_t sub_227397354(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_226F1F468(0, v1, 0);
  v2 = v25;
  v4 = -1 << *(a1 + 32);
  v24 = a1 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v24 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + v6);
    result = sub_227669410();
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_24;
    }

    if (result > 0x7FFFFFFF)
    {
      goto LABEL_25;
    }

    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = result;
      sub_226F1F468((v13 > 1), v14 + 1, 1);
      result = v22;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 4 * v14 + 32) = result;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_26;
    }

    v15 = *(v24 + 8 * v10);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_27;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v23;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v9 = v23;
      v19 = (a1 + 64 + 8 * v10);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_226EB526C(v6, v11, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_2273975B8(uint64_t a1, void *a2)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF68, qword_227682A48);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  v42 = v13;
  v43 = v14;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  v41 = v8;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  v15 = sub_22739704C(a1);
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v46[0] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226ED25F8(v46, v44);
  v17 = v45;
  if (v45)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF70 qword_227682A88))];

  sub_226EBC888(v46);
  swift_beginAccess();
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v46, 0);
  swift_endAccess();

  v28 = sub_22723BD10(0);
  if (v2)
  {
  }

  else
  {
    v29 = v28;
    v30 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
    [v30 setResultType_];
    v46[0] = 0;
    v31 = v43;
    v32 = [v43 executeRequest:v30 error:v46];
    if (v32)
    {
      v33 = v32;
      v34 = v46[0];

      swift_setDeallocating();
      v35 = qword_2813B2078;
      v36 = sub_22766A100();
      (*(*(v36 - 8) + 8))(v12 + v35, v36);
      v37 = *(*v12 + 48);
      v38 = *(*v12 + 52);
      swift_deallocClassInstance();
    }

    else
    {
      v39 = v46[0];
      sub_2276622C0();

      swift_willThrow();
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

char *sub_227397AA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v36[5] = a4;
  v32[1] = a3;
  v33 = a2;
  v6 = __swift_project_boxed_opaque_existential_0(a5, a5[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF68, qword_227682A48);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v17 = sub_227397354(a1);
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC3E8, &unk_227685D70);
  v36[0] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226ED25F8(v36, v34);
  v19 = v35;
  if (v35)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF70 qword_227682A88))];

  sub_226EBC888(v36);
  swift_beginAccess();
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v36, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397EAC();

  swift_beginAccess();
  sub_22766A0D0();
  sub_22766A0F0();
  swift_endAccess();
  v30 = sub_2272319B8(100);

  return v30;
}

uint64_t sub_227397EAC()
{
  v1 = v0;
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);

  sub_22766C900();
  swift_beginAccess();
  v2 = sub_22766A0A0();
  v4 = v3;
  MEMORY[0x22AA985C0]();
  if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v2(v7, 0);
  swift_endAccess();
  return v1;
}

uint64_t sub_227397FCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 addObserver:v0 selector:sel_onAccountChanged name:*MEMORY[0x277CBBF00] object:0];

  v7 = [v5 defaultCenter];
  [v7 addObserver:v0 selector:sel_onIdentityChanged name:*MEMORY[0x277CBBF90] object:0];

  v8 = sub_22766C4B0();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;

  sub_2272CA940(0, 0, v4, &unk_227682B88, v9);
}

uint64_t sub_227398170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_22766B390();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22739823C, 0, 0);
}

uint64_t sub_22739823C()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 48) + 32), *(*(v0 + 48) + 56));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2273982DC;

  return sub_2274FEB58();
}

uint64_t sub_2273982DC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 105) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_2273985B8;
  }

  else
  {
    v5 = sub_2273983F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2273983F4()
{
  v22 = v0;
  v1 = *(v0 + 80);
  sub_22766A700();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 105);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    *(v0 + 104) = v4;
    v10 = MEMORY[0x22AA958B0](MEMORY[0x277D51260], MEMORY[0x277D51258]);
    v12 = sub_226E97AE8(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "Updating Account Status to %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);

    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v0 + 48);
  sub_2273988E8(*(v0 + 105));
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2273985B8()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[9];
  sub_22766A700();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = v0[2];
    v13 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v15 = sub_226E97AE8(v13, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Could not query for account info with error: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[12];
  v20 = v0[6];
  sub_2273988E8(4);

  v22 = v0[9];
  v21 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2273988E8(char a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 72);
  v30 = v2;
  v31 = a1;
  sub_2276696A0();
  v10 = v33;
  v11 = sub_227664EE0();
  v13 = v12;
  if (v11 == sub_227664EE0() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_22766D190();

    if ((v16 & 1) == 0)
    {
      sub_22766A700();
      v18 = sub_22766B380();
      v19 = sub_22766C8B0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = v20;
        v29 = swift_slowAlloc();
        v33 = v29;
        *v20 = 136446210;
        v32 = a1;
        v21 = MEMORY[0x22AA958B0](MEMORY[0x277D51260], MEMORY[0x277D51258]);
        v23 = sub_226E97AE8(v21, v22, &v33);

        v24 = v28;
        *(v28 + 1) = v23;
        _os_log_impl(&dword_226E8E000, v18, v19, "New account status: %{public}s", v24, 0xCu);
        v25 = v29;
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x22AA9A450](v25, -1, -1);
        MEMORY[0x22AA9A450](v24, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      v26 = *(v2 + 16);
      v27 = *(v2 + 24);
      swift_getObjectType();
      LOBYTE(v33) = v10;
      BYTE1(v33) = a1;
      sub_2271DC194();
      return sub_2276699D0();
    }
  }

  return result;
}

uint64_t sub_227398B94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_227398C00(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  sub_22766A700();
  v10 = a1;
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();

  v13 = os_log_type_enabled(v11, v12);
  v40 = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v10;
    v44 = v15;
    *v14 = 136446210;
    type metadata accessor for CKError(0);
    v39 = v2;
    v16 = v3;
    v18 = v17;
    v19 = sub_227399064(&unk_281399178);
    v20 = MEMORY[0x22AA995D0](v18, v19);
    v22 = sub_226E97AE8(v20, v21, &v44);

    *(v14 + 4) = v22;
    v3 = v16;
    v2 = v39;
    _os_log_impl(&dword_226E8E000, v11, v12, "Received account status error: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  v23 = *(v3 + 8);
  v23(v9, v2);
  v44 = v10;
  type metadata accessor for CKError(0);
  v25 = v24;
  sub_227399064(&qword_27D7B8328);
  sub_227662280();
  if (v43 == 32)
  {
    goto LABEL_9;
  }

  if (v43 == 9)
  {
    v26 = 4;
    return sub_2273988E8(v26);
  }

  v42 = v10;
  sub_227662280();
  if (v41 == 111)
  {
LABEL_9:
    v26 = 3;
    return sub_2273988E8(v26);
  }

  if (v41 == 110)
  {
    v26 = 1;
    return sub_2273988E8(v26);
  }

  v28 = v40;
  sub_22766A700();
  v29 = v10;
  v30 = sub_22766B380();
  v31 = sub_22766C8A0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v29;
    v42 = v33;
    *v32 = 136446210;
    v34 = sub_227399064(&unk_281399178);
    v35 = MEMORY[0x22AA995D0](v25, v34);
    v37 = sub_226E97AE8(v35, v36, &v42);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v30, v31, "Unhandled account error: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v32, -1, -1);

    v38 = v40;
  }

  else
  {

    v38 = v28;
  }

  return (v23)(v38, v2);
}

uint64_t sub_227399004()
{
  v1 = *(*v0 + 72);
  sub_2276696A0();
  return v3;
}

uint64_t sub_227399064(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2273990B4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 80);
  *(v2 + 80) = *(v1 + 24);
  *a1 = v3;
}

uint64_t sub_2273990CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227398170(a1, v4, v5, v6);
}

uint64_t sub_227399180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_227398170(a1, v4, v5, v6);
}

uint64_t ScriptError.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_2273992C0()
{
  result = qword_27D7BCF78;
  if (!qword_27D7BCF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCF78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScriptError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AssetLoaderResponse()
{
  result = qword_2813A1AF8;
  if (!qword_2813A1AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2273994D8()
{
  result = sub_2276624A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22739954C(void *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v9 = sub_2276694E0();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_227662750();
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v47);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v21 = [a1 zoneName];
  if (v21)
  {
    v43 = a2;
    v44 = v2;
    v22 = a1;
    v23 = v21;
    v45 = sub_22766C000();

    v24 = [v22 timestamp];
    if (v24)
    {
      v25 = v24;
      v42 = v22;
      sub_227662710();

      v26 = v13;
      v27 = *(v13 + 32);
      v28 = v20;
      v29 = v16;
      v30 = v47;
      v41 = v27;
      v27(v20, v29, v47);
      sub_2276694B0();
      v31 = v46;
      if ((*(v46 + 48))(v8, 1, v9) == 1)
      {
        sub_226E97D1C(v8, &qword_27D7B8460, qword_2276709E0);
        v32 = sub_227664DD0();
        sub_227399B78(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
        swift_willThrow();

        (*(v26 + 8))(v28, v30);
      }

      else
      {

        v38 = *(v31 + 32);
        v38(v12, v8, v9);
        v39 = v43;
        v38(v43, v12, v9);
        v40 = type metadata accessor for DirtySyncZone();
        v41(&v39[*(v40 + 20)], v28, v30);
      }
    }

    else
    {

      v36 = sub_227664DD0();
      sub_227399B78(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
      swift_willThrow();
    }
  }

  else
  {
    v34 = sub_227664DD0();
    sub_227399B78(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51028], v34);
    swift_willThrow();
  }
}

void sub_227399A88(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2276694C0();
  v6 = sub_22766BFD0();

  [a1 setZoneName_];

  v7 = v3 + *(a3 + 20);
  v8 = sub_2276626A0();
  [a1 setTimestamp_];
}

uint64_t sub_227399B20(uint64_t a1)
{
  result = sub_227399B78(&unk_28139B088, type metadata accessor for DirtySyncZone);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227399B78(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_227399BC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF80, qword_227682CE0);
  v1 = *(v0 - 8);
  v31 = v0;
  v32 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v27 - v3;
  v5 = type metadata accessor for DirtySyncZone();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276694D0();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = sub_2274CD740(*(v9 + 16), 0);
    v13 = *(sub_2276694E0() - 8);
    v14 = sub_2274CDD98(v40, (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80))), v11, v10);
    sub_226EBB21C();
    if (v14 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v15 = sub_2276694E0();
  v16 = sub_22766C330();

  sub_227662630();
  v17 = sub_227662750();
  v18 = sub_22766C330();

  v38 = v18;
  v39 = v16;
  v40[0] = &v39;
  v40[1] = &v38;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v34 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v35 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v19 = sub_2276638E0();

  v20 = *(v19 + 16);
  if (v20)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_226F1F010(0, v20, 0);
    v22 = 0;
    v23 = v33;
    v28 = v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27[0] = v17 - 8;
    v27[1] = v15 - 8;
    while (v22 < *(v19 + 16))
    {
      sub_22739A01C(v28 + *(v32 + 72) * v22, v4);
      v24 = *(v31 + 48);
      (*(*(v15 - 8) + 16))(v8, v4, v15);
      (*(*(v17 - 8) + 16))(&v8[*(v30 + 20)], &v4[v24], v17);
      sub_226E97D1C(v4, &qword_27D7BCF80, qword_227682CE0);
      v33 = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1F010(v25 > 1, v26 + 1, 1);
        v23 = v33;
      }

      ++v22;
      *(v23 + 16) = v26 + 1;
      result = sub_2271302D4(v8, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26);
      if (v20 == v22)
      {

        return v23;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22739A01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF80, qword_227682CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22739A08C()
{
  v0 = sub_2276629D0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_227666CE0();
  v3 = v2;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = *(v3 + 48) + 24 * (__clz(__rbit64(v7)) | (v10 << 6));
      v7 &= v7 - 1;
      v21 = *v12;
      v22 = *(v12 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
      result = sub_227663B00();
      if (v20 != 3)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A50E4(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v19 = v15 + 1;
      v17 = v11;
      v18 = *(v11 + 16);
      result = sub_2273A50E4((v14 > 1), v15 + 1, 1, v17);
      v15 = v18;
      v16 = v19;
      v11 = result;
    }

    *(v11 + 16) = v16;
    *(v11 + v15 + 32) = v20;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      sub_226F419F4(v11);

      sub_227666CF0();
      sub_227666CC0();
      sub_227666D00();
      sub_227666D10();
      return sub_227662AC0();
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22739A2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D68];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22739A360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227668E00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22739A388(uint64_t a1)
{
  *(a1 + 24) = sub_22739A3F0(&qword_2813A5540);
  result = sub_22739A3F0(&unk_2813A5530);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22739A3F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227668E30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MetricRecordingContext()
{
  result = qword_28139A3F8;
  if (!qword_28139A3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22739A4A8()
{
  result = sub_227666C80();
  if (v1 <= 0x3F)
  {
    result = sub_2276666A0();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MetricServiceSubscriptionState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22739A564(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v56 - v6;
  v8 = sub_227662750();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v56 - v17;
  v19 = sub_2276624A0();
  v68 = *(v19 - 8);
  v20 = *(v68 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v67 = v56 - v24;
  v25 = [a1 identifier];
  if (!v25)
  {
    goto LABEL_9;
  }

  v61 = v23;
  v26 = a2;
  v63 = v14;
  v27 = v25;
  v62 = sub_22766C000();
  v29 = v28;

  v30 = [a1 userIdentifier];
  if (!v30)
  {
    goto LABEL_8;
  }

  v64 = v29;
  v31 = v30;
  v60 = sub_22766C000();
  v33 = v32;

  v34 = [a1 workoutIdentifier];
  if (!v34)
  {

LABEL_8:

LABEL_9:
    v43 = sub_227664DD0();
    sub_22739B35C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51028], v43);
    swift_willThrow();

    return;
  }

  v59 = v19;
  v35 = v34;
  v58 = sub_22766C000();
  v37 = v36;

  v38 = [a1 slotIdentifier];
  if (!v38)
  {

    goto LABEL_8;
  }

  v56[3] = v37;
  v56[4] = v33;
  v57 = v7;
  v56[1] = v26;
  v39 = v38;
  v56[0] = sub_22766C000();
  v56[2] = v40;

  v41 = [a1 masterPlaylist];
  if (v41)
  {
    v42 = v41;
    sub_22766C000();
  }

  v45 = v57;
  v46 = v59;
  sub_227662310();
  v47 = v68;
  if ((*(v68 + 48))(v18, 1, v46) == 1)
  {

    sub_226E97D1C(v18, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_9;
  }

  (*(v47 + 32))(v67, v18, v46);
  v57 = [a1 version];
  LODWORD(v59) = [a1 canFreeDeviceSlot];
  v48 = [a1 renewDate];
  if (v48)
  {
    v49 = v48;
    sub_227662710();

    v50 = v65;
    v51 = v66;
    v52 = *(v65 + 32);
    v52(v45, v12, v66);
    (*(v50 + 56))(v45, 0, 1, v51);
    v52(v63, v45, v51);
    v47 = v68;
  }

  else
  {
    v54 = v65;
    v53 = v66;
    (*(v65 + 56))(v45, 1, 1, v66);
    sub_227662740();
    if ((*(v54 + 48))(v45, 1, v53) != 1)
    {
      sub_226E97D1C(v45, &qword_27D7B9690, qword_227670B50);
    }
  }

  v55 = v67;
  (*(v47 + 16))(v61, v67, v46);
  sub_227666800();

  (*(v47 + 8))(v55, v46);
}

size_t static AssetRequestKeyMetadata.representativeSamples()()
{
  v49 = sub_2276624A0();
  v52 = *(v49 - 8);
  v0 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_227662750();
  v53 = *(v47 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF88, &qword_227682DC8);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v45);
  v7 = v35 - v6;
  v44 = sub_2276668A0();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766C090();
  sub_226F05E24();
  v55 = sub_22766CFA0();
  v54 = sub_22766C410();
  v13 = sub_22766C090();
  v14 = sub_22766C090();
  v15 = sub_22766C090();
  v16 = sub_227662630();
  v17 = sub_2276622F0();
  v79 = v55;
  v80[0] = v12;
  v80[1] = v80;
  v80[2] = &v79;
  v77 = v13;
  v78 = v54;
  v80[3] = &v78;
  v80[4] = &v77;
  v75 = v15;
  v76 = v14;
  v80[5] = &v76;
  v80[6] = &v75;
  v73 = v17;
  v74 = v16;
  v80[7] = &v74;
  v80[8] = &v73;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v65 = v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8ED8, &qword_227672868);
  v68 = v18;
  v69 = v18;
  v70 = v18;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v19 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v57 = v19;
  v58 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v59 = sub_226F5BF60(&qword_27D7B8EE8, &qword_27D7B8ED8, &qword_227672868);
  v60 = v19;
  v61 = v19;
  v62 = v19;
  v63 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v64 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v20 = sub_2276638E0();

  v21 = *(v20 + 16);
  if (v21)
  {
    v56 = MEMORY[0x277D84F90];
    result = sub_226F1F4A8(0, v21, 0);
    v23 = 0;
    v24 = v56;
    v38 = v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v39 = v21;
    v36 = (v52 + 16);
    v37 = (v53 + 16);
    v35[1] = v8 + 32;
    v42 = v8;
    v43 = v4;
    v40 = v20;
    v41 = v11;
    while (v23 < *(v20 + 16))
    {
      sub_22739B294(v38 + *(v4 + 72) * v23, v7);
      v25 = *v7;
      v26 = *(v7 + 1);
      v54 = *(v7 + 2);
      v55 = v25;
      LODWORD(v53) = v7[24];
      v27 = *(v7 + 4);
      v28 = *(v7 + 5);
      v29 = *(v7 + 7);
      v51 = *(v7 + 6);
      v52 = v27;
      v30 = *(v7 + 9);
      v50 = *(v7 + 8);
      v31 = *(v45 + 144);
      (*v37)(v46, &v7[*(v45 + 128)], v47);
      (*v36)(v48, &v7[v31], v49);

      v32 = v41;
      sub_227666800();
      sub_226E97D1C(v7, &qword_27D7BCF88, &qword_227682DC8);
      v56 = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_226F1F4A8(v33 > 1, v34 + 1, 1);
        v24 = v56;
      }

      ++v23;
      *(v24 + 16) = v34 + 1;
      result = (*(v42 + 32))(v24 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34, v32, v44);
      v20 = v40;
      v4 = v43;
      if (v39 == v23)
      {

        return v24;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}