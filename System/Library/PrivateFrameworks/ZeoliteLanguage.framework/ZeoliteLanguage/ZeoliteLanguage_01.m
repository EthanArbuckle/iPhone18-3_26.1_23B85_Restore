uint64_t MessageExtractor.next()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(sub_27522F5CC() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27522A3B4, 0, 0);
}

uint64_t sub_27522A3B4()
{
  sub_27522FBFC();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_27522A498;
  v2 = *(v0 + 152);

  return MessageExtractor.isDataAccessible()();
}

uint64_t sub_27522A498(char a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 236) = a1;

  return MEMORY[0x2822009F8](sub_27522A598, 0, 0);
}

uint64_t sub_27522A598()
{
  if (*(v0 + 236) != 1)
  {
LABEL_16:
    v23 = *(v0 + 144);
    v24 = sub_27522F7CC();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    v25 = *(v0 + 160);

    v26 = *(v0 + 8);

    return v26();
  }

  v1 = *(v0 + 152);
  v9 = type metadata accessor for MessageExtractor();
  *(v0 + 176) = v9;
  v10 = *(v9 + 48);
  *(v0 + 232) = v10;
  v11 = *(v1 + v10);
  *(v0 + 184) = v11;
  if (v11)
  {
    v12 = *(v1 + *(v9 + 52));
    if (v12 >> 62)
    {
      v22 = sub_27522FE0C();
      v11 = *(v0 + 184);
      if (v11 < v22)
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (v11 < 0)
          {
            __break(1u);
          }

          else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v12 + 8 * v11 + 32);
            goto LABEL_9;
          }

          __break(1u);
          return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
        }

        v13 = MEMORY[0x277C6E790]();
LABEL_9:
        v14 = v13;
        *(v0 + 208) = v13;
        v15 = *(v0 + 152);
        v16 = swift_task_alloc();
        *(v0 + 216) = v16;
        *(v16 + 16) = v14;
        *(v16 + 24) = v15;
        v17 = *(MEMORY[0x277D859E0] + 4);
        v18 = swift_task_alloc();
        *(v0 + 224) = v18;
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D70, &unk_2752316A0);
        *v18 = v0;
        v18[1] = sub_27522AC98;
        v6 = sub_27522CD24;
        v4 = 0x29287478656ELL;
        v11 = v0 + 80;
        v2 = 0;
        v3 = 0;
        v5 = 0xE600000000000000;
        v7 = v16;

        return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
      }
    }

    else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v19[1] = sub_27522A840;
  v20 = *(v0 + 152);

  return sub_2752295A4();
}

uint64_t sub_27522A840(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_27522A940, 0, 0);
}

uint64_t sub_27522A940()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[19];
    v3 = *(v0[22] + 52);
    v4 = *(v2 + v3);
    v5 = v0[25];

    *(v2 + v3) = v1;
    if (qword_2809B3908 != -1)
    {
      swift_once();
    }

    v6 = sub_27522F87C();
    __swift_project_value_buffer(v6, qword_2809B5470);

    v7 = sub_27522F85C();
    v8 = sub_27522FC6C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[25];
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      if (v9 >> 62)
      {
        v0[25];
        v11 = sub_27522FE0C();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 4) = v11;

      _os_log_impl(&dword_275217000, v7, v8, "Queried %ld messages.", v10, 0xCu);
      MEMORY[0x277C6EE90](v10, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v19 = v0[19];
    v20 = *(v19 + *(v0[22] + 52));
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v34 = *(v19 + *(v0[22] + 52));
      }

      v21 = sub_27522FE0C();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v0[23];
    if (v22 < v21)
    {
      if ((v20 & 0xC000000000000001) == 0)
      {
        if (v22 < 0)
        {
          __break(1u);
        }

        else if (v22 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v20 + 8 * v22 + 32);
          goto LABEL_16;
        }

        __break(1u);
        return MEMORY[0x2822007B8](v22, v12, v13, v14, v15, v16, v17, v18);
      }

      v23 = MEMORY[0x277C6E790]();
LABEL_16:
      v24 = v23;
      v0[26] = v23;
      v25 = v0[19];
      v26 = swift_task_alloc();
      v0[27] = v26;
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;
      v27 = *(MEMORY[0x277D859E0] + 4);
      v28 = swift_task_alloc();
      v0[28] = v28;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D70, &unk_2752316A0);
      *v28 = v0;
      v28[1] = sub_27522AC98;
      v16 = sub_27522CD24;
      v14 = 0x29287478656ELL;
      v22 = (v0 + 10);
      v12 = 0;
      v13 = 0;
      v15 = 0xE600000000000000;
      v17 = v26;

      return MEMORY[0x2822007B8](v22, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v29 = v0[18];
  v30 = sub_27522F7CC();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  v31 = v0[20];

  v32 = v0[1];

  return v32();
}

