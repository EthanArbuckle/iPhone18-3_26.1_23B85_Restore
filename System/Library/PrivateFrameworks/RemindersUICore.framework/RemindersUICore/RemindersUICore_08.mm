id TTRParticipantModel.contactHandles.getter()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[9];
  if (v3)
  {
    v4 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21DC08D00;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if (v1)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC08D00;
      *(v6 + 32) = v2;
      *(v6 + 40) = v1;
      if (*(v5 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v6 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {
    goto LABEL_8;
  }

LABEL_7:
  if (!*(v6 + 16))
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return 0;
  }

LABEL_8:
  v7 = objc_allocWithZone(MEMORY[0x277D445D8]);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = sub_21DBFA5DC();

  v9 = sub_21DBFA5DC();

  v10 = [v7 initWithPhones:v8 emails:v9];

  return v10;
}

Swift::String __swiftcall TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(Swift::Bool prefersFirstNameOnly)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[6];
  v7 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  if (prefersFirstNameOnly)
  {
    if (v5)
    {
      v3 = v1[3];
      v4 = v1[2];
      sub_21DBF8E0C();
      goto LABEL_18;
    }

    if (v3)
    {
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_18;
    }
  }

  else
  {
    if (v3)
    {
      sub_21DBF8E0C();
      goto LABEL_18;
    }

    v12 = v1[4];
    v11 = v1[5];
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D20;
    *(v14 + 32) = v6;
    *(v14 + 40) = v13;
    *(v14 + 48) = v12;
    *(v14 + 56) = v11;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
    sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
    v15 = sub_21DBFA41C();

    if (*(v15 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
      v4 = sub_21DBFA07C();
      v3 = v16;

      goto LABEL_18;
    }
  }

  if (v7)
  {
    sub_21DBF8E0C();
    v4 = v8;
    v3 = v7;
  }

  else if (v9)
  {
    sub_21DBF8E0C();
    v4 = v10;
    v3 = v9;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF516C();
    v3 = v17;
  }

LABEL_18:
  v18 = v4;
  v19 = v3;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

Swift::String_optional __swiftcall TTRParticipantModel.monogram()()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  if (!v1 || (v6 = sub_21D1954D0(*v0, v1), !v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21DC08D20;
    if (v3)
    {
      *(v8 + 32) = sub_21D1954D0(v2, v3);
      *(v8 + 40) = v9;
      if (v5)
      {
LABEL_5:
        v10 = sub_21D1954D0(v4, v5);
        goto LABEL_8;
      }
    }

    else
    {
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      if (v5)
      {
        goto LABEL_5;
      }
    }

    v10 = 0;
    v11 = 0;
LABEL_8:
    *(v8 + 48) = v10;
    *(v8 + 56) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A28);
    sub_21D0D0F1C(&qword_27CE58A30, &qword_27CE58A28);
    v12 = sub_21DBFA41C();

    if (*(v12 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A38);
      sub_21D0D0F1C(&qword_27CE58A40, &qword_27CE58A38);
      v6 = sub_21DBFA3DC();
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

void __swiftcall TTRParticipantModel.updatingNames(with:)(RemindersUICore::TTRParticipantModel *__return_ptr retstr, CNContact with)
{
  v5 = v2[7];
  v6 = v2[9];
  v22 = v2[8];
  v24 = v2[6];
  v7 = [objc_opt_self() stringFromContact:with.super.isa style:0];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21DBFA16C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [(objc_class *)with.super.isa givenName:v22];
  v13 = sub_21DBFA16C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v13 = 0;
    v15 = 0;
  }

  v17 = [(objc_class *)with.super.isa familyName];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    v18 = 0;
    v20 = 0;
  }

  retstr->displayName.value._countAndFlagsBits = v9;
  retstr->displayName.value._object = v11;
  retstr->firstName.value._countAndFlagsBits = v13;
  retstr->firstName.value._object = v15;
  retstr->lastName.value._countAndFlagsBits = v18;
  retstr->lastName.value._object = v20;
  retstr->emailAddress.value._countAndFlagsBits = v25;
  retstr->emailAddress.value._object = v5;
  retstr->phoneNumber.value._countAndFlagsBits = v23;
  retstr->phoneNumber.value._object = v6;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
}

uint64_t REMList.participantsToShowForSharingStatus(maxCount:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (![v2 isShared])
  {
    return MEMORY[0x277D84F90];
  }

  v6 = [v2 shareeContext];
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v6;
    if ([v3 isOwnedByMe])
    {
      v9 = [v8 shareesExcludingOwner];
      v10 = sub_21D0D8CF0(0, &qword_280D17640);
      v11 = sub_21DBFA5EC();

      if (a2)
      {
        goto LABEL_36;
      }

      if (a1 < 0)
      {
        goto LABEL_63;
      }

      a2 = v11 >> 62;
      if (v11 >> 62)
      {
        goto LABEL_64;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= a1)
      {
        v13 = a1;
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a1)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v12 >= v14)
      {
        goto LABEL_14;
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      swift_unknownObjectRelease_n();
LABEL_28:
      sub_21D198A10(a1, a2, v10, v14, &qword_280D17640);
      v11 = v30;
LABEL_35:
      swift_unknownObjectRelease();
      while (1)
      {
LABEL_36:
        if (v11 >> 62)
        {
          v10 = sub_21DBFBD7C();
          if (!v10)
          {
LABEL_59:

            return MEMORY[0x277D84F90];
          }
        }

        else
        {
          v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v10)
          {
            goto LABEL_59;
          }
        }

        v62 = v7;
        v7 = &v62;
        sub_21D18E75C(0, v10 & ~(v10 >> 63), 0);
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v58 = sub_21DBFBD7C();
        result = sub_21DBFBD7C();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (v58 >= a1)
        {
          v59 = a1;
        }

        else
        {
          v59 = v58;
        }

        if (v58 < 0)
        {
          v59 = a1;
        }

        if (a1)
        {
          v14 = v59;
        }

        else
        {
          v14 = 0;
        }

        if (sub_21DBFBD7C() < v14)
        {
          goto LABEL_74;
        }

LABEL_14:
        if ((v11 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          if (v14)
          {
            v15 = 0;
            do
            {
              v16 = v15 + 1;
              sub_21DBFBF6C();
              v15 = v16;
            }

            while (v14 != v16);
          }
        }

        else
        {
          sub_21DBF8E0C();
        }

        if (a2)
        {
          a1 = sub_21DBFC3BC();
          a2 = v27;
          v10 = v28;
          v14 = v29;

          if ((v14 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v10 = 0;
          a1 = v11 & 0xFFFFFFFFFFFFFF8;
          a2 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
          v14 = (2 * v14) | 1;
          if ((v14 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        sub_21DBFC66C();
        swift_unknownObjectRetain_n();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          swift_unknownObjectRelease();
          v31 = MEMORY[0x277D84F90];
        }

        v32 = *(v31 + 16);

        if (__OFSUB__(v14 >> 1, v10))
        {
          goto LABEL_75;
        }

        if (v32 != (v14 >> 1) - v10)
        {
          goto LABEL_76;
        }

        v11 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v11)
        {
          v11 = MEMORY[0x277D84F90];
          goto LABEL_35;
        }
      }

      v33 = 0;
      v7 = v62;
      if ((v11 & 0xC000000000000001) == 0)
      {
        goto LABEL_41;
      }

LABEL_40:
      for (i = MEMORY[0x223D44740](v33, v11); ; i = *(v11 + 8 * v33 + 32))
      {
        TTRParticipantModel.init(sharee:)(i, &v63);
        v62 = v7;
        v36 = v7[2];
        v35 = v7[3];
        if (v36 >= v35 >> 1)
        {
          sub_21D18E75C((v35 > 1), v36 + 1, 1);
          v7 = v62;
        }

        v7[2] = v36 + 1;
        v37 = &v7[10 * v36];
        v37[2] = v63;
        v38 = v64;
        v39 = v65;
        v40 = v67;
        v37[5] = v66;
        v37[6] = v40;
        v37[3] = v38;
        v37[4] = v39;
        if (v10 - 1 == v33)
        {
          break;
        }

        ++v33;
        if ((v11 & 0xC000000000000001) != 0)
        {
          goto LABEL_40;
        }

LABEL_41:
        ;
      }

      goto LABEL_57;
    }

    v17 = [v8 sharedOwner];
    if (v17)
    {
      TTRParticipantModel.init(sharee:)(v17, &v63);
      v19 = *(&v63 + 1);
      v18 = v63;
      v21 = *(&v64 + 1);
      v20 = v64;
      v60 = v66;
      v61 = v65;
      v23 = *(&v67 + 1);
      v22 = v67;
LABEL_56:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8);
      v7 = swift_allocObject();
      *(v7 + 1) = xmmword_21DC08D00;
      v7[4] = v18;
      v7[5] = v19;
      v7[6] = v20;
      v7[7] = v21;
      *(v7 + 4) = v61;
      *(v7 + 5) = v60;
      v7[12] = v22;
      v7[13] = v23;
      goto LABEL_57;
    }

    v24 = [v3 sharedOwnerName];
    if (v24)
    {
      v25 = v24;
      v18 = sub_21DBFA16C();
      v19 = v26;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v41 = [v3 sharedOwnerAddress];
    if (v41)
    {
      v42 = v41;
      sub_21DBFA16C();

      sub_21DBFA1BC();

      v43 = sub_21DBFA12C();
      v44 = [v43 rem_hasMailto];

      v45 = sub_21DBFA12C();
      v46 = v45;
      if (v44)
      {

        v47 = [v46 rem_removingMailto];

        v48 = sub_21DBFA16C();
        v50 = v49;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8);
        v7 = swift_allocObject();
        *(v7 + 1) = xmmword_21DC08D00;
        v7[4] = v18;
        v7[5] = v19;
        *(v7 + 3) = 0u;
        *(v7 + 4) = 0u;
        v7[10] = v48;
        v7[11] = v50;
        v7[12] = 0;
        v7[13] = 0;
LABEL_57:

        return v7;
      }

      v51 = [v45 rem_hasTel];

      if (v51)
      {
        v52 = sub_21DBFA12C();

        v53 = [v52 rem_removingTel];

        v54 = sub_21DBFA16C();
        v56 = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8);
        v7 = swift_allocObject();
        *(v7 + 1) = xmmword_21DC08D00;
        v7[4] = v18;
        v7[5] = v19;
        *(v7 + 3) = 0u;
        *(v7 + 4) = 0u;
        *(v7 + 5) = 0u;
        v7[12] = v54;
        v7[13] = v56;
        goto LABEL_57;
      }
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_56;
  }

  return v7;
}

uint64_t static TTRSharedWithYouModel.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21D0D8CF0(0, &qword_280D17680);
  v4 = [v2 remObjectID];
  v5 = [v3 remObjectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

uint64_t TTRSharedWithYouModel.hashValue.getter()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D1970A4()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D19710C()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D19714C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21D0D8CF0(0, &qword_280D17680);
  v4 = [v2 remObjectID];
  v5 = [v3 remObjectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

id REMList.highlightToShowForSharingStatus()@<X0>(void *a1@<X8>)
{
  result = [v1 isShared];
  if (result)
  {
    result = v1;
  }

  else
  {
    v1 = 0;
  }

  *a1 = v1;
  return result;
}

void REMList.fetchSectionLite(containingReminderWith:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v102 = a1;
  v4 = sub_21DBF6F4C();
  v97 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v94 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A48);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v77 - v12;
  MEMORY[0x28223BE20](v13);
  v96 = &v77 - v14;
  v15 = sub_21DBF6D7C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21DBF6F8C();
  v100 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v99 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A50);
  MEMORY[0x28223BE20](v20 - 8);
  v90 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = &v77 - v23;
  MEMORY[0x28223BE20](v24);
  v95 = &v77 - v25;
  *&v27 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v29 = &v77 - v28;
  v30 = [v2 sectionContext];
  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = v30;
  if (![v30 hasSections])
  {

LABEL_14:
    *a2 = 1;
    v41 = 0uLL;
    *(a2 + 8) = 0u;
LABEL_25:
    *(a2 + 24) = v41;
    return;
  }

  v32 = sub_21D197D70();
  v83 = *(v32 + 16);
  v88 = a2;
  v89 = v29;
  v86 = v4;
  v87 = v31;
  v79 = v8;
  v78 = v10;
  if (v83)
  {
    v33 = 0;
    v34 = v100;
    v35 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v101 = v16 + 16;
    v36 = (v16 + 8);
    v80 = (v100 + 8);
    v37 = v98;
    v85 = v32;
    v82 = v35;
    v81 = v100 + 16;
    while (2)
    {
      if (v33 >= *(v32 + 16))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v84 = v33 + 1;
      (*(v34 + 16))(v99, v35 + *(v34 + 72) * v33, v37);
      v10 = sub_21DBF6F7C();
      v38 = 0;
      v39 = *(v10 + 2);
      while (v39 != v38)
      {
        if (v38 >= *(v10 + 2))
        {
          __break(1u);
          goto LABEL_37;
        }

        (*(v16 + 16))(v18, &v10[((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v38++], v15);
        sub_21D0D8CF0(0, &qword_280D17680);
        v8 = sub_21DBF6D5C();
        v40 = sub_21DBFB63C();

        (*(v16 + 8))(v18, v15);
        if (v40)
        {

          v42 = v100;
          v29 = v89;
          v37 = v98;
          (*(v100 + 32))(v89, v99, v98);
          v43 = 0;
          v31 = v87;
          a2 = v88;
          goto LABEL_16;
        }
      }

      v37 = v98;
      (*v80)(v99, v98);
      v33 = v84;
      v34 = v100;
      v32 = v85;
      v35 = v82;
      if (v84 != v83)
      {
        continue;
      }

      break;
    }

    v43 = 1;
    v42 = v34;
    a2 = v88;
    v29 = v89;
    v31 = v87;
  }

  else
  {

    v43 = 1;
    v37 = v98;
    v42 = v100;
  }

LABEL_16:
  (*(v42 + 56))(v29, v43, 1, v37);
  v44 = v95;
  sub_21D1993C8(v29, v95);
  v102 = *(v42 + 48);
  v45 = v102(v44, 1, v37);
  v46 = v97;
  if (v45 == 1)
  {
    sub_21D0CF7E0(v44, &qword_27CE58A50);
    v47 = v96;
    v8 = v86;
    (*(v46 + 56))(v96, 1, 1, v86);
    sub_21D0CF7E0(v47, &qword_27CE58A48);
    v48 = *MEMORY[0x277D453D8];
    v49 = *MEMORY[0x277D453E0];
    goto LABEL_18;
  }

  v56 = v96;
  sub_21DBF6F5C();
  v10 = *(v42 + 8);
  v100 = v42 + 8;
  (v10)(v44, v37);
  v8 = v86;
  v36 = *(v46 + 56);
  v36(v56, 0, 1, v86);
  v57 = v92;
  sub_21D199438(v56, v92);
  v58 = (*(v46 + 88))(v57, v8);
  v49 = *MEMORY[0x277D453E0];
  if (v58 == *MEMORY[0x277D453E0])
  {
    sub_21D0CF7E0(v89, &qword_27CE58A50);

    (*(v46 + 96))(v57, v8);
    v59 = *(v57 + 16);
    a2 = v88;
    *v88 = *v57;
    *(a2 + 2) = v59;
    v41 = *(v57 + 24);
    goto LABEL_25;
  }

  v48 = v58;
  if (v58 != *MEMORY[0x277D453D8])
  {
    (*(v46 + 8))(v57, v8);
    if (qword_27CE56560 == -1)
    {
LABEL_29:
      v60 = sub_21DBF84BC();
      __swift_project_value_buffer(v60, qword_27CE58A08);
      v61 = v89;
      v62 = v91;
      sub_21D1993C8(v89, v91);
      v63 = sub_21DBF84AC();
      v64 = sub_21DBFAEBC();
      if (os_log_type_enabled(v63, v64))
      {
        LODWORD(v101) = v64;
        v65 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v103 = v97;
        v99 = v65;
        *v65 = 136315138;
        v66 = v90;
        sub_21D1993C8(v62, v90);
        v67 = v98;
        if (v102(v66, 1, v98) == 1)
        {
          sub_21D0CF7E0(v66, &qword_27CE58A50);
          v68 = 1;
          v69 = v78;
        }

        else
        {
          v69 = v78;
          sub_21DBF6F5C();
          (v10)(v66, v67);
          v68 = 0;
        }

        v36(v69, v68, 1, v8);
        v71 = sub_21DBFA1AC();
        v73 = v72;
        sub_21D0CF7E0(v91, &qword_27CE58A50);
        v74 = sub_21D0CDFB4(v71, v73, &v103);

        v75 = v99;
        *(v99 + 4) = v74;
        _os_log_impl(&dword_21D0C9000, v63, v101, "Unknown section type {type: %s}", v75, 0xCu);
        v76 = v97;
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x223D46520](v76, -1, -1);
        MEMORY[0x223D46520](v75, -1, -1);

        v70 = v89;
      }

      else
      {

        sub_21D0CF7E0(v62, &qword_27CE58A50);
        v70 = v61;
      }

      sub_21D0CF7E0(v70, &qword_27CE58A50);
      a2 = v88;
      goto LABEL_14;
    }

LABEL_38:
    swift_once();
    goto LABEL_29;
  }

  a2 = v88;
  v29 = v89;
  v31 = v87;
LABEL_18:
  v50 = v93;
  (*(v46 + 104))(v93, v48, v8);
  v51 = v94;
  (*(v46 + 16))(v94, v50, v8);
  v52 = (*(v46 + 88))(v51, v8);
  if (v52 == v49)
  {

    (*(v46 + 8))(v50, v8);
    sub_21D0CF7E0(v29, &qword_27CE58A50);
    (*(v46 + 96))(v51, v8);
    v53 = *v51;
    v54 = *(v51 + 1);
    v55 = *(v51 + 2);
    v41 = *(v51 + 24);
LABEL_24:
    *a2 = v53;
    *(a2 + 1) = v54;
    *(a2 + 2) = v55;
    goto LABEL_25;
  }

  if (v52 == v48)
  {

    (*(v46 + 8))(v50, v8);
    sub_21D0CF7E0(v29, &qword_27CE58A50);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v41 = 0uLL;
    goto LABEL_24;
  }

  sub_21DBFC63C();
  __break(1u);
}

uint64_t sub_21D197D70()
{
  v0 = sub_21DBF719C();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x28223BE20](v0);
  v39 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21DBF6DBC();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v48 = &v33 - v4;
  v5 = sub_21DBF714C();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21DBF734C();
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_21DBF71BC();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_21DBF70DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF738C();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = sub_21DBFADFC();
  sub_21D1CDECC(inited);
  v21 = v20;
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = v12;
  v23 = v49;
  (*(v13 + 104))(v15, *MEMORY[0x277D45420], v22);
  *v11 = v21;
  v24 = v18;
  (*(v9 + 104))(v11, *MEMORY[0x277D45480], v42);
  (*(v7 + 104))(v43, *MEMORY[0x277D45500], v44);
  (*(v46 + 104))(v45, *MEMORY[0x277D45458], v47);
  v25 = v48;
  sub_21DBF737C();
  v26 = [v23 store];
  sub_21DBF6D0C();

  v27 = v36;
  v28 = v35;
  sub_21DBF76DC();
  v29 = (*(v34 + 8))(v25, v28);
  v30 = v39;
  MEMORY[0x223D3F550](v29);
  (*(v37 + 8))(v27, v38);
  v31 = sub_21DBF718C();
  (*(v40 + 8))(v30, v41);
  (*(v50 + 8))(v24, v51);
  return v31;
}

uint64_t sub_21D1984D0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_21DBFBD7C();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1985F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_21D1986C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58630);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_21D198784(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_21D9D9774(v2, 0);
    sub_21DBF8E0C();
    v1 = sub_21D1984D0(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_21DBFBD7C();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_21D19885C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68);
      v7 = *(sub_21DBF5C4C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_21DBF5C4C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_21D198A10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_21D0D8CF0(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_21D198B78(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_21DBFBD7C();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_21DBF8E0C();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_21D0CFAF8();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

char *sub_21D198C64(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_21DBFBD7C();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_21DBF8E0C();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_21D0CFAF8();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t (*sub_21D198D24(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for TTRIStaticTableViewStandardCell.TextColor;
  }

  __break(1u);
  return result;
}

void (*sub_21D198DA4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for TTREditingOption;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21D198E24(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return j__s15RemindersUICore29TTRRemindersListTreeViewModelC13AuxiliaryDataVwxx;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21D198EA4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return destroy for TTRIReminderLocationPickerViewController.Argument;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21D198F2C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D44740](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for TTRRemindersListTreeViewModel.AuxiliaryData;
  }

  __break(1u);
  return result;
}

void sub_21D198FB4(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_21DBFC22C();
      sub_21D0D8CF0(0, &qword_280D17880);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_21DBFC26C() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_21DBFC27C();
  sub_21D0D8CF0(0, &qword_280D17880);
  swift_dynamicCast();
  v5 = sub_21D17E07C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

uint64_t sub_21D199144(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_21DBFC64C();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_21DBFC64C();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_21DBFC64C();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_21DBFC64C();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_21DBFC64C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21D1993C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D199438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D1994AC()
{
  result = qword_27CE58A58;
  if (!qword_27CE58A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58A58);
  }

  return result;
}

unint64_t sub_21D199504()
{
  result = qword_27CE58A60;
  if (!qword_27CE58A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58A60);
  }

  return result;
}

uint64_t destroy for TTRParticipantModel()
{
}

void *initializeWithCopy for TTRParticipantModel(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRParticipantModel(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  a1[4] = a2[4];
  a1[5] = a2[5];
  sub_21DBF8E0C();

  a1[6] = a2[6];
  a1[7] = a2[7];
  sub_21DBF8E0C();

  a1[8] = a2[8];
  a1[9] = a2[9];
  sub_21DBF8E0C();

  return a1;
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

void *assignWithTake for TTRParticipantModel(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v7 = a2[7];
  a1[6] = a2[6];
  a1[7] = v7;

  v8 = a2[9];
  a1[8] = a2[8];
  a1[9] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRParticipantModel(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRParticipantModel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TTRAnyReminderTextEditingSuggestion.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a3;
  v60 = a1;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v8;
  v10 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[3] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v14 = v7 + 16;
  v13 = *(v7 + 16);
  v54 = v13;
  v13(boxed_opaque_existential_0, a1, a2);
  v13(v10, a1, a2);
  v15 = *(v7 + 80);
  v55 = v9;
  v56 = v15;
  v16 = (v15 + 32) & ~v15;
  v17 = swift_allocObject();
  v18 = v59;
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  v19 = *(v7 + 32);
  v58 = v7 + 32;
  v19(v17 + v16, v10, a2);
  v20 = v19;
  v52 = a4;
  a4[4] = sub_21D199DFC;
  a4[5] = v17;
  v21 = v54;
  v54(v10, v60, a2);
  v53 = v14;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v18;
  v20(v22 + v16, v10, a2);
  v23 = v52;
  v52[6] = sub_21D199E64;
  v23[7] = v22;
  v24 = v60;
  v21(v10, v60, a2);
  v25 = swift_allocObject();
  v26 = v59;
  *(v25 + 16) = a2;
  *(v25 + 24) = v26;
  v20(v25 + v16, v10, a2);
  v27 = v20;
  v57 = v20;
  v28 = v52;
  v52[8] = sub_21D199ECC;
  v28[9] = v25;
  v29 = v10;
  v30 = v10;
  v31 = v54;
  v54(v29, v24, a2);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = v26;
  v27(v32 + v16, v30, a2);
  v28[10] = sub_21D199F34;
  v28[11] = v32;
  v33 = v60;
  v31(v30, v60, a2);
  v34 = swift_allocObject();
  v35 = v59;
  *(v34 + 16) = a2;
  *(v34 + 24) = v35;
  v36 = v30;
  v57(v34 + v16, v30, a2);
  v37 = v52;
  v52[12] = sub_21D199F9C;
  v37[13] = v34;
  v38 = v54;
  v54(v30, v33, a2);
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = v35;
  v40 = v57;
  v57(v39 + v16, v30, a2);
  v37[14] = sub_21D19A004;
  v37[15] = v39;
  v41 = v60;
  v38(v30, v60, a2);
  v42 = swift_allocObject();
  v43 = v59;
  *(v42 + 16) = a2;
  *(v42 + 24) = v43;
  v40(v42 + v16, v30, a2);
  v37[16] = sub_21D19A06C;
  v37[17] = v42;
  v44 = v54;
  v54(v36, v41, a2);
  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  *(v45 + 24) = v43;
  v57(v45 + v16, v36, a2);
  v37[18] = sub_21D19A2F4;
  v37[19] = v45;
  v44(v36, v60, a2);
  v46 = swift_allocObject();
  v47 = v59;
  *(v46 + 16) = a2;
  *(v46 + 24) = v47;
  v48 = v57;
  v57(v46 + v16, v36, a2);
  v37[20] = sub_21D19A538;
  v37[21] = v46;
  v48(v36, v60, a2);
  v49 = swift_allocObject();
  *(v49 + 16) = a2;
  *(v49 + 24) = v47;
  result = (v48)(v49 + v16, v36, a2);
  v37[22] = sub_21D19A780;
  v37[23] = v49;
  return result;
}

uint64_t sub_21D19A0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v17);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = sub_21DBFA10C();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21D19A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v20);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a3);
    (*(v12 + 32))(v15, v11, a3);
    v18 = (*(*(a4 + 8) + 16))(a2, v15, a3);
    (*(v12 + 8))(v15, a3);
  }

  else
  {
    v17(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_21D19A550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v20);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a3);
    (*(v12 + 32))(v15, v11, a3);
    v18 = (*(*(*(a4 + 8) + 8) + 8))(a2, v15, a3);
    (*(v12 + 8))(v15, a3);
  }

  else
  {
    v17(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t TTRAnyReminderTextEditingSuggestion.isInlineHashtagSuggestion.getter()
{
  sub_21D0CEB98(v0, v3);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t TTRAnyReminderTextEditingSuggestion.isNLPSuggestion.getter()
{
  v1 = v0;
  v21 = sub_21DBF7A0C();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF79FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(v1, v22);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v11, 0, 1, v12);
    sub_21D19AF08(v11, v15);
    (*(v2 + 104))(v4, *MEMORY[0x277D456F0], v21);
    sub_21DBF79EC();
    v18 = sub_21DBF79BC();
    (*(v6 + 8))(v8, v5);
    sub_21D19B204(v15, type metadata accessor for TTRReminderSuggestedAttribute);
  }

  else
  {
    v17(v11, 1, 1, v12);
    sub_21D19AEA0(v11);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_21D19AEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D19AF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL TTRAnyReminderTextEditingSuggestion.isAssigneeSuggestion.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(v1, v16);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v7, 0, 1, v8);
    sub_21D19AF08(v7, v11);
    sub_21D19B1A0(v11, v4);
    sub_21D19B204(v11, type metadata accessor for TTRReminderSuggestedAttribute);
    v14 = swift_getEnumCaseMultiPayload() == 5;
    sub_21D19B204(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  }

  else
  {
    v13(v7, 1, 1, v8);
    sub_21D19AEA0(v7);
    return 0;
  }

  return v14;
}

uint64_t sub_21D19B1A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D19B204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TTRAnyReminderTextEditingSuggestion.isAutoCompleteSuggestion.getter()
{
  v1 = v0;
  v2 = sub_21DBF7A0C();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF79FC();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(v1, v26);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (!v18)
  {
    v19(v13, 1, 1, v14);
    sub_21D19AEA0(v13);
LABEL_6:
    v20 = 0;
    return v20 & 1;
  }

  v19(v13, 0, 1, v14);
  sub_21D19AF08(v13, v17);
  sub_21D19B1A0(v17, v10);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D19B204(v10, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    goto LABEL_6;
  }

  sub_21D19B204(v10, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  (*(v24 + 104))(v4, *MEMORY[0x277D45708], v25);
  sub_21DBF79EC();
  v20 = sub_21DBF79BC();
  (*(v23 + 8))(v7, v5);
  sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
  return v20 & 1;
}

void *TTRAnyReminderTextEditingSuggestion.autoCompleteSuggestionReminder.getter()
{
  v1 = v0;
  v2 = sub_21DBF7A0C();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF79FC();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(v1, v27);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v14);
    sub_21D19AF08(v13, v17);
    sub_21D19B1A0(v17, v10);
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v20 = *v10;

      (*(v25 + 104))(v4, *MEMORY[0x277D45708], v26);
      sub_21DBF79EC();
      v21 = sub_21DBF79BC();
      (*(v24 + 8))(v7, v5);
      sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
      if (v21)
      {
        return v20;
      }
    }

    else
    {
      sub_21D19B204(v17, type metadata accessor for TTRReminderSuggestedAttribute);
      sub_21D19B204(v10, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    }
  }

  else
  {
    v19(v13, 1, 1, v14);
    sub_21D19AEA0(v13);
  }

  return 0;
}

unint64_t sub_21D19B9E4(uint64_t a1)
{
  result = sub_21D19BA0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21D19BA0C()
{
  result = qword_27CE58A80;
  if (!qword_27CE58A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58A80);
  }

  return result;
}

id sub_21D19BA60(id result, id a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (!a3)
    {
      v5 = result;
      v4 = a2;
      result = v5;

      return result;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return result;
      }

      result = a2;

      return result;
    }

LABEL_9:

    return result;
  }

  if (a3 - 3 < 2)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_21D19BAFC(id a1, id a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 - 3 >= 2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a3)
  {

LABEL_9:
    a1 = a2;
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t sub_21D19BB70(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D19BA60(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRReminderTextEditingSuggestionIconInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D19BA60(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D19BAFC(v6, v7, v8);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRReminderTextEditingSuggestionIconInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D19BAFC(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderTextEditingSuggestionIconInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderTextEditingSuggestionIconInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destroy for TTRAnyReminderTextEditingSuggestion(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t initializeWithCopy for TTRAnyReminderTextEditingSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v5 = *(a2 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v5;

  return a1;
}

uint64_t *assignWithCopy for TTRAnyReminderTextEditingSuggestion(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;

  v5 = a2[7];
  a1[6] = a2[6];
  a1[7] = v5;

  v6 = a2[9];
  a1[8] = a2[8];
  a1[9] = v6;

  v7 = a2[11];
  a1[10] = a2[10];
  a1[11] = v7;

  v8 = a2[13];
  a1[12] = a2[12];
  a1[13] = v8;

  v9 = a2[15];
  a1[14] = a2[14];
  a1[15] = v9;

  v10 = a2[17];
  a1[16] = a2[16];
  a1[17] = v10;

  v11 = a2[19];
  a1[18] = a2[18];
  a1[19] = v11;

  v12 = a2[21];
  a1[20] = a2[20];
  a1[21] = v12;

  v13 = a2[23];
  a1[22] = a2[22];
  a1[23] = v13;

  return a1;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

_OWORD *assignWithTake for TTRAnyReminderTextEditingSuggestion(_OWORD *a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyReminderTextEditingSuggestion(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAnyReminderTextEditingSuggestion(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21D19C268(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_21D0D8CF0(0, &qword_280D17880);
  v5 = sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v18[1] = MEMORY[0x223D43280](v3, v4, v5);
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v1 = sub_21DBFC21C() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v6 = v1 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 64);
  }

  v12 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_21DBFC2EC() || (swift_dynamicCast(), (v17 = v18[0]) == 0))
    {
LABEL_21:
      sub_21D0CFAF8();
      return;
    }

LABEL_11:
    sub_21D29B0D0(v18, v17);
  }

  v13 = v12;
  v14 = v8;
  v15 = v12;
  if (v8)
  {
LABEL_17:
    v16 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v8 = (v14 - 1) & v14;
    v12 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_21D19C45C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21D0D8CF0(0, &qword_280D17880);
  v4 = sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v5 = 0;
  v12[1] = MEMORY[0x223D43280](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_21D29B0D0(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.observableColumnPresentationTrees.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.__allocating_init(mainDataSource:makeUpdatesForReloadingView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TTRRemindersBoardPresentationTreesManagementViewCapability.init(mainDataSource:makeUpdatesForReloadingView:)(a1, a2, a3);
  return v6;
}

void *TTRRemindersBoardPresentationTreesManagementViewCapability.init(mainDataSource:makeUpdatesForReloadingView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A88);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F98];
  v7[3] = v6;
  v7[4] = v8;
  v7[2] = sub_21D19CB78;
  swift_beginAccess();
  v3[2] = v7;

  return v3;
}

uint64_t sub_21D19C7A0@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X2>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A98);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  a2(v16);
  sub_21D0D523C(v18, v14, &qword_27CE58A98);
  v19 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  if ((*(*(v19 - 8) + 48))(v14, 1, v19) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE58A98);
    v20 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }

  else
  {
    v33 = *v14;
    v22 = *(v19 + 20);
    v32 = type metadata accessor for TTRRemindersBoardPresentationTrees;
    sub_21D19FB04(&v14[v22], v11, type metadata accessor for TTRRemindersBoardPresentationTrees);
    v23 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
    v24 = &a3[*(v23 + 20)];
    v31 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
    v25 = *(v31 + 24);
    sub_21D19FB04(a1, v24 + v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE8);
    v26 = a3;
    v27 = swift_allocObject();
    v30 = *(v11 + 40);
    *(v27 + 16) = v30;
    sub_21D19FB04(v24 + v25, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AF0);
    v28 = swift_allocObject();
    v28[2] = v27;
    sub_21D19FB6C(v8, v28 + *(*v28 + 104), type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D19FB04(v11, v24, v32);
    *(v24 + *(v31 + 20)) = v28;
    swift_unknownObjectRetain();
    sub_21D19FBD4(v11, type metadata accessor for TTRRemindersBoardPresentationTrees);
    v29 = *&v14[*(v19 + 24)];
    *v26 = v33;
    *&v26[*(v23 + 24)] = v29;
    sub_21DBF8E0C();
    sub_21D19FBD4(v14, type metadata accessor for TTRRemindersBoardPresentationTreeUpdates);
    return (*(*(v23 - 8) + 56))(v26, 0, 1, v23);
  }
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - v4;
  v6 = *(v1 + 24);
  v7 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  sub_21D19FB04(&a1[*(v7 + 20)], v5, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v8 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  v9 = qword_27CE8EB18;
  swift_beginAccess();
  sub_21D0F02F4(v5, v6 + v9, &qword_27CE58A90);
  swift_endAccess();
  v10 = TTRRemindersBoardPresentationTrees.allColumnIDs.getter();
  v11 = sub_21D19EE98(v10);

  v12 = qword_27CE8EB20;
  swift_beginAccess();
  *(v6 + v12) = v11;

  v13 = *a1;
  if ((v13 - 3) >= 2)
  {
    result = swift_beginAccess();
    if (!*(v1 + 16))
    {
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    if (v13 == 2)
    {

      sub_21D19D800(sub_21D19DA18, 0, sub_21D4B71B8, sub_21D2206B0);

      if (!*(v1 + 16))
      {
        goto LABEL_12;
      }
    }

    v15 = *(v6 + v12);
    MEMORY[0x28223BE20](result);
    v16[-2] = v15;

    sub_21DBF8E0C();
    sub_21D19D800(sub_21D19F030, &v16[-4], sub_21D4B71B8, sub_21D2206B0);
  }

  result = swift_beginAccess();
  if (!*(v1 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  MEMORY[0x28223BE20](result);
  v16[-2] = a1;

  sub_21D19DA20(0, sub_21D19F028, &v16[-4]);

  if (*a1 - 3 >= 2)
  {
    v17 = *a1;
    return TTRRemindersBoardMainDiffableDataSource.applySnapshot(option:)(&v17);
  }

  return result;
}

uint64_t sub_21D19CED4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  TTRRemindersBoardPresentationTreeUpdates.updates(forColumnID:)(a1, a2);
  v3 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

Swift::Void __swiftcall TTRRemindersBoardPresentationTreesManagementViewCapability.reload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A98);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v0 + 32))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE58A98);
  }

  else
  {
    sub_21D19FB6C(v3, v8, type metadata accessor for TTRRemindersBoardPresentationTreeUpdates);
    TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)(v8);
    sub_21D19FBD4(v8, type metadata accessor for TTRRemindersBoardPresentationTreeUpdates);
  }
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.deinit()
{

  return v0;
}

uint64_t TTRRemindersBoardPresentationTreesManagementViewCapability.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D19D150(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v27 = sub_21DBF5A5C();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = sub_21DBF5B9C();
  v9 = MEMORY[0x277CC9A28];
  sub_21D19F498(&qword_280D1B830, MEMORY[0x277CC9A28]);
  sub_21DBFA40C();
  sub_21D19F498(&qword_280D1B820, v9);
  v25 = (v3 + 8);
  v10 = MEMORY[0x277D84F90];
  v22[1] = v8;
  while (1)
  {
    v11 = v26;
    sub_21DBFACAC();
    sub_21D19F498(&qword_280D1B840, MEMORY[0x277CC9A08]);
    v12 = v27;
    v13 = sub_21DBFA10C();
    (*v25)(v11, v12);
    if (v13)
    {
      sub_21D0CF7E0(v7, &qword_27CE5EA80);
      return v10;
    }

    v14 = sub_21DBFAD3C();
    v16 = *v15;
    v14(v28, 0);
    sub_21DBFACBC();
    v29 = v16;
    v17 = v23(&v29);
    if (v2)
    {
      break;
    }

    if (v17)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18E658(0, *(v10 + 16) + 1, 1);
        v10 = v30;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21D18E658((v19 > 1), v20 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v20 + 1;
      *(v10 + 8 * v20 + 32) = v16;
    }
  }

  sub_21D0CF7E0(v7, &qword_27CE5EA80);

  return v10;
}

void sub_21D19D4A8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = 0;
  v37 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v13;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = *(v36 + 72);
    sub_21D19FB04(*(v37 + 48) + v22 * (__clz(__rbit64(v19)) | (v13 << 6)), v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D19FB6C(v9, v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v23 = v34(v12);
    if (v3)
    {
      sub_21D19FBD4(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);

      return;
    }

    v19 &= v19 - 1;
    if (v23)
    {
      sub_21D19FB6C(v12, v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v24 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18E77C(0, *(v24 + 16) + 1, 1);
        v24 = v38;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v33 = v27 + 1;
        v31 = v27;
        sub_21D18E77C(v26 > 1, v27 + 1, 1);
        v28 = v33;
        v27 = v31;
        v24 = v38;
      }

      *(v24 + 16) = v28;
      v29 = *(v36 + 80);
      v33 = v24;
      sub_21D19FB6C(v32, v24 + ((v29 + 32) & ~v29) + v27 * v22, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

    else
    {
      sub_21D19FBD4(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v13);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_21D19D800(uint64_t (*a1)(char *), uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v7 + 32);
  sub_21DBF8E0C();
  sub_21D19D4A8(a1, a2, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v27 = a4;
    v17 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    do
    {
      sub_21D19FB04(v17, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
      swift_beginAccess();
      v20 = sub_21D181E00(v13, v19);
      if (v21)
      {
        v22 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v7 + 32);
        v28 = v24;
        *(v7 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v27();
          v24 = v28;
        }

        sub_21D19FBD4(*(v24 + 48) + v22 * v18, type metadata accessor for TTRRemindersListViewModel.ItemID);

        a3(v22, v24);
        *(v7 + 32) = v24;
      }

      swift_endAccess();
      sub_21D19FBD4(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v17 += v18;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_21D19DA20(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v124 = a3;
  v123 = a2;
  v142 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AC8);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v121 = &v111 - v7;
  v120 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  v8 = *(v120 - 8);
  MEMORY[0x28223BE20](v120 - 8);
  v114 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v111 - v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v129);
  v128 = &v111 - v13;
  v127 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v127);
  v140 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v15 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v112 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v111 - v18;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v144);
  v20 = &v111 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v139 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v147 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v143 = (&v111 - v24);
  MEMORY[0x28223BE20](v25);
  v145 = &v111 - v26;
  MEMORY[0x28223BE20](v27);
  v146 = &v111 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v111 - v30;
  MEMORY[0x28223BE20](v32);
  v131 = &v111 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD8);
  MEMORY[0x28223BE20](v34 - 8);
  v138 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v136 = &v111 - v37;
  swift_beginAccess();
  v38 = *(v3 + 32);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v118 = (v40 + 63) >> 6;
  v117 = 0x800000021DC43E30;
  v116 = 0x800000021DC43E00;
  v133 = 0x800000021DC43DE0;
  v125 = (v15 + 48);
  v43 = v31;
  v119 = (v8 + 48);
  v113 = (v8 + 56);
  v44 = v21;
  v132 = v38;
  result = sub_21DBF8E0C();
  v46 = 0;
  v148 = v44;
  v135 = v39;
  v115 = v12;
  v150 = v31;
  while (v42)
  {
    v47 = v46;
LABEL_16:
    v51 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v52 = v51 | (v47 << 6);
    v53 = v132;
    v54 = v131;
    sub_21D19FB04(*(v132 + 48) + *(v139 + 72) * v52, v131, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v55 = *(*(v53 + 56) + 8 * v52);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE0);
    v57 = *(v56 + 48);
    v58 = v54;
    v50 = v138;
    sub_21D19FB6C(v58, v138, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v50 + v57) = v55;
    (*(*(v56 - 8) + 56))(v50, 0, 1, v56);

    v43 = v150;
LABEL_17:
    v59 = v50;
    v60 = v136;
    sub_21D0D523C(v59, v136, &qword_27CE58AD8);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE0);
    v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
    v63 = v144;
    if (v62 == 1)
    {
    }

    v141 = *(v60 + *(v61 + 48));
    sub_21D19FB6C(v60, v43, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v64 = v146;
    if (!v142)
    {
      goto LABEL_90;
    }

    v65 = *(v142 + 16);
    if (!v65)
    {
LABEL_4:
      v43 = v150;
      sub_21D19FBD4(v150, type metadata accessor for TTRRemindersListViewModel.ItemID);

      goto LABEL_5;
    }

    v66 = v142 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v149 = *(v139 + 72);
    v134 = v42;
    while (1)
    {
      v67 = *(v63 + 48);
      sub_21D19FB04(v66, v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D19FB04(v150, &v20[v67], type metadata accessor for TTRRemindersListViewModel.ItemID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload != 2)
      {
        sub_21D19FB04(v20, v147, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_22;
        }

        v83 = *v147;
        if (v83 > 2)
        {
          if (v83 == 3)
          {
            v86 = 0xD00000000000001FLL;
            v92 = &v148;
          }

          else
          {
            if (v83 == 4)
            {
              v87 = 0xE700000000000000;
              v86 = 0x6D657449706974;
              goto LABEL_62;
            }

            v86 = 0xD00000000000001DLL;
            v92 = &v149;
          }

          v87 = *(v92 - 32);
        }

        else
        {
          v84 = 0xD000000000000012;
          if (v83 == 1)
          {
            v84 = 0x7367617468736168;
          }

          v85 = 0xEC0000006D657449;
          if (v83 != 1)
          {
            v85 = v133;
          }

          if (*v147)
          {
            v86 = v84;
          }

          else
          {
            v86 = 0x6574656C706D6F63;
          }

          if (*v147)
          {
            v87 = v85;
          }

          else
          {
            v87 = 0xED00006D65744964;
          }
        }

LABEL_62:
        v93 = v20[v67];
        if (v93 > 2)
        {
          if (v93 == 3)
          {
            v96 = 0xD00000000000001FLL;
            v97 = &v148;
          }

          else
          {
            if (v93 == 4)
            {
              v95 = 0xE700000000000000;
              if (v86 == 0x6D657449706974)
              {
                goto LABEL_81;
              }

              goto LABEL_82;
            }

            v96 = 0xD00000000000001DLL;
            v97 = &v149;
          }

          v95 = *(v97 - 32);
          if (v86 == v96)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v20[v67])
          {
            if (v93 == 1)
            {
              v94 = 0x7367617468736168;
            }

            else
            {
              v94 = 0xD000000000000012;
            }

            if (v93 == 1)
            {
              v95 = 0xEC0000006D657449;
            }

            else
            {
              v95 = v133;
            }

            if (v86 != v94)
            {
              goto LABEL_82;
            }

LABEL_81:
            if (v87 == v95)
            {

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v95 = 0xED00006D65744964;
          if (v86 == 0x6574656C706D6F63)
          {
            goto LABEL_81;
          }
        }

LABEL_82:
        v98 = sub_21DBFC64C();

        if (v98)
        {
          goto LABEL_89;
        }

        sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
        goto LABEL_23;
      }

      v69 = v143;
      sub_21D19FB04(v20, v143, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v70 = *v69;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

LABEL_22:
        sub_21D0CF7E0(v20, &qword_27CE58AD0);
        goto LABEL_23;
      }

      v71 = *&v20[v67];
      sub_21D0D8CF0(0, &qword_280D17680);
      v72 = sub_21DBFB63C();

      sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v72)
      {
        goto LABEL_90;
      }

LABEL_23:
      v66 += v149;
      if (!--v65)
      {
        goto LABEL_4;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      sub_21D19FB04(v20, v64, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_21D19FBD4(v64, type metadata accessor for TTRRemindersListViewModel.SectionID);
        goto LABEL_22;
      }

      v88 = v130;
      sub_21D19FB6C(&v20[v67], v130, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v89 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v64, v88);
      v90 = v88;
      v63 = v144;
      sub_21D19FBD4(v90, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D19FBD4(v64, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v89)
      {
        goto LABEL_90;
      }

      goto LABEL_23;
    }

    v73 = v145;
    sub_21D19FB04(v20, v145, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D19FBD4(v73, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v64 = v146;
      goto LABEL_22;
    }

    v74 = &v20[v67];
    v75 = v140;
    sub_21D19FB6C(v74, v140, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D0D8CF0(0, &qword_280D17680);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_85;
    }

    v76 = *(v127 + 20);
    v77 = *(v129 + 48);
    v78 = v128;
    sub_21D0D3954(v73 + v76, v128, &unk_27CE5CD70);
    v137 = v77;
    sub_21D0D3954(v75 + v76, v78 + v77, &unk_27CE5CD70);
    v79 = *v125;
    v80 = v126;
    if ((*v125)(v78, 1, v126) != 1)
    {
      v91 = v115;
      sub_21D0D3954(v78, v115, &unk_27CE5CD70);
      if (v79(v78 + v137, 1, v80) == 1)
      {
        sub_21D19FBD4(v91, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v82 = v78;
        v42 = v134;
        goto LABEL_58;
      }

      v99 = v112;
      sub_21D19FB6C(v78 + v137, v112, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v100 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v91, v99);
      sub_21D19FBD4(v99, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D19FBD4(v91, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v78, &unk_27CE5CD70);
      v75 = v140;
      v63 = v144;
      v73 = v145;
      v42 = v134;
      if (v100)
      {
        goto LABEL_88;
      }

LABEL_85:
      sub_21D19FBD4(v75, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D19FBD4(v73, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v64 = v146;
      goto LABEL_23;
    }

    v81 = v79(v78 + v137, 1, v80) == 1;
    v82 = v78;
    v42 = v134;
    if (!v81)
    {
LABEL_58:
      sub_21D0CF7E0(v82, &qword_27CE58388);
      v75 = v140;
      v63 = v144;
      v73 = v145;
      goto LABEL_85;
    }

    sub_21D0CF7E0(v78, &unk_27CE5CD70);
    v75 = v140;
    v73 = v145;
LABEL_88:
    sub_21D19FBD4(v75, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D19FBD4(v73, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_89:
    sub_21D19FBD4(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_90:
    v102 = v141;
    v103 = *(*v141 + 88);
    swift_beginAccess();
    v104 = v122;
    sub_21D0D3954(v102 + v103, v122, &qword_27CE58AC8);
    v105 = v121;
    v123(v150, v104);
    v106 = v104;
    sub_21D0CF7E0(v104, &qword_27CE58AC8);
    v107 = v120;
    if ((*v119)(v105, 1, v120) == 1)
    {
      v108 = v150;
      sub_21D19FBD4(v150, type metadata accessor for TTRRemindersListViewModel.ItemID);

      result = sub_21D0CF7E0(v105, &qword_27CE58AC8);
      v43 = v108;
    }

    else
    {
      v109 = v105;
      v110 = v114;
      sub_21D19FB6C(v109, v114, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      sub_21D19FB04(v110, v106, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      (*v113)(v106, 0, 1, v107);
      swift_beginAccess();
      sub_21D0F02F4(v106, v102 + v103, &qword_27CE58AC8);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
      sub_21D0EAF6C();
      sub_21DBF912C();
      sub_21D19FBD4(v110, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      v43 = v150;
      sub_21D19FBD4(v150, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

LABEL_5:
    v39 = v135;
  }

  if (v118 <= v46 + 1)
  {
    v48 = v46 + 1;
  }

  else
  {
    v48 = v118;
  }

  v49 = v48 - 1;
  v50 = v138;
  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v118)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE0);
      (*(*(v101 - 8) + 56))(v50, 1, 1, v101);
      v42 = 0;
      v46 = v49;
      goto LABEL_17;
    }

    v42 = *(v39 + 8 * v47);
    ++v46;
    if (v42)
    {
      v46 = v47;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D19ED38(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v4 = sub_21DBF634C();
    v5 = sub_21D19F498(&qword_27CE58AA0, MEMORY[0x277D44FB0]);
    result = MEMORY[0x223D43280](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D44740](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21D29B308(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_21DBFBD7C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D19EE98(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21D19FB04(v12, v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D29B520(v8, v5);
      sub_21D19FBD4(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21D19F0A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21D19FA5C();
  result = MEMORY[0x223D43280](v2, &type metadata for TTRReminderCellTextHighlights.Highlight, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_21D29B760(&v9, v6, v7, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_21D19F11C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for REMListBadgeEmblem(0);
  v4 = v3;
  v5 = sub_21D19F498(&qword_27CE57C08, type metadata accessor for REMListBadgeEmblem);
  result = MEMORY[0x223D43280](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_21D29B8CC(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_21D19F1D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for _NSRange(0);
  v4 = v3;
  v5 = sub_21D19F498(&qword_280D0C1A8, type metadata accessor for _NSRange);
  result = MEMORY[0x223D43280](v2, v4, v5);
  v9 = result;
  if (v2)
  {
    v7 = (a1 + 40);
    do
    {
      sub_21D29C590(&v8, *(v7 - 1), *v7);
      v7 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_21D19F2B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21D0D8CF0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D19F308(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_27CE58AB0, type metadata accessor for TTRRecurrenceRuleModel);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21D19FB04(v12, v5, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21D29CEE0(v8, v5);
      sub_21D19FBD4(v8, type metadata accessor for TTRRecurrenceRuleModel);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21D19F498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D19F4E0(uint64_t a1)
{
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_27CE58AC0, MEMORY[0x277D45430]);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_21D29D7C4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_21D19F67C(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21D19F498(&qword_280D17160, MEMORY[0x277CC9AF8]);
  result = MEMORY[0x223D43280](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_21D29E50C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_21D19F848(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v11 = sub_21D0D8CF0(0, j);
    v12 = sub_21D19F2B8(a4, j);
    result = MEMORY[0x223D43280](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_21DBFBD7C();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D19F9A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Key(0);
  v4 = v3;
  v5 = sub_21D19F498(&qword_280D17790, type metadata accessor for Key);
  result = MEMORY[0x223D43280](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_21D29EA24(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_21D19FA5C()
{
  result = qword_280D18EA8[0];
  if (!qword_280D18EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D18EA8);
  }

  return result;
}

unint64_t sub_21D19FAB0()
{
  result = qword_280D0E1E0;
  if (!qword_280D0E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0E1E0);
  }

  return result;
}

uint64_t sub_21D19FB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D19FB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D19FBD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TTRReminderDetailEditingResult.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D19FCC4()
{
  result = qword_27CE58AF8;
  if (!qword_27CE58AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58AF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListDataModelSourceCountCompleted(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListDataModelSourceCountCompleted(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D19FEA4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58B00);
  v1 = __swift_project_value_buffer(v0, qword_27CE58B00);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIMenuItem.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIMenuItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *TTRIMenuItem.image.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRIMenuItem.selectedTitle.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRIMenuItem.selectedTitle.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TTRIMenuItem.init(title:image:item:selectedTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for TTRIMenuItem();
  v17 = &a8[*(v16 + 44)];
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  result = (*(*(a7 - 8) + 32))(&a8[*(v16 + 40)], a4, a7);
  *v17 = a5;
  *(v17 + 1) = a6;
  return result;
}

uint64_t static TTRIInlineButtonAttachmentTextView.Option.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for TTRIMenuItem();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29[0] = v29 - v9;
  v29[1] = a3;
  v29[2] = a4;
  v10 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v29 - v16;
  v19 = *(v18 + 48);
  v30 = v11;
  v20 = *(v11 + 16);
  v20(v29 - v16, v31, v10, v15);
  (v20)(&v17[v19], a2, v10);
  v31 = v8;
  v21 = *(v8 + 48);
  if (v21(v17, 1, v7) == 1)
  {
    v22 = 1;
    if (v21(&v17[v19], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v20)(v32, v17, v10);
    if (v21(&v17[v19], 1, v7) != 1)
    {
      v23 = v31;
      v24 = &v17[v19];
      v25 = v29[0];
      (*(v31 + 32))(v29[0], v24, v7);
      v26 = v32;
      v22 = sub_21DBFA10C();
      v27 = *(v23 + 8);
      v27(v25, v7);
      v27(v26, v7);
LABEL_8:
      v14 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, v7);
  }

  v22 = 0;
  v10 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v17, v10);
  return v22 & 1;
}

uint64_t TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D1A06E8()
{
  sub_21DBFC7DC();
  TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t TTRIInlineButtonAttachmentTextView.attachmentToken.getter()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  swift_beginAccess();
  v2 = *v1;
  sub_21DBF8E0C();
  return v2;
}

uint64_t TTRIInlineButtonAttachmentTextView.attachmentToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t TTRIInlineButtonAttachmentTextView.attachmentReplacementStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TTRIInlineButtonAttachmentTextView.attachmentReplacementStrategy.setter(char *a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21D1A0A50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & **a1) + 0x70);
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_21DBF8E0C();
}

uint64_t TTRIInlineButtonAttachmentTextView.menuOptions.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_21D1A0B48();
}

void sub_21D1A0B48()
{
  swift_beginAccess();
  type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  v0 = sub_21DBFA75C();

  if ((v0 & 1) == 0)
  {
    sub_21D1A0C3C();
  }
}

void sub_21D1A0C3C()
{
  v0 = sub_21D1A1A24();
  v1 = sub_21D1A4C90(v0);
  v2 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_menu;
  swift_beginAccess();
  v3 = *&v0[v2];
  *&v0[v2] = v1;
}

void (*TTRIInlineButtonAttachmentTextView.menuOptions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D1A0D60;
}

void sub_21D1A0D60(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = sub_21DBF8E0C();
    TTRIInlineButtonAttachmentTextView.menuOptions.setter(v4);
  }

  else
  {
    TTRIInlineButtonAttachmentTextView.menuOptions.setter(v3);
  }

  free(v2);
}

uint64_t TTRIInlineButtonAttachmentTextView.selectedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_21D1A0E84@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & **a1) + 0x78);
  swift_beginAccess();
  v5 = sub_21DBFBA8C();
  return (*(*(v5 - 8) + 16))(a2, &v3[v4], v5);
}

uint64_t TTRIInlineButtonAttachmentTextView.selectedItem.setter(uint64_t a1)
{
  sub_21D1A6394(a1);
  v2 = sub_21DBFBA8C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void sub_21D1A0FCC(uint64_t a1)
{
  v29 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v26[1] = *MEMORY[0x277D85000] & *v1;
  v4 = *((v3 & v2) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v26[0] = v26 - v6;
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30 = v26 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v26 - v11;
  v13 = *((v3 & v2) + 0x78);
  swift_beginAccess();
  v14 = *(TupleTypeMetadata2 + 48);
  v28 = v8;
  v15 = *(v8 + 16);
  v15(v12, v1 + v13, v7);
  v15(&v12[v14], v29, v7);
  v29 = v5;
  v16 = *(v5 + 48);
  if (v16(v12, 1, v4) == 1)
  {
    if (v16(&v12[v14], 1, v4) == 1)
    {
      (*(v28 + 8))(v12, v7);
      return;
    }
  }

  else
  {
    v15(v30, v12, v7);
    if (v16(&v12[v14], 1, v4) != 1)
    {
      v21 = v29;
      v22 = v26[0];
      (*(v29 + 32))(v26[0], &v12[v14], v4);
      v23 = v30;
      v24 = sub_21DBFA10C();
      v25 = *(v21 + 8);
      v25(v22, v4);
      v25(v23, v4);
      (*(v28 + 8))(v12, v7);
      if (v24)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v29 + 8))(v30, v4);
  }

  (*(v27 + 8))(v12, TupleTypeMetadata2);
LABEL_7:
  v17 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v18 = swift_beginAccess();
  if (*(v1 + v17))
  {
    v19 = [v1 attributedText];
    if (v19)
    {
      v20 = v19;
      TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(v19, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21D1A0C3C(v18);
  }
}

Swift::Void __swiftcall TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(NSAttributedString _, Swift::Bool forceUpdate)
{
  v3 = v2;
  if (forceUpdate || (v5 = [v2 attributedText]) == 0 || (v6 = v5, sub_21D0D8CF0(0, &qword_280D177E0), v7 = _.super.isa, v8 = sub_21DBFB63C(), v7, v6, (v8 & 1) == 0))
  {
    sub_21D1A25D8(_.super.isa);
    v9 = sub_21D1A2818(_.super.isa);
    [v3 setAttributedText_];
  }
}

void (*TTRIInlineButtonAttachmentTextView.selectedItem.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000];
  v8 = sub_21DBFBA8C();
  v5[4] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[5] = v9;
  v11 = *(v9 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
    v7 = *v6;
  }

  else
  {
    v5[6] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v5[7] = v12;
  v13 = *((v7 & *v1) + 0x78);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v5[8] = v14;
  v5[9] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v12, &v1[v13], v8);
  return sub_21D1A16B4;
}

void sub_21D1A16B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_21D1A6394(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_21D1A6394(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

id sub_21D1A1790(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.font.getter();

  return v2;
}

void sub_21D1A17E0(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = a1;
  sub_21D1A6304(a3, &selRef_font, &selRef_setFont_, sub_21D1A18BC);
}

void TTRIInlineButtonAttachmentTextView.font.setter(void *a1)
{
  sub_21D1A6304(a1, &selRef_font, &selRef_setFont_, sub_21D1A18BC);
}

void sub_21D1A18BC(void *a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v13, sel_font);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_280D176B0);
      v6 = a1;
      v7 = sub_21DBFB63C();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = sub_21D1A1A24();
  ObjectType = swift_getObjectType();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_font);
  if (!v10)
  {
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v10 = sub_21D900614(1);
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_font;
  swift_beginAccess();
  v12 = *&v8[v11];
  *&v8[v11] = v10;
}

id sub_21D1A1A24()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIMenuButtonAttachment()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*TTRIInlineButtonAttachmentTextView.font.modify(objc_super *a1))(uint64_t a1, char a2)
{
  a1[1].super_class = v1;
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  a1[1].receiver = [(objc_super *)a1 font];
  return sub_21D1A1B1C;
}

id sub_21D1A1B44(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.textColor.getter();

  return v2;
}

id sub_21D1A1B94(SEL *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, *a1);

  return v3;
}

void sub_21D1A1BE8(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = a1;
  sub_21D1A6304(a3, &selRef_textColor, &selRef_setTextColor_, sub_21D1A1CC4);
}

void TTRIInlineButtonAttachmentTextView.textColor.setter(void *a1)
{
  sub_21D1A6304(a1, &selRef_textColor, &selRef_setTextColor_, sub_21D1A1CC4);
}

void sub_21D1A1CC4(void *a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v13, sel_textColor);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0);
      v6 = a1;
      v7 = sub_21DBFB63C();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = sub_21D1A1A24();
  ObjectType = swift_getObjectType();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_textColor);
  if (!v10)
  {
    v10 = [objc_opt_self() labelColor];
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore24TTRIMenuButtonAttachment_textColor;
  swift_beginAccess();
  v12 = *&v8[v11];
  *&v8[v11] = v10;
}

void (*TTRIInlineButtonAttachmentTextView.textColor.modify(objc_super *a1))(uint64_t a1, char a2)
{
  a1[1].super_class = v1;
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  a1[1].receiver = [(objc_super *)a1 textColor];
  return sub_21D1A1E74;
}

void sub_21D1A1E9C(uint64_t a1, char a2, SEL *a3, SEL *a4, void (*a5)(id))
{
  v10 = *(a1 + 16);
  if (a2)
  {
    v8 = v10;
    sub_21D1A6304(v10, a3, a4, a5);

    v9 = v8;
  }

  else
  {
    sub_21D1A6304(*(a1 + 16), a3, a4, a5);
    v9 = v10;
  }
}

id TTRIInlineButtonAttachmentTextView.rangeOfButtonAttachment.getter()
{
  result = [v0 attributedText];
  if (!result)
  {
    goto LABEL_8;
  }

  v2 = result;
  v3 = *MEMORY[0x277D74060];
  v15 = MEMORY[0x277D84F90];
  v4 = [result string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  v9 = swift_allocObject();
  v9[2] = sub_21D1A2190;
  v9[3] = 0;
  v9[4] = &v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21D1A6510;
  *(v10 + 24) = v9;
  aBlock[4] = sub_21D1A651C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  [v2 enumerateAttribute:v3 inRange:0 options:v8 usingBlock:{0, v11}];

  _Block_release(v11);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = v15;

  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL sub_21D1A2190(uint64_t a1)
{
  sub_21D0DB414(a1, v5);
  if (!v6)
  {
    sub_21D1A8418(v5);
    goto LABEL_5;
  }

  type metadata accessor for TTRIMenuButtonAttachment();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  v1 = v4;
LABEL_6:
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_21D1A2214@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x277D85000] & **a1) + 0x80);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D1A228C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + *((*MEMORY[0x277D85000] & **a2) + 0x80);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80);
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIInlineButtonAttachmentTextView.attachmentDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

Swift::Void __swiftcall TTRIInlineButtonAttachmentTextView.applyText(_:)(Swift::String a1)
{
  v2 = sub_21D1A250C();
  [v1 setAttributedText_];
}

id sub_21D1A250C()
{
  sub_21D1A4324();
  v0 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v1 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v2 = sub_21DBF9E5C();

  v3 = [v0 initWithString:v1 attributes:v2];

  v4 = sub_21D1A2818(v3);
  return v4;
}

void sub_21D1A25D8(void *a1)
{
  v2 = [a1 string];
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if ([a1 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0])
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      sub_21D0D8CF0(0, &qword_280D176B0);
      if (swift_dynamicCast())
      {
        v7 = v9;
        sub_21D1A6304(v9, &selRef_font, &selRef_setFont_, sub_21D1A18BC);
      }
    }

    else
    {
      sub_21D1A8418(&v12);
    }

    if ([a1 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0])
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0);
      if (swift_dynamicCast())
      {
        v8 = v9;
        sub_21D1A6304(v9, &selRef_textColor, &selRef_setTextColor_, sub_21D1A1CC4);
      }
    }

    else
    {
      sub_21D1A8418(&v12);
    }
  }
}

id sub_21D1A2818(void *a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  if (*(v4 + 1))
  {
    sub_21DBF8E0C();
    v5 = [a1 string];
    if (!v5)
    {
      sub_21DBFA16C();
      v5 = sub_21DBFA12C();
    }

    v6 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

    v7 = sub_21DBFA12C();

    v8 = [v6 rangeOfString_];
    v10 = v9;

    v11 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v13 = v8 == sub_21DBF4B4C() && v10 == 0;
    v14 = *((*v3 & *v2) + 0x68);
    swift_beginAccess();
    if (*(v2 + v14))
    {
      if (!v13)
      {
        if (qword_27CE56568 != -1)
        {
          swift_once();
        }

        v15 = sub_21DBF84BC();
        __swift_project_value_buffer(v15, qword_27CE58B00);
        v16 = sub_21DBF84AC();
        v17 = sub_21DBFAEDC();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v41 = v11;
          v19 = swift_slowAlloc();
          v43[0] = v19;
          *v18 = 136315138;
          v20 = sub_21DBFB9BC();
          v22 = sub_21D0CDFB4(v20, v21, v43);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_21D0C9000, v16, v17, "Applying selected item title to {range: %s}", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          v23 = v19;
          v11 = v41;
          MEMORY[0x223D46520](v23, -1, -1);
          MEMORY[0x223D46520](v18, -1, -1);
        }

        v24 = swift_beginAccess();
        MEMORY[0x28223BE20](v24);
        type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
        sub_21DBFA74C();
        sub_21DBF8E0C();
        swift_getWitnessTable();
        v25 = sub_21DBFA4EC();

        if (*(v25 + 16))
        {
          sub_21DBF8E0C();
        }

        v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v38 = sub_21DBFA12C();

        v39 = [v37 initWithString_];

        v40 = [v39 length];
        [v11 replaceCharactersInRange:v8 withAttributedString:{v10, v39}];
        sub_21D1A44E8();
        type metadata accessor for Key(0);
        sub_21D112874();
        v36 = sub_21DBF9E5C();

        [v11 setAttributes:v36 range:{v8, v40}];

LABEL_28:
      }
    }

    else if (!v13)
    {
      if (qword_27CE56568 != -1)
      {
        swift_once();
      }

      v27 = sub_21DBF84BC();
      __swift_project_value_buffer(v27, qword_27CE58B00);
      v28 = sub_21DBF84AC();
      v29 = sub_21DBFAEDC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43[0] = v31;
        *v30 = 136315138;
        v32 = sub_21DBFB9BC();
        v34 = sub_21D0CDFB4(v32, v33, v43);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_21D0C9000, v28, v29, "Applying menu to {range: %s}", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x223D46520](v31, -1, -1);
        MEMORY[0x223D46520](v30, -1, -1);
      }

      sub_21D1A0C3C();
      v35 = sub_21D1A1A24();
      v36 = [objc_opt_self() attributedStringWithAttachment_];

      [v11 replaceCharactersInRange:v8 withAttributedString:{v10, v36}];
      goto LABEL_28;
    }

    return v11;
  }

  return a1;
}

id TTRIInlineButtonAttachmentTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id TTRIInlineButtonAttachmentTextView.init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = *v5;
  v13 = MEMORY[0x277D85000];
  v14 = *MEMORY[0x277D85000];
  v15 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60));
  *v15 = 0;
  v15[1] = 0;
  *(v5 + *((*v13 & *v5) + 0x68)) = 0;
  v16 = *((*v13 & *v5) + 0x70);
  v17 = *((v14 & v12) + 0x50);
  type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  *(v5 + v16) = sub_21DBF9E3C();
  (*(*(v17 - 8) + 56))(v5 + *((*v13 & *v5) + 0x78), 1, 1, v17);
  *(v5 + *((*v13 & *v5) + 0x80) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v13 & *v5) + 0x88)) = 0;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v24, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);
  [v18 setEditable_];
  v19 = v18;
  [v19 setSelectable_];
  [v19 setScrollEnabled_];
  [v19 setShowsHorizontalScrollIndicator_];
  [v19 setShowsVerticalScrollIndicator_];

  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [objc_opt_self() preferredFontForTextStyle_];
  sub_21D1A6304(v20, &selRef_font, &selRef_setFont_, sub_21D1A18BC);

  [v19 setTextContainerInset_];
  v21 = [v19 textContainer];
  [v21 setLineFragmentPadding_];

  v22 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor_];

  return v19;
}

id TTRIInlineButtonAttachmentTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_21D1A339C(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.accessibilityAttributedLabel.getter();

  return v2;
}

uint64_t TTRIInlineButtonAttachmentTextView.accessibilityAttributedLabel.getter()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t (*TTRIInlineButtonAttachmentTextView.accessibilityValue.modify(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21D1A3538(void *a1)
{
  v1 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityHint.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_21DBFA12C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t TTRIInlineButtonAttachmentTextView.accessibilityHint.getter()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t (*TTRIInlineButtonAttachmentTextView.accessibilityHint.modify(uint64_t *a1))()
{
  *a1 = TTRIInlineButtonAttachmentTextView.accessibilityHint.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

BOOL sub_21D1A36BC(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter();

  return v2;
}

uint64_t (*TTRIInlineButtonAttachmentTextView.accessibilityRespondsToUserInteraction.modify(BOOL *a1))(void, void, void)
{
  TTRIInlineButtonAttachmentTextView.rangeOfButtonAttachment.getter();
  *a1 = (v2 & 1) == 0;
  return nullsub_1;
}

unint64_t sub_21D1A3744(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.accessibilityTraits.getter();

  return v2;
}

unint64_t TTRIInlineButtonAttachmentTextView.accessibilityTraits.getter()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, sel_accessibilityTraits);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    TTRIInlineButtonAttachmentTextView.rangeOfButtonAttachment.getter();
    v3 = *MEMORY[0x277D76548];
    v4 = *MEMORY[0x277D76548] & v1;
    v5 = v1 & ~*MEMORY[0x277D76548];
    if (!v4)
    {
      v5 = v1;
    }

    if (v4 == v3)
    {
      v3 = 0;
    }

    v6 = v3 | v1;
    if (v2)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  return v1;
}

void sub_21D1A37FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityTraits.setter(a3);
}

id TTRIInlineButtonAttachmentTextView.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setAccessibilityTraits_, a1);
}

id (*TTRIInlineButtonAttachmentTextView.accessibilityTraits.modify(uint64_t a1))(objc_super *a1)
{
  *(a1 + 24) = v1;
  *(a1 + 16) = TTRIInlineButtonAttachmentTextView.accessibilityTraits.getter();
  return sub_21D1A38E0;
}

id sub_21D1A38E0(objc_super *a1)
{
  receiver = a1[1].receiver;
  super_class = a1[1].super_class;
  ObjectType = swift_getObjectType();
  a1->receiver = super_class;
  a1->super_class = ObjectType;

  return [(objc_super *)a1 setAccessibilityTraits:receiver];
}

double sub_21D1A3938(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.getter();

  return v2;
}

double TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.getter()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_accessibilityActivationPoint);
  v2 = v1;
  v3 = sub_21D1A6104(v0, 0, 0);
  if (v3)
  {
    v4 = v3;
    [v3 accessibilityActivationPoint];
    v2 = v5;
  }

  return v2;
}

void sub_21D1A3A00(void *a1, double a2, double a3)
{
  v5 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.setter(a2, a3);
}

id TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setAccessibilityActivationPoint_, a1, a2);
}

void (*TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.modify(uint64_t *a1))(objc_super **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 16) = TTRIInlineButtonAttachmentTextView.accessibilityActivationPoint.getter();
  *(v4 + 24) = v5;
  return sub_21D1A3B28;
}

void sub_21D1A3B28(objc_super **a1)
{
  v1 = *a1;
  v2 = *&(*a1)[1].receiver;
  v3 = *&(*a1)[1].super_class;
  receiver = (*a1)[2].receiver;
  ObjectType = swift_getObjectType();
  v1->receiver = receiver;
  v1->super_class = ObjectType;
  [(objc_super *)v1 setAccessibilityActivationPoint:v2, v3];

  free(v1);
}

id sub_21D1A3B90(void *a1)
{
  v1 = a1;
  v2 = TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.getter();

  if (v2)
  {
    sub_21D0D8CF0(0, qword_27CE58B18);
    v3 = sub_21DBFA5DC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.getter()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v16, sel_accessibilityCustomActions);
  if (v1)
  {
    v2 = v1;
    sub_21D0D8CF0(0, qword_27CE58B18);
    v3 = sub_21DBFA5EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v17 = v3;
  v4 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x80);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 40))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = objc_allocWithZone(MEMORY[0x277D75088]);
      v10 = v7;
      v11 = sub_21DBFA12C();

      aBlock[4] = sub_21D1A66EC;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D1A62AC;
      aBlock[3] = &block_descriptor_13;
      v12 = _Block_copy(aBlock);
      [v9 initWithName:v11 actionHandler:{v12, 0x800000021DC44A50}];

      _Block_release(v12);

      MEMORY[0x223D42D80](v13);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v3 = v17;
    }
  }

  if (v3 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      return v3;
    }

    goto LABEL_13;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    return 0;
  }

  return v3;
}

void sub_21D1A3F3C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    sub_21D0D8CF0(0, qword_27CE58B18);
    v3 = sub_21DBFA5EC();
  }

  v5 = a1;
  TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(v3);
}

void TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    sub_21D0D8CF0(0, qword_27CE58B18);
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_setAccessibilityCustomActions_, v4);
}

uint64_t sub_21D1A4054(uint64_t a1, void *a2)
{
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = a2;
  v11 = [v10 superview];

  if (v11)
  {
    while (1)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        break;
      }

      v13 = v11;
      v11 = [v13 superview];

      if (!v11)
      {
        return 0;
      }
    }

    v14 = v12;
    v15 = [v12 _tableView];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 indexPathForCell_];
      if (v17)
      {
        v18 = v17;
        sub_21DBF5CAC();

        (*(v4 + 32))(v9, v6, v3);
        v19 = sub_21DBF5C6C();
        [v16 scrollToRowAtIndexPath:v19 atScrollPosition:2 animated:1];

        UIAccessibilityPostNotification(*MEMORY[0x277D76488], v10);
        (*(v4 + 8))(v9, v3);
        return 1;
      }
    }
  }

  return 0;
}

void (*TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.getter();
  return sub_21D1A42CC;
}

void sub_21D1A42CC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_21DBF8E0C();
    TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(v2);
  }

  else
  {
    TTRIInlineButtonAttachmentTextView.accessibilityCustomActions.setter(*a1);
  }
}

