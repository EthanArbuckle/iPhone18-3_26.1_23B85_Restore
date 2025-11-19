id TTRReminderEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

uint64_t sub_21D9BDF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64888);
  sub_21D0D0F1C(&qword_280D0C3F8, &qword_27CE64888);
  v2 = sub_21DBFA41C();

  if (v2 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }

LABEL_5:

    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v1 + 16) = sub_21D9D978C;
  *(v1 + 24) = v3;
  return v1;
}

Swift::Void __swiftcall TTRReminderEditor.edit(tagged:withHashtagNamed:)(Swift::Bool tagged, Swift::String withHashtagNamed)
{
  object = withHashtagNamed._object;
  countAndFlagsBits = withHashtagNamed._countAndFlagsBits;
  v88 = sub_21DBF78CC();
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v70 - v11;
  v13 = *(v2 + 16);
  v14 = [v13 hashtagContext];
  if (!v14)
  {
    return;
  }

  v86 = v6;
  v87 = v14;
  v15 = object;
  v78 = v8;
  v80 = v2;
  v16 = [v14 hashtags];
  v17 = sub_21D0D8CF0(0, &qword_280D0C348);
  v81 = sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
  v18 = sub_21DBFAAAC();

  v92[0] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148);
  v20 = sub_21D0D0F1C(&qword_280D0C370, &qword_27CE5A148);
  v77 = v19;
  sub_21DBF789C();
  if (tagged)
  {
    if (sub_21DBF788C())
    {
      v17 = v87;
      if (qword_280D0F2B8 != -1)
      {
LABEL_52:
        swift_once();
      }

      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_280D0F2C0);
      sub_21DBF8E0C();
      v22 = sub_21DBF84AC();
      v23 = sub_21DBFAEDC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v92[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_21D0CDFB4(countAndFlagsBits, v15, v92);
        _os_log_impl(&dword_21D0C9000, v22, v23, "Attempt to add tag withHashtagNamed:%s but it already exists", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x223D46520](v25, -1, -1);
        MEMORY[0x223D46520](v24, -1, -1);
      }
    }

    else
    {
      sub_21DBF8E0C();
      v61 = [v13 hashtagContext];
      v17 = v87;
      if (v61)
      {
        v62 = v61;
        sub_21D9CB53C(countAndFlagsBits, v15, 0, 0);
        if (!v63)
        {
          v65 = sub_21DBFA12C();
          v66 = [v62 addHashtagWithType:0 name:v65];

          v67 = swift_allocObject();
          *(v67 + 16) = v66;
          *(v67 + 24) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
          v68 = swift_allocObject();
          *(v68 + 16) = sub_21D9D9784;
          *(v68 + 24) = v67;
          swift_retain_n();
          v69 = v66;
          sub_21D182E74(sub_21D233058, v68);

          goto LABEL_46;
        }

        v64 = v63;

        v17 = v64;
      }

      else
      {
      }
    }

LABEL_46:
    (*(v86 + 8))(v12, v88);
    return;
  }

  v73 = v20;
  v26 = sub_21DBF781C();
  if (!v27)
  {
    v28 = v87;
    v59 = *(v86 + 8);
LABEL_43:
    v59(v12, v88);

    return;
  }

  v74 = (v86 + 8);
  v71 = (v86 + 32);
  v28 = v87;
  v82 = v12;
  v72 = v15;
  v79 = v17;
  while (2)
  {
    v84 = v26;
    v86 = v27;
    v29 = [v28 hashtags];
    v30 = sub_21DBFAAAC();

    v76 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_21DBFBD1C();
      sub_21DBFAB5C();
      v30 = v92[0];
      v15 = v92[1];
      v31 = v92[2];
      v32 = v92[3];
      v33 = v92[4];
    }

    else
    {
      v34 = -1 << *(v30 + 32);
      v15 = v30 + 56;
      v31 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v33 = v36 & *(v30 + 56);
      sub_21DBF8E0C();
      v32 = 0;
    }

    v75 = v31;
    v37 = (v31 + 64) >> 6;
    v85 = v32;
    if ((v30 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v41 = v32;
        v42 = v33;
        v43 = v82;
        if (!v33)
        {
          while (1)
          {
            v32 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v32 >= v37)
            {
              goto LABEL_41;
            }

            v42 = *(v15 + 8 * v32);
            ++v41;
            if (v42)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_52;
        }

LABEL_24:
        v40 = (v42 - 1) & v42;
        v39 = *(*(v30 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v42)))));
        if (!v39)
        {
          goto LABEL_49;
        }

LABEL_25:
        v44 = v37;
        v83 = v33;
        v17 = v30;
        v45 = countAndFlagsBits;
        v12 = v39;
        v46 = [v39 name];
        v47 = sub_21DBFA16C();
        v49 = v48;

        if (v47 == v84 && v86 == v49)
        {

          countAndFlagsBits = v45;
          goto LABEL_34;
        }

        v51 = sub_21DBFC64C();

        countAndFlagsBits = v45;
        if (v51)
        {
          break;
        }

        v33 = v40;
        v30 = v17;
        v37 = v44;
        v85 = v32;
        if (v17 < 0)
        {
          goto LABEL_17;
        }
      }

LABEL_34:
      sub_21D0CFAF8();

      v90[0] = v12;
      v90[1] = 0;
      v90[2] = 0;
      v91 = 1;
      v52 = v12;
      v53 = sub_21D9C7BBC(v90, 1);
      v12 = v82;
      if (v53)
      {
        v55 = v54;

        sub_21D182E74(sub_21D233058, v55);
      }

      v28 = v87;
      v56 = [v87 hashtags];
      v17 = v79;
      v57 = sub_21DBFAAAC();

      v90[0] = v57;
      v58 = v78;
      sub_21DBF789C();

      v59 = *v74;
      v60 = v88;
      (*v74)(v12, v88);
      (*v71)(v12, v58, v60);
      v26 = sub_21DBF781C();
      if (v27)
      {
        continue;
      }

      goto LABEL_43;
    }

    break;
  }

LABEL_17:
  v38 = sub_21DBFBDBC();
  if (v38)
  {
    v89 = v38;
    swift_dynamicCast();
    v39 = v90[0];
    v40 = v33;
    if (v90[0])
    {
      goto LABEL_25;
    }

LABEL_49:
    v43 = v82;
  }

  else
  {
    v43 = v82;
  }

LABEL_41:

  sub_21D0CFAF8();

  (*v74)(v43, v88);
}

uint64_t static TTRReminderEditor.thisWeekendDueDateComponents(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_21DBF509C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = sub_21DBF563C();
  v31 = *(v15 - 8);
  v32 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTRReminderEditor.thisWeekendDueDate(now:)(a1, v17);
  (*(v6 + 56))(v14, 1, 1, v5);
  v18 = sub_21DBF55BC();
  sub_21D0D3954(v14, v11, &unk_27CE60DB0);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) == 1)
  {
    v20 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v19(v11, 1, v5) != 1)
    {
      sub_21D0CF7E0(v11, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v21 = objc_opt_self();
  v22 = sub_21DBF5C0C();
  (*(v6 + 8))(v8, v5);
  v23 = [v21 rem:v18 dateComponentsWithDate:v22 timeZone:1 isAllDay:?];

  v24 = v36;
  sub_21DBF4EFC();

  v25 = sub_21DBF4EDC();
  v26 = [v25 rem_strippingTimeZone];

  v27 = v33;
  sub_21DBF4EFC();

  v29 = v34;
  v28 = v35;
  (*(v34 + 8))(v24, v35);
  sub_21D0CF7E0(v14, &unk_27CE60DB0);
  (*(v31 + 8))(v17, v32);
  return (*(v29 + 32))(v24, v27, v28);
}

id TTRReminderEditor.replaceHashtag(_:with:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *(a2 + 2);
  v5 = *(a2 + 24);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  result = sub_21D9C7D50(&v11, &v8, 0);
  if (result)
  {
    v7 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v7);
  }

  return result;
}

void *sub_21D9BEE50()
{
  v1 = v0;
  v33 = sub_21DBF56BC();
  v2 = *(v33 - 8);
  *&v3 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 accountCapabilities];
  v7 = [v6 supportsListSharees];

  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_];
    v36 = v8;
    v9 = off_282ED4450[0];
    v10 = sub_21D0D8CF0(0, &qword_280D176F0);
    v11 = (v9)(v10, &protocol witness table for REMListShareeContextChangeItem);

    v12 = [v1 currentUserShareParticipantID];
    if (v12)
    {
      v13 = v12;
      v31 = sub_21DBFA16C();
      v32 = v14;

      if (v11 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v16 = 0;
        v29 = v11 & 0xFFFFFFFFFFFFFF8;
        v30 = v11 & 0xC000000000000001;
        v17 = (v2 + 8);
        while (1)
        {
          if (v30)
          {
            v18 = MEMORY[0x223D44740](v16, v11);
          }

          else
          {
            if (v16 >= *(v29 + 16))
            {
              goto LABEL_16;
            }

            v18 = *(v11 + 8 * v16 + 32);
          }

          v19 = v18;
          v20 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          v2 = i;
          v21 = [v18 objectID];
          v22 = [v21 uuid];

          sub_21DBF568C();
          v23 = sub_21DBF565C();
          v25 = v24;
          (*v17)(v5, v33);
          v36 = v23;
          v37 = v25;
          v34 = v31;
          v35 = v32;
          sub_21D176F0C();
          v26 = sub_21DBFBB7C();

          if (!v26)
          {

            return v19;
          }

          ++v16;
          i = v2;
          if (v20 == v2)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

void *sub_21D9BF158()
{
  v30 = sub_21DBF56BC();
  v1 = *(v30 - 8);
  *&v2 = MEMORY[0x28223BE20](v30).n128_u64[0];
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 shareeContext];
  if (v5)
  {
    v33 = v5;
    v6 = off_282ED4428[0];
    v7 = sub_21D0D8CF0(0, &qword_280D177C8);
    v8 = (v6)(v7, &protocol witness table for REMListShareeContext);

    v9 = [v0 currentUserShareParticipantID];
    if (v9)
    {
      v10 = v9;
      v28 = sub_21DBFA16C();
      v29 = v11;

      if (v8 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v13 = 0;
        v26 = v8 & 0xFFFFFFFFFFFFFF8;
        v27 = v8 & 0xC000000000000001;
        v14 = (v1 + 8);
        while (1)
        {
          if (v27)
          {
            v15 = MEMORY[0x223D44740](v13, v8);
          }

          else
          {
            if (v13 >= *(v26 + 16))
            {
              goto LABEL_16;
            }

            v15 = *(v8 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v1 = i;
          v18 = [v15 objectID];
          v19 = [v18 uuid];

          sub_21DBF568C();
          v20 = sub_21DBF565C();
          v22 = v21;
          (*v14)(v4, v30);
          v33 = v20;
          v34 = v22;
          v31 = v28;
          v32 = v29;
          sub_21D176F0C();
          v23 = sub_21DBFBB7C();

          if (!v23)
          {

            return v16;
          }

          ++v13;
          i = v1;
          if (v17 == v1)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

uint64_t static TTRReminderEditor.startOfWeekdayDueDateComponents(now:)@<X0>(char *a1@<X8>)
{
  v71 = a1;
  v1 = sub_21DBF5C4C();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF509C();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v55 - v10;
  v11 = sub_21DBF563C();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF4D0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF58EC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  v29 = sub_21DBF5A2C();
  v64 = *(v29 - 8);
  v65 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v72 = v14;
  (*(v14 + 56))(v28, 1, 1, v13);
  if (sub_21DBF58FC())
  {
    sub_21DBF595C();
  }

  else
  {
    (*(v17 + 104))(v19, *MEMORY[0x277CC98E8], v16);
    sub_21DBF587C();
    (*(v17 + 8))(v19, v16);
  }

  sub_21D0CF7E0(v28, &qword_27CE5C610);
  sub_21D0D523C(v25, v28, &qword_27CE5C610);
  sub_21D0D3954(v28, v22, &qword_27CE5C610);
  v32 = v72;
  if ((*(v72 + 48))(v22, 1, v13) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE5C610);
    (*(v64 + 8))(v31, v65);
    sub_21D0CF7E0(v22, &qword_27CE5C610);
    v33 = 1;
    v35 = v70;
    v34 = v71;
    v36 = v69;
  }

  else
  {
    (*(v32 + 32))(v66, v22, v13);
    sub_21DBF4CCC();
    v38 = v57;
    v37 = v58;
    v39 = v68;
    (*(v57 + 56))(v68, 1, 1, v58);
    v40 = sub_21DBF55BC();
    v41 = v63;
    sub_21D0D3954(v39, v63, &unk_27CE60DB0);
    v42 = *(v38 + 48);
    if (v42(v41, 1, v37) == 1)
    {
      v43 = [objc_opt_self() defaultTimeZone];
      v44 = v56;
      sub_21DBF5C2C();

      v45 = v63;
      if (v42(v63, 1, v37) != 1)
      {
        sub_21D0CF7E0(v45, &unk_27CE60DB0);
      }
    }

    else
    {
      v44 = v56;
      (*(v38 + 32))(v56, v41, v37);
    }

    v46 = objc_opt_self();
    v47 = sub_21DBF5C0C();
    (*(v38 + 8))(v44, v37);
    v48 = [v46 rem:v40 dateComponentsWithDate:v47 timeZone:1 isAllDay:?];

    v49 = v61;
    sub_21DBF4EFC();

    v50 = sub_21DBF4EDC();
    v51 = [v50 rem_strippingTimeZone];

    v52 = v62;
    sub_21DBF4EFC();

    v36 = v69;
    v35 = v70;
    (*(v69 + 8))(v49, v70);
    sub_21D0CF7E0(v68, &unk_27CE60DB0);
    (*(v59 + 8))(v67, v60);
    (*(v72 + 8))(v66, v13);
    sub_21D0CF7E0(v28, &qword_27CE5C610);
    (*(v64 + 8))(v31, v65);
    v53 = *(v36 + 32);
    v53(v49, v52, v35);
    v34 = v71;
    v53(v71, v49, v35);
    v33 = 0;
  }

  return (*(v36 + 56))(v34, v33, 1, v35);
}

Swift::Void __swiftcall TTRReminderEditor.edit(attachments:)(Swift::OpaquePointer_optional attachments)
{
  rawValue = attachments.value._rawValue;
  v3 = [*(v1 + 16) attachmentContext];
  if (!v3)
  {
    return;
  }

  v8 = v3;
  [v3 removeAllAttachments];
  if (rawValue)
  {
    if (rawValue >> 62)
    {
      v4 = sub_21DBFBD7C();
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_5:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((rawValue & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x223D44740](i, rawValue);
          }

          else
          {
            v6 = *(rawValue + 8 * i + 32);
          }

          v7 = v6;
          [v8 addAttachment_];
        }
      }
    }
  }
}

uint64_t TTRReminderEditor.EditedObjectIDs.__allocating_init(objectIDs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

id TTRReminderEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

void TTRReminderEditor.edit(completed:subtasks:trackEditedUsing:)(char a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1 & 1;
  v110 = *v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10);
  MEMORY[0x28223BE20](v114);
  v10 = &v102 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v102 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v102 - v16;
  MEMORY[0x28223BE20](v18);
  v117 = (&v102 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  MEMORY[0x28223BE20](v23);
  v111 = &v102 - v24;
  v122 = sub_21DBF563C();
  isa = v122[-1].isa;
  MEMORY[0x28223BE20](v122);
  v106 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v120 = &v102 - v28;
  v112 = v4[2];
  v113 = v4;
  if ([v112 isCompleted] != v8)
  {
    v118 = a2;
    if (a2 >> 62)
    {
      v119 = sub_21DBFBD7C();
      if (!v119)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v119 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v119)
      {
LABEL_5:

        TTRReminderEditor.edit(completed:trackEditedUsing:)(a1 & 1, a3);
        return;
      }
    }

    if ([v112 isRecurrent])
    {
      goto LABEL_5;
    }

    v107 = a3;
    if (a1)
    {
      v33 = v120;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v34 = isa;
      v35 = *(isa + 2);
      v36 = v111;
      v37 = v33;
      v38 = v122;
      v121 = isa + 16;
      v117 = v35;
      v35(v111, v37, v122);
      v41 = *(v34 + 7);
      v40 = v34 + 56;
      v39 = v41;
      v41(v36, 0, 1, v38);
      TTRReminderEditor.edit(completionDate:)(v36);
      sub_21D0CF7E0(v36, &qword_27CE58D68);
      if (a3)
      {
        v42 = [v112 objectID];
        swift_beginAccess();
        sub_21D29B0D0(v123, v42);
        swift_endAccess();
      }

      v43 = v119;
      if (v119 >= 1)
      {
        v44 = 0;
        v45 = v118;
        v46 = v118 & 0xC000000000000001;
        v47 = &selRef__setContentViewMarginType_;
        v115 = v22;
        v116 = (v118 & 0xC000000000000001);
        v114 = v40;
        do
        {
          if (v46)
          {
            v49 = MEMORY[0x223D44740](v44, v45);
          }

          else
          {
            v49 = *(v45 + 8 * v44 + 32);
          }

          v50 = v49;
          v51 = [v49 v47[499]];
          if (v51)
          {
            v48 = v51;
            sub_21DBF55FC();

            v39(v22, 0, 1, v122);
            sub_21D0CF7E0(v22, &qword_27CE58D68);
          }

          else
          {
            v52 = v122;
            v39(v22, 1, 1, v122);
            sub_21D0CF7E0(v22, &qword_27CE58D68);
            v53 = v50;
            v54 = [v112 saveRequest];
            v55 = v113;
            sub_21D0D3954((v113 + 3), v124, &unk_27CE60D80);
            v56 = *(v55 + 64);
            v57 = [v54 updateReminder_];
            sub_21D0D3954(v124, v123, &unk_27CE60D80);
            v58 = swift_allocObject();
            *(v58 + 72) = 0;
            *(v58 + 16) = v57;
            sub_21D0D3954(v123, v58 + 24, &unk_27CE60D80);
            *(v58 + 64) = v56;
            v59 = v57;
            v60 = [v59 fetchedCurrentDueDateDeltaAlert];

            sub_21D0CF7E0(v123, &unk_27CE60D80);
            sub_21D0CF7E0(v124, &unk_27CE60D80);
            v61 = *(v58 + 72);
            *(v58 + 72) = v60;
            v62 = v107;

            v63 = v111;
            v117(v111, v120, v52);
            v39(v63, 0, 1, v52);
            TTRReminderEditor.edit(completionDate:)(v63);
            sub_21D0CF7E0(v63, &qword_27CE58D68);
            if (v62)
            {
              v64 = [v53 objectID];
              swift_beginAccess();
              sub_21D29B0D0(v123, v64);
              swift_endAccess();
            }

            else
            {
            }

            v45 = v118;
            v43 = v119;
            v22 = v115;
            v46 = v116;
            v47 = &selRef__setContentViewMarginType_;
          }

          ++v44;
        }

        while (v43 != v44);
        (*(isa + 1))(v120, v122);
        return;
      }

      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v65 = &selRef__setContentViewMarginType_;
    v66 = [v112 completionDate];
    if (v66)
    {
      v67 = v66;
      sub_21DBF55FC();

      v68 = *(isa + 7);
      v69 = v17;
      v70 = 0;
    }

    else
    {
      v68 = *(isa + 7);
      v69 = v17;
      v70 = 1;
    }

    v116 = v68;
    v68(v69, v70, 1, v122);
    sub_21D0D523C(v17, v117, &qword_27CE58D68);
    TTRReminderEditor.edit(completed:trackEditedUsing:)(0, a3);
    if (v119 < 1)
    {
      goto LABEL_61;
    }

    v71 = 0;
    v109 = v118 & 0xC000000000000001;
    v115 = isa + 56;
    v120 = isa + 48;
    v103 = (isa + 32);
    isa = (isa + 8);
    v72 = &qword_27CE58D68;
    v73 = &unk_21DC0C060;
    while (1)
    {
      v75 = v109 ? MEMORY[0x223D44740](v71, v118) : *(v118 + 8 * v71 + 32);
      v76 = v75;
      v77 = [v75 v65[499]];
      if (v77)
      {
        v78 = v77;
        sub_21DBF55FC();

        v79 = 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = v121;
      v81 = v122;
      v116(v121, v79, 1, v122);
      v82 = *(v114 + 48);
      sub_21D0D3954(v80, v10, v72);
      sub_21D0D3954(v117, &v10[v82], v72);
      v83 = v73;
      v84 = *v120;
      if ((*v120)(v10, 1, v81) == 1)
      {
        break;
      }

      v85 = v108;
      sub_21D0D3954(v10, v108, v72);
      if (v84(&v10[v82], 1, v122) == 1)
      {

        sub_21D0CF7E0(v121, v72);
        (*isa)(v85, v122);
LABEL_51:
        v73 = v83;
        sub_21D0CF7E0(v10, &qword_27CE5BE10);
        goto LABEL_52;
      }

      v86 = v106;
      v87 = v122;
      (*v103)(v106, &v10[v82], v122);
      sub_21D9D77FC(&qword_280D171A0, 255, MEMORY[0x277CC9578]);
      v104 = sub_21DBFA10C();
      v88 = *isa;
      (*isa)(v86, v87);
      sub_21D0CF7E0(v121, v72);
      v88(v85, v87);
      sub_21D0CF7E0(v10, v72);
      if (v104)
      {
        goto LABEL_54;
      }

      v73 = v83;

      v65 = &selRef__setContentViewMarginType_;
LABEL_52:
      v74 = v119;
LABEL_38:
      if (v74 == ++v71)
      {
        sub_21D0CF7E0(v117, &qword_27CE58D68);
        return;
      }
    }

    sub_21D0CF7E0(v121, v72);
    if (v84(&v10[v82], 1, v122) == 1)
    {
      sub_21D0CF7E0(v10, v72);
LABEL_54:
      v89 = v76;
      v90 = [v112 saveRequest];
      v91 = v113;
      sub_21D0D3954((v113 + 3), v124, &unk_27CE60D80);
      LOBYTE(v91) = *(v91 + 64);
      v92 = [v90 updateReminder_];
      sub_21D0D3954(v124, v123, &unk_27CE60D80);
      v93 = v72;
      v94 = swift_allocObject();
      *(v94 + 72) = 0;
      *(v94 + 16) = v92;
      sub_21D0D3954(v123, v94 + 24, &unk_27CE60D80);
      *(v94 + 64) = v91;
      v95 = v92;
      v96 = [v95 fetchedCurrentDueDateDeltaAlert];

      sub_21D0CF7E0(v123, &unk_27CE60D80);
      sub_21D0CF7E0(v124, &unk_27CE60D80);
      v97 = *(v94 + 72);
      *(v94 + 72) = v96;

      v98 = v111;
      v116(v111, 1, 1, v122);
      TTRReminderEditor.edit(completionDate:)(v98);
      v99 = v98;
      v73 = &unk_21DC0C060;
      sub_21D0CF7E0(v99, v93);
      if (v107)
      {
        v100 = [v89 objectID];
        swift_beginAccess();
        v101 = v100;
        v73 = &unk_21DC0C060;
        sub_21D29B0D0(v123, v101);
        swift_endAccess();
      }

      else
      {
      }

      v74 = v119;
      v65 = &selRef__setContentViewMarginType_;
      v72 = v93;
      goto LABEL_38;
    }

    goto LABEL_51;
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_280D0F2C0);
  v122 = sub_21DBF84AC();
  v30 = sub_21DBFAE9C();
  if (os_log_type_enabled(v122, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_21D0C9000, v122, v30, "Ignoring edit(completed:) because value is the same", v31, 2u);
    MEMORY[0x223D46520](v31, -1, -1);
  }

  v32 = v122;
}

Swift::Void __swiftcall TTRReminderEditor.edit(isFlagged:)(Swift::Bool isFlagged)
{
  v3 = [*(v1 + 16) flaggedContext];
  if (v3)
  {
    v14 = v3;
    v4 = [v3 flagged];
    if (v4 > 0 == isFlagged)
    {
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF84BC();
      __swift_project_value_buffer(v10, qword_280D0F2C0);
      v11 = sub_21DBF84AC();
      v12 = sub_21DBFAE9C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21D0C9000, v11, v12, "Ignoring edit(isFlagged:) because value is the same", v13, 2u);
        MEMORY[0x223D46520](v13, -1, -1);
      }
    }

    else
    {
      v5 = v4 > 0;
      [v14 setFlagged:isFlagged];
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      sub_21D182E74(sub_21D9D79D4, v6);
    }
  }

  else
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F2C0);
    v14 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v8, "Ignoring edit(isFlagged:) because flagged is not supported on this reminder", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }
}

void TTRReminderEditor.edit(priorityLevel:)()
{
  v0 = REMReminderDefaultPriorityForPriorityLevel();

  TTRReminderEditor.edit(priority:)(v0);
}

void TTRReminderEditor.edit(contactHandles:)(void *a1)
{
  v3 = *(v1 + 16);
  v13 = [v3 contactHandles];
  if (v13)
  {
    if (a1)
    {
      sub_21D0D8CF0(0, &unk_27CE626A0);
      v4 = v13;
      v5 = a1;
      v6 = sub_21DBFB63C();

      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_10:
    [v3 setContactHandles_];
    v11 = swift_allocObject();
    *(v11 + 16) = v13;
    v12 = v13;
    sub_21D182E74(sub_21D9D7A00, v11);

    goto LABEL_11;
  }

  if (a1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F2C0);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Ignoring edit(contactHandles:) because the value is the same", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

LABEL_11:
}

id TTRReminderEditor.addHashtag(_:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v7 = *a1;
  v8 = v1;
  v9 = v2;
  result = sub_21D9D7AEC(&v7, 1);
  if (result)
  {
    v5 = v4;
    v6 = result;

    if (v5)
    {

      sub_21D182E74(sub_21D233058, v5);
    }

    else
    {
    }

    return v6;
  }

  return result;
}

void *TTRReminderEditor.removeHashtag(_:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v7 = *a1;
  v8 = v1;
  v9 = v2;
  result = sub_21D9C7BBC(&v7, 1);
  if (result)
  {
    v5 = result;
    v6 = v4;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v6);

    return v5;
  }

  return result;
}

Swift::Void __swiftcall TTRReminderEditor.editHashtagsWithoutUpdatingTextProperties(adding:removing:)(Swift::OpaquePointer adding, Swift::OpaquePointer removing)
{
  v3 = v2;
  v44 = MEMORY[0x277D84F90];
  v4 = *(adding._rawValue + 2);
  if (v4)
  {
    rawValue = removing._rawValue;
    v5 = adding._rawValue + 56;
    v42 = *(v2 + 16);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_21D9D7C80(v6, v7, v8, *v5);
      v10 = [v42 hashtagContext];
      if (v10)
      {
        v11 = v10;
        sub_21D9CB53C(v6, v7, v8, v9);
        if (v12)
        {
          v13 = v12;
        }

        else if (v9)
        {
          v14 = v6;
          [v11 addHashtag_];
          v15 = [v14 objectID];
          [v11 undeleteHashtagWithID_];

          v16 = swift_allocObject();
          *(v16 + 16) = v14;
          *(v16 + 24) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
          v17 = swift_allocObject();
          *(v17 + 16) = sub_21D9D9784;
          *(v17 + 24) = v16;
          sub_21D9D7C80(v6, v7, v8, 1);

          v13 = v6;
        }

        else
        {
          v18 = sub_21DBFA12C();
          v13 = [v11 addHashtagWithType:v8 name:v18];

          v19 = swift_allocObject();
          *(v19 + 16) = v13;
          *(v19 + 24) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
          v20 = swift_allocObject();
          *(v20 + 16) = sub_21D9D9784;
          *(v20 + 24) = v19;
          v21 = v13;
        }
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x223D42D80](v10);
      if (*(v44 + 16) >= *(v44 + 24) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      sub_21D24B434(v6, v7, v8, v9);
      sub_21D1578FC(v13);
      v5 += 32;
      --v4;
    }

    while (v4);
    removing._rawValue = rawValue;
    v3 = v41;
  }

  v22 = *(removing._rawValue + 2);
  if (v22)
  {
    v23 = removing._rawValue + 56;
    v43 = *(v3 + 16);
    do
    {
      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v26 = *(v23 - 1);
      v27 = *v23;
      sub_21D9D7C80(v24, v25, v26, *v23);
      v28 = [v43 hashtagContext];
      if (v28)
      {
        v29 = v28;
        sub_21D9CB53C(v24, v25, v26, v27);
        v31 = v30;
        if (v30)
        {
          [v29 removeHashtag_];
          v32 = [v31 objectID];
          [v29 cancelUndeleteHashtagWithID_];

          v33 = swift_allocObject();
          *(v33 + 16) = 0;
          v34 = swift_allocObject();
          *(v34 + 16) = v33;
          *(v34 + 24) = v31;
          *(v34 + 32) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
          v35 = swift_allocObject();
          *(v35 + 16) = sub_21D9D9758;
          *(v35 + 24) = v34;
          v36 = v31;
        }

        else
        {
        }
      }

      else
      {
        v31 = 0;
      }

      MEMORY[0x223D42D80](v28);
      if (*(v44 + 16) >= *(v44 + 24) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      sub_21D24B434(v24, v25, v26, v27);
      sub_21D1578FC(v31);
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
  v37 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64888);
  sub_21D0D0F1C(&qword_280D0C3F8, &qword_27CE64888);
  v38 = sub_21DBFA41C();

  if (v38 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_26;
    }
  }

  else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v37 + 16) = sub_21D9D7C90;
    *(v37 + 24) = v39;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v37);

    return;
  }

  swift_deallocPartialClassInstance();
}

Swift::Void __swiftcall TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(Swift::OpaquePointer_optional recurrenceRules, Swift::Bool shouldCopyRecurrenceEnd)
{
  v3 = *&recurrenceRules.is_nil;
  rawValue = recurrenceRules.value._rawValue;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v68 - v6;
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v68 - v13;
  MEMORY[0x28223BE20](v14);
  v79 = &v68 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = &v68 - v17;
  v73 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - v20;
  if (rawValue)
  {
    v22 = rawValue;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  sub_21DBF8E0C();
  v23 = sub_21D19F308(v22);

  if (*(v23 + 16))
  {
    LODWORD(v76) = v3;
    v75 = v7;
    v68 = v11;
    v24 = *(v2 + 16);
    v25 = [v24 displayDate];
    v74 = v2;
    *&v70 = v21;
    if (v25)
    {
      v82[0] = v23;
      MEMORY[0x28223BE20](v25);
      *(&v68 - 2) = v26;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64890);
      sub_21D0D0F1C(&qword_27CE64898, &qword_27CE64890);
      sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel);
      v28 = v8;
      v29 = sub_21DBFA49C();

      v23 = v29;
    }

    else
    {
      if (qword_280D0F2B8 != -1)
      {
LABEL_66:
        swift_once();
      }

      v28 = v8;
      v30 = sub_21DBF84BC();
      __swift_project_value_buffer(v30, qword_280D0F2C0);
      v31 = sub_21DBF84AC();
      v32 = sub_21DBFAECC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21D0C9000, v31, v32, "Trying to set recurrenceRules but changeItem.displayDate is nil. The recurrenceRules may not be fixed up correctly. A due date should be set before adding recurrence rules", v33, 2u);
        MEMORY[0x223D46520](v33, -1, -1);
      }
    }

    v34 = [v24 recurrenceRules];
    v78 = v9;
    if (v34)
    {
      v35 = v34;
      sub_21D0D8CF0(0, &qword_280D177E8);
      v36 = sub_21DBFA5EC();
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v82[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108);
    sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108);
    sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel);
    v8 = sub_21DBFA49C();

    if (*(v23 + 16) <= v8[2] >> 3)
    {
      v82[0] = v8;
      sub_21DBF8E0C();
      sub_21D9F8814(v23);
      v9 = v82[0];
    }

    else
    {
      sub_21DBF8E0C();
      v9 = sub_21D9F92B0(v23, v8);
    }

    if (v8[2] <= *(v23 + 16) >> 3)
    {
      v82[0] = v23;
      sub_21D9F8814(v8);

      v69 = v82[0];
    }

    else
    {
      v69 = sub_21D9F92B0(v8, v23);
    }

    v71 = v9;
    if ((v76 & 1) != 0 && *(v9 + 16) == 1)
    {
      v37 = v75;
      sub_21D19560C(v9, v75);
      if ((*(v78 + 48))(v37, 1, v28) == 1)
      {
        sub_21D0CF7E0(v37, &qword_27CE5A018);
      }

      else
      {
        v38 = v70;
        v39 = sub_21D9D9028(v37, v70, type metadata accessor for TTRRecurrenceRuleModel);
        v76 = &v68;
        v82[0] = v69;
        MEMORY[0x28223BE20](v39);
        v8 = &v68 - 4;
        *(&v68 - 2) = v38;
        v23 = &unk_21DC34C08;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64890);
        sub_21D0D0F1C(&qword_27CE64898, &qword_27CE64890);
        v9 = v71;
        v40 = sub_21DBFA49C();

        sub_21D9D9170(v38, type metadata accessor for TTRRecurrenceRuleModel);
        v69 = v40;
      }
    }

    v41 = 0;
    v42 = v9 + 56;
    v43 = 1 << *(v9 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v9 + 56);
    v46 = (v43 + 63) >> 6;
    v70 = xmmword_21DC08D00;
    v75 = v46;
    v76 = v9 + 56;
    while (v45)
    {
      v51 = v41;
LABEL_38:
      v52 = v77;
      sub_21D1074E8(*(v9 + 48) + *(v78 + 72) * (__clz(__rbit64(v45)) | (v51 << 6)), v77, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D9D9028(v52, v79, type metadata accessor for TTRRecurrenceRuleModel);
      v53 = [v24 recurrenceRules];
      if (v53)
      {
        v8 = v53;
        sub_21D0D8CF0(0, &qword_280D177E8);
        v54 = sub_21DBFA5EC();
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v53);
      *(&v68 - 2) = v79;
      v55 = sub_21D9B26A0(sub_21D9D7C98, (&v68 - 4), v54);
      v56 = v55;
      if (v55 >> 62)
      {
        v23 = sub_21DBFBD7C();
      }

      else
      {
        v23 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 &= v45 - 1;
      if (v23)
      {
        if (v23 < 1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        for (i = 0; i != v23; ++i)
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x223D44740](i, v56);
          }

          else
          {
            v58 = *(v56 + 8 * i + 32);
          }

          v59 = v58;
          [v24 removeRecurrenceRule_];
        }

        v47 = v79;
        v48 = v72;
        sub_21D1074E8(v79, v72, type metadata accessor for TTRRecurrenceRuleModel);
        v49 = (*(v78 + 80) + 16) & ~*(v78 + 80);
        v23 = swift_allocObject();
        sub_21D9D9028(v48, v23 + v49, type metadata accessor for TTRRecurrenceRuleModel);
        v82[3] = sub_21D0D8CF0(0, &qword_280D17880);
        v82[0] = [v24 objectID];
        v50 = sub_21D0D8CF0(0, &qword_280D17860);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
        *&v80 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
        v8 = swift_allocObject();
        *(v8 + 1) = v70;
        sub_21D0CEB98(v82, (v8 + 4));
        sub_21D0CF2E8(&v80, v8 + 4);
        __swift_destroy_boxed_opaque_existential_0(v82);
        sub_21D1C442C(v8, sub_21D9D7CB8, v23);

        sub_21D9D9170(v47, type metadata accessor for TTRRecurrenceRuleModel);
        v41 = v51;
        v9 = v71;
      }

      else
      {
        sub_21D9D9170(v79, type metadata accessor for TTRRecurrenceRuleModel);

        v41 = v51;
      }

      v46 = v75;
      v42 = v76;
    }

    while (1)
    {
      v51 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v51 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v51);
      ++v41;
      if (v45)
      {
        goto LABEL_38;
      }
    }

    v8 = 0;
    v60 = v69;
    v61 = v69 + 56;
    v62 = 1 << *(v69 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & *(v69 + 56);
    v65 = (v62 + 63) >> 6;
    v23 = v68;
    if (v64)
    {
      while (1)
      {
        v66 = v8;
LABEL_60:
        v67 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        sub_21D1074E8(*(v60 + 48) + *(v78 + 72) * (v67 | (v66 << 6)), v23, type metadata accessor for TTRRecurrenceRuleModel);
        sub_21D9C6FDC(v23);
        sub_21D9D9170(v23, type metadata accessor for TTRRecurrenceRuleModel);
        if (!v64)
        {
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
LABEL_56:
      v66 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_64;
      }

      if (v66 >= v65)
      {
        break;
      }

      v64 = *(v61 + 8 * v66);
      v8 = (v8 + 1);
      if (v64)
      {
        v8 = v66;
        goto LABEL_60;
      }
    }
  }

  else
  {

    sub_21D9C6924();
  }
}

