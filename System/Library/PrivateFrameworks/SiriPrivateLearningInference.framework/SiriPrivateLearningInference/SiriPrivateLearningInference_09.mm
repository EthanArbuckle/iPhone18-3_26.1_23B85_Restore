uint64_t sub_222BE6DAC()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  v3 = *(v0 + 168);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v4 = sub_222C9431C();
  __swift_project_value_buffer(v4, qword_280FE2340);
  v5 = v3;
  v6 = sub_222C942FC();
  v7 = sub_222C94A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v8 = 136315650;
    if (qword_280FDDC80 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 176);
    *(v8 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v20);
    *(v8 + 12) = 2080;
    if (v11)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v12 = 0xD000000000000012;
    }

    if (v11)
    {
      v13 = "siriLearnedContact";
    }

    else
    {
      v13 = "picsRuntimeInSiriVocab";
    }

    v14 = sub_222B437C0(v12, v13 | 0x8000000000000000, v20);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    v15 = v3;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&dword_222B39000, v6, v7, "%s Error occured during donating %s %@", v8, 0x20u);
    sub_222BE7324(v9);
    MEMORY[0x223DCA8C0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v10, -1, -1);
    MEMORY[0x223DCA8C0](v8, -1, -1);
  }

  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = &type metadata for PIMSFatalError;
  *(v0 + 112) = sub_222BE72D0();
  strcpy((v0 + 80), "PIMSFatalError");
  *(v0 + 95) = -18;
  *(v0 + 96) = 9;
  sub_222C93B5C();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t dispatch thunk of CascadeLearnedEntityDonator.donateSuggestions(donationCandidates:)(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222B503AC;

  return v8(a1);
}

unint64_t sub_222BE7258()
{
  result = qword_280FDB780;
  if (!qword_280FDB780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FDB780);
  }

  return result;
}

unint64_t sub_222BE72D0()
{
  result = qword_280FDFD28[0];
  if (!qword_280FDFD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDFD28);
  }

  return result;
}

uint64_t sub_222BE7324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F70, &unk_222C9E7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BE738C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v40 = a6;
  v51 = a5;
  v42 = a2;
  v45 = type metadata accessor for FeaturisedTurn(0);
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v39 - v16;
  v39 = v9;
  v43 = (v9 + 48);
  v44 = (v9 + 56);
  v50 = a1;

  v48 = a3;

  v49 = 0;
  while (1)
  {
    v27 = v49;
    v28 = *(v50 + 16);
    if (v49 == v28)
    {
      v29 = 1;
      v30 = v46;
      v31 = v47;
      goto LABEL_15;
    }

    v30 = v46;
    v31 = v47;
    if (v49 >= v28)
    {
      break;
    }

    sub_222B97E94(v50 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v49, v46, type metadata accessor for FeaturisedTurn);
    v29 = 0;
    ++v27;
LABEL_15:
    v32 = v45;
    (*v44)(v30, v29, 1, v45);
    sub_222B723A4(v30, v31, &qword_27D0253C8, &unk_222C98400);
    if ((*v43)(v31, 1, v32) == 1)
    {

      v38 = v40;
      v40[4] = 0;
      *v38 = 0u;
      v38[1] = 0u;
      return result;
    }

    v49 = v27;
    v33 = v31;
    v34 = v41;
    sub_222B97FB4(v33, v41, type metadata accessor for FeaturisedTurn);
    v42(&v52, v34);
    sub_222B77D34(v34, type metadata accessor for FeaturisedTurn);
    v35 = v52;

    v36 = v35;
    if (v35)
    {
      v18 = (v35 + 64);
      v19 = -1;
      while (1)
      {
        ++v19;
        v20 = *(v36 + 16);
        if (v19 == v20)
        {
          break;
        }

        if (v19 >= v20)
        {
          __break(1u);
          goto LABEL_22;
        }

        v22 = *(v18 - 4);
        v21 = *(v18 - 3);
        v23 = *(v18 - 2);
        v24 = *(v18 - 1);
        v25 = *v18;
        if (v22 == a4 && v21 == v51)
        {
          v22 = a4;
LABEL_19:

          v37 = v40;
          *v40 = v22;
          v37[1] = v21;
          v37[2] = v23;
          v37[3] = v24;
          v37[4] = v25;
          return result;
        }

        v18 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_222BE772C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C38, &unk_222C9A650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  v1 = type metadata accessor for MediaPlayClassifier();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257C8, &qword_222C99050);
  v3 = sub_222C944EC();
  MEMORY[0x223DC9330](v3);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v2 + 16) = 91;
  *(v2 + 24) = 0xE100000000000000;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for MediaPlayClassifier;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_222BE7834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6 - 8];
  v8 = type metadata accessor for MediaPlayClassification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_222B43E3C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_222B97FB4(v7, v12, type metadata accessor for MediaPlayClassification);
    if ((sub_222BCB8C4() & 1) != 0 && v12[8] == 1)
    {
      sub_222B97FB4(v12, a2, type metadata accessor for MediaPlayClassification);
      v15 = 0;
    }

    else
    {
      sub_222B77D34(v12, type metadata accessor for MediaPlayClassification);
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
    v14(v7, 1, 1, v8);
    sub_222B4FCD4(v7, &qword_27D0257D8, &unk_222C990C0);
  }

  return (v14)(a2, v15, 1, v8);
}