unint64_t sub_21D1A4324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = v3;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v12, sel_font);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
  if (!v5)
  {
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21D900614(1);
  }

  *(inited + 40) = v5;
  v6 = *MEMORY[0x277D740C0];
  *(inited + 72) = *MEMORY[0x277D740C0];
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_textColor);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D1B8F0);
  if (!v9)
  {
    v9 = [objc_opt_self() labelColor];
  }

  *(inited + 80) = v9;
  v10 = sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_21D1A44E8()
{
  v0 = sub_21D1A4324();
  v14 = v0;
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D740A8];
  v3 = v2;
  if (v1 && (v4 = sub_21D10FE34(v2), (v5 & 1) != 0) && (sub_21D0CEB98(*(v0 + 56) + 32 * v4, &v12), v6 = sub_21D0D8CF0(0, &qword_280D176B0), (swift_dynamicCast() & 1) != 0))
  {
    isa = UIFont.withCustomWeight(_:)(*MEMORY[0x277D743F8]).super.isa;

    v13 = v6;
    *&v12 = isa;
    sub_21D0CF2E8(&v12, v11);
    v8 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v11, v3, isUniquelyReferenced_nonNull_native);

    return v8;
  }

  else
  {
    sub_21D983190(v3, &v12);

    sub_21D1A8418(&v12);
    return v14;
  }
}