void TTRReminderEditor.remove(attachment:)()
{
  v1 = *(v0 + 16);
  v2 = [v1 attachmentContext];
  if (!v2)
  {
    return;
  }

  v16 = v2;
  v3 = [v2 attachments];
  sub_21D0D8CF0(0, &qword_280D0C310);
  v4 = sub_21DBFA5EC();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_23:

    return;
  }

LABEL_22:
  v5 = sub_21DBFBD7C();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D44740](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_21D0D8CF0(0, &qword_280D17680);
    v10 = [v8 objectID];
    v11 = sub_21DBFB63C();

    if (v11)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_23;
    }
  }

  v12 = [v1 attachmentContext];
  if (v12)
  {
    v13 = v12;
    [v12 removeAttachment_];
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    v15 = v8;
    sub_21D182E74(sub_21D9D9788, v14);
  }

  else
  {
  }
}

uint64_t TTRReminderEditor.edit(dueDateComponentsUsing:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [*(v0 + 16) dueDateComponents];
  if (v11)
  {
    v12 = v11;
    sub_21DBF4EFC();

    v13 = sub_21DBF509C();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_21D67A548(v6, v10);
  sub_21D0CF7E0(v6, &qword_27CE58D60);
  v15 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_21D9C50E0(v10, v3);
  sub_21D0CF7E0(v3, &unk_27CE60DA0);
  return sub_21D0CF7E0(v10, &qword_27CE58D60);
}

void TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(void *a1)
{
  v3 = [*(v1 + 16) dueDateDeltaAlertContext];
  if (!v3)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F2C0);
    oslog = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v19, "Ignoring dueDateDeltaAlertInterval update, no context.", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_21;
  }

  oslog = v3;
  v4 = *(v1 + 72);
  if (!v4 || (v5 = [v4 dueDateDelta]) == 0)
  {
    if (a1)
    {
LABEL_6:
      v9 = *(v1 + 72);
      if (v9)
      {
        goto LABEL_7;
      }

LABEL_23:
      v10 = 0;
LABEL_24:
      if (a1)
      {
        v22 = [oslog addDueDateDeltaAlertWithDueDateDelta:a1];
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_30;
    }

    goto LABEL_12;
  }

  v6 = v5;
  if (a1)
  {
    sub_21D0D8CF0(0, &qword_27CE648A8);
    v7 = a1;
    v8 = sub_21DBFB63C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F2C0);
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAE9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Ignoring edit(dueDateDeltaAlertInterval:) because value is the same", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }

LABEL_21:
    v21 = oslog;
    goto LABEL_31;
  }

  v9 = *(v1 + 72);
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_7:
  v10 = [v9 dueDateDelta];
  v11 = *(v1 + 72);
  if (!v11)
  {
    goto LABEL_24;
  }

  if (a1)
  {
    v12 = a1;
    v13 = v11;
    if (([v12 isEmpty] & 1) == 0)
    {
      v30 = [oslog updateDueDateDeltaAlert:v13];
      v31 = [v30 setDueDateDelta_];

      v22 = v31;
      goto LABEL_30;
    }
  }

  else
  {
    v23 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648A0);
  v24 = sub_21DBF56BC();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21DC08D00;
  v28 = [v11 identifier];
  sub_21DBF568C();

  sub_21D1D170C(v27);
  swift_setDeallocating();
  (*(v25 + 8))(v27 + v26, v24);
  swift_deallocClassInstance();
  sub_21D9D77FC(&qword_280D1B850, 255, MEMORY[0x277CC95F0]);
  v29 = sub_21DBFAA9C();

  [oslog removeDueDateDeltaAlertsWithIdentifiers:v29];

  v22 = 0;
LABEL_30:
  v32 = *(v1 + 72);
  *(v1 + 72) = v22;
  v33 = v22;

  v34 = swift_allocObject();
  *(v34 + 16) = v10;
  v35 = v10;
  sub_21D182E74(sub_21D9D7D48, v34);

  v21 = v33;
LABEL_31:
}

Swift::Void __swiftcall TTRReminderEditor.edit(prefersUrgentPresentationStyleForDateAlarms:)(Swift::Bool prefersUrgentPresentationStyleForDateAlarms)
{
  v3 = *(v1 + 16);
  v4 = [v3 prefersUrgentPresentationStyleForDateAlarms];
  [v3 setPrefersUrgentPresentationStyleForDateAlarms_];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_21D182E74(sub_21D9B1160, v5);
}

uint64_t TTRReminderEditor.edit(dueDateTimeZone:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + 16) displayDate];
  sub_21D9C5D14(v14, a1, v13);

  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v15 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_21D9C50E0(v8, v5);
  sub_21D0CF7E0(v5, &unk_27CE60DA0);
  sub_21D0CF7E0(v8, &qword_27CE58D60);
  return (*(v10 + 8))(v13, v9);
}

Swift::Void __swiftcall TTRReminderEditor.editDueDateComponentsByPromotingAlternativeDueDateForCalendarIfAvailable()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  *&v15 = MEMORY[0x28223BE20](v14 - 8).n128_u64[0];
  v17 = &v26 - v16;
  v18 = *(v0 + 16);
  v19 = [v18 alternativeDisplayDateDate_forCalendar];
  if (v19)
  {
    v20 = v19;
    sub_21DBF55FC();

    v21 = sub_21DBF563C();
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
    sub_21D0CF7E0(v17, &qword_27CE58D68);
    v22 = [v18 effectiveDisplayDateComponents_forCalendar];
    if (v22)
    {
      v23 = v22;
      sub_21DBF4EFC();

      (*(v8 + 32))(v13, v10, v7);
      (*(v8 + 16))(v6, v13, v7);
      (*(v8 + 56))(v6, 0, 1, v7);
      v24 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
      (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
      sub_21D9C50E0(v6, v3);
      sub_21D0CF7E0(v3, &unk_27CE60DA0);
      sub_21D0CF7E0(v6, &qword_27CE58D60);
      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    v25 = sub_21DBF563C();
    (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
    sub_21D0CF7E0(v17, &qword_27CE58D68);
  }
}

void TTRReminderEditor.edit(recurrenceEnd:)(uint64_t a1)
{
  v50 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v41 - v17;
  v19 = [*(v1 + 16) recurrenceRules];
  if (v19)
  {
    v20 = v19;
    v47 = v7;
    v48 = v18;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v21 = sub_21DBFA5EC();

    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v20 = v21;
      }

      else
      {
        v20 = (v21 & 0xFFFFFFFFFFFFFF8);
      }

      if (sub_21DBFBD7C())
      {
        v22 = sub_21DBFBD7C();
        if (!v22)
        {
          v42 = v5;
          v43 = v3;
          v44 = v2;

          v5 = MEMORY[0x277D84F90];
          goto LABEL_13;
        }

LABEL_4:
        v46 = v1;
        v52 = MEMORY[0x277D84F90];
        sub_21D18EA80(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_37;
        }

        v42 = v5;
        v43 = v3;
        v44 = v2;
        v45 = v6;
        v23 = 0;
        v5 = v52;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x223D44740](v23, v21);
          }

          else
          {
            v24 = *(v21 + 8 * v23 + 32);
          }

          TTRRecurrenceRuleModel.init(sourceRule:)(v24, v12);
          v52 = v5;
          v26 = v5[2];
          v25 = v5[3];
          if (v26 >= v25 >> 1)
          {
            sub_21D18EA80(v25 > 1, v26 + 1, 1);
            v5 = v52;
          }

          ++v23;
          v5[2] = v26 + 1;
          sub_21D9D9028(v12, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, type metadata accessor for TTRRecurrenceRuleModel);
        }

        while (v22 != v23);

        v6 = v45;
LABEL_13:
        v27 = v51;
        sub_21D0D3954(v50, v51, &unk_27CE62610);
        v28 = v47;
        v29 = (*(v47 + 48))(v27, 1, v6);
        v20 = v48;
        v30 = v49;
        if (v29 == 1)
        {
          sub_21D0CF7E0(v27, &unk_27CE62610);
          v31 = 1;
        }

        else
        {
          sub_21D1074E8(v27, v49, type metadata accessor for TTRRecurrenceEndModel);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21D1074E8(v27, v20, type metadata accessor for TTRRecurrenceEndModel);
          }

          else
          {
            v33 = v42;
            v32 = v43;
            v34 = v30;
            v35 = v44;
            (*(v43 + 32))(v42, v34, v44);
            sub_21DBF554C();
            sub_21DBF553C();
            v20 = v48;
            (*(v32 + 8))(v33, v35);
            swift_storeEnumTagMultiPayload();
          }

          sub_21D9D9170(v27, type metadata accessor for TTRRecurrenceEndModel);
          v31 = 0;
        }

        (*(v28 + 56))(v20, v31, 1, v6);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v5[2])
          {
LABEL_21:
            sub_21D0F02F4(v20, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), &unk_27CE62610);
            v54.value._rawValue = v5;
            v54.is_nil = 0;
            TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v54, v36);

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        v5 = sub_21D256CA4(v5);
        if (v5[2])
        {
          goto LABEL_21;
        }

LABEL_38:
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_4;
      }
    }
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v37 = sub_21DBF84BC();
  __swift_project_value_buffer(v37, qword_280D0F2C0);
  v51 = sub_21DBF84AC();
  v38 = sub_21DBFAECC();
  if (os_log_type_enabled(v51, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_21D0C9000, v51, v38, "Tried to update recurrenceEnd on reminder without recurrence rules -- skipping", v39, 2u);
    MEMORY[0x223D46520](v39, -1, -1);
  }

  v40 = v51;
}