uint64_t sub_222BE7A68(uint64_t a1)
{
  if (*(a1 + 24) == 0xD000000000000011 && 0x8000000222CA87C0 == *(a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC();
  }
}

uint64_t sub_222BE7AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v44 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v12;
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v37 = v5;
  v40 = (v5 + 48);
  v41 = (v5 + 56);
  v46 = a1;

  v45 = 0;
  while (1)
  {
    v25 = v45;
    v26 = *(v46 + 16);
    if (v45 == v26)
    {
      v27 = 1;
      v29 = v43;
      v28 = v44;
      v30 = v42;
      goto LABEL_15;
    }

    v29 = v43;
    v28 = v44;
    v30 = v42;
    if (v45 >= v26)
    {
      break;
    }

    sub_222B97E94(v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v42, type metadata accessor for FeaturisedTurn);
    v27 = 0;
    ++v25;
LABEL_15:
    (*v41)(v30, v27, 1, v28);
    sub_222B723A4(v30, v29, &qword_27D0253C8, &unk_222C98400);
    if ((*v40)(v29, 1, v28) == 1)
    {

      v35 = v38;
      *(v38 + 48) = 0;
      v35[1] = 0u;
      v35[2] = 0u;
      *v35 = 0u;
      return result;
    }

    v45 = v25;
    v31 = v29;
    v32 = v39;
    sub_222B97FB4(v31, v39, type metadata accessor for FeaturisedTurn);
    v33 = *(v32 + *(v28 + 28));

    sub_222B77D34(v32, type metadata accessor for FeaturisedTurn);

    v34 = v33;
    if (v33)
    {
      v16 = (v33 + 64);
      v17 = -1;
      while (1)
      {
        ++v17;
        v18 = *(v34 + 16);
        if (v17 == v18)
        {
          break;
        }

        if (v17 >= v18)
        {
          __break(1u);
          goto LABEL_22;
        }

        v19 = *(v16 - 4);
        v20 = *(v16 - 3);
        v21 = *(v16 - 2);
        v22 = *(v16 - 1);
        v23 = *v16;
        if (v19 == v13 && v20 == v14)
        {
          v19 = v13;
LABEL_19:

          v47[0] = v19;
          v47[1] = v20;
          v47[2] = v21;
          v47[3] = v22;
          v47[4] = v23;
          extractMediaReference(event:)(v47, v38);
        }

        v16 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_222BE7E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v107 = a2;
  v106 = a1;
  v111 = a5;
  v120 = sub_222C9367C();
  v121 = *(v120 - 8);
  v9 = *(v121 + 64);
  v10 = MEMORY[0x28223BE20](v120);
  v127 = (&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v113 = (&v104 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v109 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v108 = &v104 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v104 - v20;
  MEMORY[0x28223BE20](v19);
  v110 = &v104 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  v29 = type metadata accessor for MediaPlayClassification();
  v30 = *(v29 - 8);
  v31 = *(v30 + 8);
  v32 = MEMORY[0x28223BE20](v29);
  v129 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v104 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v119 = &v104 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v116 = &v104 - v40;
  MEMORY[0x28223BE20](v39);
  v112 = &v104 - v41;
  v42 = a3[1];
  v133 = *a3;
  v134 = v42;
  v135 = a3[2];
  v136 = *(a3 + 24);
  v117 = a4;
  v43 = *(a4 + 24);
  v44 = *(v43 + 16);
  v118 = v6;

  v123 = v29;
  v128 = v44;
  if (v44)
  {
    v45 = 0;
    v46 = v43 + 32;
    v47 = (v30 + 56);
    v122 = v30 + 48;
    v48 = MEMORY[0x277D84F90];
    v126 = v26;
    v125 = v30;
    v124 = v43;
    while (v45 < *(v43 + 16))
    {
      sub_222B43E3C(v46, v130);
      sub_222B43E3C(v130, &v131);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v49 = swift_dynamicCast();
      v50 = *v47;
      if (v49)
      {
        v50(v26, 0, 1, v29);
        sub_222B97FB4(v26, v36, type metadata accessor for MediaPlayClassification);
        if (sub_222BCB8C4())
        {
          if (v36[8] == 1)
          {
            sub_222B97FB4(v36, v28, type metadata accessor for MediaPlayClassification);
            v51 = 0;
          }

          else
          {
            sub_222B77D34(v36, type metadata accessor for MediaPlayClassification);
            v51 = 1;
          }

          v29 = v123;
        }

        else
        {
          sub_222B77D34(v36, type metadata accessor for MediaPlayClassification);
          v51 = 1;
        }
      }

      else
      {
        v51 = 1;
        v50(v26, 1, 1, v29);
        sub_222B4FCD4(v26, &qword_27D0257D8, &unk_222C990C0);
      }

      v50(v28, v51, 1, v29);
      __swift_destroy_boxed_opaque_existential_0Tm(v130);
      if ((*v122)(v28, 1, v29) == 1)
      {
        sub_222B4FCD4(v28, &qword_27D0257D8, &unk_222C990C0);
        v26 = v126;
        v30 = v125;
      }

      else
      {
        v52 = v119;
        sub_222B97FB4(v28, v119, type metadata accessor for MediaPlayClassification);
        sub_222B97FB4(v52, v129, type metadata accessor for MediaPlayClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v126;
        v30 = v125;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = sub_222B4A278(0, v48[2] + 1, 1, v48);
        }

        v55 = v48[2];
        v54 = v48[3];
        if (v55 >= v54 >> 1)
        {
          v48 = sub_222B4A278(v54 > 1, v55 + 1, 1, v48);
        }

        v48[2] = v55 + 1;
        sub_222B97FB4(v129, v48 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 9) * v55, type metadata accessor for MediaPlayClassification);
        v29 = v123;
      }

      ++v45;
      v46 += 40;
      v43 = v124;
      if (v128 == v45)
      {
        goto LABEL_21;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_21:

  if (!v48[2])
  {

    v79 = type metadata accessor for MediaFeedbackGroundTruth();
    return (*(*(v79 - 8) + 56))(v111, 1, 1, v79);
  }

  v56 = v116;
  sub_222B97E94(v48 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v116, type metadata accessor for MediaPlayClassification);

  v57 = v56;
  v58 = v112;
  sub_222B97FB4(v57, v112, type metadata accessor for MediaPlayClassification);
  v59 = *(v117 + 16);
  v130[3] = v29;
  v130[4] = &protocol witness table for MediaPlayClassification;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
  sub_222B97E94(v58, boxed_opaque_existential_1, type metadata accessor for MediaPlayClassification);
  sub_222B43E3C(v130, &v131);
  v61 = *(v59 + 16);
  v62 = v121;
  v129 = v121 + 16;

  v119 = v61;
  if (v61)
  {
    v128 = v62 + 8;
    v63 = 0;
    v114 = type metadata accessor for FeaturisedTurn(0);
    v64 = *(v114 - 8);
    v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v105 = v59;
    v66 = v59 + v65;
    v67 = *(v64 + 72);
    v68 = v113;
    v117 = v66;
    v118 = v67;
LABEL_24:
    v125 = (v66 + v67 * v63);
    v69 = *(__swift_project_boxed_opaque_existential_1(&v131, v132) + *(v29 + 36));
    v126 = *(v69 + 16);
    v122 = v69;

    v70 = 0;
    do
    {
      if (v126 == v70)
      {

        ++v63;
        v29 = v123;
        v67 = v118;
        v66 = v117;
        if (v63 != v119)
        {
          goto LABEL_24;
        }

        v59 = v105;
        v62 = v121;
        goto LABEL_31;
      }

      if (v70 >= *(v122 + 16))
      {
        goto LABEL_55;
      }

      v71 = v121;
      v72 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v73 = *(v121 + 72);
      v74 = *(v121 + 16);
      v75 = v120;
      v74(v68, v122 + v72 + v73 * v70++, v120);
      v76 = sub_222BE8EA8(&qword_280FE02A0, MEMORY[0x277CC95F0]);
      v77 = sub_222C9447C();
      v78 = *(v71 + 8);
      v78(v68, v75);
    }

    while ((v77 & 1) == 0);
    v124 = v76;
    v125 = v74;
    v126 = v73;
    v116 = v72;

    v62 = v121;
    v113 = (v121 + 48);
    v81 = v120;
LABEL_33:
    v82 = v123;
    if (v63 < v119)
    {
      v83 = v115;
      sub_222B421FC(*(v117 + v118 * v63 + *(v114 + 24)), v115);
      v84 = (*v113)(v83, 1, v81);
      sub_222B4FCD4(v83, &unk_27D026290, &qword_222C96B40);
      if (v84 == 1)
      {
        if (!__OFADD__(v63++, 1))
        {
          while (v63 != v119)
          {
            if (v63 >= v119)
            {
              goto LABEL_56;
            }

            v86 = v81;
            v122 = v63;
            v87 = *(__swift_project_boxed_opaque_existential_1(&v131, v132) + *(v82 + 36));
            v88 = *(v87 + 16);

            v89 = (v87 + v116);
            v90 = -1;
            while (v90 - v88 != -1)
            {
              if (++v90 >= *(v87 + 16))
              {
                __break(1u);
                goto LABEL_54;
              }

              v91 = &v126[v89];
              v92 = v127;
              (v125)(v127);
              v93 = sub_222C9447C();
              v78(v92, v86);
              v89 = v91;
              if (v93)
              {

                v81 = v86;
                v62 = v121;
                v63 = v122;
                goto LABEL_33;
              }
            }

            v63 = v122 + 1;
            v81 = v86;
            v62 = v121;
            v82 = v123;
            if (__OFADD__(v122, 1))
            {
              goto LABEL_45;
            }
          }

          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
      }

      v119 = v63;
LABEL_47:
      v59 = v105;
      goto LABEL_48;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_31:
  v81 = v120;
LABEL_48:
  v94 = *(v59 + 16);
  v95 = 1;
  v96 = v110;
  v97 = v109;
  v98 = v108;
  if (v119 == v94)
  {
LABEL_52:
    (*(v62 + 56))(v96, v95, 1, v81);

    __swift_destroy_boxed_opaque_existential_0Tm(&v131);
    sub_222B77D34(v112, type metadata accessor for MediaPlayClassification);
    __swift_destroy_boxed_opaque_existential_0Tm(v130);
    v100 = v111;
    (*(v62 + 16))(v111, v106, v81);
    v101 = type metadata accessor for MediaFeedbackGroundTruth();
    *(v100 + v101[5]) = 1;
    *(v100 + v101[6]) = v107;
    v102 = v100 + v101[7];
    v103 = v134;
    *v102 = v133;
    *(v102 + 16) = v103;
    *(v102 + 32) = v135;
    *(v102 + 48) = v136;
    sub_222B723A4(v96, v100 + v101[8], &unk_27D026290, &qword_222C96B40);
    (*(*(v101 - 1) + 56))(v100, 0, 1, v101);
    sub_222B554C0(&v133, v130);
  }

  if (v119 >= v94)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v99 = type metadata accessor for FeaturisedTurn(0);
  sub_222B421FC(*(v59 + ((*(*(v99 - 8) + 80) + 32) & ~*(*(v99 - 8) + 80)) + *(*(v99 - 8) + 72) * v119 + *(v99 + 24)), v98);
  sub_222B5551C(v98, v97);
  if ((*(v62 + 48))(v97, 1, v81) != 1)
  {
    (*(v62 + 32))(v96, v97, v81);
    sub_222B4FCD4(v98, &unk_27D026290, &qword_222C96B40);
    v95 = 0;
    goto LABEL_52;
  }

LABEL_59:
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v131);
  __break(1u);
  return result;
}

double sub_222BE8D20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  sub_222BE738C(a1, sub_222C0B5A0, 0, v5, v6, &v10);
  v7 = v11;
  if (v11)
  {
    v8 = v10;
    extractMediaReference(event:)(&v10, a3);

    sub_222B5EE44(v8, v7);
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_222BE8E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_222BED3E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_222BE8EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlayMediaFeature.PrimaryMediaItem.__allocating_init(value:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  *v8 = a1[2];
  *&v8[9] = *(a1 + 41);
  return sub_222C93EEC();
}

{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  *v8 = a1[2];
  *&v8[9] = *(a1 + 41);
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemMetadata.__allocating_init(value:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  v7 = *(a1 + 8);
  return sub_222C93EDC();
}

{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  return sub_222C93EEC();
}

uint64_t PlayMediaFeature.EventOrigin.__allocating_init(value:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  return sub_222C93EEC();
}

{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  return sub_222C93EDC();
}

uint64_t PlayMediaItemMetadata.init(ampConfidenceLevel:ampConfidenceScore:isLibraryContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

uint64_t MediaItem.init(id:mediaType:title:artist:isManualPlay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 56) = a8;
  return result;
}

uint64_t PlayMediaFeature.PrimaryMediaItem.init(value:)(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *v4 = a1[2];
  *&v4[9] = *(a1 + 41);
  return sub_222C93EEC();
}

{
  v2 = *a1;
  v3 = a1[1];
  *v4 = a1[2];
  *&v4[9] = *(a1 + 41);
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemMetadata.init(value:)(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  return sub_222C93EEC();
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemMetadata.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t PlayMediaFeature.PrimaryMediaItemType.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.EventOrigin.init(value:)(char *a1)
{
  v2 = *a1;
  return sub_222C93EEC();
}

{
  v2 = *a1;
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemSubItemIdentifiers.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222BE94F4(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BE955C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BE95F4(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BE965C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.NowPlayingEvent.__allocating_init(value:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = a1[3];
  v9 = a1[4];
  return sub_222C93EEC();
}

uint64_t PlayMediaFeature.NowPlayingEvent.init(value:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[3];
  v5 = a1[4];
  return sub_222C93EEC();
}

uint64_t PlayMediaFeature.NowPlayingEvent.__allocating_init(value:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.NowPlayingEvent.init(value:)(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  return sub_222C93EDC();
}

uint64_t MediaItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MediaItem.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MediaItem.artist.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PlayMediaItemMetadata.ampConfidenceScore.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

SiriPrivateLearningInference::PlayMediaEventOrigin_optional __swiftcall PlayMediaEventOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PlayMediaEventOrigin.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C506C61756E616DLL;
  }

  else
  {
    result = 0x6769725469726973;
  }

  *v0;
  return result;
}

uint64_t sub_222BE9954(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C506C61756E616DLL;
  }

  else
  {
    v4 = 0x6769725469726973;
  }

  if (v3)
  {
    v5 = 0xEB00000000726567;
  }

  else
  {
    v5 = 0xEA00000000007961;
  }

  if (*a2)
  {
    v6 = 0x6C506C61756E616DLL;
  }

  else
  {
    v6 = 0x6769725469726973;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007961;
  }

  else
  {
    v7 = 0xEB00000000726567;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222C951FC();
  }

  return v9 & 1;
}

uint64_t sub_222BE9A08()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BE9A98()
{
  *v0;
  sub_222C9452C();
}

uint64_t sub_222BE9B14()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BE9BA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222C94FDC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_222BE9C00(uint64_t *a1@<X8>)
{
  v2 = 0x6769725469726973;
  if (*v1)
  {
    v2 = 0x6C506C61756E616DLL;
  }

  v3 = 0xEB00000000726567;
  if (*v1)
  {
    v3 = 0xEA00000000007961;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s28SiriPrivateLearningInference21PlayMediaItemMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 17);
  v3 = *(a2 + 16);
  v4 = *(a2 + 17);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

LABEL_8:
    if (v2 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference9MediaItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v8)
    {
      return 0;
    }

LABEL_7:
    if ((v3 != v7 || v4 != v10) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if (!v11 || (v5 != v9 || v6 != v11) && (sub_222C951FC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return v15 ^ v14 ^ 1u;
  }

  v12 = sub_222C951FC();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v8)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_222BE9DEC()
{
  result = qword_27D026968;
  if (!qword_27D026968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026968);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_222BEA040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_222BEA088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlayMediaItemMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayMediaItemMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

uint64_t USOTaskSummaryFeature.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t USOTaskSummaryFeature.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t USOTaskSummaryFeature.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222BEA398(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = type metadata accessor for USOTaskSummaryFeature();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BEA3EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = type metadata accessor for USOTaskSummaryFeature();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BEA440()
{
  v0 = sub_222C93B2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A00, &qword_222C9ED58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  if (sub_222C93C3C())
  {
    v13 = sub_222C93B3C();
    if (*(v13 + 16))
    {
      (*(v6 + 16))(v10, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v12, v10, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_222C97C40;
      sub_222C936CC();
      v15 = sub_222C93B1C();
      v17 = v16;
      (*(v1 + 8))(v4, v0);
      v18 = type metadata accessor for USOTaskSummaryFeature();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v27[0] = v15;
      v27[1] = v17;
      v21 = sub_222C93EEC();
      *(v14 + 56) = v18;
      *(v14 + 64) = sub_222BEA938(&qword_27D026A08, 255, type metadata accessor for USOTaskSummaryFeature);
      *(v14 + 32) = v21;

      (*(v6 + 8))(v12, v5);
      return v14;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v23 = sub_222C9431C();
    __swift_project_value_buffer(v23, qword_280FE2340);
    v24 = sub_222C942FC();
    v25 = sub_222C94A4C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_222B39000, v24, v25, "Missing the top level task in the SELF graph", v26, 2u);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for USOTaskSummaryFeature()
{
  result = qword_280FDEC48;
  if (!qword_280FDEC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BEA938(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t PhoneCallUSOFeature.RecipientNames.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BEA9E4()
{
  v0 = sub_222C9377C();
  if (v1)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2;
  }

  if (v4)
  {
    return 0;
  }

  if (!sub_222C9375C())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C9ED60;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();

  v8 = 0;
  while (1)
  {
    v5 = v8 == 6;
    if (v8 == 6)
    {
LABEL_28:

      return v5;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DC9B30](v8, inited);
      goto LABEL_17;
    }

    if (v8 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v9 = *(inited + 8 * v8 + 32);

LABEL_17:
    ++v8;

    swift_getAtKeyPath();

    if (v14)
    {
      v10 = *v13 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
    }

    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10;
    }

    if (v12)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallUSOFeature.RecipientNames.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PhoneCallUSOFeature.RecipientNames.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222BEACC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PhoneCallUSOFeature.RecipientNames();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BEAD10(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PhoneCallUSOFeature.RecipientNames();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

unint64_t sub_222BEAD5C()
{
  v0 = sub_222C9387C();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    v46 = MEMORY[0x277D84F90];
    v3 = (v0 & 0xFFFFFFFFFFFFFF8);
    if (v0 >> 62)
    {
LABEL_52:
      v4 = sub_222C94C6C();
    }

    else
    {
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = 0;
      v40 = v4;
      v41 = v2 & 0xC000000000000001;
      v37 = v2;
      v39 = v3;
      while (2)
      {
        v7 = v6;
        v38 = v5;
        while (1)
        {
          if (v41)
          {
            MEMORY[0x223DC9B30](v7, v2);
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v7 >= v3[2])
            {
              goto LABEL_49;
            }

            v8 = *(v2 + 8 * v7 + 32);

            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }
          }

          sub_222C936DC();
          if (v44)
          {
            sub_222C936BC();
          }

          sub_222C9378C();
          sub_222C9381C();

          if (v45)
          {
            break;
          }

          sub_222C936DC();
          if (v44)
          {
            sub_222C9373C();
            if (v9)
            {
              v10 = sub_222C9394C();
              v11 = *(v10 + 48);
              v12 = *(v10 + 52);
              swift_allocObject();
              v13 = sub_222C9393C();
              sub_222C9392C();

              if (sub_222C9372C())
              {
                sub_222C939BC();
                v15 = v14;

                if (v15)
                {
                  v16 = sub_222C93ACC();
                  v17 = *(v16 + 48);
                  v18 = *(v16 + 52);
                  swift_allocObject();
                  sub_222C93ABC();
                  sub_222C93AAC();

                  sub_222C9391C();
                  v2 = v37;
                }
              }

              MEMORY[0x223DC8590](v13);
              sub_222C9381C();

              v5 = v38;
              v3 = v39;
              if (v43)
              {
                goto LABEL_27;
              }
            }

            else
            {

              v3 = v39;
            }
          }

          else
          {
          }

          ++v7;
          if (v6 == v40)
          {
            goto LABEL_30;
          }
        }

LABEL_27:
        MEMORY[0x223DC94A0](v19);
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v5 = v46;
        if (v6 != v40)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    v46 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      v21 = sub_222C94C6C();
      if (v21)
      {
LABEL_32:
        v2 = 0;
        v22 = v5 & 0xC000000000000001;
        v23 = v5 & 0xFFFFFFFFFFFFFF8;
        v3 = &unk_280FDF000;
        v42 = v21;
        do
        {
          if (v22)
          {
            MEMORY[0x223DC9B30](v2, v5);
            v26 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v2 >= *(v23 + 16))
            {
              goto LABEL_51;
            }

            v25 = *(v5 + 8 * v2 + 32);

            v26 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_50;
            }
          }

          if (sub_222BEA9E4())
          {
            if (v3[463] != -1)
            {
              swift_once();
            }

            v27 = sub_222C9431C();
            __swift_project_value_buffer(v27, qword_280FE2340);
            v28 = sub_222C942FC();
            v29 = sub_222C94A4C();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = v23;
              v31 = v22;
              v32 = v3;
              v33 = v5;
              v34 = swift_slowAlloc();
              *v34 = 0;
              _os_log_impl(&dword_222B39000, v28, v29, "Dropping Recipient: every name field is nil or empty", v34, 2u);
              v35 = v34;
              v5 = v33;
              v3 = v32;
              v22 = v31;
              v23 = v30;
              v21 = v42;
              MEMORY[0x223DCA8C0](v35, -1, -1);
            }
          }

          else
          {
            sub_222C94DEC();
            v24 = *(v46 + 16);
            sub_222C94E2C();
            sub_222C94E3C();
            sub_222C94DFC();
          }

          ++v2;
        }

        while (v26 != v21);
        v1 = v46;
        goto LABEL_55;
      }
    }

    else
    {
      v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_32;
      }
    }

    v1 = MEMORY[0x277D84F90];
LABEL_55:
  }

  return v1;
}

void *sub_222BEB270()
{
  v4 = sub_222C93C3C();
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v7 = MEMORY[0x223DC84A0]();
  v9 = v7;
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_35:

    return v5;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_35;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v0 = MEMORY[0x223DC9B30](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v0 = *(v9 + 32);
  }

  sub_222C937DC();

  sub_222BEB940(v53, &v49);
  if (!v50)
  {
    sub_222BEB9B0(&v49);
    goto LABEL_33;
  }

  sub_222C938FC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

    sub_222BEB9B0(v53);
    return v5;
  }

  v1 = v52;

  sub_222C9379C();

  v2 = v49;
  if (!v49)
  {

    goto LABEL_33;
  }

  v10 = sub_222BEAD5C();
  v8 = v10;
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      v12 = v10;
      goto LABEL_13;
    }

LABEL_42:
    sub_222BEB9B0(v53);

    return v5;
  }

LABEL_39:
  v12 = v8;
  if (!sub_222C94C6C())
  {
    goto LABEL_42;
  }

  v11 = sub_222C94C6C();
  if (!v11)
  {
    v44 = v2;
    v45 = v1;
    v46 = v0;
    v47 = v6;
    v16 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_13:
  v44 = v2;
  v45 = v1;
  v46 = v0;
  v47 = v6;
  v48 = v5;
  v13 = &v48;
  sub_222B4C418(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v15 = 0;
  v16 = v48;
  v17 = v12;
  v18 = v12 & 0xC000000000000001;
  v19 = v12;
  do
  {
    if (v18)
    {
      MEMORY[0x223DC9B30](v15, v17);
    }

    else
    {
      v20 = *(v17 + 8 * v15 + 32);
    }

    v21 = sub_222C9377C();
    v23 = v22;

    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    v48 = v16;
    v26 = v16[2];
    v25 = v16[3];
    if (v26 >= v25 >> 1)
    {
      sub_222B4C418((v25 > 1), v26 + 1, 1);
      v16 = v48;
    }

    ++v15;
    v16[2] = v26 + 1;
    v27 = &v16[2 * v26];
    v27[4] = v24;
    v27[5] = v23;
    v17 = v19;
  }

  while (v11 != v15);
  v12 = v19;
LABEL_28:
  v11 = type metadata accessor for PhoneCallUSOFeature.RecipientNames();
  v28 = *(v11 + 48);
  v29 = *(v11 + 52);
  swift_allocObject();
  v48 = v16;
  v30 = sub_222C93EEC();
  v50 = v11;
  v13 = sub_222BEBA18(&qword_27D026A28, 255, type metadata accessor for PhoneCallUSOFeature.RecipientNames);
  v51 = v13;
  *&v49 = v30;
  v5 = sub_222B4A108(0, 1, 1, MEMORY[0x277D84F90]);
  v52 = v5;
  v3 = v5[2];
  v14 = v5[3];
  if (v3 >= v14 >> 1)
  {
LABEL_44:
    v5 = sub_222B4A108((v14 > 1), v3 + 1, 1, v5);
    v52 = v5;
  }

  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v49, v11);
  v32 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  sub_222B4F8F0(v3, v34, &v52, v11, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(&v49);
  v36 = type metadata accessor for UsoPersonRecipients();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  *&v49 = v12;
  v39 = sub_222C93EEC();
  v41 = v5[2];
  v40 = v5[3];
  if (v41 >= v40 >> 1)
  {
    v5 = sub_222B4A108((v40 > 1), v41 + 1, 1, v5);
  }

  sub_222BEB9B0(v53);
  v50 = v36;
  v51 = sub_222BEBA18(&qword_27D026A30, 255, type metadata accessor for UsoPersonRecipients);
  *&v49 = v39;
  v5[2] = v41 + 1;
  sub_222B405A0(&v49, &v5[5 * v41 + 4]);
  return v5;
}

uint64_t type metadata accessor for PhoneCallUSOFeature.RecipientNames()
{
  result = qword_27D026A10;
  if (!qword_27D026A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BEB940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A20, qword_222CA5960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BEB9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A20, qword_222CA5960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BEBA18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_222BEBA74()
{
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v0 = sub_222C9431C();
  __swift_project_value_buffer(v0, qword_280FE2340);
  oslog = sub_222C942FC();
  v1 = sub_222C94A3C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_222B39000, oslog, v1, "Omitting SELF logging call as UsageLoggingDisabled flag present", v2, 2u);
    MEMORY[0x223DCA8C0](v2, -1, -1);
  }
}

BOOL sub_222BEBBBC(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = sub_222B41B48(*(a1 + *(v2 + 24)));
  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_222BEBC08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A38, &qword_222C9F020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  v1 = type metadata accessor for ReformulationSpecializationClassifier();
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = &unk_283607EF0;
  v3 = sub_222BAFDE0(&unk_283607F50);
  swift_arrayDestroy();
  v2[4] = v3;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for ReformulationSpecializationClassifier;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_222BEBCF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A40, &qword_222C9F098);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  isUniquelyReferenced_nonNull_native = &v47 - v2;
  v4 = sub_222C9382C();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v56 = MEMORY[0x277D84F90];
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!(v4 >> 62))
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_23:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v7 = sub_222C94C6C();
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_4:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DC9B30](v10, v5);
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(v5 + 8 * v10 + 32);

        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      sub_222C936DC();

      if (v55)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x223DC94A0](v12);
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_222C9475C();
    }

    sub_222C947AC();
    v9 = v56;
  }

  while (v8 != v7);
LABEL_24:

  if (v9 >> 62)
  {
LABEL_55:
    v15 = sub_222C94C6C();
    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

  v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_56:
    v14 = MEMORY[0x277D84F98];
LABEL_57:

    return v14;
  }

LABEL_26:
  v16 = 0;
  v51 = v9 & 0xFFFFFFFFFFFFFF8;
  v52 = v9 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F98];
  v49 = v9;
  v50 = isUniquelyReferenced_nonNull_native;
  v48 = v15;
  while (1)
  {
    if (v52)
    {
      v19 = MEMORY[0x223DC9B30](v16, v9);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v16 >= *(v51 + 16))
      {
        goto LABEL_52;
      }

      v19 = *(v9 + 8 * v16 + 32);

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    v21 = sub_222C9383C();
    v53 = v20;
    if (!v21)
    {
      goto LABEL_35;
    }

    sub_222C9395C();

    v22 = sub_222C9397C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(isUniquelyReferenced_nonNull_native, 1, v22) == 1)
    {
      sub_222BEC320(isUniquelyReferenced_nonNull_native);
LABEL_35:
      v24 = 0;
      v25 = 0xE000000000000000;
      goto LABEL_37;
    }

    v24 = sub_222C9396C();
    v27 = v26;
    v28 = v22;
    v25 = v27;
    (*(v23 + 8))(isUniquelyReferenced_nonNull_native, v28);
LABEL_37:
    v54 = v19;
    v29 = sub_222C9385C();
    v9 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v14;
    v31 = v24;
    v32 = v25;
    v34 = sub_222B8C9DC(v24, v25);
    v35 = v14[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_53;
    }

    v38 = v33;
    if (v14[3] < v37)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v33)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_222B93A70();
      if (v38)
      {
LABEL_27:

        v14 = v56;
        v17 = (*(v56 + 56) + 16 * v34);
        v18 = v17[1];
        *v17 = v29;
        v17[1] = v9;

        goto LABEL_28;
      }
    }

LABEL_44:
    v14 = v56;
    *(v56 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v41 = (v14[6] + 16 * v34);
    *v41 = v31;
    v41[1] = v32;
    v42 = (v14[7] + 16 * v34);
    *v42 = v29;
    v42[1] = v9;

    v43 = v14[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_54;
    }

    v14[2] = v45;
LABEL_28:
    ++v16;
    v9 = v49;
    isUniquelyReferenced_nonNull_native = v50;
    if (v53 == v48)
    {
      goto LABEL_57;
    }
  }

  sub_222B8FB14(v37, isUniquelyReferenced_nonNull_native);
  v39 = sub_222B8C9DC(v31, v32);
  if ((v38 & 1) == (v40 & 1))
  {
    v34 = v39;
    if (v38)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222BEC198(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  if (sub_222B41B48(*(a1 + *(v2 + 24))))
  {
    v3 = sub_222BEBCF0();

    return v3;
  }

  else
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v7 = &type metadata for PIMSConstraintMismatch;
    v8 = sub_222B77B4C();
    v5[0] = 0xD000000000000016;
    v5[1] = 0x8000000222CA9C80;
    v6 = 17;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    return 0;
  }
}

uint64_t sub_222BEC320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A40, &qword_222C9F098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *extractContactReference(event:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41660(*(a1 + 16));
  if (!result)
  {
    goto LABEL_6;
  }

  if (!result[2])
  {

LABEL_6:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v4 = result[5];
  v5 = result[6];
  v6 = result[7];
  v7 = result[8];
  v8 = result[9];

  if (v6)
  {

    v9 = v8;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
}

SiriPrivateLearningInference::ContactReference __swiftcall ContactReference.init(contactId:contactLabel:)(Swift::String contactId, Swift::String_optional contactLabel)
{
  v2->value = contactId;
  v2[1] = contactLabel;
  result.contactLabel = contactLabel;
  result.contactId = contactId;
  return result;
}

SiriPrivateLearningInference::ContactReference __swiftcall ContactReference.withNoLabel()()
{
  v2 = v1[1];
  *v0 = *v1;
  v0[1] = v2;
  v0[2] = 0;
  v0[3] = 0;

  result.contactLabel.value._object = v6;
  result.contactLabel.value._countAndFlagsBits = v5;
  result.contactId._object = v4;
  result.contactId._countAndFlagsBits = v3;
  return result;
}

uint64_t ContactReference.contactId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContactReference.contactLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t ContactReference.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    sub_222C94D1C();

    MEMORY[0x223DC9330](v1, v2);
    MEMORY[0x223DC9330](0x3A6C6562614C202CLL, 0xE900000000000020);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    sub_222C94D1C();

    v5 = v1;
    v6 = v2;
  }

  MEMORY[0x223DC9330](v5, v6);
  MEMORY[0x223DC9330](62, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t static ContactReference.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222C951FC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_222C951FC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_222BEC698()
{
  if (*v0)
  {
    result = 0x4C746361746E6F63;
  }

  else
  {
    result = 0x49746361746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_222BEC6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222BEC7C8(uint64_t a1)
{
  v2 = sub_222BEC9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BEC804(uint64_t a1)
{
  v2 = sub_222BEC9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactReference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A48, &qword_222C9F0A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEC9D4();
  sub_222C9536C();
  v16 = 0;
  v12 = v14[3];
  sub_222C950EC();
  if (!v12)
  {
    v15 = 1;
    sub_222C950CC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_222BEC9D4()
{
  result = qword_27D026A50;
  if (!qword_27D026A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A50);
  }

  return result;
}

uint64_t ContactReference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A58, &qword_222C9F0A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEC9D4();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v21 = 0;
  v11 = sub_222C9503C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_222C9501C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_222BECC58(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222C951FC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_222C951FC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_222BECD20()
{
  result = qword_27D026A60;
  if (!qword_27D026A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A60);
  }

  return result;
}

unint64_t sub_222BECD78()
{
  result = qword_27D026A68;
  if (!qword_27D026A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A68);
  }

  return result;
}

unint64_t sub_222BECDD0()
{
  result = qword_27D026A70;
  if (!qword_27D026A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A70);
  }

  return result;
}

uint64_t Classification.classificationType.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_222C944EC();
}

uint64_t sub_222BECF60(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  sub_222BED1A0(v3, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_222C944EC();
}

uint64_t sub_222BECFDC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return sub_222C944EC();
}

uint64_t sub_222BED088()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return sub_222C944EC();
}

uint64_t sub_222BED138()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);

  return sub_222C944EC();
}

uint64_t sub_222BED1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BED214()
{
  sub_222C94D1C();
  MEMORY[0x223DC9330](0x20797469746E65, 0xE700000000000000);
  v2 = *v0;
  v1 = v0[1];
  if (v1)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v0[1];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v3, v4);

  MEMORY[0x223DC9330](0x203A676E6F7320, 0xE700000000000000);
  v6 = v0[2];
  v5 = v0[3];
  if (v5)
  {
    v7 = v0[2];
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v0[3];
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v7, v8);

  MEMORY[0x223DC9330](0x3A74736974726120, 0xE900000000000020);
  v10 = v0[4];
  v9 = v0[5];
  if (v9)
  {
    v11 = v0[4];
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = v0[5];
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v11, v12);

  MEMORY[0x223DC9330](0x614E6D75626C6120, 0xEC000000203A656DLL);
  v14 = v0[6];
  v13 = v0[7];
  if (v13)
  {
    v15 = v0[6];
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = v0[7];
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v15, v16);

  MEMORY[0x223DC9330](0x6E6F697372657620, 0xEA0000000000203ALL);
  v18 = v0[8];
  v17 = v0[9];
  if (v17)
  {
    v19 = v0[8];
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = v0[9];
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v19, v20);

  return 0;
}

uint64_t sub_222BED3E4(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v4 + 24);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_222B78534(v11, v7);
      v13 = sub_222B41B48(*&v7[v10]);
      v14 = sub_222B73DD0(v7);
      if (v13)
      {
        MEMORY[0x223DC94A0](v14);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v8 = v29;
      }

      v11 += v12;
      --v9;
    }

    while (v9);
  }

  v17 = sub_222B71ED4(v16);

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_222C94C6C();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  if (v18 != 1)
  {
    goto LABEL_19;
  }

  if (v8 >> 62)
  {
    result = sub_222C94C6C();
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);

    v22 = sub_222C942FC();
    v23 = sub_222C94A4C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;

      v26 = sub_222B71ED4(v25);

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = sub_222C94C6C();
      }

      else
      {
        v27 = *(v26 + 16);
      }

      *(v24 + 4) = v27;

      _os_log_impl(&dword_222B39000, v22, v23, "Expected 1 USO media item, found %ld", v24, 0xCu);
      MEMORY[0x223DCA8C0](v24, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x223DC9B30](0, v8);
    goto LABEL_17;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v8 + 32);

LABEL_17:

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t MediaReference.mediaId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MediaReference.storefront.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222B4FDCC(v2, v3);
}

double MediaReference.init(mediaId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_222C9A0B0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 770;
  return result;
}

__n128 MediaReference.init(mediaId:storefront:sourceApp:entityLocality:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  result = *a3;
  v9 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v9;
  *(a6 + 48) = v6;
  *(a6 + 49) = v7;
  return result;
}

double MediaReference.init(mediaId:entityLocality:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  result = 0.0;
  *(a4 + 16) = xmmword_222C9A0B0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 2;
  *(a4 + 49) = v4;
  return result;
}

uint64_t sub_222BED7F8()
{
  v1 = 0x6449616964656DLL;
  v2 = 0x7041656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6F4C797469746E65;
  }

  if (*v0)
  {
    v1 = 0x6F726665726F7473;
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

uint64_t sub_222BED888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BEFF48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BED8B0(uint64_t a1)
{
  v2 = sub_222BEF858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BED8EC(uint64_t a1)
{
  v2 = sub_222BEF858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaReference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A78, &qword_222C9F320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v27 = *(v1 + 48);
  HIDWORD(v17) = *(v1 + 49);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF858();
  sub_222C9536C();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_222C950EC();
  if (!v13)
  {
    v14 = v27;
    v15 = BYTE4(v17);
    v23 = v21;
    v24 = v20;
    v25 = v19;
    v26 = v18;
    v28 = 1;
    sub_222B4FDCC(v21, v20);
    sub_222BEF8AC();
    sub_222C950DC();
    sub_222B4FE78(v23, v24);
    LOBYTE(v23) = v14;
    v28 = 2;
    sub_222BEF900();
    sub_222C950DC();
    LOBYTE(v23) = v15;
    v28 = 3;
    sub_222B7FB40();
    sub_222C950DC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MediaReference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A98, &qword_222C9F328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF858();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v30) = 0;
  v11 = sub_222C9503C();
  v25 = v12;
  LOBYTE(v26) = 1;
  sub_222BEF954();
  sub_222C9502C();
  v23 = v32;
  v24 = v31;
  v21 = v30;
  v22 = v33;
  LOBYTE(v26) = 2;
  sub_222BEF9A8();
  sub_222C9502C();
  v38 = v30;
  v39 = 3;
  sub_222B7FBE8();
  sub_222C9502C();
  (*(v6 + 8))(v9, v5);
  HIDWORD(v20) = v40;
  v14 = v24;
  v13 = v25;
  *&v26 = v11;
  *(&v26 + 1) = v25;
  v15 = v21;
  v16 = v22;
  *&v27 = v21;
  *(&v27 + 1) = v24;
  v17 = v23;
  *&v28 = v23;
  *(&v28 + 1) = v22;
  LOBYTE(v29) = v38;
  HIBYTE(v29) = v40;
  v18 = v27;
  *a2 = v26;
  *(a2 + 16) = v18;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  sub_222B554C0(&v26, &v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30 = v11;
  v31 = v13;
  v32 = v15;
  v33 = v14;
  v34 = v17;
  v35 = v16;
  v36 = v38;
  v37 = BYTE4(v20);
  return sub_222B55A80(&v30);
}

uint64_t Storefront.countryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Storefront.storefrontId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_222BEDF30()
{
  if (*v0)
  {
    result = 0x6F726665726F7473;
  }

  else
  {
    result = 0x437972746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_222BEDF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000006449746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222BEE060(uint64_t a1)
{
  v2 = sub_222BEF9FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BEE09C(uint64_t a1)
{
  v2 = sub_222BEF9FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Storefront.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026AB0, &qword_222C9F330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF9FC();
  sub_222C9536C();
  v16 = 0;
  v12 = v14[3];
  sub_222C950CC();
  if (!v12)
  {
    v15 = 1;
    sub_222C950CC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Storefront.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026AC0, &unk_222C9F338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF9FC();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v21 = 0;
  v11 = sub_222C9501C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_222C9501C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void extractMediaReference(event:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_222B4183C(v3, v14);
  v4 = *(&v14[0] + 1);
  if (*(&v14[0] + 1))
  {
    v5 = *&v14[0];

    sub_222B4FCD4(v14, &qword_27D025370, &qword_222C98310);
    sub_222B419B8(v3, v12);
    if ((v13 & 0xFF00) == 0x300)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v6 = sub_222C9431C();
      __swift_project_value_buffer(v6, qword_280FE2340);
      v7 = sub_222C942FC();
      v8 = sub_222C94A4C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_222B39000, v7, v8, "Missing event feature - PrimaryMediaItemMetadata - detected while extracting the media reference", v9, 2u);
        MEMORY[0x223DCA8C0](v9, -1, -1);
      }

      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = xmmword_222C9A0B0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v10 = 770;
    }

    else
    {
      v11 = HIBYTE(v13) != 2 && (v13 & 0x100) != 0;
      v10 = (v11 << 8) | 2;
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = xmmword_222C9A0B0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }

    *(a2 + 48) = v10;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

Swift::String_optional __swiftcall UsoEntity_common_MediaItem.convertUSOMediaItemToString()()
{
  v0 = sub_222C944DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222C931FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_222C9323C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  sub_222C9386C();
  sub_222BEFA84(&qword_27D025150);
  v7 = sub_222C9321C();
  v9 = v8;
  sub_222C944CC();
  v10 = sub_222C944BC();
  v12 = v11;
  sub_222B803C0(v7, v9);

  v13 = v12;
  v14 = v10;
  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t UsoEntity_common_MediaItem.hash(into:)()
{
  sub_222C0A220(v0, v2);
  if (*(&v2[0] + 1) == 1)
  {
    return sub_222C9531C();
  }

  v2[7] = v2[2];
  v2[8] = v2[3];
  v2[9] = v2[4];
  v2[5] = v2[0];
  v2[6] = v2[1];
  sub_222C9531C();
  sub_222BEEE64();
  return sub_222B4FCD4(v2, &qword_27D0256C8, &unk_222C98AB0);
}

uint64_t UsoEntity_common_MediaItem.hashValue.getter()
{
  sub_222C952FC();
  sub_222C0A220(v0, v2);
  if (*(&v2[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v2[7] = v2[2];
    v2[8] = v2[3];
    v2[9] = v2[4];
    v2[5] = v2[0];
    v2[6] = v2[1];
    sub_222C9531C();
    sub_222BEEE64();
    sub_222B4FCD4(v2, &qword_27D0256C8, &unk_222C98AB0);
  }

  return sub_222C9534C();
}

uint64_t sub_222BEEA80()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C0A220(v1, v3);
  if (*(&v3[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v3[7] = v3[2];
    v3[8] = v3[3];
    v3[9] = v3[4];
    v3[5] = v3[0];
    v3[6] = v3[1];
    sub_222C9531C();
    sub_222BEEE64();
    sub_222B4FCD4(v3, &qword_27D0256C8, &unk_222C98AB0);
  }

  return sub_222C9534C();
}

uint64_t sub_222BEEB38()
{
  sub_222C0A220(*v0, v2);
  if (*(&v2[0] + 1) == 1)
  {
    return sub_222C9531C();
  }

  v2[7] = v2[2];
  v2[8] = v2[3];
  v2[9] = v2[4];
  v2[5] = v2[0];
  v2[6] = v2[1];
  sub_222C9531C();
  sub_222BEEE64();
  return sub_222B4FCD4(v2, &qword_27D0256C8, &unk_222C98AB0);
}

uint64_t sub_222BEEBD0()
{
  sub_222C952FC();
  sub_222C0A220(*v0, v2);
  if (*(&v2[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v2[7] = v2[2];
    v2[8] = v2[3];
    v2[9] = v2[4];
    v2[5] = v2[0];
    v2[6] = v2[1];
    sub_222C9531C();
    sub_222BEEE64();
    sub_222B4FCD4(v2, &qword_27D0256C8, &unk_222C98AB0);
  }

  return sub_222C9534C();
}

uint64_t sub_222BEEC84(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B18, &unk_222C9F8E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BF0660();
  sub_222C9536C();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_222C950CC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v22[14] = 1;
  sub_222C950CC();
  v15 = v3[4];
  v16 = v3[5];
  v22[13] = 2;
  sub_222C950CC();
  v17 = v3[6];
  v18 = v3[7];
  v22[12] = 3;
  sub_222C950CC();
  v20 = v3[8];
  v21 = v3[9];
  v22[11] = 4;
  sub_222C950CC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_222BEEE64()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_222C9531C();
    sub_222C9452C();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_222C9531C();
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      sub_222C9531C();
      sub_222C9452C();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_222C9531C();
  if (v0[5])
  {
LABEL_4:
    v3 = v0[4];
    sub_222C9531C();
    sub_222C9452C();
    if (v0[7])
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_222C9531C();
    if (v0[9])
    {
      goto LABEL_6;
    }

    return sub_222C9531C();
  }

LABEL_11:
  sub_222C9531C();
  if (!v0[7])
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = v0[6];
  sub_222C9531C();
  sub_222C9452C();
  if (!v0[9])
  {
    return sub_222C9531C();
  }

LABEL_6:
  v5 = v0[8];
  sub_222C9531C();

  return sub_222C9452C();
}

uint64_t sub_222BEEFA8()
{
  v1 = *v0;
  v2 = 0x797469746E65;
  v3 = 0x614E747369747261;
  v4 = 0x6D614E6D75626C61;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C746954676E6F73;
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

uint64_t sub_222BEF04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BF00C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BEF074(uint64_t a1)
{
  v2 = sub_222BF0660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BEF0B0(uint64_t a1)
{
  v2 = sub_222BF0660();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_222BEF0EC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_222BF0288(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_222BEF150(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_222BEF230(v8, v9) & 1;
}

uint64_t sub_222BEF1B0()
{
  sub_222C952FC();
  sub_222BEEE64();
  return sub_222C9534C();
}

uint64_t sub_222BEF1F4()
{
  sub_222C952FC();
  sub_222BEEE64();
  return sub_222C9534C();
}

uint64_t sub_222BEF230(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_222C951FC();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_222C951FC();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_222C951FC();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_222C951FC();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (v32 && (a1[8] == a2[8] && v31 == v32 || (sub_222C951FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_222C0A220(a1, &v19);
  sub_222C0A220(a2, &v24);
  v3 = v19;
  if (*(&v19 + 1) == 1)
  {
    if (*(&v24 + 1) == 1)
    {
      v4 = 1;
      *&v9 = v19;
      *(&v9 + 1) = 1;
      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v5 = &v9;
LABEL_7:
      sub_222B4FCD4(v5, &qword_27D0256C8, &unk_222C98AB0);
      return v4 & 1;
    }
  }

  else if (*(&v24 + 1) != 1)
  {
    v7[0] = v24;
    v7[1] = v25;
    v7[2] = v26;
    v7[3] = v27;
    v7[4] = v28;
    v12 = v27;
    v13 = v28;
    v10 = v25;
    v11 = v26;
    v9 = v24;
    v29[3] = v22;
    v29[4] = v23;
    v29[1] = v20;
    v29[2] = v21;
    v29[0] = v19;
    v4 = sub_222BEF230(v29, &v9);
    sub_222B4FCD4(v7, &qword_27D0256C8, &unk_222C98AB0);
    v8[0] = v3;
    v8[1] = v20;
    v8[2] = v21;
    v8[3] = v22;
    v8[4] = v23;
    v5 = v8;
    goto LABEL_7;
  }

  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  sub_222B4FCD4(&v9, &qword_27D0256D0, &unk_222C9A490);
  v4 = 0;
  return v4 & 1;
}

BOOL _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 1)
  {
    sub_222B4FDCC(v2, 1);
    if (v8 == 1)
    {
      sub_222B4FDCC(v7, 1);
      sub_222B4FE78(v2, 1);
      goto LABEL_14;
    }

    sub_222B4FDCC(v7, v8);
    goto LABEL_10;
  }

  v20[0] = v2;
  v20[1] = v4;
  v20[2] = v3;
  v20[3] = v5;
  if (v8 == 1)
  {
    sub_222B4FDCC(v2, v4);
    sub_222B4FDCC(v7, 1);
    sub_222B4FDCC(v2, v4);

LABEL_10:
    sub_222B4FE78(v2, v4);
    sub_222B4FE78(v7, v8);
    return 0;
  }

  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v10;
  v19[3] = v9;
  v18 = _s28SiriPrivateLearningInference19SlotsClassificationV17TurnSlotValuePairV2eeoiySbAE_AEtFZ_0(v20, v19);
  sub_222B4FDCC(v2, v4);
  sub_222B4FDCC(v7, v8);
  sub_222B4FDCC(v2, v4);

  sub_222B4FE78(v2, v4);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  result = v11 == 2 && v6 == 2;
  if (v6 != 2 && v11 != 2)
  {
    if (v6)
    {
      v13 = 0x656E696665646E75;
    }

    else
    {
      v13 = 0x6C7070612E6D6F63;
    }

    if (v6)
    {
      v14 = 0xE900000000000064;
    }

    else
    {
      v14 = 0xEF636973754D2E65;
    }

    if (v11)
    {
      v15 = 0x656E696665646E75;
    }

    else
    {
      v15 = 0x6C7070612E6D6F63;
    }

    if (v11)
    {
      v16 = 0xE900000000000064;
    }

    else
    {
      v16 = 0xEF636973754D2E65;
    }

    if (v13 == v15 && v14 == v16)
    {

      return 1;
    }

    else
    {
      v17 = sub_222C951FC();

      return v17 & 1;
    }
  }

  return result;
}

unint64_t sub_222BEF858()
{
  result = qword_27D026A80;
  if (!qword_27D026A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A80);
  }

  return result;
}

unint64_t sub_222BEF8AC()
{
  result = qword_27D026A88;
  if (!qword_27D026A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A88);
  }

  return result;
}

unint64_t sub_222BEF900()
{
  result = qword_27D026A90;
  if (!qword_27D026A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A90);
  }

  return result;
}

unint64_t sub_222BEF954()
{
  result = qword_27D026AA0;
  if (!qword_27D026AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AA0);
  }

  return result;
}

unint64_t sub_222BEF9A8()
{
  result = qword_27D026AA8;
  if (!qword_27D026AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AA8);
  }

  return result;
}

unint64_t sub_222BEF9FC()
{
  result = qword_27D026AB8;
  if (!qword_27D026AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AB8);
  }

  return result;
}

uint64_t sub_222BEFA84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_222C9386C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference10StorefrontVSg(uint64_t a1)
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

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_222BEFB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_222BEFB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_222BEFC0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_222BEFC68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_222BEFCE4()
{
  result = qword_27D026AD0;
  if (!qword_27D026AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AD0);
  }

  return result;
}

unint64_t sub_222BEFD3C()
{
  result = qword_27D026AD8;
  if (!qword_27D026AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AD8);
  }

  return result;
}

unint64_t sub_222BEFD94()
{
  result = qword_27D026AE0;
  if (!qword_27D026AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AE0);
  }

  return result;
}

unint64_t sub_222BEFDEC()
{
  result = qword_27D026AE8;
  if (!qword_27D026AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AE8);
  }

  return result;
}

unint64_t sub_222BEFE44()
{
  result = qword_27D026AF0;
  if (!qword_27D026AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AF0);
  }

  return result;
}

unint64_t sub_222BEFE9C()
{
  result = qword_27D026AF8;
  if (!qword_27D026AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AF8);
  }

  return result;
}

unint64_t sub_222BEFEF4()
{
  result = qword_27D026B00;
  if (!qword_27D026B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B00);
  }

  return result;
}

uint64_t sub_222BEFF48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEA0000000000746ELL || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7041656372756F73 && a2 == 0xE900000000000070 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4C797469746E65 && a2 == 0xEE007974696C6163)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BF00C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C746954676E6F73 && a2 == 0xE900000000000065 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_222BF0288@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B08, &qword_222C9F8E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BF0660();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_222C9501C();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_222C9501C();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = sub_222C9501C();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = sub_222C9501C();
  v29 = v16;
  v39 = 4;
  v17 = sub_222C9501C();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v31;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  *&v37 = v17;
  *(&v37 + 1) = v19;
  sub_222BF06B4(&v33, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v38[0] = v11;
  v38[1] = v32;
  v38[2] = v28;
  v38[3] = v20;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v38[8] = v17;
  v38[9] = v19;
  result = sub_222BF06EC(v38);
  v24 = v36;
  a2[2] = v35;
  a2[3] = v24;
  a2[4] = v37;
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  return result;
}

unint64_t sub_222BF0660()
{
  result = qword_27D026B10;
  if (!qword_27D026B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B10);
  }

  return result;
}

unint64_t sub_222BF0730()
{
  result = qword_27D026B20;
  if (!qword_27D026B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B20);
  }

  return result;
}

unint64_t sub_222BF0788()
{
  result = qword_27D026B28;
  if (!qword_27D026B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B28);
  }

  return result;
}

unint64_t sub_222BF07E0()
{
  result = qword_27D026B30;
  if (!qword_27D026B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B30);
  }

  return result;
}

uint64_t INStartCallIntentFeatureExtractor.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_222BF0994();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222C97C40;
  *(v4 + 32) = sub_222B505A8(0, &qword_280FDB770, 0x277CD41A8);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t INStartCallIntentFeatureExtractor.init()()
{
  v1 = sub_222BF0994();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222C97C40;
  *(v4 + 32) = sub_222B505A8(0, &qword_280FDB770, 0x277CD41A8);
  *(v0 + 16) = v4;
  return v0;
}

uint64_t INStartCallIntentFeatureExtractor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t INStartCallIntentFeatureExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222BF0994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B38, &qword_222C9FAE8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D026B40;
    v3 = &unk_222C9FAF0;
  }

  else
  {
    v2 = &unk_27D025FB0;
    v3 = &unk_222C96EB0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_222BF0A0C(void *a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 donationMetadata];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_222C9FA00;
      v84 = v2;
      [v10 callDuration];
      v13 = v12 > 0.0;
      v14 = type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      LOBYTE(v85) = v13;
      v17 = sub_222C93EEC();
      *(v11 + 56) = v14;
      *(v11 + 64) = sub_222BF1870(&qword_27D026B58, 255, type metadata accessor for PhoneCallEventFeature.CallAnswered);
      *(v11 + 32) = v17;
      [v10 callDuration];
      v19 = v18;
      v20 = type metadata accessor for PhoneCallEventFeature.CallDuration(0);
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v85 = v19;
      v23 = sub_222C93EEC();
      *(v11 + 96) = v20;
      *(v11 + 104) = sub_222BF1870(&qword_27D026B60, 255, type metadata accessor for PhoneCallEventFeature.CallDuration);
      *(v11 + 72) = v23;
      [v10 timeToEstablish];
      v25 = v24;
      v26 = type metadata accessor for PhoneCallEventFeature.CallConnectionDuration(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v85 = v25;
      v29 = sub_222C93EEC();
      *(v11 + 136) = v26;
      *(v11 + 144) = sub_222BF1870(&qword_27D026B78, 255, type metadata accessor for PhoneCallEventFeature.CallConnectionDuration);
      *(v11 + 112) = v29;
      sub_222C932AC();
      v31 = v30;
      v32 = type metadata accessor for PhoneCallEventFeature.CallTotalDuration(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v85 = v31;
      v35 = sub_222C93EEC();
      *(v11 + 176) = v32;
      *(v11 + 184) = sub_222BF1870(&qword_27D026B80, 255, type metadata accessor for PhoneCallEventFeature.CallTotalDuration);
      *(v11 + 152) = v35;
      sub_222C9329C();
      sub_222C935BC();
      v37 = v36;
      v38 = *(v3 + 8);
      v39 = v84;
      v38(v6, v84);
      [v10 timeToEstablish];
      v41 = v37 + v40;
      v42 = type metadata accessor for PhoneCallEventFeature.CallStartTimestamp(0);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v85 = v41;
      v45 = sub_222C93EEC();
      *(v11 + 216) = v42;
      *(v11 + 224) = sub_222BF1870(&qword_27D026B68, 255, type metadata accessor for PhoneCallEventFeature.CallStartTimestamp);
      *(v11 + 192) = v45;
      sub_222C9327C();
      sub_222C935BC();
      v47 = v46;
      v38(v6, v39);
      v48 = type metadata accessor for PhoneCallEventFeature.CallEndTimestamp(0);
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      v85 = v47;
      v51 = sub_222C93EEC();
      *(v11 + 256) = v48;
      *(v11 + 264) = sub_222BF1870(&qword_27D026B70, 255, type metadata accessor for PhoneCallEventFeature.CallEndTimestamp);
      *(v11 + 232) = v51;

      return v11;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v53 = sub_222C9431C();
  __swift_project_value_buffer(v53, qword_280FE2340);
  v54 = sub_222C942FC();
  v55 = sub_222C94A4C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_222B39000, v54, v55, "#extractCallDurationData: Metadata missing from start call intent. Using legacy duration calculations.", v56, 2u);
    MEMORY[0x223DCA8C0](v56, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_222C98AE0;
  sub_222C932AC();
  v59 = v58 > 0.0;
  v60 = type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  LOBYTE(v85) = v59;
  v63 = sub_222C93EEC();
  *(v57 + 56) = v60;
  *(v57 + 64) = sub_222BF1870(&qword_27D026B58, 255, type metadata accessor for PhoneCallEventFeature.CallAnswered);
  *(v57 + 32) = v63;
  sub_222C932AC();
  v65 = v64;
  v66 = type metadata accessor for PhoneCallEventFeature.CallDuration(0);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v85 = v65;
  v69 = sub_222C93EEC();
  *(v57 + 96) = v66;
  *(v57 + 104) = sub_222BF1870(&qword_27D026B60, 255, type metadata accessor for PhoneCallEventFeature.CallDuration);
  *(v57 + 72) = v69;
  sub_222C9329C();
  sub_222C935BC();
  v71 = v70;
  v72 = *(v3 + 8);
  v72(v6, v2);
  v73 = type metadata accessor for PhoneCallEventFeature.CallStartTimestamp(0);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  v85 = v71;
  v76 = sub_222C93EEC();
  *(v57 + 136) = v73;
  *(v57 + 144) = sub_222BF1870(&qword_27D026B68, 255, type metadata accessor for PhoneCallEventFeature.CallStartTimestamp);
  *(v57 + 112) = v76;
  sub_222C9327C();
  sub_222C935BC();
  v78 = v77;
  v72(v6, v2);
  v79 = type metadata accessor for PhoneCallEventFeature.CallEndTimestamp(0);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  v85 = v78;
  v82 = sub_222C93EEC();
  *(v57 + 176) = v79;
  v83 = sub_222BF1870(&qword_27D026B70, 255, type metadata accessor for PhoneCallEventFeature.CallEndTimestamp);
  result = v57;
  *(v57 + 184) = v83;
  *(v57 + 152) = v82;
  return result;
}

unint64_t sub_222BF1164()
{
  v1 = sub_222C932BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222C93CAC();
  v7 = [v6 intent];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [v8 contacts];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  sub_222B505A8(0, &qword_27D025E80, 0x277CD3E90);
  v12 = sub_222C9471C();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_29:

    goto LABEL_17;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_29;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223DC9B30](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v6 dateInterval];
  if (!v15)
  {

LABEL_16:
LABEL_17:

    return MEMORY[0x277D84F90];
  }

  v55 = v14;
  v16 = v15;
  sub_222C9326C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C9CD00;
  v17 = type metadata accessor for CommonFeature.EventType(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v56 = 0xD000000000000011;
  *(&v56 + 1) = 0x8000000222CA8780;
  v12 = sub_222C93EEC();
  *(v0 + 56) = v17;
  *(v0 + 64) = sub_222BF1870(&qword_27D026370, 255, type metadata accessor for CommonFeature.EventType);
  *(v0 + 32) = v12;
  v20 = [v9 audioRoute];
  if (v20 < 0xFFFFFFFF80000000)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = v20;
  if (v20 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = type metadata accessor for PhoneCallEventFeature.AudioCallRoute(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  LODWORD(v56) = v12;
  v12 = sub_222C93EEC();
  *(v0 + 96) = v21;
  *(v0 + 104) = sub_222BF1870(&qword_27D026B48, 255, type metadata accessor for PhoneCallEventFeature.AudioCallRoute);
  *(v0 + 72) = v12;
  v24 = [v9 callCapability];
  if (v24 < 0xFFFFFFFF80000000)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = v24;
  if (v24 > 0x7FFFFFFF)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v12 = sub_222B4A108(0, *(v12 + 16) + 1, 1, v12);
    goto LABEL_25;
  }

  v25 = type metadata accessor for PhoneCallEventFeature.CallCapability(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  LODWORD(v56) = v12;
  v28 = sub_222C93EEC();
  *(v0 + 136) = v25;
  *(v0 + 144) = sub_222BF1870(&qword_27D026B50, 255, type metadata accessor for PhoneCallEventFeature.CallCapability);
  *(v0 + 112) = v28;
  v59 = v0;
  v29 = sub_222BF0A0C(v9);
  sub_222B49058(v29);
  v30 = v55;
  v31 = [v55 displayName];
  v54 = sub_222C9449C();
  v33 = v32;

  v34 = [v30 contactIdentifier];
  if (v34)
  {
    v35 = v34;
    v36 = sub_222C9449C();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v40 = [v30 personHandle];
  v53 = v2;
  if (v40 && (v41 = v40, v42 = [v40 label], v41, v42))
  {
    v43 = sub_222C9449C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F38, &qword_222C96CE8);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_222C97C40;
  *(v46 + 32) = v54;
  *(v46 + 40) = v33;
  *(v46 + 48) = v36;
  *(v46 + 56) = v38;
  *(v46 + 64) = v43;
  *(v46 + 72) = v45;
  v9 = type metadata accessor for CommonContactFeature.RecipientContactReferences();
  v47 = *(v9 + 48);
  v48 = *(v9 + 52);
  swift_allocObject();
  *&v56 = v46;
  v0 = sub_222C93EEC();
  v12 = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  v49 = v53;
  v51 = *(v12 + 16);
  v50 = *(v12 + 24);
  if (v51 >= v50 >> 1)
  {
    v12 = sub_222B4A108((v50 > 1), v51 + 1, 1, v12);
  }

  (*(v49 + 8))(v5, v1);
  v57 = v9;
  v58 = sub_222BF1870(&qword_27D025E88, 255, type metadata accessor for CommonContactFeature.RecipientContactReferences);
  *&v56 = v0;
  *(v12 + 16) = v51 + 1;
  sub_222B405A0(&v56, v12 + 40 * v51 + 32);
  return v12;
}

uint64_t sub_222BF1870(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_222BF1924(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ThinMediaGroundTruth();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_222C931FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v10 = sub_222C9361C();
  [v9 setId_];

  v11 = (v2 + *(v5 + 28));
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_222C9448C();
  [v9 setGroundTruthType_];

  v15 = sub_222C9323C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  LOBYTE(v23) = *(v2 + *(v5 + 32));
  sub_222B7FAEC();
  v18 = sub_222C9321C();
  v20 = v19;
  v21 = sub_222C934FC();
  [v9 setGroundTruthSource_];

  sub_222B803C0(v18, v20);

  return v9;
}

uint64_t sub_222BF1CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v65 - v14;
  v16 = [v1 id];
  if (v16)
  {
    v17 = v16;
    sub_222C9363C();

    v18 = [v1 groundTruthType];
    if (v18)
    {
      v19 = v18;
      v20 = sub_222C9449C();
      v22 = v21;

      v23 = [v1 groundTruthSource];
      if (v23)
      {
        v67 = v20;
        v24 = v23;
        v25 = sub_222C9350C();
        v27 = v26;

        v28 = sub_222C931DC();
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        swift_allocObject();
        sub_222C931CC();
        sub_222B7FB94();
        sub_222C931BC();
        sub_222B803C0(v25, v27);

        LOBYTE(v24) = v68;
        (*(v4 + 32))(a1, v15, v3);
        v60 = type metadata accessor for ThinMediaGroundTruth();
        v61 = (a1 + v60[5]);
        *v61 = v67;
        v61[1] = v22;
        *(a1 + v60[6]) = v24;
        *(a1 + v60[7]) = 0;
        return (*(*(v60 - 1) + 56))(a1, 0, 1, v60);
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v48 = sub_222C9431C();
      __swift_project_value_buffer(v48, qword_280FE2340);
      (*(v4 + 16))(v11, v15, v3);
      v49 = v4;
      v50 = sub_222C942FC();
      v51 = sub_222C94A4C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = a1;
        v68 = v66;
        *v52 = 136315138;
        sub_222BF5484(&qword_280FE0298, MEMORY[0x277CC95F0]);
        v53 = sub_222C9517C();
        v55 = v54;
        v56 = *(v49 + 8);
        v56(v11, v3);
        v57 = sub_222B437C0(v53, v55, &v68);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_222B39000, v50, v51, "PIMSStoreCoreData: Failed to retrieve source data when reading ThinMediaGroundTruth with ID: %s.", v52, 0xCu);
        v58 = v66;
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        a1 = v67;
        MEMORY[0x223DCA8C0](v58, -1, -1);
        MEMORY[0x223DCA8C0](v52, -1, -1);

        v56(v15, v3);
      }

      else
      {

        v63 = *(v49 + 8);
        v63(v11, v3);
        v63(v15, v3);
      }
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v37 = sub_222C9431C();
      __swift_project_value_buffer(v37, qword_280FE2340);
      (*(v4 + 16))(v8, v15, v3);
      v38 = sub_222C942FC();
      v39 = sub_222C94A4C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v4;
        v41 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = a1;
        v68 = v66;
        *v41 = 136315138;
        sub_222BF5484(&qword_280FE0298, MEMORY[0x277CC95F0]);
        v42 = sub_222C9517C();
        v44 = v43;
        v45 = *(v40 + 8);
        v45(v8, v3);
        v46 = sub_222B437C0(v42, v44, &v68);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_222B39000, v38, v39, "PIMSStoreCoreData: Failed to retrieve type when reading ThinMediaGroundTruth with ID: %s.", v41, 0xCu);
        v47 = v66;
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        a1 = v67;
        MEMORY[0x223DCA8C0](v47, -1, -1);
        MEMORY[0x223DCA8C0](v41, -1, -1);

        v45(v15, v3);
      }

      else
      {

        v59 = *(v4 + 8);
        v59(v8, v3);
        v59(v15, v3);
      }
    }

    v64 = type metadata accessor for ThinMediaGroundTruth();
    return (*(*(v64 - 8) + 56))(a1, 1, 1, v64);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v31 = sub_222C9431C();
    __swift_project_value_buffer(v31, qword_280FE2340);
    v32 = sub_222C942FC();
    v33 = sub_222C94A4C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_222B39000, v32, v33, "PIMSStoreCoreData: Failed to retrieve ID when reading ThinMediaGroundTruth.", v34, 2u);
      MEMORY[0x223DCA8C0](v34, -1, -1);
    }

    v35 = type metadata accessor for ThinMediaGroundTruth();
    v36 = *(*(v35 - 8) + 56);

    return v36(a1, 1, 1, v35);
  }
}

id sub_222BF2684(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = *(v1 + 48);
  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v11 = sub_222C9448C();
  [v10 setMediaId_];

  v12 = 0;
  if (v9 != 2)
  {
    LOBYTE(v15) = v9 & 1;
    v12 = sub_222BF27C8(a1);
  }

  [v10 setSourceApp_];

  if (v5 == 1)
  {
    v13 = 0;
  }

  else
  {
    v16 = v6;
    v17 = v5;
    v18 = v8;
    v19 = v7;

    v13 = sub_222BF2C28(a1);
  }

  [v10 setStorefront_];

  return v10;
}

id sub_222BF27C8(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C96900;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_222B9A614();
  *(v7 + 64) = v9;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  if (v3)
  {
    v10 = 0x656E696665646E75;
  }

  else
  {
    v10 = 0x6C7070612E6D6F63;
  }

  if (v3)
  {
    v11 = 0xE900000000000064;
  }

  else
  {
    v11 = 0xEF636973754D2E65;
  }

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_222C949EC();
  [v6 setPredicate_];

  v36[0] = 0;
  v13 = [v6 execute_];
  v14 = v36[0];
  if (!v13)
  {
    v20 = v36[0];
    v15 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v15 = v13;
  type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  v16 = sub_222C9471C();
  v17 = v14;

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_19:

LABEL_20:
    type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v32 = sub_222C9448C();

    [v19 setName_];

    goto LABEL_21;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223DC9B30](0, v16);
    goto LABEL_13;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_15:
    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);
    v22 = v15;
    v23 = sub_222C942FC();
    v24 = sub_222C94A4C();

    if (os_log_type_enabled(v23, v24))
    {
      v35 = a1;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136315138;
      v27 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v28 = sub_222C944EC();
      v30 = sub_222B437C0(v28, v29, v36);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_222B39000, v23, v24, "Error searching for existing suggestion tag error=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      v31 = v25;
      a1 = v35;
      MEMORY[0x223DCA8C0](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v18 = *(v16 + 32);
LABEL_13:
  v19 = v18;

LABEL_21:
  v33 = *MEMORY[0x277D85DE8];
  return v19;
}

id sub_222BF2C28(void *a1)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_222C9448C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C98AE0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_222B9A614();
  *(v10 + 32) = 0x437972746E756F63;
  *(v10 + 40) = 0xEB0000000065646FLL;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  if (v3)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  *(v10 + 64) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = v15;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  strcpy((v10 + 112), "storefrontId");
  *(v10 + 125) = 0;
  *(v10 + 126) = -5120;
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  if (v5)
  {
    v14 = v5;
  }

  *(v10 + 152) = v16;
  *(v10 + 160) = v14;
  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);

  v17 = sub_222C949EC();
  [v9 setPredicate_];

  v41[0] = 0;
  v18 = [v9 execute_];
  v19 = v41[0];
  if (!v18)
  {
    v40 = a1;
    v25 = v41[0];
    a1 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
LABEL_20:
      v26 = sub_222C9431C();
      __swift_project_value_buffer(v26, qword_280FE2340);
      v27 = a1;
      v28 = sub_222C942FC();
      v29 = sub_222C94A4C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41[0] = v39;
        *v30 = 136315138;
        v31 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
        v32 = sub_222C944EC();
        v34 = sub_222B437C0(v32, v33, v41);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_222B39000, v28, v29, "Error searching for existing suggestion tag error=%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x223DCA8C0](v39, -1, -1);
        MEMORY[0x223DCA8C0](v30, -1, -1);
      }

      else
      {
      }

      a1 = v40;
      goto LABEL_26;
    }

LABEL_36:
    swift_once();
    goto LABEL_20;
  }

  v20 = v18;
  type metadata accessor for PlusStorefrontCoreDataRecord();
  v21 = sub_222C9471C();
  v22 = v19;

  if (v21 >> 62)
  {
    if (sub_222C94C6C())
    {
      goto LABEL_15;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x223DC9B30](0, v21);
      goto LABEL_18;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 32);
LABEL_18:
      v24 = v23;

      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_26:
  type metadata accessor for PlusStorefrontCoreDataRecord();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  if (v3)
  {
    v35 = sub_222C9448C();
  }

  else
  {
    v35 = 0;
  }

  [v24 setCountryCode_];

  if (v5)
  {
    v36 = sub_222C9448C();
  }

  else
  {
    v36 = 0;
  }

  [v24 setStorefrontId_];

LABEL_33:
  v37 = *MEMORY[0x277D85DE8];
  return v24;
}