uint64_t sub_21D1A4618@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v68 = a1;
  v5 = *a2;
  v6 = *MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a2) + 0x50);
  v67 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v61 = &v55 - v8;
  v9 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v64 = &v55 - v10;
  v65 = v9;
  v69 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = a2;
  v17 = *((v6 & v5) + 0x58);
  v18 = type metadata accessor for TTRIMenuItem();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  v22 = v7;
  v60 = v17;
  v23 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v55 - v25;
  (*(v27 + 16))(&v55 - v25, v68, v24);
  result = (*(v19 + 48))(v26, 1, v18);
  if (result == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v68 = a3;
  v58 = v19;
  (*(v19 + 32))(v21, v26, v18);
  v59 = v18;
  v29 = *(v18 + 40);
  v30 = v67;
  v31 = *(v67 + 16);
  v57 = v21;
  v31(v15, &v21[v29], v7);
  (*(v30 + 56))(v15, 0, 1, v7);
  v32 = v16;
  v33 = *((*MEMORY[0x277D85000] & *v16) + 0x78);
  swift_beginAccess();
  v34 = v65;
  v35 = v15;
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v69 + 16);
  v38 = v64;
  v55 = v35;
  v37(v64);
  v56 = v36;
  (v37)(&v38[v36], v32 + v33, v34);
  v39 = *(v30 + 48);
  if (v39(v38, 1, v22) == 1)
  {
    v40 = *(v69 + 8);
    v40(v55, v34);
    v41 = v39(&v38[v56], 1, v22);
    v42 = v68;
    if (v41 == 1)
    {
      v40(v38, v34);
LABEL_11:
      v49 = v57;
      v45 = *v57;
      v46 = *(v57 + 1);
      sub_21DBF8E0C();
      v48 = v58;
      v47 = v59;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v43 = v62;
  (v37)();
  v44 = v56;
  if (v39(&v38[v56], 1, v22) == 1)
  {
    (*(v69 + 8))(v55, v34);
    (*(v67 + 8))(v43, v22);
    v42 = v68;
LABEL_8:
    (*(v63 + 8))(v38, TupleTypeMetadata2);
    goto LABEL_9;
  }

  v50 = v67;
  v51 = v61;
  (*(v67 + 32))(v61, &v38[v44], v22);
  v52 = sub_21DBFA10C();
  v53 = *(v50 + 8);
  v53(v51, v22);
  v54 = *(v69 + 8);
  v54(v55, v34);
  v53(v43, v22);
  v54(v38, v34);
  v42 = v68;
  if (v52)
  {
    goto LABEL_11;
  }

LABEL_9:
  v45 = 0;
  v46 = 0;
  v48 = v58;
  v47 = v59;
  v49 = v57;
LABEL_12:
  result = (*(v48 + 8))(v49, v47);
  *v42 = v45;
  v42[1] = v46;
  return result;
}

uint64_t sub_21D1A4C90(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v108 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v73 = &v71 - v5;
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v98 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v88 = &v71 - v7;
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v71 - v12;
  v13 = *((v3 & v2) + 0x58);
  v110 = type metadata accessor for TTRIMenuItem();
  v14 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v86 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  v92 = v13;
  v19 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  v106 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v105 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v71 - v22;
  v23 = MEMORY[0x277D84F90];
  v112 = 0;
  v113 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v107 = sub_21DBF8E0C();
  v95 = v19;
  if (sub_21DBFA6DC())
  {
    v76 = v10;
    v24 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    v101 = v1;
    v83 = v24;
    swift_beginAccess();
    v25 = 0;
    v89 = 0;
    v26 = v106;
    v103 = (v106 + 32);
    v104 = (v106 + 16);
    v102 = (v14 + 48);
    v99 = (v14 + 32);
    v82 = (v108 + 16);
    v81 = (v108 + 56);
    v80 = (v97 + 16);
    v79 = (v108 + 48);
    v72 = (v108 + 32);
    v75 = (v108 + 8);
    v91 = (v97 + 8);
    v74 = (v98 + 8);
    v77 = v14 + 16;
    v85 = v14;
    v84 = (v14 + 8);
    v90 = v23;
    v98 = v4;
    v78 = v6;
    v27 = v88;
    v28 = v94;
    v29 = v95;
    v30 = v107;
    v100 = v18;
    while (1)
    {
      v32 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v32)
      {
        (*(v26 + 16))(v109, v30 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v29);
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v71 != 8)
        {
          __break(1u);
          return result;
        }

        v111 = result;
        (*v104)(v109, &v111, v29);
        swift_unknownObjectRelease();
      }

      v33 = MEMORY[0x277D84F90];
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      v108 = v25 + 1;
      v34 = v105;
      (*v103)(v105, v109, v29);
      if ((*v102)(v34, 1, v110) != 1)
      {
        break;
      }

      if (v112)
      {
        sub_21D0D8CF0(0, &qword_280D0C1F0);
        sub_21DBF8E0C();
        sub_21DBFB58C();
        MEMORY[0x223D42D80]();
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
          v27 = v88;
        }

        sub_21DBFA6CC();
        v90 = v113;

        v29 = v95;
      }

      v112 = v33;
LABEL_5:
      v30 = v107;
      v31 = sub_21DBFA6DC();
      ++v25;
      v26 = v106;
      if (v108 == v31)
      {
        goto LABEL_34;
      }
    }

    v35 = v34;
    v36 = v110;
    v97 = *v99;
    (v97)(v18, v35, v110);
    (*v82)(v28, &v18[*(v36 + 40)], v4);
    (*v81)(v28, 0, 1, v4);
    v37 = *(TupleTypeMetadata2 + 48);
    v38 = *v80;
    (*v80)(v27, v28, v6);
    v38(&v27[v37], &v101[v83], v6);
    v39 = *v79;
    if ((*v79)(v27, 1, v4) == 1)
    {
      v40 = *v91;
      (*v91)(v28, v6);
      if (v39(&v27[v37], 1, v4) == 1)
      {
        v40(v27, v6);
        v41 = v85;
        if (v89)
        {
          goto LABEL_44;
        }

        v89 = 1;
        v42 = 1;
LABEL_22:
        v96 = v42;
        goto LABEL_23;
      }
    }

    else
    {
      v43 = v76;
      v38(v76, v27, v6);
      if (v39(&v27[v37], 1, v4) != 1)
      {
        v44 = v73;
        (*v72)(v73, &v27[v37], v4);
        v45 = sub_21DBFA10C();
        v46 = *v75;
        (*v75)(v44, v4);
        v47 = *v91;
        (*v91)(v94, v6);
        v46(v43, v4);
        v47(v27, v6);
        v41 = v85;
        if (v45 & v89)
        {
LABEL_44:

          v66 = v100;
          if (qword_27CE56568 != -1)
          {
            swift_once();
          }

          v67 = sub_21DBF84BC();
          __swift_project_value_buffer(v67, qword_27CE58B00);
          v68 = sub_21DBF84AC();
          v69 = sub_21DBFAEBC();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_21D0C9000, v68, v69, "Cannot build a valid UIMenu with multiple selected items", v70, 2u);
            MEMORY[0x223D46520](v70, -1, -1);
          }

          (*v84)(v66, v110);
LABEL_49:
          v61 = 0;
          goto LABEL_50;
        }

        v89 = v45 | v89;
        v42 = v45 & 1;
        goto LABEL_22;
      }

      (*v91)(v94, v6);
      (*v75)(v43, v4);
    }

    (*v74)(v27, TupleTypeMetadata2);
    v96 = 0;
    v41 = v85;