void TTRReminderEditor.remove(subtask:)(void *a1)
{
  v3 = [a1 parentReminderID];
  v4 = *(v1 + 16);
  v5 = [v4 objectID];
  v6 = v5;
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v5)
  {
    v6 = v3;
    goto LABEL_9;
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  v7 = sub_21DBFB63C();

  if ((v7 & 1) == 0)
  {
LABEL_10:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_280D0F2C0);
    v18 = a1;

    oslog = sub_21DBF84AC();
    v19 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v20 = 138412802;
      v23 = [v18 objectID];
      *(v20 + 4) = v23;
      *v21 = v23;
      *(v20 + 12) = 2080;
      v24 = [v18 parentReminderID];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 description];

        v27 = sub_21DBFA16C();
        v29 = v28;
      }

      else
      {
        v29 = 0xE400000000000000;
        v27 = 1819047278;
      }

      v36 = sub_21D0CDFB4(v27, v29, &v40);

      *(v20 + 14) = v36;
      *(v20 + 22) = 2112;
      v37 = [v4 objectID];
      *(v20 + 24) = v37;
      v21[1] = v37;
      _os_log_impl(&dword_21D0C9000, oslog, v19, "Tried to remove subtask from incorrect parent reminder {subtask.objectID: %@, sutbask.parentReminderID: %s, reminder.objectID: %@}", v20, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223D46520](v22, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);

      return;
    }

    goto LABEL_22;
  }

LABEL_6:
  v8 = [a1 objectID];
  v9 = [a1 removeFromParentReminderAllowingUndo];
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v8;
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v10;
    v13 = v8;
    v14 = v10;
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(inited);
    v15 = v40;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_21D9D7D74;
    *(v16 + 24) = v12;

    sub_21D1C442C(v15, sub_21D1CDA04, v16);

    return;
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v30 = sub_21DBF84BC();
  __swift_project_value_buffer(v30, qword_280D0F2C0);
  v31 = v8;
  oslog = sub_21DBF84AC();
  v32 = sub_21DBFAEBC();

  if (!os_log_type_enabled(oslog, v32))
  {

LABEL_22:
    v35 = oslog;
    goto LABEL_23;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v33 = 138412290;
  *(v33 + 4) = v31;
  *v34 = v31;
  v38 = v31;
  _os_log_impl(&dword_21D0C9000, oslog, v32, "Unable to obtain an undo token for removing subtask {subtask.objectID: %@}", v33, 0xCu);
  sub_21D0CF7E0(v34, &unk_27CE60070);
  MEMORY[0x223D46520](v34, -1, -1);
  MEMORY[0x223D46520](v33, -1, -1);

  v35 = v38;
LABEL_23:
}

void TTRReminderEditor.move(attachment:position:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = [*(v2 + 16) attachmentContext];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  [v6 removeAttachment_];
  if (!v5)
  {
    v9 = v4;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    v9 = 0;
    if (v4)
    {
      v8 = &selRef_insertAttachment_afterAttachment_;
      goto LABEL_10;
    }

LABEL_9:
    v8 = &selRef_insertAttachment_beforeAttachment_;
    goto LABEL_10;
  }

  v8 = &selRef_insertAttachment_afterAttachment_;
  v9 = v4;
LABEL_10:
  sub_21D157850(v4, v5);
  [v7 *v8];
}

uint64_t sub_21D9C41A4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F2C0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F2C0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 16) = a1;
  sub_21D0D3954(a2, v6 + 24, &unk_27CE60D80);
  *(v6 + 64) = a3;
  v7 = [a1 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a2, &unk_27CE60D80);
  *(v6 + 72) = v7;
  return v6;
}

uint64_t TTRReminderEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, uint64_t a2, char a3)
{
  *(v3 + 72) = 0;
  *(v3 + 16) = a1;
  sub_21D0D3954(a2, v3 + 24, &unk_27CE60D80);
  *(v3 + 64) = a3;
  v7 = [a1 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a2, &unk_27CE60D80);
  v8 = *(v3 + 72);
  *(v3 + 72) = v7;

  return v3;
}

uint64_t TTRReminderEditor.EditedObjectIDs.init(objectIDs:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t TTRReminderEditor.EditedObjectIDs.objectIDs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t TTRReminderEditor.EditedObjectIDs.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D9C4584(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = [v3 saveRequest];
  v5 = [v4 _trackedListChangeItemForObjectID_];

  if (!v5)
  {
    v6 = [v3 saveRequest];
    v7 = [v6 store];

    v14[0] = 0;
    v8 = [v7 fetchListWithObjectID:a1 error:v14];

    if (v8)
    {
      v9 = v14[0];
      v10 = [v3 saveRequest];
      v5 = [v10 updateList_];
    }

    else
    {
      v11 = v14[0];
      v12 = sub_21DBF52DC();

      swift_willThrow();
      return 0;
    }
  }

  return v5;
}

void sub_21D9C4708(uint64_t *a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = *a1;
  if (a2)
  {
    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v16 = a2;
      v17 = sub_21DBFBD7C();
      a2 = v16;
      if (!v17)
      {
        goto LABEL_12;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = a2;
      v11 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*(v9 + 16))
      {
        __break(1u);
        return;
      }

      v10 = a2;
      v11 = *(a2 + 32);
    }

    v12 = v11;
    v13 = [v11 saveRequest];

    if (v13)
    {
      v14 = [*(v8 + 16) saveRequest];

      if (v13 == v14)
      {
        a2 = v10;
      }

      else
      {
        a2 = 0;
      }
    }

    else
    {
      a2 = v10;
    }
  }

LABEL_12:
  v18 = 0;
  v15 = TTRReminderEditor.edit(listID:knownSubtaskChangeItems:forceCopyingReminder:allowsLossyCopying:assignmentCopying:)(a3, a2, a4 & 1, a5 & 1, &v18);
}

uint64_t TTRReminderEditor.edit(completionDate:)(uint64_t a1)
{
  v55 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10);
  MEMORY[0x28223BE20](v5);
  v7 = &v47[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v49 = &v47[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v47[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v47[-v16];
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v56 = &v47[-v20];
  v53 = v1;
  v50 = *(v1 + 16);
  v21 = [v50 completionDate];
  if (v21)
  {
    v22 = v21;
    sub_21DBF55FC();

    (*(v3 + 56))(v17, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v17, 1, 1, v2);
  }

  v23 = v17;
  v24 = v56;
  sub_21D0D523C(v23, v56, &qword_27CE58D68);
  v25 = *(v5 + 48);
  sub_21D0D3954(v24, v7, &qword_27CE58D68);
  v26 = v55;
  sub_21D0D3954(v55, &v7[v25], &qword_27CE58D68);
  v27 = *(v3 + 48);
  if (v27(v7, 1, v2) != 1)
  {
    sub_21D0D3954(v7, v14, &qword_27CE58D68);
    if (v27(&v7[v25], 1, v2) != 1)
    {
      v38 = v54;
      (*(v3 + 32))(v54, &v7[v25], v2);
      sub_21D9D77FC(&qword_280D171A0, 255, MEMORY[0x277CC9578]);
      v48 = sub_21DBFA10C();
      v39 = *(v3 + 8);
      v40 = v38;
      v26 = v55;
      v39(v40, v2);
      v39(v14, v2);
      sub_21D0CF7E0(v7, &qword_27CE58D68);
      if (v48)
      {
        goto LABEL_15;
      }

LABEL_10:
      v28 = v27(v26, 1, v2) != 1;
      v29 = v50;
      [v50 setCompleted_];
      v30 = v49;
      sub_21D0D3954(v26, v49, &qword_27CE58D68);
      if (v27(v30, 1, v2) == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = sub_21DBF55BC();
        (*(v3 + 8))(v30, v2);
      }

      v32 = v56;
      [v29 setCompletionDate_];

      v33 = v54;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v34 = sub_21DBF55BC();
      (*(v3 + 8))(v33, v2);
      [v29 setLastBannerPresentationDate_];

      v35 = v52;
      sub_21D0D3954(v32, v52, &qword_27CE58D68);
      v36 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v37 = swift_allocObject();
      sub_21D0D523C(v35, v37 + v36, &qword_27CE58D68);
      sub_21D182E74(sub_21D9D7DA0, v37);

      return sub_21D0CF7E0(v32, &qword_27CE58D68);
    }

    (*(v3 + 8))(v14, v2);
LABEL_9:
    sub_21D0CF7E0(v7, &qword_27CE5BE10);
    goto LABEL_10;
  }

  if (v27(&v7[v25], 1, v2) != 1)
  {
    goto LABEL_9;
  }

  sub_21D0CF7E0(v7, &qword_27CE58D68);
LABEL_15:
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v41 = sub_21DBF84BC();
  __swift_project_value_buffer(v41, qword_280D0F2C0);
  v42 = sub_21DBF84AC();
  v43 = sub_21DBFAE9C();
  v44 = os_log_type_enabled(v42, v43);
  v32 = v56;
  if (v44)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_21D0C9000, v42, v43, "Ignoring edit(completionDate:) because value is the same", v45, 2u);
    MEMORY[0x223D46520](v45, -1, -1);
  }

  return sub_21D0CF7E0(v32, &qword_27CE58D68);
}

uint64_t TTRReminderEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, void *a2, uint64_t a3, char a4)
{
  v6 = sub_21D9D6AE0(a1, a2, a3, a4);

  return v6;
}

Swift::Void __swiftcall TTRReminderEditor.edit(priority:)(Swift::UInt priority)
{
  v3 = *(v1 + 16);
  v4 = [v3 priority];
  if (v4 == priority)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F2C0);
    oslog = sub_21DBF84AC();
    v6 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v6, "Ignoring edit(priority:) because value is the same", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  else
  {
    v8 = v4;
    [v3 setPriority_];
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_21D182E74(sub_21D9D7E44, v9);
  }
}

uint64_t sub_21D9C50E0(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v101 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v84[-v4];
  v5 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  MEMORY[0x28223BE20](v5);
  v94 = v7;
  v95 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v96 = &v84[-v9];
  v10 = sub_21DBF509C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v86 = &v84[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0);
  MEMORY[0x28223BE20](v13);
  v15 = &v84[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  v88 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v84[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v84[-v22];
  v89 = v24;
  *&v26 = MEMORY[0x28223BE20](v25).n128_u64[0];
  v102 = &v84[-v27];
  v100 = v2;
  v28 = *(v2 + 16);
  v29 = [v28 dueDateComponents];
  v87 = v20;
  if (v29)
  {
    v30 = v29;
    sub_21DBF4EFC();

    (*(v11 + 56))(v23, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v23, 1, 1, v10);
  }

  v31 = v102;
  sub_21D0D523C(v23, v102, &qword_27CE58D60);
  v98 = v28;
  v32 = [v28 displayDate];
  v33 = *(v11 + 48);
  v34 = v33(v31, 1, v10);
  v97 = v32;
  LODWORD(v36) = v34 == 1 && v32 != 0;
  v37 = *(v13 + 48);
  sub_21D0D3954(v31, v15, &qword_27CE58D60);
  sub_21D0D3954(v101, &v15[v37], &qword_27CE58D60);
  if (v33(v15, 1, v10) == 1)
  {
    v38 = v33(&v15[v37], 1, v10);
    v39 = v98;
    v40 = v99;
    if (v38 == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE58D60);
      v41 = v100;
      goto LABEL_18;
    }

LABEL_15:
    sub_21D0CF7E0(v15, &qword_27CE5D1A0);
    v41 = v100;
    if (!v36)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v85 = v36;
  v36 = v87;
  sub_21D0D3954(v15, v87, &qword_27CE58D60);
  v42 = v33(&v15[v37], 1, v10);
  v40 = v99;
  if (v42 == 1)
  {
    (*(v11 + 8))(v36, v10);
    v39 = v98;
    LODWORD(v36) = v85;
    goto LABEL_15;
  }

  v43 = v86;
  (*(v11 + 32))(v86, &v15[v37], v10);
  sub_21D9D77FC(&qword_27CE5D1A8, 255, MEMORY[0x277CC8990]);
  v44 = sub_21DBFA10C();
  v45 = *(v11 + 8);
  v45(v43, v10);
  v45(v36, v10);
  sub_21D0CF7E0(v15, &qword_27CE58D60);
  v41 = v100;
  v39 = v98;
  LOBYTE(v36) = v85;
  if ((v44 & 1) == 0)
  {
    if (!v85)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

LABEL_18:
  if (v36)
  {
LABEL_25:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v53 = sub_21DBF84BC();
    __swift_project_value_buffer(v53, qword_280D0F2C0);
    v54 = sub_21DBF84AC();
    v55 = sub_21DBFAE9C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21D0C9000, v54, v55, "edit(dueDateComponents:): previousDueDateComponents == nil with previousDisplayDate != nil.", v56, 2u);
      MEMORY[0x223D46520](v56, -1, -1);
    }

LABEL_30:
    v57 = [v39 alternativeDisplayDateDate_forCalendar];
    if (v57)
    {
      v58 = v57;
      sub_21DBF55FC();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v60 = sub_21DBF563C();
    (*(*(v60 - 8) + 56))(v40, v59, 1, v60);
    v61 = *(v41 + 72);
    if (v61)
    {
      v62 = [v61 dueDateDelta];
    }

    else
    {
      v62 = 0;
    }

    v63 = [v39 recurrenceRules];
    if (v63)
    {
      v64 = v63;
      sub_21D0D8CF0(0, &qword_280D177E8);
      v65 = sub_21DBFA5EC();
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v103 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108);
    v66 = type metadata accessor for TTRRecurrenceRuleModel(0);
    sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108);
    sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel);
    v67 = sub_21DBFA49C();

    v68 = *(v67 + 16);
    if (v68)
    {
      v69 = sub_21D9D674C(*(v67 + 16), 0, &qword_27CE58970, &unk_21DC27570, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D9D50F0(&v103, v69 + ((*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80)), v68, v67);
      v71 = v70;
      sub_21D0CFAF8();
      if (v71 == v68)
      {
LABEL_43:
        v72 = v96;
        v73 = sub_21D0D523C(v40, v96, &qword_27CE58D68);
        v74 = v91;
        *&v72[*(v91 + 20)] = v62;
        *&v72[*(v74 + 24)] = v69;
        MEMORY[0x28223BE20](v73);
        v75 = v101;
        *&v84[-32] = v41;
        *&v84[-24] = v75;
        v76 = v97;
        v77 = v93;
        *&v84[-16] = v97;
        *&v84[-8] = v77;
        sub_21D9B84D8(sub_21D9D9008);
        v50 = v102;
        v78 = v90;
        sub_21D0D3954(v102, v90, &qword_27CE58D60);
        v79 = v95;
        sub_21D1074E8(v72, v95, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
        v80 = (*(v88 + 80) + 16) & ~*(v88 + 80);
        v81 = (v89 + *(v92 + 80) + v80) & ~*(v92 + 80);
        v82 = swift_allocObject();
        sub_21D0D523C(v78, v82 + v80, &qword_27CE58D60);
        sub_21D9D9028(v79, v82 + v81, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
        sub_21D182E74(sub_21D9D9090, v82);

        sub_21D9D9170(v72, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
        v52 = 1;
        goto LABEL_44;
      }

      __break(1u);
    }

    v69 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v46 = sub_21DBF84BC();
  __swift_project_value_buffer(v46, qword_280D0F2C0);
  v47 = sub_21DBF84AC();
  v48 = sub_21DBFAE9C();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v102;
  if (v49)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_21D0C9000, v47, v48, "Ignoring edit(dueDateComponents:) because value is the same", v51, 2u);
    MEMORY[0x223D46520](v51, -1, -1);
  }

  v52 = 0;
LABEL_44:
  sub_21D0CF7E0(v50, &qword_27CE58D60);
  return v52;
}

uint64_t sub_21D9C5C74(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = [*(*a1 + 16) prefersUrgentPresentationStyleForDateAlarms];
  [*(v3 + 16) setPrefersUrgentPresentationStyleForDateAlarms_];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_21D182E74(sub_21D9B1E4C, v5);
}

uint64_t sub_21D9C5D14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_21DBF563C();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = sub_21DBF5C4C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = v7;
    v26 = [a1 timeZone];
    if (v26)
    {
      v27 = v26;
      sub_21DBF5C2C();

      v28 = *(v22 + 56);
      v29 = v17;
      v30 = 0;
    }

    else
    {
      v28 = *(v22 + 56);
      v29 = v17;
      v30 = 1;
    }

    v48 = v28;
    (v28)(v29, v30, 1, v21);
    sub_21D0D523C(v17, v20, &unk_27CE60DB0);
    v31 = (*(v22 + 48))(v20, 1, v21);
    v7 = v46;
    if (v31 != 1)
    {
      (*(v22 + 32))(v25, v20, v21);
LABEL_14:
      v36 = [a1 date];
      sub_21DBF55FC();

      v37 = *(v47 + 32);
      v38 = v9;
      v33 = v47;
      v37(v6, v38, v7);
      (*(v33 + 56))(v6, 0, 1, v7);
      v37(v12, v6, v7);
      v35 = [a1 isAllDay];
      v34 = v7;
      goto LABEL_15;
    }
  }

  else
  {
    v48 = *(v22 + 56);
    v48(v20, 1, 1, v21, v23);
  }

  v32 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_21D0CF7E0(v20, &unk_27CE60DB0);
  }

  if (a1)
  {
    goto LABEL_14;
  }

  v33 = v47;
  (*(v47 + 56))(v6, 1, 1, v7);
  sub_21DBF560C();
  v34 = v7;
  if ((*(v33 + 48))(v6, 1, v7) != 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE58D68);
  }

  v35 = 0;
LABEL_15:
  v39 = objc_opt_self();
  v40 = v12;
  v41 = sub_21DBF55BC();
  v42 = sub_21DBF5C0C();
  v43 = [v39 rem:v41 dateComponentsWithDate:v42 timeZone:v35 isAllDay:?];

  sub_21DBF4EFC();
  v44 = v49;
  (*(v22 + 16))(v49, v50, v21);
  (v48)(v44, 0, 1, v21);
  sub_21DBF508C();
  (*(v33 + 8))(v40, v34);
  return (*(v22 + 8))(v25, v21);
}

void sub_21D9C62D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_21D9C50E0(v10, v7);
  sub_21D0CF7E0(v7, &unk_27CE60DA0);
  sub_21D0CF7E0(v10, &qword_27CE58D60);
  v16.value._rawValue = a3;
  v16.is_nil = 0;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v16, v14);
}

void _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v31 = *(v1 + 16);
  v4 = [v31 alarms];
  if (v4)
  {
    v5 = v4;
    sub_21D0D8CF0(0, &qword_280D17670);
    v3 = sub_21DBFA5EC();
  }

  if (v3 >> 62)
  {
    v6 = sub_21DBFBD7C();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      if (v6 >= 1)
      {
        v29 = v1;
        swift_beginAccess();
        v7 = 0;
        v8 = MEMORY[0x277D84F90];
        v9 = &selRef__setContentViewMarginType_;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x223D44740](v7, v3);
          }

          else
          {
            v15 = *(v3 + 8 * v7 + 32);
          }

          v16 = v15;
          v17 = [v15 v9[357]];
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v10 = v18;
            swift_beginAccess();
            v11 = v16;
            MEMORY[0x223D42D80]();
            if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v8 = v32;
            swift_endAccess();

            v12 = swift_allocObject();
            *(v12 + 16) = v10;
            v13 = *(v2 + 16);
            v14 = sub_21D9D8FA4;
          }

          else
          {

            v19 = [v16 v9[357]];
            objc_opt_self();
            v20 = swift_dynamicCastObjCClass();
            if (!v20)
            {

              goto LABEL_11;
            }

            v21 = v20;
            swift_beginAccess();
            v22 = v16;
            MEMORY[0x223D42D80]();
            if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v8 = v32;
            swift_endAccess();

            v12 = swift_allocObject();
            *(v12 + 16) = v21;
            v13 = *(v2 + 16);
            v14 = sub_21D9D8F78;
          }

          *(v2 + 16) = v14;
          *(v2 + 24) = v12;
          sub_21D0D0E88(v13);
LABEL_11:
          ++v7;
          v9 = &selRef__setContentViewMarginType_;
          if (v6 == v7)
          {

            goto LABEL_24;
          }
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_24:
  [v31 removeAllSnoozeAlarms];
  if (v8 >> 62)
  {
    v23 = sub_21DBFBD7C();
    if (!v23)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_33;
    }
  }

  if (v23 < 1)
  {
LABEL_37:
    __break(1u);
    return;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x223D44740](i, v8);
    }

    else
    {
      v25 = *(v8 + 8 * i + 32);
    }

    v26 = v25;
    [v31 removeAlarm_];
  }

LABEL_33:
  if (a1)
  {
    v27 = a1;
    v28 = [v31 addAlarmWithTrigger_];
  }

  sub_21D182E74(sub_21D9D8F70, v2);
}

uint64_t sub_21D9C6924()
{
  v1 = *(v0 + 16);
  v2 = [v1 recurrenceRules];
  if (v2)
  {
    v3 = v2;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v4 = sub_21DBFA5EC();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = sub_21DBFBD7C();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_4:
    v6 = [v1 recurrenceRules];
    if (v6)
    {
      v7 = v6;
      sub_21D0D8CF0(0, &qword_280D177E8);
      sub_21DBFA5EC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D108);
    type metadata accessor for TTRRecurrenceRuleModel(0);
    sub_21D0D0F1C(&qword_27CE5D110, &qword_27CE5D108);
    sub_21D9D77FC(&qword_27CE58AB0, 255, type metadata accessor for TTRRecurrenceRuleModel);
    v9 = sub_21DBFA49C();

    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x223D44740](i, v4);
        }

        else
        {
          v11 = *(v4 + 8 * i + 32);
        }

        v12 = v11;
        [v1 removeRecurrenceRule_];
      }

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      sub_21D182E74(sub_21D9D8D00, v13);
    }

    return result;
  }

LABEL_8:
}

uint64_t sub_21D9C6C00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21D7DAFA0(a2);
  v11 = v10;
  v13 = v12;
  sub_21D1074E8(a1, v8, type metadata accessor for TTRRecurrenceRuleModel);
  v14 = v6[5];
  if (*(a1 + v14) == 3)
  {
    v15 = *(a1 + v6[13]);
    if (v15)
    {
      if (*(v15 + 16))
      {
        v16 = *(a1 + v6[12]);
        if (v16)
        {
          if (*(v16 + 16))
          {
            *&v8[v14] = 2;
          }
        }
      }
    }
  }

  sub_21D7D8908(v9, v11, v13 & 1, a3);
  return sub_21D9D9170(v8, type metadata accessor for TTRRecurrenceRuleModel);
}

