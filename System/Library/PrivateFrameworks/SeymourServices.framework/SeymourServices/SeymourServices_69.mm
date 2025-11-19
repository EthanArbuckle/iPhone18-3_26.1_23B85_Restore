void sub_227570CBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v70 = a7;
  LODWORD(v69) = a6;
  v68 = a5;
  v11 = sub_22766B390();
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227667400();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753C278(v20, a2, a3, a4, v69, v70);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v70 = v16;
    v61 = v11;
    v62 = v14;
    v67 = v15;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v71;
LABEL_22:
      v71 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v70;
      v63 = "ManagedWorkoutPlanReference";
      v64 = v70 + 16;
      v65 = (v70 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v69 = v28;
      v29 = v67;
      v26 = v71;
      v30 = v19;
      while (1)
      {
        if (v69 == a3)
        {
          __break(1u);
          return;
        }

        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = v31;
        v34 = v68;
        v35 = [v33 insertNewObjectForEntityForName:v32 inManagedObjectContext:v68];

        type metadata accessor for ManagedWorkoutPlanScheduledItem();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v47 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D51000], v47);
          swift_willThrow();
          goto LABEL_26;
        }

        v37 = v36;
        v38 = v21;
        v71 = v26;
        v39 = sub_2276673F0();
        v40 = 0x7FFFFFFFLL;
        if (v39 < 0x7FFFFFFF)
        {
          v40 = v39;
        }

        v41 = v40 <= 0xFFFFFFFF80000000 ? 0xFFFFFFFF80000000 : v40;
        [v37 setDuration_];
        sub_2276673E0();
        v42 = sub_22766BFD0();

        [v37 setModalityIdentifier_];

        v43 = sub_2276673C0();
        v44 = v71;
        v45 = sub_22764936C(v34, v43);
        v26 = v44;
        if (v44)
        {
          break;
        }

        v46 = v45;
        ++a3;

        [v37 setFilterProperties_];

        v29 = v67;
        (*v65)(v30, v67);
        v21 = v38;
        v27 = v70;
        if (v25 == a3)
        {
          goto LABEL_22;
        }
      }

LABEL_26:
      v49 = v62;
      sub_22766A770();
      v50 = v26;
      v51 = sub_22766B380();
      v52 = sub_22766C8B0();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v61;
      v55 = v66;
      if (v53)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v26;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_226E8E000, v51, v52, "%@", v56, 0xCu);
        sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v57, -1, -1);
        v60 = v56;
        v49 = v62;
        MEMORY[0x22AA9A450](v60, -1, -1);
      }

      (*(v55 + 8))(v49, v54);
      swift_willThrow();
      sub_226EDC474(0);
      (*v65)(v30, v67);
    }
  }
}

void sub_2275712E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v74 = a5;
  v76 = a7;
  LODWORD(v75) = a6;
  v11 = sub_22766B390();
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227668480();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753C3B8(v20, a2, a3, a4, v75, v76);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v76 = v16;
    v65 = v11;
    v66 = v19;
    v64 = v14;
    v72 = v15;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    if (a4 >> 1 == a3)
    {
      v25 = v73;
LABEL_9:
      v73 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = a3;
      v27 = v76;
      v68 = "ManagedWorkoutPlanItem";
      v69 = v76 + 16;
      v70 = (v76 + 8);
      if (a3 <= (a4 >> 1))
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v75 = v28;
      v29 = v72;
      v25 = v73;
      v30 = v66;
      v31 = v74;
      v67 = a4 >> 1;
      while (1)
      {
        if (v75 == v26)
        {
          __break(1u);
          return;
        }

        v32 = v26;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * v26, v29);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v31];

        type metadata accessor for ManagedWorkoutPlanModalityPreference();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v51 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v45 = swift_allocError();
          (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D51000], v51);
          swift_willThrow();
          goto LABEL_22;
        }

        v37 = v36;
        v38 = v21;
        sub_227668460();
        v39 = sub_22766BFD0();

        [v37 setModalityIdentifier_];

        v40 = sub_227668470();
        v41 = v25;
        v42 = sub_22747F294(v40);

        v43 = sub_226F3D9D0(v42);

        v44 = sub_2276496D4(v31, v43);
        v45 = v41;
        if (v41)
        {
          break;
        }

        v46 = v44;

        [v37 setPreferredMusicGenres_];

        v47 = sub_227668440();
        v48 = sub_22747F268(v47);
        v31 = v74;

        v49 = sub_226F3D954(v48);

        v25 = 0;
        v50 = sub_227649A14(v31, v49);

        [v37 setPreferredTrainers_];

        v26 = v32 + 1;
        v29 = v72;
        (*v70)(v30, v72);
        v21 = v38;
        v27 = v76;
        if (v67 == v32 + 1)
        {
          goto LABEL_9;
        }
      }

LABEL_22:
      v53 = v64;
      sub_22766A770();
      v54 = v45;
      v55 = sub_22766B380();
      v56 = sub_22766C8B0();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v65;
      v59 = v71;
      if (v57)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = v45;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 4) = v63;
        *v61 = v63;
        _os_log_impl(&dword_226E8E000, v55, v56, "%@", v60, 0xCu);
        sub_226E97D1C(v61, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v61, -1, -1);
        MEMORY[0x22AA9A450](v60, -1, -1);
      }

      (*(v59 + 8))(v53, v58);
      swift_willThrow();
      sub_226EDC474(0);
      (*v70)(v66, v72);
    }
  }
}

void sub_227571984(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF360, &qword_22768BBF0, &qword_27D7BF368, sub_227596F40);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedWorkoutPlan";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedWorkoutPlanItem();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setWorkout_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227571E40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276638D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753C4F8(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a2;
    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v56;
LABEL_17:
      v56 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v59;
      v52 = "ManagedWorkoutIdentifier";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v58 = v27;
      v28 = v15;
      v25 = v56;
      v29 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v23 + *(v26 + 72) * a3, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v30;
        v33 = v57;
        v34 = [v32 insertNewObjectForEntityForName:v31 inManagedObjectContext:v57];

        type metadata accessor for ManagedWorkoutPlan();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2275EEB10(v35, v33);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v54)(v29, v28);

        v26 = v59;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v25;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v25;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v28);
    }
  }
}

void sub_2275723B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF340, &qword_22768BBE0, &qword_27D7BF348, sub_2275962B0);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedUserAccountNotification";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedWorkoutIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227572870(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v49 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF330, &qword_22768BBD8, &qword_27D7BF338, sub_227596830);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v49;
    v47 = v17;
    v48 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v46 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + a3);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v27 = *v26;
        v28 = objc_opt_self();
        v29 = sub_22766BFD0();
        v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v24];

        type metadata accessor for ManagedUserAccountNotification();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        [v31 setShownState_];

        --v25;
        ++v26;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v32 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v33 = swift_allocError();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D51000], v32);
      swift_willThrow();
      v35 = v47;
      sub_22766A770();
      v36 = v33;
      v37 = sub_22766B380();
      v38 = sub_22766C8B0();
      v39 = v33;

      v40 = os_log_type_enabled(v37, v38);
      v41 = v48;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v39;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v41 + 8))(v35, v46);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227572CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664AA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753C638(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "ManagedTrainerReference";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedUpNextQueueItem();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_227445B48(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_227573268(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664EB0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753C778(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "ManagedTrainerMetadata";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedTrainerReference();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_22750B934(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_2275737D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664A10();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753C8B8(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a2;
    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v56;
LABEL_17:
      v56 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v59;
      v52 = "ManagedTrainerIdentifier";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v58 = v27;
      v28 = v15;
      v25 = v56;
      v29 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v23 + *(v26 + 72) * a3, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v30;
        v33 = v57;
        v34 = [v32 insertNewObjectForEntityForName:v31 inManagedObjectContext:v57];

        type metadata accessor for ManagedTrainerMetadata();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_22750A3AC(v35, v33);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v54)(v29, v28);

        v26 = v59;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v25;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v25;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v28);
    }
  }
}

void sub_227573D4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF2F0, &qword_22768BBB8, &qword_27D7BF2F8, sub_227596304);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedTrainerEvent";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedTrainerIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227574208(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v66 = a7;
  v67 = a5;
  v12 = sub_22766B390();
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_227663C90();
  v16 = *(v71 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v71);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753C9F8(v20, a2, a3, a4, a6, v66);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v65 = v16;
    v66 = v19;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v56 = v15;
      v57 = v12;
      v64 = a4 >> 1;
      v25 = v65;
      v26 = v66;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v60 = "ManagedThemeIdentifier";
        v61 = v65 + 16;
        v27 = v64;
        if (a3 > v64)
        {
          v27 = a3;
        }

        v62 = (v65 + 8);
        v63 = v27;
        v59 = a2;
        while (1)
        {
          if (v63 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v26, v21 + *(v25 + 72) * a3, v71);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v67];

          type metadata accessor for ManagedTrainerEvent();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          ++a3;
          sub_227663C30();
          v33 = sub_22766BFD0();

          [v32 setIdentifier_];

          v34 = sub_227663C50();
          v36 = v35;
          v68 = v34;
          v69 = v35;
          v38 = v37 & 1;
          v70 = v37 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9F8, &qword_22767FA38);
          sub_227663AD0();
          v39 = sub_22766BFD0();
          v40 = v34;
          v21 = v59;
          v41 = v36;
          v26 = v66;
          v42 = v71;
          sub_226EB2DFC(v40, v41, v38);

          [v32 setType_];

          v25 = v65;
          sub_227663C80();
          [v32 setStartTime_];
          sub_227663C60();
          [v32 setDuration_];
          sub_227663C40();
          [v32 setLeadDuration_];

          (*v62)(v26, v42);
          if (v64 == a3)
          {
            goto LABEL_13;
          }
        }

        v43 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v44 = swift_allocError();
        (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D51000], v43);
        swift_willThrow();
        v46 = v56;
        sub_22766A770();
        v47 = v44;
        v48 = sub_22766B380();
        v49 = sub_22766C8B0();
        v50 = v44;

        if (os_log_type_enabled(v48, v49))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          v53 = v50;
          v54 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 4) = v54;
          *v52 = v54;
          _os_log_impl(&dword_226E8E000, v48, v49, "%@", v51, 0xCu);
          sub_226E97D1C(v52, &unk_27D7B9660, &qword_2276740C0);
          v55 = v52;
          v26 = v66;
          MEMORY[0x22AA9A450](v55, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v58 + 8))(v46, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v62)(v26, v71);
      }
    }
  }
}

