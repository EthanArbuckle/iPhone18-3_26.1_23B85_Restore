void sub_22758868C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEEF0, &qword_22768B9C8, &qword_27D7BEEF8, sub_227596550);
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
      v51 = "ManagedCatalogThemeCategory";
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

        type metadata accessor for ManagedCatalogTipCategoryIdentifier();
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

void sub_227588B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v73 = a7;
  LODWORD(v72) = a6;
  v71 = a5;
  v11 = sub_22766B390();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227665D70();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_227540378(v20, a2, a3, a4, v72, v73);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v73 = v16;
    v64 = v14;
    v65 = v15;
    v63 = v11;
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
      v25 = v74;
LABEL_22:
      v74 = v25;
      sub_226EDC474(0);
    }

    else
    {
      v26 = v73;
      v67 = "ManagedCatalogTheme";
      v68 = v73 + 16;
      v69 = (v73 + 8);
      if (a3 <= (a4 >> 1))
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = a3;
      }

      v72 = v27;
      v28 = v65;
      v25 = v74;
      v29 = v19;
      v66 = a4 >> 1;
      while (1)
      {
        if (v72 == a3)
        {
          __break(1u);
          return;
        }

        v74 = v25;
        v30 = v28;
        (*(v26 + 16))(v29, v21 + *(v26 + 72) * a3, v28);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = v71;
        v34 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v71];

        type metadata accessor for ManagedCatalogThemeCategory();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          v47 = v29;

          v48 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D51000], v48);
          swift_willThrow();
          goto LABEL_26;
        }

        v36 = v35;
        v37 = v21;
        sub_227665D30();
        v38 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227665D40();
        v39 = sub_22766BFD0();

        [v36 setName_];

        v40 = sub_227665D60();
        v41 = 0x7FFFFFFFLL;
        if (v40 < 0x7FFFFFFF)
        {
          v41 = v40;
        }

        v42 = v41 <= 0xFFFFFFFF80000000 ? 0xFFFFFFFF80000000 : v41;
        [v36 setSortOrder_];
        v43 = sub_227665D50();
        v44 = v74;
        v45 = sub_227647D08(v33, v43);
        v25 = v44;
        if (v44)
        {
          break;
        }

        v46 = v45;
        ++a3;

        [v36 setThemes_];

        v28 = v30;
        (*v69)(v29, v30);
        v21 = v37;
        v26 = v73;
        if (v66 == a3)
        {
          goto LABEL_22;
        }
      }

      v47 = v29;

LABEL_26:
      v50 = v64;
      sub_22766A770();
      v51 = v25;
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v63;
      v56 = v70;
      if (v54)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        v59 = v25;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 4) = v60;
        *v58 = v60;
        _os_log_impl(&dword_226E8E000, v52, v53, "%@", v57, 0xCu);
        sub_226E97D1C(v58, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v58, -1, -1);
        v61 = v57;
        v50 = v64;
        MEMORY[0x22AA9A450](v61, -1, -1);
      }

      (*(v56 + 8))(v50, v55);
      swift_willThrow();
      sub_226EDC474(0);
      (*v69)(v47, v65);
    }
  }
}

void sub_2275891B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), int a6, uint64_t a7)
{
  v62 = a7;
  LODWORD(v61) = a6;
  v63 = a5;
  v11 = sub_22766B390();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663A30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_2275404B8(v20, a2, a3, a4, v61, v62);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v60 = v19;
    v62 = v16;
    v54 = v11;
    v55 = v14;
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
      v61 = a4 >> 1;
      v25 = v62;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = v15;
        v57 = "ManagedCatalogSyncAnchor";
        v58 = v62 + 16;
        v27 = (v62 + 8);
        v28 = v61;
        if (a3 > v61)
        {
          v28 = a3;
        }

        v59 = v28;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          v29 = v21 + *(v25 + 72) * a3;
          v30 = *(v25 + 16);
          v31 = v60;
          v30(v60, v29, v26);
          v32 = objc_opt_self();
          v33 = sub_22766BFD0();
          v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v63];

          type metadata accessor for ManagedCatalogTheme();
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
            break;
          }

          v36 = v35;
          ++a3;
          sub_227663A00();
          v37 = v31;
          v38 = v21;
          v39 = sub_22766BFD0();

          [v36 setIdentifier_];

          sub_227663A10();
          v40 = sub_22766BFD0();

          [v36 setName_];

          v21 = v38;
          v25 = v62;
          [v36 setSortOrder_];

          (*v27)(v37, v26);
          if (v61 == a3)
          {
            goto LABEL_13;
          }
        }

        v63 = v27;

        v41 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v42 = swift_allocError();
        (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
        swift_willThrow();
        v44 = v55;
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
          v53 = v50;
          v44 = v55;
          MEMORY[0x22AA9A450](v53, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v56 + 8))(v44, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v63)(v31, v26);
      }
    }
  }
}

void sub_2275897A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v69 = a7;
  LODWORD(v68) = a6;
  v71 = a5;
  v60 = sub_22766B390();
  v58 = *(v60 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_227665010();
  v66 = *(v70 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v70);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227662750();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227665030();
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2275405F8(a1, a2, a3, a4, v68, v69);
  if (v24)
  {
    if (v24 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v55 = v15;
    v56 = v23;
    v67 = v16;
    v69 = a2;
    v57 = v20;
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
      v68 = a4 >> 1;
      v27 = a4 >> 1 == a3;
      v28 = v56;
      v29 = v57;
      v30 = v55;
      v31 = v72;
      if (v27)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v32 = v19;
        v63 = "ManagedCatalogProgramReference";
        v64 = v72 + 16;
        v61 = (v66 + 8);
        v62 = (v65 + 8);
        v33 = v68;
        if (a3 > v68)
        {
          v33 = a3;
        }

        v65 = v72 + 8;
        v66 = v33;
        while (1)
        {
          if (v66 == a3)
          {
            __break(1u);
            return;
          }

          (*(v31 + 16))(v28, v69 + *(v31 + 72) * a3, v29);
          v34 = objc_opt_self();
          v35 = sub_22766BFD0();
          v36 = [v34 insertNewObjectForEntityForName:v35 inManagedObjectContext:v71];

          type metadata accessor for ManagedCatalogSyncAnchor();
          v37 = swift_dynamicCastClass();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          ++a3;
          sub_227664FC0();
          v39 = sub_22766BFD0();

          [v38 setBuild_];

          sub_227664FA0();
          v40 = sub_2276626A0();
          (*v62)(v32, v67);
          [v38 setDate_];

          sub_227665020();
          sub_227665000();
          (*v61)(v30, v70);
          v41 = sub_22766BFD0();

          [v38 setStatus_];

          sub_227664FD0();
          v42 = sub_22766BFD0();

          [v38 setToken_];

          (*v65)(v28, v29);
          v31 = v72;
          if (v68 == a3)
          {
            goto LABEL_13;
          }
        }

        v43 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v44 = swift_allocError();
        (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D51000], v43);
        swift_willThrow();
        v46 = v59;
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
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v58 + 8))(v46, v60);
        swift_willThrow();
        sub_226EDC474(0);
        (*v65)(v56, v57);
      }
    }
  }
}

void sub_227589F24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666A40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227540738(a1, a2, a3, a4, v58, v59);
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
      v52 = "ManagedCatalogPreview";
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

        type metadata accessor for ManagedCatalogProgramReference();
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

        sub_227535488(v35, v33);
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

void sub_22758A498(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664210();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_227540878(v20, a2, a3, a4, v58, v59);
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
      v52 = "ManagedCatalogModalityReference";
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

        type metadata accessor for ManagedCatalogPreview();
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

        sub_226F9789C(v35);
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

void sub_22758AA08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666FF0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2275409B8(a1, a2, a3, a4, v58, v59);
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
      v52 = "ManagedCatalogModalityMetadata";
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

        type metadata accessor for ManagedCatalogModalityReference();
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

        sub_227335928(v35, v33);
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

void sub_22758AF7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666980();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227540AF8(a1, a2, a3, a4, v58, v59);
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
      v52 = "ManagedCatalogModalityFeature";
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

        type metadata accessor for ManagedCatalogModalityMetadata();
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

        sub_2272C4068(v35, v33);
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

void sub_22758B4F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(uint64_t, uint64_t), int a6, uint64_t a7)
{
  v58 = a7;
  LODWORD(v57) = a6;
  v59 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666330();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_227540C38(v20, a2, a3, a4, v57, v58);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v56 = v16;
    v58 = v19;
    v51 = v14;
    v52 = v11;
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
      v26 = v58;
      v27 = v56;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v15;
        v54 = "lterPropertyType";
        v55 = v56 + 16;
        v30 = (v56 + 8);
        if (a3 > v25)
        {
          v25 = a3;
        }

        v57 = v25;
        while (1)
        {
          if (v57 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v29);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v59];

          type metadata accessor for ManagedCatalogMetadataJournal();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227666310();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setIdentifier_];

          v21 = v36;
          v26 = v58;
          sub_227666320();
          [v35 setTimestamp_];

          (*v30)(v26, v29);
          v27 = v56;
          if (v28 == a3)
          {
            goto LABEL_13;
          }
        }

        v59 = v30;

        v38 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v39 = swift_allocError();
        (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
        swift_willThrow();
        v41 = v51;
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
          MEMORY[0x22AA9A450](v47, -1, -1);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        (*(v53 + 8))(v41, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v26, v29);
      }
    }
  }
}