unint64_t sub_21D9C6D40(uint64_t a1)
{
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v7 = *(v1 + 16);
  v8 = [v7 recurrenceRules];
  if (v8)
  {
    v9 = v8;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v10 = sub_21DBFA5EC();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v8);
  *(&v19 - 2) = a1;
  result = sub_21D9B26A0(sub_21D9D9728, (&v19 - 4), v10);
  v12 = result;
  if (!(result >> 62))
  {
    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }
  }

  result = sub_21DBFBD7C();
  v13 = result;
  if (!result)
  {
  }

LABEL_6:
  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v4;
    v20 = a1;
    v21 = v1;
    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](i, v12);
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      v16 = v15;
      [v7 removeRecurrenceRule_];
    }

    sub_21D1074E8(v20, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRRecurrenceRuleModel);
    v17 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v18 = swift_allocObject();
    sub_21D9D9028(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21D182E74(sub_21D9D977C, v18);
  }

  return result;
}

void sub_21D9C6FDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v71 = *(v4 - 1);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  *&v11 = MEMORY[0x28223BE20](v10 - 8).n128_u64[0];
  v13 = (&v62 - v12);
  v70 = *(v2 + 16);
  v14 = [v70 recurrenceRules];
  v72 = v5;
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v15 = v14;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v16 = sub_21DBFA5EC();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v14);
  v61[2] = a1;
  v17 = sub_21D9B26A0(sub_21D9D9728, v61, v16);
  if (v17 >> 62)
  {
    v60 = sub_21DBFBD7C();

    if (v60)
    {
      return;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      return;
    }
  }

  sub_21D0D3954(a1, v13, &unk_27CE62610);
  v19 = type metadata accessor for TTRRecurrenceEndModel(0);
  v20 = (*(*(v19 - 8) + 48))(v13, 1, v19);
  v21 = 0;
  if (v20 != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];
    }

    else
    {
      (*(v7 + 32))(v9, v13, v6);
      v23 = sub_21DBF55BC();
      v22 = [objc_opt_self() recurrenceEndWithEndDate_];

      (*(v7 + 8))(v9, v6);
    }

    v21 = v22;
  }

  v69 = v21;
  v24 = *(a1 + v4[5]);
  v67 = *(a1 + v4[6]);
  v68 = v24;
  v25 = v4[8];
  v66 = *(a1 + v4[7]);
  v26 = *(a1 + v25);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      v74 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v28 = objc_opt_self();
      v29 = (v26 + 40);
      do
      {
        v30 = [v28 dayOfWeek:*(v29 - 1) weekNumber:*v29];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v29 += 2;
        --v27;
      }

      while (v27);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8);
    v65 = sub_21DBFA5DC();
  }

  else
  {
    v65 = 0;
  }

  v31 = *(a1 + v4[9]);
  if (v31)
  {
    v32 = *(v31 + 16);
    if (v32)
    {
      v74 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v33 = (v31 + 32);
      do
      {
        v34 = *v33++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v32;
      }

      while (v32);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v64 = sub_21DBFA5DC();
  }

  else
  {
    v64 = 0;
  }

  v35 = *(a1 + v4[12]);
  if (v35)
  {
    v36 = *(v35 + 16);
    if (v36)
    {
      v74 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v37 = (v35 + 32);
      do
      {
        v38 = *v37++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v36;
      }

      while (v36);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v63 = sub_21DBFA5DC();
  }

  else
  {
    v63 = 0;
  }

  v39 = *(a1 + v4[11]);
  if (v39)
  {
    v40 = v39[2];
    if (v40)
    {
      v74 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v41 = v39 + 4;
      do
      {
        v42 = *v41++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v40;
      }

      while (v40);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v39 = sub_21DBFA5DC();
  }

  v43 = *(a1 + v4[10]);
  if (v43)
  {
    v44 = *(v43 + 16);
    if (v44)
    {
      v62 = v2;
      v74 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v45 = (v43 + 32);
      do
      {
        v46 = *v45++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v44;
      }

      while (v44);
      v2 = v62;
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v47 = sub_21DBFA5DC();
  }

  else
  {
    v47 = 0;
  }

  v48 = *(a1 + v4[13]);
  if (v48)
  {
    v49 = *(v48 + 16);
    if (v49)
    {
      v62 = v2;
      v74 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v50 = (v48 + 32);
      do
      {
        v51 = *v50++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v49;
      }

      while (v49);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v52 = sub_21DBFA5DC();
  }

  else
  {
    v52 = 0;
  }

  v53 = v73;
  v54 = v69;
  v55 = v65;
  v57 = v63;
  v56 = v64;

  sub_21D1074E8(a1, v53, type metadata accessor for TTRRecurrenceRuleModel);
  v58 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v59 = swift_allocObject();
  sub_21D9D9028(v53, v59 + v58, type metadata accessor for TTRRecurrenceRuleModel);
  sub_21D182E74(sub_21D9D8D08, v59);
}

uint64_t sub_21D9C7928(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 notes];
  if (sub_21D9D6EFC(v4, a1))
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_280D0F2C0);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAE9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Ignoring edit(notes:) because the value is the same", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    return 0;
  }

  v9 = sub_21D9D74E0(a1);
  v10 = v9;
  if (v4)
  {
    if (v9)
    {
      sub_21D0D8CF0(0, &qword_280D177E0);
      v11 = v4;
      v12 = sub_21DBFB63C();

      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  else if (!v9)
  {
LABEL_10:
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F2C0);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Ignoring edit(notes:) because the value is the same", v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    return 0;
  }

  [v3 setNotes_];

  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
  result = swift_allocObject();
  *(result + 16) = sub_21D9D8FDC;
  *(result + 24) = v18;
  return result;
}

void *sub_21D9C7BBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = [*(v3 + 16) hashtagContext];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_21D9CB53C(v5, v6, v7, v8);
  v12 = v11;
  if (v11)
  {
    [v10 removeHashtag_];
    v13 = [v12 objectID];
    [v10 cancelUndeleteHashtagWithID_];

    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    if (a2)
    {
      v15 = sub_21D9CBAD8(v12, 0);

      *(v14 + 16) = v15;
    }

    else
    {
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v12;
    *(v16 + 32) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_21D9D9758;
    *(v17 + 24) = v16;
    v18 = v12;
  }

  else
  {
  }

  return v12;
}

id sub_21D9C7D50(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  result = [*(v3 + 16) hashtagContext];
  if (result)
  {
    v13 = result;
    sub_21D9CB53C(v5, v4, v6, v7);
    if (!v14)
    {

      return 0;
    }

    v15 = v14;
    [v13 removeHashtag_];
    v16 = [v15 objectID];
    [v13 cancelUndeleteHashtagWithID_];

    sub_21D9CB53C(v8, v9, v10, v11);
    v18 = v17;
    if (v17)
    {
      v19 = v17;
LABEL_12:
      v22 = v18;
      v23 = v19;
      v24 = sub_21D9CBAD8(v15, v19);

      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = v23;
      v25[4] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
      result = swift_allocObject();
      *(result + 2) = sub_21D7E6718;
      *(result + 3) = v25;
      return result;
    }

    if (v11)
    {
      v20 = v8;
      [v13 addHashtag_];
      if ((a3 & 1) == 0)
      {
LABEL_11:
        v19 = v20;
        goto LABEL_12;
      }

      v21 = [v20 objectID];
      [v13 undeleteHashtagWithID_];
    }

    else
    {
      v21 = sub_21DBFA12C();
      v20 = [v13 addHashtagWithType:v10 name:v21];
    }

    goto LABEL_11;
  }

  return result;
}

void sub_21D9C7F8C(void *a1)
{
  v3 = [*(v1 + 16) assignmentContext];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 assignments];
    sub_21D0D8CF0(0, &qword_27CE59850);
    sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850);
    v5 = sub_21DBFAAAC();

    LOBYTE(v4) = sub_21D1E22D8(a1, v5);

    if (v4)
    {
      [v12 removeAssignment_];
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v7 = a1;
      sub_21D182E74(sub_21D9D9750, v6);
    }

    else
    {
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF84BC();
      __swift_project_value_buffer(v8, qword_280D0F2C0);
      v9 = sub_21DBF84AC();
      v10 = sub_21DBFAE9C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_21D0C9000, v9, v10, "Ignoring remove(assignment:) because the assignment has already been removed", v11, 2u);
        MEMORY[0x223D46520](v11, -1, -1);
      }
    }
  }
}

void sub_21D9C81F4(void *a1, SEL *a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(v4 + 16) attachmentContext];
  if (v8)
  {
    v11 = v8;
    [v8 *a2];
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = a1;
    sub_21D182E74(a4, v9);
  }
}

void sub_21D9C82C0(uint64_t a1, void *a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v8 = [*(*a1 + 16) attachmentContext];
  if (v8)
  {
    v11 = v8;
    [v8 *a3];
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = a2;
    sub_21D182E74(a5, v9);
  }
}

uint64_t sub_21D9C8390(uint64_t a1, void *a2, void *a3)
{
  TTRReminderEditor.edit(userActivity:)(a2);
  result = sub_21D9C7928(a3);
  if (result)
  {
    v5 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v5);
  }

  return result;
}

void TTRReminderEditor.undelete(subtaskID:undoToken:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 subtaskContext];
  if (v6)
  {
    v7 = v6;
    [v6 undeleteSubtaskWithID:a1 usingUndo:a2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = a1;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = a1;
    TTRUndoNavigationEditingTarget.init(reminderIDs:)(inited);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_21D9D7EB0;
    *(v11 + 24) = v9;

    sub_21D1C442C(v20, sub_21D1D20DC, v11);
  }

  else
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F2C0);
    v13 = a1;

    oslog = sub_21DBF84AC();
    v14 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v13;
      *v16 = v13;
      *(v15 + 12) = 2112;
      v17 = v13;
      v18 = [v5 objectID];
      *(v15 + 14) = v18;
      v16[1] = v18;
      _os_log_impl(&dword_21D0C9000, oslog, v14, "Tried to undelete subtask from reminder without subtaskContext {subtaskID: %@, reminderID: %@}", v15, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
    }
  }
}

void sub_21D9C86C4(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = [v3 saveRequest];
  v5 = [v4 store];

  v23[0] = 0;
  v6 = [v5 fetchReminderWithObjectID:a2 error:v23];

  if (v6)
  {
    v7 = v23[0];
    v8 = [v3 saveRequest];
    v9 = [v8 updateReminder_];

    TTRReminderEditor.remove(subtask:)(v9);
LABEL_7:

    return;
  }

  v10 = v23[0];
  v11 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F2C0);
  v13 = v11;
  v14 = a2;
  v9 = sub_21DBF84AC();
  v15 = sub_21DBFAEBC();

  if (os_log_type_enabled(v9, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v16 = 136315394;
    swift_getErrorValue();
    v19 = sub_21DBFC74C();
    v21 = sub_21D0CDFB4(v19, v20, v23);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v14;
    *v17 = v14;
    v22 = v14;
    _os_log_impl(&dword_21D0C9000, v9, v15, "Failed to get subtask for undelete {error: %s, subtaskID: %@}", v16, 0x16u);
    sub_21D0CF7E0(v17, &unk_27CE60070);
    MEMORY[0x223D46520](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v16, -1, -1);

    goto LABEL_7;
  }
}

void sub_21D9C89C0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F2C0);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC74C();
      v11 = sub_21D0CDFB4(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Failed to move reminders {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static TTRReminderEditor.defaultDueDateComponents(from:)@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_21DBF5C4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = sub_21DBF563C();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D9C8ECC(v13);
  (*(v2 + 56))(v10, 1, 1, v1);
  v14 = sub_21DBF55BC();
  sub_21D0D3954(v10, v7, &unk_27CE60DB0);
  v15 = *(v2 + 48);
  if (v15(v7, 1, v1) == 1)
  {
    v16 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v15(v7, 1, v1) != 1)
    {
      sub_21D0CF7E0(v7, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
  }

  v17 = objc_opt_self();
  v18 = sub_21DBF5C0C();
  (*(v2 + 8))(v4, v1);
  v19 = [v17 rem:v14 dateComponentsWithDate:v18 timeZone:0 isAllDay:?];

  sub_21DBF4EFC();
  sub_21D0CF7E0(v10, &unk_27CE60DB0);
  return (*(v22 + 8))(v13, v23);
}

uint64_t sub_21D9C8ECC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v27 - v2;
  v3 = sub_21DBF509C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF583C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF5A2C();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21DBF563C();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF559C();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9830], v5);
  sub_21DBF584C();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v15 = sub_21DBF5A0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC0B380;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x277CC99C0], v15);
  v21(v20 + v17, *MEMORY[0x277CC9978], v15);
  v21(v20 + 2 * v17, *MEMORY[0x277CC99C8], v15);
  v21(v20 + 3 * v17, *MEMORY[0x277CC9988], v15);
  v21(v20 + 4 * v17, *MEMORY[0x277CC9998], v15);
  v21(v20 + 5 * v17, *MEMORY[0x277CC9968], v15);
  v21(v20 + 6 * v17, *MEMORY[0x277CC9980], v15);
  sub_21D1D0F50(v19);
  swift_setDeallocating();
  v22 = v31;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = v30;
  sub_21DBF58DC();
  v24 = v27;

  sub_21DBF597C();
  (*(v32 + 8))(v23, v33);
  (*(v28 + 8))(v11, v29);
  v25 = *(v12 + 48);
  if (v25(v22, 1, v24) == 1)
  {
    (*(v12 + 32))(v34, v14, v24);
    result = v25(v22, 1, v24);
    if (result != 1)
    {
      return sub_21D0CF7E0(v22, &qword_27CE58D68);
    }
  }

  else
  {
    (*(v12 + 8))(v14, v24);
    return (*(v12 + 32))(v34, v22, v24);
  }

  return result;
}

id sub_21D9C9488(uint64_t a1, unint64_t *a2)
{
  sub_21D0D8CF0(0, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [ObjCClassFromMetadata newObjectID];
  v5 = [objc_allocWithZone(ObjCClassFromMetadata) initWithAlarmTrigger:a1 objectID:v4];

  return v5;
}

void sub_21D9C94F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {

    v5 = v3(v4);
    sub_21D0D0E88(v3);
  }

  else
  {
    v5 = 0;
  }

  _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v5);
}

uint64_t sub_21D9C9584(char *a1)
{
  v138 = a1;
  v135 = sub_21DBF563C();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v3 = v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF5A0C();
  v132 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v131 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v127 = v104 - v10;
  v111 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v11 = *(v111 - 1);
  MEMORY[0x28223BE20](v111);
  v109 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v104 - v14;
  MEMORY[0x28223BE20](v16);
  v121 = v104 - v17;
  MEMORY[0x28223BE20](v18);
  v128 = v104 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v104 - v21;
  v23 = sub_21DBF509C();
  v136 = *(v23 - 8);
  v137 = v23;
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v1;
  v110 = *(v1 + 16);
  result = [v110 recurrenceRules];
  if (!result)
  {
    return result;
  }

  v28 = result;
  v123 = v15;
  v124 = v7;
  sub_21D0D8CF0(0, &qword_280D177E8);
  v29 = sub_21DBFA5EC();

  if (v29 >> 62)
  {
    v30 = sub_21DBFBD7C();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v125 = v6;
  v126 = v3;
  v134 = v4;
  if (v30)
  {
    v140 = MEMORY[0x277D84F90];
    result = sub_21D18EA80(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
      goto LABEL_93;
    }

    v31 = 0;
    v32 = v140;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223D44740](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      TTRRecurrenceRuleModel.init(sourceRule:)(v33, v22);
      v140 = v32;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_21D18EA80(v34 > 1, v35 + 1, 1);
        v32 = v140;
      }

      ++v31;
      *(v32 + 16) = v35 + 1;
      sub_21D9D9028(v22, v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v35, type metadata accessor for TTRRecurrenceRuleModel);
    }

    while (v30 != v31);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v140 = v32;
  sub_21DBF8E0C();
  v36 = v110;
  v37 = [v110 dueDateComponents];
  v38 = v32;
  v39 = v121;
  if (v37)
  {
    v40 = v37;
    sub_21DBF4EFC();

    v38 = v32;
    v41 = sub_21DBF4EDC();
    v42 = [v41 rem_isAllDayDateComponents];

    v43 = v38;
    if (!v42)
    {
LABEL_27:
      (v136[1])(v26, v137);
      v32 = v43;
      goto LABEL_28;
    }

    v44 = v112;

    v45 = sub_21D9D91D0(&v140, v44);

    v38 = v140;
    v46 = v140[2];
    if (v45 <= v46)
    {
      if ((v45 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v46, v45 - v46))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v45 > v38[3] >> 1)
          {
            if (v46 <= v45)
            {
              v48 = v45;
            }

            else
            {
              v48 = v46;
            }

            v38 = sub_21D212C78(isUniquelyReferenced_nonNull_native, v48, 1, v38);
            v140 = v38;
          }

          sub_21D506AE4(v45, v46, 0);
          goto LABEL_27;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        return result;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_28:
  if (v138)
  {
    v49 = v138;
    v50 = [v36 displayDate];
    if (v50)
    {
      v51 = v50;
      v106 = v32;
      sub_21D0D8CF0(0, &qword_27CE5CC20);
      if (sub_21DBFB63C())
      {

        goto LABEL_86;
      }

      v52 = v38[2];
      if (v52)
      {
        v108 = v51;
        v139 = MEMORY[0x277D84F90];
        sub_21D18EA80(0, v52, 0);
        v53 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v104[1] = v38;
        v119 = v53;
        v54 = v38 + v53;
        v55 = (v132 + 104);
        v118 = (v133 + 8);
        v56 = v139;
        v117 = (v132 + 8);
        v116 = (v131 + 8);
        v115 = *(v11 + 72);
        v57 = &selRef_keyboardType;
        v58 = *MEMORY[0x277CC9968];
        *&v59 = 138543362;
        v105 = v59;
        LODWORD(v133) = v58;
        v120 = v49;
        v107 = (v132 + 104);
        while (1)
        {
          v136 = v56;
          v137 = v54;
          v138 = v52;
          sub_21D1074E8(v54, v39, type metadata accessor for TTRRecurrenceRuleModel);
          v60 = v127;
          _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
          v61 = v125;
          v62 = v134;
          v132 = *v55;
          (v132)(v125, v58, v134);
          v63 = [v49 v57[260]];
          v64 = v126;
          sub_21DBF55FC();

          v65 = sub_21DBF5A1C();
          v131 = *v118;
          (v131)(v64, v135);
          v130 = *v117;
          v130(v61, v62);
          v66 = v39;
          v67 = v124;
          v129 = *v116;
          v129(v60);
          v68 = (v65 - 32) >= 0xFFFFFFFFFFFFFFFDLL ? 28 : 0;
          v122 = v65;
          v69 = (v65 - 32) >= 0xFFFFFFFFFFFFFFFDLL ? v65 : 0;
          if (sub_21D7D8BE8(v68, v69, (v65 - 32) < 0xFFFFFFFFFFFFFFFDLL))
          {
            break;
          }

          v76 = v123;
          sub_21D9D9028(v66, v123, type metadata accessor for TTRRecurrenceRuleModel);
          v39 = v66;
          v49 = v120;
          v77 = v137;
LABEL_62:
          v90 = v128;
          sub_21D9D9028(v76, v128, type metadata accessor for TTRRecurrenceRuleModel);
          v56 = v136;
          v139 = v136;
          v92 = v136[2];
          v91 = v136[3];
          if (v92 >= v91 >> 1)
          {
            sub_21D18EA80(v91 > 1, v92 + 1, 1);
            v90 = v128;
            v56 = v139;
          }

          v56[2] = v92 + 1;
          v93 = v115;
          sub_21D9D9028(v90, v56 + v119 + v92 * v115, type metadata accessor for TTRRecurrenceRuleModel);
          v54 = v77 + v93;
          v52 = v138 - 1;
          v57 = &selRef_keyboardType;
          v58 = v133;
          if (v138 == 1)
          {

            v38 = v56;
            goto LABEL_86;
          }
        }

        v114 = v65 - 32;
        v70 = v113;
        _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
        v71 = v134;
        (v132)(v61, v133, v134);
        v72 = [v108 date];
        sub_21DBF55FC();

        v73 = sub_21DBF5A1C();
        (v131)(v64, v135);
        v130(v61, v71);
        (v129)(v70, v67);
        v74 = v73 - 29;
        if ((v73 - 29) >= 3)
        {
          v75 = 0;
        }

        else
        {
          v75 = v73;
        }

        if (v114 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v76 = v123;
          v39 = v121;
          if (v74 > 2 || v122 != v75)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v76 = v123;
          v39 = v121;
          if (v74 < 3)
          {
LABEL_52:
            v78 = v109;
            sub_21D1074E8(v39, v109, type metadata accessor for TTRRecurrenceRuleModel);
            v79 = v111;
            v80 = v111[13];

            *(v78 + v80) = 0;
            v81 = v79[9];

            *(v78 + v81) = 0;
            if (*(v78 + v79[5]) != 2 || (v82 = *(v78 + v111[8])) != 0 && *(v82 + 16))
            {
              sub_21D1074E8(v78, v76, type metadata accessor for TTRRecurrenceRuleModel);
            }

            else
            {
              sub_21D1074E8(v78, v76, type metadata accessor for TTRRecurrenceRuleModel);
              if (v74 <= 2)
              {
                v94 = v111[13];

                *(v76 + v94) = &unk_282EA8148;
                v95 = v73 - 27;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0);
                v96 = swift_allocObject();
                result = _swift_stdlib_malloc_size(v96);
                v97 = result - 32;
                if (result < 32)
                {
                  v97 = result - 25;
                }

                v96[2] = v95;
                v96[3] = 2 * (v97 >> 3);
                v98 = 29;
                if (v75 == 28)
                {
                  v98 = 0;
                }

                v96[4] = 28;
                if (v95 != 1)
                {
                  if (v75 == 28)
                  {
                    goto LABEL_96;
                  }

                  v99 = v98 == v75 ? 0 : v98 + 1;
                  v96[5] = v98;
                  if (v95 != 2)
                  {
                    if (v98 == v75)
                    {
                      goto LABEL_96;
                    }

                    v100 = v99 == v75 ? 0 : v99 + 1;
                    v96[6] = v99;
                    if (v95 != 3)
                    {
                      if (v99 == v75)
                      {
                        goto LABEL_96;
                      }

                      v96[7] = v100;
                      if (v95 != 4)
                      {
                        goto LABEL_97;
                      }
                    }
                  }
                }

                v101 = v111[9];

                *(v76 + v101) = v96;
                v78 = v109;
              }
            }

            sub_21D9D9170(v78, type metadata accessor for TTRRecurrenceRuleModel);
            if (qword_280D0F2B8 != -1)
            {
              swift_once();
            }

            v83 = sub_21DBF84BC();
            __swift_project_value_buffer(v83, qword_280D0F2C0);

            v84 = sub_21DBF84AC();
            v85 = sub_21DBFAEDC();

            v86 = os_log_type_enabled(v84, v85);
            v49 = v120;
            if (v86)
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *v87 = v105;
              v89 = [v110 objectID];
              *(v87 + 4) = v89;
              *v88 = v89;
              _os_log_impl(&dword_21D0C9000, v84, v85, "Adjusting fixed up recurrenceRule because dueDate has changed {reminderID: %{public}@}", v87, 0xCu);
              sub_21D0CF7E0(v88, &unk_27CE60070);
              MEMORY[0x223D46520](v88, -1, -1);
              MEMORY[0x223D46520](v87, -1, -1);
            }

            sub_21D9D9170(v39, type metadata accessor for TTRRecurrenceRuleModel);
            goto LABEL_61;
          }
        }

        sub_21D9D9028(v39, v76, type metadata accessor for TTRRecurrenceRuleModel);
        v49 = v120;
LABEL_61:
        v77 = v137;
        v55 = v107;
        goto LABEL_62;
      }

      v38 = MEMORY[0x277D84F90];
LABEL_86:
      v32 = v106;
    }

    else
    {
    }
  }

  v102 = sub_21D1D991C(v38, v32);

  if ((v102 & 1) == 0)
  {
    v141.value._rawValue = v38;
    v141.is_nil = 0;
    TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v141, v103);
  }
}