uint64_t sub_27522AC98()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_27522ADB0, 0, 0);
}

uint64_t sub_27522ADB0()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (*(v0 + 24))
  {
    v3 = *(v0 + 16);
    v87 = *(v0 + 40);
    v88 = *(v0 + 32);
    v85 = *(v0 + 56);
    v86 = *(v0 + 48);
    v83 = *(v0 + 72);
    v84 = *(v0 + 64);
    v4 = [*(v0 + 208) senderAddress];
    v5 = &off_27A646000;
    v90 = v0;
    if (v4)
    {
      v6 = [v4 stringValue];
      swift_unknownObjectRelease();
      sub_27522F9BC();
    }

    v13 = [*(v0 + 208) subject];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 subjectString];

      sub_27522F9BC();
    }

    v16 = *(v0 + 208);
    v17 = *(v0 + 152);
    v18 = objc_opt_self();
    v19 = sub_27522F98C();
    v20 = [v18 snippetFromHTMLBody:v19 options:*(v17 + 16) maxLength:*(v17 + 40) preservingQuotedForwardedContent:0];

    v21 = sub_27522F9BC();
    v22 = [v16 toList];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D78, &qword_2752316B0);
    v23 = sub_27522FB7C();

    v89 = v21;
    if (v23 >> 62)
    {
      v24 = sub_27522FE0C();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = MEMORY[0x277D84F90];
    v25 = v90;
    if (v24)
    {
      v94 = MEMORY[0x277D84F90];
      sub_27521C4C8(0, v24 & ~(v24 >> 63), 0);
      if (v24 < 0)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v26 = 0;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C6E790](v26, v23);
        }

        else
        {
          v27 = *(v23 + 8 * v26 + 32);
          swift_unknownObjectRetain();
        }

        v28 = [swift_unknownObjectRetain() v5[82]];
        v29 = sub_27522F9BC();
        v31 = v30;

        swift_unknownObjectRelease_n();
        v33 = *(v94 + 16);
        v32 = *(v94 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_27521C4C8((v32 > 1), v33 + 1, 1);
        }

        ++v26;
        *(v94 + 16) = v33 + 1;
        v34 = v94 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
        v5 = &off_27A646000;
      }

      while (v24 != v26);

      v25 = v90;
      v0 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v35 = [*(v25 + 208) ccList];
    v36 = sub_27522FB7C();

    if (v36 >> 62)
    {
      v37 = sub_27522FE0C();
      if (v37)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
LABEL_25:
        sub_27521C4C8(0, v37 & ~(v37 >> 63), 0);
        if (v37 < 0)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v38 = 0;
        v39 = v36;
        v91 = v36 & 0xC000000000000001;
        v40 = v36;
        do
        {
          if (v91)
          {
            MEMORY[0x277C6E790](v38, v39);
          }

          else
          {
            v41 = *(v39 + 8 * v38 + 32);
            swift_unknownObjectRetain();
          }

          v42 = [swift_unknownObjectRetain() v5[82]];
          v43 = sub_27522F9BC();
          v45 = v44;

          swift_unknownObjectRelease_n();
          v47 = *(v0 + 16);
          v46 = *(v0 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_27521C4C8((v46 > 1), v47 + 1, 1);
          }

          ++v38;
          *(v0 + 16) = v47 + 1;
          v48 = v0 + 16 * v47;
          *(v48 + 32) = v43;
          *(v48 + 40) = v45;
          v5 = &off_27A646000;
          v39 = v40;
        }

        while (v37 != v38);

        v25 = v90;
LABEL_37:
        v49 = [*(v25 + 208) bccList];
        v50 = sub_27522FB7C();

        if (v50 >> 62)
        {
          v51 = sub_27522FE0C();
          if (v51)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v51)
          {
LABEL_39:
            v95 = MEMORY[0x277D84F90];
            sub_27521C4C8(0, v51 & ~(v51 >> 63), 0);
            if (v51 < 0)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v52 = 0;
            v53 = v50;
            v92 = v50 & 0xC000000000000001;
            v54 = v50;
            v55 = v51;
            do
            {
              if (v92)
              {
                MEMORY[0x277C6E790](v52, v53);
              }

              else
              {
                v56 = *(v53 + 8 * v52 + 32);
                swift_unknownObjectRetain();
              }

              v57 = [swift_unknownObjectRetain() v5[82]];
              v58 = sub_27522F9BC();
              v60 = v59;

              swift_unknownObjectRelease_n();
              v62 = *(v95 + 16);
              v61 = *(v95 + 24);
              if (v62 >= v61 >> 1)
              {
                sub_27521C4C8((v61 > 1), v62 + 1, 1);
              }

              ++v52;
              *(v95 + 16) = v62 + 1;
              v63 = v95 + 16 * v62;
              *(v63 + 32) = v58;
              *(v63 + 40) = v60;
              v5 = &off_27A646000;
              v53 = v54;
            }

            while (v55 != v52);

            v25 = v90;
            goto LABEL_50;
          }
        }