void sub_22758BA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v61 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEE60, &qword_22768B980, &qword_27D7BEE68, sub_22759617C);
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
      v59 = "ManagedCatalogMetadataJournal";
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

        type metadata accessor for ManagedCatalogModalityFeature();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        v32 = v31;
        v62 = v25;
        v63 = v26;
        v64 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
        sub_227663AD0();
        v33 = sub_22766BFD0();
        v65 = v23;
        v34 = v22;
        v35 = v27;
        v36 = v26;
        v37 = v25;
        v38 = v33;
        [v32 setFeature_];

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

void sub_22758BFC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v61 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEE50, &qword_22768B978, &qword_27D7BEE58, sub_22759609C);
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
      v59 = "cessibilityFeature";
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

        type metadata accessor for ManagedCatalogFilterPropertyType();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        v32 = v31;
        v62 = v25;
        v63 = v26;
        v64 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
        sub_227663AD0();
        v33 = sub_22766BFD0();
        v65 = v23;
        v34 = v22;
        v35 = v27;
        v36 = v26;
        v37 = v25;
        v38 = v33;
        [v32 setPropertyType_];

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

void sub_22758C4F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v61 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEE40, &qword_22768B970, &qword_27D7BEE48, sub_227595ED4);
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
      v59 = "ManagedBurnBarDisplayPreference";
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

        type metadata accessor for ManagedCatalogAccessibilityFeature();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        v32 = v31;
        v62 = v25;
        v63 = v26;
        v64 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
        sub_227663AD0();
        v33 = sub_22766BFD0();
        v65 = v23;
        v34 = v22;
        v35 = v27;
        v36 = v26;
        v37 = v25;
        v38 = v33;
        [v32 setFeature_];

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

void sub_22758CA24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
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
  v18 = sub_227666F20();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227540D78(a1, a2, a3, v66, v64, v65);
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
        v58 = "Identifier";
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

          type metadata accessor for ManagedBurnBarDisplayPreference();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          v34 = sub_227666F10();
          v36 = v35;
          v68 = v34;
          v69 = v35;
          v38 = v37 & 1;
          v70 = v37 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBC8, &qword_22768B7D0);
          sub_227663AD0();
          v39 = sub_22766BFD0();
          sub_226EB2DFC(v34, v36, v38);

          [v33 setBehavior_];

          v25 = v65;
          v40 = v61;
          sub_227666EF0();
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

void sub_22758D0EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v71 = a7;
  v72 = a4;
  LODWORD(v70) = a6;
  v73 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v65 = *(v14 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227669360();
  v77 = *(v18 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227540EB8(a1, a2, a3, v72, v70, v71);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v66 = v17;
    v67 = v14;
    v68 = a2;
    v69 = v21;
    v71 = v18;
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
      v25 = v71;
      v72 >>= 1;
      v26 = v77;
      if (v72 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v63 = (v65 + 8);
        v64 = v77 + 16;
        v65 = v77 + 8;
        v27 = v72;
        if (a3 > v72)
        {
          v27 = a3;
        }

        v70 = v27;
        v60 = v11;
        v61 = v10;
        while (1)
        {
          if (v70 == a3)
          {
            __break(1u);
            return;
          }

          v28 = v68 + *(v26 + 72) * a3;
          v29 = *(v26 + 16);
          v30 = v69;
          v29(v69, v28, v25);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v73];

          type metadata accessor for ManagedBookmark();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227669350();
          v36 = sub_22766BFD0();

          [v35 setReferenceIdentifier_];

          v37 = sub_227669320();
          v39 = v38;
          v74 = v37;
          v75 = v38;
          v40 = v30;
          v42 = v41 & 1;
          v76 = v41 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
          sub_227663AD0();
          v43 = sub_22766BFD0();
          v44 = v39;
          v25 = v71;
          sub_226EB2DFC(v37, v44, v42);

          [v35 setReferenceType_];

          v45 = v66;
          sub_227669330();
          v46 = sub_2276626A0();
          (*v63)(v45, v67);
          [v35 setDateBookmarked_];

          v26 = v77;
          (*v65)(v40, v25);
          if (v72 == a3)
          {
            goto LABEL_13;
          }
        }

        v47 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v48 = swift_allocError();
        (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D51000], v47);
        swift_willThrow();
        v50 = v62;
        sub_22766A770();
        v51 = v48;
        v52 = sub_22766B380();
        v53 = sub_22766C8B0();
        v54 = v48;

        if (os_log_type_enabled(v52, v53))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          v57 = v54;
          v25 = v71;
          v58 = _swift_stdlib_bridgeErrorToNSError();
          *(v55 + 4) = v58;
          *v56 = v58;
          _os_log_impl(&dword_226E8E000, v52, v53, "%@", v55, 0xCu);
          sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v56, -1, -1);
          MEMORY[0x22AA9A450](v55, -1, -1);
        }

        (*(v60 + 8))(v50, v61);
        swift_willThrow();
        sub_226EDC474(0);
        (*v65)(v69, v25);
      }
    }
  }
}

void sub_22758D7CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEE10, &qword_22768B958, &qword_27D7BEE18, sub_2275965A4);
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
      v51 = "ManagedBodyFocus";
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

        type metadata accessor for ManagedBodyFocusIdentifier();
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

void sub_22758DC88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v61 = a7;
  LODWORD(v59) = a6;
  v60 = a5;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227669530();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_227540FF8(v20, a2, a3, a4, v59, v61);
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
        v56 = "AudioLanguageIdentifier";
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

          type metadata accessor for ManagedBodyFocus();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_227669510();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setIdentifier_];

          sub_227669520();
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

void sub_22758E250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BEDE8, &qword_22768B948, &qword_27D7BEDF0, sub_227596DB8);
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
      v51 = "ManagedAudioLanguagePreference";
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

        type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
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

void sub_22758E70C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(uint64_t, uint64_t), int a6, uint64_t a7)
{
  v58 = a7;
  LODWORD(v57) = a6;
  v59 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276668F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_227541138(v20, a2, a3, a4, v57, v58);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v56 = v16;
    v58 = v19;
    v51 = v14;
    v52 = v11;
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
      v26 = v58;
      v27 = v56;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v15;
        v54 = "eetAcknowledgment";
        v55 = v56 + 16;
        v30 = (v56 + 8);
        if (a3 > v25)
        {
          v25 = a3;
        }

        v57 = v25;
        while (1)
        {
          if (v57 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v29);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v59];

          type metadata accessor for ManagedAudioLanguagePreference();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          sub_2276668E0();
          v36 = v21;
          v37 = sub_22766BFD0();

          [v35 setLanguageIdentifier_];

          v21 = v36;
          v26 = v58;
          sub_2276668C0();
          [v35 setMachTimestamp_];

          (*v30)(v26, v29);
          v27 = v56;
          if (v28 == a3)
          {
            goto LABEL_13;
          }
        }

        v59 = v30;

        v38 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v39 = swift_allocError();
        (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
        swift_willThrow();
        v41 = v51;
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
          MEMORY[0x22AA9A450](v47, -1, -1);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        (*(v53 + 8))(v41, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v26, v29);
      }
    }
  }
}

void sub_22758ECB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v60 = a5;
  v63 = a7;
  LODWORD(v62) = a6;
  v11 = sub_22766B390();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227669040();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227541278(a1, a2, a3, a4, v62, v63);
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
      v55 = "ManagedAssetResumableLoad";
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

        type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
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
        v36 = sub_226EB1040(&qword_2813A5520, MEMORY[0x277D539C0]);
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

void sub_22758F284(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v73 = a7;
  LODWORD(v70) = a6;
  v71 = a5;
  v11 = sub_22766B390();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276624A0();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227665490();
  v72 = *(v19 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2275413B8(a1, a2, a3, a4, v70, v73);
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v67 = a2;
    v68 = v22;
    v66 = v15;
    v69 = v19;
    v57 = v14;
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

    v65 = v18;
    v70 = a4 >> 1;
    v26 = v69;
    v27 = v72;
    if (a4 >> 1 == a3)
    {
LABEL_17:
      sub_226EDC474(0);
    }

    else
    {
      v61 = "ManagedAssetRequestReference";
      v62 = v72 + 16;
      v60 = (v64 + 8);
      v28 = v70;
      if (a3 > v70)
      {
        v28 = a3;
      }

      v63 = (v72 + 8);
      v64 = v28;
      while (1)
      {
        if (v64 == a3)
        {
          __break(1u);
          return;
        }

        v29 = v68;
        (*(v27 + 16))(v68, v67 + *(v27 + 72) * a3, v26);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v71];

        type metadata accessor for ManagedAssetResumableLoad();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {
          break;
        }

        v34 = v33;
        v73 = a3 + 1;
        v35 = v65;
        sub_227665480();
        sub_227662390();
        v36 = *v60;
        v37 = v66;
        (*v60)(v35, v66);
        v38 = sub_22766BFD0();

        [v34 setRemoteURL_];

        sub_227665460();
        sub_227662390();
        v39 = v35;
        a3 = v73;
        v40 = v37;
        v27 = v72;
        v36(v39, v40);
        v26 = v69;
        v41 = sub_22766BFD0();

        [v34 setLocalURL_];

        v42 = sub_227665450();
        if (v42 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v43 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        [v34 setDownloadToken_];

        (*v63)(v29, v26);
        if (v70 == a3)
        {
          goto LABEL_17;
        }
      }

      v44 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v45 = swift_allocError();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D51000], v44);
      swift_willThrow();
      v47 = v57;
      sub_22766A770();
      v48 = v45;
      v49 = sub_22766B380();
      v50 = sub_22766C8B0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v45;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&dword_226E8E000, v49, v50, "%@", v51, 0xCu);
        sub_226E97D1C(v52, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v52, -1, -1);
        v55 = v51;
        v26 = v69;
        MEMORY[0x22AA9A450](v55, -1, -1);
      }

      (*(v58 + 8))(v47, v59);
      swift_willThrow();
      sub_226EDC474(0);
      (*v63)(v68, v26);
    }
  }
}