LABEL_23:
    v48 = v100;
    sub_21D0D8CF0(0, &qword_280D0C1D0);
    v49 = *(v48 + 2);
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = v86;
    v52 = v110;
    (*(v41 + 16))(v86, v48, v110);
    v53 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v54 = swift_allocObject();
    v55 = v92;
    v54[2] = v98;
    v54[3] = v55;
    v54[4] = v50;
    (v97)(v54 + v53, v51, v52);
    v56 = v49;
    sub_21DBF8E0C();
    v57 = sub_21DBFB77C();
    v58 = v112;
    v59 = v57;
    if (v58)
    {
      MEMORY[0x223D42D80]();
      if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v18 = v100;
      (*v84)(v100, v110);
    }

    else
    {
      MEMORY[0x223D42D80]();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v18 = v100;
      (*v84)(v100, v110);
      v90 = v113;
    }

    v4 = v98;
    v6 = v78;
    v27 = v88;
    v28 = v94;
    v29 = v95;
    goto LABEL_5;
  }

  v89 = 0;
  v90 = v23;
LABEL_34:

  if (v112)
  {
    sub_21D0D8CF0(0, &qword_280D0C1F0);
    sub_21DBF8E0C();
    sub_21DBFB58C();
    MEMORY[0x223D42D80]();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_52:
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  if ((v89 & 1) == 0)
  {

    if (qword_27CE56568 != -1)
    {
      swift_once();
    }

    v62 = sub_21DBF84BC();
    __swift_project_value_buffer(v62, qword_27CE58B00);
    v63 = sub_21DBF84AC();
    v64 = sub_21DBFAEBC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_21D0C9000, v63, v64, "Cannot build a valid UIMenu with no selected items", v65, 2u);
      MEMORY[0x223D46520](v65, -1, -1);
    }

    goto LABEL_49;
  }

  sub_21D0D8CF0(0, &qword_280D0C1F0);
  v61 = sub_21DBFB58C();