void sub_227574848(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF2C8, &unk_22768BBA0, &unk_27D7BF2D0, sub_227596358);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedSyncOperation";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedThemeIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227574D04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v64 = a7;
  v65 = a5;
  LODWORD(v63) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276694E0();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227664140();
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22753CB38(a1, a2, a3, a4, v63, v64);
  if (v23)
  {
    if (v23 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v61 = v18;
    v62 = v15;
    v64 = a2;
    v53 = v14;
    v54 = v19;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
      swift_willThrow();
    }

    else
    {
      v63 = a4 >> 1;
      v26 = v54;
      v27 = v66;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v22;
        v57 = "ManagedSyncEncryptionKey";
        v58 = v66 + 16;
        v29 = (v60 + 8);
        v30 = v63;
        if (a3 > v63)
        {
          v30 = a3;
        }

        v59 = (v66 + 8);
        v60 = v30;
        while (1)
        {
          if (v60 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v28, v64 + *(v27 + 72) * a3, v26);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v65];

          type metadata accessor for ManagedSyncOperation();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227664110();
          sub_2276640F0();
          v36 = sub_22766BFD0();

          [v35 setAction_];

          v37 = v61;
          sub_2276640D0();
          sub_2276694C0();
          v38 = v37;
          v27 = v66;
          (*v29)(v38, v62);
          v39 = sub_22766BFD0();

          [v35 setZoneName_];

          sub_2276640C0();
          v40 = sub_22766BFD0();

          [v35 setSyncIdentifier_];

          sub_227664130();
          [v35 setTimestamp_];
          sub_227664120();
          [v35 setDomain_];

          (*v59)(v28, v26);
          if (v63 == a3)
          {
            goto LABEL_13;
          }
        }

        v41 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v42 = swift_allocError();
        (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
        swift_willThrow();
        v44 = v53;
        sub_22766A770();
        v45 = v42;
        v46 = sub_22766B380();
        v47 = sub_22766C8B0();
        v48 = v42;

        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v48;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v55 + 8))(v44, v56);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v28, v54);
      }
    }
  }
}

void sub_2275753E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v66 = a7;
  v67 = a5;
  LODWORD(v65) = a6;
  v11 = sub_22766B390();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SyncEncryptionKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753CC78(v20, a2, a3, a4, v65, v66);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v14;
    v61 = v19;
    v64 = v16;
    v66 = v15;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
LABEL_15:
      sub_226EDC474(0);
    }

    else
    {
      v59 = v11;
      v63 = "ManagedSyncZoneChangeWindow";
      if (a3 <= v25)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v65 = v26;
      v27 = v66;
      v28 = v61;
      while (1)
      {
        if (v65 == a3)
        {
          __break(1u);
          return;
        }

        v29 = v21;
        sub_227596718(v21 + *(v64 + 72) * a3, v28, type metadata accessor for SyncEncryptionKey);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v67];

        type metadata accessor for ManagedSyncEncryptionKey();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {
          break;
        }

        v34 = v33;
        ++a3;
        sub_2276694C0();
        v35 = sub_22766BFD0();

        [v34 setZoneName_];

        v36 = v28 + *(v27 + 20);
        v37 = v70;
        sub_22766B470();
        v70 = v37;
        v38 = v68;
        v39 = v69;
        v40 = sub_227662560();
        sub_226EDC420(v38, v39);
        [v34 setKey_];

        v27 = v66;
        v41 = (v28 + *(v66 + 24));
        v42 = *v41;
        v43 = v41[1];
        v44 = sub_22766BFD0();
        [v34 setEtag_];

        v45 = v28 + *(v27 + 28);
        v46 = sub_227662790();
        [v34 setIdentifier_];

        sub_2275966B8(v28, type metadata accessor for SyncEncryptionKey);
        v21 = v29;
        if (v25 == a3)
        {
          goto LABEL_15;
        }
      }

      v47 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v48 = swift_allocError();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D51000], v47);
      swift_willThrow();
      v50 = v60;
      sub_22766A770();
      v51 = v48;
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v48;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_226E8E000, v52, v53, "%@", v54, 0xCu);
        sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v55, -1, -1);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      (*(v62 + 8))(v50, v59);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v61, type metadata accessor for SyncEncryptionKey);
    }
  }
}

void sub_227575A18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v54 = a7;
  LODWORD(v53) = a6;
  v55 = a5;
  v11 = sub_22766B390();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SyncZoneChangeWindow();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753CDB8(a1, a2, a3, a4, v53, v54);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v54 = v16;
    v49 = v14;
    v50 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
      swift_willThrow();
    }

    else if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = a4 >> 1;
      v24 = v19;
      v52 = "ManagedSyncChangeTag";
      if (a3 <= (a4 >> 1))
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v53 = v25;
      while (1)
      {
        if (v53 == a3)
        {
          __break(1u);
          return;
        }

        sub_227596718(a2 + *(v54 + 72) * a3, v24, type metadata accessor for SyncZoneChangeWindow);
        v26 = objc_opt_self();
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v55];

        type metadata accessor for ManagedSyncZoneChangeWindow();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        ++a3;
        sub_2276694C0();
        v31 = sub_22766BFD0();

        [v30 setZoneName_];

        v32 = (v24 + *(v15 + 20));
        v33 = *v32;
        v34 = v32[1];
        v35 = sub_227662560();
        [v30 setChangeWindow_];

        sub_2275966B8(v24, type metadata accessor for SyncZoneChangeWindow);
        if (v23 == a3)
        {
          goto LABEL_14;
        }
      }

      v36 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v37 = swift_allocError();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
      swift_willThrow();
      v39 = v49;
      sub_22766A770();
      v40 = v37;
      v41 = sub_22766B380();
      v42 = sub_22766C8B0();
      v43 = v37;

      if (os_log_type_enabled(v41, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v43;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v41, v42, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v45, -1, -1);
        MEMORY[0x22AA9A450](v44, -1, -1);
      }

      (*(v51 + 8))(v39, v50);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v24, type metadata accessor for SyncZoneChangeWindow);
    }
  }
}

void sub_227575FAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v59 = a7;
  LODWORD(v58) = a6;
  v60 = a5;
  v11 = sub_22766B390();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SyncChangeTag();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22753CEF8(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v59 = v16;
    v54 = v14;
    v55 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
      swift_willThrow();
    }

    else if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = a4 >> 1;
      v24 = a2;
      v25 = v15;
      v57 = "ManagedStreamingKeyNonce";
      if (a3 <= (a4 >> 1))
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v58 = v26;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        sub_227596718(v24 + *(v59 + 72) * a3, v19, type metadata accessor for SyncChangeTag);
        v27 = objc_opt_self();
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v60];

        type metadata accessor for ManagedSyncChangeTag();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        ++a3;
        v32 = *v19;
        v33 = v19[1];
        v34 = sub_22766BFD0();
        [v31 setSyncIdentifier_];

        v35 = v19 + *(v25 + 20);
        sub_2276694C0();
        v36 = sub_22766BFD0();

        [v31 setZoneName_];

        v37 = (v19 + *(v25 + 24));
        v38 = *v37;
        v39 = v37[1];
        v40 = sub_22766BFD0();
        [v31 setEtag_];

        sub_2275966B8(v19, type metadata accessor for SyncChangeTag);
        if (v23 == a3)
        {
          goto LABEL_14;
        }
      }

      v41 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
      swift_willThrow();
      v44 = v54;
      sub_22766A770();
      v45 = v42;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      v48 = v42;

      if (os_log_type_enabled(v46, v47))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v48;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
        sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v50, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v56 + 8))(v44, v55);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v19, type metadata accessor for SyncChangeTag);
    }
  }
}

void sub_22757656C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v53 = a5;
  v14 = sub_22766B390();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753BD98(v18, a2, a3, a4, a6, a7, &qword_27D7BF278, &qword_22768BB78, &qword_27D7BF280, sub_2275969EC);
  if (v20)
  {
    if (v20 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v50 = v17;
  if (sub_227669C10())
  {
    v21 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
    swift_willThrow();
    return;
  }

  v49[0] = v14;
  v49[1] = v7;
  v23 = a4 >> 1;
  v24 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_15:
    sub_226EDC474(0);
  }

  else
  {
    v52 = "ManagedSocialMediaHandle";
    if (a3 > v23)
    {
      v23 = a3;
    }

    v25 = v23 - a3;
    v26 = (v19 + 32 * a3 + 16);
    while (1)
    {
      if (!v25)
      {
        __break(1u);
        return;
      }

      v54 = v24;
      v27 = *(v26 - 2);
      v28 = *(v26 - 1);
      v30 = *v26;
      v29 = v26[1];
      v31 = objc_opt_self();
      sub_226F5E0B4(v27, v28);

      v32 = sub_22766BFD0();
      v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v53];

      type metadata accessor for ManagedStreamingKeyNonce();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        break;
      }

      v35 = v34;
      v36 = sub_227662560();
      [v35 setSeed_];

      v37 = sub_22766BFD0();
      [v35 setWorkoutIdentifier_];

      sub_226EDC420(v27, v28);

      --v25;
      v26 += 4;
      v24 = v54 - 1;
      if (v54 == 1)
      {
        goto LABEL_15;
      }
    }

    v38 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
    v39 = swift_allocError();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
    swift_willThrow();
    v41 = v50;
    sub_22766A770();
    v42 = v39;
    v43 = sub_22766B380();
    v44 = sub_22766C8B0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v39;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_226E8E000, v43, v44, "%@", v45, 0xCu);
      sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    (*(v51 + 8))(v41, v49[0]);
    swift_willThrow();
    sub_226EDC474(0);
    sub_226EDC420(v27, v28);
  }
}

void sub_227576A84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v65 = a7;
  v66 = a4;
  LODWORD(v64) = a6;
  v67 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276624A0();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2276653A0();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22753D038(a1, a2, a3, v66, v64, v65);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v61 = v17;
    v62 = v14;
    v63 = a2;
    v65 = v21;
    v55 = v18;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = v65;
      v66 >>= 1;
      v26 = v55;
      v27 = v71;
      if (v66 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v58 = "ManagedSkillLevelIdentifier";
        v59 = v71 + 16;
        v57 = (v60 + 8);
        v60 = v71 + 8;
        v28 = v66;
        if (a3 > v66)
        {
          v28 = a3;
        }

        v64 = v28;
        v53 = v11;
        v54 = v10;
        while (1)
        {
          if (v64 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v25, v63 + *(v27 + 72) * a3, v26);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v67];

          type metadata accessor for ManagedSocialMediaHandle();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          v34 = sub_227665390();
          v36 = v35;
          v68 = v34;
          v69 = v35;
          v38 = v37 & 1;
          v70 = v37 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF260, &qword_227673F78);
          sub_227663AD0();
          v39 = sub_22766BFD0();
          sub_226EB2DFC(v34, v36, v38);

          [v33 setPlatform_];

          v25 = v65;
          v40 = v61;
          sub_227665370();
          sub_227662390();
          (*v57)(v40, v62);
          v41 = sub_22766BFD0();

          [v33 setUrl_];

          (*v60)(v25, v26);
          v27 = v71;
          if (v66 == a3)
          {
            goto LABEL_13;
          }
        }

        v42 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v43 = swift_allocError();
        (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
        swift_willThrow();
        sub_22766A770();
        v45 = v43;
        v46 = sub_22766B380();
        v47 = sub_22766C8B0();
        v48 = v43;

        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v48;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v53 + 8))(v56, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v60)(v65, v55);
      }
    }
  }
}