id sub_222BF310C(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_222C9448C();
  v5 = [v3 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C96900;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_222B9A614();
  *(v6 + 64) = v8;
  *(v6 + 32) = 1701667182;
  *(v6 + 40) = 0xE400000000000000;
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v10 = 0x8000000222CA93E0;
        v9 = 0xD000000000000013;
      }

      else
      {
        v10 = 0x8000000222CA9400;
        v9 = 0xD000000000000012;
      }
    }

    else if (v2 == 4)
    {
      v10 = 0xE700000000000000;
      v9 = 0x7972617262696CLL;
    }

    else
    {
      v10 = 0x8000000222CA93C0;
      v9 = 0xD000000000000011;
    }
  }

  else
  {
    if (v2 <= 1)
    {
      v9 = 0x754D6E69616D6F64;
      v10 = 0xEB00000000636973;
      if (!v2)
      {
        goto LABEL_16;
      }

      v9 = 0x656D7269666E6F63;
      goto LABEL_10;
    }

    if (v2 == 2)
    {
      v9 = 0x6574616E696D6F6ELL;
LABEL_10:
      v10 = 0xE900000000000064;
      goto LABEL_16;
    }

    v9 = 0x6974636572726F63;
    v10 = 0xEA00000000006E6FLL;
  }

LABEL_16:
  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v9;
  *(v6 + 80) = v10;
  v11 = sub_222C949EC();
  [v5 setPredicate_];

  v34[0] = 0;
  v12 = [v5 execute_];
  v13 = v34[0];
  if (!v12)
  {
    v19 = v34[0];
    v14 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v14 = v12;
  type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  v15 = sub_222C9471C();
  v16 = v13;

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_28:

LABEL_29:
    type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v30 = sub_222C9448C();

    [v18 setName_];

    goto LABEL_30;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_28;
  }