LABEL_50:
        v64 = *(v25 + 232);
        v65 = *(v25 + 152);
        v66 = *(v65 + v64);
        v67 = __OFADD__(v66, 1);
        v68 = v66 + 1;
        if (!v67)
        {
          v69 = *(v25 + 208);
          v70 = *(v25 + 160);
          *(v65 + v64) = v68;
          v71 = [v69 date];
          sub_27522F5AC();

          if (*(v65 + 48))
          {
            sub_275223008(v89);
          }

          v72 = *(v25 + 208);
          v93 = *(v25 + 160);
          v82 = *(v25 + 144);
          [v72 isToMe];
          v73 = [v72 flags];
          [v73 read];

          v74 = [v72 flags];
          [v74 deleted];

          v75 = [v72 flags];
          [v75 replied];

          v76 = [v72 flags];
          [v76 forwarded];

          v77 = [v72 flags];
          [v77 isJunk];

          [v72 conversationID];

          v0 = v90;
          sub_27522F7AC();

          sub_27521DA80(v90 + 16, &qword_2809B3D70, &unk_2752316A0);
          v78 = sub_27522F7CC();
          (*(*(v78 - 8) + 56))(v82, 0, 1, v78);
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    goto LABEL_37;
  }

  if (qword_2809B3908 != -1)
  {
LABEL_61:
    swift_once();
  }

  v7 = sub_27522F87C();
  __swift_project_value_buffer(v7, qword_2809B5470);
  v8 = sub_27522F85C();
  v9 = sub_27522FC8C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_275217000, v8, v9, "Failed to extract message content. Terminated extraction loop.", v10, 2u);
    MEMORY[0x277C6EE90](v10, -1, -1);
  }

  v11 = *(v0 + 144);

  v12 = sub_27522F7CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
LABEL_54:
  v79 = *(v0 + 160);

  v80 = *(v0 + 8);

  return v80();
}

void sub_27522B788(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a3 + 8);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_27522F2F8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27522BD20;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  v16 = [a2 requestRepresentationWithOptions:v15 completionHandler:v14];
  _Block_release(v14);
}