void sub_22757714C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF250, &unk_22768BB60, &qword_27D7BF258, sub_2275963AC);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedSkillLevel";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedSkillLevelIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227577608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), unsigned int a6, uint64_t a7)
{
  v63 = a7;
  v64 = a5;
  v12 = sub_22766B390();
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276633A0();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753D178(v20, a2, a3, a4, a6, v63);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v23 = v56;
    v62 = v12;
    v63 = v19;
    v54 = v15;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
      swift_willThrow();
    }

    else
    {
      v60 = v21;
      v61 = a4 >> 1;
      v27 = v62;
      v26 = v63;
      if (a4 >> 1 == a3)
      {
LABEL_7:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v16;
        v29 = v23;
        v57 = "ManagedSessionScores";
        v58 = v23 + 16;
        v30 = v61;
        if (a3 > v61)
        {
          v30 = a3;
        }

        v59 = v30;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          (*(v29 + 16))(v26, v60 + *(v29 + 72) * a3, v16);
          v32 = objc_opt_self();
          v33 = sub_22766BFD0();
          v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v64];

          type metadata accessor for ManagedSkillLevel();
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
            break;
          }

          v36 = v35;
          sub_227663370();
          v37 = sub_22766BFD0();

          [v36 setIdentifier_];

          sub_227663390();
          v38 = sub_22766BFD0();

          [v36 setName_];

          sub_227663380();
          if (v39)
          {
            v31 = sub_22766BFD0();
          }

          else
          {
            v31 = 0;
          }

          ++a3;
          [v36 setKind_];

          v26 = v63;
          (*(v23 + 8))(v63, v16);
          v27 = v62;
          v29 = v23;
          if (v61 == a3)
          {
            goto LABEL_7;
          }
        }

        v64 = (v23 + 8);

        v40 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
        swift_willThrow();
        v43 = v54;
        sub_22766A770();
        v44 = v41;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();
        v47 = v41;

        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v47;
          v27 = v62;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v48, 0xCu);
          sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
          v52 = v49;
          v43 = v54;
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        (*(v55 + 8))(v43, v27);
        swift_willThrow();
        sub_226EDC474(0);
        (*v64)(v63, v28);
      }
    }
  }
}

void sub_227577C20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276640A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753D2B8(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "ManagedScoreSummary";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedSessionScores();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_227105770(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_227578190(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), unsigned int a6, uint64_t a7)
{
  v59 = a7;
  v60 = a5;
  v12 = sub_22766B390();
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227663C10();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753D3F8(v20, a2, a3, a4, a6, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v23 = v55;
    v52 = v12;
    v53 = v15;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
      swift_willThrow();
    }

    else
    {
      v59 = v21;
      v26 = a4 >> 1;
      if (a4 >> 1 == a3)
      {
LABEL_19:
        sub_226EDC474(0);
      }

      else
      {
        v27 = v16;
        v28 = v23;
        v56 = "tentArchivedSession";
        v57 = v23 + 16;
        if (a3 <= v26)
        {
          v29 = a4 >> 1;
        }

        else
        {
          v29 = a3;
        }

        v58 = v29;
        while (1)
        {
          if (v58 == a3)
          {
            __break(1u);
            return;
          }

          (*(v28 + 16))(v19, v59 + *(v28 + 72) * a3, v16);
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v60];

          type metadata accessor for ManagedScoreSummary();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          ++a3;
          v35 = sub_227663C00();
          v36 = 0x7FFFFFFFLL;
          if (v35 < 0x7FFFFFFF)
          {
            v36 = v35;
          }

          if (v36 <= 0xFFFFFFFF80000000)
          {
            v37 = 0xFFFFFFFF80000000;
          }

          else
          {
            v37 = v36;
          }

          [v34 setElapsedSeconds_];
          sub_227663BE0();
          [v34 setPersonalScore_];
          sub_227663BA0();
          [v34 setCommunityLowerScore_];
          sub_227663BC0();
          [v34 setCommunityLowerMiddleScore_];
          sub_227663BD0();
          [v34 setCommunityUpperMiddleScore_];
          sub_227663BB0();
          [v34 setCommunityUpperScore_];

          (*(v23 + 8))(v19, v16);
          v28 = v23;
          if (v26 == a3)
          {
            goto LABEL_19;
          }
        }

        v60 = (v23 + 8);

        v38 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v39 = swift_allocError();
        (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
        swift_willThrow();
        v41 = v53;
        sub_22766A770();
        v42 = v39;
        v43 = sub_22766B380();
        v44 = sub_22766C8B0();
        v45 = v39;

        if (os_log_type_enabled(v43, v44))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = v45;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&dword_226E8E000, v43, v44, "%@", v46, 0xCu);
          sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
          v50 = v47;
          v41 = v53;
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        (*(v54 + 8))(v41, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v60)(v19, v27);
      }
    }
  }
}

void sub_227578774(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v61 = a7;
  LODWORD(v59) = a6;
  v60 = a5;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227667E50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753D538(v20, a2, a3, a4, v59, v61);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v16;
    v61 = v19;
    v53 = v11;
    v54 = v14;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = a4 >> 1;
      v26 = v61;
      v27 = v58;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v15;
        v56 = "wsingConnectionRecord";
        v57 = v58 + 16;
        v30 = (v58 + 8);
        if (a3 > v25)
        {
          v25 = a3;
        }

        v59 = v25;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v29);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v60];

          type metadata accessor for ManagedSampleContentArchivedSession();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227667E40();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setWorkoutIdentifier_];

          sub_227667E20();
          v38 = sub_22766BFD0();

          [v35 setSessionIdentifier_];

          v21 = v36;
          v26 = v61;
          (*v30)(v61, v29);
          v27 = v58;
          if (v28 == a3)
          {
            goto LABEL_13;
          }
        }

        v61 = v30;

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v54;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          v51 = v48;
          v42 = v54;
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v55 + 8))(v42, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v26, v29);
      }
    }
  }
}

void sub_227578D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v66 = a7;
  v64 = a5;
  v12 = sub_22766B390();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v61 = *(v15 - 8);
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227668700();
  v65 = *(v19 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  v25 = sub_22753D678(v23, a2, a3, a4, a6, v66);
  if (v25)
  {
    if (v25 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = a4;
    v63 = v15;
    v66 = v22;
    v54 = v19;
    if (sub_227669C10())
    {
      v26 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51010], v26);
LABEL_6:
      swift_willThrow();
      return;
    }

    v62 = v62 >> 1;
    v28 = v54;
    v29 = v66;
    v30 = v65;
    if (v62 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v31 = v18;
      v58 = "ManagedRecommendation";
      v59 = v65 + 16;
      v32 = (v61 + 8);
      v33 = v62;
      if (a3 > v62)
      {
        v33 = a3;
      }

      v60 = (v65 + 8);
      v61 = v33;
      while (1)
      {
        if (v61 == a3)
        {
          __break(1u);
          return;
        }

        (*(v30 + 16))(v29, v24 + *(v30 + 72) * a3, v28);
        v34 = objc_opt_self();
        v35 = sub_22766BFD0();
        v36 = [v34 insertNewObjectForEntityForName:v35 inManagedObjectContext:v64];

        type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        ++a3;
        sub_2276686E0();
        v39 = v24;
        v40 = sub_22766BFD0();

        [v38 setParticipantIdentifier_];

        v24 = v39;
        sub_2276686F0();
        v41 = sub_2276626A0();
        v29 = v66;
        (*v32)(v31, v63);
        [v38 setTimestamp_];

        (*v60)(v29, v28);
        v30 = v65;
        if (v62 == a3)
        {
          goto LABEL_14;
        }
      }

      v42 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
      swift_willThrow();
      v45 = v55;
      sub_22766A770();
      v46 = v43;
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v43;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_226E8E000, v47, v48, "%@", v49, 0xCu);
        sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v50, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v56 + 8))(v45, v57);
      swift_willThrow();
      sub_226EDC474(0);
      (*v60)(v66, v54);
    }
  }
}

void sub_227579390(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664410();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753D7B8(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "ManagedRecentSearchTerm";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedRecommendation();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2274F8D04(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_227579900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v64 = a7;
  v65 = a5;
  LODWORD(v63) = a6;
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227664E20();
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22753D8F8(a1, a2, a3, a4, v63, v64);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v18;
    v61 = v15;
    v64 = v22;
    v62 = a2;
    v52 = v14;
    v53 = v19;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
LABEL_6:
      swift_willThrow();
      return;
    }

    v63 = a4 >> 1;
    v26 = v53;
    v27 = v64;
    v28 = v66;
    if (a4 >> 1 == a3)
    {
LABEL_16:
      sub_226EDC474(0);
    }

    else
    {
      v57 = "isplayPreference";
      v58 = v66 + 16;
      v29 = (v59 + 8);
      v56 = (v66 + 8);
      v30 = v63;
      if (a3 > v63)
      {
        v30 = a3;
      }

      v59 = v30;
      while (1)
      {
        if (v59 == a3)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        (*(v28 + 16))(v27, v62 + *(v28 + 72) * a3, v26);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v65];

        type metadata accessor for ManagedRecentSearchTerm();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          break;
        }

        v35 = v34;
        sub_227664E00();
        v36 = sub_22766BFD0();

        [v35 setTerm_];

        v37 = v60;
        sub_227664DE0();
        v38 = sub_2276626A0();
        (*v29)(v37, v61);
        [v35 setDateCreated_];

        sub_227664E10();
        v39 = sub_227669410();
        if (v39 < 0xFFFFFFFF80000000)
        {
          goto LABEL_22;
        }

        if (v39 > 0x7FFFFFFF)
        {
          goto LABEL_23;
        }

        ++a3;
        [v35 setPlatform_];

        v27 = v64;
        (*v56)(v64, v26);
        v28 = v66;
        if (v63 == a3)
        {
          goto LABEL_16;
        }
      }

      v40 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v41 = swift_allocError();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
      swift_willThrow();
      v43 = v52;
      sub_22766A770();
      v44 = v41;
      v45 = sub_22766B380();
      v46 = sub_22766C8B0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = v41;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_226E8E000, v45, v46, "%@", v47, 0xCu);
        sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v48, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      (*(v54 + 8))(v43, v55);
      swift_willThrow();
      sub_226EDC474(0);
      (*v56)(v64, v53);
    }
  }
}