LABEL_19:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x223DC9B30](0, v15);
    goto LABEL_22;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_33:
    swift_once();
LABEL_24:
    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = v14;
    v22 = sub_222C942FC();
    v23 = sub_222C94A4C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136315138;
      v26 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v27 = sub_222C944EC();
      v29 = sub_222B437C0(v27, v28, v34);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_222B39000, v22, v23, "Error searching for existing suggestion tag error=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223DCA8C0](v25, -1, -1);
      MEMORY[0x223DCA8C0](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v17 = *(v15 + 32);
LABEL_22:
  v18 = v17;

LABEL_30:
  v31 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_222BF3720(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 mediaId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9449C();
    v8 = v7;

    v9 = [v2 storefront];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 countryCode];
      if (v11)
      {
        v12 = v11;
        v13 = sub_222C9449C();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v22 = [v10 storefrontId];
      if (v22)
      {
        v23 = v22;
        v20 = sub_222C9449C();
        v21 = v24;
      }

      else
      {

        v20 = 0;
        v21 = 0;
      }
    }

    else
    {
      v13 = 0;
      v20 = 0;
      v21 = 0;
      v15 = 1;
    }

    v25 = [v2 sourceApp];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 name];
      if (v27)
      {
        v28 = v27;
        sub_222C9449C();

        v29 = sub_222C94FDC();

        swift_bridgeObjectRelease_n();
        if (v29 == 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (!v29)
        {
          v30 = 0;
        }

        goto LABEL_25;
      }
    }

    v30 = 2;
