void sub_2275580A8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v63 = a4;
  v65 = a2;
  v6 = sub_22766B390();
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666170();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v19 = sub_2275374F0(a1, a3, v63);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v63 = v10;
    v64 = v14;
    v56 = v9;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v55 = v6;
      v22 = *(v58 + 16);
      v23 = v64;
      if (v22)
      {
        v25 = v15 + 16;
        v24 = *(v15 + 16);
        v60 = "ManagedCommentaryEvent";
        v61 = v24;
        v26 = (v62 + 8);
        v62 = v15 + 8;
        v27 = v58 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v58 = *(v15 + 72);
        v59 = v26;
        while (1)
        {
          v61(v18, v27, v23);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v65];

          type metadata accessor for ManagedCompletedMarketingVideo();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          sub_227666150();
          v33 = v27;
          v34 = v22;
          v35 = v13;
          v36 = v18;
          v37 = v25;
          v38 = sub_22766BFD0();

          [v32 setIdentifier_];

          v25 = v37;
          v18 = v36;
          v13 = v35;
          v39 = v34;
          v40 = v33;
          sub_227666160();
          v41 = sub_2276626A0();
          (*v59)(v13, v63);
          [v32 setDateWatched_];

          v23 = v64;
          (*v62)(v18, v64);
          v27 = v40 + v58;
          v22 = v39 - 1;
          if (!v22)
          {
            goto LABEL_10;
          }
        }

        v42 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v43 = swift_allocError();
        (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
        swift_willThrow();
        v45 = v56;
        sub_22766A770();
        v46 = v43;
        v47 = sub_22766B380();
        v48 = sub_22766C8B0();
        v49 = v43;

        if (os_log_type_enabled(v47, v48))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          v52 = v49;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v53;
          *v51 = v53;
          _os_log_impl(&dword_226E8E000, v47, v48, "%@", v50, 0xCu);
          sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v50, -1, -1);
        }

        (*(v57 + 8))(v45, v55);
        swift_willThrow();
        sub_226EDC474(0);
        (*v62)(v18, v64);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227558724(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v62 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664900();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753762C(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v13;
    v61 = v12;
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

    v54 = v11;
    v55 = v8;
    v56 = v7;
    v21 = *(a1 + 16);
    v22 = v61;
    if (v21)
    {
      v24 = v18 + 16;
      v23 = *(v18 + 16);
      v58 = "zationPrivacyPreference";
      v59 = v23;
      v60 = (v18 + 8);
      v25 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v57 = *(v24 + 56);
      while (1)
      {
        v59(v16, v25, v22);
        v26 = objc_opt_self();
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v62];

        type metadata accessor for ManagedPlaybackVoucher();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_2276648D0();
        v33 = v32;
        v34 = v24;
        v35 = sub_227662560();
        sub_226EDC420(v31, v33);
        [v30 setFinalizedToken_];

        v36 = sub_2276648C0();
        v38 = v37;
        v39 = sub_227662560();
        sub_226EDC420(v36, v38);
        [v30 setPrivateSeed_];

        sub_2276648F0();
        v40 = sub_22766BFD0();

        [v30 setPublicKeyVersion_];

        sub_2276648B0();
        v41 = sub_22766BFD0();
        v24 = v34;
        v22 = v61;

        [v30 setPublicInfo_];

        (*v60)(v16, v22);
        v25 += v57;
        if (!--v21)
        {
          goto LABEL_11;
        }
      }

      v42 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
      swift_willThrow();
      v45 = v54;
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

      (*(v55 + 8))(v45, v56);
      swift_willThrow();
      sub_226EDC474(0);
      (*v60)(v16, v61);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227558D48(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v52 = a2;
  v9 = sub_22766B390();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276640A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227537768(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v45 = v12;
  v46 = v17;
  v19 = v13;
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

  v44 = v9;
  v22 = *(a1 + 16);
  if (v22)
  {
    v24 = v14 + 16;
    v23 = *(v14 + 16);
    v50 = "ManagedScoreSummary";
    v51 = v23;
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v48 = *(v14 + 72);
    v49 = (v14 + 8);
    v26 = v19;
    v27 = v46;
    while (1)
    {
      v28 = v26;
      v29 = v24;
      v51(v27, v25, v26);
      v30 = objc_opt_self();
      v31 = sub_22766BFD0();
      v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v52];

      type metadata accessor for ManagedSessionScores();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {

        v34 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_227105770(v33);
      if (v4)
      {
        break;
      }

      v26 = v28;
      (*v49)(v27, v28);

      v25 += v48;
      --v22;
      v24 = v29;
      if (!v22)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v36 = v45;
    sub_22766A770();
    v37 = v5;
    v38 = sub_22766B380();
    v39 = sub_22766C8B0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v5;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_226E8E000, v38, v39, "%@", v40, 0xCu);
      sub_226E97D1C(v41, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    (*(v47 + 8))(v36, v44);
    swift_willThrow();
    sub_226EDC474(0);
    (*v49)(v27, v28);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

uint64_t sub_2275592A0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v64 = a2;
  v7 = sub_22766B390();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666330();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  result = sub_2275378A4(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v61 = v18;
    v63 = v12;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    v60 = v16;
    v52 = v10;
    v53 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v63;
    v56 = v63 + 32;
    v57 = v63 + 16;
    v55 = "lterPropertyType";
    v58 = (v63 + 8);

    v28 = 0;
    v54 = a1 + 56;
    v59 = a1;
    if (v25)
    {
      while (1)
      {
        v29 = v28;
LABEL_14:
        v30 = *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v29 << 6));
        v31 = v61;
        (*(v27 + 16))(v61, v30, v11);
        v32 = v60;
        (*(v27 + 32))(v60, v31, v11);
        v33 = objc_opt_self();
        v34 = v11;
        v35 = sub_22766BFD0();
        v36 = [v33 insertNewObjectForEntityForName:v35 inManagedObjectContext:v64];

        type metadata accessor for ManagedCatalogMetadataJournal();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v25 &= v25 - 1;
        sub_227666310();
        v39 = sub_22766BFD0();

        [v38 setIdentifier_];

        sub_227666320();
        [v38 setTimestamp_];

        result = (*v58)(v32, v34);
        v28 = v29;
        a1 = v59;
        v11 = v34;
        v27 = v63;
        v22 = v54;
        if (!v25)
        {
          goto LABEL_11;
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

      (*(v62 + 8))(v43, v53);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v58)(v60, v34);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v29);
        ++v28;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_2275598DC(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227666B60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753800C(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedCatalogWorkoutMetadata";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedCatalogWorkoutReference();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2273F99AC(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227559E18(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276664D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227537ED0(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedCatalogTipReference";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedCatalogWorkoutMetadata();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2271515C4(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755A354(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v52 = a2;
  v9 = sub_22766B390();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227664EB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227537B1C(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v45 = v12;
  v46 = v17;
  v19 = v13;
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

  v44 = v9;
  v22 = *(a1 + 16);
  if (v22)
  {
    v24 = v14 + 16;
    v23 = *(v14 + 16);
    v50 = "ManagedTrainerMetadata";
    v51 = v23;
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v48 = *(v14 + 72);
    v49 = (v14 + 8);
    v26 = v19;
    v27 = v46;
    while (1)
    {
      v28 = v26;
      v29 = v24;
      v51(v27, v25, v26);
      v30 = objc_opt_self();
      v31 = sub_22766BFD0();
      v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v52];

      type metadata accessor for ManagedTrainerReference();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {

        v34 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_22750B934(v33);
      if (v4)
      {
        break;
      }

      v26 = v28;
      (*v49)(v27, v28);

      v25 += v48;
      --v22;
      v24 = v29;
      if (!v22)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v36 = v45;
    sub_22766A770();
    v37 = v5;
    v38 = sub_22766B380();
    v39 = sub_22766C8B0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v5;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_226E8E000, v38, v39, "%@", v40, 0xCu);
      sub_226E97D1C(v41, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    (*(v47 + 8))(v36, v44);
    swift_willThrow();
    sub_226EDC474(0);
    (*v49)(v27, v28);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755A880(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227664A10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2275379E0(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedTrainerIdentifier";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedTrainerMetadata();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_22750A3AC(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755ADBC(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227666FF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227537D94(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedCatalogModalityMetadata";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedCatalogModalityReference();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_227335928(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755B2F8(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227666980();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227537C58(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedCatalogModalityFeature";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedCatalogModalityMetadata();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2272C4068(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755B834(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v67 = a2;
  v7 = sub_22766B390();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666B60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = sub_227538284(a1, a3, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v64 = v18;
    v58 = v10;
    v66 = v11;
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

    v57 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v60 = v12 + 32;
    v61 = v12 + 16;
    v59 = "ManagedCatalogWorkoutMetadata";
    v62 = (v12 + 8);
    v63 = a1;

    v27 = 0;
    v28 = v66;
    v29 = v16;
    v30 = v68;
    v31 = v64;
    if (v25)
    {
      while (1)
      {
        v68 = v30;
        v32 = v27;
        v33 = v12;
LABEL_16:
        v34 = v31;
        (*(v33 + 16))(v31, *(v63 + 48) + *(v33 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v28);
        (*(v33 + 32))(v29, v34, v28);
        v35 = objc_opt_self();
        v36 = sub_22766BFD0();
        v37 = v35;
        v38 = v67;
        v39 = [v37 insertNewObjectForEntityForName:v36 inManagedObjectContext:v67];

        type metadata accessor for ManagedCatalogWorkoutReference();
        v40 = swift_dynamicCastClass();
        if (!v40)
        {

          v42 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v30 = swift_allocError();
          (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51000], v42);
          swift_willThrow();
          goto LABEL_24;
        }

        v41 = v68;
        sub_2273F99AC(v40, v38);
        v30 = v41;
        if (v41)
        {
          break;
        }

        v25 &= v25 - 1;
        v28 = v66;
        (*v62)(v29, v66);

        v27 = v32;
        v31 = v64;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v44 = v58;
      sub_22766A770();
      v45 = v30;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v57;
      v50 = v65;
      if (v48)
      {
        v51 = v30;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v51;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v50 + 8))(v44, v49);
      swift_willThrow();

      sub_226EDC474(0);
      (*v62)(v29, v66);
    }

    else
    {
LABEL_11:
      v33 = v12;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          v68 = v30;
          sub_226EDC474(0);

          return;
        }

        v25 = *(v22 + 8 * v32);
        ++v27;
        if (v25)
        {
          v68 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22755BE54(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v67 = a2;
  v7 = sub_22766B390();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666A40();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = sub_2275383C0(a1, a3, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v64 = v18;
    v58 = v10;
    v66 = v11;
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

    v57 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v60 = v12 + 32;
    v61 = v12 + 16;
    v59 = "ManagedCatalogPreview";
    v62 = (v12 + 8);
    v63 = a1;

    v27 = 0;
    v28 = v66;
    v29 = v16;
    v30 = v68;
    v31 = v64;
    if (v25)
    {
      while (1)
      {
        v68 = v30;
        v32 = v27;
        v33 = v12;
LABEL_16:
        v34 = v31;
        (*(v33 + 16))(v31, *(v63 + 48) + *(v33 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v28);
        (*(v33 + 32))(v29, v34, v28);
        v35 = objc_opt_self();
        v36 = sub_22766BFD0();
        v37 = v35;
        v38 = v67;
        v39 = [v37 insertNewObjectForEntityForName:v36 inManagedObjectContext:v67];

        type metadata accessor for ManagedCatalogProgramReference();
        v40 = swift_dynamicCastClass();
        if (!v40)
        {

          v42 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v30 = swift_allocError();
          (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51000], v42);
          swift_willThrow();
          goto LABEL_24;
        }

        v41 = v68;
        sub_227535488(v40, v38);
        v30 = v41;
        if (v41)
        {
          break;
        }

        v25 &= v25 - 1;
        v28 = v66;
        (*v62)(v29, v66);

        v27 = v32;
        v31 = v64;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v44 = v58;
      sub_22766A770();
      v45 = v30;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v57;
      v50 = v65;
      if (v48)
      {
        v51 = v30;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v51;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v50 + 8))(v44, v49);
      swift_willThrow();

      sub_226EDC474(0);
      (*v62)(v29, v66);
    }

    else
    {
LABEL_11:
      v33 = v12;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          v68 = v30;
          sub_226EDC474(0);

          return;
        }

        v25 = *(v22 + 8 * v32);
        ++v27;
        if (v25)
        {
          v68 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22755C474(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v75 = a2;
  v77 = a4;
  v6 = sub_22766B390();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662190();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276658B0();
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = a1;
  result = sub_2275384FC(a1, a3, v77);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v67 = v9;
    v68 = v19;
    v66 = v12;
    v69 = v17;
    if (sub_227669C10())
    {
      v22 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51010], v22);
      return swift_willThrow();
    }

    v77 = v13;
    v24 = a1;
    v25 = *(a1 + 56);
    v60 = a1 + 56;
    v26 = 1 << *(a1 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v25;
    v59 = (v26 + 63) >> 6;
    v29 = v74;
    v64 = v74 + 32;
    v65 = v74 + 16;
    v63 = "ManagedCatalogTipJournal";
    v61 = (v73 + 8);
    v73 = v74 + 8;

    v30 = 0;
    v31 = v69;
    v32 = v76;
    v62 = v20;
    v33 = v68;
    if (v28)
    {
      while (1)
      {
        v34 = v30;
LABEL_16:
        v35 = v77;
        (*(v29 + 16))(v33, *(v24 + 48) + *(v29 + 72) * (__clz(__rbit64(v28)) | (v34 << 6)), v77);
        (*(v29 + 32))(v31, v33, v35);
        v36 = objc_opt_self();
        v37 = sub_22766BFD0();
        v38 = [v36 insertNewObjectForEntityForName:v37 inManagedObjectContext:v75];

        type metadata accessor for ManagedCatalogTipReference();
        v39 = swift_dynamicCastClass();
        if (!v39)
        {

          v47 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v32 = swift_allocError();
          (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D51000], v47);
          swift_willThrow();
          goto LABEL_24;
        }

        v40 = v39;
        sub_227665880();
        v41 = sub_22766BFD0();

        [v40 setIdentifier_];

        v42 = sub_2276658A0();
        v43 = sub_2275335E8(v42);
        if (v32)
        {
          break;
        }

        v32 = 0;
        v44 = sub_227533858(v75, v43);

        [v40 setCategoryIdentifiers_];

        v45 = v66;
        v31 = v69;
        sub_227665890();
        sub_2276620E0();
        v28 &= v28 - 1;
        (*v61)(v45, v67);
        v46 = sub_22766BFD0();

        [v40 setDateReleased_];

        result = (*v73)(v31, v77);
        v30 = v34;
        v24 = v62;
        v29 = v74;
        v33 = v68;
        if (!v28)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v49 = v70;
      sub_22766A770();
      v50 = v32;
      v51 = sub_22766B380();
      v52 = sub_22766C8B0();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v77;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v32;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v58;
        *v56 = v58;
        _os_log_impl(&dword_226E8E000, v51, v52, "%@", v55, 0xCu);
        sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v56, -1, -1);
        MEMORY[0x22AA9A450](v55, -1, -1);
      }

      (*(v71 + 8))(v49, v72);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v73)(v69, v54);
    }

    else
    {
LABEL_11:
      v76 = v32;
      while (1)
      {
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v34 >= v59)
        {
          sub_226EDC474(0);
        }

        v28 = *(v60 + 8 * v34);
        ++v30;
        if (v28)
        {
          v32 = v76;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_22755CC38(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227664EB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = sub_227538148(a1, a3, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v18;
    v56 = v10;
    v64 = v11;
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

    v55 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v58 = v12 + 32;
    v59 = v12 + 16;
    v57 = "ManagedTrainerMetadata";
    v60 = (v12 + 8);
    v61 = a1;

    v27 = 0;
    v28 = v64;
    v29 = v16;
    v30 = v66;
    v31 = v62;
    if (v25)
    {
      while (1)
      {
        v66 = v30;
        v32 = v27;
        v33 = v12;
LABEL_16:
        v34 = v31;
        (*(v33 + 16))(v31, *(v61 + 48) + *(v33 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v28);
        (*(v33 + 32))(v29, v34, v28);
        v35 = objc_opt_self();
        v36 = sub_22766BFD0();
        v37 = [v35 insertNewObjectForEntityForName:v36 inManagedObjectContext:v65];

        type metadata accessor for ManagedTrainerReference();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {

          v40 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v30 = swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51000], v40);
          swift_willThrow();
          goto LABEL_24;
        }

        v39 = v66;
        sub_22750B934(v38);
        v30 = v39;
        if (v39)
        {
          break;
        }

        v25 &= v25 - 1;
        v28 = v64;
        (*v60)(v29, v64);

        v27 = v32;
        v31 = v62;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v42 = v56;
      sub_22766A770();
      v43 = v30;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v55;
      v48 = v63;
      if (v46)
      {
        v49 = swift_slowAlloc();
        v50 = v30;
        v51 = swift_slowAlloc();
        *v49 = 138412290;
        v52 = v50;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v49, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v48 + 8))(v42, v47);
      swift_willThrow();

      sub_226EDC474(0);
      (*v60)(v29, v64);
    }

    else
    {
LABEL_11:
      v33 = v12;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          v66 = v30;
          sub_226EDC474(0);

          return;
        }

        v25 = *(v22 + 8 * v32);
        ++v27;
        if (v25)
        {
          v66 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22755D250(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v68 = a4;
  v67 = a2;
  v6 = sub_22766B390();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_227665010();
  v62 = *(v66 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v66);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662750();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227665030();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_227538638(a1, a3, v68);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v63 = v15;
    v64 = v12;
    v65 = v11;
    v53 = v16;
    if (sub_227669C10())
    {
      v22 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51010], v22);
      swift_willThrow();
    }

    else
    {
      v24 = *(a1 + 16);
      v25 = v53;
      if (v24)
      {
        v26 = *(v17 + 16);
        v60 = "ManagedCatalogProgramReference";
        v61 = v26;
        v58 = (v62 + 8);
        v59 += 8;
        v62 = v17 + 8;
        v27 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v57 = *(v17 + 72);
        while (1)
        {
          v61(v20, v27, v25);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v67];

          type metadata accessor for ManagedCatalogSyncAnchor();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          sub_227664FC0();
          v33 = sub_22766BFD0();
          v68 = v24;
          v34 = v33;

          [v32 setBuild_];

          v35 = v63;
          sub_227664FA0();
          v36 = sub_2276626A0();
          (*v59)(v35, v64);
          [v32 setDate_];

          v37 = v65;
          sub_227665020();
          sub_227665000();
          (*v58)(v37, v66);
          v38 = sub_22766BFD0();

          [v32 setStatus_];

          sub_227664FD0();
          v39 = sub_22766BFD0();

          [v32 setToken_];

          v40 = v68;
          (*v62)(v20, v25);
          v27 += v57;
          v24 = v40 - 1;
          if (!v24)
          {
            goto LABEL_10;
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

        (*(v55 + 8))(v44, v56);
        swift_willThrow();
        sub_226EDC474(0);
        (*v62)(v20, v53);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_22755D9CC(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227664530();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227539290(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedAlternativeActivityType";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedArchivedSession();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2272187F4(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755DF34(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v53 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227667E50();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2275393CC(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v47 = v11;
    v48 = v12;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v45 = v8;
    v46 = v7;
    v20 = *(a1 + 16);
    v21 = v48;
    if (v20)
    {
      v23 = *(v13 + 16);
      v22 = v13 + 16;
      v50 = "wsingConnectionRecord";
      v51 = v23;
      v52 = (v22 - 8);
      v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v49 = *(v22 + 56);
      while (1)
      {
        v51(v16, v24, v21);
        v25 = objc_opt_self();
        v26 = sub_22766BFD0();
        v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v53];

        type metadata accessor for ManagedSampleContentArchivedSession();
        v28 = swift_dynamicCastClass();
        if (!v28)
        {
          break;
        }

        v29 = v28;
        sub_227667E40();
        v30 = sub_22766BFD0();

        [v29 setWorkoutIdentifier_];

        sub_227667E20();
        v31 = sub_22766BFD0();

        [v29 setSessionIdentifier_];

        (*v52)(v16, v21);
        v24 += v49;
        if (!--v20)
        {
          goto LABEL_11;
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

      if (os_log_type_enabled(v37, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v39;
        v21 = v48;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v40, 0xCu);
        sub_226E97D1C(v41, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v41, -1, -1);
        MEMORY[0x22AA9A450](v40, -1, -1);
      }

      (*(v45 + 8))(v35, v46);
      swift_willThrow();
      sub_226EDC474(0);
      (*v52)(v16, v21);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_22755E4D0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v61 = a4;
  v62 = a2;
  v6 = sub_22766B390();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276652D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v19 = sub_227539508(a1, a3, v61);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v60 = v13;
    v61 = v10;
    v52 = v9;
    v53 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v51 = v6;
      v22 = *(v55 + 16);
      v23 = v53;
      if (v22)
      {
        v25 = v15 + 16;
        v24 = *(v15 + 16);
        v57 = "ManagedPrivacyAcknowledgement";
        v58 = v24;
        v26 = (v59 + 8);
        v59 = v15 + 8;
        v27 = v55 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v55 = *(v15 + 72);
        v56 = v26;
        while (1)
        {
          v58(v18, v27, v23);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v62];

          type metadata accessor for ManagedProgramCompletion();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          sub_227665290();
          v33 = v25;
          v34 = sub_22766BFD0();

          [v32 setIdentifier_];

          sub_2276652B0();
          v35 = sub_22766BFD0();

          [v32 setProgramIdentifier_];

          sub_2276652C0();
          v36 = sub_22766BFD0();

          [v32 setCompletingSessionIdentifier_];

          v25 = v33;
          v37 = v60;
          sub_2276652A0();
          v38 = sub_2276626A0();
          (*v56)(v37, v61);
          [v32 setCompletionDate_];

          (*v59)(v18, v23);
          v27 += v55;
          if (!--v22)
          {
            goto LABEL_10;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v52;
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
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v54 + 8))(v42, v51);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v18, v53);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_22755EB94(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227667A70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227539644(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "com.apple.hls.keys";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedAchievementEnvironmentCache();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_226F94E58(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_22755F0FC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v58 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666710();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227539780(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v52 = v11;
    v53 = v16;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v50 = v8;
    v51 = v7;
    v20 = *(a1 + 16);
    if (v20)
    {
      v22 = v13 + 16;
      v21 = *(v13 + 16);
      v56 = "ManagedPlaylistItem";
      v57 = v21;
      v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v54 = *(v13 + 72);
      v55 = (v13 + 8);
      v24 = v53;
      while (1)
      {
        v25 = v22;
        v57(v24, v23, v12);
        v26 = objc_opt_self();
        v27 = v24;
        v28 = sub_22766BFD0();
        v29 = v58;
        v30 = [v26 insertNewObjectForEntityForName:v28 inManagedObjectContext:v58];

        type metadata accessor for ManagedPrivacyAcknowledgement();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {

          v35 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v36 = swift_allocError();
          (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
          swift_willThrow();
          v24 = v27;
          goto LABEL_16;
        }

        v32 = v31;
        v33 = sub_226EB1040(&qword_2813A5698, MEMORY[0x277D52578]);
        v34 = v59;
        (*(v33 + 64))(v32, v29, v12, v33);
        v24 = v27;
        v59 = v34;
        if (v34)
        {
          break;
        }

        (*v55)(v27, v12);

        v23 += v54;
        --v20;
        v22 = v25;
        if (!v20)
        {
          goto LABEL_12;
        }
      }

      v36 = v59;
LABEL_16:
      v38 = v52;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v51;
      if (v42)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v36;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v45, -1, -1);
        v48 = v44;
        v24 = v53;
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v50 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v55)(v24, v12);
    }

    else
    {
LABEL_12:
      sub_226EDC474(0);
    }
  }
}

void sub_22755F690(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v63 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227668A00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2275398BC(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v16;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v54 = v11;
    v55 = v8;
    v56 = v7;
    v20 = *(a1 + 16);
    v21 = v62;
    if (v20)
    {
      v23 = v13 + 16;
      v22 = *(v13 + 16);
      v60 = "ManagedOnboardingSurveyResult";
      v61 = v22;
      v58 = v13 + 16;
      v59 = (v13 + 8);
      v24 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v57 = *(v23 + 56);
      while (1)
      {
        v61(v21, v24, v12);
        v25 = objc_opt_self();
        v26 = sub_22766BFD0();
        v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v63];

        type metadata accessor for ManagedPersonalizationPrivacyPreference();
        v28 = swift_dynamicCastClass();
        if (!v28)
        {
          break;
        }

        v29 = v28;
        v65 = sub_2276689C0();
        LOBYTE(v66) = v30 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE158, &unk_227688CA0);
        sub_227663AD0();
        if (v64 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        if (v64 > 0x7FFFFFFF)
        {
          goto LABEL_19;
        }

        [v29 setState_];
        v31 = sub_2276689F0();
        v68 = v24;
        v32 = v31;
        v34 = v33;
        v65 = v31;
        v66 = v33;
        v35 = v12;
        v37 = v36 & 1;
        v67 = v36 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
        sub_227663AD0();
        v38 = sub_22766BFD0();
        v39 = v32;
        v40 = v68;
        v41 = v37;
        v12 = v35;
        sub_226EB2DFC(v39, v34, v41);

        [v29 setVersion_];

        v21 = v62;
        (*v59)(v62, v35);
        v24 = v40 + v57;
        if (!--v20)
        {
          goto LABEL_13;
        }
      }

      v42 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
      swift_willThrow();
      v45 = v54;
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
        v53 = v50;
        v21 = v62;
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v55 + 8))(v45, v56);
      swift_willThrow();
      sub_226EDC474(0);
      (*v59)(v21, v12);
    }

    else
    {
LABEL_13:
      sub_226EDC474(0);
    }
  }
}

void sub_22755FCF4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v52 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276668F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2275399F8(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v46 = v11;
    v47 = v12;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v44 = v8;
    v45 = v7;
    v20 = *(a1 + 16);
    v21 = v47;
    if (v20)
    {
      v23 = *(v13 + 16);
      v22 = v13 + 16;
      v49 = "eetAcknowledgment";
      v50 = v23;
      v51 = (v22 - 8);
      v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v48 = *(v22 + 56);
      while (1)
      {
        v50(v16, v24, v21);
        v25 = objc_opt_self();
        v26 = sub_22766BFD0();
        v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v52];

        type metadata accessor for ManagedAudioLanguagePreference();
        v28 = swift_dynamicCastClass();
        if (!v28)
        {
          break;
        }

        v29 = v28;
        sub_2276668E0();
        v30 = sub_22766BFD0();

        [v29 setLanguageIdentifier_];

        sub_2276668C0();
        [v29 setMachTimestamp_];

        (*v51)(v16, v21);
        v24 += v48;
        if (!--v20)
        {
          goto LABEL_11;
        }
      }

      v31 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51000], v31);
      swift_willThrow();
      v34 = v46;
      sub_22766A770();
      v35 = v32;
      v36 = sub_22766B380();
      v37 = sub_22766C8B0();
      v38 = v32;

      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v38;
        v21 = v47;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v36, v37, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v44 + 8))(v34, v45);
      swift_willThrow();
      sub_226EDC474(0);
      (*v51)(v16, v21);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227560274(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v68 = a4;
  v72 = a2;
  v6 = sub_22766B390();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227668D10();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666F20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v19 = sub_227539B34(a1, a3, v68);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v65 = v13;
    v66 = v10;
    v67 = v18;
    v68 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v56 = v9;
      v57 = v6;
      v22 = *(v59 + 16);
      v24 = v67;
      v23 = v68;
      if (v22)
      {
        v25 = *(v15 + 16);
        v62 = "Identifier";
        v63 = v25;
        v26 = (v64 + 8);
        v64 = v15 + 8;
        v27 = v59 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v59 = *(v15 + 72);
        v60 = v26;
        v61 = v15 + 16;
        while (1)
        {
          v63(v24, v27, v23);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v72];

          type metadata accessor for ManagedBurnBarDisplayPreference();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          v33 = sub_227666F10();
          v35 = v34;
          v69 = v33;
          v70 = v34;
          v37 = v36 & 1;
          v71 = v36 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBC8, &qword_22768B7D0);
          sub_227663AD0();
          v38 = sub_22766BFD0();
          v39 = v33;
          v40 = v37;
          v24 = v67;
          v23 = v68;
          sub_226EB2DFC(v39, v35, v40);

          [v32 setBehavior_];

          v41 = v65;
          sub_227666EF0();
          sub_227668D00();
          (*v60)(v41, v66);
          v42 = sub_22766BFD0();

          [v32 setModalityConstraint_];

          (*v64)(v24, v23);
          v27 += v59;
          if (!--v22)
          {
            goto LABEL_10;
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
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v58 + 8))(v46, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v64)(v24, v23);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227560934(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v68 = a4;
  v72 = a2;
  v6 = sub_22766B390();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227668D10();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667170();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v19 = sub_227539C70(a1, a3, v68);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v65 = v13;
    v66 = v10;
    v67 = v18;
    v68 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v56 = v9;
      v57 = v6;
      v22 = *(v59 + 16);
      v24 = v67;
      v23 = v68;
      if (v22)
      {
        v25 = *(v15 + 16);
        v62 = "ManagedMeditationActivityType";
        v63 = v25;
        v26 = (v64 + 8);
        v64 = v15 + 8;
        v27 = v59 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v59 = *(v15 + 72);
        v60 = v26;
        v61 = v15 + 16;
        while (1)
        {
          v63(v24, v27, v23);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v72];

          type metadata accessor for ManagedMetricsDisplayPreference();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          v33 = sub_227667160();
          v35 = v34;
          v69 = v33;
          v70 = v34;
          v37 = v36 & 1;
          v71 = v36 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB10, &qword_22768B7C0);
          sub_227663AD0();
          v38 = sub_22766BFD0();
          v39 = v33;
          v40 = v37;
          v24 = v67;
          v23 = v68;
          sub_226EB2DFC(v39, v35, v40);

          [v32 setBehavior_];

          v41 = v65;
          sub_227667140();
          sub_227668D00();
          (*v60)(v41, v66);
          v42 = sub_22766BFD0();

          [v32 setModalityConstraint_];

          (*v64)(v24, v23);
          v27 += v59;
          if (!--v22)
          {
            goto LABEL_10;
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
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v58 + 8))(v46, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v64)(v24, v23);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227560FF4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v68 = a4;
  v72 = a2;
  v6 = sub_22766B390();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227668D10();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276675F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v19 = sub_227539DAC(a1, a3, v68);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v65 = v13;
    v66 = v10;
    v67 = v18;
    v68 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v56 = v9;
      v57 = v6;
      v22 = *(v59 + 16);
      v24 = v67;
      v23 = v68;
      if (v22)
      {
        v25 = *(v15 + 16);
        v62 = "ManagedProgramCompletion";
        v63 = v25;
        v26 = (v64 + 8);
        v64 = v15 + 8;
        v27 = v59 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v59 = *(v15 + 72);
        v60 = v26;
        v61 = v15 + 16;
        while (1)
        {
          v63(v24, v27, v23);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v72];

          type metadata accessor for ManagedProgressDisplayPreference();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          v33 = sub_2276675E0();
          v35 = v34;
          v69 = v33;
          v70 = v34;
          v37 = v36 & 1;
          v71 = v36 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBF0, &qword_22768B7B0);
          sub_227663AD0();
          v38 = sub_22766BFD0();
          v39 = v33;
          v40 = v37;
          v24 = v67;
          v23 = v68;
          sub_226EB2DFC(v39, v35, v40);

          [v32 setBehavior_];

          v41 = v65;
          sub_2276675C0();
          sub_227668D00();
          (*v60)(v41, v66);
          v42 = sub_22766BFD0();

          [v32 setModalityConstraint_];

          (*v64)(v24, v23);
          v27 += v59;
          if (!--v22)
          {
            goto LABEL_10;
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
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v58 + 8))(v46, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v64)(v24, v23);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_2275616B4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v49 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276668A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227539EE8(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v44 = v11;
    v45 = v12;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v42 = v8;
    v43 = v7;
    v20 = *(a1 + 16);
    v21 = v45;
    if (v20)
    {
      v23 = *(v13 + 16);
      v22 = v13 + 16;
      v46 = "ManagedAssetLoadFailure";
      v47 = v23;
      v48 = (v22 - 8);
      v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v25 = *(v22 + 56);
      while (1)
      {
        v47(v16, v24, v21);
        v26 = objc_opt_self();
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v49];

        type metadata accessor for ManagedAssetRequestKeyMetadata();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        sub_22739B3A4(v29);

        (*v48)(v16, v21);
        v24 += v25;
        if (!--v20)
        {
          goto LABEL_11;
        }
      }

      v30 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v31 = swift_allocError();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D51000], v30);
      swift_willThrow();
      v33 = v44;
      sub_22766A770();
      v34 = v31;
      v35 = sub_22766B380();
      v36 = sub_22766C8B0();
      v37 = v31;

      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v37;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_226E8E000, v35, v36, "%@", v38, 0xCu);
        sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v39, -1, -1);
        MEMORY[0x22AA9A450](v38, -1, -1);
      }

      (*(v42 + 8))(v33, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v48)(v16, v45);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227561BE0(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227668E30();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753A160(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "StandaloneWorkoutJob";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_22764CD64(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227562148(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v70 = a4;
  v69 = a2;
  v6 = sub_22766B390();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_227662750();
  v61 = *(v68 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v68);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276624A0();
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227664B30();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22753A650(a1, a3, v70);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v22 = v65;
    v60 = a1;
    v70 = v20;
    v66 = v12;
    v67 = v11;
    v56 = v16;
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
      v25 = *(v60 + 16);
      v26 = v56;
      v27 = v17;
      v28 = v70;
      if (v25)
      {
        v30 = *(v27 + 16);
        v29 = v27 + 16;
        v63 = "ManagedAssetEntry";
        v64 = v30;
        v61 += 8;
        v62 = (v22 + 8);
        v65 = v29 - 8;
        v31 = v60 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
        v60 = *(v29 + 56);
        while (1)
        {
          v64(v28, v31, v26);
          v32 = objc_opt_self();
          v33 = sub_22766BFD0();
          v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v69];

          type metadata accessor for ManagedAssetLoadFailure();
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
            break;
          }

          v36 = v35;
          sub_227664B10();
          sub_227662390();
          v37 = v29;
          (*v62)(v15, v66);
          v38 = sub_22766BFD0();

          [v36 setRemoteURL_];

          sub_227664AF0();
          v39 = sub_22766BFD0();

          [v36 setBundleIdentifier_];

          v40 = v67;
          sub_227664B00();
          v41 = sub_2276626A0();
          v42 = v40;
          v29 = v37;
          v28 = v70;
          (*v61)(v42, v68);
          [v36 setDate_];

          (*v65)(v28, v26);
          v31 += v60;
          if (!--v25)
          {
            goto LABEL_10;
          }
        }

        v43 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v44 = swift_allocError();
        (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D51000], v43);
        swift_willThrow();
        v46 = v57;
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

        (*(v58 + 8))(v46, v59);
        swift_willThrow();
        sub_226EDC474(0);
        (*v65)(v28, v56);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227562898(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v59 = a2;
  v7 = sub_22766B390();
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v50 - v13;
  v15 = sub_2276682A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753A78C(a1, a3, a4);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v57 = v19;
    v58 = v15;
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
      v50 = v10;
      v51 = v7;
      v23 = *(a1 + 16);
      if (v23)
      {
        v25 = *(v16 + 16);
        v24 = v16 + 16;
        v54 = "ntEnvironmentCache";
        v55 = v25;
        v56 = (v24 - 8);
        v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v53 = *(v24 + 56);
        v25(v57, v26, v58);
        while (1)
        {
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v59];

          type metadata accessor for ManagedAchievementNotificationRecord();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          sub_227668290();
          v34 = sub_22766BFD0();

          [v33 setTemplateUniqueName_];

          sub_227668270();
          v35 = sub_227662750();
          v36 = *(v35 - 8);
          v37 = 0;
          if ((*(v36 + 48))(v14, 1, v35) != 1)
          {
            v37 = sub_2276626A0();
            (*(v36 + 8))(v14, v35);
          }

          [v33 setDatePresented_];

          v27 = v57;
          v28 = v58;
          (*v56)(v57, v58);
          v26 += v53;
          if (!--v23)
          {
            goto LABEL_13;
          }

          v55(v27, v26, v28);
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

        (*(v52 + 8))(v41, v51);
        swift_willThrow();
        sub_226EDC474(0);
        (*v56)(v57, v58);
      }

      else
      {
LABEL_13:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227562F00(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v67 = a4;
  v71 = a2;
  v6 = sub_22766B390();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227669360();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v19 = sub_22753A8C8(a1, a3, v67);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v64 = v13;
    v65 = v10;
    v66 = v18;
    v67 = v14;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v56 = v9;
      v57 = v6;
      v22 = *(v59 + 16);
      v24 = v66;
      v23 = v67;
      if (v22)
      {
        v25 = (v63 + 8);
        v62 = *(v15 + 16);
        v63 = v15 + 8;
        v26 = v59 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v59 = *(v15 + 72);
        v60 = v25;
        v61 = v15 + 16;
        while (1)
        {
          v62(v24, v26, v23);
          v27 = objc_opt_self();
          v28 = sub_22766BFD0();
          v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v71];

          type metadata accessor for ManagedBookmark();
          v30 = swift_dynamicCastClass();
          if (!v30)
          {
            break;
          }

          v31 = v30;
          sub_227669350();
          v32 = sub_22766BFD0();

          [v31 setReferenceIdentifier_];

          v33 = sub_227669320();
          v35 = v34;
          v68 = v33;
          v69 = v34;
          v37 = v36 & 1;
          v70 = v36 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
          sub_227663AD0();
          v38 = sub_22766BFD0();
          v39 = v33;
          v40 = v35;
          v41 = v64;
          v42 = v37;
          v24 = v66;
          v23 = v67;
          sub_226EB2DFC(v39, v40, v42);

          [v31 setReferenceType_];

          sub_227669330();
          v43 = sub_2276626A0();
          (*v60)(v41, v65);
          [v31 setDateBookmarked_];

          (*v63)(v24, v23);
          v26 += v59;
          if (!--v22)
          {
            goto LABEL_10;
          }
        }

        v44 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v45 = swift_allocError();
        (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D51000], v44);
        swift_willThrow();
        v47 = v56;
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
          MEMORY[0x22AA9A450](v53, -1, -1);
          MEMORY[0x22AA9A450](v52, -1, -1);
        }

        (*(v58 + 8))(v47, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v63)(v24, v23);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_2275635D8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v69 = a2;
  v70 = a4;
  v6 = sub_22766B390();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666650();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v19 = sub_22753AA04(a1, a3, v70);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v66 = v13;
    v67 = v14;
    v57 = v9;
    v58 = v18;
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

    v56 = v6;
    v22 = *(v65 + 16);
    if (v22)
    {
      v23 = *(v15 + 16);
      v63 = "gModalityIdentifier";
      v64 = v23;
      v60 = (v62 + 8);
      v61 = v10;
      v62 = v15 + 8;
      v24 = v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v65 = *(v15 + 72);
      v26 = v67;
      v25 = v68;
      v27 = v58;
      while (1)
      {
        v64(v27, v24, v26);
        v28 = objc_opt_self();
        v29 = sub_22766BFD0();
        v30 = v69;
        v31 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v69];

        type metadata accessor for ManagedOnboardingSurveyResult();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {

          v43 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v25 = swift_allocError();
          (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51000], v43);
          swift_willThrow();
          goto LABEL_18;
        }

        v33 = v32;
        v70 = v22;
        sub_227666620();
        v34 = sub_22766BFD0();

        [v33 setIdentifier_];

        v35 = v66;
        sub_227666630();
        v36 = sub_2276626A0();
        (*v60)(v35, v61);
        [v33 setCompletedDate_];

        v37 = sub_227666640();
        v38 = v25;
        v39 = sub_2272D6818(v37);

        v40 = sub_226F3D770(v39);

        v41 = sub_227648160(v30, v40);
        v25 = v38;
        if (v38)
        {
          break;
        }

        v42 = v41;

        [v33 setSelectedModalityIdentifiers_];

        v26 = v67;
        (*v62)(v27, v67);
        v24 += v65;
        v22 = v70 - 1;
        if (v70 == 1)
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      v45 = v57;
      sub_22766A770();
      v46 = v25;
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();

      v49 = os_log_type_enabled(v47, v48);
      v50 = v56;
      v51 = v59;
      if (v49)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v25;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v47, v48, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v51 + 8))(v45, v50);
      swift_willThrow();
      sub_226EDC474(0);
      (*v62)(v58, v67);
    }

    else
    {
      v25 = v68;
LABEL_14:
      v68 = v25;
      sub_226EDC474(0);
    }
  }
}

void sub_227563CC0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v70 = a2;
  v71 = a4;
  v6 = sub_22766B390();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227669480();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v19 = sub_22753AB40(a1, a3, v71);
  if (v19)
  {
    if (v19 != 1)
    {
      v20 = v19;
      swift_willThrow();
      v72 = v20;
    }
  }

  else
  {
    v71 = v15;
    v68 = v13;
    v69 = v14;
    v60 = v9;
    v61 = v18;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v22 = swift_allocError();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D51010], v21);
      v72 = v22;
      swift_willThrow();
    }

    else
    {
      v59 = v6;
      v24 = *(v67 + 16);
      if (v24)
      {
        v25 = *(v71 + 16);
        v63 = (v65 + 8);
        v64 = v10;
        v65 = v71 + 8;
        v66 = v25;
        v26 = v67 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        v67 = *(v71 + 72);
        v27 = v69;
        v28 = v61;
        while (1)
        {
          v29 = v72;
          v66(v28, v26, v27);
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = v70;
          v33 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v70];

          type metadata accessor for ManagedPlaylist();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {

            v43 = sub_227664DD0();
            sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
            v44 = swift_allocError();
            (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D51000], v43);
            v72 = v44;
            swift_willThrow();
            goto LABEL_14;
          }

          v35 = v34;
          v71 = v24;
          sub_227669430();
          v36 = sub_22766BFD0();

          [v35 setIdentifier_];

          sub_227669450();
          v37 = sub_22766BFD0();

          [v35 setName_];

          v38 = sub_227669460();
          v39 = sub_22764A174(v32, v38);
          v72 = v29;
          if (v29)
          {
            break;
          }

          v40 = v39;

          [v35 setItems_];

          v41 = v68;
          sub_227669440();
          v42 = sub_2276626A0();
          (*v63)(v41, v64);
          [v35 setDateCreated_];

          v27 = v69;
          (*v65)(v28, v69);
          v26 += v67;
          v24 = v71 - 1;
          if (v71 == 1)
          {
            goto LABEL_11;
          }
        }

LABEL_14:
        v46 = v60;
        sub_22766A770();
        v47 = v72;
        v48 = v72;
        v49 = sub_22766B380();
        v50 = sub_22766C8B0();

        v51 = os_log_type_enabled(v49, v50);
        v52 = v59;
        v53 = v62;
        if (v51)
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          v56 = v72;
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v54 + 4) = v57;
          *v55 = v57;
          _os_log_impl(&dword_226E8E000, v49, v50, "%@", v54, 0xCu);
          sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v55, -1, -1);
          MEMORY[0x22AA9A450](v54, -1, -1);
        }

        (*(v53 + 8))(v46, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v65)(v61, v69);
      }

      else
      {
LABEL_11:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_2275643C0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v52 = a2;
  v9 = sub_22766B390();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227663AB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753AC7C(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v45 = v12;
  v46 = v17;
  v19 = v13;
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

  v44 = v9;
  v22 = *(a1 + 16);
  if (v22)
  {
    v24 = v14 + 16;
    v23 = *(v14 + 16);
    v50 = "oucher";
    v51 = v23;
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v48 = *(v14 + 72);
    v49 = (v14 + 8);
    v26 = v19;
    v27 = v46;
    while (1)
    {
      v28 = v26;
      v29 = v24;
      v51(v27, v25, v26);
      v30 = objc_opt_self();
      v31 = sub_22766BFD0();
      v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v52];

      type metadata accessor for ManagedPlaylistItem();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {

        v34 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_227000224(v33);
      if (v4)
      {
        break;
      }

      v26 = v28;
      (*v49)(v27, v28);

      v25 += v48;
      --v22;
      v24 = v29;
      if (!v22)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v36 = v45;
    sub_22766A770();
    v37 = v5;
    v38 = sub_22766B380();
    v39 = sub_22766C8B0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v5;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_226E8E000, v38, v39, "%@", v40, 0xCu);
      sub_226E97D1C(v41, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    (*(v47 + 8))(v36, v44);
    swift_willThrow();
    sub_226EDC474(0);
    (*v49)(v27, v28);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227564918(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v66 = a4;
  v68 = a2;
  v6 = sub_22766B390();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2276627D0();
  v59 = *(v67 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v67);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662750();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227667440();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22753ADB8(a1, a3, v66);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v22 = v63;
    v58 = a1;
    v64 = v15;
    v65 = v11;
    v53 = v20;
    v54 = v16;
    v66 = v12;
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
      v25 = *(v58 + 16);
      v27 = v53;
      v26 = v54;
      if (v25)
      {
        v29 = v17 + 16;
        v28 = *(v17 + 16);
        v61 = "anScheduleFilterProperty";
        v62 = v28;
        v59 += 8;
        v60 = (v22 + 8);
        v63 = v17 + 8;
        v30 = v58 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v58 = *(v17 + 72);
        while (1)
        {
          v31 = v29;
          v62(v27, v30, v26);
          v32 = objc_opt_self();
          v33 = sub_22766BFD0();
          v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v68];

          type metadata accessor for ManagedWorkoutPlanSummaryViewed();
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
            break;
          }

          v36 = v35;
          v37 = v64;
          sub_227667410();
          v38 = sub_2276626A0();
          (*v60)(v37, v66);
          [v36 setDateViewed_];

          v39 = v65;
          sub_227667430();
          v40 = sub_227662790();
          (*v59)(v39, v67);
          [v36 setPlanIdentifier_];

          (*v63)(v27, v26);
          v30 += v58;
          --v25;
          v29 = v31;
          if (!v25)
          {
            goto LABEL_10;
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
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v56 + 8))(v44, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v63)(v53, v54);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227565010(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227665CA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753AEF4(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedWorkoutPlanSummaryViewed";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedWorkoutPlanTemplate();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_226F1DD6C(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227565578(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227667780();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753B030(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedArchivedSession";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedArchivedWorkoutPlanSession();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2275A45E0(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227565AE0(uint64_t a1, void (**a2)(char *, uint64_t), unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v9 = sub_22766B390();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276638D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753B16C(a1, a3, a4);
  if (v18)
  {
    if (v18 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v48 = v12;
  v49 = v17;
  v54 = v13;
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

  v47 = v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v23 = v14 + 16;
    v22 = *(v14 + 16);
    v52 = "ManagedWorkoutIdentifier";
    v53 = v22;
    v24 = (v14 + 8);
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v26 = v54;
    v27 = v49;
    while (1)
    {
      v28 = v23;
      v53(v27, v25, v26);
      v29 = objc_opt_self();
      v30 = sub_22766BFD0();
      v31 = v29;
      v32 = v55;
      v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v55];

      type metadata accessor for ManagedWorkoutPlan();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        v55 = v24;

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v5 = swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2275EEB10(v34, v32);
      if (v4)
      {
        break;
      }

      v26 = v54;
      (*v24)(v27, v54);

      v25 += v51;
      --v21;
      v23 = v28;
      if (!v21)
      {
        goto LABEL_13;
      }
    }

    v55 = v24;

LABEL_16:
    v37 = v48;
    sub_22766A770();
    v38 = v5;
    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v47;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "%@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      v27 = v49;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v50 + 8))(v37, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v55)(v27, v54);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227566048(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v48 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SyncZoneChangeWindow();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753B2A8(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v48;
    v46 = v11;
    v47 = v8;
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

    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = v18;
      v51 = "ManagedSyncChangeTag";
      v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v49 = *(v13 + 72);
      v50 = v7;
      while (1)
      {
        sub_227596718(v23, v16, type metadata accessor for SyncZoneChangeWindow);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v22];

        type metadata accessor for ManagedSyncZoneChangeWindow();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        v28 = v27;
        sub_2276694C0();
        v29 = sub_22766BFD0();

        [v28 setZoneName_];

        v7 = v50;
        v30 = &v16[*(v12 + 20)];
        v31 = *v30;
        v32 = *(v30 + 1);
        v33 = sub_227662560();
        [v28 setChangeWindow_];

        sub_2275966B8(v16, type metadata accessor for SyncZoneChangeWindow);
        v23 += v49;
        if (!--v21)
        {
          goto LABEL_11;
        }
      }

      v34 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v35 = swift_allocError();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D51000], v34);
      swift_willThrow();
      v37 = v46;
      sub_22766A770();
      v38 = v35;
      v39 = sub_22766B380();
      v40 = sub_22766C8B0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v35;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_226E8E000, v39, v40, "%@", v41, 0xCu);
        sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
        v45 = v42;
        v7 = v50;
        MEMORY[0x22AA9A450](v45, -1, -1);
        MEMORY[0x22AA9A450](v41, -1, -1);
      }

      (*(v47 + 8))(v37, v7);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v16, type metadata accessor for SyncZoneChangeWindow);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_2275665D0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v52 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SyncChangeTag();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_22753B3E4(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v52;
    v50 = v11;
    v51 = v8;
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

    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = v18;
      v55 = "ManagedStreamingKeyNonce";
      v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v53 = *(v13 + 72);
      v54 = v7;
      while (1)
      {
        sub_227596718(v23, v16, type metadata accessor for SyncChangeTag);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v22];

        type metadata accessor for ManagedSyncChangeTag();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        v28 = v27;
        v29 = *v16;
        v30 = v16[1];
        v31 = sub_22766BFD0();
        [v28 setSyncIdentifier_];

        v32 = v16 + *(v12 + 20);
        sub_2276694C0();
        v33 = sub_22766BFD0();

        [v28 setZoneName_];

        v7 = v54;
        v34 = (v16 + *(v12 + 24));
        v35 = *v34;
        v36 = v34[1];
        v37 = sub_22766BFD0();
        [v28 setEtag_];

        sub_2275966B8(v16, type metadata accessor for SyncChangeTag);
        v23 += v53;
        if (!--v21)
        {
          goto LABEL_11;
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
        v49 = v45;
        v7 = v54;
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v51 + 8))(v41, v7);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v16, type metadata accessor for SyncChangeTag);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227566B80(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v64 = a4;
  v62 = a2;
  v6 = sub_22766B390();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276624A0();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227665490();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v19 = sub_22753B798(a1, a3, v64);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v20 = v63;
    v60 = v10;
    v61 = v14;
    v64 = v18;
    v51 = v9;
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
      v23 = *(v53 + 16);
      v24 = v61;
      v25 = v64;
      if (v23)
      {
        v26 = *(v15 + 16);
        v57 = "ManagedAssetRequestReference";
        v58 = v26;
        v55 = (v20 + 8);
        v56 = v6;
        v59 = (v15 + 8);
        v27 = v53 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v53 = *(v15 + 72);
        v54 = v15 + 16;
        while (1)
        {
          v63 = v23;
          v58(v25, v27, v24);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v62];

          type metadata accessor for ManagedAssetResumableLoad();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          sub_227665480();
          sub_227662390();
          v33 = *v55;
          v34 = v60;
          (*v55)(v13, v60);
          v35 = sub_22766BFD0();

          [v32 setRemoteURL_];

          sub_227665460();
          sub_227662390();
          v33(v13, v34);
          v25 = v64;
          v36 = sub_22766BFD0();
          v6 = v56;

          [v32 setLocalURL_];

          v37 = sub_227665450();
          if (v37 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v38 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v37;
          }

          [v32 setDownloadToken_];

          v24 = v61;
          (*v59)(v25, v61);
          v27 += v53;
          v23 = v63 - 1;
          if (v63 == 1)
          {
            goto LABEL_13;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v51;
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
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v52 + 8))(v42, v6);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v64, v61);
      }

      else
      {
LABEL_13:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227567260(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v48 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for KeyCertificate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753B8D4(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v48;
    v46 = v11;
    v47 = v8;
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

    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = v18;
      v51 = "ManagedHealthKitWorkout";
      v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v49 = *(v13 + 72);
      v50 = v7;
      while (1)
      {
        sub_227596718(v23, v16, type metadata accessor for KeyCertificate);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v22];

        type metadata accessor for ManagedKeyCertificate();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        v28 = v27;
        sub_227662390();
        v29 = sub_22766BFD0();

        [v28 setRemoteURL_];

        v7 = v50;
        v30 = &v16[*(v12 + 20)];
        v31 = *v30;
        v32 = *(v30 + 1);
        v33 = sub_227662560();
        [v28 setData_];

        sub_2275966B8(v16, type metadata accessor for KeyCertificate);
        v23 += v49;
        if (!--v21)
        {
          goto LABEL_11;
        }
      }

      v34 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v35 = swift_allocError();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D51000], v34);
      swift_willThrow();
      v37 = v46;
      sub_22766A770();
      v38 = v35;
      v39 = sub_22766B380();
      v40 = sub_22766C8B0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v35;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_226E8E000, v39, v40, "%@", v41, 0xCu);
        sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
        v45 = v42;
        v7 = v50;
        MEMORY[0x22AA9A450](v45, -1, -1);
        MEMORY[0x22AA9A450](v41, -1, -1);
      }

      (*(v47 + 8))(v37, v7);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v16, type metadata accessor for KeyCertificate);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_2275677E8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22753BA10(a1, a3, a4, &qword_27D7BEAA8, &qword_22768B780, &qword_27D7BEAB0, sub_2275969EC);
  if (v14)
  {
    if (v14 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (sub_227669C10())
  {
    v15 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51010], v15);
LABEL_6:
    swift_willThrow();
    return;
  }

  v43 = v13;
  v44 = v10;
  v45 = v9;
  v46 = v4;
  v17 = *(a1 + 16);
  if (v17)
  {
    v47 = "ManagedSocialMediaHandle";
    v18 = (a1 + 56);
    while (1)
    {
      v48 = v17;
      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v22 = *(v18 - 1);
      v21 = *v18;
      v23 = objc_opt_self();
      sub_226F5E0B4(v19, v20);

      v24 = sub_22766BFD0();
      v25 = a2;
      v26 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:a2];

      type metadata accessor for ManagedStreamingKeyNonce();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        break;
      }

      v28 = v27;
      v29 = sub_227662560();
      [v28 setSeed_];

      v30 = sub_22766BFD0();
      [v28 setWorkoutIdentifier_];

      sub_226EDC420(v19, v20);

      v18 += 4;
      v17 = v48 - 1;
      a2 = v25;
      if (v48 == 1)
      {
        goto LABEL_12;
      }
    }

    v31 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51000], v31);
    swift_willThrow();
    v34 = v43;
    sub_22766A770();
    v35 = v32;
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v32;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226E8E000, v36, v37, "%@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v44 + 8))(v34, v45);
    swift_willThrow();
    sub_226EDC474(0);
    sub_226EDC420(v19, v20);
  }

  else
  {
LABEL_12:
    sub_226EDC474(0);
  }
}

void sub_227567CEC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v68 = a4;
  v67 = a2;
  v6 = sub_22766B390();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_227662750();
  v63 = *(v66 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v66);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = sub_2276662D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22753BB20(a1, a3, v68);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v59 = a1;
    v68 = v20;
    v64 = v12;
    v65 = v11;
    v55 = v16;
    if (sub_227669C10())
    {
      v22 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51010], v22);
      swift_willThrow();
    }

    else
    {
      v24 = *(v59 + 16);
      v25 = v55;
      v26 = v17;
      v27 = v68;
      if (v24)
      {
        v29 = *(v26 + 16);
        v28 = v26 + 16;
        v61 = "ManagedAssetBundle";
        v62 = v29;
        v30 = (v63 + 8);
        v63 = v28 - 8;
        v31 = v59 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v59 = *(v28 + 56);
        v60 = v30;
        while (1)
        {
          v62(v27, v31, v25);
          v32 = objc_opt_self();
          v33 = sub_22766BFD0();
          v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v67];

          type metadata accessor for ManagedAssetBundleLoadFailure();
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
            break;
          }

          v36 = v35;
          sub_227666280();
          v37 = v28;
          v38 = sub_22766BFD0();

          [v36 setBundleIdentifier_];

          sub_2276662C0();
          sub_227663AD0();
          sub_226E97D1C(v15, &qword_27D7BB2C0, &unk_227687210);
          v39 = sub_22766BFD0();

          [v36 setReason_];

          v40 = v65;
          sub_227666290();
          v41 = sub_2276626A0();
          v42 = v40;
          v28 = v37;
          v27 = v68;
          (*v60)(v42, v66);
          [v36 setDate_];

          (*v63)(v27, v25);
          v31 += v59;
          if (!--v24)
          {
            goto LABEL_10;
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
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v57 + 8))(v46, v58);
        swift_willThrow();
        sub_226EDC474(0);
        (*v63)(v27, v55);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227568408(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v63 = a4;
  v65 = a2;
  v6 = sub_22766B390();
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227668700();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v19 = sub_22753BC5C(a1, a3, v63);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v63 = v10;
    v64 = v14;
    v56 = v9;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v55 = v6;
      v22 = *(v58 + 16);
      v23 = v64;
      if (v22)
      {
        v25 = v15 + 16;
        v24 = *(v15 + 16);
        v60 = "ManagedRecommendation";
        v61 = v24;
        v26 = (v62 + 8);
        v62 = v15 + 8;
        v27 = v58 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v58 = *(v15 + 72);
        v59 = v26;
        while (1)
        {
          v61(v18, v27, v23);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v65];

          type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          sub_2276686E0();
          v33 = v27;
          v34 = v22;
          v35 = v13;
          v36 = v18;
          v37 = v25;
          v38 = sub_22766BFD0();

          [v32 setParticipantIdentifier_];

          v25 = v37;
          v18 = v36;
          v13 = v35;
          v39 = v34;
          v40 = v33;
          sub_2276686F0();
          v41 = sub_2276626A0();
          (*v59)(v13, v63);
          [v32 setTimestamp_];

          v23 = v64;
          (*v62)(v18, v64);
          v27 = v40 + v58;
          v22 = v39 - 1;
          if (!v22)
          {
            goto LABEL_10;
          }
        }

        v42 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v43 = swift_allocError();
        (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
        swift_willThrow();
        v45 = v56;
        sub_22766A770();
        v46 = v43;
        v47 = sub_22766B380();
        v48 = sub_22766C8B0();
        v49 = v43;

        if (os_log_type_enabled(v47, v48))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          v52 = v49;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v53;
          *v51 = v53;
          _os_log_impl(&dword_226E8E000, v47, v48, "%@", v50, 0xCu);
          sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v50, -1, -1);
        }

        (*(v57 + 8))(v45, v55);
        swift_willThrow();
        sub_226EDC474(0);
        (*v62)(v18, v64);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227568A84(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v67 = a2;
  v7 = sub_22766B390();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666FF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = sub_227538774(a1, a3, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v64 = v18;
    v58 = v10;
    v66 = v11;
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

    v57 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v60 = v12 + 32;
    v61 = v12 + 16;
    v59 = "ManagedCatalogModalityMetadata";
    v62 = (v12 + 8);
    v63 = a1;

    v27 = 0;
    v28 = v66;
    v29 = v16;
    v30 = v68;
    v31 = v64;
    if (v25)
    {
      while (1)
      {
        v68 = v30;
        v32 = v27;
        v33 = v12;
LABEL_16:
        v34 = v31;
        (*(v33 + 16))(v31, *(v63 + 48) + *(v33 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v28);
        (*(v33 + 32))(v29, v34, v28);
        v35 = objc_opt_self();
        v36 = sub_22766BFD0();
        v37 = v35;
        v38 = v67;
        v39 = [v37 insertNewObjectForEntityForName:v36 inManagedObjectContext:v67];

        type metadata accessor for ManagedCatalogModalityReference();
        v40 = swift_dynamicCastClass();
        if (!v40)
        {

          v42 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v30 = swift_allocError();
          (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51000], v42);
          swift_willThrow();
          goto LABEL_24;
        }

        v41 = v68;
        sub_227335928(v40, v38);
        v30 = v41;
        if (v41)
        {
          break;
        }

        v25 &= v25 - 1;
        v28 = v66;
        (*v62)(v29, v66);

        v27 = v32;
        v31 = v64;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v44 = v58;
      sub_22766A770();
      v45 = v30;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v57;
      v50 = v65;
      if (v48)
      {
        v51 = v30;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v51;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v50 + 8))(v44, v49);
      swift_willThrow();

      sub_226EDC474(0);
      (*v62)(v29, v66);
    }

    else
    {
LABEL_11:
      v33 = v12;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          v68 = v30;
          sub_226EDC474(0);

          return;
        }

        v25 = *(v22 + 8 * v32);
        ++v27;
        if (v25)
        {
          v68 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2275690A4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227667B30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = sub_2275388B0(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v62 = v18;
    v64 = v12;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    v61 = v16;
    v53 = v10;
    v54 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v64;
    v57 = v64 + 32;
    v58 = v64 + 16;
    v56 = "pCategoryIdentifier";
    v59 = (v64 + 8);

    v28 = 0;
    v55 = a1 + 56;
    v60 = a1;
    if (v25)
    {
      while (1)
      {
        v29 = v28;
LABEL_14:
        v30 = *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v29 << 6));
        v31 = v62;
        (*(v27 + 16))(v62, v30, v11);
        v32 = v61;
        (*(v27 + 32))(v61, v31, v11);
        v33 = objc_opt_self();
        v34 = v11;
        v35 = sub_22766BFD0();
        v36 = [v33 insertNewObjectForEntityForName:v35 inManagedObjectContext:v65];

        type metadata accessor for ManagedCatalogTipCategoryReference();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v25 &= v25 - 1;
        sub_227667B10();
        v39 = sub_22766BFD0();

        [v38 setIdentifier_];

        sub_227667B20();
        v40 = sub_22766BFD0();

        [v38 setName_];

        result = (*v59)(v32, v34);
        v28 = v29;
        a1 = v60;
        v11 = v34;
        v27 = v64;
        v22 = v55;
        if (!v25)
        {
          goto LABEL_11;
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

      (*(v63 + 8))(v44, v54);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v59)(v61, v34);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v29);
        ++v28;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2275696FC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v71 = a2;
  v73 = a4;
  v6 = sub_22766B390();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276650A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v72 = a1;
  result = sub_2275389EC(a1, a3, v73);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v68 = v21;
    v69 = v15;
    v64 = v13;
    v65 = v10;
    v59 = v19;
    v73 = v14;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      return swift_willThrow();
    }

    else
    {
      v58 = v9;
      v25 = v72 + 56;
      v26 = 1 << *(v72 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(v72 + 56);
      v29 = (v26 + 63) >> 6;
      v30 = v69;
      v62 = v69 + 32;
      v63 = v69 + 16;
      v60 = (v70 + 8);
      v61 = "pCategoryReference";
      v70 = v69 + 8;

      v31 = 0;
      v32 = v73;
      v33 = v59;
      v34 = v68;
      if (v28)
      {
        while (1)
        {
          v35 = v31;
          v36 = v71;
LABEL_14:
          (*(v30 + 16))(v34, *(v72 + 48) + *(v30 + 72) * (__clz(__rbit64(v28)) | (v35 << 6)), v32);
          (*(v30 + 32))(v33, v34, v32);
          v37 = objc_opt_self();
          v38 = sub_22766BFD0();
          v39 = [v37 insertNewObjectForEntityForName:v38 inManagedObjectContext:v36];

          type metadata accessor for ManagedCatalogTipJournal();
          v40 = swift_dynamicCastClass();
          if (!v40)
          {
            break;
          }

          v41 = v40;
          v28 &= v28 - 1;
          sub_227665050();
          v42 = sub_22766BFD0();

          [v41 setTipIdentifier_];

          v43 = v64;
          sub_227665070();
          v44 = sub_2276626A0();
          (*v60)(v43, v65);
          [v41 setDate_];

          sub_227665060();
          v45 = sub_22766BFD0();

          [v41 setJournalIdentifier_];

          v32 = v73;
          sub_227665040();
          [v41 setElapsedTime_];
          sub_227665090();
          [v41 setTotalTime_];

          result = (*v70)(v33, v32);
          v31 = v35;
          v30 = v69;
          v34 = v68;
          if (!v28)
          {
            goto LABEL_10;
          }
        }

        v46 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v47 = swift_allocError();
        (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D51000], v46);
        swift_willThrow();
        v49 = v58;
        sub_22766A770();
        v50 = v47;
        v51 = sub_22766B380();
        v52 = sub_22766C8B0();
        v53 = v47;

        if (os_log_type_enabled(v51, v52))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          v56 = v53;
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v54 + 4) = v57;
          *v55 = v57;
          _os_log_impl(&dword_226E8E000, v51, v52, "%@", v54, 0xCu);
          sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v55, -1, -1);
          MEMORY[0x22AA9A450](v54, -1, -1);
        }

        (*(v66 + 8))(v49, v67);
        swift_willThrow();

        sub_226EDC474(0);
        return (*v70)(v59, v32);
      }

      else
      {
LABEL_10:
        v36 = v71;
        while (1)
        {
          v35 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v35 >= v29)
          {
            sub_226EDC474(0);
          }

          v28 = *(v25 + 8 * v35);
          ++v31;
          if (v28)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_227569E58(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227669530();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = sub_227538B28(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v62 = v18;
    v64 = v12;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    v61 = v16;
    v53 = v10;
    v54 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v64;
    v57 = v64 + 32;
    v58 = v64 + 16;
    v56 = "AudioLanguageIdentifier";
    v59 = (v64 + 8);

    v28 = 0;
    v55 = a1 + 56;
    v60 = a1;
    if (v25)
    {
      while (1)
      {
        v29 = v28;
LABEL_14:
        v30 = *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v29 << 6));
        v31 = v62;
        (*(v27 + 16))(v62, v30, v11);
        v32 = v61;
        (*(v27 + 32))(v61, v31, v11);
        v33 = objc_opt_self();
        v34 = v11;
        v35 = sub_22766BFD0();
        v36 = [v33 insertNewObjectForEntityForName:v35 inManagedObjectContext:v65];

        type metadata accessor for ManagedBodyFocus();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v25 &= v25 - 1;
        sub_227669510();
        v39 = sub_22766BFD0();

        [v38 setIdentifier_];

        sub_227669520();
        v40 = sub_22766BFD0();

        [v38 setName_];

        result = (*v59)(v32, v34);
        v28 = v29;
        a1 = v60;
        v11 = v34;
        v27 = v64;
        v22 = v55;
        if (!v25)
        {
          goto LABEL_11;
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

      (*(v63 + 8))(v44, v54);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v59)(v61, v34);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v29);
        ++v28;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22756A4B0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227663A30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = sub_227538C64(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v62 = v18;
    v64 = v12;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    v61 = v16;
    v53 = v10;
    v54 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v64;
    v57 = v64 + 32;
    v58 = v64 + 16;
    v56 = "ManagedCatalogSyncAnchor";
    v59 = (v64 + 8);

    v28 = 0;
    v55 = a1 + 56;
    v60 = a1;
    if (v25)
    {
      while (1)
      {
        v29 = v28;
LABEL_14:
        v30 = *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v29 << 6));
        v31 = v62;
        (*(v27 + 16))(v62, v30, v11);
        v32 = v61;
        (*(v27 + 32))(v61, v31, v11);
        v33 = objc_opt_self();
        v34 = v11;
        v35 = sub_22766BFD0();
        v36 = [v33 insertNewObjectForEntityForName:v35 inManagedObjectContext:v65];

        type metadata accessor for ManagedCatalogTheme();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v25 &= v25 - 1;
        sub_227663A00();
        v39 = sub_22766BFD0();

        [v38 setIdentifier_];

        sub_227663A10();
        v40 = sub_22766BFD0();

        [v38 setName_];

        [v38 setSortOrder_];
        result = (*v59)(v32, v34);
        v28 = v29;
        a1 = v60;
        v11 = v34;
        v27 = v64;
        v22 = v55;
        if (!v25)
        {
          goto LABEL_11;
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

      (*(v63 + 8))(v44, v54);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v59)(v61, v34);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v29);
        ++v28;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22756AB24(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v73 = a2;
  v7 = sub_22766B390();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227665D70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  result = sub_227538DA0(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v70 = v18;
    v71 = v12;
    v62 = v16;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    v60 = v10;
    v61 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v71;
    v65 = v71 + 32;
    v66 = v71 + 16;
    v64 = "ManagedCatalogTheme";
    v67 = (v71 + 8);

    v28 = 0;
    v29 = v62;
    v63 = v26;
    v68 = v11;
    v69 = a1;
    v30 = v70;
    if (v25)
    {
      while (1)
      {
        v31 = v28;
LABEL_14:
        (*(v27 + 16))(v30, *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v31 << 6)), v11);
        (*(v27 + 32))(v29, v30, v11);
        v32 = objc_opt_self();
        v33 = sub_22766BFD0();
        v34 = v73;
        v35 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v73];

        type metadata accessor for ManagedCatalogThemeCategory();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v47 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v48 = swift_allocError();
          (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D51000], v47);
          swift_willThrow();
          goto LABEL_27;
        }

        v37 = v36;
        sub_227665D30();
        v38 = sub_22766BFD0();

        [v37 setIdentifier_];

        sub_227665D40();
        v39 = sub_22766BFD0();

        [v37 setName_];

        v40 = sub_227665D60();
        v41 = 0x7FFFFFFFLL;
        if (v40 < 0x7FFFFFFF)
        {
          v41 = v40;
        }

        v42 = v41 <= 0xFFFFFFFF80000000 ? 0xFFFFFFFF80000000 : v41;
        [v37 setSortOrder_];
        v43 = sub_227665D50();
        v44 = v74;
        v45 = sub_227647D08(v34, v43);
        v74 = v44;
        if (v44)
        {
          break;
        }

        v46 = v45;
        v25 &= v25 - 1;

        [v37 setThemes_];

        v11 = v68;
        result = (*v67)(v29, v68);
        v28 = v31;
        a1 = v69;
        v27 = v71;
        v26 = v63;
        v30 = v70;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

      v48 = v74;
LABEL_27:
      v50 = v60;
      sub_22766A770();
      v51 = v48;
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v68;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v48;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_226E8E000, v52, v53, "%@", v56, 0xCu);
        sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v57, -1, -1);
        MEMORY[0x22AA9A450](v56, -1, -1);
      }

      (*(v72 + 8))(v50, v61);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v67)(v62, v55);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v31 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v31);
        ++v28;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22756B1FC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227669580();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = sub_227538EDC(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v62 = v18;
    v64 = v12;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    v61 = v16;
    v53 = v10;
    v54 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v64;
    v57 = v64 + 32;
    v58 = v64 + 16;
    v56 = "ManagedEngagementBadge";
    v59 = (v64 + 8);

    v28 = 0;
    v55 = a1 + 56;
    v60 = a1;
    if (v25)
    {
      while (1)
      {
        v29 = v28;
LABEL_14:
        v30 = *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v29 << 6));
        v31 = v62;
        (*(v27 + 16))(v62, v30, v11);
        v32 = v61;
        (*(v27 + 32))(v61, v31, v11);
        v33 = objc_opt_self();
        v34 = v11;
        v35 = sub_22766BFD0();
        v36 = [v33 insertNewObjectForEntityForName:v35 inManagedObjectContext:v65];

        type metadata accessor for ManagedEquipment();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v25 &= v25 - 1;
        sub_227669560();
        v39 = sub_22766BFD0();

        [v38 setIdentifier_];

        sub_227669570();
        v40 = sub_22766BFD0();

        [v38 setName_];

        result = (*v59)(v32, v34);
        v28 = v29;
        a1 = v60;
        v11 = v34;
        v27 = v64;
        v22 = v55;
        if (!v25)
        {
          goto LABEL_11;
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

      (*(v63 + 8))(v44, v54);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v59)(v61, v34);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v29);
        ++v28;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22756B854(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276632A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = sub_227539018(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v62 = v18;
    v64 = v12;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    v61 = v16;
    v53 = v10;
    v54 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = v64;
    v57 = v64 + 32;
    v58 = v64 + 16;
    v56 = "ManagedModalityIdentifier";
    v59 = (v64 + 8);

    v28 = 0;
    v55 = a1 + 56;
    v60 = a1;
    if (v25)
    {
      while (1)
      {
        v29 = v28;
LABEL_14:
        v30 = *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v29 << 6));
        v31 = v62;
        (*(v27 + 16))(v62, v30, v11);
        v32 = v61;
        (*(v27 + 32))(v61, v31, v11);
        v33 = objc_opt_self();
        v34 = v11;
        v35 = sub_22766BFD0();
        v36 = [v33 insertNewObjectForEntityForName:v35 inManagedObjectContext:v65];

        type metadata accessor for ManagedMusicGenre();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v25 &= v25 - 1;
        sub_227663280();
        v39 = sub_22766BFD0();

        [v38 setIdentifier_];

        sub_227663290();
        v40 = sub_22766BFD0();

        [v38 setName_];

        result = (*v59)(v32, v34);
        v28 = v29;
        a1 = v60;
        v11 = v34;
        v27 = v64;
        v22 = v55;
        if (!v25)
        {
          goto LABEL_11;
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

      (*(v63 + 8))(v44, v54);
      swift_willThrow();

      sub_226EDC474(0);
      return (*v59)(v61, v34);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v29);
        ++v28;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22756BEAC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276633A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = sub_227539154(a1, a3, a4);
  if (result)
  {
    if (result != 1)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v62 = v18;
    v63 = v12;
    v64 = v16;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      return swift_willThrow();
    }

    else
    {
      v53 = v10;
      v54 = v7;
      v22 = a1 + 56;
      v23 = 1 << *(a1 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *(a1 + 56);
      v26 = (v23 + 63) >> 6;
      v27 = v63;
      v56 = v63 + 32;
      v57 = v63 + 16;
      v55 = "ManagedSessionScores";
      v58 = (v63 + 8);

      v28 = 0;
      v29 = v64;
      v59 = v11;
      v60 = a1;
      while (1)
      {
        v31 = v62;
        if (!v25)
        {
          break;
        }

LABEL_16:
        (*(v27 + 16))(v62, *(a1 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v11);
        (*(v27 + 32))(v29, v31, v11);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v65];

        type metadata accessor for ManagedSkillLevel();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

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

          (*(v61 + 8))(v44, v54);
          swift_willThrow();

          sub_226EDC474(0);
          return (*v58)(v64, v59);
        }

        v37 = v36;
        sub_227663370();
        v38 = sub_22766BFD0();

        [v37 setIdentifier_];

        sub_227663390();
        v39 = sub_22766BFD0();

        [v37 setName_];

        sub_227663380();
        if (v40)
        {
          v30 = sub_22766BFD0();
        }

        else
        {
          v30 = 0;
        }

        a1 = v60;
        v25 &= v25 - 1;
        [v37 setKind_];

        v11 = v59;
        v29 = v64;
        result = (*v58)(v64, v59);
        v27 = v63;
      }

      while (1)
      {
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          sub_226EDC474(0);
        }

        v25 = *(v22 + 8 * v32);
        ++v28;
        if (v25)
        {
          v28 = v32;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_22756C52C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v67 = a2;
  v7 = sub_22766B390();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227664CA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = sub_22753A024(a1, a3, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v64 = v18;
    v58 = v10;
    v66 = v11;
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

    v57 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v60 = v12 + 32;
    v61 = v12 + 16;
    v59 = "StandaloneMindfulSessionJob";
    v62 = (v12 + 8);
    v63 = a1;

    v27 = 0;
    v28 = v66;
    v29 = v16;
    v30 = v68;
    v31 = v64;
    if (v25)
    {
      while (1)
      {
        v68 = v30;
        v32 = v27;
        v33 = v12;
LABEL_16:
        v34 = v31;
        (*(v33 + 16))(v31, *(v63 + 48) + *(v33 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v28);
        (*(v33 + 32))(v29, v34, v28);
        v35 = objc_opt_self();
        v36 = sub_22766BFD0();
        v37 = v35;
        v38 = v67;
        v39 = [v37 insertNewObjectForEntityForName:v36 inManagedObjectContext:v67];

        type metadata accessor for ManagedHealthKitWorkout();
        v40 = swift_dynamicCastClass();
        if (!v40)
        {

          v42 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v30 = swift_allocError();
          (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51000], v42);
          swift_willThrow();
          goto LABEL_24;
        }

        v41 = v68;
        sub_226F79544(v40, v38);
        v30 = v41;
        if (v41)
        {
          break;
        }

        v25 &= v25 - 1;
        v28 = v66;
        (*v62)(v29, v66);

        v27 = v32;
        v31 = v64;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v44 = v58;
      sub_22766A770();
      v45 = v30;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v57;
      v50 = v65;
      if (v48)
      {
        v51 = v30;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v51;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v50 + 8))(v44, v49);
      swift_willThrow();

      sub_226EDC474(0);
      (*v62)(v29, v66);
    }

    else
    {
LABEL_11:
      v33 = v12;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          v68 = v30;
          sub_226EDC474(0);

          return;
        }

        v25 = *(v22 + 8 * v32);
        ++v27;
        if (v25)
        {
          v68 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756CB4C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666BF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = sub_22753A29C(a1, a3, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v18;
    v56 = v10;
    v64 = v11;
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

    v55 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v58 = v12 + 32;
    v59 = v12 + 16;
    v57 = "ManagedHealthKitActivityType";
    v60 = (v12 + 8);
    v61 = a1;

    v27 = 0;
    v28 = v64;
    v29 = v16;
    v30 = v66;
    v31 = v62;
    if (v25)
    {
      while (1)
      {
        v66 = v30;
        v32 = v27;
        v33 = v12;
LABEL_16:
        v34 = v31;
        (*(v33 + 16))(v31, *(v61 + 48) + *(v33 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v28);
        (*(v33 + 32))(v29, v34, v28);
        v35 = objc_opt_self();
        v36 = sub_22766BFD0();
        v37 = [v35 insertNewObjectForEntityForName:v36 inManagedObjectContext:v65];

        type metadata accessor for ManagedHealthKitMindfulSession();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {

          v40 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v30 = swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51000], v40);
          swift_willThrow();
          goto LABEL_24;
        }

        v39 = v66;
        sub_2275D7AC0(v38);
        v30 = v39;
        if (v39)
        {
          break;
        }

        v25 &= v25 - 1;
        v28 = v64;
        (*v60)(v29, v64);

        v27 = v32;
        v31 = v62;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v42 = v56;
      sub_22766A770();
      v43 = v30;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v55;
      v48 = v63;
      if (v46)
      {
        v49 = swift_slowAlloc();
        v50 = v30;
        v51 = swift_slowAlloc();
        *v49 = 138412290;
        v52 = v50;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v49, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v48 + 8))(v42, v47);
      swift_willThrow();

      sub_226EDC474(0);
      (*v60)(v29, v64);
    }

    else
    {
LABEL_11:
      v33 = v12;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          v66 = v30;
          sub_226EDC474(0);

          return;
        }

        v25 = *(v22 + 8 * v32);
        ++v27;
        if (v25)
        {
          v66 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756D164(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v64 = a2;
  v7 = sub_22766B390();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v53 - v13;
  v15 = sub_2276687D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753A3D8(a1, a3, a4);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v62 = v14;
    v63 = v19;
    v56 = v15;
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
      v53 = v10;
      v54 = v7;
      v23 = *(a1 + 16);
      v24 = v56;
      if (v23)
      {
        v25 = v16 + 16;
        v26 = *(v16 + 16);
        v60 = "ManagedAssetRequestKeyMetadata";
        v61 = (v25 - 8);
        v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v58 = *(v25 + 56);
        v59 = v25;
        v26(v63, v27, v56);
        while (1)
        {
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v64];

          type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          sub_2276687A0();
          v35 = sub_22766BFD0();

          [v34 setIdentifier_];

          sub_2276687C0();
          v36 = sub_22766BFD0();

          [v34 setTitle_];

          v37 = v62;
          sub_2276687B0();
          v38 = v37;
          v39 = sub_2276624A0();
          v40 = *(v39 - 8);
          if ((*(v40 + 48))(v38, 1, v39) == 1)
          {
            sub_226E97D1C(v38, &unk_27D7BB570, &unk_227670FC0);
            v28 = 0;
          }

          else
          {
            sub_227662390();
            v57 = v23;
            (*(v40 + 8))(v38, v39);
            v23 = v57;
            v28 = sub_22766BFD0();
            v24 = v56;
          }

          [v34 setThumbnailURL_];

          v29 = v63;
          (*v61)(v63, v24);
          v27 += v58;
          if (!--v23)
          {
            goto LABEL_14;
          }

          v26(v29, v27, v24);
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

        (*(v55 + 8))(v44, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v63, v24);
      }

      else
      {
LABEL_14:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_22756D81C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v49 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666070();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753A514(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v44 = v11;
    v45 = v12;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v42 = v8;
    v43 = v7;
    v20 = *(a1 + 16);
    v21 = v45;
    if (v20)
    {
      v23 = *(v13 + 16);
      v22 = v13 + 16;
      v46 = "estMediaStreamMetadata";
      v47 = v23;
      v48 = (v22 - 8);
      v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v25 = *(v22 + 56);
      while (1)
      {
        v47(v16, v24, v21);
        v26 = objc_opt_self();
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v49];

        type metadata accessor for ManagedAssetRequestReference();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        sub_2273F9784(v29);

        (*v48)(v16, v21);
        v24 += v25;
        if (!--v20)
        {
          goto LABEL_11;
        }
      }

      v30 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v31 = swift_allocError();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D51000], v30);
      swift_willThrow();
      v33 = v44;
      sub_22766A770();
      v34 = v31;
      v35 = sub_22766B380();
      v36 = sub_22766C8B0();
      v37 = v31;

      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v37;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_226E8E000, v35, v36, "%@", v38, 0xCu);
        sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v39, -1, -1);
        MEMORY[0x22AA9A450](v38, -1, -1);
      }

      (*(v42 + 8))(v33, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v48)(v16, v45);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_22756DD1C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227664410();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = sub_22753B520(a1, a3, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v18;
    v56 = v10;
    v64 = v11;
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

    v55 = v7;
    v22 = a1 + 56;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;
    v58 = v12 + 32;
    v59 = v12 + 16;
    v57 = "ManagedRecentSearchTerm";
    v60 = (v12 + 8);
    v61 = a1;

    v27 = 0;
    v28 = v64;
    v29 = v16;
    v30 = v66;
    v31 = v62;
    if (v25)
    {
      while (1)
      {
        v66 = v30;
        v32 = v27;
        v33 = v12;
LABEL_16:
        v34 = v31;
        (*(v33 + 16))(v31, *(v61 + 48) + *(v33 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v28);
        (*(v33 + 32))(v29, v34, v28);
        v35 = objc_opt_self();
        v36 = sub_22766BFD0();
        v37 = [v35 insertNewObjectForEntityForName:v36 inManagedObjectContext:v65];

        type metadata accessor for ManagedRecommendation();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {

          v40 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v30 = swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51000], v40);
          swift_willThrow();
          goto LABEL_24;
        }

        v39 = v66;
        sub_2274F8D04(v38);
        v30 = v39;
        if (v39)
        {
          break;
        }

        v25 &= v25 - 1;
        v28 = v64;
        (*v60)(v29, v64);

        v27 = v32;
        v31 = v62;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v42 = v56;
      sub_22766A770();
      v43 = v30;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v55;
      v48 = v63;
      if (v46)
      {
        v49 = swift_slowAlloc();
        v50 = v30;
        v51 = swift_slowAlloc();
        *v49 = 138412290;
        v52 = v50;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v49, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      (*(v48 + 8))(v42, v47);
      swift_willThrow();

      sub_226EDC474(0);
      (*v60)(v29, v64);
    }

    else
    {
LABEL_11:
      v33 = v12;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v26)
        {
          v66 = v30;
          sub_226EDC474(0);

          return;
        }

        v25 = *(v22 + 8 * v32);
        ++v27;
        if (v25)
        {
          v66 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756E334(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v54 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227665100();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753B65C(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v48 = v11;
    v49 = v12;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v46 = v8;
    v47 = v7;
    v20 = *(a1 + 16);
    v21 = v49;
    if (v20)
    {
      v23 = v13 + 16;
      v22 = *(v13 + 16);
      v51 = "ManagedEquipmentIdentifier";
      v52 = v22;
      v53 = (v13 + 8);
      v24 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v50 = *(v13 + 72);
      while (1)
      {
        v25 = v23;
        v52(v16, v24, v21);
        v26 = objc_opt_self();
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v54];

        type metadata accessor for ManagedEstimatedCalories();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_2276650C0();
        if (v31 >= 0x7FFFFFFF)
        {
          v32 = 0x7FFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        [v30 setActivityType_];
        sub_2276650E0();
        [v30 setActiveCalorieRate_];
        sub_2276650D0();
        [v30 setBasalCalorieRate_];

        (*v53)(v16, v21);
        v24 += v50;
        --v20;
        v23 = v25;
        if (!v20)
        {
          goto LABEL_14;
        }
      }

      v33 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v34 = swift_allocError();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
      swift_willThrow();
      v36 = v48;
      sub_22766A770();
      v37 = v34;
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();
      v40 = v34;

      if (os_log_type_enabled(v38, v39))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v40;
        v21 = v49;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_226E8E000, v38, v39, "%@", v41, 0xCu);
        sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v42, -1, -1);
        MEMORY[0x22AA9A450](v41, -1, -1);
      }

      (*(v46 + 8))(v36, v47);
      swift_willThrow();
      sub_226EDC474(0);
      (*v53)(v16, v21);
    }

    else
    {
LABEL_14:
      sub_226EDC474(0);
    }
  }
}

void sub_22756E894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF420, qword_22768BC30, &qword_27D7BF428, sub_22759703C);
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
      v51 = "ManagedWorkoutPlanTemplate";
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

        type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
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

void sub_22756ED50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v50 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF408, &qword_22768BC28, &qword_27D7BF410, sub_227596FE8);
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
      v51 = "anModalityPreference";
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

        type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
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

void sub_22756F20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v67 = a7;
  LODWORD(v66) = a6;
  v69 = a5;
  v11 = sub_22766B390();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2276627D0();
  v64 = *(v68 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v68);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227662750();
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_227667440();
  v70 = *(v21 - 8);
  v22 = *(v70 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22753BEB8(a1, a2, a3, a4, v66, v67);
  if (v25)
  {
    if (v25 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v55 = v16;
    v56 = v21;
    v26 = v24;
    v63 = a4;
    v65 = v17;
    v67 = a2;
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
      v29 = v55;
      v30 = v56;
      v31 = v70;
      if (v63 >> 1 == a3)
      {
LABEL_14:
        sub_226EDC474(0);
      }

      else
      {
        v32 = v63 >> 1;
        v33 = v26;
        v34 = v20;
        v62 = "anScheduleFilterProperty";
        v63 = v70 + 16;
        v60 = (v64 + 8);
        v61 += 8;
        v64 = v70 + 8;
        if (a3 <= v32)
        {
          v35 = v32;
        }

        else
        {
          v35 = a3;
        }

        v66 = v35;
        while (1)
        {
          if (v66 == a3)
          {
            __break(1u);
            return;
          }

          (*(v31 + 16))(v33, v67 + *(v31 + 72) * a3, v30);
          v36 = objc_opt_self();
          v37 = sub_22766BFD0();
          v38 = [v36 insertNewObjectForEntityForName:v37 inManagedObjectContext:v69];

          type metadata accessor for ManagedWorkoutPlanSummaryViewed();
          v39 = swift_dynamicCastClass();
          if (!v39)
          {
            break;
          }

          v40 = v39;
          ++a3;
          sub_227667410();
          v41 = sub_2276626A0();
          (*v61)(v34, v65);
          [v40 setDateViewed_];

          sub_227667430();
          v42 = sub_227662790();
          (*v60)(v29, v68);
          [v40 setPlanIdentifier_];

          (*v64)(v33, v30);
          v31 = v70;
          if (v32 == a3)
          {
            goto LABEL_14;
          }
        }

        v43 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
        v44 = swift_allocError();
        (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D51000], v43);
        swift_willThrow();
        v46 = v57;
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

        (*(v58 + 8))(v46, v59);
        swift_willThrow();
        sub_226EDC474(0);
        (*v64)(v33, v56);
      }
    }
  }
}

void sub_22756F90C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v93 = a7;
  LODWORD(v92) = a6;
  v90 = a5;
  v11 = sub_22766B390();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BD8, qword_22767DD50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v87 = &v71 - v19;
  v88 = sub_227662190();
  v83 = *(v88 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x28223BE20](v88);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_227665440();
  v82 = *(v23 - 8);
  v24 = *(v82 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_227665F20();
  v91 = *(v27 - 8);
  v28 = *(v91 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = sub_22753BFF8(v31, a2, a3, a4, v92, v93);
  if (v33)
  {
    if (v33 != 1)
    {
      v34 = v33;
      swift_willThrow();
      v94 = v34;
    }
  }

  else
  {
    v93 = a3;
    v84 = v23;
    v85 = v22;
    v72 = v30;
    v86 = v27;
    if (sub_227669C10())
    {
      v35 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v36 = swift_allocError();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51010], v35);
      v94 = v36;
      swift_willThrow();
    }

    else
    {
      v38 = a4 >> 1;
      v39 = v93;
      if (a4 >> 1 == v93)
      {
LABEL_20:
        sub_226EDC474(0);
      }

      else
      {
        v40 = v91;
        v77 = "anMusicIdentifier";
        v78 = v91 + 16;
        v75 = (v83 + 8);
        v76 = (v82 + 8);
        if (v93 <= v38)
        {
          v41 = a4 >> 1;
        }

        else
        {
          v41 = v93;
        }

        v82 = v91 + 8;
        v83 = v41;
        v42 = v86;
        v43 = v72;
        v73 = v38;
        v74 = a2;
        while (1)
        {
          if (v83 == v39)
          {
            __break(1u);
            return;
          }

          (*(v40 + 16))(v43, v32 + *(v40 + 72) * v39, v42);
          v44 = objc_opt_self();
          v45 = sub_22766BFD0();
          v46 = [v44 insertNewObjectForEntityForName:v45 inManagedObjectContext:v90];

          type metadata accessor for ManagedWorkoutPlanReference();
          v47 = swift_dynamicCastClass();
          if (!v47)
          {

            v57 = sub_227664DD0();
            sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
            v58 = swift_allocError();
            (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D51000], v57);
            v94 = v58;
            swift_willThrow();
            goto LABEL_23;
          }

          v48 = v47;
          v92 = v46;
          v93 = v39;
          sub_227665F00();
          v49 = sub_227662940();
          (*(*(v49 - 8) + 56))(v87, 1, 1, v49);
          v50 = sub_2276629D0();
          (*(*(v50 - 8) + 56))(v89, 1, 1, v50);
          sub_227665400();
          sub_227665410();
          sub_227665420();
          sub_227665430();
          v51 = v85;
          sub_227662180();
          v52 = v94;
          sub_2276620D0();
          v94 = v52;
          if (v52)
          {
            break;
          }

          v39 = v93 + 1;
          (*v75)(v51, v88);
          (*v76)(v26, v84);
          v53 = sub_22766BFD0();

          [v48 setDateOffset_];

          v54 = sub_227665F10();
          v55 = 0x7FFFFFFFLL;
          if (v54 < 0x7FFFFFFF)
          {
            v55 = v54;
          }

          if (v55 <= 0xFFFFFFFF80000000)
          {
            v56 = 0xFFFFFFFF80000000;
          }

          else
          {
            v56 = v55;
          }

          [v48 setIndex_];

          v42 = v86;
          (*v82)(v43, v86);
          v32 = v74;
          v40 = v91;
          if (v73 == v39)
          {
            goto LABEL_20;
          }
        }

        (*v75)(v51, v88);
        (*v76)(v26, v84);
        v42 = v86;
LABEL_23:
        v60 = v79;
        sub_22766A770();
        v61 = v94;
        v62 = v94;
        v63 = sub_22766B380();
        v64 = sub_22766C8B0();

        v65 = os_log_type_enabled(v63, v64);
        v66 = v80;
        if (v65)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          v69 = v94;
          v70 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 4) = v70;
          *v68 = v70;
          _os_log_impl(&dword_226E8E000, v63, v64, "%@", v67, 0xCu);
          sub_226E97D1C(v68, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v68, -1, -1);
          MEMORY[0x22AA9A450](v67, -1, -1);
        }

        (*(v66 + 8))(v60, v81);
        swift_willThrow();
        sub_226EDC474(0);
        (*v82)(v72, v42);
      }
    }
  }
}