uint64_t sub_21D9CA3E0(void *a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = [v7 title];
  v9 = sub_21D9D6EFC(v8, a1);

  if (v9)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F2C0);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Ignoring edit(title:) because value is the same", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    return 0;
  }

  v14 = [v7 title];
  if (!v14)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v15 = [objc_opt_self() allowedAttributesForModel];
  type metadata accessor for Key(0);
  sub_21D9D77FC(&qword_280D17790, 255, type metadata accessor for Key);
  v16 = sub_21DBFAAAC();

  v17 = [a1 string];
  if (!v17)
  {
    sub_21DBFA16C();
    v17 = sub_21DBFA12C();
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  v50 = v14;
  if (*(v16 + 16))
  {
    [v18 beginEditing];
    v19 = [a1 string];
    v20 = sub_21DBFA16C();
    v22 = v21;

    v14 = MEMORY[0x223D42B30](v20, v22);

    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    *(v23 + 24) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_21D9D9714;
    *(v24 + 24) = v23;
    v58 = sub_21D9D9718;
    v59 = v24;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v57 = sub_21D472CC4;
    *(&v57 + 1) = &block_descriptor_257;
    v25 = _Block_copy(&aBlock);
    sub_21DBF8E0C();
    v26 = v18;

    [a1 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v25}];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_40;
    }

    [v26 endEditing];

    v28 = sub_21D9D9714;
    v14 = v50;
  }

  else
  {

    v28 = 0;
  }

  sub_21D0D0E88(v28);
  sub_21D0D8CF0(0, &qword_280D177E0);
  v29 = a3;
  if (sub_21DBFB63C())
  {
    if (qword_280D0F2B8 == -1)
    {
LABEL_17:
      v30 = sub_21DBF84BC();
      __swift_project_value_buffer(v30, qword_280D0F2C0);
      v31 = sub_21DBF84AC();
      v32 = sub_21DBFAE9C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21D0C9000, v31, v32, "Ignoring edit(title:) because value is the same", v33, 2u);
        MEMORY[0x223D46520](v33, -1, -1);
      }

      return 0;
    }

LABEL_40:
    swift_once();
    goto LABEL_17;
  }

  [v7 setTitle_];
  if (a3 != 1)
  {
    v37 = [v7 primaryLocaleInferredFromLastUsedKeyboard];
    if (v37)
    {
      v38 = v37;
      v36 = sub_21DBFA16C();
      v35 = v39;

      if (!a3)
      {
LABEL_32:
        [v7 setPrimaryLocaleInferredFromLastUsedKeyboard_];

        goto LABEL_33;
      }

      if (v36 == a2 && v35 == a3)
      {
        v36 = a2;
        v35 = a3;
        goto LABEL_33;
      }

      if (sub_21DBFC64C())
      {
        goto LABEL_33;
      }
    }

    else
    {
      v36 = 0;
      v35 = 0;
      if (!a3)
      {
        goto LABEL_33;
      }
    }

    v29 = sub_21DBFA12C();
    goto LABEL_32;
  }

  v35 = 1;
  v36 = a2;
LABEL_33:
  v40 = [v7 listChangeItem];
  if (v40)
  {
    v41 = v40;
    v58 = 0;
    aBlock = 0u;
    v57 = 0u;
    sub_21D0D3954(&aBlock, v54, &unk_27CE60D80);
    v42 = qword_280D1AA10;
    v43 = v41;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = qword_280D1AA18;
    sub_21D0CF7E0(&aBlock, &unk_27CE60D80);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    v52 = type metadata accessor for TTRUserDefaults();
    v53 = &protocol witness table for TTRUserDefaults;
    *&v51 = v44;
    *(inited + 64) = 0;
    *(inited + 16) = v43;
    *(inited + 56) = v55;
    v46 = v54[0];
    *(inited + 40) = v54[1];
    *(inited + 24) = v46;
    sub_21D0D15E0(&v51, inited + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_21DC09CF0;
    v48 = v44;
    *(v47 + 32) = [v7 objectID];
    sub_21D1BF9F4();

    swift_setDeallocating();
    sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
    __swift_destroy_boxed_opaque_existential_0(inited + 72);
    v14 = v50;
  }

  else
  {
  }

  v49 = swift_allocObject();
  v49[2] = v14;
  v49[3] = v36;
  v49[4] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
  result = swift_allocObject();
  *(result + 16) = sub_21D9D96D0;
  *(result + 24) = v49;
  return result;
}

uint64_t sub_21D9CABB8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v41 = a4;
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v42 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  v11 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21DBF563C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v43 = *(a1 + 16);
  sub_21D0D3954(a2, &v36 - v16, &qword_27CE58D60);
  v18 = sub_21DBF509C();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = sub_21DBF4EDC();
    (*(v19 + 8))(v17, v18);
  }

  v21 = v43;
  [v43 setDueDateComponentsWithAlarmsIfNeeded_];

  v22 = v39;
  v39 = a1;
  sub_21D9C9584(v22);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v23 = sub_21DBF55BC();
  v24 = v38;
  v25 = *(v38 + 8);
  v26 = v14;
  v27 = v40;
  v25(v26, v40);
  [v21 setLastBannerPresentationDate_];

  sub_21D0D3954(v41, v10, &unk_27CE60DA0);
  v28 = v42;
  if ((*(v11 + 48))(v10, 1, v42) == 1)
  {
    return sub_21D0CF7E0(v10, &unk_27CE60DA0);
  }

  v30 = v36;
  sub_21D9D9028(v10, v36, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
  v31 = v37;
  sub_21D0D3954(v30, v37, &qword_27CE58D68);
  if ((*(v24 + 48))(v31, 1, v27) == 1)
  {
    v32 = 0;
  }

  else
  {
    v33 = sub_21DBF55BC();
    v34 = v27;
    v32 = v33;
    v25(v31, v34);
  }

  [v43 setAlternativeDisplayDateDate:v32 forCalendar:?];

  TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(*(v30 + *(v28 + 20)));
  v44.value._rawValue = *(v30 + *(v28 + 24));
  v44.is_nil = 0;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v44, v35);
  return sub_21D9D9170(v30, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
}

uint64_t sub_21D9CB054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_21D1074E8(a3, &v10 - v6, type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties);
  v8 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_21D9C50E0(a2, v7);
  return sub_21D0CF7E0(v7, &unk_27CE60DA0);
}

uint64_t sub_21D9CB16C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;
  result = sub_21DBF8E0C();
  for (i = 0; v9; result = sub_21D9D9170(v6, type metadata accessor for TTRRecurrenceRuleModel))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_21D1074E8(*(a2 + 48) + *(v4 + 72) * (v14 | (v13 << 6)), v6, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21D9C6FDC(v6);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(a2 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_21D9CB324(void *a1)
{
  v3 = [*(v1 + 16) assignmentContext];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 assignments];
    sub_21D0D8CF0(0, &qword_27CE59850);
    sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850);
    v5 = sub_21DBFAAAC();

    LOBYTE(v4) = sub_21D1E22D8(a1, v5);

    if (v4)
    {
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v6 = sub_21DBF84BC();
      __swift_project_value_buffer(v6, qword_280D0F2C0);
      v7 = sub_21DBF84AC();
      v8 = sub_21DBFAE9C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_21D0C9000, v7, v8, "Ignoring add(assignment:) because the assignment has already been added", v9, 2u);
        MEMORY[0x223D46520](v9, -1, -1);
      }
    }

    else
    {
      [v12 addAssignment_];
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      v11 = a1;
      sub_21D182E74(sub_21D9D974C, v10);
    }
  }
}

void sub_21D9CB53C(void *a1, uint64_t a2, id a3, char a4)
{
  v5 = off_282EEAE50;
  v6 = sub_21D0D8CF0(0, &qword_280D0C218);
  v7 = (v5)(v6, &protocol witness table for REMReminderHashtagContextChangeItem);
  v8 = v7 & 0xC000000000000001;
  if ((a4 & 1) == 0)
  {
    if (v8)
    {
      swift_unknownObjectRetain();
      sub_21DBFBD1C();
      sub_21D0D8CF0(0, &qword_280D0C348);
      sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
      sub_21DBFAB5C();
      v14 = v51;
      v15 = v52;
      v16 = v53;
      v17 = v54;
      v18 = v55;
    }

    else
    {
      v31 = -1 << *(v7 + 32);
      v15 = v7 + 56;
      v16 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v18 = v33 & *(v7 + 56);
      v17 = 0;
      v14 = sub_21DBF8E0C();
    }

    v46 = v16;
    v34 = (v16 + 64) >> 6;
    while (1)
    {
      if (v14 < 0)
      {
        if (!sub_21DBFBDBC())
        {
          goto LABEL_46;
        }

        sub_21D0D8CF0(0, &qword_280D0C348);
        swift_dynamicCast();
        v39 = v50;
        v37 = v17;
        v38 = v18;
        if (!v50)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v35 = v17;
        v36 = v18;
        v37 = v17;
        if (!v18)
        {
          while (1)
          {
            v37 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v37 >= v34)
            {
              goto LABEL_46;
            }

            v36 = *(v15 + 8 * v37);
            ++v35;
            if (v36)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
          return;
        }

LABEL_36:
        v38 = (v36 - 1) & v36;
        v39 = *(*(v14 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
        if (!v39)
        {
          goto LABEL_46;
        }
      }

      v40 = [v39 name];
      v41 = sub_21DBFA16C();
      v43 = v42;

      if (v41 == a1 && v43 == a2)
      {
      }

      else
      {
        v45 = sub_21DBFC64C();

        if ((v45 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if ([v39 type] == a3)
      {
        goto LABEL_46;
      }

LABEL_30:

      v17 = v37;
      v18 = v38;
    }
  }

  if (v8)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
    sub_21DBFAB5C();
    v10 = v51;
    v9 = v52;
    v11 = v53;
    v12 = v54;
    v13 = v55;
  }

  else
  {
    v19 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v11 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v13 = v21 & *(v7 + 56);
    v12 = 0;
    v10 = sub_21DBF8E0C();
  }

  v22 = (v11 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v23 = v12;
  v24 = v13;
  for (i = v12; !v24; ++v23)
  {
    i = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_50;
    }

    if (i >= v22)
    {
      goto LABEL_46;
    }

    v24 = *(v9 + 8 * i);
  }

  v26 = (v24 - 1) & v24;
  v27 = *(*(v10 + 48) + ((i << 9) | (8 * __clz(__rbit64(v24)))));
  if (v27)
  {
    do
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      v28 = [v27 objectID];
      v29 = [a1 objectID];
      v30 = sub_21DBFB63C();

      if (v30)
      {
        break;
      }

      v12 = i;
      v13 = v26;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (!sub_21DBFBDBC())
      {
        break;
      }

      sub_21D0D8CF0(0, &qword_280D0C348);
      swift_dynamicCast();
      v27 = v50;
      i = v12;
      v26 = v13;
    }

    while (v50);
  }

LABEL_46:
  sub_21D0CFAF8();
}

uint64_t sub_21D9CBA60(uint64_t a1, void *a2, char a3)
{
  v10 = 0;
  v11 = 0;
  v9 = a2;
  v12 = 1;
  v4 = a2;
  v5 = sub_21D9C7BBC(&v9, a3);
  v7 = v6;
  sub_21D24B434(v9, v10, v11, v12);
  if (!v5)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_21D9CBAD8(void *a1, void *a2)
{
  if ([a1 type] != 1)
  {
    return 0;
  }

  v5 = *(v2 + 16);
  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    if ([a1 type] == 1)
    {
      v47 = v2;
      v48 = a2;
      v8 = swift_allocObject();
      *(v8 + 16) = MEMORY[0x277D84F90];
      v9 = [a1 objectIdentifier];
      v10 = sub_21DBFA16C();
      v12 = v11;

      v13 = [v7 string];
      v14 = sub_21DBFA16C();
      v16 = v15;

      v17 = MEMORY[0x223D42B30](v14, v16);

      v18 = swift_allocObject();
      v18[2] = v10;
      v18[3] = v12;
      v18[4] = v8;
      v54 = sub_21D9D9744;
      v55 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_21D472974;
      v53 = &block_descriptor_209_0;
      v19 = _Block_copy(&aBlock);

      [v7 rem:0 enumerateHashtagInRange:v17 options:0 usingBlock:v19];
      _Block_release(v19);
      swift_beginAccess();
      if (*(*(v8 + 16) + 16))
      {
        a2 = v48;
        v20 = v48;
        v21 = sub_21D479BC4(v7, (v8 + 16), v48);

        v22 = sub_21D9CA3E0(v21, 0, 1);
      }

      else
      {

        v22 = 0;
        a2 = v48;
      }
    }

    else
    {

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [v5 notes];
  if (!v23)
  {
    goto LABEL_15;
  }

  v24 = v23;
  if ([a1 type] != 1)
  {

LABEL_15:
    v40 = 0;
    goto LABEL_16;
  }

  v49 = a2;
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F90];
  v26 = [a1 objectIdentifier];
  v27 = sub_21DBFA16C();
  v29 = v28;

  v30 = [v24 string];
  v31 = sub_21DBFA16C();
  v33 = v32;

  v34 = MEMORY[0x223D42B30](v31, v33);

  v35 = swift_allocObject();
  v35[2] = v27;
  v35[3] = v29;
  v35[4] = v25;
  v54 = sub_21D9D8FD0;
  v55 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_21D472974;
  v53 = &block_descriptor_201_0;
  v36 = _Block_copy(&aBlock);

  [v24 rem:0 enumerateHashtagInRange:v34 options:0 usingBlock:v36];
  _Block_release(v36);
  swift_beginAccess();
  if (!*(*(v25 + 16) + 16))
  {

    goto LABEL_15;
  }

  v37 = v49;
  v38 = sub_21D479BC4(v24, (v25 + 16), v49);

  v39 = v38;
  v40 = sub_21D9C7928(v38);

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64910);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21DC08D20;
  *(v41 + 32) = v22;
  *(v41 + 40) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
  v42 = swift_allocObject();
  v56 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64888);
  sub_21D0D0F1C(&qword_280D0C3F8, &qword_27CE64888);
  v43 = sub_21DBFA41C();

  if (v43 >> 62)
  {
    v44 = sub_21DBFBD7C();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v44)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    result = v42;
    *(v42 + 16) = sub_21D9D978C;
    *(v42 + 24) = v45;
    return result;
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_21D9CC104(void **a1, uint64_t a2, void *a3, char a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8)
  {
    v15 = v7;
    v9 = *(v8 + 16);

    v9(&v15);
  }

  v16 = 0;
  v17 = 0;
  v15 = a3;
  v18 = 1;
  v10 = a3;
  v11 = sub_21D9D7AEC(&v15, a4 & 1);
  v13 = v12;
  sub_21D24B434(v15, v16, v17, v18);
  if (!v11)
  {
    return 0;
  }

  return v13;
}

id sub_21D9CC1E4(void **a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    v14 = *a1;
    (*(a2 + 16))(&v14);
  }

  v15 = 0;
  v16 = 0;
  v14 = a3;
  v17 = 1;
  v11 = 0;
  v12 = 0;
  v10 = a4;
  v13 = 1;
  v6 = a3;
  v7 = a4;
  v8 = sub_21D9C7D50(&v14, &v10, 1);
  sub_21D24B434(v10, v11, v12, v13);
  sub_21D24B434(v14, v15, v16, v17);
  return v8;
}

uint64_t sub_21D9CC298(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v12 = [result objectIdentifier];
    v13 = sub_21DBFA16C();
    v15 = v14;

    if (v13 == a5 && v15 == a6)
    {
    }

    else
    {
      v17 = sub_21DBFC64C();

      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    swift_beginAccess();
    v18 = *(a7 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 16) = v18;
    if ((result & 1) == 0)
    {
      result = sub_21D211158(0, *(v18 + 16) + 1, 1, v18);
      v18 = result;
      *(a7 + 16) = result;
    }

    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_21D211158((v19 > 1), v20 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 16) = v20 + 1;
    v21 = v18 + 16 * v20;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    *(a7 + 16) = v18;
  }

  return result;
}

uint64_t TTRReminderEditor.deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);

  return v0;
}

uint64_t TTRReminderEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

id static TTRReminderEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

void sub_21D9CC4B0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = sub_21D9D6AE0(*a1, a2, a3, a4);

  *a5 = v8;
}

id static TTRReminderEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedReminderChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateReminder_];

  return v2;
}

id static TTRReminderEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id sub_21D9CC5C4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_21D9D7A2C(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D9CC5F4(void *a1, id a2)
{
  v2 = [a2 _trackedReminderChangeItemForObjectID_];

  return v2;
}

id sub_21D9CC634(void *a1, id a2)
{
  v2 = [a2 updateReminder_];

  return v2;
}

uint64_t sub_21D9CC6A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15RemindersUICore17TTRReminderEditorC10changeItem11undoContextACSo017REMReminderChangeF0C_AA07TTRUndoH0_pSgtcfC_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t TTRReminderEditor.AllDayColloquialDateType.init(dueDateComponents:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v5 = sub_21DBF5A2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_21DBF563C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  v17 = *(v6 + 8);
  v17(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE58D68);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_280D0F2C0);
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAEBC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to extract date from due date components when checking for colloquial date type", v21, 2u);
      MEMORY[0x223D46520](v21, -1, -1);
    }

    (*(v13 + 8))(a2, v12);
    v22 = sub_21DBF509C();
    result = (*(*(v22 - 8) + 8))(a1, v22);
    v24 = 4;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v25 = sub_21DBF589C();
    v17(v8, v5);
    if (v25)
    {
      v26 = *(v13 + 8);
      v26(a2, v12);
      v27 = sub_21DBF509C();
      (*(*(v27 - 8) + 8))(a1, v27);
      result = (v26)(v15, v12);
      v24 = 2;
    }

    else
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v28 = sub_21DBF590C();
      v17(v8, v5);
      if (v28)
      {
        v29 = *(v13 + 8);
        v29(a2, v12);
        v30 = sub_21DBF509C();
        (*(*(v30 - 8) + 8))(a1, v30);
        result = (v29)(v15, v12);
        v24 = 3;
      }

      else
      {
        type metadata accessor for TTRReminderEditor();
        sub_21D9CCBE4(v15, a2, &v34);
        v31 = *(v13 + 8);
        v31(a2, v12);
        v32 = sub_21DBF509C();
        (*(*(v32 - 8) + 8))(a1, v32);
        result = (v31)(v15, v12);
        if (v34 == 2)
        {
          v24 = 4;
        }

        else
        {
          v24 = v34 & 1;
        }
      }
    }
  }

  *v33 = v24;
  return result;
}

uint64_t sub_21D9CCBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v131 = a2;
  v133 = a3;
  v130 = sub_21DBF58EC();
  v134 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A0C();
  v126 = *(v5 - 8);
  v127 = v5;
  MEMORY[0x28223BE20](v5);
  v125 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v120 = &v102 - v10;
  v128 = sub_21DBF563C();
  v124 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v118 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v102 - v13;
  MEMORY[0x28223BE20](v14);
  v117 = &v102 - v15;
  v16 = sub_21DBF4D0C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v112 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v122 = &v102 - v20;
  MEMORY[0x28223BE20](v21);
  v113 = &v102 - v22;
  MEMORY[0x28223BE20](v23);
  v121 = &v102 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610);
  MEMORY[0x28223BE20](v25 - 8);
  v114 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v102 - v28;
  MEMORY[0x28223BE20](v30);
  v116 = &v102 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v102 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v102 - v36;
  v38 = sub_21DBF5A2C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v102 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v115 = a1;
  sub_21DBF595C();
  v132 = v17;
  v42 = *(v17 + 48);
  if (v42(v37, 1, v16) == 1)
  {
    (*(v39 + 8))(v41, v38);
    v43 = &qword_27CE5C610;
    v44 = v37;
LABEL_16:
    result = sub_21D0CF7E0(v44, v43);
    v89 = 2;
    goto LABEL_17;
  }

  v110 = v38;
  v111 = v39;
  sub_21D0CF7E0(v37, &qword_27CE5C610);
  sub_21DBF595C();
  v45 = v42(v34, 1, v16);
  v46 = MEMORY[0x277CC98E8];
  v47 = v16;
  v108 = v42;
  v109 = v16;
  if (v45 == 1)
  {
    sub_21D0CF7E0(v34, &qword_27CE5C610);
  }

  else
  {
    v107 = v29;
    v48 = *(v132 + 32);
    v49 = v121;
    v104 = v132 + 32;
    v103 = v48;
    v48(v121, v34, v16);
    v51 = v125;
    v50 = v126;
    v52 = v127;
    (*(v126 + 104))(v125, *MEMORY[0x277CC9968], v127);
    v53 = v123;
    sub_21DBF4CCC();
    v54 = v120;
    sub_21DBF599C();
    v55 = v124;
    v56 = *(v124 + 8);
    v57 = v128;
    v106 = v124 + 8;
    v105 = v56;
    v56(v53, v128);
    (*(v50 + 8))(v51, v52);
    if ((*(v55 + 48))(v54, 1, v57) == 1)
    {
      v58 = v109;
      (*(v132 + 8))(v49, v109);
      sub_21D0CF7E0(v54, &qword_27CE58D68);
      v47 = v58;
      v42 = v108;
      v29 = v107;
    }

    else
    {
      v59 = v117;
      (*(v55 + 32))(v117, v54, v57);
      v60 = v134;
      v62 = v129;
      v61 = v130;
      (*(v134 + 104))(v129, *MEMORY[0x277CC98E8], v130);
      v63 = v116;
      sub_21DBF587C();
      (*(v60 + 8))(v62, v61);
      v47 = v109;
      v64 = v108(v63, 1, v109);
      v29 = v107;
      if (v64 != 1)
      {
        v90 = v113;
        v103(v113, v63, v47);
        v91 = v121;
        if (sub_21DBF4CEC())
        {
          v92 = *(v132 + 8);
          v92(v90, v47);
          v105(v59, v128);
          v92(v91, v47);
          result = (*(v111 + 8))(v41, v110);
          v89 = 0;
          goto LABEL_17;
        }

        v99 = sub_21DBF4CEC();
        v100 = *(v132 + 8);
        v100(v90, v47);
        v105(v59, v128);
        v100(v91, v47);
        result = (*(v111 + 8))(v41, v110);
        goto LABEL_24;
      }

      v105(v59, v128);
      (*(v132 + 8))(v121, v47);
      sub_21D0CF7E0(v63, &qword_27CE5C610);
      v42 = v108;
    }

    v46 = MEMORY[0x277CC98E8];
  }

  v65 = *v46;
  v66 = v134;
  v67 = *(v134 + 104);
  v68 = v129;
  v69 = v130;
  LODWORD(v121) = v65;
  v120 = v67;
  (v67)(v129);
  sub_21DBF587C();
  v70 = *(v66 + 8);
  v134 = v66 + 8;
  v70(v68, v69);
  if (v42(v29, 1, v47) == 1)
  {
    (*(v111 + 8))(v41, v110);
    v43 = &qword_27CE5C610;
    v44 = v29;
    goto LABEL_16;
  }

  v117 = v70;
  v71 = *(v132 + 32);
  v116 = (v132 + 32);
  v113 = v71;
  (v71)(v122, v29, v47);
  v73 = v125;
  v72 = v126;
  v74 = v127;
  (*(v126 + 104))(v125, *MEMORY[0x277CC9968], v127);
  v75 = v123;
  sub_21DBF4CCC();
  v76 = v119;
  sub_21DBF599C();
  v77 = v124;
  v78 = *(v124 + 8);
  v79 = v128;
  v131 = v124 + 8;
  v123 = v78;
  (v78)(v75, v128);
  (*(v72 + 8))(v73, v74);
  v80 = (*(v77 + 48))(v76, 1, v79);
  v81 = v110;
  if (v80 == 1)
  {
    (*(v132 + 8))(v122, v109);
    (*(v111 + 8))(v41, v81);
    v43 = &qword_27CE58D68;
    v44 = v76;
    goto LABEL_16;
  }

  v82 = v76;
  v83 = v118;
  (*(v77 + 32))(v118, v82, v79);
  v84 = v129;
  v85 = v130;
  (v120)(v129, v121, v130);
  v86 = v114;
  sub_21DBF587C();
  (v117)(v84, v85);
  v87 = v109;
  if (v108(v86, 1, v109) == 1)
  {
    (v123)(v83, v79);
    (*(v132 + 8))(v122, v87);
    (*(v111 + 8))(v41, v81);
    v43 = &qword_27CE5C610;
    v44 = v86;
    goto LABEL_16;
  }

  v93 = v112;
  (v113)(v112, v86, v87);
  v94 = v122;
  v95 = sub_21DBF4CEC();
  v96 = v132;
  v97 = v111;
  if (v95)
  {
    v98 = *(v132 + 8);
    v98(v93, v87);
    (v123)(v118, v128);
    v98(v94, v87);
    result = (*(v97 + 8))(v41, v81);
    v89 = 0;
    goto LABEL_17;
  }

  v99 = sub_21DBF4CEC();
  v101 = *(v96 + 8);
  v101(v93, v87);
  (v123)(v118, v128);
  v101(v94, v87);
  result = (*(v97 + 8))(v41, v81);