void sub_227579F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v65 = a7;
  v66 = a4;
  LODWORD(v64) = a6;
  v67 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227668D10();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2276675F0();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22753DA38(a1, a2, a3, v66, v64, v65);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v61 = v17;
    v62 = v14;
    v63 = a2;
    v65 = v21;
    v55 = v18;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = v65;
      v66 >>= 1;
      v26 = v55;
      v27 = v71;
      if (v66 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v58 = "ManagedProgramCompletion";
        v59 = v71 + 16;
        v57 = (v60 + 8);
        v60 = v71 + 8;
        v28 = v66;
        if (a3 > v66)
        {
          v28 = a3;
        }

        v64 = v28;
        v53 = v11;
        v54 = v10;
        while (1)
        {
          if (v64 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v25, v63 + *(v27 + 72) * a3, v26);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v67];

          type metadata accessor for ManagedProgressDisplayPreference();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          v34 = sub_2276675E0();
          v36 = v35;
          v68 = v34;
          v69 = v35;
          v38 = v37 & 1;
          v70 = v37 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBF0, &qword_22768B7B0);
          sub_227663AD0();
          v39 = sub_22766BFD0();
          sub_226EB2DFC(v34, v36, v38);

          [v33 setBehavior_];

          v25 = v65;
          v40 = v61;
          sub_2276675C0();
          sub_227668D00();
          (*v57)(v40, v62);
          v41 = sub_22766BFD0();

          [v33 setModalityConstraint_];

          (*v60)(v25, v26);
          v27 = v71;
          if (v66 == a3)
          {
            goto LABEL_13;
          }
        }

        v42 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v43 = swift_allocError();
        (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
        swift_willThrow();
        sub_22766A770();
        v45 = v43;
        v46 = sub_22766B380();
        v47 = sub_22766C8B0();
        v48 = v43;

        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v48;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v53 + 8))(v56, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v60)(v65, v55);
      }
    }
  }
}

void sub_22757A654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v63 = a7;
  v64 = a5;
  LODWORD(v62) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2276652D0();
  v65 = *(v19 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22753DB78(a1, a2, a3, a4, v62, v63);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v61 = v18;
    v63 = a2;
    v53 = v14;
    v54 = v19;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
LABEL_6:
      swift_willThrow();
      return;
    }

    v62 = a4 >> 1;
    v26 = v54;
    v27 = v65;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v28 = v22;
      v57 = "ManagedPrivacyAcknowledgement";
      v58 = v65 + 16;
      v29 = (v60 + 8);
      v30 = v62;
      if (a3 > v62)
      {
        v30 = a3;
      }

      v59 = (v65 + 8);
      v60 = v30;
      while (1)
      {
        if (v60 == a3)
        {
          __break(1u);
          return;
        }

        (*(v27 + 16))(v28, v63 + *(v27 + 72) * a3, v26);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v64];

        type metadata accessor for ManagedProgramCompletion();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          break;
        }

        v35 = v34;
        ++a3;
        sub_227665290();
        v36 = sub_22766BFD0();

        [v35 setIdentifier_];

        sub_2276652B0();
        v37 = sub_22766BFD0();

        [v35 setProgramIdentifier_];

        sub_2276652C0();
        v38 = sub_22766BFD0();

        [v35 setCompletingSessionIdentifier_];

        v39 = v61;
        sub_2276652A0();
        v40 = sub_2276626A0();
        (*v29)(v39, v15);
        [v35 setCompletionDate_];

        (*v59)(v28, v26);
        v27 = v65;
        if (v62 == a3)
        {
          goto LABEL_14;
        }
      }

      v41 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
      swift_willThrow();
      v44 = v53;
      sub_22766A770();
      v45 = v42;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v42;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v48, 0xCu);
        sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v49, -1, -1);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v55 + 8))(v44, v56);
      swift_willThrow();
      sub_226EDC474(0);
      (*v59)(v28, v54);
    }
  }
}

void sub_22757ACFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v60 = a5;
  v63 = a7;
  LODWORD(v62) = a6;
  v11 = sub_22766B390();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666710();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753DCB8(a1, a2, a3, a4, v62, v63);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v63 = v16;
    v59 = a2;
    v21 = v60;
    v53 = v14;
    v54 = v19;
    v52 = v11;
    if (sub_227669C10())
    {
      v22 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51010], v22);
LABEL_6:
      swift_willThrow();
      return;
    }

    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v61;
LABEL_17:
      v61 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v63;
      v55 = "ManagedPlaylistItem";
      v56 = v63 + 16;
      v57 = (v63 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v62 = v27;
      v28 = v15;
      v25 = v61;
      v29 = v54;
      v30 = v21;
      while (1)
      {
        if (v62 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v59 + *(v26 + 72) * a3, v28);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v30];

        type metadata accessor for ManagedPrivacyAcknowledgement();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {

          v37 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51000], v37);
          swift_willThrow();
          goto LABEL_21;
        }

        v35 = v34;
        v36 = sub_226EB1040(&qword_2813A5698, MEMORY[0x277D52578]);
        (*(v36 + 64))(v35, v30, v28, v36);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v57)(v29, v28);

        v26 = v63;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v39 = v53;
      sub_22766A770();
      v40 = v25;
      v41 = sub_22766B380();
      v42 = sub_22766C8B0();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v52;
      v45 = v58;
      if (v43)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v25;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v41, v42, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        v50 = v47;
        v39 = v53;
        MEMORY[0x22AA9A450](v50, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v45 + 8))(v39, v44);
      swift_willThrow();
      sub_226EDC474(0);
      (*v57)(v54, v28);
    }
  }
}

void sub_22757B2D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663AB0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753DDF8(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "oucher";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedPlaylistItem();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_227000224(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_22757B840(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v70 = a5;
  v73 = a7;
  LODWORD(v72) = a6;
  v11 = sub_22766B390();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227669480();
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22753DF38(a1, a2, a3, a4, v72, v73);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v66 = v18;
    v67 = v15;
    v68 = v22;
    v73 = v19;
    v59 = v14;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
LABEL_6:
      swift_willThrow();
      return;
    }

    v26 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v27 = v69;
LABEL_17:
      v69 = v27;
      sub_226EDC474(0);
    }

    else
    {
      v28 = v71;
      v61 = a2;
      v62 = v71 + 16;
      v60 = (v65 + 8);
      v65 = v71 + 8;
      if (a3 <= v26)
      {
        v29 = a4 >> 1;
      }

      else
      {
        v29 = a3;
      }

      v72 = v29;
      v27 = v69;
      v30 = v73;
      while (1)
      {
        if (v72 == a3)
        {
          __break(1u);
          return;
        }

        v31 = a2 + *(v28 + 72) * a3;
        v32 = v68;
        (*(v28 + 16))(v68, v31, v30);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = v70;
        v36 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v70];

        type metadata accessor for ManagedPlaylist();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {

          v46 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v27 = swift_allocError();
          (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D51000], v46);
          swift_willThrow();
          goto LABEL_21;
        }

        v38 = v37;
        sub_227669430();
        v39 = sub_22766BFD0();

        [v38 setIdentifier_];

        sub_227669450();
        v40 = sub_22766BFD0();

        [v38 setName_];

        v41 = sub_227669460();
        v42 = sub_22764A174(v35, v41);
        if (v27)
        {
          break;
        }

        v43 = v42;
        ++a3;

        [v38 setItems_];

        v44 = v66;
        sub_227669440();
        v45 = sub_2276626A0();
        (*v60)(v44, v67);
        [v38 setDateCreated_];

        v30 = v73;
        (*v65)(v32, v73);
        a2 = v61;
        v28 = v71;
        if (v26 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v48 = v59;
      sub_22766A770();
      v49 = v27;
      v50 = sub_22766B380();
      v51 = sub_22766C8B0();

      v52 = os_log_type_enabled(v50, v51);
      v54 = v63;
      v53 = v64;
      if (v52)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v27;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v58;
        *v56 = v58;
        _os_log_impl(&dword_226E8E000, v50, v51, "%@", v55, 0xCu);
        sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v56, -1, -1);
        MEMORY[0x22AA9A450](v55, -1, -1);
      }

      (*(v54 + 8))(v48, v53);
      swift_willThrow();
      sub_226EDC474(0);
      (*v65)(v32, v73);
    }
  }
}

void sub_22757BF2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v72 = a7;
  v71 = a5;
  v12 = sub_22766B390();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227664900();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = sub_22753E078(v20, v21, a3, a4, a6, v72);
  if (v23)
  {
    if (v23 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v72 = v19;
    v24 = v65;
    v63 = v15;
    if (sub_227669C10())
    {
      v25 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51010], v25);
      swift_willThrow();
    }

    else
    {
      v62 = v12;
      v70 = a4 >> 1;
      v27 = v72;
      if (v22 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v16;
        v29 = v24;
        v66 = "zationPrivacyPreference";
        v67 = v24 + 16;
        v30 = v70;
        if (a3 > v70)
        {
          v30 = a3;
        }

        v68 = (v24 + 8);
        v69 = v30;
        while (1)
        {
          if (v69 == a3)
          {
            __break(1u);
            return;
          }

          (*(v29 + 16))(v27, v21 + *(v29 + 72) * a3, v28);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v71];

          type metadata accessor for ManagedPlaybackVoucher();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          v36 = sub_2276648D0();
          v37 = v28;
          v38 = v21;
          v40 = v39;
          v41 = sub_227662560();
          sub_226EDC420(v36, v40);
          [v35 setFinalizedToken_];

          v42 = sub_2276648C0();
          v44 = v43;
          v45 = sub_227662560();
          sub_226EDC420(v42, v44);
          [v35 setPrivateSeed_];

          v21 = v38;
          v28 = v37;
          v29 = v24;
          sub_2276648F0();
          v46 = sub_22766BFD0();

          [v35 setPublicKeyVersion_];

          sub_2276648B0();
          v47 = sub_22766BFD0();

          [v35 setPublicInfo_];

          v27 = v72;
          (*v68)(v72, v28);
          if (v70 == a3)
          {
            goto LABEL_13;
          }
        }

        v48 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v49 = swift_allocError();
        (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D51000], v48);
        swift_willThrow();
        v51 = v63;
        sub_22766A770();
        v52 = v49;
        v53 = sub_22766B380();
        v54 = sub_22766C8B0();
        v55 = v49;

        if (os_log_type_enabled(v53, v54))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = 138412290;
          v58 = v55;
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 4) = v59;
          *v57 = v59;
          _os_log_impl(&dword_226E8E000, v53, v54, "%@", v56, 0xCu);
          sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
          v60 = v57;
          v27 = v72;
          MEMORY[0x22AA9A450](v60, -1, -1);
          MEMORY[0x22AA9A450](v56, -1, -1);
        }

        (*(v64 + 8))(v51, v62);
        swift_willThrow();
        sub_226EDC474(0);
        (*v68)(v27, v28);
      }
    }
  }
}