void sub_227570270(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v57 = a5;
  v59 = a7;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227665CA0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753C138(a1, a2, a3, a4, v58, v59);
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
      v52 = "ManagedWorkoutPlanSummaryViewed";
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

        type metadata accessor for ManagedWorkoutPlanTemplate();
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

        sub_226F1DD6C(v35, v33);
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

void sub_2275707E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v49 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753BD98(a1, a2, a3, a4, a6, a7, &qword_27D7BF3A8, &qword_22768BC08, &qword_27D7BF3B0, sub_227596F94);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v47 = v17;
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

    v45 = v14;
    v46 = v13;
    v21 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
LABEL_12:
      sub_226EDC474(0);
    }

    else
    {
      v48 = "ManagedWorkoutPlanScheduledItem";
      v22 = (a2 + 24 * a3 + 16);
      while (1)
      {
        if (a3 >= v21)
        {
          __break(1u);
          return;
        }

        v23 = *(v22 - 2);
        v24 = *(v22 - 1);
        v25 = *v22;
        v26 = *v22;
        v27 = objc_opt_self();
        sub_226F491FC(v23, v24, v25);
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v49];

        type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        ++a3;
        v32 = sub_22766BFD0();
        [v31 *off_2785D4108[v26]];

        sub_226F49200(v23, v24, v26);
        v22 += 24;
        if (v21 == a3)
        {
          goto LABEL_12;
        }
      }

      v33 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      v34 = swift_allocError();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
      swift_willThrow();
      v36 = v47;
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

      (*(v45 + 8))(v36, v46);
      swift_willThrow();
      sub_226EDC474(0);
      sub_226F49200(v23, v24, v26);
    }
  }
}