void sub_22758F95C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, void (**a7)(char *, uint64_t))
{
  v53 = a7;
  v54 = a5;
  v12 = sub_22766B390();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227666070();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = sub_2275414F8(v20, v21, a3, a4, a6, v53);
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
        v51 = "estMediaStreamMetadata";
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

          type metadata accessor for ManagedAssetRequestReference();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          ++a3;
          sub_2273F9784(v34);

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

void sub_22758FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v76 = a7;
  v77 = a5;
  v75 = a4;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v64 - v18;
  v20 = sub_2276687D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = v75;
  v27 = sub_227541638(v25, a2, a3, v75, a6, v76);
  if (v27)
  {
    if (v27 != 1)
    {
      v28 = v27;
      swift_willThrow();
      v78 = v28;
    }
  }

  else
  {
    v73 = v19;
    v74 = v21;
    v68 = a2;
    v69 = v24;
    v76 = v20;
    v65 = v15;
    if (sub_227669C10())
    {
      v29 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v30 = swift_allocError();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D51010], v29);
      v78 = v30;
      swift_willThrow();
    }

    else
    {
      v75 = v26 >> 1;
      v32 = v26 >> 1 == a3;
      v34 = v76;
      v33 = v77;
      v36 = v68;
      v35 = v69;
      v37 = v74;
      if (v32)
      {
LABEL_8:
        sub_226EDC474(0);
      }

      else
      {
        v70 = "ManagedAssetRequestKeyMetadata";
        v71 = v74 + 16;
        v38 = (v74 + 8);
        v39 = v75;
        if (a3 > v75)
        {
          v39 = a3;
        }

        v72 = v39;
        while (1)
        {
          if (v72 == a3)
          {
            __break(1u);
            return;
          }

          (*(v37 + 16))(v35, v36 + *(v37 + 72) * a3, v34);
          v41 = objc_opt_self();
          v42 = sub_22766BFD0();
          v43 = [v41 insertNewObjectForEntityForName:v42 inManagedObjectContext:v33];

          type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
          v44 = swift_dynamicCastClass();
          if (!v44)
          {
            break;
          }

          v45 = v44;
          sub_2276687A0();
          v46 = sub_22766BFD0();

          [v45 setIdentifier_];

          sub_2276687C0();
          v47 = sub_22766BFD0();

          [v45 setTitle_];

          v48 = v73;
          sub_2276687B0();
          v49 = v48;
          v50 = sub_2276624A0();
          v51 = *(v50 - 8);
          if ((*(v51 + 48))(v49, 1, v50) == 1)
          {
            sub_226E97D1C(v49, &unk_27D7BB570, &unk_227670FC0);
            v40 = 0;
          }

          else
          {
            sub_227662390();
            (*(v51 + 8))(v49, v50);
            v40 = sub_22766BFD0();
            v36 = v68;
            v35 = v69;
          }

          ++a3;
          [v45 setThumbnailURL_];

          v34 = v76;
          (*v38)(v35, v76);
          v37 = v74;
          v33 = v77;
          if (v75 == a3)
          {
            goto LABEL_8;
          }
        }

        v52 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v53 = swift_allocError();
        (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D51000], v52);
        swift_willThrow();
        v55 = v65;
        sub_22766A770();
        v56 = v53;
        v57 = sub_22766B380();
        v58 = sub_22766C8B0();
        v78 = v53;

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 138412290;
          v61 = v78;
          v62 = _swift_stdlib_bridgeErrorToNSError();
          *(v59 + 4) = v62;
          *v60 = v62;
          _os_log_impl(&dword_226E8E000, v57, v58, "%@", v59, 0xCu);
          sub_226E97D1C(v60, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v60, -1, -1);
          v63 = v59;
          v35 = v69;
          MEMORY[0x22AA9A450](v63, -1, -1);
        }

        (*(v67 + 8))(v55, v66);
        swift_willThrow();
        sub_226EDC474(0);
        (*v38)(v35, v34);
      }
    }
  }
}

void sub_22759058C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, void (**a7)(char *, uint64_t))
{
  v53 = a7;
  v54 = a5;
  v12 = sub_22766B390();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276668A0();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = sub_227541778(v20, v21, a3, a4, a6, v53);
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
        v51 = "ManagedAssetLoadFailure";
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

          type metadata accessor for ManagedAssetRequestKeyMetadata();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          ++a3;
          sub_22739B3A4(v34);

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

void sub_227590AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v66 = a7;
  LODWORD(v65) = a6;
  v68 = a5;
  v70 = a2;
  v56 = sub_22766B390();
  v54 = *(v56 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_227662750();
  v62 = *(v67 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v67);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276624A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227664B30();
  v69 = *(v20 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2275418B8(a1, v70, a3, a4, v65, v66);
  if (v24)
  {
    if (v24 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v61 = a4;
    v63 = v14;
    v64 = v15;
    v66 = v20;
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
      v65 = v61 >> 1;
      v27 = v66;
      v28 = v69;
      if (v61 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v29 = v23;
        v30 = v19;
        v59 = "ManagedAssetEntry";
        v60 = v69 + 16;
        v57 = (v62 + 8);
        v58 = (v16 + 8);
        v31 = v65;
        if (a3 > v65)
        {
          v31 = a3;
        }

        v61 = v69 + 8;
        v62 = v31;
        v32 = v63;
        while (1)
        {
          if (v62 == a3)
          {
            __break(1u);
            return;
          }

          (*(v28 + 16))(v29, v70 + *(v28 + 72) * a3, v27);
          v33 = objc_opt_self();
          v34 = sub_22766BFD0();
          v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v68];

          type metadata accessor for ManagedAssetLoadFailure();
          v36 = swift_dynamicCastClass();
          if (!v36)
          {
            break;
          }

          v37 = v36;
          ++a3;
          sub_227664B10();
          sub_227662390();
          (*v58)(v30, v64);
          v38 = sub_22766BFD0();

          [v37 setRemoteURL_];

          sub_227664AF0();
          v39 = sub_22766BFD0();

          [v37 setBundleIdentifier_];

          v27 = v66;
          sub_227664B00();
          v40 = sub_2276626A0();
          (*v57)(v32, v67);
          [v37 setDate_];

          (*v61)(v29, v27);
          v28 = v69;
          if (v65 == a3)
          {
            goto LABEL_13;
          }
        }

        v41 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v42 = swift_allocError();
        (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
        swift_willThrow();
        v44 = v55;
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
          v27 = v66;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v54 + 8))(v44, v56);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v29, v27);
      }
    }
  }
}