void sub_22757C580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6, uint64_t a7)
{
  v71 = a7;
  v77 = a5;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v62 = v12;
  v63 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227668A00();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a3;
  v24 = a4;
  v72 = a2;
  v25 = sub_22753E1B8(v22, a2, v23, a4, a6, v71);
  if (v25)
  {
    if (v25 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v26 = v16;
    v71 = v18;
    if (sub_227669C10())
    {
      v27 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51010], v27);
      swift_willThrow();
    }

    else
    {
      v70 = v24 >> 1;
      v29 = v71;
      if (v24 >> 1 == v23)
      {
LABEL_15:
        sub_226EDC474(0);
      }

      else
      {
        v30 = v26;
        v67 = "ManagedOnboardingSurveyResult";
        v68 = v71 + 16;
        v65 = v26;
        v66 = (v71 + 8);
        v31 = v70;
        if (v23 > v70)
        {
          v31 = v23;
        }

        v69 = v31;
        v64 = v17;
        while (1)
        {
          if (v69 == v23)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            return;
          }

          (*(v29 + 16))(v21, v72 + *(v29 + 72) * v23, v17);
          v32 = objc_opt_self();
          v33 = sub_22766BFD0();
          v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v77];

          type metadata accessor for ManagedPersonalizationPrivacyPreference();
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
            break;
          }

          v36 = v35;
          v74 = sub_2276689C0();
          LOBYTE(v75) = v37 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE158, &unk_227688CA0);
          sub_227663AD0();
          if (v73 < 0xFFFFFFFF80000000)
          {
            goto LABEL_21;
          }

          if (v73 > 0x7FFFFFFF)
          {
            goto LABEL_22;
          }

          v38 = v23 + 1;
          [v36 setState_];
          v39 = sub_2276689F0();
          v41 = v40;
          v74 = v39;
          v75 = v40;
          v43 = v42 & 1;
          v76 = v42 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
          sub_227663AD0();
          v44 = v21;
          v45 = sub_22766BFD0();
          v46 = v39;
          v23 = v38;
          v47 = v41;
          v48 = v43;
          v17 = v64;
          v30 = v65;
          sub_226EB2DFC(v46, v47, v48);

          [v36 setVersion_];

          v21 = v44;
          v29 = v71;
          (*v66)(v44, v17);
          if (v70 == v38)
          {
            goto LABEL_15;
          }
        }

        v77 = v21;

        v49 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v50 = swift_allocError();
        (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D51000], v49);
        swift_willThrow();
        sub_22766A770();
        v52 = v50;
        v53 = sub_22766B380();
        v54 = sub_22766C8B0();
        v55 = v50;

        if (os_log_type_enabled(v53, v54))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = 138412290;
          v58 = v55;
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 4) = v59;
          *v57 = v59;
          _os_log_impl(&dword_226E8E000, v53, v54, "%@", v56, 0xCu);
          sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
          v60 = v57;
          v30 = v65;
          MEMORY[0x22AA9A450](v60, -1, -1);
          MEMORY[0x22AA9A450](v56, -1, -1);
        }

        (*(v63 + 8))(v30, v62);
        swift_willThrow();
        sub_226EDC474(0);
        (*v66)(v77, v17);
      }
    }
  }
}

void sub_22757CBCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v71 = a5;
  v74 = a7;
  LODWORD(v73) = a6;
  v11 = sub_22766B390();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227666650();
  v72 = *(v19 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22753E2F8(a1, a2, a3, a4, v73, v74);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v68 = v18;
    v69 = v15;
    v74 = v19;
    v60 = v14;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
LABEL_6:
      swift_willThrow();
      return;
    }

    v26 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v27 = v70;
LABEL_17:
      v70 = v27;
      sub_226EDC474(0);
    }

    else
    {
      v28 = v72;
      v63 = v72 + 16;
      v64 = a2;
      v61 = (v67 + 8);
      v62 = "gModalityIdentifier";
      v67 = v72 + 8;
      if (a3 <= v26)
      {
        v29 = a4 >> 1;
      }

      else
      {
        v29 = a3;
      }

      v73 = v29;
      v27 = v70;
      v30 = v74;
      v31 = v22;
      while (1)
      {
        if (v73 == a3)
        {
          __break(1u);
          return;
        }

        (*(v28 + 16))(v31, v64 + *(v28 + 72) * a3, v30);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = v71;
        v35 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v71];

        type metadata accessor for ManagedOnboardingSurveyResult();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v47 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v27 = swift_allocError();
          (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D51000], v47);
          swift_willThrow();
          goto LABEL_21;
        }

        v37 = v36;
        sub_227666620();
        v38 = sub_22766BFD0();

        [v37 setIdentifier_];

        v39 = v68;
        sub_227666630();
        v40 = sub_2276626A0();
        (*v61)(v39, v69);
        [v37 setCompletedDate_];

        v41 = sub_227666640();
        v42 = v27;
        v43 = sub_2272D6818(v41);

        v44 = sub_226F3D770(v43);

        v45 = sub_227648160(v34, v44);
        v27 = v42;
        if (v42)
        {
          break;
        }

        v46 = v45;
        ++a3;

        [v37 setSelectedModalityIdentifiers_];

        v30 = v74;
        (*v67)(v31, v74);
        v28 = v72;
        if (v26 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v49 = v60;
      sub_22766A770();
      v50 = v27;
      v51 = sub_22766B380();
      v52 = sub_22766C8B0();

      v53 = os_log_type_enabled(v51, v52);
      v55 = v65;
      v54 = v66;
      if (v53)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v27;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_226E8E000, v51, v52, "%@", v56, 0xCu);
        sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v57, -1, -1);
        MEMORY[0x22AA9A450](v56, -1, -1);
      }

      (*(v55 + 8))(v49, v54);
      swift_willThrow();
      sub_226EDC474(0);
      (*v67)(v31, v74);
    }
  }
}

void sub_22757D2A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF140, &qword_22768BAE0, &qword_27D7BF148, sub_227596EEC);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedMusicTrack";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedOnboardingModalityIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_22757D760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663350();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753E438(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "ManagedMusicGenreIdentifier";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedMusicTrack();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2275D53A4(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_22757DCD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF120, &qword_22768BAD0, &qword_27D7BF128, sub_227596400);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedMusicGenre";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedMusicGenreIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_22757E18C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v61 = a7;
  LODWORD(v59) = a6;
  v60 = a5;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276632A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753E578(v20, a2, a3, a4, v59, v61);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v16;
    v61 = v19;
    v53 = v11;
    v54 = v14;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = a4 >> 1;
      v26 = v61;
      v27 = v58;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v15;
        v56 = "ManagedModalityIdentifier";
        v57 = v58 + 16;
        v30 = (v58 + 8);
        if (a3 > v25)
        {
          v25 = a3;
        }

        v59 = v25;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v29);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v60];

          type metadata accessor for ManagedMusicGenre();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227663280();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setIdentifier_];

          sub_227663290();
          v38 = sub_22766BFD0();

          [v35 setName_];

          v21 = v36;
          v26 = v61;
          (*v30)(v61, v29);
          v27 = v58;
          if (v28 == a3)
          {
            goto LABEL_13;
          }
        }

        v61 = v30;

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v54;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          v51 = v48;
          v42 = v54;
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v55 + 8))(v42, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v26, v29);
      }
    }
  }
}

void sub_22757E754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF100, &qword_22768BAC0, &qword_27D7BF108, sub_227596454);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedMetricsDisplayPreference";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedModalityIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_22757EC10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v65 = a7;
  v66 = a4;
  LODWORD(v64) = a6;
  v67 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227668D10();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227667170();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22753E6B8(a1, a2, a3, v66, v64, v65);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v61 = v17;
    v62 = v14;
    v63 = a2;
    v65 = v21;
    v55 = v18;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = v65;
      v66 >>= 1;
      v26 = v55;
      v27 = v71;
      if (v66 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v58 = "ManagedMeditationActivityType";
        v59 = v71 + 16;
        v57 = (v60 + 8);
        v60 = v71 + 8;
        v28 = v66;
        if (a3 > v66)
        {
          v28 = a3;
        }

        v64 = v28;
        v53 = v11;
        v54 = v10;
        while (1)
        {
          if (v64 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v25, v63 + *(v27 + 72) * a3, v26);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v67];

          type metadata accessor for ManagedMetricsDisplayPreference();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          v34 = sub_227667160();
          v36 = v35;
          v68 = v34;
          v69 = v35;
          v38 = v37 & 1;
          v70 = v37 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB10, &qword_22768B7C0);
          sub_227663AD0();
          v39 = sub_22766BFD0();
          sub_226EB2DFC(v34, v36, v38);

          [v33 setBehavior_];

          v25 = v65;
          v40 = v61;
          sub_227667140();
          sub_227668D00();
          (*v57)(v40, v62);
          v41 = sub_22766BFD0();

          [v33 setModalityConstraint_];

          (*v60)(v25, v26);
          v27 = v71;
          if (v66 == a3)
          {
            goto LABEL_13;
          }
        }

        v42 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v43 = swift_allocError();
        (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
        swift_willThrow();
        sub_22766A770();
        v45 = v43;
        v46 = sub_22766B380();
        v47 = sub_22766C8B0();
        v48 = v43;

        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v48;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v53 + 8))(v56, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v60)(v65, v55);
      }
    }
  }
}

void sub_22757F2D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v71 = a5;
  v74 = a7;
  LODWORD(v73) = a6;
  v11 = sub_22766B390();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227669180();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227663680();
  v72 = *(v19 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22753E7F8(a1, a2, a3, a4, v73, v74);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v66 = v18;
    v67 = v15;
    v68 = a2;
    v69 = v22;
    v74 = v19;
    v59 = v14;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
LABEL_6:
      swift_willThrow();
      return;
    }

    v26 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v27 = v70;
LABEL_17:
      v70 = v27;
      sub_226EDC474(0);
    }

    else
    {
      v28 = v72;
      v61 = "ManagedLanguageDisclaimer";
      v62 = v72 + 16;
      v60 = (v65 + 8);
      v65 = v72 + 8;
      if (a3 <= v26)
      {
        v29 = a4 >> 1;
      }

      else
      {
        v29 = a3;
      }

      v73 = v29;
      v30 = v69;
      v27 = v70;
      v31 = v74;
      while (1)
      {
        if (v73 == a3)
        {
          __break(1u);
          return;
        }

        (*(v28 + 16))(v30, v68 + *(v28 + 72) * a3, v31);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v71];

        type metadata accessor for ManagedMediaMoment();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v45 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v27 = swift_allocError();
          (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51000], v45);
          swift_willThrow();
          goto LABEL_21;
        }

        v36 = v35;
        sub_227663630();
        v37 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227663670();
        [v36 setStartTime_];
        sub_227663650();
        [v36 setDuration_];
        v38 = v66;
        sub_227663640();
        sub_226EB1040(&qword_27D7BB870, MEMORY[0x277D53A78]);
        v39 = v67;
        v40 = sub_2276683C0();
        if (v27)
        {
          break;
        }

        v42 = v40;
        v43 = v41;
        ++a3;
        (*v60)(v38, v39);
        v44 = sub_227662560();
        sub_226EDC420(v42, v43);
        [v36 setArtwork_];

        v30 = v69;
        v31 = v74;
        (*v65)(v69, v74);
        v28 = v72;
        if (v26 == a3)
        {
          goto LABEL_17;
        }
      }

      (*v60)(v38, v39);
LABEL_21:
      v47 = v59;
      sub_22766A770();
      v48 = v27;
      v49 = sub_22766B380();
      v50 = sub_22766C8B0();

      v51 = os_log_type_enabled(v49, v50);
      v53 = v63;
      v52 = v64;
      if (v51)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v27;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_226E8E000, v49, v50, "%@", v54, 0xCu);
        sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v55, -1, -1);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      (*(v53 + 8))(v47, v52);
      swift_willThrow();
      sub_226EDC474(0);
      (*v65)(v69, v74);
    }
  }
}