LABEL_25:
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v20;
    *(a1 + 40) = v21;
    *(a1 + 48) = v30 | 0x300;
    return;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v16 = sub_222C9431C();
  __swift_project_value_buffer(v16, qword_280FE2340);
  v17 = sub_222C942FC();
  v18 = sub_222C94A3C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_222B39000, v17, v18, "Media reference missing mandatory media id.", v19, 2u);
    MEMORY[0x223DCA8C0](v19, -1, -1);
  }

  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
}

uint64_t sub_222BF39F8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v158 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v135 - v5;
  v161 = type metadata accessor for ThinMediaGroundTruth();
  v159 = *(v161 - 8);
  v7 = *(v159 + 64);
  MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222C9343C();
  v152 = *(v9 - 8);
  v10 = *(v152 + 64);
  MEMORY[0x28223BE20](v9);
  v151 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v135 - v13;
  v154 = sub_222C9367C();
  v15 = *(v154 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v154);
  v18 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v135 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v135 - v23;
  *&v26 = MEMORY[0x28223BE20](v25).n128_u64[0];
  v28 = &v135 - v27;
  v29 = [v1 id];
  if (v29)
  {
    v153 = v15;
    v30 = v29;
    sub_222C9363C();

    v31 = [v2 leftHandKey];
    if (v31)
    {
      v149 = v18;
      v150 = v24;
      v32 = v31;
      v33 = sub_222C9350C();
      v35 = v34;

      v36 = [v2 inferredMediaReference];
      if (v36)
      {
        v37 = v36;
        sub_222BF3720(&v165);

        if (*(&v165 + 1))
        {
          v145 = v28;
          v142 = *(&v165 + 1);
          v137 = v165;
          v138 = v166;
          v139 = v167;
          v140 = v168;
          v141 = v169;
          v143 = v170;
          v38 = [v2 contributingGroundTruth];
          if (!v38)
          {
            sub_222B505A8(0, &qword_27D026B88, 0x277CBEB70);
            v38 = MEMORY[0x223DC97A0](MEMORY[0x277D84F90]);
          }

          v136 = v2;
          v39 = [v2 tags];
          v40 = MEMORY[0x277D84F90];
          v155 = MEMORY[0x277D84F90];
          v146 = v35;
          v148 = v33;
          v144 = v38;
          if (v39)
          {
            v164 = MEMORY[0x277D84F90];
            v157 = v39;
            sub_222C94A0C();
            sub_222BF5484(&qword_27D026B90, MEMORY[0x277CC9178]);
            sub_222C94B9C();
            while (v167)
            {
              sub_222BF54CC(&v165, v162);
              type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
              if ((swift_dynamicCast() & 1) != 0 && v163)
              {
                MEMORY[0x223DC94A0]();
                if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v81 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_222C9475C();
                }

                sub_222C947AC();
                v40 = v164;
              }

              sub_222C94B9C();
            }

            (*(v152 + 8))(v14, v9);
            v157 = (v40 & 0xFFFFFFFFFFFFFF8);
            if (v40 >> 62)
            {
              v82 = sub_222C94C6C();
            }

            else
            {
              v82 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v80 = v151;
            if (v82)
            {
              v156 = v40 & 0xC000000000000001;
              v147 = MEMORY[0x277D84F90];
              for (i = 0; ; i = v86)
              {
                while (1)
                {
                  if (v156)
                  {
                    v84 = MEMORY[0x223DC9B30](i, v40);
                  }

                  else
                  {
                    if (i >= *(v157 + 2))
                    {
                      goto LABEL_92;
                    }

                    v84 = *(v40 + 8 * i + 32);
                  }

                  v85 = v84;
                  v86 = i + 1;
                  if (__OFADD__(i, 1))
                  {
                    goto LABEL_91;
                  }

                  v87 = [v84 name];
                  if (v87)
                  {
                    break;
                  }

LABEL_39:
                  ++i;
                  if (v86 == v82)
                  {
                    v80 = v151;
                    goto LABEL_55;
                  }
                }

                v88 = v87;
                sub_222C9449C();

                v89 = sub_222C94FDC();

                swift_bridgeObjectRelease_n();
                if (v89 >= 8)
                {
                  goto LABEL_39;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v147 = sub_222B4B468(0, *(v147 + 2) + 1, 1, v147);
                }

                v80 = v151;
                v91 = *(v147 + 2);
                v90 = *(v147 + 3);
                if (v91 >= v90 >> 1)
                {
                  v147 = sub_222B4B468((v90 > 1), v91 + 1, 1, v147);
                }

                v92 = v147;
                *(v147 + 2) = v91 + 1;
                v92[v91 + 32] = v89;
                if (v86 == v82)
                {
                  goto LABEL_55;
                }
              }
            }

            v147 = MEMORY[0x277D84F90];
LABEL_55:
          }

          else
          {
            v147 = 0;
            v80 = v151;
          }

          v164 = MEMORY[0x277D84F90];
          sub_222C94A0C();
          sub_222BF5484(&qword_27D026B90, MEMORY[0x277CC9178]);
          sub_222C94B9C();
          if (v167)
          {
            v155 = MEMORY[0x277D84F90];
            do
            {
              sub_222BF54CC(&v165, v162);
              type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
              if ((swift_dynamicCast() & 1) != 0 && v163)
              {
                MEMORY[0x223DC94A0]();
                if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v93 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_222C9475C();
                }

                sub_222C947AC();
                v155 = v164;
              }

              sub_222C94B9C();
            }

            while (v167);
          }

          (*(v152 + 8))(v80, v9);
          v94 = v155;
          if (v155 >> 62)
          {
            v95 = sub_222C94C6C();
          }

          else
          {
            v95 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v96 = MEMORY[0x277D84F90];
          if (!v95)
          {
LABEL_81:

            v106 = sub_222C931DC();
            v107 = *(v106 + 48);
            v108 = *(v106 + 52);
            swift_allocObject();
            sub_222C931CC();
            sub_222C9386C();
            sub_222BF5484(&qword_27D025180, MEMORY[0x277D5E9D8]);
            sub_222C931BC();

            v161 = v165;
            v109 = *(v153 + 16);
            v109(v150, v145, v154);
            v110 = v136;
            [v136 timestamp];
            v112 = v111;
            v113 = MEMORY[0x277D84F90];
            if (v147)
            {
              v114 = v147;
            }

            else
            {
              v114 = MEMORY[0x277D84F90];
            }

            v160 = sub_222B72A40(v114);

            [v110 score];
            v116 = v115;
            v117 = [v110 scoreHistory];
            if (v117)
            {
              v118 = v117;
              v119 = sub_222C9350C();
              v121 = v120;

              sub_222B80358(v119, v121);
              v122 = sub_222BF4F6C(v119, v121, &qword_27D0261C0, &unk_222C9C7D0, sub_222BF54DC);
              sub_222B803C0(v119, v121);
              sub_222B803C0(v119, v121);
              if (v122)
              {
                v113 = v122;
              }
            }

            v123 = v143;
            v124 = v143 >> 8;
            v125 = v158;
            v126 = v150;
            v127 = v154;
            v109(v158, v150, v154);
            v128 = type metadata accessor for PlusMediaSuggestion();
            *&v125[v128[5]] = v161;
            v129 = &v125[v128[6]];
            v130 = v142;
            *v129 = v137;
            *(v129 + 1) = v130;
            v131 = v139;
            *(v129 + 2) = v138;
            *(v129 + 3) = v131;
            v132 = v141;
            *(v129 + 4) = v140;
            *(v129 + 5) = v132;
            v129[48] = v123;
            v129[49] = v124;

            *&v125[v128[7]] = sub_222C16F98(20, v96);
            *&v125[v128[10]] = v112;
            *&v125[v128[11]] = v160;
            *&v125[v128[8]] = v116;
            v133 = sub_222C17258(0x14uLL, v113);

            sub_222B803C0(v148, v146);

            v134 = *(v153 + 8);
            v134(v126, v127);
            v134(v145, v127);
            *&v125[v128[9]] = v133;
            return (*(*(v128 - 1) + 56))(v125, 0, 1, v128);
          }

          v97 = 0;
          v98 = v94 & 0xC000000000000001;
          v99 = v94 & 0xFFFFFFFFFFFFFF8;
          v100 = (v159 + 48);
          while (1)
          {
            if (v98)
            {
              v101 = MEMORY[0x223DC9B30](v97, v94);
            }

            else
            {
              if (v97 >= *(v99 + 16))
              {
                goto LABEL_90;
              }

              v101 = *(v94 + 8 * v97 + 32);
            }

            v102 = v101;
            v103 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              break;
            }

            sub_222BF1CC0(v6);

            if ((*v100)(v6, 1, v161) == 1)
            {
              sub_222BF53B8(v6);
            }

            else
            {
              sub_222BF5420(v6, v160);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v96 = sub_222B4A864(0, v96[2] + 1, 1, v96);
              }

              v105 = v96[2];
              v104 = v96[3];
              if (v105 >= v104 >> 1)
              {
                v96 = sub_222B4A864(v104 > 1, v105 + 1, 1, v96);
              }

              v96[2] = v105 + 1;
              sub_222BF5420(v160, v96 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v105);
              v94 = v155;
            }

            ++v97;
            if (v103 == v95)
            {
              goto LABEL_81;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      v50 = v28;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v51 = sub_222C9431C();
      __swift_project_value_buffer(v51, qword_280FE2340);
      v52 = sub_222C942FC();
      v53 = sub_222C94A3C();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v158;
      v56 = v154;
      if (v54)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_222B39000, v52, v53, "PIMSStoreCoreData: Empty inferred media reference for media suggestion", v57, 2u);
        MEMORY[0x223DCA8C0](v57, -1, -1);
      }

      sub_222B803C0(v33, v35);

      (*(v153 + 8))(v50, v56);
      v58 = type metadata accessor for PlusMediaSuggestion();
      v59 = *(*(v58 - 8) + 56);
      v60 = v55;
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v61 = sub_222C9431C();
      __swift_project_value_buffer(v61, qword_280FE2340);
      v62 = v153;
      v63 = v28;
      v64 = v28;
      v65 = v154;
      (*(v153 + 16))(v21, v64, v154);
      v66 = sub_222C942FC();
      v67 = sub_222C94A3C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v165 = v69;
        *v68 = 136315138;
        sub_222BF5484(&qword_280FE0298, MEMORY[0x277CC95F0]);
        v70 = sub_222C9517C();
        v71 = v65;
        v73 = v72;
        v74 = *(v62 + 8);
        v75 = v21;
        v76 = v71;
        v74(v75, v71);
        v77 = sub_222B437C0(v70, v73, &v165);

        *(v68 + 4) = v77;
        _os_log_impl(&dword_222B39000, v66, v67, "PIMSStoreCoreData: Empty uso data for %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        MEMORY[0x223DCA8C0](v69, -1, -1);
        MEMORY[0x223DCA8C0](v68, -1, -1);

        v74(v63, v76);
      }

      else
      {

        v78 = *(v62 + 8);
        v78(v21, v65);
        v78(v63, v65);
      }

      v79 = v158;
      v58 = type metadata accessor for PlusMediaSuggestion();
      v59 = *(*(v58 - 8) + 56);
      v60 = v79;
    }

    return v59(v60, 1, 1, v58);
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_93:
    swift_once();
  }

  v41 = sub_222C9431C();
  __swift_project_value_buffer(v41, qword_280FE2340);
  v42 = sub_222C942FC();
  v43 = sub_222C94A3C();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v158;
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_222B39000, v42, v43, "PIMSStoreCoreData: Missing UUID for pics data record. Returning Nil.", v46, 2u);
    MEMORY[0x223DCA8C0](v46, -1, -1);
  }

  v47 = type metadata accessor for PlusMediaSuggestion();
  v48 = *(*(v47 - 8) + 56);

  return v48(v45, 1, 1, v47);
}