LABEL_50:

  return v61;
}

void sub_21D1A5C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(type metadata accessor for TTRIMenuItem() + 40);
    v13 = *(a4 - 8);
    v14 = *(v13 + 16);
    v14(v9, a3 + v12, a4);
    (*(v13 + 56))(v9, 0, 1, a4);
    sub_21D1A6394(v9);
    (*(v7 + 8))(v9, v6);
    v15 = [v11 attributedText];
    if (v15)
    {
      v16 = v15;
      TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(v15, 1);

      v17 = v11 + *((*MEMORY[0x277D85000] & *v11) + 0x80);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        v21[3] = a4;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
        v14(boxed_opaque_existential_0, a3 + v12, a4);
        (*(v18 + 8))(v21, ObjectType, v18);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v21);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id TTRIInlineButtonAttachmentTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21D1A5F00(char *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *((*v2 & *a1) + 0x78);
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  sub_21D157444(&a1[*((*v2 & *a1) + 0x80)]);
  v5 = *&a1[*((*v2 & *a1) + 0x88)];
}

uint64_t sub_21D1A6068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_21D0CF2E8(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_21D1A8418(v13);
}

uint64_t sub_21D1A6104(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_5:
    v10 = [a1 subviews];
    sub_21D0D8CF0(0, &qword_280D176A0);
    v11 = sub_21DBFA5EC();

    if (v11 >> 62)
    {
LABEL_21:
      v12 = sub_21DBFBD7C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v12 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223D44740](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = sub_21D1A6104(v14, a2, a3);

      if (v7)
      {

        return v7;
      }
    }

    return 0;
  }

  v7 = v6;
  if (!a2)
  {
    v16 = a1;
    return v7;
  }

  v8 = a1;
  sub_21D0D0E78(a2);
  v9 = a2(v7);
  sub_21D0D0E88(a2);
  if ((v9 & 1) == 0)
  {

    goto LABEL_5;
  }

  return v7;
}