void sub_22757F9E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v70 = a7;
  LODWORD(v69) = a6;
  v68 = a5;
  v11 = sub_22766B390();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276655A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753E938(v20, a2, a3, a4, v69, v70);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v70 = v16;
    v61 = v14;
    v62 = v15;
    v60 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    if (a4 >> 1 == a3)
    {
      v25 = v71;
LABEL_17:
      v71 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v70;
      v64 = "ManagedKeyCertificate";
      v65 = v70 + 16;
      v66 = (v70 + 8);
      if (a3 <= (a4 >> 1))
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v69 = v27;
      v28 = v62;
      v25 = v71;
      v29 = v19;
      v63 = a4 >> 1;
      while (1)
      {
        if (v69 == a3)
        {
          __break(1u);
          return;
        }

        v71 = v25;
        v30 = v28;
        (*(v26 + 16))(v29, v21 + *(v26 + 72) * a3, v28);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = v68;
        v34 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v68];

        type metadata accessor for ManagedLanguageDisclaimer();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          v44 = v29;

          v45 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51000], v45);
          swift_willThrow();
          goto LABEL_21;
        }

        v36 = v35;
        v37 = v21;
        sub_227665570();
        v38 = sub_22766BFD0();

        [v36 setName_];

        sub_227665560();
        v39 = sub_22766BFD0();

        [v36 setLanguageCode_];

        [v36 setIsPrimary_];
        v40 = sub_227665550();
        v41 = v71;
        v42 = sub_227647448(v33, v40);
        v25 = v41;
        if (v41)
        {
          break;
        }

        v43 = v42;
        ++a3;

        [v36 setCapabilities_];

        v28 = v30;
        (*v66)(v29, v30);
        v21 = v37;
        v26 = v70;
        if (v63 == a3)
        {
          goto LABEL_17;
        }
      }

      v44 = v29;

LABEL_21:
      v47 = v61;
      sub_22766A770();
      v48 = v25;
      v49 = sub_22766B380();
      v50 = sub_22766C8B0();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v60;
      v53 = v67;
      if (v51)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v25;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_226E8E000, v49, v50, "%@", v54, 0xCu);
        sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v55, -1, -1);
        v58 = v54;
        v47 = v61;
        MEMORY[0x22AA9A450](v58, -1, -1);
      }

      (*(v53 + 8))(v47, v52);
      swift_willThrow();
      sub_226EDC474(0);
      (*v66)(v44, v62);
    }
  }
}

void sub_227580040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v54 = a7;
  LODWORD(v53) = a6;
  v55 = a5;
  v11 = sub_22766B390();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for KeyCertificate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753EA78(a1, a2, a3, a4, v53, v54);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v54 = v16;
    v49 = v14;
    v50 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
      swift_willThrow();
    }

    else if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = a4 >> 1;
      v24 = v19;
      v52 = "ManagedHealthKitWorkout";
      if (a3 <= (a4 >> 1))
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v53 = v25;
      while (1)
      {
        if (v53 == a3)
        {
          __break(1u);
          return;
        }

        sub_227596718(a2 + *(v54 + 72) * a3, v24, type metadata accessor for KeyCertificate);
        v26 = objc_opt_self();
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v55];

        type metadata accessor for ManagedKeyCertificate();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        ++a3;
        sub_227662390();
        v31 = sub_22766BFD0();

        [v30 setRemoteURL_];

        v32 = (v24 + *(v15 + 20));
        v33 = *v32;
        v34 = v32[1];
        v35 = sub_227662560();
        [v30 setData_];

        sub_2275966B8(v24, type metadata accessor for KeyCertificate);
        if (v23 == a3)
        {
          goto LABEL_14;
        }
      }

      v36 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v37 = swift_allocError();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
      swift_willThrow();
      v39 = v49;
      sub_22766A770();
      v40 = v37;
      v41 = sub_22766B380();
      v42 = sub_22766C8B0();
      v43 = v37;

      if (os_log_type_enabled(v41, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v43;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v41, v42, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v45, -1, -1);
        MEMORY[0x22AA9A450](v44, -1, -1);
      }

      (*(v51 + 8))(v39, v50);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v24, type metadata accessor for KeyCertificate);
    }
  }
}

void sub_2275805D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664CA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753EBB8(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a2;
    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v56;
LABEL_17:
      v56 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v59;
      v52 = "StandaloneMindfulSessionJob";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v58 = v27;
      v28 = v15;
      v25 = v56;
      v29 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v23 + *(v26 + 72) * a3, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v30;
        v33 = v57;
        v34 = [v32 insertNewObjectForEntityForName:v31 inManagedObjectContext:v57];

        type metadata accessor for ManagedHealthKitWorkout();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_226F79544(v35, v33);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v54)(v29, v28);

        v26 = v59;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v25;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v25;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v28);
    }
  }
}

void sub_227580B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227668390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753ECF8(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "SessionReference";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_226F5D3A8(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_2275810B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v61 = a7;
  LODWORD(v59) = a6;
  v60 = a5;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276674C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753EE38(v20, a2, a3, a4, v59, v61);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v16;
    v61 = v19;
    v53 = v11;
    v54 = v14;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = a4 >> 1;
      v26 = v61;
      v27 = v58;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v15;
        v56 = "ManagedHealthKitMindfulSession";
        v57 = v58 + 16;
        v30 = (v58 + 8);
        if (a3 > v25)
        {
          v25 = a3;
        }

        v59 = v25;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v29);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v60];

          type metadata accessor for ManagedHealthKitSessionReference();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227667490();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setSessionIdentifier_];

          sub_2276674B0();
          v38 = sub_22766BFD0();

          [v35 setWorkoutIdentifier_];

          v21 = v36;
          v26 = v61;
          (*v30)(v61, v29);
          v27 = v58;
          if (v28 == a3)
          {
            goto LABEL_13;
          }
        }

        v61 = v30;

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v54;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          v51 = v48;
          v42 = v54;
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v55 + 8))(v42, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v26, v29);
      }
    }
  }
}

void sub_227581680(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227668E30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753EF78(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a2;
    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v56;
LABEL_17:
      v56 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v59;
      v52 = "StandaloneWorkoutJob";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v58 = v27;
      v28 = v15;
      v25 = v56;
      v29 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v23 + *(v26 + 72) * a3, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v30;
        v33 = v57;
        v34 = [v32 insertNewObjectForEntityForName:v31 inManagedObjectContext:v57];

        type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_22764CD64(v35, v33);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v54)(v29, v28);

        v26 = v59;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v25;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v25;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v28);
    }
  }
}

void sub_227581BF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666BF0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753F0B8(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "ManagedHealthKitActivityType";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedHealthKitMindfulSession();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2275D7AC0(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_227582164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v48 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF040, &qword_22768BA68, &qword_27D7BF048, sub_22759625C);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v48;
    v46 = v17;
    v47 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v45 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (v23)
    {
      v24 = v19;
      v49 = "ManagedEstimatedCalories";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 8 * a3);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v27 = *v26;
        v28 = objc_opt_self();
        v29 = sub_22766BFD0();
        v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v24];

        type metadata accessor for ManagedHealthKitActivityType();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v27;
        }

        [v31 setValue_];

        --v25;
        ++v26;
        if (!--v23)
        {
          goto LABEL_17;
        }
      }

      v33 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v34 = swift_allocError();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
      swift_willThrow();
      v36 = v46;
      sub_22766A770();
      v37 = v34;
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v34;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_226E8E000, v38, v39, "%@", v40, 0xCu);
        sub_226E97D1C(v41, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v41, -1, -1);
        MEMORY[0x22AA9A450](v40, -1, -1);
      }

      (*(v47 + 8))(v36, v45);
      swift_willThrow();
      sub_226EDC474(0);
    }

    else
    {
LABEL_17:
      sub_226EDC474(0);
    }
  }
}

void sub_2275825F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), int a6, uint64_t a7)
{
  v58 = a7;
  LODWORD(v57) = a6;
  v59 = a5;
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227665100();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = sub_22753F1F8(v20, v21, a3, a4, v57, v58);
  if (v23)
  {
    if (v23 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v16;
    v52 = v14;
    v53 = v11;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
      swift_willThrow();
    }

    else
    {
      v26 = v21;
      v27 = a4 >> 1;
      v28 = v58;
      if (a4 >> 1 == a3)
      {
LABEL_17:
        sub_226EDC474(0);
      }

      else
      {
        v29 = v15;
        v30 = v19;
        v55 = "ManagedEquipmentIdentifier";
        v56 = v58 + 16;
        v31 = (v58 + 8);
        if (a3 <= v27)
        {
          v32 = v22 >> 1;
        }

        else
        {
          v32 = a3;
        }

        v57 = v32;
        while (1)
        {
          if (v57 == a3)
          {
            __break(1u);
            return;
          }

          (*(v28 + 16))(v30, v26 + *(v28 + 72) * a3, v29);
          v33 = objc_opt_self();
          v34 = sub_22766BFD0();
          v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v59];

          type metadata accessor for ManagedEstimatedCalories();
          v36 = swift_dynamicCastClass();
          if (!v36)
          {
            break;
          }

          v37 = v36;
          ++a3;
          v38 = sub_2276650C0();
          if (v38 >= 0x7FFFFFFF)
          {
            v39 = 0x7FFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          [v37 setActivityType_];
          sub_2276650E0();
          [v37 setActiveCalorieRate_];
          sub_2276650D0();
          [v37 setBasalCalorieRate_];

          (*v31)(v30, v29);
          v28 = v58;
          if (v27 == a3)
          {
            goto LABEL_17;
          }
        }

        v59 = v31;

        v40 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
        swift_willThrow();
        v43 = v52;
        sub_22766A770();
        v44 = v41;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();
        v47 = v41;

        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v47;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v48, 0xCu);
          sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v49, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        (*(v54 + 8))(v43, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v30, v29);
      }
    }
  }
}

void sub_227582B84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF020, &qword_22768BA58, &qword_27D7BF028, sub_2275964A8);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedEquipment";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedEquipmentIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227583040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v61 = a7;
  LODWORD(v59) = a6;
  v60 = a5;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227669580();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753F338(v20, a2, a3, a4, v59, v61);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v16;
    v61 = v19;
    v53 = v11;
    v54 = v14;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = a4 >> 1;
      v26 = v61;
      v27 = v58;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v15;
        v56 = "ManagedEngagementBadge";
        v57 = v58 + 16;
        v30 = (v58 + 8);
        if (a3 > v25)
        {
          v25 = a3;
        }

        v59 = v25;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v29);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v60];

          type metadata accessor for ManagedEquipment();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227669560();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setIdentifier_];

          sub_227669570();
          v38 = sub_22766BFD0();

          [v35 setName_];

          v21 = v36;
          v26 = v61;
          (*v30)(v61, v29);
          v27 = v58;
          if (v28 == a3)
          {
            goto LABEL_13;
          }
        }

        v61 = v30;

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v54;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          v51 = v48;
          v42 = v54;
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v55 + 8))(v42, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v26, v29);
      }
    }
  }
}