void sub_227591224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, void (**a7)(char *, uint64_t))
{
  v53 = a7;
  v54 = a5;
  v12 = sub_22766B390();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227663180();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = sub_2275419F8(v20, v21, a3, a4, a6, v53);
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
        v51 = "ManagedAssetBundleLoadFailure";
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

          type metadata accessor for ManagedAssetEntry();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          ++a3;
          sub_227339B04(v34);

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

void sub_227591768(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663480();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_227541B38(v20, a2, a3, a4, v58, v59);
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
      v52 = "orkoutPlanSession";
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

        type metadata accessor for ManagedAssetBundle();
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

        sub_226FC3278(v35);
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

void sub_227591CD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227667780();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227541C78(a1, a2, a3, a4, v58, v59);
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
      v52 = "ManagedArchivedSession";
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

        type metadata accessor for ManagedArchivedWorkoutPlanSession();
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

        sub_2275A45E0(v35, v33);
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

void sub_22759224C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664530();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227541DB8(a1, a2, a3, a4, v58, v59);
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
      v52 = "ManagedAlternativeActivityType";
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

        type metadata accessor for ManagedArchivedSession();
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

        sub_2272187F4(v35, v33);
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

void sub_2275927C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v53 = a7;
  v54 = a5;
  v12 = sub_22766B390();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = sub_22753BD98(a1, a2, a3, a4, a6, v53, &qword_27D7BF0E0, &qword_22768BAB0, &qword_27D7BF0E8, sub_227595FB4);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v47 = v15;
    v48 = v12;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
      swift_willThrow();
    }

    else
    {
      v52 = v16;
      v53 = a2;
      if (a4 >> 1 == a3)
      {
LABEL_14:
        sub_226EDC474(0);
      }

      else
      {
        v23 = a4 >> 1;
        v24 = v19;
        v25 = &qword_27D7B86D0;
        if (a3 <= (a4 >> 1))
        {
          v26 = a4 >> 1;
        }

        else
        {
          v26 = a3;
        }

        v50 = "ManagedAchievementWeeklyStreak";
        v51 = v26;
        while (1)
        {
          if (v51 == a3)
          {
            __break(1u);
            return;
          }

          sub_226E93170(v53 + *(v55 + 72) * a3, v24, v25, &qword_22768B670);
          v27 = objc_opt_self();
          v28 = sub_22766BFD0();
          v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v54];

          type metadata accessor for ManagedAlternativeActivityType();
          v30 = swift_dynamicCastClass();
          if (!v30)
          {
            break;
          }

          v31 = v30;
          ++a3;
          sub_227663AD0();
          v32 = v25;
          v33 = sub_22766BFD0();
          [v31 setAlternativeActivityType_];

          v25 = v32;
          sub_226E97D1C(v24, v32, &qword_22768B670);
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
        sub_226E97D1C(v24, &qword_27D7B86D0, &qword_22768B670);
      }
    }
  }
}

void sub_227592D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7)
{
  v65 = a7;
  v67 = a5;
  v66 = sub_227662750();
  v63 = *(v66 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v66);
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2276667B0();
  v68 = *(v18 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227541EF8(a1, a2, a3, a4, a6, v65);
  if (v22)
  {
    if (v22 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v23 = v60;
    v65 = a4;
    v56 = v17;
    v57 = v14;
    v58 = v18;
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
      v64 = a2;
      v65 >>= 1;
      v26 = v58;
      v27 = v68;
      if (v65 == a3)
      {
LABEL_18:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v21;
        v29 = v23;
        v61 = "ntNotificationRecord";
        v62 = v68 + 16;
        v30 = (v63 + 8);
        v31 = (v68 + 8);
        v32 = v65;
        if (a3 > v65)
        {
          v32 = a3;
        }

        v63 = v32;
        while (1)
        {
          if (v63 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v28, v64 + *(v27 + 72) * a3, v26);
          v33 = objc_opt_self();
          v34 = sub_22766BFD0();
          v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v67];

          type metadata accessor for ManagedAchievementWeeklyStreak();
          v36 = swift_dynamicCastClass();
          if (!v36)
          {
            break;
          }

          v37 = v36;
          ++a3;
          v38 = sub_2276667A0();
          v39 = 0x7FFFFFFFLL;
          if (v38 < 0x7FFFFFFF)
          {
            v39 = v38;
          }

          if (v39 <= 0xFFFFFFFF80000000)
          {
            v40 = 0xFFFFFFFF80000000;
          }

          else
          {
            v40 = v39;
          }

          [v37 setLength_];
          sub_227666770();
          v41 = sub_2276626A0();
          (*v30)(v29, v66);
          [v37 setFirstWeekdayOfStreakEnd_];

          (*v31)(v28, v26);
          v27 = v68;
          if (v65 == a3)
          {
            goto LABEL_18;
          }
        }

        v42 = v31;

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
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v59 + 8))(v46, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v42)(v28, v58);
      }
    }
  }
}

void sub_2275933B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v64 = a7;
  v65 = a5;
  v67 = sub_22766B390();
  v58 = *(v67 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v67);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v56 - v17;
  v19 = sub_2276682A0();
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_227542038(a1, a2, a3, a4, a6, v64);
  if (v23)
  {
    if (v23 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v24 = v67;
    v64 = v22;
    v56 = v14;
    v57 = v19;
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
      v63 = a2;
      v27 = a4 >> 1;
      v28 = v57;
      v29 = v64;
      v30 = v66;
      if (a4 >> 1 == a3)
      {
LABEL_7:
        sub_226EDC474(0);
      }

      else
      {
        v31 = a4 >> 1;
        v32 = v24;
        v33 = v18;
        v59 = "ntEnvironmentCache";
        v60 = v66 + 16;
        if (a3 > v27)
        {
          v27 = a3;
        }

        v61 = (v66 + 8);
        v62 = v27;
        while (1)
        {
          if (v62 == a3)
          {
            __break(1u);
            return;
          }

          (*(v30 + 16))(v29, v63 + *(v30 + 72) * a3, v28);
          v34 = objc_opt_self();
          v35 = sub_22766BFD0();
          v36 = [v34 insertNewObjectForEntityForName:v35 inManagedObjectContext:v65];

          type metadata accessor for ManagedAchievementNotificationRecord();
          v37 = swift_dynamicCastClass();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          sub_227668290();
          v39 = sub_22766BFD0();

          [v38 setTemplateUniqueName_];

          sub_227668270();
          v40 = sub_227662750();
          v41 = *(v40 - 8);
          v42 = 0;
          if ((*(v41 + 48))(v33, 1, v40) != 1)
          {
            v42 = sub_2276626A0();
            (*(v41 + 8))(v33, v40);
          }

          ++a3;
          [v38 setDatePresented_];

          v29 = v64;
          (*v61)(v64, v28);
          v32 = v67;
          v30 = v66;
          if (v31 == a3)
          {
            goto LABEL_7;
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
          v32 = v67;
          v54 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 4) = v54;
          *v52 = v54;
          _os_log_impl(&dword_226E8E000, v48, v49, "%@", v51, 0xCu);
          sub_226E97D1C(v52, &unk_27D7B9660, &qword_2276740C0);
          v55 = v52;
          v28 = v57;
          MEMORY[0x22AA9A450](v55, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v58 + 8))(v46, v32);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v29, v28);
      }
    }
  }
}

void sub_227593A4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227667A70();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227542178(a1, a2, a3, a4, v58, v59);
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
      v52 = "com.apple.hls.keys";
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

        type metadata accessor for ManagedAchievementEnvironmentCache();
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

        sub_226F94E58(v35, v33);
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

uint64_t sub_227593FC0(uint64_t a1, int a2)
{
  v54 = a2;
  v3 = sub_2276639B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v52 = *(v8 - 8);
  *&v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [objc_opt_self() currentProcess];
  v14 = [v12 userAgentForProcessInfo_];

  v15 = sub_22766C000();
  v17 = v16;

  sub_22766A6C0();
  v18 = *(v4 + 16);
  v51 = v3;
  v18(v7, a1, v3);

  v19 = v17;
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55[0] = v49;
    *v22 = 141558786;
    v50 = v17;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_226E97AE8(v15, v50, v55);
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2080;
    sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v48 = v11;
    v23 = v15;
    v24 = v51;
    v25 = sub_22766D140();
    v27 = v26;
    v28 = v24;
    v15 = v23;
    (*(v4 + 8))(v7, v28);
    v29 = sub_226E97AE8(v25, v27, v55);

    *(v22 + 34) = v29;
    v19 = v50;
    _os_log_impl(&dword_226E8E000, v20, v21, "Stream Loader - assigning user agent %{mask.hash}s to %{mask.hash}s", v22, 0x2Au);
    v30 = v49;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    (*(v52 + 8))(v48, v53);
  }

  else
  {

    (*(v4 + 8))(v7, v51);
    (*(v52 + 8))(v11, v53);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  v53 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 0x6567412D72657355;
  v32 = inited + 32;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = v15;
  *(inited + 56) = v19;
  v33 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(v32, &unk_27D7BE670, &unk_227674260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_2276728D0;
  v35 = *MEMORY[0x277CE6228];
  *(v34 + 32) = sub_22766C000();
  *(v34 + 40) = v36;
  *(v34 + 72) = MEMORY[0x277D839B0];
  *(v34 + 48) = 1;
  v37 = *MEMORY[0x277CE6220];
  *(v34 + 80) = sub_22766C000();
  *(v34 + 88) = v38;
  *(v34 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC58, qword_227687570);
  *(v34 + 96) = v33;
  v39 = sub_227149264(v34);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  if ((v54 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE680, &qword_22768B5C0);
    v40 = swift_initStackObject();
    *(v40 + 16) = v53;
    v41 = *MEMORY[0x277CE61B8];
    *(v40 + 32) = sub_22766C000();
    *(v40 + 40) = v42;
    *(v40 + 48) = 0;
    v43 = sub_22714BDBC(v40);
    swift_setDeallocating();
    sub_226E97D1C(v40 + 32, &qword_27D7BE688, &qword_22768B5C8);
    v44 = sub_227332E28(v43);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v39;
    sub_226FDAC14(v44, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, v55);

    return v55[0];
  }

  return v39;
}

uint64_t sub_2275945F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_226E99364(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227594708@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_2275947A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_22754CBC0(v1);
}

uint64_t sub_227594870(void *a1, id a2, char **a3)
{
  v5 = [a1 mediaSelectionGroupForMediaCharacteristic_];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    if (a3)
    {
      v17 = v5;
      v7 = [v5 options];
      sub_226E99364(0, &qword_27D7BDC20, 0x277CE6518);
      v8 = sub_22766C2C0();

      v20 = v6;
      if (v8 >> 62)
      {
LABEL_22:
        v9 = sub_22766CD20();
        if (v9)
        {
LABEL_5:
          v15 = a2;
          v16 = a3;
          v10 = 0;
          do
          {
            v11 = v10;
            while (1)
            {
              if ((v8 & 0xC000000000000001) != 0)
              {
                v12 = MEMORY[0x22AA991A0](v11, v8);
              }

              else
              {
                if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_21;
                }

                v12 = *(v8 + 8 * v11 + 32);
              }

              v13 = v12;
              v10 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

              a3 = [a1 preferredMediaSelection];
              a2 = [a3 mutableCopy];

              sub_22766CC20();
              swift_unknownObjectRelease();
              sub_226E99364(0, &unk_27D7BE660, 0x277CE6550);
              if (swift_dynamicCast())
              {
                break;
              }

              ++v11;
              if (v10 == v9)
              {
                goto LABEL_23;
              }
            }

            a3 = &selRef_initWithContainerID_;
            [v19 selectMediaOption:v16 inMediaSelectionGroup:v15];
            [v19 selectMediaOption:v13 inMediaSelectionGroup:v17];

            MEMORY[0x22AA985C0]();
            if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              a3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22766C360();
            }

            sub_22766C3A0();
            v6 = v20;
          }

          while (v10 != v9);
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_5;
        }
      }

LABEL_23:

      return v6;
    }
  }

  return v6;
}