uint64_t sub_222BF4F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = sub_222C931DC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_222C931CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5();
  sub_222C931BC();

  return v12;
}

uint64_t sub_222BF5188@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_222C935EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v25 - v11;
  v13 = [v2 source];
  if (v13)
  {
    v14 = v13;
    v15 = sub_222C9449C();
    v17 = v16;

    v18 = [v2 timestamp];
    if (v18)
    {
      v19 = v18;
      sub_222C935CC();

      v20 = *(v5 + 32);
      v20(v12, v8, v4);
      v21 = type metadata accessor for SuggestionStoreUpdate();
      v20(a1 + *(v21 + 20), v12, v4);
      *a1 = v15;
      a1[1] = v17;
      return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    }
  }

  v23 = type metadata accessor for SuggestionStoreUpdate();
  v24 = *(*(v23 - 8) + 56);

  return v24(a1, 1, 1, v23);
}

uint64_t sub_222BF53B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BF5420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BF5484(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_222BF54CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_222BF54DC()
{
  result = qword_27D026210;
  if (!qword_27D026210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222BF5670(&qword_27D026218, &qword_27D0261D8, &qword_222CA1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026210);
  }

  return result;
}

uint64_t sub_222BF5578(uint64_t a1)
{
  v2 = type metadata accessor for ThinMediaGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BF55D4()
{
  result = qword_27D026BA0;
  if (!qword_27D026BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222BF5670(&qword_27D026BA8, &qword_27D026BB0, &unk_222CA62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026BA0);
  }

  return result;
}

uint64_t sub_222BF5670(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222BF56C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026760, qword_222C9DCF0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026BB8 = 91;
  unk_27D026BC0 = 0xE100000000000000;
  return result;
}

uint64_t PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition.events(since:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a1;
  v3[14] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026710, &qword_222C9DCB8);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v3[17] = *(v5 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BC8, &unk_222C9FB50);
  v3[20] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266E8, &qword_222C9DC98);
  v3[22] = v8;
  v9 = *(v8 - 8);
  v3[23] = v9;
  v3[24] = *(v9 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v2;
  v3[27] = v10;
  v3[28] = v11;

  return MEMORY[0x2822009F8](sub_222BF5904, 0, 0);
}

uint64_t sub_222BF5904()
{
  v36 = v0;
  v1 = *(v0 + 224);
  sub_222BF9004(0, 1uLL, v0 + 56);
  if (*(v0 + 80))
  {
    sub_222B405A0((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(v3 + 16);
    v33 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 232) = v6;
    *v6 = v0;
    v6[1] = sub_222BF5DD0;
    v7 = *(v0 + 168);
    v8 = *(v0 + 112);

    return v33(v7, v8, v2, v3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v35);
      _os_log_impl(&dword_222B39000, v11, v12, "%s Could not resolve playMediaIntentStream", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223DCA8C0](v14, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }

    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);
    v34 = *(v0 + 104);
    *(v0 + 96) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025408, &unk_222C984C0);
    sub_222B61940(&qword_27D026BD0, &qword_27D025408, &unk_222C984C0);
    sub_222C93E1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026718, &unk_222C9DCC0);
    v20 = swift_allocBox();
    v22 = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026720, &qword_222C9FB60);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    (*(v18 + 16))(v16, v15, v19);
    v24 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    (*(v18 + 32))(v25 + v24, v16, v19);

    sub_222C948BC();
    (*(v18 + 8))(v15, v19);

    v27 = *(v0 + 208);
    v26 = *(v0 + 216);
    v28 = *(v0 + 200);
    v29 = *(v0 + 168);
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_222BF5DD0()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_222BF6184;
  }

  else
  {
    v3 = sub_222BF5EE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222BF5EE4()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v25 = v0[24];
  v26 = v0[13];
  sub_222B61940(&qword_27D026BD8, &qword_27D026BC8, &unk_222C9FB50);

  sub_222C951AC();
  v9 = *(v5 + 16);
  v9(v3, v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F0, &qword_222C9DCA0);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F8, &qword_222C9DCA8);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v9(v4, v3, v6);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  (*(v5 + 32))(v15 + v14, v4, v6);

  sub_222C948BC();
  v16 = *(v5 + 8);
  v16(v3, v6);
  v16(v1, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[25];
  v20 = v0[21];
  v22 = v0[18];
  v21 = v0[19];

  v23 = v0[1];

  return v23();
}

uint64_t sub_222BF6184()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v7 = v0[1];
  v8 = v0[30];

  return v7();
}

uint64_t sub_222BF6238(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[3];
  v7 = a2[4];
  *(v3 + 56) = a3;
  *(v3 + 16) = v5;
  *(v3 + 24) = *(a2 + 1);
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  v8 = swift_task_alloc();
  *(v3 + 64) = v8;
  *v8 = v3;
  v8[1] = sub_222BF6300;

  return sub_222BF644C(a1, (v3 + 16));
}

uint64_t sub_222BF6300()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BF6434, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_222BF644C(uint64_t a1, uint64_t *a2)
{
  *(v3 + 336) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300) - 8) + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v6 = sub_222C935EC();
  *(v3 + 360) = v6;
  v7 = *(v6 - 8);
  *(v3 + 368) = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v3 + 376) = v9;
  *(v3 + 384) = v10;
  *(v3 + 392) = *(a2 + 1);
  v11 = a2[4];
  *(v3 + 408) = a2[3];
  *(v3 + 416) = v11;
  *(v3 + 424) = *v2;

  return MEMORY[0x2822009F8](sub_222BF657C, 0, 0);
}

uint64_t sub_222BF657C()
{
  v61 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  sub_222B41CB8(*(v0 + 400), v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_222B41CE4(*(v0 + 400));
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v10 = *(v0 + 352);
      sub_222C935AC();
      v6 = 0;
    }

    v11 = *(v0 + 360);
    v12 = *(v0 + 344);
    (*(*(v0 + 368) + 56))(*(v0 + 352), v6, 1, v11);
    if (v4(v12, 1, v11) != 1)
    {
      sub_222B4FCD4(*(v0 + 344), &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    (*(v8 + 32))(v9, *(v0 + 344), v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v14 = *(v0 + 352);
  v13 = *(v0 + 360);
  if (v4(v14, 1, v13) == 1)
  {
    sub_222B4FCD4(v14, &qword_27D025360, &unk_222C98300);
LABEL_17:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 416);
    v37 = *(v0 + 392);
    v36 = *(v0 + 400);
    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);

    v39 = sub_222C942FC();
    v40 = sub_222C94A4C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136315394;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 408);
      v43 = *(v0 + 416);
      v46 = *(v0 + 392);
      v45 = *(v0 + 400);
      v47 = *(v0 + 384);
      *(v41 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, v60);
      *(v41 + 12) = 2080;
      *(v0 + 152) = v47;
      *(v0 + 160) = v46;
      *(v0 + 168) = v45;
      *(v0 + 176) = v44;
      *(v0 + 184) = v43;

      v48 = sub_222C944EC();
      v50 = sub_222B437C0(v48, v49, v60);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_222B39000, v39, v40, "%s playMediaIntent required fields missing (%s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);
    }

    v51 = *(v0 + 408);
    v52 = *(v0 + 416);
    v53 = *(v0 + 392);
    v54 = *(v0 + 400);
    v55 = *(v0 + 336);
    *v55 = *(v0 + 384);
    v55[1] = v53;
    v55[2] = v54;
    v55[3] = v51;
    v55[4] = v52;
    v56 = *(v0 + 376);
    v58 = *(v0 + 344);
    v57 = *(v0 + 352);

    v59 = *(v0 + 8);

    return v59();
  }

  v15 = *(v0 + 400);
  (*(*(v0 + 368) + 32))(*(v0 + 376), v14, v13);
  v16 = sub_222B4183C(v15, (v0 + 88));
  v17 = *(v0 + 96);
  if (!v17)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360), v16);
    goto LABEL_17;
  }

  v18 = *(v0 + 88);
  *(v0 + 312) = 47;
  *(v0 + 320) = 0xE100000000000000;
  v19 = swift_task_alloc();
  *(v19 + 16) = v0 + 312;

  v21 = sub_222B76E28(0x7FFFFFFFFFFFFFFFLL, 1, sub_222B5EBA4, v19, v18, v17, v20);
  sub_222B4FCD4(v0 + 88, &qword_27D025370, &qword_222C98310);

  v22 = *(v21 + 16);
  if (!v22)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

    goto LABEL_17;
  }

  v23 = *(v0 + 424);
  v24 = (v21 + 32 * v22);
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];

  *(v0 + 328) = v23;
  v29 = MEMORY[0x223DC92B0](v25, v26, v27, v28);
  v31 = v30;

  *(v0 + 432) = v31;
  v32 = swift_task_alloc();
  *(v0 + 440) = v32;
  *v32 = v0;
  v32[1] = sub_222BF6B30;
  v33 = *(v0 + 376);

  return sub_222BF7130(v0 + 192, v33, v29, v31);
}

uint64_t sub_222BF6B30()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  v4 = *(v2 + 432);

  if (v0)
  {
    v5 = sub_222BF7094;
  }

  else
  {
    v5 = sub_222BF6C54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222BF6C54()
{
  v53 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    v47 = *(v0 + 376);
    v49 = *(v0 + 384);
    v4 = *(v0 + 360);
    v5 = *(v0 + 368);
    v6 = *(v0 + 336);
    v7 = *(v0 + 224);
    v45 = *(v0 + 208);
    v8 = *(v0 + 192);
    v50 = *(v0 + 392);
    v51 = v3;
    v52 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    v10 = type metadata accessor for PlayMediaFeature.NowPlayingEvent(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    *(v0 + 272) = v8;
    *(v0 + 280) = v1;
    *(v0 + 288) = v45;
    *(v0 + 304) = v7;
    v13 = sub_222C93EEC();
    *(inited + 56) = v10;
    *(inited + 64) = sub_222BF9808(&qword_27D026BE0, type metadata accessor for PlayMediaFeature.NowPlayingEvent);
    *(inited + 32) = v13;
    CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)(0, 0, MEMORY[0x277D84F90], inited, 0, 0, v6);
    swift_setDeallocating();
    v14 = *(inited + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    swift_arrayDestroy();
    (*(v5 + 8))(v47, v4);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 416);
    v17 = *(v0 + 392);
    v16 = *(v0 + 400);
    v18 = sub_222C9431C();
    __swift_project_value_buffer(v18, qword_280FE2340);

    v19 = sub_222C942FC();
    v20 = sub_222C94A4C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v21 = 136315394;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 408);
      v23 = *(v0 + 416);
      v25 = *(v0 + 392);
      v24 = *(v0 + 400);
      v26 = *(v0 + 384);
      v27 = *(v0 + 368);
      v44 = *(v0 + 360);
      v46 = *(v0 + 376);
      *(v21 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v49);
      *(v21 + 12) = 2080;
      *(v0 + 232) = v26;
      *(v0 + 240) = v25;
      *(v0 + 248) = v24;
      *(v0 + 256) = v22;
      *(v0 + 264) = v23;

      v28 = sub_222C944EC();
      v30 = sub_222B437C0(v28, v29, &v49);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_222B39000, v19, v20, "%s could not find associated now playing event for %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v48, -1, -1);
      MEMORY[0x223DCA8C0](v21, -1, -1);

      (*(v27 + 8))(v46, v44);
    }

    else
    {
      v32 = *(v0 + 368);
      v31 = *(v0 + 376);
      v33 = *(v0 + 360);

      (*(v32 + 8))(v31, v33);
    }

    v34 = *(v0 + 408);
    v35 = *(v0 + 416);
    v36 = *(v0 + 392);
    v37 = *(v0 + 400);
    v38 = *(v0 + 336);
    *v38 = *(v0 + 384);
    v38[1] = v36;
    v38[2] = v37;
    v38[3] = v34;
    v38[4] = v35;
  }

  v39 = *(v0 + 376);
  v40 = *(v0 + 344);
  v41 = *(v0 + 352);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_222BF7094()
{
  v1 = v0[44];
  v2 = v0[43];
  (*(v0[46] + 8))(v0[47], v0[45]);

  v3 = v0[1];
  v4 = v0[56];

  return v3();
}

uint64_t sub_222BF7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[53] = a3;
  v5[54] = a4;
  v5[51] = a1;
  v5[52] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BC8, &unk_222C9FB50) - 8) + 64) + 15;
  v5[57] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BE8, &qword_222C9FC30) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v9 = sub_222C935EC();
  v5[59] = v9;
  v10 = *(v9 - 8);
  v5[60] = v10;
  v11 = *(v10 + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = *v4;

  return MEMORY[0x2822009F8](sub_222BF72EC, 0, 0);
}

uint64_t sub_222BF72EC()
{
  v63 = v0;
  v1 = *(v0 + 536);
  sub_222BF9004(0, 0, v0 + 56);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 520);
    v4 = *(v0 + 512);
    v5 = *(v0 + 416);
    sub_222B405A0((v0 + 56), v0 + 16);
    sub_222C9358C();
    sub_222C9358C();
    sub_222C9358C();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v9 = *(v0 + 496);
    v8 = *(v0 + 504);
    v10 = *(v0 + 472);
    v11 = *(v0 + 480);
    v12 = sub_222C9431C();
    *(v0 + 544) = __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = *(v11 + 16);
    v13(v8, v6, v10);
    v13(v9, v7, v10);
    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v14, v15))
    {
      v60 = v15;
      v16 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62 = v59;
      *v16 = 136315650;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 504);
      v58 = *(v0 + 496);
      v19 = *(v0 + 472);
      v18 = *(v0 + 480);
      *(v16 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v62);
      *(v16 + 12) = 2080;
      sub_222BF9808(&qword_27D026758, MEMORY[0x277CC9578]);
      v20 = sub_222C9517C();
      v22 = v21;
      v23 = *(v18 + 8);
      v23(v17, v19);
      v24 = sub_222B437C0(v20, v22, &v62);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2080;
      v25 = sub_222C9517C();
      v27 = v26;
      v23(v58, v19);
      v28 = sub_222B437C0(v25, v27, &v62);

      *(v16 + 24) = v28;
      _os_log_impl(&dword_222B39000, v14, v60, "%s Searching for the related now playing event between %s and %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v59, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    else
    {
      v48 = *(v0 + 496);
      v47 = *(v0 + 504);
      v49 = *(v0 + 472);
      v50 = *(v0 + 480);

      v23 = *(v50 + 8);
      v23(v48, v49);
      v23(v47, v49);
    }

    *(v0 + 552) = v23;
    v51 = *(v0 + 40);
    v52 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v51);
    v53 = *(v52 + 16);
    v61 = (v53 + *v53);
    v54 = v53[1];
    v55 = swift_task_alloc();
    *(v0 + 560) = v55;
    *v55 = v0;
    v55[1] = sub_222BF794C;
    v56 = *(v0 + 528);
    v57 = *(v0 + 456);

    return v61(v57, v56, v51, v52);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v29 = sub_222C9431C();
    __swift_project_value_buffer(v29, qword_280FE2340);
    v30 = sub_222C942FC();
    v31 = sub_222C94A4C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62 = v33;
      *v32 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v62);
      _os_log_impl(&dword_222B39000, v30, v31, "%s failed to resolve nowPlayingStream", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x223DCA8C0](v33, -1, -1);
      MEMORY[0x223DCA8C0](v32, -1, -1);
    }

    v34 = *(v0 + 408);
    *(v34 + 32) = 0;
    *v34 = 0u;
    *(v34 + 16) = 0u;
    v35 = *(v0 + 528);
    v36 = *(v0 + 520);
    v38 = *(v0 + 504);
    v37 = *(v0 + 512);
    v40 = *(v0 + 488);
    v39 = *(v0 + 496);
    v42 = *(v0 + 456);
    v41 = *(v0 + 464);
    v44 = *(v0 + 440);
    v43 = *(v0 + 448);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_222BF794C()
{
  v2 = *(*v1 + 560);
  v5 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_222BF8E18;
  }

  else
  {
    v3 = sub_222BF7A60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222BF7A60()
{
  v1 = v0[57];
  v2 = v0[58];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BF0, &qword_222C9FC38);
  sub_222C9488C();
  sub_222B4FCD4(v1, &qword_27D026BC8, &unk_222C9FB50);
  v3 = *(MEMORY[0x277D858C0] + 4);
  v4 = swift_task_alloc();
  v0[72] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BF8, &unk_222C9FC40);
  *v4 = v0;
  v4[1] = sub_222BF7B50;
  v6 = v0[58];

  return MEMORY[0x2822005B0](v0 + 12, v5);
}