void sub_227583608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276646D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753F478(v20, a2, a3, a4, v58, v59);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v25 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v26 = v56;
LABEL_17:
      v56 = v26;
      sub_226EDC474(0);
    }

    else
    {
      v27 = v59;
      v52 = "ManagedDirtySyncZone";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v25)
      {
        v28 = a4 >> 1;
      }

      else
      {
        v28 = a3;
      }

      v58 = v28;
      v29 = v15;
      v26 = v56;
      v30 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        v31 = v21;
        (*(v27 + 16))(v30, v21 + *(v27 + 72) * a3, v29);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v57];

        type metadata accessor for ManagedEngagementBadge();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v26 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_22736D340(v35);
        if (v26)
        {
          break;
        }

        ++a3;
        (*v54)(v30, v29);

        v21 = v31;
        v27 = v59;
        if (v25 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v26;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v26;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v29);
    }
  }
}

void sub_227583B78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v52 = a7;
  LODWORD(v51) = a6;
  v53 = a5;
  v11 = sub_22766B390();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DirtySyncZone();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753F5B8(a1, a2, a3, a4, v51, v52);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v52 = v16;
    v47 = v14;
    v48 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
      swift_willThrow();
    }

    else if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = a4 >> 1;
      v24 = v19;
      v50 = "ManagedContributorIdentifier";
      if (a3 <= (a4 >> 1))
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v51 = v25;
      while (1)
      {
        if (v51 == a3)
        {
          __break(1u);
          return;
        }

        sub_227596718(a2 + *(v52 + 72) * a3, v24, type metadata accessor for DirtySyncZone);
        v26 = objc_opt_self();
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v53];

        type metadata accessor for ManagedDirtySyncZone();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        ++a3;
        sub_2276694C0();
        v31 = sub_22766BFD0();

        [v30 setZoneName_];

        v32 = v24 + *(v15 + 20);
        v33 = sub_2276626A0();
        [v30 setTimestamp_];

        sub_2275966B8(v24, type metadata accessor for DirtySyncZone);
        if (v23 == a3)
        {
          goto LABEL_14;
        }
      }

      v34 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v35 = swift_allocError();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D51000], v34);
      swift_willThrow();
      v37 = v47;
      sub_22766A770();
      v38 = v35;
      v39 = sub_22766B380();
      v40 = sub_22766C8B0();
      v41 = v35;

      if (os_log_type_enabled(v39, v40))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v41;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v39, v40, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v37, v48);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v24, type metadata accessor for DirtySyncZone);
    }
  }
}

void sub_227584108(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEFE0, &qword_22768BA38, &qword_27D7BEFE8, sub_2275964FC);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v50;
    v48 = v17;
    v49 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
      swift_willThrow();
      return;
    }

    v47 = v13;
    v22 = a4 >> 1;
    v23 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v24 = v19;
      v51 = "ManagedContributor";
      if (a3 > v22)
      {
        v22 = a3;
      }

      v25 = v22 - a3;
      v26 = (a2 + 16 * a3 + 8);
      while (1)
      {
        if (!v25)
        {
          __break(1u);
          return;
        }

        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_opt_self();

        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v24];

        type metadata accessor for ManagedContributorIdentifier();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v34 = sub_22766BFD0();
        [v33 setIdentifier_];

        --v25;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
      swift_willThrow();
      v38 = v48;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      (*(v49 + 8))(v38, v47);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_2275845C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663610();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753F6F8(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a2;
    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v56;
LABEL_17:
      v56 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v59;
      v52 = "ManagedConfiguration";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v58 = v27;
      v28 = v15;
      v25 = v56;
      v29 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v23 + *(v26 + 72) * a3, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v30;
        v33 = v57;
        v34 = [v32 insertNewObjectForEntityForName:v31 inManagedObjectContext:v57];

        type metadata accessor for ManagedContributor();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2270A7BF0(v35, v33);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v54)(v29, v28);

        v26 = v59;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v25;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v25;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v28);
    }
  }
}

void sub_227584B38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v60 = a5;
  v63 = a7;
  LODWORD(v62) = a6;
  v11 = sub_22766B390();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663FA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753F838(a1, a2, a3, a4, v62, v63);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v63 = v16;
    v59 = a2;
    v21 = v60;
    v53 = v14;
    v54 = v19;
    v52 = v11;
    if (sub_227669C10())
    {
      v22 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51010], v22);
LABEL_6:
      swift_willThrow();
      return;
    }

    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v61;
LABEL_17:
      v61 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v63;
      v55 = "ManagedCompletedMarketingVideo";
      v56 = v63 + 16;
      v57 = (v63 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v62 = v27;
      v28 = v15;
      v25 = v61;
      v29 = v54;
      v30 = v21;
      while (1)
      {
        if (v62 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v59 + *(v26 + 72) * a3, v28);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v30];

        type metadata accessor for ManagedConfiguration();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {

          v37 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51000], v37);
          swift_willThrow();
          goto LABEL_21;
        }

        v35 = v34;
        v36 = sub_226EB1040(&unk_28139BA38, MEMORY[0x277D50560]);
        (*(v36 + 64))(v35, v30, v28, v36);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v57)(v29, v28);

        v26 = v63;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v39 = v53;
      sub_22766A770();
      v40 = v25;
      v41 = sub_22766B380();
      v42 = sub_22766C8B0();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v52;
      v45 = v58;
      if (v43)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v25;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v41, v42, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        v50 = v47;
        v39 = v53;
        MEMORY[0x22AA9A450](v50, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v45 + 8))(v39, v44);
      swift_willThrow();
      sub_226EDC474(0);
      (*v57)(v54, v28);
    }
  }
}

void sub_22758510C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v66 = a7;
  v64 = a5;
  v12 = sub_22766B390();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v61 = *(v15 - 8);
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227666170();
  v65 = *(v19 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  v25 = sub_22753F978(v23, a2, a3, a4, a6, v66);
  if (v25)
  {
    if (v25 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = a4;
    v63 = v15;
    v66 = v22;
    v54 = v19;
    if (sub_227669C10())
    {
      v26 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51010], v26);
LABEL_6:
      swift_willThrow();
      return;
    }

    v62 = v62 >> 1;
    v28 = v54;
    v29 = v66;
    v30 = v65;
    if (v62 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v31 = v18;
      v58 = "ManagedCommentaryEvent";
      v59 = v65 + 16;
      v32 = (v61 + 8);
      v33 = v62;
      if (a3 > v62)
      {
        v33 = a3;
      }

      v60 = (v65 + 8);
      v61 = v33;
      while (1)
      {
        if (v61 == a3)
        {
          __break(1u);
          return;
        }

        (*(v30 + 16))(v29, v24 + *(v30 + 72) * a3, v28);
        v34 = objc_opt_self();
        v35 = sub_22766BFD0();
        v36 = [v34 insertNewObjectForEntityForName:v35 inManagedObjectContext:v64];

        type metadata accessor for ManagedCompletedMarketingVideo();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        ++a3;
        sub_227666150();
        v39 = v24;
        v40 = sub_22766BFD0();

        [v38 setIdentifier_];

        v24 = v39;
        sub_227666160();
        v41 = sub_2276626A0();
        v29 = v66;
        (*v32)(v31, v63);
        [v38 setDateWatched_];

        (*v60)(v29, v28);
        v30 = v65;
        if (v62 == a3)
        {
          goto LABEL_14;
        }
      }

      v42 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
      swift_willThrow();
      v45 = v55;
      sub_22766A770();
      v46 = v43;
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v43;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_226E8E000, v47, v48, "%@", v49, 0xCu);
        sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v50, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v56 + 8))(v45, v57);
      swift_willThrow();
      sub_226EDC474(0);
      (*v60)(v66, v54);
    }
  }
}

void sub_227585760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v67 = a7;
  v68 = a5;
  v12 = sub_22766B390();
  v60 = *(v12 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_227664650();
  v16 = *(v72 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v72);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753FAB8(v20, a2, a3, a4, a6, v67);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v66 = v16;
    v67 = v19;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v58 = v15;
      v59 = v12;
      v65 = a4 >> 1;
      v25 = v66;
      v26 = v67;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v61 = "ManagedCoachingEvent";
        v62 = v66 + 16;
        v27 = v65;
        if (a3 > v65)
        {
          v27 = a3;
        }

        v63 = (v66 + 8);
        v64 = v27;
        while (1)
        {
          if (v64 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v26, v21 + *(v25 + 72) * a3, v72);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v68];

          type metadata accessor for ManagedCommentaryEvent();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          ++a3;
          v33 = v21;
          v34 = sub_227664600();
          v36 = v35;
          v69 = v34;
          v70 = v35;
          v38 = v37 & 1;
          v71 = v37 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F78, &qword_22768BA10);
          sub_227663AD0();
          v39 = sub_22766BFD0();
          v40 = v34;
          v21 = v33;
          v41 = v36;
          v26 = v67;
          v42 = v72;
          sub_226EB2DFC(v40, v41, v38);

          [v32 setTopic_];

          sub_227664640();
          [v32 setStartTime_];
          sub_227664620();
          [v32 setDuration_];
          sub_2276645F0();
          v43 = sub_22766BFD0();

          [v32 setTopicIdentifier_];

          v25 = v66;
          (*v63)(v26, v42);
          if (v65 == a3)
          {
            goto LABEL_13;
          }
        }

        v44 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v45 = swift_allocError();
        (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D51000], v44);
        swift_willThrow();
        v47 = v58;
        sub_22766A770();
        v48 = v45;
        v49 = sub_22766B380();
        v50 = sub_22766C8B0();
        v51 = v45;

        if (os_log_type_enabled(v49, v50))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          v54 = v51;
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v52 + 4) = v55;
          *v53 = v55;
          _os_log_impl(&dword_226E8E000, v49, v50, "%@", v52, 0xCu);
          sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
          v56 = v53;
          v26 = v67;
          MEMORY[0x22AA9A450](v56, -1, -1);
          MEMORY[0x22AA9A450](v52, -1, -1);
        }

        (*(v60 + 8))(v47, v59);
        swift_willThrow();
        sub_226EDC474(0);
        (*v63)(v26, v72);
      }
    }
  }
}