uint64_t sub_227594BE8(_BYTE *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2275458D8(a1, v4, v5);
}

uint64_t sub_227594C6C(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_227545A44(a1, a2, v8, v6, v7);
}

uint64_t sub_227594D10@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AssetMediaStreamLoader.TaskResult() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v7);
  v12 = *(v2 + v10);
  v13 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22754B0E4(a1, v2 + v6, v11, v2 + v9, v12, v13, a2);
}

uint64_t sub_227594E3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227594F1C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_2276639B0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for AssetMediaStreamLoader.TaskResult() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a2(a1, v9, v10, v2 + v5, v2 + v8, v12, v13);
}

void sub_227595480(void *a1, unint64_t a2, void *a3)
{
  v100[6] = *MEMORY[0x277D85DE8];
  v6 = sub_22766B390();
  v97 = *(v6 - 1);
  v98 = v6;
  v7 = *(v97 + 64);
  MEMORY[0x28223BE20](v6);
  v86 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = &v82 - v12;
  v84 = type metadata accessor for AssetProgressUpdated();
  v13 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = &v82 - v17;
  v90 = sub_227663CD0();
  v18 = *(v90 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v90);
  v83 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2276624A0();
  v21 = *(v96 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v96);
  v24 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v26 = *(*(v25 - 8) + 64);
  v27.n128_f64[0] = MEMORY[0x28223BE20](v25 - 8);
  v94 = &v82 - v28;
  if (a2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v93 = v24;
    v95 = v21;
    v89 = v18;
    if (!i)
    {
      break;
    }

    v30 = 0;
    v31 = 0.0;
    v24 = &selRef_initWithContainerID_;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x22AA991A0](v30, a2, v27);
      }

      else
      {
        if (v30 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v32 = *(a2 + 8 * v30 + 32);
      }

      v21 = v32;
      v18 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      [v32 CMTimeRangeValue];
      sub_22766CA90();
      v34 = v33;
      v35 = a3[3];
      v36 = a3[4];
      v37 = a3[5];
      sub_22766CA90();
      v39 = v38;

      v27.n128_f64[0] = v34 / v39;
      v27.n128_f32[0] = v34 / v39;
      v31 = v31 + v27.n128_f32[0];
      ++v30;
      if (v18 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v31 = 0.0;
LABEL_13:
  v40 = [a1 URLAsset];
  v41 = sub_22766BFD0();
  v100[0] = 0;
  v42 = [v40 statusOfValueForKey:v41 error:v100];

  if (v42 == 2)
  {
    v43 = v100[0];
    v44 = [a1 URLAsset];
    if (v44)
    {
      v45 = v44;
      v98 = v43;
      v46 = [v44 URL];
      v47 = v94;
      sub_227662430();

      v48 = v95;
      v49 = v96;
      (v95[7])(v47, 0, 1, v96);
      sub_226E97D1C(v47, &unk_27D7BB570, &unk_227670FC0);
      v50 = [v45 URL];
      v51 = v93;
      sub_227662430();

      v52 = v88;
      v53 = v91;
      sub_227141A24(v88, v31);
      v54 = v89;
      v55 = v90;
      if ((*(v89 + 48))(v52, 1, v90) == 1)
      {
        (v48[1])(v51, v49);

        sub_226E97D1C(v52, &qword_27D7B9648, &unk_227674880);
      }

      else
      {
        v77 = v83;
        (*(v54 + 32))(v83, v52, v55);
        v78 = v53 + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_eventHub;
        v79 = *(v53 + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_eventHub);
        v97 = *(v78 + 8);
        swift_getObjectType();
        v80 = v85;
        (v48[2])(v85, v51, v49);
        (*(v54 + 16))(v80 + *(v84 + 20), v77, v55);
        sub_226EB1040(qword_2813A1330, type metadata accessor for AssetProgressUpdated);
        sub_2276699D0();

        sub_2275966B8(v80, type metadata accessor for AssetProgressUpdated);
        (*(v54 + 8))(v77, v55);
        (v48[1])(v93, v49);
      }
    }

    else
    {
      v68 = v94;
      (v95[7])(v94, 1, 1, v96);
      sub_226E97D1C(v68, &unk_27D7BB570, &unk_227670FC0);
      v69 = v87;
      sub_22766A6C0();
      v70 = sub_22766B380();
      v71 = sub_22766C890();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_226E8E000, v70, v71, "Stream Loader - Encountered aggregate asset download task with no URL", v72, 2u);
        MEMORY[0x22AA9A450](v72, -1, -1);
      }

      (*(v97 + 8))(v69, v98);
    }
  }

  else if (v100[0])
  {
    v56 = v100[0];
    v57 = v92;
    sub_22766A6C0();
    v58 = v56;
    v59 = sub_22766B380();
    v60 = sub_22766C890();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v99 = v58;
      v100[0] = v62;
      *v61 = 136446210;
      v63 = sub_226E99364(0, &qword_27D7BE740, 0x277CCA9B8);
      v64 = sub_2275945F8(&unk_27D7BE748, &qword_27D7BE740, 0x277CCA9B8);
      v65 = MEMORY[0x22AA995D0](v63, v64);
      v67 = sub_226E97AE8(v65, v66, v100);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_226E8E000, v59, v60, "Stream Loader - Encountered error in aggregate asset download task URL %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AA9A450](v62, -1, -1);
      MEMORY[0x22AA9A450](v61, -1, -1);
    }

    else
    {
    }

    (*(v97 + 8))(v57, v98);
  }

  else
  {
    v73 = v86;
    sub_22766A6C0();
    v74 = sub_22766B380();
    v75 = sub_22766C890();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_226E8E000, v74, v75, "Stream Loader - Encountered aggregate asset download task with no URL", v76, 2u);
      MEMORY[0x22AA9A450](v76, -1, -1);
    }

    (*(v97 + 8))(v73, v98);
  }

  v81 = *MEMORY[0x277D85DE8];
}

unint64_t sub_227595ED4()
{
  result = qword_27D7BE7A0;
  if (!qword_27D7BE7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B88E8, &qword_2276715D0);
    sub_227595F60();
    sub_2271E40F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7A0);
  }

  return result;
}

unint64_t sub_227595F60()
{
  result = qword_27D7BE7A8;
  if (!qword_27D7BE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7A8);
  }

  return result;
}

unint64_t sub_227595FB4()
{
  result = qword_27D7BE7D0;
  if (!qword_27D7BE7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D0, &qword_22768B670);
    v1 = MEMORY[0x277D52360];
    sub_226EB1040(&qword_27D7BE7D8, MEMORY[0x277D52360]);
    sub_226EB1040(&unk_27D7BE7E0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7D0);
  }

  return result;
}

unint64_t sub_22759609C()
{
  result = qword_27D7BE7F0;
  if (!qword_27D7BE7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D8, &unk_227671530);
    sub_227596128();
    sub_226FA73A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7F0);
  }

  return result;
}

unint64_t sub_227596128()
{
  result = qword_27D7BE7F8;
  if (!qword_27D7BE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7F8);
  }

  return result;
}

unint64_t sub_22759617C()
{
  result = qword_27D7BE810;
  if (!qword_27D7BE810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86E0, &qword_227679650);
    sub_227596208();
    sub_22733622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE810);
  }

  return result;
}

unint64_t sub_227596208()
{
  result = qword_27D7BE818;
  if (!qword_27D7BE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE818);
  }

  return result;
}

unint64_t sub_22759625C()
{
  result = qword_27D7BE828;
  if (!qword_27D7BE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE828);
  }

  return result;
}