uint64_t sub_222BF7B50()
{
  v2 = *(*v1 + 576);
  v5 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_222BF8C28;
  }

  else
  {
    v3 = sub_222BF7C64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222BF7C64()
{
  v136 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  if (!v2)
  {
    sub_222B4FCD4(*(v0 + 464), &qword_27D026BE8, &qword_222C9FC30);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 544);
    *(v0 + 160) = &type metadata for PIMSConstraintMismatch;
    *(v0 + 168) = sub_222B77B4C();
    *(v0 + 136) = 0xD000000000000016;
    *(v0 + 144) = 0x8000000222CA9C80;
    *(v0 + 152) = 19;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    v13 = sub_222C942FC();
    v14 = sub_222C94A4C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v135 = v16;
      *v15 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 552);
      v133 = *(v0 + 528);
      v18 = *(v0 + 520);
      v19 = *(v0 + 512);
      v20 = *(v0 + 472);
      v21 = *(v0 + 480) + 8;
      *(v15 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v135);
      _os_log_impl(&dword_222B39000, v13, v14, "%s Didn't find any relevant now playing events", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x223DCA8C0](v16, -1, -1);
      MEMORY[0x223DCA8C0](v15, -1, -1);

      v17(v19, v20);
      v17(v18, v20);
      v17(v133, v20);
    }

    else
    {
      v28 = *(v0 + 552);
      v29 = *(v0 + 528);
      v30 = *(v0 + 520);
      v31 = *(v0 + 512);
      v32 = *(v0 + 472);
      v33 = *(v0 + 480);

      v28(v31, v32);
      v28(v30, v32);
      v28(v29, v32);
    }

    goto LABEL_53;
  }

  v132 = *(v0 + 96);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 440);
  sub_222B41CB8(v3, v8);
  v9 = *(v7 + 48);
  if (v9(v8, 1, v6) == 1)
  {
    sub_222B41CE4(v3);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v34 = *(v0 + 448);
      sub_222C935AC();
      v11 = 0;
    }

    v35 = *(v0 + 472);
    v36 = *(v0 + 440);
    (*(*(v0 + 480) + 56))(*(v0 + 448), v11, 1, v35);
    if (v9(v36, 1, v35) != 1)
    {
      sub_222B4FCD4(*(v0 + 440), &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    v22 = v2;
    v23 = v4;
    v24 = v5;
    v25 = *(v0 + 472);
    v26 = *(v0 + 480);
    v27 = *(v0 + 448);
    (*(v26 + 32))(v27, *(v0 + 440), v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    v5 = v24;
    v4 = v23;
    v2 = v22;
  }

  v37 = *(v0 + 472);
  v38 = *(v0 + 448);
  if (v9(v38, 1, v37) == 1)
  {
    sub_222B4FCD4(v38, &qword_27D025360, &unk_222C98300);
    v39 = v0 + 96;
    goto LABEL_28;
  }

  (*(*(v0 + 480) + 32))(*(v0 + 488), v38, v37);

  v41 = sub_222B423A0(v40);
  v43 = v42;

  v44 = *(v0 + 488);
  v39 = v0 + 96;
  if (!v43)
  {
    v58 = *(v0 + 480) + 8;
    (*(v0 + 552))(*(v0 + 488), *(v0 + 472));
LABEL_28:
    v59 = *(v0 + 544);

    v60 = sub_222C942FC();
    v61 = sub_222C94A4C();
    sub_222B5EE44(v132, v2);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *(v39 + 288) = v63;
      *v62 = 136315394;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      *(v62 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, (v39 + 288));
      *(v62 + 12) = 2080;
      *(v0 + 176) = v132;
      *(v0 + 184) = v2;
      *(v0 + 192) = v3;
      *(v0 + 200) = v4;
      *(v0 + 208) = v5;
      v64 = sub_222C944EC();
      v66 = sub_222B437C0(v64, v65, (v39 + 288));

      *(v62 + 14) = v66;
      _os_log_impl(&dword_222B39000, v60, v61, "%s NowPlayingEvent required properties missing: %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v63, -1, -1);
      MEMORY[0x223DCA8C0](v62, -1, -1);
    }

    else
    {

      sub_222B5EE44(v132, v2);
    }

LABEL_33:
    v67 = *(MEMORY[0x277D858C0] + 4);
    v68 = swift_task_alloc();
    *(v0 + 576) = v68;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BF8, &unk_222C9FC40);
    *v68 = v0;
    v68[1] = sub_222BF7B50;
    v70 = *(v0 + 464);

    return MEMORY[0x2822005B0](v39, v69);
  }

  v127 = v41;
  v45 = *(v0 + 520);
  v46 = *(v0 + 472);
  sub_222BF9808(&qword_27D025A18, MEMORY[0x277CC9578]);
  if (sub_222C9446C())
  {

    sub_222B5EE44(v132, v2);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 544);
    *(v0 + 360) = &type metadata for PIMSConstraintMismatch;
    *(v0 + 368) = sub_222B77B4C();
    *(v0 + 336) = 0xD000000000000016;
    *(v0 + 344) = 0x8000000222CA9C80;
    *(v0 + 352) = 18;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    v48 = sub_222C942FC();
    v49 = sub_222C94A4C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v135 = v51;
      *v50 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 552);
      v130 = *(v0 + 520);
      v134 = *(v0 + 528);
      v128 = *(v0 + 512);
      v53 = *(v0 + 488);
      v54 = *(v0 + 464);
      v55 = *(v0 + 472);
      v56 = *(v0 + 480) + 8;
      *(v50 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v135);
      v57 = "%s Could not find associated NowPlayingEvent in time window";
LABEL_26:
      _os_log_impl(&dword_222B39000, v48, v49, v57, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x223DCA8C0](v51, -1, -1);
      MEMORY[0x223DCA8C0](v50, -1, -1);

      v52(v53, v55);
      sub_222B4FCD4(v54, &qword_27D026BE8, &qword_222C9FC30);
      v52(v128, v55);
      v52(v130, v55);
      v52(v134, v55);
LABEL_53:
      v100 = *(v0 + 408);
      *(v100 + 32) = 0;
      *v100 = 0u;
      *(v100 + 16) = 0u;
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if ((v127 != *(v0 + 424) || v43 != *(v0 + 432)) && (sub_222C951FC() & 1) == 0)
  {
    sub_222B5EE44(v132, v2);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v77 = *(v0 + 544);
    v78 = *(v0 + 432);
    *(v0 + 240) = &type metadata for PIMSConstraintMismatch;
    v79 = sub_222B77B4C();
    *(v0 + 248) = v79;
    *(v0 + 216) = 0xD000000000000016;
    *(v0 + 224) = 0x8000000222CA9C80;
    *(v0 + 232) = 20;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));

    v80 = sub_222C942FC();
    v81 = sub_222C94A4C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *(v0 + 400) = v83;
      *v82 = 136315650;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v84 = *(v0 + 424);
      v85 = *(v0 + 432);
      *(v82 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, (v0 + 400));
      *(v82 + 12) = 2080;
      *(v82 + 14) = sub_222B437C0(v84, v85, (v0 + 400));
      *(v82 + 22) = 2080;
      v86 = sub_222B437C0(v127, v43, (v0 + 400));

      *(v82 + 24) = v86;
      _os_log_impl(&dword_222B39000, v80, v81, "%s Mismatched ids (Expected media id = %s now playing id = %s)", v82, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v83, -1, -1);
      MEMORY[0x223DCA8C0](v82, -1, -1);
    }

    else
    {
    }

    v87 = *(v0 + 512);
    v88 = *(v0 + 488);
    v89 = sub_222C9356C();
    v90 = *(v0 + 544);
    if ((v89 & 1) == 0)
    {
      *(v0 + 280) = &type metadata for PIMSConstraintMismatch;
      *(v0 + 288) = v79;
      *(v0 + 256) = 0xD000000000000016;
      *(v0 + 264) = 0x8000000222CA9C80;
      *(v0 + 272) = 22;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 256));
      v112 = sub_222C942FC();
      v113 = sub_222C94A3C();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *(v0 + 392) = v115;
        *v114 = 136315138;
        if (qword_27D024728 != -1)
        {
          swift_once();
        }

        v116 = *(v0 + 552);
        v117 = *(v0 + 488);
        v118 = *(v0 + 472);
        v119 = *(v0 + 480) + 8;
        *(v114 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, (v0 + 392));
        _os_log_impl(&dword_222B39000, v112, v113, "%s Ignoring early now play event with non matching media id", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        MEMORY[0x223DCA8C0](v115, -1, -1);
        MEMORY[0x223DCA8C0](v114, -1, -1);

        v116(v117, v118);
      }

      else
      {
        v120 = *(v0 + 552);
        v122 = *(v0 + 480);
        v121 = *(v0 + 488);
        v123 = *(v0 + 472);

        v120(v121, v123);
      }

      goto LABEL_33;
    }

    *(v0 + 320) = &type metadata for PIMSConstraintMismatch;
    *(v0 + 328) = v79;
    *(v0 + 296) = 0xD000000000000016;
    *(v0 + 304) = 0x8000000222CA9C80;
    *(v0 + 312) = 21;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
    v48 = sub_222C942FC();
    v49 = sub_222C94A4C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v135 = v51;
      *v50 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 552);
      v130 = *(v0 + 520);
      v134 = *(v0 + 528);
      v128 = *(v0 + 512);
      v53 = *(v0 + 488);
      v54 = *(v0 + 464);
      v55 = *(v0 + 472);
      v91 = *(v0 + 480) + 8;
      *(v50 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v135);
      v57 = "%s Unexpected now playing media id after limit";
      goto LABEL_26;
    }

LABEL_52:
    v92 = *(v0 + 552);
    v93 = *(v0 + 528);
    v94 = *(v0 + 520);
    v95 = *(v0 + 512);
    v97 = *(v0 + 480);
    v96 = *(v0 + 488);
    v99 = *(v0 + 464);
    v98 = *(v0 + 472);

    v92(v96, v98);
    sub_222B4FCD4(v99, &qword_27D026BE8, &qword_222C9FC30);
    v92(v95, v98);
    v92(v94, v98);
    v92(v93, v98);
    goto LABEL_53;
  }

  v131 = v5;
  v71 = *(v0 + 552);
  v126 = *(v0 + 520);
  v129 = *(v0 + 528);
  v125 = *(v0 + 512);
  v72 = *(v0 + 480);
  v73 = *(v0 + 488);
  v74 = *(v0 + 464);
  v75 = *(v0 + 472);
  v76 = *(v0 + 408);

  v71(v73, v75);
  sub_222B4FCD4(v74, &qword_27D026BE8, &qword_222C9FC30);
  v71(v125, v75);
  v71(v126, v75);
  v71(v129, v75);
  *v76 = v132;
  v76[1] = v2;
  v76[2] = v3;
  v76[3] = v4;
  v76[4] = v131;
LABEL_54:
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v101 = *(v0 + 528);
  v102 = *(v0 + 520);
  v104 = *(v0 + 504);
  v103 = *(v0 + 512);
  v106 = *(v0 + 488);
  v105 = *(v0 + 496);
  v108 = *(v0 + 456);
  v107 = *(v0 + 464);
  v110 = *(v0 + 440);
  v109 = *(v0 + 448);

  v111 = *(v0 + 8);

  return v111();
}

uint64_t sub_222BF8C28()
{
  *(v0 + 376) = *(v0 + 584);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_222BF8CB8, 0, 0);
}

uint64_t sub_222BF8CB8()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[59];
  v6 = v0[60] + 8;
  sub_222B4FCD4(v0[58], &qword_27D026BE8, &qword_222C9FC30);
  v1(v4, v5);
  v1(v3, v5);
  v1(v2, v5);
  v7 = v0[66];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v12 = v0[61];
  v11 = v0[62];
  v14 = v0[57];
  v13 = v0[58];
  v15 = v0[56];
  v18 = v0[55];
  v19 = v0[73];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_222BF8E18()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[59];
  v1(v0[64], v4);
  v1(v3, v4);
  v1(v2, v4);
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v10 = v0[61];
  v9 = v0[62];
  v12 = v0[57];
  v11 = v0[58];
  v13 = v0[56];
  v16 = v0[55];
  v17 = v0[71];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_222BF8F5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition.events(since:)(a1, a2);
}

double sub_222BF9004@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_222B8CFCC(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_6:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    sub_222B95830(a1, a2);
    v12 = sub_222C942FC();
    v13 = sub_222C94A3C();
    sub_222B5B328(a1, a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v14 = 136315138;
      v32[0] = a1;
      v32[1] = a2;
      sub_222B95830(a1, a2);
      v16 = sub_222C944EC();
      v18 = sub_222B437C0(v16, v17, v31);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_222B39000, v12, v13, "No stream  registered for identifier %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x223DCA8C0](v15, -1, -1);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }

    goto LABEL_11;
  }

  sub_222B43E3C(*(v7 + 56) + 40 * v8, v32);

  sub_222B43E3C(v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026C00, &unk_222CA5010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026C08, &qword_222C9FC88);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    sub_222B405A0(v30, a3);
    return result;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v19 = sub_222C9431C();
  __swift_project_value_buffer(v19, qword_280FE2340);
  sub_222B95830(a1, a2);
  v20 = sub_222C942FC();
  v21 = sub_222C94A4C();
  sub_222B5B328(a1, a2);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v30[0] = v23;
    *v22 = 136315394;
    v31[0] = a1;
    v31[1] = a2;
    sub_222B95830(a1, a2);
    v24 = sub_222C944EC();
    v26 = sub_222B437C0(v24, v25, v30);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v31[0] = &type metadata for CoreDuetEvent;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D026C10, qword_222C9FC90);
    v27 = sub_222C944EC();
    v29 = sub_222B437C0(v27, v28, v30);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_222B39000, v20, v21, "Attempted to retrieve stream %s with incorrect event type of %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v23, -1, -1);
    MEMORY[0x223DCA8C0](v22, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v32);
LABEL_11:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_222BF9404(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026710, &qword_222C9DCB8) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222BF9850;

  return sub_222BD6570(a1, v6, v1 + v5);
}

uint64_t sub_222BF94F4(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_222B503AC;

  return sub_222BF6238(a1, a2, v2);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_222BF9660(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266E8, &qword_222C9DC98) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222BF9850;

  return sub_222BD6B80(a1, v6, v1 + v5);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_222BF9808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222BF9854()
{
  v1 = *(*v0 + 80);
  sub_222C947FC();

  swift_getWitnessTable();
  v2 = sub_222C94DDC();
  if (sub_222C947BC() == 1)
  {
    return v2;
  }

  return sub_222C9477C();
}

uint64_t sub_222BF9930(uint64_t a1, void *a2)
{
  v2 = a2[2];
  (*(*(*a2 + 96) + 24))(*(*a2 + 80), *(*a2 + 96));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  LOBYTE(v2) = sub_222C9496C();

  return v2 & 1;
}

id sub_222BF9A84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ThinContactGroundTruth();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_222C931FC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for ThinContactGroundTruthCoreDataRecord();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v10 = sub_222C9361C();
  [v9 setId_];

  v11 = (v2 + *(v5 + 28));
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_222C9448C();
  [v9 setGroundTruthType_];

  v15 = sub_222C9323C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  v18 = v2 + *(v5 + 32);
  LOWORD(v24) = *v18;
  BYTE2(v24) = *(v18 + 2);
  sub_222BFC6DC();
  v19 = sub_222C9321C();
  v21 = v20;
  v22 = sub_222C934FC();
  [v9 setGroundTruthSource_];

  sub_222B803C0(v19, v21);

  return v9;
}

id sub_222BF9E2C(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C96900;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_222B9A614();
  *(v7 + 64) = v9;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  if (v3 <= 1)
  {
    v10 = 0x654D6E69616D6F64;
    v11 = 0xEE00736567617373;
    if (v3)
    {
      v10 = 0x68506E69616D6F64;
      v11 = 0xEF6C6C6143656E6FLL;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v10 = 0x656D7269666E6F63;
      goto LABEL_8;
    }

    if (v3 == 3)
    {
      v10 = 0x6574616E696D6F6ELL;
LABEL_8:
      v11 = 0xE900000000000064;
      goto LABEL_10;
    }

    v10 = 0x6974636572726F63;
    v11 = 0xEA00000000006E6FLL;
  }

LABEL_10:
  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_222C949EC();
  [v6 setPredicate_];

  v34[0] = 0;
  v13 = [v6 execute_];
  v14 = v34[0];
  if (!v13)
  {
    v20 = v34[0];
    v15 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  v15 = v13;
  type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  v16 = sub_222C9471C();
  v17 = v14;

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_22:

LABEL_23:
    type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v31 = sub_222C9448C();

    [v19 setName_];

    goto LABEL_24;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223DC9B30](0, v16);
    goto LABEL_16;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_18:
    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);
    v22 = v15;
    v23 = sub_222C942FC();
    v24 = sub_222C94A4C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      v27 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v28 = sub_222C944EC();
      v30 = sub_222B437C0(v28, v29, v34);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_222B39000, v23, v24, "Error searching for existing suggestion tag error=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      MEMORY[0x223DCA8C0](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_23;
  }

  v18 = *(v16 + 32);
LABEL_16:
  v19 = v18;