void sub_27522B964(void *a1)
{
  v2 = sub_27522F9FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_27522F51C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    v12 = a1;
    v13 = [v12 contentURL];
    if (v13)
    {
      v14 = v13;
      sub_27522F50C();

      (*(v5 + 32))(v11, v9, v4);
      sub_27522F9EC();
      v15 = sub_27522F97C();
      v38 = v16;
      v39 = v15;
      v17 = [v12 requestedHeaders];
      if (v17 && (v18 = v17, v19 = [v17 firstHeaderForKey_], v18, v19))
      {
        v20 = sub_27522F9BC();
        v36 = v21;
        v37 = v20;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v22 = [v12 requestedHeaders];
      if (v22 && (v23 = v22, v24 = [v22 firstHeaderForKey_], v23, v24))
      {
        v25 = sub_27522F9BC();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = [v12 requestedHeaders];
      if (v28)
      {
        v29 = v25;
        v30 = v28;
        v31 = [v28 &selRef:*MEMORY[0x277D06FB8] encodeAsIDsFrom:? + 5];

        if (v31)
        {
          v32 = sub_27522F9BC();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v25 = v29;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      *&v40 = v39;
      *(&v40 + 1) = v38;
      *&v41 = v37;
      *(&v41 + 1) = v36;
      *&v42 = v25;
      *(&v42 + 1) = v27;
      *&v43 = v32;
      *(&v43 + 1) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
      sub_27522FBEC();

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
      sub_27522FBEC();
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
    sub_27522FBEC();
  }
}

void sub_27522BD20(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_27522BDB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27522BE50;

  return MessageExtractor.next()(a1);
}

uint64_t sub_27522BE50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_27522BF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_27522BFE4;

  return MessageExtractor.next()(a1);
}

uint64_t sub_27522BFE4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = sub_27522FBBC();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_27522C154, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_27522C154()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CB8, &qword_275231340);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t groupAndSortMessages(_:)(uint64_t a1)
{
  v2 = sub_27522F7CC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v8 = 0;
    v11 = MEMORY[0x277D84F98];
LABEL_21:
    v35 = sub_275228AFC(v11);

    sub_27522EC64(v8);
    return v35;
  }

  v8 = 0;
  v39 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = a1 + v39;
  v10 = *(v4 + 72);
  v40 = (v4 + 16);
  v37 = (v4 + 32);
  v38 = v10;
  v11 = MEMORY[0x277D84F98];
  while (1)
  {
    v12 = sub_27522F77C();
    v13 = v6;
    v14 = v2;
    (*v40)(v6, v9, v2);
    sub_27522EC64(v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v11;
    v17 = sub_27521CC84(v12);
    v18 = v11[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v11[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_27521C32C();
        v11 = v41;
        if (v21)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_27521BBC4(v20, isUniquelyReferenced_nonNull_native);
      v11 = v41;
      v22 = sub_27521CC84(v12);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

      v17 = v22;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    v11[(v17 >> 6) + 8] |= 1 << v17;
    *(v11[6] + 8 * v17) = v12;
    *(v11[7] + 8 * v17) = MEMORY[0x277D84F90];
    v24 = v11[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_23;
    }

    v11[2] = v26;
LABEL_12:
    v27 = v11[7];
    v28 = *(v27 + 8 * v17);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 8 * v17) = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_275227CA8(0, v28[2] + 1, 1, v28);
      *(v27 + 8 * v17) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_275227CA8(v30 > 1, v31 + 1, 1, v28);
      *(v27 + 8 * v17) = v28;
    }

    v28[2] = v31 + 1;
    v32 = v28 + v39;
    v33 = v38;
    v34 = &v32[v31 * v38];
    v6 = v13;
    v2 = v14;
    (*v37)(v34, v13, v14);
    v9 += v33;
    v8 = sub_27522C520;
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_27522FEDC();
  __break(1u);
  return result;
}

uint64_t sub_27522C530(uint64_t a1)
{
  v2 = sub_27522F7CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_27521C61C(MEMORY[0x277D84F90]);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_27:
    v56 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B3DE0, &qword_275231288);
    sub_27522372C(&qword_2809B3C60, &unk_2809B3DE0, &qword_275231288);
    v46 = sub_27522F95C();

    return v46;
  }

  v11 = *(v3 + 16);
  v10 = v3 + 16;
  v52 = v2;
  v53 = v11;
  v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v48 = *(v10 + 56);
  v49 = (v10 - 8);
  v50 = v6;
  v51 = v10;
  while (1)
  {
    v53(v6, v12, v2);
    v13 = sub_27522F7BC();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_27522F7BC();
      v17 = sub_27522FA1C();
      v19 = v18;
    }

    else
    {
      v19 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E75;
    }

    v21 = v8 + 2;
    v20 = v8[2];
    v54 = v7;
    if (v20)
    {
      v22 = sub_27521B594(v17, v19);
      if (v23)
      {
        v21 = (v8[7] + 8 * v22);
      }
    }

    v24 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v8;
    v27 = sub_27521B594(v17, v19);
    v28 = v8[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v8[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_27521C1C4();
        if (v31)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_27521B924(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_27521B594(v17, v19);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_30;
      }

      v27 = v32;
      if (v31)
      {
LABEL_18:

        v8 = v56;
        *(*(v56 + 56) + 8 * v27) = v24;
        goto LABEL_22;
      }
    }

    v8 = v56;
    *(v56 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v34 = (v8[6] + 16 * v27);
    *v34 = v17;
    v34[1] = v19;
    *(v8[7] + 8 * v27) = v24;
    v35 = v8[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_29;
    }

    v8[2] = v37;
LABEL_22:
    v55 = v24;
    v56 = 0x207265646E6553;
    v57 = 0xE700000000000000;
    v38 = sub_27522FE9C();
    MEMORY[0x277C6E4A0](v38);

    MEMORY[0x277C6E4A0](8250, 0xE200000000000000);
    v6 = v50;
    v39 = sub_27522F78C();
    MEMORY[0x277C6E4A0](v39);

    v40 = v56;
    v41 = v57;
    v7 = v54;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v2 = v52;
    if ((v42 & 1) == 0)
    {
      v7 = sub_27522795C(0, *(v7 + 2) + 1, 1, v7);
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    if (v44 >= v43 >> 1)
    {
      v7 = sub_27522795C((v43 > 1), v44 + 1, 1, v7);
    }

    (*v49)(v6, v2);
    *(v7 + 2) = v44 + 1;
    v45 = &v7[16 * v44];
    *(v45 + 4) = v40;
    *(v45 + 5) = v41;
    v12 += v48;
    if (!--v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_27522FEDC();
  __break(1u);
  return result;
}

uint64_t filterBySender(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D80, &qword_2752316C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - v3;
  sub_27522F83C();
  sub_27522F7BC();
  v5 = sub_27522FA1C();
  v7 = v6;

  v10[1] = v5;
  v10[2] = v7;
  sub_27522EC74();
  sub_27522372C(&qword_2809B3D90, &qword_2809B3D80, &qword_2752316C0);
  v8 = sub_27522F94C();

  (*(v1 + 8))(v4, v0);
  return v8 & 1;
}

uint64_t sub_27522CBD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27522CC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27522CCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageExtractor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_27522CD2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E58, &unk_275231830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_27522CE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E50, &qword_275231828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_27522CF34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3CC0, &qword_275231390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_27522D068(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_27522D244(void **a1)
{
  v2 = *(sub_27522F7CC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_27522EC18(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_27522D2EC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_27522D2EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_27522FE8C();
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
        sub_27522F7CC();
        v6 = sub_27522FB9C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_27522F7CC() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_27522D7B8(v8, v9, a1, v4);
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
    return sub_27522D418(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27522D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_27522F5CC();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_27522F7CC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_27522F79C();
      v34 = v61;
      sub_27522F79C();
      v64 = sub_27522F59C();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27522D7B8(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_27522F5CC();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_27522F7CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_27522EB20(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_27522E3B8(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_27522EB20(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_27522EA94(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_27522F79C();
      v36 = v160;
      sub_27522F79C();
      LODWORD(v150) = sub_27522F59C();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_27522F79C();
        v48 = v160;
        sub_27522F79C();
        LOBYTE(v163) = sub_27522F59C() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_275227E80(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_275227E80((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_27522E3B8(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_27522EB20(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_27522EA94(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_27522F79C();
    v122 = v160;
    sub_27522F79C();
    LODWORD(v163) = sub_27522F59C();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_27522E3B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_27522F5CC();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_27522F7CC();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_27522F79C();
            v51 = v69;
            sub_27522F79C();
            v71 = sub_27522F59C();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_27522F79C();
        v31 = v69;
        sub_27522F79C();
        v71 = sub_27522F59C();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_27522EB34(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_27522EA94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_27522EB20(v3);
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

uint64_t sub_27522EB34(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_27522F7CC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_27522EC64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_27522EC74()
{
  result = qword_2809B3D88;
  if (!qword_2809B3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B3D88);
  }

  return result;
}

uint64_t sub_27522ED30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_27522EE00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_27522EEB0()
{
  sub_2752286C8(319, &qword_2809B3DB8, 0x277D06D78);
  if (v0 <= 0x3F)
  {
    sub_2752286C8(319, &qword_2809B3DC0, 0x277D06D60);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ECMessageBodyStringAccumulatorOptions(319);
      if (v2 <= 0x3F)
      {
        sub_27522EFB8();
        if (v3 <= 0x3F)
        {
          sub_27522F010();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27522EFB8()
{
  if (!qword_2809B3DC8)
  {
    sub_27522F5CC();
    v0 = sub_27522FCAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2809B3DC8);
    }
  }
}

void sub_27522F010()
{
  if (!qword_2809B3DD0)
  {
    sub_2752286C8(255, &qword_2809B3DD8, 0x277D06DB8);
    v0 = sub_27522FBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2809B3DD0);
    }
  }
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

uint64_t sub_27522F08C(uint64_t a1, int a2)
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

uint64_t sub_27522F0D4(uint64_t result, int a2, int a3)
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

uint64_t sub_27522F134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageExtractor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27522F198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_27522F1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3D60, &qword_275231680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27522F21C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27522F264()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_27522F2F8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B3E40, &qword_275231818) - 8) + 80);

  sub_27522B964(a1);
}

uint64_t sub_27522F394()
{
  v0 = sub_27522F87C();
  __swift_allocate_value_buffer(v0, qword_2809B5470);
  __swift_project_value_buffer(v0, qword_2809B5470);
  return sub_27522F86C();
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