unint64_t sub_2275962B0()
{
  result = qword_27D7BE838;
  if (!qword_27D7BE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE838);
  }

  return result;
}

unint64_t sub_227596304()
{
  result = qword_27D7BE840;
  if (!qword_27D7BE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE840);
  }

  return result;
}

unint64_t sub_227596358()
{
  result = qword_27D7BE848;
  if (!qword_27D7BE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE848);
  }

  return result;
}

unint64_t sub_2275963AC()
{
  result = qword_27D7BE850;
  if (!qword_27D7BE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE850);
  }

  return result;
}

unint64_t sub_227596400()
{
  result = qword_27D7BE858;
  if (!qword_27D7BE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE858);
  }

  return result;
}

unint64_t sub_227596454()
{
  result = qword_27D7BE860;
  if (!qword_27D7BE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE860);
  }

  return result;
}

unint64_t sub_2275964A8()
{
  result = qword_27D7BE868;
  if (!qword_27D7BE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE868);
  }

  return result;
}

unint64_t sub_2275964FC()
{
  result = qword_27D7BE870;
  if (!qword_27D7BE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE870);
  }

  return result;
}

unint64_t sub_227596550()
{
  result = qword_27D7BE878;
  if (!qword_27D7BE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE878);
  }

  return result;
}

unint64_t sub_2275965A4()
{
  result = qword_27D7BE880;
  if (!qword_27D7BE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE880);
  }

  return result;
}

uint64_t sub_227596650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2275966B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227596718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227596830()
{
  result = qword_27D7BEA40;
  if (!qword_27D7BEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEA40);
  }

  return result;
}

uint64_t objectdestroy_129Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v3 + 24);

  v10 = a3(0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v7, 1, v10))
  {
    (*(v11 + 8))(v3 + v7, v10);
  }

  return MEMORY[0x2821FE8E8](v3, v7 + v8, v6 | 7);
}

unint64_t sub_2275969EC()
{
  result = qword_27D7BEAB8;
  if (!qword_27D7BEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEAB8);
  }

  return result;
}

uint64_t sub_227596BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

uint64_t objectdestroy_102Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_227596DB8()
{
  result = qword_27D7BEDF8;
  if (!qword_27D7BEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEDF8);
  }

  return result;
}

unint64_t sub_227596E0C()
{
  result = qword_27D7BEF68;
  if (!qword_27D7BEF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BEF50, &qword_227671540);
    sub_227596E98();
    sub_2274332E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEF68);
  }

  return result;
}

unint64_t sub_227596E98()
{
  result = qword_27D7BEF70;
  if (!qword_27D7BEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEF70);
  }

  return result;
}

unint64_t sub_227596EEC()
{
  result = qword_27D7BF150;
  if (!qword_27D7BF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF150);
  }

  return result;
}

unint64_t sub_227596F40()
{
  result = qword_27D7BF370;
  if (!qword_27D7BF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF370);
  }

  return result;
}

unint64_t sub_227596F94()
{
  result = qword_27D7BF3B8;
  if (!qword_27D7BF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF3B8);
  }

  return result;
}

unint64_t sub_227596FE8()
{
  result = qword_27D7BF418;
  if (!qword_27D7BF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF418);
  }

  return result;
}

unint64_t sub_22759703C()
{
  result = qword_27D7BF430;
  if (!qword_27D7BF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF430);
  }

  return result;
}

uint64_t sub_2275970A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D18];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227597120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227666BA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227597148(uint64_t a1)
{
  *(a1 + 24) = sub_2275971B0(&qword_2813A5668);
  result = sub_2275971B0(&qword_2813A5660);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2275971B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2275971F4(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_227662750();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - v9;
  v10 = sub_227662190();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v43 = a1;
  sub_227665890();
  sub_2276628D0();
  v24 = *(v11 + 8);
  v24(v14, v10);
  sub_227665890();
  sub_2276628D0();
  v24(v14, v10);
  v25 = v23;
  v27 = v45;
  v26 = v46;
  v28 = *(v7 + 56);
  v29 = v47;
  sub_226EDDC60(v25, v45);
  sub_226EDDC60(v21, v27 + v28);
  v30 = *(v26 + 48);
  if (v30(v27, 1, v29) != 1)
  {
    v31 = v44;
    sub_226EDDC60(v27, v44);
    if (v30(v27 + v28, 1, v29) != 1)
    {
      v33 = v42;
      (*(v26 + 32))(v42, v27 + v28, v29);
      sub_227597980(&qword_28139BDB8);
      v34 = sub_22766BFB0();
      v35 = *(v26 + 8);
      v35(v33, v29);
      v35(v31, v29);
      sub_226E97D1C(v27, &qword_27D7B9690, qword_227670B50);
      if (v34)
      {
        goto LABEL_9;
      }

LABEL_7:
      v32 = sub_2275976D4(v21, v25);
      goto LABEL_13;
    }

    (*(v26 + 8))(v31, v29);
LABEL_6:
    sub_226E97D1C(v27, &qword_27D7BCF28, &qword_2276823E8);
    goto LABEL_7;
  }

  if (v30(v27 + v28, 1, v29) != 1)
  {
    goto LABEL_6;
  }

  sub_226E97D1C(v27, &qword_27D7B9690, qword_227670B50);
LABEL_9:
  v36 = sub_227665880();
  v38 = v37;
  if (v36 == sub_227665880() && v38 == v39)
  {

    v32 = 0;
  }

  else
  {
    v32 = sub_22766D190();
  }

LABEL_13:
  sub_226E97D1C(v21, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v25, &qword_27D7B9690, qword_227670B50);
  return v32 & 1;
}

uint64_t sub_2275976D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = sub_227662750();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  sub_226EDDC60(a2, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_226E97D1C(v10, &qword_27D7B9690, qword_227670B50);
    v20 = 1;
  }

  else
  {
    v21 = v10;
    v22 = *(v12 + 32);
    v22(v18, v21, v11);
    sub_226EDDC60(a1, v8);
    if (v19(v8, 1, v11) == 1)
    {
      (*(v12 + 8))(v18, v11);
      sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
      v20 = 0;
    }

    else
    {
      v22(v16, v8, v11);
      sub_227597980(&qword_28139BDC0);
      v20 = sub_22766BF80();
      v23 = *(v12 + 8);
      v23(v16, v11);
      v23(v18, v11);
    }
  }

  return v20 & 1;
}

uint64_t sub_227597980(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227662750();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ServerEndpointProtocol.executeScoresTasks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ServerEndpointProtocol.fetchScores(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E92F34;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.fetchSyncChangeset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E93028;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.fetchSyncableCounts(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E93028;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.ping(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E93028;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.submitScores(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E93028;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.submitSyncChangeset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E93028;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.validateEncryptionKeys(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E93028;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22759835C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_226E97D1C((v0 + 13), &unk_27D7BBCF0, &qword_22767BE10);
  v1 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  v2 = sub_227662750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerEndpoint()
{
  result = qword_2813A3C00;
  if (!qword_2813A3C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227598474()
{
  result = sub_227662750();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_227598524(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_22766AFF0();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275985E4, 0, 0);
}

uint64_t sub_2275985E4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  sub_22766AFE0();
  swift_beginAccess();
  sub_226E93170(v2 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v3 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v3 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2275A3C84;
    *(v4 + 24) = v3;
    v5 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v5 = 0;
    v4 = 0;
  }

  *(v0 + 200) = v5;
  *(v0 + 208) = v4;
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_2275987A4;
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  return sub_22759D350(v8, v7, v5, v4, sub_2275A3D50, 0);
}

uint64_t sub_2275987A4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v7 = *(*v1 + 184);
  v8 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 224) = v0;

  (*(v7 + 8))(v6, v8);
  sub_226EA9E3C(v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227598994, 0, 0);
  }

  else
  {
    v10 = *(v2 + 192);

    v11 = *(v9 + 8);

    return v11();
  }
}

uint64_t sub_227598994()
{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t sub_2275989F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227598B50, 0, 0);
}

uint64_t sub_227598B50()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4F8, &qword_22768BE98);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766B1F0();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_227599240;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3B38, v54, v58);
}

uint64_t sub_227599240()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22759935C;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22759935C()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF500, &qword_22768BEA0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_227599614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759976C, 0, 0);
}

uint64_t sub_22759976C()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF440, &qword_22768BD98);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766B320();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_227599E5C;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A362C, v54, v58);
}

uint64_t sub_227599E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_227599F78;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227599F78()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF450, &qword_22768BDA0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22759A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759A388, 0, 0);
}

uint64_t sub_22759A388()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B210();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4D8, &qword_22768BE68);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766B290();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_22759AA78;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3A6C, v54, v58);
}

uint64_t sub_22759AA78()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22759AB94;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22759AB94()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E0, &qword_22768BE70);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22759AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759AFA4, 0, 0);
}

uint64_t sub_22759AFA4()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF478, &qword_22768BDD8);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766B2E0();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_22759B694;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3740, v54, v58);
}

uint64_t sub_22759B694()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22759B7B0;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22759B7B0()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF480, &qword_22768BDE0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22759BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759BBC0, 0, 0);
}

uint64_t sub_22759BBC0()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF498, &qword_22768BE08);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766B100();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_22759C2B0;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A38D4, v54, v58);
}