LABEL_24:
  v32 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_222BFA3A0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v150 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v132 - v5;
  v154 = type metadata accessor for ThinContactGroundTruth();
  v152 = *(v154 - 8);
  v7 = *(v152 + 64);
  MEMORY[0x28223BE20](v154);
  v153 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222C9343C();
  v144 = *(v9 - 8);
  v10 = *(v144 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v151 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v132 - v13;
  v147 = sub_222C9367C();
  v15 = *(v147 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v147);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v132 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v132 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v132 - v26;
  v28 = [v1 id];
  if (!v28)
  {
    if (qword_280FDFE78 != -1)
    {
LABEL_57:
      swift_once();
    }

    v41 = sub_222C9431C();
    __swift_project_value_buffer(v41, qword_280FE2340);
    v42 = sub_222C942FC();
    v43 = sub_222C94A3C();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v150;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_222B39000, v42, v43, "PICSStoreCoreData: Missing UUID for pics data record. Returning Nil.", v46, 2u);
      MEMORY[0x223DCA8C0](v46, -1, -1);
    }

    v47 = type metadata accessor for PlusContactSuggestion();
    v48 = *(*(v47 - 8) + 56);

    return v48(v45, 1, 1, v47);
  }

  v145 = v15;
  v29 = v28;
  sub_222C9363C();

  v30 = [v2 usoPersonQuery];
  if (!v30)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v61 = sub_222C9431C();
    __swift_project_value_buffer(v61, qword_280FE2340);
    v62 = v145;
    v63 = v27;
    v64 = v147;
    (*(v145 + 16))(v22, v27, v147);
    v65 = sub_222C942FC();
    v66 = sub_222C94A3C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v158 = v68;
      *v67 = 136315138;
      sub_222BFC640(&qword_280FE0298, MEMORY[0x277CC95F0]);
      v69 = sub_222C9517C();
      v143 = v63;
      v71 = v70;
      v72 = *(v62 + 8);
      v72(v22, v64);
      v73 = sub_222B437C0(v69, v71, &v158);

      *(v67 + 4) = v73;
      _os_log_impl(&dword_222B39000, v65, v66, "PICSStoreCoreData: Empty uso data for %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x223DCA8C0](v68, -1, -1);
      MEMORY[0x223DCA8C0](v67, -1, -1);

      v72(v143, v64);
    }

    else
    {

      v74 = *(v62 + 8);
      v74(v22, v64);
      v74(v27, v64);
    }

    v75 = v150;
    v58 = type metadata accessor for PlusContactSuggestion();
    v59 = *(*(v58 - 8) + 56);
    v60 = v75;
    return v59(v60, 1, 1, v58);
  }

  v141 = v19;
  v142 = v25;
  v31 = v30;
  v32 = sub_222C9350C();
  v34 = v33;

  v35 = [v2 inferredContactReference];
  if (!v35 || (v36 = v35, sub_222BFB850(&v158), v36, !*(&v158 + 1)))
  {
    v50 = v27;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v51 = sub_222C9431C();
    __swift_project_value_buffer(v51, qword_280FE2340);
    v52 = sub_222C942FC();
    v53 = sub_222C94A3C();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v150;
    v56 = v147;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_222B39000, v52, v53, "PICSStoreCoreData: Empty inferred contact reference for contact suggestion", v57, 2u);
      MEMORY[0x223DCA8C0](v57, -1, -1);
    }

    sub_222B803C0(v32, v34);

    (*(v145 + 8))(v50, v56);
    v58 = type metadata accessor for PlusContactSuggestion();
    v59 = *(*(v58 - 8) + 56);
    v60 = v55;
    return v59(v60, 1, 1, v58);
  }

  v143 = v27;
  v136 = v158;
  v134 = v159;
  v135 = v160;
  v37 = [v2 contributingGroundTruth];
  if (!v37)
  {
    sub_222B505A8(0, &qword_27D026B88, 0x277CBEB70);
    v37 = MEMORY[0x223DC97A0](MEMORY[0x277D84F90]);
  }

  v133 = v2;
  v38 = [v2 tags];
  v39 = MEMORY[0x277D84F90];
  v148 = MEMORY[0x277D84F90];
  v138 = v34;
  v140 = v32;
  v137 = v37;
  if (!v38)
  {
    v139 = 0;
    v40 = v151;
    goto LABEL_61;
  }

  v157 = MEMORY[0x277D84F90];
  v149 = v38;
  sub_222C94A0C();
  sub_222BFC640(&qword_27D026B90, MEMORY[0x277CC9178]);
  sub_222C94B9C();
  v40 = v151;
  if (v160)
  {
    v146 = MEMORY[0x277D84F90];
    do
    {
      sub_222BF54CC(&v158, v155);
      type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
      if ((swift_dynamicCast() & 1) != 0 && v156)
      {
        MEMORY[0x223DC94A0]();
        if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v90 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v146 = v157;
      }

      sub_222C94B9C();
    }

    while (v160);
  }

  else
  {
    v146 = v39;
  }

  (*(v144 + 8))(v14, v9);
  v76 = v146;
  if (v146 >> 62)
  {
    v149 = (v146 & 0xFFFFFFFFFFFFFF8);
    v77 = sub_222C94C6C();
    if (v77)
    {
      goto LABEL_31;
    }

LABEL_59:
    v139 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

  v149 = (v146 & 0xFFFFFFFFFFFFFF8);
  v77 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v77)
  {
    goto LABEL_59;
  }

LABEL_31:
  v78 = 0;
  v79 = v76 & 0xC000000000000001;
  v139 = MEMORY[0x277D84F90];
  do
  {
    v80 = v78;
    while (1)
    {
      if (v79)
      {
        v81 = MEMORY[0x223DC9B30](v80, v76);
      }

      else
      {
        if (v80 >= *(v149 + 2))
        {
          goto LABEL_56;
        }

        v81 = *(v76 + 8 * v80 + 32);
      }

      v82 = v81;
      v78 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v83 = [v81 name];
      if (v83)
      {
        break;
      }

LABEL_34:
      ++v80;
      if (v78 == v77)
      {
        goto LABEL_60;
      }
    }

    v84 = v83;
    sub_222C9449C();

    v76 = v146;
    v85 = sub_222C94FDC();
    v40 = v151;
    swift_bridgeObjectRelease_n();

    if (v85 >= 5)
    {
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v139 = sub_222B4B454(0, *(v139 + 2) + 1, 1, v139);
    }

    v88 = *(v139 + 2);
    v87 = *(v139 + 3);
    if (v88 >= v87 >> 1)
    {
      v139 = sub_222B4B454((v87 > 1), v88 + 1, 1, v139);
    }

    v89 = v139;
    *(v139 + 2) = v88 + 1;
    v89[v88 + 32] = v85;
    v76 = v146;
  }

  while (v78 != v77);
LABEL_60:

LABEL_61:
  v157 = MEMORY[0x277D84F90];
  sub_222C94A0C();
  sub_222BFC640(&qword_27D026B90, MEMORY[0x277CC9178]);
  sub_222C94B9C();
  if (v160)
  {
    v148 = MEMORY[0x277D84F90];
    do
    {
      sub_222BF54CC(&v158, v155);
      type metadata accessor for ThinContactGroundTruthCoreDataRecord();
      if ((swift_dynamicCast() & 1) != 0 && v156)
      {
        MEMORY[0x223DC94A0]();
        if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v91 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v148 = v157;
      }

      sub_222C94B9C();
    }

    while (v160);
  }

  (*(v144 + 8))(v40, v9);
  v92 = v148;
  if (v148 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
  {
    v94 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v95 = 0;
    v96 = v92 & 0xC000000000000001;
    v97 = v92 & 0xFFFFFFFFFFFFFF8;
    v98 = (v152 + 48);
    while (1)
    {
      if (v96)
      {
        v99 = MEMORY[0x223DC9B30](v95, v92);
      }

      else
      {
        if (v95 >= *(v97 + 16))
        {
          goto LABEL_95;
        }

        v99 = *(v92 + 8 * v95 + 32);
      }

      v100 = v99;
      v101 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      sub_222BFBBE8(v6);

      if ((*v98)(v6, 1, v154) == 1)
      {
        sub_222BFC574(v6);
      }

      else
      {
        sub_222BFC5DC(v6, v153);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_222B4A984(0, v94[2] + 1, 1, v94);
        }

        v103 = v94[2];
        v102 = v94[3];
        if (v103 >= v102 >> 1)
        {
          v94 = sub_222B4A984(v102 > 1, v103 + 1, 1, v94);
        }

        v94[2] = v103 + 1;
        sub_222BFC5DC(v153, v94 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v103);
        v92 = v148;
      }

      ++v95;
      if (v101 == i)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

LABEL_86:

  v104 = sub_222C931DC();
  v105 = *(v104 + 48);
  v106 = *(v104 + 52);
  swift_allocObject();
  sub_222C931CC();
  sub_222C9378C();
  sub_222BFC640(&qword_27D026C98, MEMORY[0x277D5E850]);
  sub_222C931BC();

  v107 = v158;
  v108 = *(v145 + 16);
  v108(v142, v143, v147);
  v109 = v133;
  [v133 timestamp];
  v111 = v110;
  v112 = MEMORY[0x277D84F90];
  if (v139)
  {
    v113 = v139;
  }

  else
  {
    v113 = MEMORY[0x277D84F90];
  }

  v114 = sub_222B72A0C(v113);

  [v109 score];
  v116 = v115;
  v117 = [v109 scoreHistory];
  if (v117)
  {
    v118 = v117;
    v119 = sub_222C9350C();
    v121 = v120;

    sub_222B80358(v119, v121);
    v122 = sub_222BF4F44(v119, v121);
    sub_222B803C0(v119, v121);
    sub_222B803C0(v119, v121);
    if (v122)
    {
      v112 = v122;
    }
  }

  v123 = v150;
  v124 = v142;
  v125 = v147;
  v108(v150, v142, v147);
  v126 = type metadata accessor for PlusContactSuggestion();
  *&v123[v126[5]] = v107;

  v127 = *(&v136 + 1);

  v128 = v136;
  sub_222B450E8(v136, v127);
  v129 = &v123[v126[6]];
  *v129 = v128;
  *(v129 + 1) = v127;
  *(v129 + 2) = 0;
  *(v129 + 3) = 0;
  *&v123[v126[7]] = sub_222C17488(50, v94);
  *&v123[v126[8]] = v111;
  *&v123[v126[9]] = v114;
  *&v123[v126[10]] = v116;
  v130 = sub_222C17748(0x32uLL, v112);

  sub_222B803C0(v140, v138);

  v131 = *(v145 + 8);
  v131(v124, v125);
  v131(v143, v125);
  *&v123[v126[11]] = v130;
  return (*(*(v126 - 1) + 56))(v123, 0, 1, v126);
}

void sub_222BFB850(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 contactId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9449C();
    v8 = v7;

    v9 = [v2 contactLabel];
    if (v9)
    {
      v10 = v9;
      v11 = sub_222C9449C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v13;
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v15 = sub_222C942FC();
    v16 = sub_222C94A3C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222B39000, v15, v16, "Contact reference missing mandatory contact id.", v17, 2u);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

uint64_t sub_222BFB9B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_222C935EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = [v2 source];
  if (v12)
  {
    v13 = v12;
    v14 = sub_222C9449C();
    v16 = v15;

    v17 = [v2 timestamp];
    if (v17)
    {
      v18 = v17;
      sub_222C935CC();

      v19 = *(v5 + 32);
      v19(v11, v9, v4);
      v20 = type metadata accessor for ContactSuggestionStoreUpdate();
      v19(a1 + *(v20 + 20), v11, v4);
      *a1 = v14;
      a1[1] = v16;
      return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    }
  }

  v22 = type metadata accessor for ContactSuggestionStoreUpdate();
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, 1, 1, v22);
}

uint64_t sub_222BFBBE8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  v14 = [v1 id];
  if (v14)
  {
    v15 = v14;
    sub_222C9363C();

    v16 = [v1 groundTruthType];
    if (v16)
    {
      v17 = v16;
      v18 = sub_222C9449C();
      v20 = v19;

      v21 = [v1 groundTruthSource];
      if (v21)
      {
        v22 = v21;
        v23 = sub_222C9350C();
        v25 = v24;

        v26 = sub_222C931DC();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        sub_222C931CC();
        sub_222BFC688();
        sub_222C931BC();
        sub_222B803C0(v23, v25);

        LOWORD(v22) = v69;
        LOBYTE(v25) = BYTE2(v69);
        v59 = v68;
        (*(v3 + 32))(v68, v13, v2);
        v60 = type metadata accessor for ThinContactGroundTruth();
        v61 = (v59 + *(v60 + 20));
        *v61 = v18;
        v61[1] = v20;
        v62 = v59 + *(v60 + 24);
        *v62 = v22;
        *(v62 + 2) = v25;
        return (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v48 = sub_222C9431C();
      __swift_project_value_buffer(v48, qword_280FE2340);
      (*(v3 + 16))(v11, v13, v2);
      v49 = v3;
      v50 = sub_222C942FC();
      v51 = sub_222C94A4C();
      if (!os_log_type_enabled(v50, v51))
      {

        v64 = *(v49 + 8);
        v64(v11, v2);
        v64(v13, v2);
        goto LABEL_23;
      }

      v52 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69 = v67;
      *v52 = 136315138;
      sub_222BFC640(&qword_280FE0298, MEMORY[0x277CC95F0]);
      v53 = sub_222C9517C();
      v55 = v54;
      v45 = *(v49 + 8);
      v45(v11, v2);
      v56 = sub_222B437C0(v53, v55, &v69);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_222B39000, v50, v51, "PICSStoreCoreData: Failed to retrieve source data when reading ThinContactGroundTruth with ID: %s.", v52, 0xCu);
      v57 = v67;
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x223DCA8C0](v57, -1, -1);
      MEMORY[0x223DCA8C0](v52, -1, -1);
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v37 = sub_222C9431C();
      __swift_project_value_buffer(v37, qword_280FE2340);
      (*(v3 + 16))(v8, v13, v2);
      v38 = sub_222C942FC();
      v39 = sub_222C94A4C();
      if (!os_log_type_enabled(v38, v39))
      {

        v58 = *(v3 + 8);
        v58(v8, v2);
        v58(v13, v2);
        goto LABEL_23;
      }

      v40 = v3;
      v41 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69 = v67;
      *v41 = 136315138;
      sub_222BFC640(&qword_280FE0298, MEMORY[0x277CC95F0]);
      v42 = sub_222C9517C();
      v44 = v43;
      v45 = *(v40 + 8);
      v45(v8, v2);
      v46 = sub_222B437C0(v42, v44, &v69);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_222B39000, v38, v39, "PICSStoreCoreData: Failed to retrieve type when reading ThinContactGroundTruth with ID: %s.", v41, 0xCu);
      v47 = v67;
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x223DCA8C0](v47, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);
    }

    v45(v13, v2);
LABEL_23:
    v65 = type metadata accessor for ThinContactGroundTruth();
    return (*(*(v65 - 8) + 56))(v68, 1, 1, v65);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v29 = sub_222C9431C();
  __swift_project_value_buffer(v29, qword_280FE2340);
  v30 = sub_222C942FC();
  v31 = sub_222C94A4C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_222B39000, v30, v31, "PICSStoreCoreData: Failed to retrieve ID when reading ThinContactGroundTruth.", v32, 2u);
    MEMORY[0x223DCA8C0](v32, -1, -1);
  }

  v33 = type metadata accessor for ThinContactGroundTruth();
  v34 = *(*(v33 - 8) + 56);
  v35 = v33;
  v36 = v68;

  return v34(v36, 1, 1, v35);
}

uint64_t sub_222BFC574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BFC5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BFC640(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_222BFC688()
{
  result = qword_27D026CA0;
  if (!qword_27D026CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CA0);
  }

  return result;
}

unint64_t sub_222BFC6DC()
{
  result = qword_27D026CA8;
  if (!qword_27D026CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CA8);
  }

  return result;
}

uint64_t sub_222BFC730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BFC794(uint64_t a1)
{
  v2 = type metadata accessor for ThinContactGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactSuggestionOutcomeGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactSuggestionOutcomeGroundTruth.contactQuery.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContactSuggestionOutcomeGroundTruth() + 20));
}

uint64_t type metadata accessor for ContactSuggestionOutcomeGroundTruth()
{
  result = qword_280FDC678;
  if (!qword_280FDC678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactSuggestionOutcomeGroundTruth.suggestionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactSuggestionOutcomeGroundTruth() + 24);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContactSuggestionOutcomeGroundTruth.contactReference.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ContactSuggestionOutcomeGroundTruth() + 28));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t ContactSuggestionOutcomeGroundTruth.outcome.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ContactSuggestionOutcomeGroundTruth.domain.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t sub_222BFCA18()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656D6F6374756FLL;
  if (v1 != 4)
  {
    v3 = 0x6E69616D6F64;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 1)
  {
    v4 = 0x51746361746E6F63;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222BFCAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BFDBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BFCAF8(uint64_t a1)
{
  v2 = sub_222BFD6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BFCB34(uint64_t a1)
{
  v2 = sub_222BFD6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactSuggestionOutcomeGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026CB0, &qword_222C9FD40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BFD6B8();
  sub_222C9536C();
  LOBYTE(v18[0]) = 0;
  sub_222C9367C();
  sub_222BFD9A0(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
    v18[0] = *(v3 + v11[5]);
    v19 = 1;
    sub_222C9378C();
    sub_222BFD9A0(&qword_27D025A98, MEMORY[0x277D5E850]);
    sub_222C9512C();
    v12 = v11[6];
    LOBYTE(v18[0]) = 2;
    sub_222C9512C();
    v13 = (v3 + v11[7]);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v18[0] = *v13;
    v18[1] = v14;
    v18[2] = v15;
    v18[3] = v16;
    v19 = 3;
    sub_222BFD70C();

    sub_222C9512C();

    LOWORD(v18[0]) = *(v3 + v11[8]);
    v19 = 4;
    sub_222BBB988();
    sub_222C9512C();
    LOBYTE(v18[0]) = *(v3 + v11[9]);
    v19 = 5;
    sub_222BFD760();
    sub_222C9512C();
  }

  return (*(v6 + 8))(v9, v5);
}