uint64_t sub_21D1A62AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_21D1A6304(uint64_t a1, SEL *a2, SEL *a3, void (*a4)(id))
{
  ObjectType = swift_getObjectType();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, *a2);
  v11.receiver = v4;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, *a3, a1);
  a4(v10);
}

uint64_t sub_21D1A6394(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  v9 = *((v4 & v3) + 0x78);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v9], a1, v5);
  swift_endAccess();
  sub_21D1A0FCC(v8);
  return (*(v6 + 8))(v8, v5);
}

void _s15RemindersUICore34TTRIInlineButtonAttachmentTextViewC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = *v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000];
  v4 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  *v4 = 0;
  v4[1] = 0;
  *(v0 + *((*v2 & *v0) + 0x68)) = 0;
  v5 = *((*v2 & *v0) + 0x70);
  v6 = *((v3 & v1) + 0x50);
  type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  *(v0 + v5) = sub_21DBF9E3C();
  (*(*(v6 - 8) + 56))(v0 + *((*v2 & *v0) + 0x78), 1, 1, v6);
  *(v0 + *((*v2 & *v0) + 0x80) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v2 & *v0) + 0x88)) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D1A6724()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D1A67D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    v12 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    v14 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v15 = *(v5 + 16);
    sub_21DBF8E0C();
    v16 = v13;
    v15(v14 + 1, v12 + 1, v4);
    v17 = ((v14 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v17[1] = v18[1];
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21D1A692C(uint64_t a1, uint64_t a2)
{

  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(*(*(a2 + 16) - 8) + 8))((v4 + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

void *sub_21D1A69D4(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  *v5 = *v6;
  v8 = *(a3 + 16);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(v8 - 8) + 16;
  v11 = *(*(v8 - 8) + 80);
  v12 = (v5 + v11 + 8) & ~v11;
  v13 = (v6 + v11 + 8) & ~v11;
  sub_21DBF8E0C();
  v14 = v7;
  v9(v12, v13, v8);
  v15 = *(v10 + 48) + 7;
  v16 = ((v15 + v12) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  sub_21DBF8E0C();
  return a1;
}

void *sub_21D1A6AB4(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *v6;
  *v6 = *v7;
  v10 = v8;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = (v6 + v13 + 8) & ~v13;
  v15 = (v7 + v13 + 8) & ~v13;
  (*(v11 + 24))(v14, v15);
  v16 = *(v12 + 40) + 7;
  v17 = ((v16 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v17[1] = v18[1];
  sub_21DBF8E0C();

  return a1;
}

_OWORD *sub_21D1A6BB8(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 32))(v9, v10);
  *((*(v7 + 32) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 32) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_21D1A6C70(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = *v8;

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];

  return a1;
}

uint64_t sub_21D1A6D58(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_21D1A6EA8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_21D1A715C()
{
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D1A7240()
{
  result = type metadata accessor for TTRIMenuItem();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_21D1A72BC(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v8 > 0x18)
  {
    v11 = *a2;
    *__dst = *a2;
    __dst = (v11 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = a2[1];
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))(((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    v16 = a2[1];
    *__dst = *a2;
    __dst[1] = v16;
    v17 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    v19 = ((__dst + 23) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v17;
    v20 = *(v5 + 16);
    sub_21DBF8E0C();
    v21 = v18;
    v20(v19 + 1, v17 + 1, v4);
    v22 = ((v19 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v17 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v22[1] = v23[1];
    sub_21DBF8E0C();
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v8);
}

uint64_t sub_21D1A749C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if ((*(v4 + 84) & 0x80000000) != 0)
  {
    result = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v6);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  if (v7 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

    (*(v4 + 8))((v9 + v5 + 8) & v6, v3);
  }

  return result;
}

void *sub_21D1A75DC(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v6 + 7;
    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    v16 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = *v17;
    *v16 = *v17;
    v19 = v17 + v5;
    v20 = (v16 + v5 + 8) & v7;
    v21 = (v19 + 8) & v7;
    v22 = *(v4 + 16);
    v23 = a1;
    sub_21DBF8E0C();
    v24 = v18;
    v22(v20, v21, v3);
    v25 = ((v9 + v20) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v9 + v21) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v25[1] = v26[1];
    sub_21DBF8E0C();
    return v23;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v7, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  v9 = v6 + 7;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v9 + ((v5 + 24) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void *sub_21D1A7798(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = *(v6 + 64);
  v11 = v10 + 7;
  v12 = (v10 + 7 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v39 = v10 + 7;
    v17 = *(v6 + 48);
    v18 = v17((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v15 = v17((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v11 = v39;
    if (!v18)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    a1[1] = a2[1];
    v20 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;
    *v20 = *v21;
    v23 = (v20 + v8 + 8) & v9;
    v24 = (v21 + v8 + 8) & v9;
    v25 = *(v6 + 16);
    sub_21DBF8E0C();
    v26 = v22;
    v25(v23, v24, v5);
    v27 = ((v11 + v23) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v11 + v24) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v27[1] = v28[1];
    sub_21DBF8E0C();
    return a1;
  }

  v13 = a1[1];
  v14 = a2[1];
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (v13 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    sub_21DBF8E0C();

    v29 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v31 = *v30;
    v32 = *v29;
    *v29 = *v30;
    v33 = v31;

    v34 = v30 + v8;
    v35 = (v29 + v8 + 8) & v9;
    v36 = (v34 + 8) & v9;
    (*(v6 + 24))(v35, v36, v5);
    v37 = ((v11 + v35) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v11 + v36) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    v37[1] = v38[1];
    sub_21DBF8E0C();

    return a1;
  }

  v16 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v16 + v8 + 8) & v9, v5);

LABEL_9:

  return memcpy(a1, a2, v12 + 16);
}

_OWORD *sub_21D1A7AB4(_OWORD *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ~v5;
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v8 = a2[1];
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v6 + 7;
    if (v8 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = v16 + v5;
    v18 = (v15 + v5 + 8) & v7;
    v19 = (v17 + 8) & v7;
    v20 = a1;
    (*(v4 + 32))(v18, v19, v3);
    *((v9 + v18) & 0xFFFFFFFFFFFFFFF8) = *((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
    return v20;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & v7, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  v9 = v6 + 7;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v9 + ((v5 + 24) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void *sub_21D1A7C58(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = *(v6 + 64);
  v11 = v10 + 7;
  v12 = (v10 + 7 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v33 = (v10 + 7 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8;
    v34 = v10 + 7;
    v17 = *(v6 + 48);
    v18 = v17((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v15 = v17((((a2 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, v5);
    v12 = v33;
    v11 = v34;
    if (!v18)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *a1 = *a2;
    v20 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + v8 + 8) & v9;
    v23 = (v21 + v8 + 8) & v9;
    (*(v6 + 32))(v22, v23, v5);
    *((v11 + v22) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v23) & 0xFFFFFFFFFFFFFFF8);
    return a1;
  }

  v13 = a1[1];
  v14 = a2[1];
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (v13 <= 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    v24 = a2[1];
    *a1 = *a2;
    a1[1] = v24;

    v25 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = *v25;
    *v25 = *v26;

    v28 = v26 + v8;
    v29 = (v25 + v8 + 8) & v9;
    v30 = (v28 + 8) & v9;
    (*(v6 + 40))(v29, v30, v5);
    v31 = ((v11 + v29) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v11 + v30) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v31[1] = v32[1];

    return a1;
  }

  v16 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);

  (*(v6 + 8))((v16 + v8 + 8) & v9, v5);

LABEL_9:

  return memcpy(a1, a2, v12 + 16);
}

uint64_t sub_21D1A7F30(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  v11 = v9 + 2;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    if ((v5 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    else
    {
      v17 = *(a1 + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 + 1;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v16) + v7;
}

unsigned int *sub_21D1A80A8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(v5 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 - 1 >= a3)
  {
    v13 = 0;
    if (v8 >= a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = a3 - v7 + 2;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v8 >= a2)
    {
LABEL_16:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *(result + v10) = 0;
      }

      else if (v13)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v17 = *(v5 + 56);
        v18 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
        v19 = a2 + 1;

        return v17(v18, v19);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *result = a2 - 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2;
      }

      return result;
    }
  }

  v14 = a2 - v7;
  if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = result;
    bzero(result, v10);
    result = v16;
    *v16 = v14;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v10) = v15;
    }

    else
    {
      *(result + v10) = v15;
    }
  }

  else if (v13)
  {
    *(result + v10) = v15;
  }

  return result;
}

uint64_t sub_21D1A8294(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if ((*(v2 + 84) & 0x80000000) != 0)
  {
    return (*(v2 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v2 + 80) + 8) & ~*(v2 + 80));
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  return (v3 + 1);
}

void sub_21D1A8308(void *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  v8 = ~v7;
  if (v6 >= a2)
  {
    if (a2)
    {
      if ((v5 & 0x80000000) != 0)
      {
        v12 = *(v4 + 56);
        v13 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v8;

        v12(v13);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = a2 - 1;
      }
    }
  }

  else
  {
    v9 = ((((v7 + 24) & v8) + *(v4 + 64) + 7) & 0xFFFFFFF8) + 16;
    if (v9)
    {
      v10 = ~v6 + a2;
      bzero(a1, v9);
      *a1 = v10;
    }
  }
}

uint64_t sub_21D1A8418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D1A849C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for TTRIMenuItem() - 8);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  sub_21D1A5C38(a1, v5, v6, v3);
}

id _s15RemindersUICore24TTRIMenuButtonAttachmentCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarDateViewController()
{
  result = qword_27CE58D20;
  if (!qword_27CE58D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D1A860C(uint64_t a1)
{
  result = sub_21D1A8634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D1A8634()
{
  result = qword_27CE58D30;
  if (!qword_27CE58D30)
  {
    type metadata accessor for TTRIReminderCellQuickBarDateViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58D30);
  }

  return result;
}

uint64_t sub_21D1A868C()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D1A86E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents;
  swift_beginAccess();
  sub_21D1A91F8(v0 + v7, v3);
  sub_21D1A88C0(v3, v6);
  sub_21D0CF7E0(v3, &qword_27CE58D60);
  TTRRemindersListPostponeType.init(date:)(v6, &v15);
  v8 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v8;
  *(inited + 40) = 1;
  v10 = sub_21D177548(inited);
  swift_setDeallocating();
  v11 = swift_allocObject();
  swift_weakInit();
  v15 = 256;
  v16 = 1;
  v17 = v10;
  v18 = sub_21D1A9268;
  v19 = v11;
  v12 = _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO018makeDueDateContextF013configurationSo6UIMenuCAC0ijkF13ConfigurationV_tFZ_0(&v15);

  return v12;
}

uint64_t sub_21D1A88C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF5A2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1A91F8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE58D60);
    v15 = sub_21DBF563C();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = [objc_opt_self() currentCalendar];
    sub_21DBF596C();

    sub_21DBF597C();
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_21D1A8B60(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_21D1A8BCC(&v3);
  }

  return result;
}

void sub_21D1A8BCC(_BYTE *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRDateChangeType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 > 4u)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v18 = (*(*(v11 + 8) + 40))(ObjectType);
      swift_unknownObjectRelease();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v19 = 1;
        v20 = v18;
        v21 = 0u;
        v22 = 0u;
        v23 = 1;
        v24 = 0;
        v25 = 1;
        v15 = v18;
        sub_21D1A9344(&v20, v14);

        swift_unknownObjectRelease();
        sub_21D1A9430(&v20);
      }

      else
      {
        v17 = v18;
      }
    }
  }

  else
  {
    LOBYTE(v20) = *a1;
    TTRRemindersListPostponeType.dateChangeType.getter(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_21D0CF7E0(v6, &qword_27CE58D78);
    }

    else
    {
      sub_21D1A9484(v6, v10);
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        sub_21D1A9270(v10, v16);
        swift_unknownObjectRelease();
      }

      sub_21D1A94E8(v10);
    }
  }
}

uint64_t sub_21D1A8E2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents;
  swift_beginAccess();
  sub_21D1A9544(a1, v1 + v12);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    sub_21D1A91F8(v1 + v12, v8);
    sub_21D1A91F8(v8, v5);
    sub_21DAA48BC(v5, v11);
    sub_21D0CF7E0(v8, &qword_27CE58D60);
    (*(*(v13 + 8) + 24))(v11, ObjectType);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D60);
}

uint64_t sub_21D1A8FF4()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents, &qword_27CE58D60);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_router);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarDatePresenter()
{
  result = qword_27CE58D48;
  if (!qword_27CE58D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D1A90EC()
{
  sub_21D1A919C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D1A919C()
{
  if (!qword_27CE58D58)
  {
    sub_21DBF509C();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE58D58);
    }
  }
}

uint64_t sub_21D1A91F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1A9270(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
  result = swift_beginAccess();
  v5 = v3[3];
  if (v5)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
    v7 = *v6;
    v8 = *v6 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 72))(v7, a1, ObjectType, v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21D1A9344(_OWORD *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
  result = swift_beginAccess();
  v5 = v3[3];
  if (v5)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
    v7 = *v6;
    v8 = *v6 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = a1[1];
      v12[0] = *a1;
      v12[1] = v11;
      v13[0] = a1[2];
      *(v13 + 9) = *(a1 + 41);
      (*(v9 + 80))(v7, v12, ObjectType, v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21D1A9484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1A94E8(uint64_t a1)
{
  v2 = type metadata accessor for TTRDateChangeType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D1A9544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1A95B4(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRIReminderCellQuickBarDateInteractor();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TTRIReminderCellQuickBarDateRouter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[3] = v6;
  v25[4] = &off_282EAAAD0;
  v25[0] = v7;
  type metadata accessor for TTRIReminderCellQuickBarDatePresenter();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v15 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_router);
  v15[3] = v6;
  v15[4] = &off_282EAAAD0;
  *v15 = v14;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_dateComponents;
  v17 = sub_21DBF509C();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarDatePresenter_interactor);
  *v18 = v5;
  v18[1] = &off_282EAAA30;

  __swift_destroy_boxed_opaque_existential_0(v25);
  v19 = type metadata accessor for TTRIReminderCellQuickBarDateViewController();
  v20 = objc_allocWithZone(v19);

  v22 = sub_21D1A985C(v21, v20);

  *(v5 + 24) = &off_282EAAA58;
  swift_unknownObjectWeakAssign();
  *(v8 + 24) = sub_21D1A9F78();
  swift_unknownObjectWeakAssign();
  *(v8 + 40) = a3;
  swift_unknownObjectWeakAssign();
  a1[3] = v19;
  a1[4] = &off_282EAAA20;

  *a1 = v22;
  return v8;
}

void *sub_21D1A985C(uint64_t a1, void *a2)
{
  v4 = sub_21DBFB7EC();
  v50 = *(v4 - 1);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = off_282EAAA78;

  v22 = sub_21DBFA12C();
  v49 = [objc_opt_self() systemImageNamed_];

  v23 = sub_21DBF509C();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_21D1A91F8(v17, v14);
  sub_21DAA48BC(v14, v20);
  sub_21D1A9FD0(v17);
  if (qword_27CE57450 != -1)
  {
    swift_once();
  }

  v24 = a1;
  v52 = *algn_27CE66FB8;
  v53 = qword_27CE66FB0;
  if (qword_27CE57458 != -1)
  {
    swift_once();
  }

  v54 = *algn_27CE66FC8;
  v55 = qword_27CE66FC0;
  v25 = MEMORY[0x277D85000];
  v26 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
  *v26 = v24;
  v26[1] = v21;
  *(a2 + *((*v25 & *a2) + 0x70)) = 1148846080;
  v27 = a2 + *((*v25 & *a2) + 0x60);
  v58 = v20;
  sub_21D1AA038(v20, v27);
  v56 = v24;

  sub_21DBFB8EC();
  v28 = [objc_opt_self() quaternarySystemFillColor];
  v29 = sub_21DBFB79C();
  sub_21DBF883C();
  v29(v62, 0);
  (*(v50 + 104))(v6, *MEMORY[0x277D74FD8], v51);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v30 = sub_21D900614(7);
  v31 = [objc_opt_self() configurationWithFont:v30 scale:2];

  sub_21DBFB78C();
  v51 = v49;
  sub_21DBFB8FC();
  sub_21DBFB80C();
  sub_21DBFB87C();
  type metadata accessor for TTRIReminderCellQuickBarPopoverAnchoringButton();
  v32 = v59;
  v33 = v60;
  (*(v59 + 16))(v57, v11, v60);
  *(a2 + *((*v25 & *a2) + 0x78)) = sub_21DBFB96C();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D88);
  v61.receiver = a2;
  v61.super_class = v34;
  v35 = objc_msgSendSuper2(&v61, sel_init);
  v36 = *((*v25 & *v35) + 0x78);
  v37 = *(v35 + v36);
  v38 = v35;
  v39 = v37;
  sub_21D5D768C(v39);

  [*(v35 + v36) setShowsMenuAsPrimaryAction_];
  v40 = *(v35 + v36);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v40;

  v43 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, sub_21D1AA09C, v41);

  [v42 setMenu_];

  [*(v35 + v36) setPreferredMenuElementOrder_];
  v44 = *(v35 + v36);
  v45 = sub_21DBFA12C();
  [v44 setAccessibilityLabel_];

  v46 = *(v35 + v36);
  v47 = sub_21DBFA12C();
  [v46 setAccessibilityHint_];

  (*(v32 + 8))(v11, v33);
  sub_21D1AA0A4(v58);
  return v38;
}

unint64_t sub_21D1A9F78()
{
  result = qword_27CE58D80;
  if (!qword_27CE58D80)
  {
    type metadata accessor for TTRIReminderCellQuickBarDateViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58D80);
  }

  return result;
}

uint64_t sub_21D1A9FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D1AA038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D1AA0A4(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D1AA100()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_21D1AA184(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_21DBFC2CC();

    if (v5)
    {
      sub_21D0D8CF0(0, a3);
      swift_dynamicCast();
      return v12;
    }
  }

  else if (*(a2 + 16))
  {
    v8 = sub_21D17E07C(a1);
    if (v9)
    {
      v10 = *(*(a2 + 56) + 8 * v8);
      v11 = v10;
      return v10;
    }
  }

  return 0;
}

uint64_t sub_21D1AA2E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_21DBFC2CC();

    if (v3)
    {
      type metadata accessor for TTRAccountEditor();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_21D17E07C(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_21D1AA390()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58D90);
  v1 = __swift_project_value_buffer(v0, qword_27CE58D90);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21D1AA628(a1);
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_21DBFC21C();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v4 = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v6 = v3 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 64);
  }

  v12 = 0;
  v13 = (v7 + 64) >> 6;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v12;
    v15 = v8;
    v16 = v12;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_21D0CFAF8();
      return;
    }

    while (1)
    {
      v19 = [v2 updateList_];

      v12 = v16;
      v8 = v17;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21DBFC2DC())
      {
        swift_unknownObjectRelease();
        sub_21D0D8CF0(0, &qword_280D17690);
        swift_dynamicCast();
        v18 = v20;
        v16 = v12;
        v17 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_21D1AA628(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_21DBFBD7C())
    {
LABEL_3:
      sub_21DBF7A4C();
      v2 = [v1 store];
      v4 = sub_21DBF7A3C();

      return v4;
    }
  }

  else if (*(a1 + 16))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84F90];

  return sub_21D17750C(v3);
}

Swift::Void __swiftcall REMSaveRequest.prepareForMutatingOrder(in:needsRefresh:)(Swift::OpaquePointer in, Swift::Bool needsRefresh)
{
  v4 = in._rawValue >> 62;
  if (in._rawValue >> 62)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((in._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_11;
  }

  v30 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((in._rawValue & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, in._rawValue);
      }

      else
      {
        v8 = *(in._rawValue + v7 + 4);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v5 != v7);
    v6 = v30;
LABEL_11:
    v11 = sub_21D19ED08(v6);

    if (needsRefresh)
    {
      v12 = sub_21D1AA628(v11);
    }

    else
    {
      v12 = sub_21D17750C(MEMORY[0x277D84F90]);
    }

    v27 = v12;
    if (v4)
    {
      v13 = sub_21DBFBD7C();
      if (v13)
      {
LABEL_16:
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = v27 & 0xFFFFFFFFFFFFFF8;
          if (v27 < 0)
          {
            v15 = v27;
          }

          v26 = v15;
          while (1)
          {
            if ((in._rawValue & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x223D44740](v14, in._rawValue);
            }

            else
            {
              v19 = *(in._rawValue + v14 + 4);
            }

            v18 = v19;
            v20 = [v19 objectID];
            v21 = sub_21D1AABD8(v20);

            if (!v21)
            {
              goto LABEL_22;
            }

            if ((v27 & 0xC000000000000001) != 0)
            {
              v22 = v21;
              v23 = sub_21DBFC2CC();

              if (v23)
              {
                sub_21D0D8CF0(0, &qword_280D17690);
                swift_dynamicCast();
                v16 = v29;
                if (v29)
                {
                  goto LABEL_21;
                }
              }
            }

            else if (*(v27 + 16))
            {
              v24 = sub_21D17E07C(v21);
              if (v25)
              {
                v16 = *(*(v27 + 56) + 8 * v24);
                if (v16)
                {
                  goto LABEL_21;
                }
              }
            }

            v16 = v18;
LABEL_21:
            v17 = [v28 updateList_];

            v18 = v21;
LABEL_22:
            ++v14;

            if (v13 == v14)
            {
              goto LABEL_37;
            }
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v13 = *((in._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_16;
      }
    }

LABEL_37:

    return;
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_21D1AABD8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v4 = a1;
    v5 = sub_21DBFBDCC();

    if (v5)
    {
      v6 = sub_21D1AC084();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_21D0D8CF0(0, &qword_280D17880);
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_21DBFB63C();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B1508();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_21D1AC1EC(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_21D1AAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)();
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v22 = v2;
    v23 = v6;
    v24 = v5;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_21D1AD270(*(v9 + 48) + v14 * v12, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v15 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, a1);
      sub_21D1AD2D8(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v17 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v26 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D8B1530();
      v19 = v26;
    }

    a2 = v25;
    sub_21D1AD338(*(v19 + 48) + v14 * v12, v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D1AC550(v12, type metadata accessor for TTRRemindersListViewModel.ItemID, type metadata accessor for TTRRemindersListViewModel.ItemID, TTRRemindersListViewModel.ItemID.hash(into:));
    v16 = 0;
    *v17 = v26;
LABEL_10:
    v6 = v23;
    v5 = v24;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_21D1AAFC8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v6 = sub_21DBFC82C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21DBFC64C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B16EC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21D1AC38C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_21D1AB104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)();
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v22 = v2;
    v23 = v6;
    v24 = v5;
    v25 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_21D1AD270(*(v9 + 48) + v14 * v12, v8, type metadata accessor for TTRRecurrenceRuleModel);
      v15 = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_21D1AD2D8(v8, type metadata accessor for TTRRecurrenceRuleModel);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v17 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v26 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D8B1E4C();
      v19 = v26;
    }

    a2 = v25;
    sub_21D1AD338(*(v19 + 48) + v14 * v12, v25, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21D1AC550(v12, type metadata accessor for TTRRecurrenceRuleModel, type metadata accessor for TTRRecurrenceRuleModel, TTRRecurrenceRuleModel.hash(into:));
    v16 = 0;
    *v17 = v26;
LABEL_10:
    v6 = v23;
    v5 = v24;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_21D1AB35C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_21DBFC7DC();
  sub_21D621F3C(a1);
  sub_21DBFA27C();

  v5 = sub_21DBFC82C();
  v31 = v4 + 56;
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 12;
  }

  v29 = v1;
  v30 = ~v6;
  v8 = a1;
  while (1)
  {
    v9 = *(*(v32 + 48) + v7);
    if (v9 > 5)
    {
      if (*(*(v32 + 48) + v7) > 8u)
      {
        if (v9 == 9)
        {
          v10 = 0xD00000000000001DLL;
          v11 = 0x800000021DC43890;
        }

        else if (v9 == 10)
        {
          v10 = 0xD000000000000017;
          v11 = 0x800000021DC438B0;
        }

        else
        {
          v10 = 0x726F737365636361;
          v11 = 0xEB00000000736569;
        }
      }

      else if (v9 == 6)
      {
        v10 = 0xD000000000000017;
        v11 = 0x800000021DC43840;
      }

      else if (v9 == 7)
      {
        v10 = 0xD000000000000013;
        v11 = 0x800000021DC43860;
      }

      else
      {
        v10 = 0x53746E65746E6F63;
        v11 = 0xEC0000006B636174;
      }
    }

    else if (*(*(v32 + 48) + v7) > 2u)
    {
      if (v9 == 3)
      {
        v11 = 0xE500000000000000;
        v10 = 0x656C746974;
      }

      else if (v9 == 4)
      {
        v10 = 0x6F6E6E4177656976;
        v11 = 0xEE006E6F69746174;
      }

      else
      {
        v10 = 0x65646E496C6C6563;
        v11 = 0xEF6E6F697461746ELL;
      }
    }

    else if (*(*(v32 + 48) + v7))
    {
      if (v9 == 1)
      {
        v10 = 0x6574656C706D6F63;
      }

      else
      {
        v10 = 0x797469726F697270;
      }

      if (v9 == 1)
      {
        v11 = 0xEF6E6F7474754264;
      }

      else
      {
        v11 = 0xE800000000000000;
      }
    }

    else
    {
      v10 = 0x656E6961746E6F63;
      v11 = 0xED00007765695672;
    }

    v12 = 0xD00000000000001DLL;
    v13 = 0x726F737365636361;
    if (v8 == 10)
    {
      v13 = 0xD000000000000017;
    }

    v14 = 0xEB00000000736569;
    if (v8 == 10)
    {
      v14 = 0x800000021DC438B0;
    }

    if (v8 == 9)
    {
      v15 = 0x800000021DC43890;
    }

    else
    {
      v12 = v13;
      v15 = v14;
    }

    v16 = 0xD000000000000013;
    if (v8 != 7)
    {
      v16 = 0x53746E65746E6F63;
    }

    v17 = 0xEC0000006B636174;
    if (v8 == 7)
    {
      v17 = 0x800000021DC43860;
    }

    if (v8 == 6)
    {
      v16 = 0xD000000000000017;
      v17 = 0x800000021DC43840;
    }

    if (v8 <= 8)
    {
      v12 = v16;
      v15 = v17;
    }

    v18 = 0x6F6E6E4177656976;
    if (v8 != 4)
    {
      v18 = 0x65646E496C6C6563;
    }

    v19 = 0xEF6E6F697461746ELL;
    if (v8 == 4)
    {
      v19 = 0xEE006E6F69746174;
    }

    if (v8 == 3)
    {
      v18 = 0x656C746974;
      v19 = 0xE500000000000000;
    }

    v20 = 0x797469726F697270;
    if (v8 == 1)
    {
      v20 = 0x6574656C706D6F63;
    }

    v21 = 0xEF6E6F7474754264;
    if (v8 != 1)
    {
      v21 = 0xE800000000000000;
    }

    if (!v8)
    {
      v20 = 0x656E6961746E6F63;
      v21 = 0xED00007765695672;
    }

    if (v8 <= 2)
    {
      v18 = v20;
      v19 = v21;
    }

    v22 = v8 <= 5 ? v18 : v12;
    v23 = v8 <= 5 ? v19 : v15;
    if (v10 == v22 && v11 == v23)
    {
      break;
    }

    v24 = sub_21DBFC64C();

    if (v24)
    {
      goto LABEL_70;
    }

    v7 = (v7 + 1) & v30;
    if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 12;
    }
  }

LABEL_70:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v2;
  v33 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B14F4();
    v27 = v33;
  }

  v25 = *(*(v27 + 48) + v7);
  sub_21D1AC814(v7);
  *v29 = v33;
  return v25;
}

uint64_t sub_21D1AB818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21D1AD228(&qword_27CE58AC0, MEMORY[0x277D45430]);
  v31 = a1;
  v10 = sub_21DBF9FFC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_21D1AD228(&qword_27CE58DB0, MEMORY[0x277D45430]);
      v19 = sub_21DBFA10C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D8B204C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_21D1ACF2C(v13, MEMORY[0x277D45430], &qword_27CE58AC0, MEMORY[0x277D45430], MEMORY[0x277D45438]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_21D1ABB04(uint64_t a1)
{
  v3 = *v1;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a1);
  v4 = sub_21DBFC82C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B2204();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_21D1ACBA4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_21D1ABC08()
{
  v1 = v0;
  v2 = *v0;
  sub_21DBFA16C();
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v3 = sub_21DBFC82C();

  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = sub_21DBFA16C();
    v9 = v8;
    if (v7 == sub_21DBFA16C() && v9 == v10)
    {
      break;
    }

    v12 = sub_21DBFC64C();

    if (v12)
    {
      goto LABEL_11;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v17 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B254C();
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + 8 * v5);
  sub_21D1ACD4C(v5);
  *v1 = v17;
  return v13;
}