uint64_t sub_22759C2B0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22759C3CC;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22759C3CC()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A0, &qword_22768BE10);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22759C684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759C7DC, 0, 0);
}

uint64_t sub_22759C7DC()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_2276677E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF518, &qword_22768BEC8);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766B010();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_22759CECC;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3C2C, v54, v58);
}

uint64_t sub_22759CECC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22759D098;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_22759CFE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22759CFE8()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[14];
  sub_226EA9E3C(v0[13]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22759D098()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF520, &qword_22768BED0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22759D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759D4A8, 0, 0);
}

uint64_t sub_22759D4A8()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766AFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF538, &qword_22768BEF8);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766B0C0();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_22759DB98;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3CF8, v54, v58);
}

uint64_t sub_22759DB98()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22759DCB4;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22759DCB4()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF540, &qword_22768BF00);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22759DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = sub_227662750();
  v7[24] = v11;
  v12 = *(v11 - 8);
  v7[25] = v12;
  v13 = *(v12 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759E0C4, 0, 0);
}

uint64_t sub_22759E0C4()
{
  v80 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766AF60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4B8, &qword_22768BE38);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v5;
  v74(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    sub_22766A700();

    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v70 = v14;
      v15 = *(v0 + 216);
      v16 = *(v0 + 192);
      v71 = *(v0 + 152);
      v72 = *(v0 + 144);
      v73 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v17 = 136446466;
      v18 = sub_226E97AE8(log, v7, v79);
      loga = v13;
      v19 = v18;

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v74(v15, v75 + v8, v16);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v20 = sub_22766D140();
      v22 = v21;
      v10(v15, v16);
      v23 = sub_226E97AE8(v20, v22, v79);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_226E8E000, loga, v70, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v71 + 8))(v73, v72);
    }

    else
    {
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);

      (*(v39 + 8))(v38, v40);
    }

    v41 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v60 = v41;
    swift_willThrow();
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);

    v67 = *(v0 + 8);

    return v67();
  }

  v24 = v7;
  v25 = *(v0 + 104);
  if (!v25)
  {
    v42 = *(v0 + 168);
    sub_22766A700();

    v43 = sub_22766B380();
    v44 = sub_22766C890();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 168);
    v48 = *(v0 + 144);
    v47 = *(v0 + 152);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136446210;
      v51 = sub_226E97AE8(log, v24, v79);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v43, v44, "Rejecting request of type %{public}s due to a lack of activation.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v46, v48);
    v41 = 0;
    goto LABEL_17;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 112);

  sub_22766A700();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  if (v30)
  {
    v76 = v27;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136446210;
    v36 = sub_226E97AE8(log, v24, v79);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "Sending request of type %{public}s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AA9A450](v35, -1, -1);
    v37 = v34;
    v27 = v76;
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  else
  {
  }

  v52 = *(v32 + 8);
  v52(v31, v33);
  *(v0 + 224) = v52;
  v53 = *(v0 + 96);
  v54 = swift_task_alloc();
  *(v0 + 232) = v54;
  v55 = *(v0 + 120);
  *(v54 + 16) = v25;
  *(v54 + 24) = v27;
  *(v54 + 32) = v53;
  *(v54 + 40) = v55;
  v56 = *(MEMORY[0x277D85A40] + 4);
  v57 = swift_task_alloc();
  *(v0 + 240) = v57;
  v58 = sub_22766AF80();
  *(v0 + 248) = v58;
  *v57 = v0;
  v57[1] = sub_22759E7B4;
  v59 = *(v0 + 88);

  return MEMORY[0x2822008A0](v59, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A39A0, v54, v58);
}

uint64_t sub_22759E7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22759E8D0;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22759E8D0()
{
  v40 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);

  sub_22766A700();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 160);
    v38 = *(v0 + 224);
    v35 = *(v0 + 152);
    v36 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 72) = v8;
    v39[0] = v10;
    *v9 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C0, &qword_22768BE40);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, v39);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 40);
    v15 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v17 = sub_226E97AE8(v15, v16, v39);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request of type %{public}s failed due to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 144);

    v18(v19, v21);
  }

  v22 = *(v0 + 136);
  sub_2275A1FD0(*(v0 + 256));
  v23 = *(v0 + 256);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v25);
  v26 = *(v0 + 256);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22759EB88(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759EBAC, 0, 0);
}

uint64_t sub_22759EBAC()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3B90;
    *(v3 + 24) = v2;
    v4 = sub_2275A3C04;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759ED64;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return sub_22759C684(v8, v6, v4, v3, sub_2275A3D58, 0);
}

uint64_t sub_22759ED64()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22759EEA0, 0, 0);
  }

  else
  {
    v4 = v3[24];
    sub_226EA9E3C(v3[23]);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22759EEA0()
{
  v1 = v0[24];
  sub_226EA9E3C(v0[23]);
  v2 = v0[1];
  v3 = v0[26];

  return v2();
}

uint64_t sub_22759EF04(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759EF28, 0, 0);
}

uint64_t sub_22759EF28()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3AC4;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return sub_2275989F8(v8, v6, v4, v3, sub_2275A3D54, 0);
}

uint64_t sub_22759F0E0()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2275A3D60, 0, 0);
  }

  else
  {
    v4 = v3[24];
    sub_226EA9E3C(v3[23]);
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22759F21C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F240, 0, 0);
}

uint64_t sub_22759F240()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A39F8;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return sub_22759A230(v8, v6, v4, v3, sub_2275A3D50, 0);
}

uint64_t sub_22759F3F8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F41C, 0, 0);
}

uint64_t sub_22759F41C()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A392C;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return sub_22759DF6C(v8, v6, v4, v3, sub_22759F5D4, 0);
}

uint64_t sub_22759F5E4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F608, 0, 0);
}

uint64_t sub_22759F608()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3860;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return sub_22759BA68(v8, v6, v4, v3, sub_2275A3D58, 0);
}

uint64_t sub_22759F7C0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F7E4, 0, 0);
}

uint64_t sub_22759F7E4()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A36CC;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return sub_22759AE4C(v8, v6, v4, v3, sub_2275A3D54, 0);
}

uint64_t sub_22759F99C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F9C0, 0, 0);
}

uint64_t sub_22759F9C0()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3564;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);

  return sub_227599614(v8, v6, v4, v3, sub_2275A3D54, 0);
}

void sub_22759FB78(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v27[1] = a6;
  v28 = a5;
  v29 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v27 - v17;
  (*(v14 + 16))(v27 - v17, a1, v13, v16);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v18, v13);
  v21 = a2(a4, a10, v20);

  v22 = [v21 configuration];
  if (v22)
  {
    v23 = v22;
    v28();

    v24 = v21;
    v25 = sub_2276695B0();
    if (v25)
    {
      v26 = v25;
      sub_22766C850();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22759FD30(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766B1F0();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF510, &qword_22768BEB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF510, &qword_22768BEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF508, &qword_22768BEA8);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF510, &qword_22768BEB0);
    sub_226E93170(a1, v17, &qword_27D7BF510, &qword_22768BEB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF508, &qword_22768BEA8);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF508, &qword_22768BEA8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A0184(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766B320();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF470, &qword_22768BDC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF470, &qword_22768BDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF468, &qword_22768BDB8);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF470, &qword_22768BDC0);
    sub_226E93170(a1, v17, &qword_27D7BF470, &qword_22768BDC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF468, &qword_22768BDB8);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF468, &qword_22768BDB8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A05D8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766B290();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4F0, &qword_22768BE80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF4F0, &qword_22768BE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E8, &qword_22768BE78);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF4F0, &qword_22768BE80);
    sub_226E93170(a1, v17, &qword_27D7BF4F0, &qword_22768BE80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E8, &qword_22768BE78);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E8, &qword_22768BE78);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A0A2C(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766B2E0();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF490, &qword_22768BDF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF490, &qword_22768BDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF488, &qword_22768BDE8);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF490, &qword_22768BDF0);
    sub_226E93170(a1, v17, &qword_27D7BF490, &qword_22768BDF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF488, &qword_22768BDE8);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF488, &qword_22768BDE8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A0E80(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766B100();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4B0, &qword_22768BE20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF4B0, &qword_22768BE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A8, &qword_22768BE18);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF4B0, &qword_22768BE20);
    sub_226E93170(a1, v17, &qword_27D7BF4B0, &qword_22768BE20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A8, &qword_22768BE18);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A8, &qword_22768BE18);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A12D4(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766B010();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF530, &qword_22768BEE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF530, &qword_22768BEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF528, &qword_22768BED8);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF530, &qword_22768BEE0);
    sub_226E93170(a1, v17, &qword_27D7BF530, &qword_22768BEE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF528, &qword_22768BED8);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF528, &qword_22768BED8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A1728(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766B0C0();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF550, &qword_22768BF10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF550, &qword_22768BF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF548, &qword_22768BF08);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF550, &qword_22768BF10);
    sub_226E93170(a1, v17, &qword_27D7BF550, &qword_22768BF10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF548, &qword_22768BF08);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF548, &qword_22768BF08);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A1B7C(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = sub_22766AF80();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22766AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4D0, &qword_22768BE50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  sub_226E93170(a1, &v26 - v19, &qword_27D7BF4D0, &qword_22768BE50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    sub_22766AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    v23 = swift_allocError();
    (*(v10 + 16))(v24, v13, v9);
    v30 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C8, &qword_22768BE48);
    sub_22766C440();

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_226E97D1C(v20, &qword_27D7BF4D0, &qword_22768BE50);
    sub_226E93170(a1, v17, &qword_27D7BF4D0, &qword_22768BE50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C8, &qword_22768BE48);
      return sub_22766C440();
    }

    else
    {
      (*(v26 + 32))(v27, v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C8, &qword_22768BE48);
      return sub_22766C450();
    }
  }
}