LABEL_24:
  if (v99)
  {
    v89 = 1;
  }

  else
  {
    v89 = 2;
  }

LABEL_17:
  *v133 = v89;
  return result;
}

BOOL static TTRReminderEditor.AllDayColloquialDateType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t static TTRReminderEditor.startOfWeekDate(now:)@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_21DBF4D0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21DBF58EC();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v31 = sub_21DBF5A2C();
  v16 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v29 = v2;
  v30 = v1;
  (*(v2 + 56))(v15, 1, 1, v1);
  if (sub_21DBF58FC())
  {
    sub_21DBF595C();
  }

  else
  {
    v19 = v27;
    (*(v4 + 104))(v6, *MEMORY[0x277CC98E8], v27);
    sub_21DBF587C();
    (*(v4 + 8))(v6, v19);
  }

  sub_21D0CF7E0(v15, &qword_27CE5C610);
  sub_21D0D523C(v12, v15, &qword_27CE5C610);
  sub_21D0D3954(v15, v9, &qword_27CE5C610);
  v21 = v29;
  v20 = v30;
  if ((*(v29 + 48))(v9, 1, v30) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5C610);
    (*(v16 + 8))(v18, v31);
    sub_21D0CF7E0(v9, &qword_27CE5C610);
    v22 = 1;
    v23 = v32;
  }

  else
  {
    v24 = v28;
    (*(v21 + 32))(v28, v9, v20);
    v23 = v32;
    sub_21DBF4CCC();
    (*(v21 + 8))(v24, v20);
    sub_21D0CF7E0(v15, &qword_27CE5C610);
    (*(v16 + 8))(v18, v31);
    v22 = 0;
  }

  v25 = sub_21DBF563C();
  return (*(*(v25 - 8) + 56))(v23, v22, 1, v25);
}

uint64_t TTRReminderEditor.WeekendType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D9CDF64@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v1 = sub_21DBF5A0C();
  v98 = *(v1 - 8);
  v99 = v1;
  MEMORY[0x28223BE20](v1);
  v97 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v75 - v4;
  v101 = sub_21DBF563C();
  v103 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64870);
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x28223BE20](v8);
  v100 = &v75 - v9;
  v10 = sub_21DBF58EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v94 = &v75 - v17;
  MEMORY[0x28223BE20](v18);
  v102 = &v75 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  v23 = sub_21DBF4D0C();
  v104 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v82 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v92 = &v75 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v75 - v28;
  v30 = sub_21DBF5A2C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v34 = *(v11 + 104);
  v85 = *MEMORY[0x277CC98E8];
  v86 = v11 + 104;
  v84 = v34;
  v34(v13);
  sub_21DBF587C();
  v35 = *(v11 + 8);
  v87 = v13;
  v36 = v13;
  v37 = v104;
  v89 = v10;
  v88 = v11 + 8;
  v83 = v35;
  v35(v36, v10);
  v38 = *(v37 + 48);
  if (v38(v22, 1, v23) != 1)
  {
    v93 = v31;
    v79 = v30;
    v44 = *(v37 + 32);
    v80 = v29;
    v78 = v44;
    v44(v29, v22, v23);
    v45 = v102;
    sub_21DBF595C();
    v81 = v23;
    v77 = v38;
    if (v38(v45, 1, v23) == 1)
    {
      v75 = v37 + 32;
      sub_21D0CF7E0(v45, &qword_27CE5C610);
      v47 = v97;
      v46 = v98;
      v48 = *(v98 + 104);
      LODWORD(v102) = *MEMORY[0x277CC9968];
      v49 = v99;
      v76 = v48;
      v48(v97);
      v50 = v96;
      sub_21DBF599C();
      v98 = *(v46 + 8);
      (v98)(v47, v49);
      v51 = v101;
      v52 = (*(v103 + 48))(v50, 1, v101);
      v53 = v93;
      if (v52 == 1)
      {
        (*(v37 + 8))(v80, v81);
        (*(v53 + 8))(v33, v79);
        v39 = &qword_27CE58D68;
        v40 = v50;
        goto LABEL_3;
      }

      v61 = v95;
      (*(v103 + 32))(v95, v50, v51);
      v76(v47, v102, v49);
      v62 = v94;
      sub_21DBF588C();
      (v98)(v47, v49);
      v55 = v81;
      v63 = v33;
      if (v77(v62, 1, v81) == 1)
      {
        (*(v103 + 8))(v61, v51);
        (*(v37 + 8))(v80, v55);
        (*(v93 + 8))(v33, v79);
LABEL_12:
        v39 = &qword_27CE5C610;
        v40 = v62;
        goto LABEL_3;
      }

      v64 = v92;
      v57 = v78;
      v78(v92, v62, v55);
      v65 = sub_21DBF4CFC();
      *v66 = *v66 + -1.0;
      v65(v108, 0);
      v67 = v80;
      if (sub_21DBF4CBC())
      {
        v68 = v91;
        sub_21DBF4CCC();
        v69 = v87;
        v70 = v89;
        v84(v87, v85, v89);
        v62 = v90;
        sub_21DBF587C();
        v83(v69, v70);
        v102 = v63;
        v71 = *(v103 + 8);
        v72 = v101;
        v71(v68, v101);
        v73 = *(v37 + 8);
        v73(v92, v55);
        v71(v95, v72);
        v73(v67, v55);
        (*(v93 + 8))(v102, v79);
        if (v77(v62, 1, v55) == 1)
        {
          goto LABEL_12;
        }

        v74 = v82;
        v57 = v78;
        v78(v82, v62, v55);
        v54 = 1;
        v56 = v74;
        v43 = v106;
      }

      else
      {
        (*(v37 + 8))(v64, v55);
        (*(v103 + 8))(v95, v101);
        (*(v93 + 8))(v63, v79);
        v54 = 0;
        v43 = v106;
        v56 = v67;
      }
    }

    else
    {
      (*(v93 + 8))(v33, v79);
      sub_21D0CF7E0(v45, &qword_27CE5C610);
      v54 = 1;
      v43 = v106;
      v55 = v81;
      v56 = v80;
      v57 = v78;
    }

    v58 = v100;
    v57(v100, v56, v55);
    *(v58 + *(v43 + 48)) = v54;
    v59 = v107;
    sub_21D0D523C(v58, v107, &qword_27CE64870);
    v42 = v59;
    v41 = 0;
    return (*(v105 + 56))(v42, v41, 1, v43);
  }

  (*(v31 + 8))(v33, v30);
  v39 = &qword_27CE5C610;
  v40 = v22;
LABEL_3:
  sub_21D0CF7E0(v40, v39);
  v41 = 1;
  v43 = v106;
  v42 = v107;
  return (*(v105 + 56))(v42, v41, 1, v43);
}

uint64_t sub_21D9CEAC0(uint64_t a1, uint64_t a2)
{
  v389 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v3 - 8);
  v375 = &v325 - v4;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0);
  MEMORY[0x28223BE20](v388);
  v396 = &v325 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648B0);
  MEMORY[0x28223BE20](v6 - 8);
  v399 = &v325 - v7;
  v394 = sub_21DBF7E0C();
  v400 = *(v394 - 8);
  MEMORY[0x28223BE20](v394);
  v378 = &v325 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v393 = &v325 - v10;
  v366 = sub_21DBF7DAC();
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v362 = &v325 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v361 = &v325 - v13;
  v364 = sub_21DBF7DCC();
  v363 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v360 = &v325 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_21DBF563C();
  v380 = *(v379 - 8);
  MEMORY[0x28223BE20](v379);
  v350 = &v325 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v348 = &v325 - v17;
  MEMORY[0x28223BE20](v18);
  v356 = &v325 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64900);
  MEMORY[0x28223BE20](v20 - 8);
  v352 = &v325 - v21;
  v358 = sub_21DBF7D8C();
  v357 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v355 = &v325 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = sub_21DBF5C4C();
  v382 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v370 = &v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v340 = &v325 - v25;
  MEMORY[0x28223BE20](v26);
  v330 = &v325 - v27;
  MEMORY[0x28223BE20](v28);
  v332 = &v325 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v30 - 8);
  v374 = &v325 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v381 = &v325 - v33;
  MEMORY[0x28223BE20](v34);
  v344 = &v325 - v35;
  MEMORY[0x28223BE20](v36);
  v349 = &v325 - v37;
  MEMORY[0x28223BE20](v38);
  v333 = &v325 - v39;
  MEMORY[0x28223BE20](v40);
  v341 = &v325 - v41;
  MEMORY[0x28223BE20](v42);
  v342 = &v325 - v43;
  MEMORY[0x28223BE20](v44);
  v343 = &v325 - v45;
  v46 = sub_21DBF509C();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v371 = &v325 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v397 = &v325 - v50;
  MEMORY[0x28223BE20](v51);
  v377 = &v325 - v52;
  MEMORY[0x28223BE20](v53);
  v339 = &v325 - v54;
  MEMORY[0x28223BE20](v55);
  v329 = &v325 - v56;
  MEMORY[0x28223BE20](v57);
  v331 = &v325 - v58;
  MEMORY[0x28223BE20](v59);
  v373 = &v325 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v61 - 8);
  v347 = &v325 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v345 = &v325 - v64;
  MEMORY[0x28223BE20](v65);
  v390 = &v325 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648C8);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v325 - v68;
  v70 = sub_21DBF7DEC();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v384 = &v325 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v75 = &v325 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v76 - 8);
  v387 = &v325 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v395 = &v325 - v79;
  MEMORY[0x28223BE20](v80);
  v386 = &v325 - v81;
  MEMORY[0x28223BE20](v82);
  v368 = &v325 - v83;
  MEMORY[0x28223BE20](v84);
  v369 = &v325 - v85;
  MEMORY[0x28223BE20](v86);
  v367 = &v325 - v87;
  MEMORY[0x28223BE20](v88);
  v385 = &v325 - v89;
  MEMORY[0x28223BE20](v90);
  v383 = &v325 - v91;
  MEMORY[0x28223BE20](v92);
  v94 = &v325 - v93;
  MEMORY[0x28223BE20](v95);
  v335 = &v325 - v96;
  MEMORY[0x28223BE20](v97);
  v336 = &v325 - v98;
  MEMORY[0x28223BE20](v99);
  v337 = &v325 - v100;
  MEMORY[0x28223BE20](v101);
  v327 = &v325 - v102;
  MEMORY[0x28223BE20](v103);
  v328 = &v325 - v104;
  MEMORY[0x28223BE20](v105);
  v338 = &v325 - v106;
  MEMORY[0x28223BE20](v107);
  v334 = &v325 - v108;
  MEMORY[0x28223BE20](v109);
  v391 = &v325 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v325 - v112;
  MEMORY[0x28223BE20](v114);
  v116 = &v325 - v115;
  MEMORY[0x28223BE20](v117);
  v351 = &v325 - v118;
  MEMORY[0x28223BE20](v119);
  v346 = &v325 - v120;
  v122 = MEMORY[0x28223BE20](v121);
  v403 = &v325 - v123;
  v404 = v47;
  v124 = *(v47 + 56);
  v398 = v46;
  v401 = v47 + 56;
  v402 = v124;
  v124(v122);
  v392 = a1;
  sub_21DBF7F5C();
  v125 = &selRef__setContentViewMarginType_;
  v376 = (*(v71 + 48))(v69, 1, v70);
  if (v376 != 1)
  {
    (*(v71 + 32))(v75, v69, v70);
    v359 = *(v405 + 16);
    v133 = [v359 displayDate];
    if (v133)
    {
      v134 = v133;
      v135 = [v133 date];

      v136 = v390;
      sub_21DBF55FC();

      v137 = 0;
    }

    else
    {
      v137 = 1;
      v136 = v390;
    }

    v138 = v379;
    v380[7](v136, v137, 1, v379);
    v139 = v384;
    (*(v71 + 16))(v384, v75, v70);
    v140 = (*(v71 + 88))(v139, v70);
    v141 = v140 == *MEMORY[0x277D45850];
    v354 = v70;
    v353 = v71;
    v326 = v75;
    if (!v141)
    {
      if (v140 != *MEMORY[0x277D45858])
      {
        if (v140 == *MEMORY[0x277D45840])
        {
          v153 = v384;
          (*(v71 + 96))(v384, v70);
          v154 = v363;
          v155 = v360;
          v156 = v364;
          (*(v363 + 32))(v360, v153, v364);
          v157 = v361;
          sub_21DBF7DBC();
          v158 = v365;
          v159 = v362;
          v160 = v366;
          (*(v365 + 104))(v362, *MEMORY[0x277D45828], v366);
          sub_21D9D77FC(&qword_27CE64908, 255, MEMORY[0x277D45830]);
          LOBYTE(v153) = sub_21DBFA10C();
          v161 = *(v158 + 8);
          v161(v159, v160);
          v161(v157, v160);
          v162 = (v153 & 1) == 0;
          v136 = v390;
          v142 = v391;
          sub_21D9D1B94(v162, v389, v390, v405, v391);
          (*(v154 + 8))(v155, v156);
          goto LABEL_10;
        }

        if (v140 != *MEMORY[0x277D45820] && v140 != *MEMORY[0x277D45810])
        {
          if (v140 != *MEMORY[0x277D45818])
          {
            if (v140 == *MEMORY[0x277D45848])
            {
              v232 = v359;
              v233 = [v359 dueDateComponents];
              v128 = v394;
              v129 = v400;
              v131 = v398;
              v132 = v403;
              v143 = v377;
              if (v233)
              {
                v234 = v373;
                v235 = v233;
                sub_21DBF4EFC();

                v384 = *(v404 + 32);
                v236 = v351;
                (v384)(v351, v234, v131);
                v237 = v402;
                (v402)(v236, 0, 1, v131);
                v238 = v346;
                (v384)(v346, v236, v131);
                v239 = v238;
                v127 = v396;
              }

              else
              {
                v257 = 1;
                v258 = v402;
                (v402)(v351, 1, 1, v398);
                v259 = [v232 dueDateComponents];
                if (v259)
                {
                  v260 = v259;
                  sub_21DBF4EFC();

                  v257 = 0;
                }

                v261 = v343;
                (v258)(v113, v257, 1, v131);
                sub_21D0D523C(v113, v116, &qword_27CE58D60);
                v262 = *(v404 + 48);
                v384 = (v404 + 48);
                v380 = v262;
                if ((v262)(v116, 1, v131))
                {
                  sub_21D0CF7E0(v116, &qword_27CE58D60);
                  v263 = v382;
                  v264 = v372;
                  (*(v382 + 56))(v261, 1, 1, v372);
                }

                else
                {
                  sub_21DBF507C();
                  sub_21D0CF7E0(v116, &qword_27CE58D60);
                  v264 = v372;
                  v263 = v382;
                }

                v288 = v342;
                v379 = sub_21DBF55BC();
                sub_21D0D3954(v261, v288, &unk_27CE60DB0);
                v289 = *(v263 + 48);
                v290 = v289(v288, 1, v264);
                v127 = v396;
                if (v290 == 1)
                {
                  v291 = [objc_opt_self() defaultTimeZone];
                  v292 = v332;
                  sub_21DBF5C2C();

                  v293 = v342;
                  if (v289(v342, 1, v264) != 1)
                  {
                    sub_21D0CF7E0(v293, &unk_27CE60DB0);
                  }
                }

                else
                {
                  v292 = v332;
                  (*(v263 + 32))(v332, v288, v264);
                }

                v294 = objc_opt_self();
                v295 = v292;
                v296 = sub_21DBF5C0C();
                (*(v263 + 8))(v295, v264);
                v297 = v379;
                v298 = [v294 rem:v379 dateComponentsWithDate:v296 timeZone:1 isAllDay:?];

                v299 = v331;
                sub_21DBF4EFC();

                v300 = sub_21DBF4EDC();
                v301 = [v300 rem_strippingTimeZone];

                v239 = v346;
                sub_21DBF4EFC();

                v131 = v398;
                (*(v404 + 8))(v299, v398);
                sub_21D0CF7E0(v343, &unk_27CE60DB0);
                v302 = v351;
                v303 = (v380)(v351, 1, v131);
                v237 = v402;
                v132 = v403;
                if (v303 != 1)
                {
                  sub_21D0CF7E0(v302, &qword_27CE58D60);
                }
              }

              (v237)(v239, 0, 1, v131);
              sub_21D0F02F4(v239, v132, &qword_27CE58D60);
              v125 = &selRef__setContentViewMarginType_;
              v130 = v399;
              v136 = v390;
            }

            else
            {
              v128 = v394;
              v129 = v400;
              v131 = v398;
              v132 = v403;
              v143 = v377;
              if (v140 != *MEMORY[0x277D45808])
              {
                goto LABEL_140;
              }

              sub_21D0CF7E0(v403, &qword_27CE58D60);
              (v402)(v132, 1, 1, v131);
              v127 = v396;
              v130 = v399;
            }

            goto LABEL_11;
          }

          v163 = v352;
          sub_21DBF7DDC();
          v164 = v357;
          v165 = v358;
          if ((*(v357 + 48))(v163, 1, v358) == 1)
          {
            sub_21D0CF7E0(v163, &qword_27CE64900);
            v127 = v396;
            if (qword_280D0F2B8 != -1)
            {
              swift_once();
            }

            v166 = sub_21DBF84BC();
            __swift_project_value_buffer(v166, qword_280D0F2C0);
            v167 = sub_21DBF84AC();
            v168 = sub_21DBFAECC();
            v169 = os_log_type_enabled(v167, v168);
            v129 = v400;
            v131 = v398;
            v132 = v403;
            v143 = v377;
            if (v169)
            {
              v170 = swift_slowAlloc();
              *v170 = 0;
              _os_log_impl(&dword_21D0C9000, v167, v168, "could not get a closed range when one should be available", v170, 2u);
              MEMORY[0x223D46520](v170, -1, -1);
            }

            v125 = &selRef__setContentViewMarginType_;
            v171 = [v359 dueDateComponents];
            v130 = v399;
            if (v171)
            {
              v172 = v171;
              sub_21DBF4EFC();

              v125 = &selRef__setContentViewMarginType_;
              v173 = 0;
            }

            else
            {
              v173 = 1;
            }

            v136 = v390;
            (v402)(v94, v173, 1, v131);
            v256 = v94;
            v128 = v394;
            goto LABEL_138;
          }

          (*(v164 + 32))(v355, v163, v165);
          v240 = v345;
          sub_21DBF7D5C();
          v241 = v380;
          v242 = v380[6];
          v243 = (v242)(v240, 1, v138);
          v127 = v396;
          if (v243 == 1)
          {
            v244 = v348;
            (v241[2])(v348, v389, v138);
            if ((v242)(v240, 1, v138) != 1)
            {
              sub_21D0CF7E0(v240, &qword_27CE58D68);
            }
          }

          else
          {
            v244 = v348;
            (v241[4])(v348, v240, v138);
          }

          sub_21D9D77FC(&qword_27CE62FF0, 255, MEMORY[0x277CC9578]);
          v245 = v389;
          if (sub_21DBFA09C())
          {
            (v241[1])(v244, v138);
            (v241[2])(v356, v245, v138);
          }

          else
          {
            (v241[4])(v356, v244, v138);
          }

          v130 = v399;
          v246 = v347;
          sub_21D0D3954(v390, v347, &qword_27CE58D68);
          if ((v242)(v246, 1, v138) == 1)
          {
            sub_21D0CF7E0(v246, &qword_27CE58D68);
            v247 = [v359 dueDateComponents];
            v128 = v394;
            if (v247)
            {
              v248 = v335;
              v249 = v247;
              sub_21DBF4EFC();

              v250 = 0;
              v129 = v400;
              v131 = v398;
              v143 = v377;
              v251 = v349;
            }

            else
            {
              v250 = 1;
              v129 = v400;
              v131 = v398;
              v143 = v377;
              v251 = v349;
              v248 = v335;
            }

            (v402)(v248, v250, 1, v131);
            v269 = v248;
            v270 = v336;
            sub_21D0D523C(v269, v336, &qword_27CE58D60);
            if ((*(v404 + 48))(v270, 1, v131))
            {
              sub_21D0CF7E0(v270, &qword_27CE58D60);
              v271 = v382;
              v272 = v372;
              (*(v382 + 56))(v251, 1, 1, v372);
            }

            else
            {
              sub_21DBF507C();
              sub_21D0CF7E0(v270, &qword_27CE58D60);
              v272 = v372;
              v271 = v382;
            }

            v377 = sub_21DBF55BC();
            v273 = v344;
            sub_21D0D3954(v251, v344, &unk_27CE60DB0);
            v274 = *(v271 + 48);
            if (v274(v273, 1, v272) == 1)
            {
              v275 = [objc_opt_self() defaultTimeZone];
              v276 = v340;
              sub_21DBF5C2C();

              v277 = v344;
              v278 = v274(v344, 1, v272);
              v132 = v403;
              if (v278 != 1)
              {
                sub_21D0CF7E0(v277, &unk_27CE60DB0);
              }
            }

            else
            {
              v279 = *(v271 + 32);
              v276 = v340;
              v279(v340, v273, v272);
              v132 = v403;
            }

            v280 = objc_opt_self();
            v281 = sub_21DBF5C0C();
            (*(v382 + 8))(v276, v272);
            v282 = v377;
            v283 = [v280 rem:v377 dateComponentsWithDate:v281 timeZone:1 isAllDay:?];

            v284 = v339;
            sub_21DBF4EFC();

            v285 = sub_21DBF4EDC();
            v286 = [v285 rem_strippingTimeZone];

            v287 = v337;
            sub_21DBF4EFC();

            (*(v404 + 8))(v284, v131);
            sub_21D0CF7E0(v349, &unk_27CE60DB0);
            (v380[1])(v356, v379);
            (*(v357 + 8))(v355, v358);
          }

          else
          {
            (v380[4])(v350, v246, v138);
            v252 = sub_21DBF7D7C();
            v253 = [v359 dueDateComponents];
            v128 = v394;
            v254 = v404;
            if (v252)
            {
              v132 = v403;
              if (v253)
              {
                v255 = v253;
                sub_21DBF4EFC();

                LODWORD(v366) = 0;
              }

              else
              {
                LODWORD(v366) = 1;
              }

              v129 = v400;
              v143 = v377;
              v304 = v380[1];
              v305 = v379;
              (v304)(v350, v379);
              (v304)(v356, v305);
              (*(v357 + 8))(v355, v358);
              v306 = v334;
              v131 = v398;
              (v402)(v334, v366, 1, v398);
              v256 = v306;
              v125 = &selRef__setContentViewMarginType_;
              goto LABEL_137;
            }

            if (v253)
            {
              v265 = v327;
              v266 = v253;
              sub_21DBF4EFC();

              v131 = v398;
              v267 = v341;
              v268 = v328;
              (v402)(v265, 0, 1, v398);
            }

            else
            {
              v131 = v398;
              v267 = v341;
              v268 = v328;
              v265 = v327;
              (v402)(v327, 1, 1, v398);
            }

            sub_21D0D523C(v265, v268, &qword_27CE58D60);
            if ((*(v254 + 48))(v268, 1, v131))
            {
              sub_21D0CF7E0(v268, &qword_27CE58D60);
              v307 = v382;
              v308 = v372;
              (*(v382 + 56))(v267, 1, 1, v372);
              v129 = v400;
            }

            else
            {
              sub_21DBF507C();
              sub_21D0CF7E0(v268, &qword_27CE58D60);
              v129 = v400;
              v308 = v372;
              v307 = v382;
            }

            v143 = v377;
            v377 = sub_21DBF55BC();
            v309 = v333;
            sub_21D0D3954(v267, v333, &unk_27CE60DB0);
            v310 = *(v307 + 48);
            if (v310(v309, 1, v308) == 1)
            {
              v311 = [objc_opt_self() defaultTimeZone];
              v312 = v330;
              sub_21DBF5C2C();

              v313 = v333;
              v314 = v310(v333, 1, v308);
              v132 = v403;
              if (v314 != 1)
              {
                sub_21D0CF7E0(v313, &unk_27CE60DB0);
              }
            }

            else
            {
              v315 = *(v307 + 32);
              v312 = v330;
              v315(v330, v309, v308);
              v132 = v403;
            }

            v316 = objc_opt_self();
            v317 = sub_21DBF5C0C();
            (*(v382 + 8))(v312, v308);
            v318 = v377;
            v319 = [v316 rem:v377 dateComponentsWithDate:v317 timeZone:1 isAllDay:?];

            v320 = v329;
            sub_21DBF4EFC();

            v321 = sub_21DBF4EDC();
            v322 = [v321 rem_strippingTimeZone];

            sub_21DBF4EFC();
            (*(v404 + 8))(v320, v131);
            sub_21D0CF7E0(v341, &unk_27CE60DB0);
            v323 = v380[1];
            v324 = v379;
            (v323)(v350, v379);
            (v323)(v356, v324);
            (*(v357 + 8))(v355, v358);
            v287 = v338;
          }

          (v402)(v287, 0, 1, v131);
          v256 = v287;
          v125 = &selRef__setContentViewMarginType_;
          v130 = v399;
LABEL_137:
          v136 = v390;
LABEL_138:
          sub_21D0F02F4(v256, v132, &qword_27CE58D60);
          (*(v353 + 8))(v384, v354);
          goto LABEL_11;
        }
      }

      (*(v71 + 8))(v384, v70);
    }

    v142 = v391;
    sub_21D9D1B94(1, v389, v136, v405, v391);
LABEL_10:
    v132 = v403;
    sub_21D0F02F4(v142, v403, &qword_27CE58D60);
    v127 = v396;
    v128 = v394;
    v129 = v400;
    v131 = v398;
    v130 = v399;
    v125 = &selRef__setContentViewMarginType_;
    v143 = v377;
LABEL_11:
    v144 = [v359 v125[180]];
    if (v144)
    {
      v145 = v144;
      sub_21DBF4EFC();

      v146 = *(v404 + 48);
      if (!v146(v132, 1, v131))
      {
        sub_21DBF4F5C();
        sub_21DBF4F6C();
        v136 = v390;
      }

      if (!v146(v132, 1, v131))
      {
        sub_21DBF4FCC();
        sub_21DBF4FDC();
        v136 = v390;
      }

      (*(v404 + 8))(v143, v131);
      v125 = &selRef__setContentViewMarginType_;
      v130 = v399;
    }

    sub_21D0CF7E0(v136, &qword_27CE58D68);
    (*(v353 + 8))(v326, v354);
    v126 = v397;
    goto LABEL_18;
  }

  sub_21D0CF7E0(v69, &qword_27CE648C8);
  v127 = v396;
  v126 = v397;
  v128 = v394;
  v129 = v400;
  v131 = v398;
  v130 = v399;
  v132 = v403;