void sub_227585D88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, void (**a7)(char *, uint64_t))
{
  v53 = a7;
  v54 = a5;
  v12 = sub_22766B390();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227663E50();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = sub_22753FBF8(v20, v21, a3, a4, a6, v53);
  if (v23)
  {
    if (v23 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v48 = v12;
    v49 = v15;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
      swift_willThrow();
    }

    else
    {
      v26 = a4 >> 1;
      v27 = v55;
      if (v22 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v21;
        v29 = v19;
        v51 = "ManagedCatalogWorkoutTrait";
        v52 = v55 + 16;
        v53 = (v55 + 8);
        if (a3 <= v26)
        {
          v30 = v22 >> 1;
        }

        else
        {
          v30 = a3;
        }

        while (1)
        {
          if (v30 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v29, v28 + *(v27 + 72) * a3, v16);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v54];

          type metadata accessor for ManagedCoachingEvent();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          ++a3;
          sub_226F5EA8C(v34);

          (*v53)(v29, v16);
          v27 = v55;
          if (v26 == a3)
          {
            goto LABEL_13;
          }
        }

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v36 = swift_allocError();
        (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        v38 = v49;
        sub_22766A770();
        v39 = v36;
        v40 = sub_22766B380();
        v41 = sub_22766C8B0();
        v42 = v36;

        if (os_log_type_enabled(v40, v41))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          v45 = v42;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v46;
          *v44 = v46;
          _os_log_impl(&dword_226E8E000, v40, v41, "%@", v43, 0xCu);
          sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
          v47 = v44;
          v38 = v49;
          MEMORY[0x22AA9A450](v47, -1, -1);
          MEMORY[0x22AA9A450](v43, -1, -1);
        }

        (*(v50 + 8))(v38, v48);
        swift_willThrow();
        sub_226EDC474(0);
        (*v53)(v29, v16);
      }
    }
  }
}

void sub_2275862CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v61 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEF58, &qword_22768BA00, &qword_27D7BEF60, sub_227596E0C);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v58 = v17;
    if (sub_227669C10())
    {
      v19 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
LABEL_6:
      swift_willThrow();
      return;
    }

    v56 = v14;
    v57 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v59 = "ManagedCatalogWorkoutReference";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v23 = v21 - a3;
      v24 = (a2 + 24 * a3 + 16);
      while (1)
      {
        if (!v23)
        {
          __break(1u);
          return;
        }

        v25 = *(v24 - 2);
        v26 = *(v24 - 1);
        v27 = *v24;
        v28 = objc_opt_self();
        sub_226EB396C(v25, v26, v27);
        v29 = sub_22766BFD0();
        v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v61];

        type metadata accessor for ManagedCatalogWorkoutTrait();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        v32 = v31;
        v62 = v25;
        v63 = v26;
        v64 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
        sub_227663AD0();
        v33 = sub_22766BFD0();
        v65 = v23;
        v34 = v22;
        v35 = v27;
        v36 = v26;
        v37 = v25;
        v38 = v33;
        [v32 setTrait_];

        v39 = v35;
        v40 = v34;
        v41 = v65;
        sub_226EB2DFC(v37, v36, v39);

        v23 = v41 - 1;
        v24 += 24;
        v22 = v40 - 1;
        if (!v22)
        {
          goto LABEL_14;
        }
      }

      v42 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
      swift_willThrow();
      v45 = v58;
      sub_22766A770();
      v46 = v43;
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();
      v60 = v43;

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = v25;
        v51 = swift_slowAlloc();
        *v49 = 138412290;
        v52 = v60;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v47, v48, "%@", v49, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        v54 = v51;
        v25 = v50;
        MEMORY[0x22AA9A450](v54, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v56 + 8))(v45, v57);
      swift_willThrow();
      sub_226EDC474(0);
      sub_226EB2DFC(v25, v26, v27);
    }
  }
}

void sub_2275867FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666B60();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753FD38(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a2;
    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v56;
LABEL_17:
      v56 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v59;
      v52 = "ManagedCatalogWorkoutMetadata";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v58 = v27;
      v28 = v15;
      v25 = v56;
      v29 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v23 + *(v26 + 72) * a3, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v30;
        v33 = v57;
        v34 = [v32 insertNewObjectForEntityForName:v31 inManagedObjectContext:v57];

        type metadata accessor for ManagedCatalogWorkoutReference();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2273F99AC(v35, v33);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v54)(v29, v28);

        v26 = v59;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v25;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v25;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v28);
    }
  }
}

void sub_227586D70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276664D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753FE78(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = v16;
    v50 = v14;
    v51 = v19;
    v49 = v11;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a2;
    v24 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v25 = v56;
LABEL_17:
      v56 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v59;
      v52 = "ManagedCatalogTipReference";
      v53 = v59 + 16;
      v54 = (v59 + 8);
      if (a3 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v58 = v27;
      v28 = v15;
      v25 = v56;
      v29 = v51;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v23 + *(v26 + 72) * a3, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v30;
        v33 = v57;
        v34 = [v32 insertNewObjectForEntityForName:v31 inManagedObjectContext:v57];

        type metadata accessor for ManagedCatalogWorkoutMetadata();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {

          v36 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51000], v36);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2271515C4(v35, v33);
        if (v25)
        {
          break;
        }

        ++a3;
        (*v54)(v29, v28);

        v26 = v59;
        if (v24 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v38 = v50;
      sub_22766A770();
      v39 = v25;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v49;
      v44 = v55;
      if (v42)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v25;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v44 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v54)(v51, v28);
    }
  }
}

void sub_2275872E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v76 = a7;
  v77 = a5;
  LODWORD(v75) = a6;
  v70 = sub_22766B390();
  v72 = *(v70 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227662190();
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2276658B0();
  v74 = *(v17 - 8);
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a3;
  v23 = sub_22753FFB8(v21, a2, a3, a4, v75, v76);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v24 = v73;
    v67 = v16;
    v68 = v13;
    v69 = a2;
    v76 = v20;
    v63 = v17;
    if (sub_227669C10())
    {
      v25 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51010], v25);
LABEL_6:
      swift_willThrow();
      return;
    }

    v27 = a4 >> 1;
    if (a4 >> 1 == v22)
    {
LABEL_8:
      sub_226EDC474(0);
    }

    else
    {
      v28 = v22;
      v29 = v74;
      v65 = "ManagedCatalogTipJournal";
      v66 = v74 + 16;
      v64 = (v24 + 8);
      v73 = v74 + 8;
      if (v22 <= v27)
      {
        v30 = a4 >> 1;
      }

      else
      {
        v30 = v22;
      }

      v75 = v30;
      v31 = v63;
      v32 = v76;
      while (1)
      {
        if (v75 == v28)
        {
          __break(1u);
          return;
        }

        (*(v29 + 16))(v32, v69 + *(v29 + 72) * v28, v31);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v77];

        type metadata accessor for ManagedCatalogTipReference();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v46 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v47 = swift_allocError();
          (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D51000], v46);
          v49 = v47;
          swift_willThrow();
          goto LABEL_21;
        }

        v37 = v36;
        sub_227665880();
        v38 = sub_22766BFD0();

        [v37 setIdentifier_];

        v39 = sub_2276658A0();
        v40 = v78;
        v41 = sub_2275335E8(v39);
        if (v40)
        {
          break;
        }

        v42 = sub_227533858(v77, v41);
        v43 = v31;

        [v37 setCategoryIdentifiers_];

        v44 = v67;
        v32 = v76;
        sub_227665890();
        sub_2276620E0();
        v78 = 0;
        ++v28;
        (*v64)(v44, v68);
        v45 = sub_22766BFD0();

        [v37 setDateReleased_];

        v31 = v43;
        (*v73)(v32, v43);
        v29 = v74;
        if (v27 == v28)
        {
          goto LABEL_8;
        }
      }

      v49 = v40;

LABEL_21:
      v50 = v71;
      sub_22766A770();
      v51 = v49;
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v70;
      v56 = v72;
      if (v54)
      {
        v57 = v49;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        v60 = v57;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v59 = v61;
        _os_log_impl(&dword_226E8E000, v52, v53, "%@", v58, 0xCu);
        sub_226E97D1C(v59, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v59, -1, -1);
        v31 = v63;
        MEMORY[0x22AA9A450](v58, -1, -1);
      }

      (*(v56 + 8))(v50, v55);
      swift_willThrow();
      sub_226EDC474(0);
      (*v73)(v76, v31);
    }
  }
}

void sub_227587A24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v62 = a7;
  v63 = a5;
  LODWORD(v61) = a6;
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2276650A0();
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2275400F8(a1, a2, a3, a4, v61, v62);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v15;
    v62 = a2;
    v52 = v14;
    v53 = v19;
    if (sub_227669C10())
    {
      v24 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51010], v24);
LABEL_6:
      swift_willThrow();
      return;
    }

    v61 = a4 >> 1;
    v26 = v53;
    v27 = v64;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v28 = v18;
      v29 = v22;
      v56 = "pCategoryReference";
      v57 = v64 + 16;
      v30 = (v59 + 8);
      v31 = v61;
      if (a3 > v61)
      {
        v31 = a3;
      }

      v58 = (v64 + 8);
      v59 = v31;
      while (1)
      {
        if (v59 == a3)
        {
          __break(1u);
          return;
        }

        (*(v27 + 16))(v29, v62 + *(v27 + 72) * a3, v26);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v63];

        type metadata accessor for ManagedCatalogTipJournal();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          break;
        }

        v36 = v35;
        ++a3;
        sub_227665050();
        v37 = sub_22766BFD0();

        [v36 setTipIdentifier_];

        sub_227665070();
        v38 = sub_2276626A0();
        (*v30)(v28, v60);
        [v36 setDate_];

        sub_227665060();
        v39 = sub_22766BFD0();

        [v36 setJournalIdentifier_];

        sub_227665040();
        [v36 setElapsedTime_];
        sub_227665090();
        [v36 setTotalTime_];

        (*v58)(v29, v26);
        v27 = v64;
        if (v61 == a3)
        {
          goto LABEL_14;
        }
      }

      v40 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v41 = swift_allocError();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
      swift_willThrow();
      v43 = v52;
      sub_22766A770();
      v44 = v41;
      v45 = sub_22766B380();
      v46 = sub_22766C8B0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = v41;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_226E8E000, v45, v46, "%@", v47, 0xCu);
        sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v48, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      (*(v54 + 8))(v43, v55);
      swift_willThrow();
      sub_226EDC474(0);
      (*v58)(v29, v53);
    }
  }
}

void sub_2275880C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v61 = a7;
  LODWORD(v59) = a6;
  v60 = a5;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227667B30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_227540238(v20, a2, a3, a4, v59, v61);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v16;
    v61 = v19;
    v53 = v11;
    v54 = v14;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = a4 >> 1;
      v26 = v61;
      v27 = v58;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v15;
        v56 = "pCategoryIdentifier";
        v57 = v58 + 16;
        v30 = (v58 + 8);
        if (a3 > v25)
        {
          v25 = a3;
        }

        v59 = v25;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v29);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v60];

          type metadata accessor for ManagedCatalogTipCategoryReference();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227667B10();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setIdentifier_];

          sub_227667B20();
          v38 = sub_22766BFD0();

          [v35 setName_];

          v21 = v36;
          v26 = v61;
          (*v30)(v61, v29);
          v27 = v58;
          if (v28 == a3)
          {
            goto LABEL_13;
          }
        }

        v61 = v30;

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v54;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          v51 = v48;
          v42 = v54;
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v55 + 8))(v42, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v26, v29);
      }
    }
  }
}