void sub_2275A1FD0(void *a1)
{
  v116 = sub_227661F60();
  v115 = *(v116 - 8);
  v2 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v4 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_227662750();
  v118 = *(v119 - 8);
  v5 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22766B390();
  v124 = *(v123 - 8);
  v7 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  v114 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v112 - v10;
  MEMORY[0x28223BE20](v11);
  v120 = (&v112 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v112 - v14;
  MEMORY[0x28223BE20](v16);
  v122 = &v112 - v17;
  MEMORY[0x28223BE20](v18);
  v112 = &v112 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v112 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v112 - v25;
  v27 = sub_22766AF20();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[0] = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v33 = swift_dynamicCast();
  v34 = *(v28 + 56);
  if (v33)
  {
    v34(v26, 0, 1, v27);
    (*(v28 + 32))(v31, v26, v27);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
    swift_allocError();
    (*(v28 + 16))(v35, v31, v27);
    swift_willThrow();
    (*(v28 + 8))(v31, v27);
    return;
  }

  v34(v26, 1, 1, v27);
  sub_226E97D1C(v26, &qword_27D7BF458, &unk_22768BDA8);
  v128[0] = a1;
  v36 = a1;
  type metadata accessor for CKError(0);
  v38 = v37;
  if (swift_dynamicCast())
  {
    v39 = v129;
    v128[0] = v129;
    sub_2275A365C(&qword_27D7B8328, type metadata accessor for CKError);
    sub_227662280();
    if (v129 <= 5)
    {
      if ((v129 - 3) >= 2)
      {
        if (v129 == 1)
        {
          goto LABEL_7;
        }

        goto LABEL_46;
      }

      v82 = v117;
      sub_2276626E0();
      v83 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
      v84 = v121;
      swift_beginAccess();
      (*(v118 + 40))(v84 + v83, v82, v119);
      swift_endAccess();
    }

    else
    {
      if (v129 > 0x20)
      {
        goto LABEL_31;
      }

      if (((1 << v129) & 0xD080C0) != 0)
      {
LABEL_7:
        sub_22766A700();
        v40 = v39;
        v41 = sub_22766B380();
        v42 = sub_22766C890();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = v38;
          v45 = swift_slowAlloc();
          v128[0] = v45;
          *v43 = 136446210;
          v129 = v40;
          v46 = sub_2275A365C(&unk_281399178, type metadata accessor for CKError);
          v47 = MEMORY[0x22AA995D0](v44, v46);
          v49 = sub_226E97AE8(v47, v48, v128);

          *(v43 + 4) = v49;
          _os_log_impl(&dword_226E8E000, v41, v42, "Unhandled CloudKit Error: %{public}s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v43, -1, -1);
        }

        (*(v124 + 8))(v22, v123);
        goto LABEL_33;
      }

      if (((1 << v129) & 0x100000200) != 0)
      {
        goto LABEL_32;
      }

      if (v129 != 26)
      {
LABEL_31:
        if ((v129 - 110) < 2)
        {
LABEL_32:
          v85 = *__swift_project_boxed_opaque_existential_0((v121 + 16), *(v121 + 40));
          sub_227398C00(v39);
          goto LABEL_33;
        }

        if (v129 == 112)
        {
          sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0]);
          swift_allocError();
          v101 = v100;
          *v100 = sub_2276694D0();
          (*(v28 + 104))(v101, *MEMORY[0x277D544C8], v27);
          swift_willThrow();

          return;
        }

LABEL_46:
        v102 = v112;
        sub_22766A700();
        v103 = v39;
        v104 = sub_22766B380();
        v105 = sub_22766C8A0();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v127 = v120;
          *v106 = 136446466;
          v126 = v103;
          v107 = sub_2275A365C(&unk_281399178, type metadata accessor for CKError);
          v108 = MEMORY[0x22AA995D0](v38, v107);
          v110 = sub_226E97AE8(v108, v109, &v127);

          *(v106 + 4) = v110;
          *(v106 + 12) = 2050;
          v126 = v103;
          sub_227662280();

          *(v106 + 14) = v125;
          _os_log_impl(&dword_226E8E000, v104, v105, "Unhandled CloudKit Error: %{public}s with code %{public}ld", v106, 0x16u);
          v111 = v120;
          __swift_destroy_boxed_opaque_existential_0(v120);
          MEMORY[0x22AA9A450](v111, -1, -1);
          MEMORY[0x22AA9A450](v106, -1, -1);

          (*(v124 + 8))(v112, v123);
        }

        else
        {

          (*(v124 + 8))(v102, v123);
        }
      }
    }

LABEL_33:
    v86 = v122;
    v87 = sub_22766BE80();
    if ((v88 & 1) == 0)
    {
      v89 = v87;
      sub_22766A700();
      v90 = sub_22766B380();
      v91 = sub_22766C8B0();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 134349056;
        *(v92 + 4) = v89;
        _os_log_impl(&dword_226E8E000, v90, v91, "Received retry timeout from server: %{public}f", v92, 0xCu);
        MEMORY[0x22AA9A450](v92, -1, -1);
      }

      (*(v124 + 8))(v86, v123);
      v93 = v117;
      sub_2276626E0();
      v94 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
      v95 = v121;
      swift_beginAccess();
      (*(v118 + 40))(v95 + v94, v93, v119);
      swift_endAccess();
    }

    swift_willThrow();
    return;
  }

  swift_getErrorValue();
  v50 = sub_22766D280();
  v52 = v51;
  v53 = *MEMORY[0x277CBACE8];
  if (v50 == sub_22766C000() && v52 == v54)
  {

    goto LABEL_14;
  }

  v55 = sub_22766D190();

  if ((v55 & 1) == 0)
  {
    sub_227661F50();
    sub_2275A365C(&qword_27D7BF460, MEMORY[0x277CC8608]);
    v70 = v116;
    v71 = sub_227662200();
    (*(v115 + 8))(v4, v70);
    if (v71)
    {
      v72 = v113;
      sub_22766A730();
      v73 = a1;
      v74 = sub_22766B380();
      v75 = sub_22766C890();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v128[0] = v77;
        *v76 = 136446210;
        swift_getErrorValue();
        v78 = MEMORY[0x22AA995D0](v128[12], v128[13]);
        v80 = sub_226E97AE8(v78, v79, v128);

        *(v76 + 4) = v80;
        v81 = "XPC Connection Interrupted with error: %{public}s";
LABEL_40:
        _os_log_impl(&dword_226E8E000, v74, v75, v81, v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x22AA9A450](v77, -1, -1);
        MEMORY[0x22AA9A450](v76, -1, -1);
      }
    }

    else
    {
      v72 = v114;
      sub_22766A700();
      v96 = a1;
      v74 = sub_22766B380();
      v75 = sub_22766C8A0();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v128[0] = v77;
        *v76 = 136446210;
        swift_getErrorValue();
        v97 = MEMORY[0x22AA995D0](v128[16], v128[17]);
        v99 = sub_226E97AE8(v97, v98, v128);

        *(v76 + 4) = v99;
        v81 = "Unhandled generic error received from server: %{public}s";
        goto LABEL_40;
      }
    }

    (*(v124 + 8))(v72, v123);
    return;
  }

LABEL_14:
  swift_getErrorValue();
  v56 = sub_22766D270();
  if (v56 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_50;
  }

  v57 = v120;
  if (v56 > 0x7FFFFFFF)
  {
LABEL_50:
    __break(1u);
    return;
  }

  if (v56 == 310)
  {
    sub_22766A700();
    v58 = sub_22766B380();
    v59 = sub_22766C890();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_226E8E000, v58, v59, "Proxy connection failed.", v60, 2u);
      MEMORY[0x22AA9A450](v60, -1, -1);
    }

    (*(v124 + 8))(v15, v123);
  }

  else
  {
    sub_22766A700();
    v61 = a1;
    v62 = sub_22766B380();
    v63 = sub_22766C8A0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v128[0] = v65;
      *v64 = 136446210;
      swift_getErrorValue();
      v66 = MEMORY[0x22AA995D0](v128[4], v128[5]);
      v68 = sub_226E97AE8(v66, v67, v128);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_226E8E000, v62, v63, "Unhandled CFNetwork Error: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x22AA9A450](v65, -1, -1);
      MEMORY[0x22AA9A450](v64, -1, -1);
    }

    (*(v124 + 8))(v57, v123);
  }

  swift_willThrow();
  v69 = a1;
}