LABEL_18:
  sub_21DBF7F6C();
  if ((*(v129 + 48))(v130, 1, v128) == 1)
  {
    sub_21D0CF7E0(v130, &qword_27CE648B0);
    v147 = v404;
    if (v376 == 1)
    {
      goto LABEL_78;
    }

LABEL_66:
    v215 = v386;
    sub_21D0D3954(v132, v386, &qword_27CE58D60);
    v216 = [*(v405 + 16) v125[180]];
    if (v216)
    {
      v217 = v395;
      v218 = v216;
      sub_21DBF4EFC();

      v219 = 0;
      v220 = v387;
    }

    else
    {
      v219 = 1;
      v220 = v387;
      v217 = v395;
    }

    (v402)(v217, v219, 1, v131);
    v221 = *(v388 + 48);
    sub_21D0D3954(v215, v127, &qword_27CE58D60);
    sub_21D0D3954(v217, v127 + v221, &qword_27CE58D60);
    v222 = *(v147 + 48);
    if (v222(v127, 1, v131) == 1)
    {
      sub_21D0CF7E0(v217, &qword_27CE58D60);
      sub_21D0CF7E0(v215, &qword_27CE58D60);
      if (v222(v127 + v221, 1, v131) == 1)
      {
        v223 = 0;
        v132 = v403;
LABEL_76:
        sub_21D0CF7E0(v127, &qword_27CE58D60);
LABEL_79:
        sub_21D0CF7E0(v132, &qword_27CE58D60);
        return v223;
      }
    }

    else
    {
      sub_21D0D3954(v127, v220, &qword_27CE58D60);
      if (v222(v127 + v221, 1, v131) != 1)
      {
        v226 = v404;
        v227 = v127 + v221;
        v228 = v373;
        (*(v404 + 32))(v373, v227, v131);
        sub_21D9D77FC(&qword_27CE5D1A8, 255, MEMORY[0x277CC8990]);
        v229 = sub_21DBFA10C();
        v230 = *(v226 + 8);
        v230(v228, v131);
        sub_21D0CF7E0(v395, &qword_27CE58D60);
        sub_21D0CF7E0(v215, &qword_27CE58D60);
        v230(v220, v131);
        sub_21D0CF7E0(v127, &qword_27CE58D60);
        v132 = v403;
        if (v229)
        {
LABEL_78:
          v223 = 0;
          goto LABEL_79;
        }

        goto LABEL_75;
      }

      sub_21D0CF7E0(v395, &qword_27CE58D60);
      sub_21D0CF7E0(v215, &qword_27CE58D60);
      (*(v404 + 8))(v220, v131);
    }

    sub_21D0CF7E0(v127, &qword_27CE5D1A0);
    v132 = v403;
LABEL_75:
    v127 = v391;
    sub_21D0D3954(v132, v391, &qword_27CE58D60);
    v224 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
    v223 = 1;
    v225 = v375;
    (*(*(v224 - 8) + 56))(v375, 1, 1, v224);
    sub_21D9C50E0(v127, v225);
    sub_21D0CF7E0(v225, &unk_27CE60DA0);
    goto LABEL_76;
  }

  v148 = v393;
  (*(v129 + 32))(v393, v130, v128);
  v149 = v378;
  (*(v129 + 16))(v378, v148, v128);
  v150 = (*(v129 + 88))(v149, v128);
  if (v150 == *MEMORY[0x277D45868])
  {
    v151 = v383;
    v147 = v404;
    v152 = v385;
LABEL_41:
    v399 = sub_21DBFB39C();
    sub_21D0D3954(v132, v152, &qword_27CE58D60);
    v174 = *(v147 + 48);
    if (v174(v152, 1, v131) == 1)
    {
      v175 = v147;
      v176 = v128;
      v177 = v126;
      v178 = [*(v405 + 16) dueDateComponents];
      if (v178)
      {
        v179 = v367;
        v180 = v178;
        sub_21DBF4EFC();

        v151 = v383;
        v181 = 0;
      }

      else
      {
        v181 = 1;
        v179 = v367;
      }

      (v402)(v179, v181, 1, v131);
      sub_21D0D523C(v179, v151, &qword_27CE58D60);
      v182 = v385;
      v183 = v174(v385, 1, v131);
      v126 = v177;
      v128 = v176;
      v147 = v175;
      v127 = v396;
      if (v183 != 1)
      {
        sub_21D0CF7E0(v182, &qword_27CE58D60);
      }
    }

    else
    {
      (*(v147 + 32))(v151, v152, v131);
      (v402)(v151, 0, 1, v131);
    }

    if (v174(v151, 1, v131) != 1)
    {
      v192 = v151;
      goto LABEL_64;
    }

    v184 = v127;
    sub_21D0CF7E0(v151, &qword_27CE58D60);
    LODWORD(v394) = 0;
    v185 = v402;
LABEL_50:
    v186 = v128;
    v187 = [*(v405 + 16) dueDateComponents];
    if (v187)
    {
      v188 = v368;
      v189 = v187;
      sub_21DBF4EFC();

      v190 = v188;
      v191 = 0;
    }

    else
    {
      v191 = 1;
      v190 = v368;
    }

    (v185)(v190, v191, 1, v131);
    v193 = v190;
    v194 = v369;
    sub_21D0D523C(v193, v369, &qword_27CE58D60);
    if ((*(v147 + 48))(v194, 1, v131))
    {
      sub_21D0CF7E0(v194, &qword_27CE58D60);
      v195 = v382;
      v196 = v381;
      v197 = v372;
      (*(v382 + 56))(v381, 1, 1, v372);
    }

    else
    {
      v196 = v381;
      sub_21DBF507C();
      sub_21D0CF7E0(v194, &qword_27CE58D60);
      v197 = v372;
      v195 = v382;
    }

    v128 = v186;
    v198 = sub_21DBF55BC();
    v199 = v374;
    sub_21D0D3954(v196, v374, &unk_27CE60DB0);
    v200 = v195;
    v201 = *(v195 + 48);
    v127 = v184;
    if (v201(v199, 1, v197) == 1)
    {
      v202 = [objc_opt_self() defaultTimeZone];
      v203 = v370;
      sub_21DBF5C2C();

      v204 = v374;
      v205 = v201(v374, 1, v197);
      v126 = v397;
      v131 = v398;
      if (v205 != 1)
      {
        sub_21D0CF7E0(v204, &unk_27CE60DB0);
      }
    }

    else
    {
      v206 = *(v200 + 32);
      v203 = v370;
      v206(v370, v199, v197);
      v126 = v397;
      v131 = v398;
    }

    v207 = objc_opt_self();
    v208 = v203;
    v209 = sub_21DBF5C0C();
    (*(v382 + 8))(v208, v197);
    LODWORD(v208) = v394;
    v210 = [v207 rem:v198 dateComponentsWithDate:v209 timeZone:v394 isAllDay:?];

    v192 = v371;
    sub_21DBF4EFC();

    if (v208)
    {
      v211 = sub_21DBF4EDC();
      v212 = [v211 rem_strippingTimeZone];

      v213 = v373;
      sub_21DBF4EFC();

      v147 = v404;
      (*(v404 + 8))(v192, v131);
      sub_21D0CF7E0(v381, &unk_27CE60DB0);
      v214 = *(v147 + 32);
      v214(v192, v213, v131);
      v214(v126, v192, v131);
      v132 = v403;
      v125 = &selRef__setContentViewMarginType_;
LABEL_65:
      (*(v400 + 8))(v393, v128);
      sub_21D0CF7E0(v132, &qword_27CE58D60);
      v214(v132, v126, v131);
      (v402)(v132, 0, 1, v131);
      goto LABEL_66;
    }

    sub_21D0CF7E0(v381, &unk_27CE60DB0);
    v147 = v404;
LABEL_64:
    v132 = v403;
    v125 = &selRef__setContentViewMarginType_;
    v214 = *(v147 + 32);
    v214(v126, v192, v131);
    sub_21DBF4F6C();
    sub_21DBF4FDC();
    sub_21DBF4FFC();
    goto LABEL_65;
  }

  v151 = v383;
  v147 = v404;
  v152 = v385;
  if (v150 == *MEMORY[0x277D45880] || v150 == *MEMORY[0x277D45888] || v150 == *MEMORY[0x277D45878] || v150 == *MEMORY[0x277D45870])
  {
    goto LABEL_41;
  }

  if (v150 == *MEMORY[0x277D45860])
  {
    v184 = v127;
    v399 = 0;
    LODWORD(v394) = 1;
    v185 = v402;
    goto LABEL_50;
  }

  sub_21DBFC63C();
  __break(1u);
LABEL_140:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D9D1B94@<X0>(int a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v135 = a2;
  v136 = a4;
  v128 = a3;
  v125 = a1;
  v138 = a5;
  v5 = sub_21DBF5C4C();
  v131 = *(v5 - 8);
  v132 = v5;
  MEMORY[0x28223BE20](v5);
  v124 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_21DBF509C();
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v116 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v127 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v111 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v14 - 8);
  v129 = (&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v120 = &v111 - v17;
  MEMORY[0x28223BE20](v18);
  v119 = &v111 - v19;
  MEMORY[0x28223BE20](v20);
  v121 = &v111 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = &v111 - v23;
  v24 = sub_21DBF563C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v134 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v118 = &v111 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v29 - 8);
  v130 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v111 - v32;
  MEMORY[0x28223BE20](v34);
  v117 = &v111 - v35;
  MEMORY[0x28223BE20](v36);
  v114 = &v111 - v37;
  MEMORY[0x28223BE20](v38);
  v115 = &v111 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v111 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v111 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64900);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v111 - v47;
  v49 = sub_21DBF7D8C();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v111 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF7DDC();
  if ((v50[6])(v48, 1, v49) == 1)
  {
    sub_21D0CF7E0(v48, &qword_27CE64900);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v53 = sub_21DBF84BC();
    __swift_project_value_buffer(v53, qword_280D0F2C0);
    v54 = sub_21DBF84AC();
    v55 = sub_21DBFAECC();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v139;
    v58 = v137;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_21D0C9000, v54, v55, "could not get a closed range when one should be available", v59, 2u);
      MEMORY[0x223D46520](v59, -1, -1);
    }

    v60 = [*(v136 + 16) dueDateComponents];
    if (v60)
    {
      v61 = v129;
      v62 = v60;
      sub_21DBF4EFC();

      v63 = 0;
    }

    else
    {
      v63 = 1;
      v61 = v129;
    }

    v58[7](v61, v63, 1, v57);
  }

  else
  {
    v129 = v50;
    v64 = v50[4];
    v113 = v49;
    (v64)(v52, v48, v49);
    v65 = *(v25 + 56);
    v135 = v45;
    v65(v45, 1, 1, v24);
    sub_21D0D3954(v128, v42, &qword_27CE58D68);
    v66 = *(v25 + 48);
    v67 = v66(v42, 1, v24);
    v128 = v24;
    v123 = v25;
    v112 = v52;
    v111 = v66;
    if (v67 == 1)
    {
      sub_21D0CF7E0(v42, &qword_27CE58D68);
      sub_21DBF7D6C();
      v24 = v128;
      if (v66(v33, 1, v128) == 1)
      {
        v68 = v117;
        sub_21DBF7D5C();
        v24 = v128;
        v69 = v135;
        sub_21D0CF7E0(v135, &qword_27CE58D68);
        v70 = v66(v33, 1, v24);
        v71 = v139;
        v72 = v132;
        v73 = v133;
        v74 = v129;
        if (v70 != 1)
        {
          sub_21D0CF7E0(v33, &qword_27CE58D68);
        }
      }

      else
      {
        v69 = v135;
        sub_21D0CF7E0(v135, &qword_27CE58D68);
        v78 = v65;
        v68 = v117;
        (*(v123 + 32))(v117, v33, v24);
        v78(v68, 0, 1, v24);
        v71 = v139;
        v72 = v132;
        v73 = v133;
        v74 = v129;
      }

      sub_21D0D523C(v68, v69, &qword_27CE58D68);
      v77 = v137;
    }

    else
    {
      v117 = v65;
      v75 = *(v25 + 32);
      v76 = v118;
      v75(v118, v42, v24);
      if (sub_21DBF7D7C())
      {
        (*(v25 + 8))(v76, v24);
        v71 = v139;
        v77 = v137;
        v72 = v132;
        v73 = v133;
        v69 = v135;
        v74 = v129;
      }

      else
      {
        v79 = v114;
        sub_21DBF7D6C();
        if (v66(v79, 1, v24) == 1)
        {
          v80 = v115;
          sub_21DBF7D5C();
          v24 = v128;
          (*(v123 + 8))(v76, v128);
          v69 = v135;
          sub_21D0CF7E0(v135, &qword_27CE58D68);
          v81 = v66(v79, 1, v24);
          v77 = v137;
          v74 = v129;
          if (v81 != 1)
          {
            sub_21D0CF7E0(v79, &qword_27CE58D68);
          }
        }

        else
        {
          (*(v123 + 8))(v76, v24);
          v69 = v135;
          sub_21D0CF7E0(v135, &qword_27CE58D68);
          v82 = v115;
          v75(v115, v79, v24);
          v80 = v82;
          (v117)(v82, 0, 1, v24);
          v77 = v137;
          v74 = v129;
        }

        sub_21D0D523C(v80, v69, &qword_27CE58D68);
        v72 = v132;
        v73 = v133;
        v71 = v139;
      }
    }

    v83 = v130;
    sub_21D0D3954(v69, v130, &qword_27CE58D68);
    if (v111(v83, 1, v24) == 1)
    {
      sub_21D0CF7E0(v83, &qword_27CE58D68);
      v84 = [*(v136 + 16) dueDateComponents];
      if (v84)
      {
        v85 = v120;
        v86 = v84;
        sub_21DBF4EFC();

        v87 = 0;
        v88 = v113;
      }

      else
      {
        v87 = 1;
        v88 = v113;
        v85 = v120;
      }

      sub_21D0CF7E0(v69, &qword_27CE58D68);
      v74[1](v112, v88);
      v77[7](v85, v87, 1, v71);
      v61 = v85;
    }

    else
    {
      (*(v123 + 32))(v134, v83, v24);
      v89 = [*(v136 + 16) dueDateComponents];
      if (v89)
      {
        v90 = v119;
        v91 = v89;
        sub_21DBF4EFC();

        v92 = 0;
        v93 = v131;
        v94 = v121;
        v95 = v122;
      }

      else
      {
        v92 = 1;
        v93 = v131;
        v94 = v121;
        v95 = v122;
        v90 = v119;
      }

      v137 = v77[7];
      (v137)(v90, v92, 1, v71);
      sub_21D0D523C(v90, v94, &qword_27CE58D60);
      if ((v77[6])(v94, 1, v71))
      {
        sub_21D0CF7E0(v94, &qword_27CE58D60);
        (*(v93 + 56))(v73, 1, 1, v72);
      }

      else
      {
        sub_21DBF507C();
        sub_21D0CF7E0(v94, &qword_27CE58D60);
      }

      v96 = sub_21DBF55BC();
      sub_21D0D3954(v73, v95, &unk_27CE60DB0);
      v97 = *(v93 + 48);
      if (v97(v95, 1, v72) == 1)
      {
        v98 = [objc_opt_self() defaultTimeZone];
        v99 = v124;
        sub_21DBF5C2C();

        if (v97(v95, 1, v72) != 1)
        {
          sub_21D0CF7E0(v95, &unk_27CE60DB0);
        }
      }

      else
      {
        v99 = v124;
        (*(v93 + 32))(v124, v95, v72);
      }

      v100 = objc_opt_self();
      v101 = sub_21DBF5C0C();
      (*(v131 + 8))(v99, v72);
      v102 = v125;
      v103 = [v100 rem:v96 dateComponentsWithDate:v101 timeZone:v125 & 1 isAllDay:?];

      v104 = v127;
      sub_21DBF4EFC();

      if (v102)
      {
        v105 = sub_21DBF4EDC();
        v106 = [v105 rem_strippingTimeZone];

        v107 = v116;
        sub_21DBF4EFC();

        v108 = v139;
        (v77[1])(v104, v139);
        sub_21D0CF7E0(v73, &unk_27CE60DB0);
        (*(v123 + 8))(v134, v128);
        sub_21D0CF7E0(v135, &qword_27CE58D68);
        v129[1](v112, v113);
        v109 = v77[4];
        (v109)(v104, v107, v108);
        v61 = v126;
      }

      else
      {
        sub_21D0CF7E0(v73, &unk_27CE60DB0);
        (*(v123 + 8))(v134, v128);
        sub_21D0CF7E0(v135, &qword_27CE58D68);
        v129[1](v112, v113);
        v109 = v77[4];
        v61 = v126;
        v108 = v139;
      }

      (v109)(v61, v104, v108);
      (v137)(v61, 0, 1, v108);
    }
  }

  return sub_21D0D523C(v61, v138, &qword_27CE58D60);
}

uint64_t static TTRReminderEditor.canMatch(reminder:to:now:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BOOL8 *a4@<X8>)
{
  v210 = a3;
  v220 = a4;
  v215 = 0;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64878);
  MEMORY[0x28223BE20](v212);
  v226 = v193 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880);
  MEMORY[0x28223BE20](v7 - 8);
  v224 = v193 - v8;
  v225 = sub_21DBF7E8C();
  v231 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v219 = v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648B0);
  MEMORY[0x28223BE20](v10 - 8);
  v222 = v193 - v11;
  v223 = sub_21DBF7E0C();
  v228 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v227 = v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_21DBF563C();
  v200 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v197 = v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v193 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648B8);
  MEMORY[0x28223BE20](v17 - 8);
  v209 = v193 - v18;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648C0);
  v208 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v199 = v193 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648C8);
  MEMORY[0x28223BE20](v20 - 8);
  v221 = v193 - v21;
  v22 = sub_21DBF7DEC();
  v23 = *(v22 - 8);
  v229 = v22;
  v230 = v23;
  MEMORY[0x28223BE20](v22);
  v214 = v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v218 = v193 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE648D0);
  MEMORY[0x28223BE20](v27);
  v29 = v193 - v28;
  v203 = sub_21DBF7FEC();
  v204 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v202 = v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_21DBF78CC();
  v206 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v201 = v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v207 = v193 - v33;
  MEMORY[0x28223BE20](v34);
  v216 = v193 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v193 - v37;
  v39 = sub_21DBF7E5C();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = (v193 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v45 = v193 - v44;
  v234 = MEMORY[0x277D84FA0];
  v235 = MEMORY[0x277D84FA0];
  v232 = a2;
  sub_21DBF7FCC();
  v46 = (*(v40 + 48))(v38, 1, v39);
  v198 = v16;
  if (v46 == 1)
  {
    sub_21D0CF7E0(v38, &qword_27CE61B70);
LABEL_10:
    LODWORD(v217) = 0;
    v76 = v231;
    v77 = v227;
    v79 = v221;
    v78 = v222;
    v72 = v230;
    goto LABEL_11;
  }

  (*(v40 + 32))(v45, v38, v39);
  v47 = [a1 hashtagContext];
  if (!v47)
  {
    sub_21D29EC0C(&v233, 2);
    (*(v40 + 8))(v45, v39);
    goto LABEL_10;
  }

  v196 = a1;
  v195 = v47;
  v48 = [v47 hashtags];
  sub_21D0D8CF0(0, &qword_280D0C348);
  sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
  v49 = sub_21DBFAAAC();

  v50 = v215;
  sub_21D9B2298(v49);
  v215 = v50;

  sub_21DBF784C();
  (*(v40 + 16))(v42, v45, v39);
  v51 = (*(v40 + 88))(v42, v39);
  v52 = v45;
  if (v51 == *MEMORY[0x277D458A0])
  {
    v194 = v45;
    (*(v40 + 96))(v42, v39);
    v54 = *v42;
    v53 = v42[1];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78);
    v56 = v204;
    v57 = v42 + *(v55 + 64);
    v58 = v202;
    v59 = v203;
    (*(v204 + 32))(v202, v57, v203);
    sub_21DBF8E0C();
    v217 = v54;
    sub_21DBF784C();
    sub_21DBF8E0C();
    v193[1] = v53;
    sub_21DBF784C();
    v60 = sub_21DBF786C();
    v61 = sub_21DBF786C();
    v62 = *(v27 + 48);
    v193[0] = v27;
    v63 = *(v27 + 64);
    v64 = v58;
    v65 = v61;
    (*(v56 + 16))(v29, v64, v59);
    v29[v62] = (v60 & 1) == 0;
    v29[v63] = (v65 & 1) == 0;
    v66 = (*(v56 + 88))(v29, v59);
    if (v66 == *MEMORY[0x277D458F0])
    {

      if ((v60 & 1) == 0)
      {
        v67 = v65;
        v68 = v216;
        v69 = v207;
        v70 = sub_21DBF787C();
        v71 = v70;
        a1 = v196;
        v72 = v230;
        if (v67)
        {

          v73 = *(v206 + 8);
          v74 = v69;
          v75 = v205;
          v73(v201, v205);
          v73(v74, v75);
          (*(v204 + 8))(v202, v203);
          v73(v68, v75);
          (*(v40 + 8))(v194, v39);
          LODWORD(v217) = v71 ^ 1;
          v76 = v231;
          v77 = v227;
          v78 = v222;
        }

        else
        {
          v78 = v222;
          if (v70)
          {
            v155 = v216;
            v156 = v201;
            LODWORD(v217) = sub_21DBF77BC();

            v157 = *(v206 + 8);
            v158 = v156;
            v159 = v69;
            v160 = v205;
            v157(v158, v205);
            v157(v159, v160);
            (*(v204 + 8))(v202, v203);
            v157(v155, v160);
            (*(v40 + 8))(v194, v39);
            v161 = v217 ^ 1;
          }

          else
          {

            v165 = *(v206 + 8);
            v166 = v205;
            v165(v201, v205);
            v165(v69, v166);
            (*(v204 + 8))(v202, v203);
            v165(v216, v166);
            (*(v40 + 8))(v194, v39);
            v161 = 1;
          }

          LODWORD(v217) = v161;
          v76 = v231;
          v77 = v227;
        }

        v79 = v221;
        goto LABEL_11;
      }
    }

    else
    {
      if (v66 != *MEMORY[0x277D458E8])
      {
        goto LABEL_143;
      }

      if ((v60 & 1) == 0)
      {
        v150 = v216;
        v151 = v207;
        v152 = sub_21DBF77BC();
        a1 = v196;
        v72 = v230;
        if ((v65 & 1) == 0)
        {
          v78 = v222;
          if (v152)
          {

            v162 = *(v206 + 8);
            v163 = v205;
            v162(v201, v205);
            v162(v207, v163);
            (*(v204 + 8))(v202, v203);
            v162(v216, v163);
            (*(v40 + 8))(v194, v39);
            v164 = 1;
          }

          else
          {
            v167 = v216;
            v168 = v201;
            LODWORD(v217) = sub_21DBF77BC();

            v169 = *(v206 + 8);
            v170 = v168;
            v171 = v205;
            v169(v170, v205);
            v169(v207, v171);
            (*(v204 + 8))(v202, v203);
            v169(v167, v171);
            (*(v40 + 8))(v194, v39);
            v164 = v217 ^ 1;
          }

          LODWORD(v217) = v164;
          v76 = v231;
          v77 = v227;
          goto LABEL_93;
        }

        LODWORD(v217) = v152;

        v153 = *(v206 + 8);
        v154 = v205;
        v153(v201, v205);
        v153(v151, v154);
        (*(v204 + 8))(v202, v203);
        v153(v150, v154);
        (*(v40 + 8))(v194, v39);
LABEL_92:
        v76 = v231;
        v77 = v227;
        v78 = v222;
LABEL_93:
        v79 = v221;
        goto LABEL_11;
      }
    }

    a1 = v196;
    v72 = v230;
    if (v65)
    {

      v102 = *(v206 + 8);
      v103 = v205;
      v102(v201, v205);
      v102(v207, v103);
      (*(v204 + 8))(v202, v203);
      v102(v216, v103);
      (*(v40 + 8))(v194, v39);
      LODWORD(v217) = 0;
    }

    else
    {
      v144 = v216;
      v145 = v201;
      v146 = sub_21DBF77BC();

      v147 = *(v206 + 8);
      v148 = v145;
      v149 = v205;
      v147(v148, v205);
      v147(v207, v149);
      (*(v204 + 8))(v202, v203);
      v147(v144, v149);
      (*(v40 + 8))(v194, v39);
      LODWORD(v217) = v146 ^ 1;
    }

    goto LABEL_92;
  }

  v76 = v231;
  v79 = v221;
  v78 = v222;
  if (v51 == *MEMORY[0x277D458A8])
  {
    v92 = v216;
    v93 = sub_21DBF786C();

    (*(v206 + 8))(v92, v205);
    (*(v40 + 8))(v52, v39);
    LODWORD(v217) = v93 ^ 1;
    a1 = v196;
    v77 = v227;
    v72 = v230;
  }

  else
  {
    v104 = v52;
    a1 = v196;
    v72 = v230;
    if (v51 != *MEMORY[0x277D45898])
    {
LABEL_144:
      sub_21DBFC63C();
      __break(1u);
      goto LABEL_145;
    }

    sub_21D29EC0C(&v233, 0);

    (*(v206 + 8))(v216, v205);
    (*(v40 + 8))(v104, v39);
    LODWORD(v217) = 0;
    v77 = v227;
  }

LABEL_11:
  sub_21DBF7F5C();
  v80 = v229;
  v81 = (*(v72 + 48))(v79, 1, v229);
  v82 = v226;
  v83 = v223;
  if (v81 == 1)
  {
    sub_21D0CF7E0(v79, &qword_27CE648C8);
    v84 = v76;
    goto LABEL_40;
  }

  v85 = v218;
  (*(v72 + 32))(v218, v79, v80);
  v86 = a1;
  v87 = v214;
  (*(v72 + 16))(v214, v85, v80);
  v88 = v87;
  a1 = v86;
  v89 = (*(v72 + 88))(v88, v80);
  v90 = v213;
  if (v89 == *MEMORY[0x277D45850])
  {
    goto LABEL_25;
  }

  if (v89 == *MEMORY[0x277D45858] || v89 == *MEMORY[0x277D45840] || v89 == *MEMORY[0x277D45820] || v89 == *MEMORY[0x277D45810] || v89 == *MEMORY[0x277D45818])
  {
    (*(v230 + 8))(v214, v80);
    v85 = v218;
LABEL_25:
    v94 = v209;
    sub_21DBF7D9C();
    if ((*(v208 + 48))(v94, 1, v211) == 1)
    {
      (*(v230 + 8))(v85, v229);
      sub_21D0CF7E0(v94, &qword_27CE648B8);
    }

    else
    {
      v95 = v94;
      v96 = v199;
      sub_21D0D523C(v95, v199, &qword_27CE648C0);
      v97 = [a1 displayDate];
      if (v97)
      {
        v98 = v97;
        v99 = [v97 date];

        v100 = v197;
        sub_21DBF55FC();

        v101 = v198;
        (*(v200 + 32))(v198, v100, v90);
        sub_21D9D77FC(&qword_27CE62FF0, 255, MEMORY[0x277CC9578]);
        if ((sub_21DBFA09C() & 1) == 0 || (sub_21DBFA0AC() & 1) == 0)
        {
          sub_21D29EBF4(&v233, 0);
        }

        (*(v200 + 8))(v101, v90);
        sub_21D0CF7E0(v96, &qword_27CE648C0);
        (*(v230 + 8))(v218, v229);
        v77 = v227;
      }

      else
      {
        sub_21D0CF7E0(v96, &qword_27CE648C0);
        (*(v230 + 8))(v218, v229);
        LODWORD(v217) = 1;
      }
    }

    v84 = v231;
    goto LABEL_40;
  }

  if (v89 == *MEMORY[0x277D45848])
  {
    v91 = [v86 displayDate];
    (*(v230 + 8))(v218, v80);
    if (v91)
    {
    }

    else
    {
      LODWORD(v217) = 1;
    }

    v77 = v227;
    v84 = v76;
  }

  else
  {
    v131 = v218;
    if (v89 != *MEMORY[0x277D45808])
    {
LABEL_145:
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    v132 = [v86 displayDate];
    if (v132)
    {

      sub_21D29EBF4(&v233, 0);
    }

    (*(v230 + 8))(v131, v80);
    v84 = v76;
  }

LABEL_40:
  sub_21DBF7F6C();
  v105 = v228;
  if ((*(v228 + 48))(v78, 1, v83) == 1)
  {
    sub_21D0CF7E0(v78, &qword_27CE648B0);
  }

  else
  {
    (*(v105 + 32))(v77, v78, v83);
    v106 = [a1 displayDate];
    v107 = v77;
    if (v106)
    {
      v108 = v106;
      if (sub_21DBF7DFC())
      {
        (*(v228 + 8))(v107, v83);
      }

      else
      {
        sub_21D29EBF4(&v233, 0);

        (*(v228 + 8))(v107, v83);
      }
    }

    else
    {
      (*(v105 + 8))(v77, v83);
      LODWORD(v217) = 1;
    }
  }

  v109 = v225;
  v110 = sub_21DBF7E9C();
  if (v110)
  {
    v111 = v110;
    [a1 priority];
    v112 = REMReminderPriorityLevelForPriority();
    v113 = *(v111 + 16);
    v114 = 32;
    v115 = v113;
    while (v115)
    {
      v116 = *(v111 + v114);
      v114 += 8;
      --v115;
      if (v116 == v112)
      {

        goto LABEL_74;
      }
    }

    v117 = 32;
    v118 = *(v111 + 16);
    do
    {
      v119 = v118;
      if (v118-- == 0)
      {
        break;
      }

      v121 = *(v111 + v117);
      v117 += 8;
    }

    while (v121 != 1);
    v122 = a1;
    v123 = 32;
    v124 = *(v111 + 16);
    do
    {
      v125 = v124;
      if (!v124)
      {
        break;
      }

      v126 = *(v111 + v123);
      v123 += 8;
      --v124;
    }

    while (v126 != 2);
    v127 = 32;
    while (v113)
    {
      v128 = *(v111 + v127);
      v127 += 8;
      --v113;
      if (v128 == 3)
      {

        v129 = 3;
        goto LABEL_66;
      }
    }

    v130 = v119 != 0;

    if (v125)
    {
      v129 = 2;
    }

    else
    {
      v129 = v130;
    }

LABEL_66:
    a1 = v122;
    [v122 priority];
    if (REMReminderPriorityLevelForPriority() != v129)
    {
      [v122 priority];
      if (REMReminderPriorityLevelForPriority())
      {
        sub_21D29EBF4(&v233, 1);
      }

      else
      {
        LODWORD(v217) = 1;
      }
    }
  }

LABEL_74:
  v133 = sub_21DBF7FAC();
  if (v133 != 2)
  {
    v134 = v133;
    v135 = [a1 flaggedContext];
    if (v135)
    {
      v136 = v135;
      if ([v135 flagged] < 1 || (v134 & 1) != 0)
      {
        v137 = [v136 flagged];

        LODWORD(v217) = (v137 > 0) ^ v134 | v217;
      }

      else
      {
        sub_21D29EBF4(&v233, 2);
      }
    }

    else
    {
      sub_21D29EC0C(&v233, 3);
    }
  }

  v138 = v224;
  sub_21DBF7FDC();
  if ((*(v84 + 48))(v138, 1, v109) != 1)
  {
    v139 = v219;
    (*(v84 + 32))(v219, v138, v109);
    v140 = sub_21D7A608C();
    if (v140 >> 62)
    {
      v172 = v140;
      v173 = sub_21DBFBD7C();
      v140 = v172;
      if (v173)
      {
        goto LABEL_85;
      }
    }

    else if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_85:
      if ((v140 & 0xC000000000000001) != 0)
      {
        v141 = MEMORY[0x223D44740](0);
        goto LABEL_88;
      }

      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v141 = *(v140 + 32);
LABEL_88:
        v142 = v141;

        v143 = sub_21DBF7E7C();
LABEL_112:
        v175 = v143;

        v176 = v175 ^ 1;
        v177 = 1;
        goto LABEL_113;
      }

      __break(1u);
      goto LABEL_139;
    }

    v140 = sub_21D7A6080();
    if (!(v140 >> 62))
    {
      if (!*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_140:

        v176 = 0;
        v177 = 0;
LABEL_113:
        v178 = *(v212 + 64);
        *v82 = v177;
        v82[1] = v176 & 1;
        (*(v84 + 16))(&v82[v178], v139, v109);
        v179 = *(v84 + 88);
        v180 = v179(&v82[v178], v109);
        v181 = *MEMORY[0x277D458C0];
        if (v180 == *MEMORY[0x277D458C0] || v180 == *MEMORY[0x277D458C8])
        {
          if (v176 & 1 | ((v177 & 1) == 0))
          {
LABEL_116:
            v182 = *(v231 + 8);
            v182(&v82[v178], v109);
            sub_21D29EBF4(&v233, 3);
            v182(v219, v109);
            goto LABEL_131;
          }
        }

        else
        {
          if (v180 == *MEMORY[0x277D458B8])
          {
            sub_21D29EC0C(&v233, 1);
            goto LABEL_130;
          }

          if (v180 == *MEMORY[0x277D458B0])
          {
            v183 = v177;
          }

          else
          {
            v183 = 0;
          }

          if (v183)
          {
            goto LABEL_116;
          }

          if (v176)
          {
            v184 = *(v231 + 8);
            v184(v219, v109);
            v184(&v82[v178], v109);
            LODWORD(v217) = 1;
            goto LABEL_131;
          }

          if ((v177 & 1) == 0)
          {
LABEL_130:
            v186 = *(v231 + 8);
            v186(v219, v109);
            v186(&v82[v178], v109);
            goto LABEL_131;
          }
        }

        v185 = v179(&v82[v178], v109);
        if (v185 == v181)
        {
          (*(v231 + 8))(v219, v109);
          goto LABEL_131;
        }

        if (v185 == *MEMORY[0x277D458C8])
        {
          goto LABEL_130;
        }

        goto LABEL_143;
      }

      goto LABEL_108;
    }

LABEL_139:
    v191 = v140;
    v192 = sub_21DBFBD7C();
    v140 = v191;
    if (!v192)
    {
      goto LABEL_140;
    }

LABEL_108:
    if ((v140 & 0xC000000000000001) != 0)
    {
      v174 = MEMORY[0x223D44740](0);
      goto LABEL_111;
    }

    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v174 = *(v140 + 32);
LABEL_111:
      v142 = v174;

      v143 = sub_21DBF7E6C();
      goto LABEL_112;
    }

    __break(1u);
LABEL_143:
    sub_21DBFC63C();
    __break(1u);
    goto LABEL_144;
  }

  sub_21D0CF7E0(v138, &qword_27CE64880);
LABEL_131:
  v187 = v235;
  if (*(v235 + 16))
  {

    v189 = 0;
  }

  else
  {

    v187 = v234;
    if (*(v234 + 16))
    {
      v189 = 1;
    }

    else
    {

      v187 = (v217 & 1) == 0;
      v189 = 2;
    }
  }

  v190 = v220;
  *v220 = v187;
  *(v190 + 8) = v189;
  return result;
}

uint64_t static TTRReminderEditor.move(moves:saveRequest:shouldSave:undoManager:)(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = 0;
  if (a4)
  {
    v7 = type metadata accessor for TTRBasicUndoContext();
    v6 = swift_allocObject();
    *(v6 + 16) = a4;
    v8 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v34[1] = 0;
    v34[2] = 0;
  }

  v34[0] = v6;
  v34[3] = v7;
  v34[4] = v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a4;
    v29 = v9 - 1;
    for (i = (a1 + 40); ; i += 2)
    {
      v12 = *(i - 1);
      v13 = *i;
      sub_21D0D3954(v34, aBlock, &unk_27CE60D80);
      sub_21D0D3954(aBlock, v33, &unk_27CE60D80);
      v14 = v12;
      v15 = v13;
      v16 = [a2 updateReminder_];
      sub_21D0D3954(v33, v32, &unk_27CE60D80);
      v31[6] = 0;
      sub_21D0D3954(v32, v31, &unk_27CE60D80);
      v17 = [v16 fetchedCurrentDueDateDeltaAlert];
      sub_21D0CF7E0(v32, &unk_27CE60D80);
      sub_21D0CF7E0(v33, &unk_27CE60D80);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80);
      v18 = [v16 subtaskContext];
      if (v18)
      {
        v19 = v18;
        v20 = [v16 listChangeItem];
        if (v20)
        {
          v21 = v20;
          v22 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v15, v20, v19, 0);
        }

        else
        {
          v22 = v15;
        }

        [v19 insertReminderChangeItem:v22 afterReminderChangeItem:0];
      }

      else
      {
      }

      sub_21D0CF7E0(v31, &unk_27CE60D80);

      if (!v29)
      {
        break;
      }

      --v29;
    }
  }

  else
  {
    v23 = a4;
  }

  if (a3)
  {
    sub_21D0D8CF0(0, &qword_280D1B900);
    v24 = sub_21DBFB12C();
    aBlock[4] = sub_21D9C89C0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_116_0;
    v25 = _Block_copy(aBlock);
    [a2 saveWithQueue:v24 completion:v25];
    _Block_release(v25);
  }

  return sub_21D0CF7E0(v34, &unk_27CE60D80);
}

uint64_t sub_21D9D4DB4(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRecurrenceRuleModel.init(sourceRule:)(*a1, v6);
  LOBYTE(a2) = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v6, a2);
  sub_21D9D9170(v6, type metadata accessor for TTRRecurrenceRuleModel);
  return a2 & 1;
}

void *sub_21D9D4E8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6));
      v15 = *(v14 + 16);
      v7 &= v7 - 1;
      *a2 = *v14;
      *(a2 + 16) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_21D9D4F98(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_21DBF8E0C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_21DBF8E0C();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_21D9D50F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_21D1074E8(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for TTRRecurrenceRuleModel);
      v23 = v22;
      v24 = v30;
      sub_21D9D9028(v23, v30, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D9D9028(v24, a2, type metadata accessor for TTRRecurrenceRuleModel);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_21D9D5368(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v32 - v11;
  v12 = a4 + 8;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & a4[8];
  if (!a2)
  {
LABEL_19:
    v22 = 0;
LABEL_26:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a3;
    v16 = 0;
    v33 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
      v39 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      a1 = a4;
      v23 = a4[7];
      v24 = v37;
      v25 = *(v38 + 72);
      sub_21D0D3954(v23 + v25 * (v21 | (v16 << 6)), v37, &qword_27CE59D70);
      v26 = v24;
      v27 = v36;
      sub_21D0D523C(v26, v36, &qword_27CE59D70);
      v28 = v27;
      v29 = v39;
      sub_21D0D523C(v28, v39, &qword_27CE59D70);
      if (v18 == v35)
      {
        a4 = a1;
        a1 = v34;
        goto LABEL_24;
      }

      a2 = v29 + v25;
      v30 = __OFADD__(v18++, 1);
      a4 = a1;
      v16 = v22;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = v12[v20];
      ++v19;
      if (v15)
      {
        v39 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v31 = v16 + 1;
    }

    else
    {
      v31 = v17;
    }

    v22 = v31 - 1;
    a1 = v34;
LABEL_24:
    v13 = v33;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

void *sub_21D9D55E8(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v25[3] = v18[3];
      v25[4] = v19;
      v25[1] = v21;
      v25[2] = v20;
      memmove(v11, v18, 0x50uLL);
      if (v14 == v10)
      {
        sub_21D1D9B34(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      sub_21D1D9B34(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}