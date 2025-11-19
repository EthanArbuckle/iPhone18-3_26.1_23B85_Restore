uint64_t sub_1C07AA6B0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000016;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v4 = "common_UserEntity_Anywhere";
    }

    else
    {
      v4 = "Attribute_TimerAttributesOn";
    }
  }

  else if (a1 == 2)
  {
    v4 = "common_UserEntity_There";
    v3 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v4 = "common_UserEntity_Nowhere";
  }

  else
  {
    v4 = "common_UserEntity_Here";
    v3 = 0xD00000000000001CLL;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AA840(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001BLL;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        v5 = "common_SortDirection_Oldest";
        v3 = 0xD000000000000019;
        goto LABEL_22;
      }

      if (a1 == 8)
      {
        v4 = "common_SortDirection_Typical";
LABEL_10:
        v5 = (v4 - 32);
        v3 = 0xD00000000000001CLL;
        goto LABEL_22;
      }

      v6 = "common_SortDirection_Trending";
LABEL_20:
      v5 = (v6 - 32);
      v3 = 0xD00000000000001DLL;
      goto LABEL_22;
    }

    if (a1 == 5)
    {
      v5 = "common_SortDirection_Unpopular";
      v3 = 0xD000000000000020;
    }

    else
    {
      v5 = "tion_Recommended";
    }
  }

  else
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          v5 = "common_SortDirection_Popular";
          v3 = 0xD00000000000001ELL;
          goto LABEL_22;
        }

        v4 = "common_SortDirection_Popular";
        goto LABEL_10;
      }

      v6 = "common_SortDirection_Atypical";
      goto LABEL_20;
    }

    if (a1)
    {
      v3 = 0xD00000000000001ALL;
      v5 = "common_SortDirection_Newest";
    }

    else
    {
      v5 = "common_SizeDirection_Smaller";
    }
  }

LABEL_22:
  v7 = v5 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v8 = swift_allocObject();
  v8[6] = v7;
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = MEMORY[0x1E69E7CC0];
  v8[3] = v9;
  v8[4] = v9;
  v8[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C0970C90;
  *(v10 + 32) = v8;
  swift_beginAccess();

  v11 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v10, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v14;
  swift_endAccess();
}

uint64_t sub_1C07AAA4C(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0xD00000000000002CLL;
  }

  if (a1)
  {
    v4 = "ntactAttribute_ContactPoster";
  }

  else
  {
    v4 = "NotebookContentEntityPodcast";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AAB88(char a1)
{
  v2 = v1;
  v3 = "common_NumberSign_NegativeSign";
  if (a1)
  {
    v3 = "common_NumberSign_PositiveSign";
  }

  v4 = (v3 - 32) | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v5 = swift_allocObject();
  v5[6] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = v6;
  v5[4] = v6;
  v5[5] = 0xD00000000000001ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0970C90;
  *(v7 + 32) = v5;
  swift_beginAccess();

  v8 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v7, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v11;
  swift_endAccess();
}

uint64_t sub_1C07AACB8(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = 0xD000000000000028;
  }

  if (a1)
  {
    v4 = "PhoneCallAttribute_Group";
  }

  else
  {
    v4 = "tributesPercentage";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AADF4(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000028;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v4 = "tionTrigger_CommunicationSent";
      }

      else
      {
        v4 = "tionTrigger_CallReceived";
        v3 = 0xD00000000000002BLL;
      }
    }

    else if (a1 == 7)
    {
      v4 = "tionTrigger_TextMessageSent";
    }

    else if (a1 == 8)
    {
      v4 = "tionTrigger_FaceTimeSent";
      v3 = 0xD00000000000002CLL;
    }

    else
    {
      v4 = "tionTrigger_FaceTimeReceived";
      v3 = 0xD00000000000002FLL;
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000024;
    }

    else
    {
      v3 = 0xD000000000000031;
    }

    if (a1)
    {
      v4 = "unicationReceived";
    }

    else
    {
      v4 = "ntUnitType_SpeedUnit";
    }
  }

  else if (a1 == 2)
  {
    v4 = "tionTrigger_CallSent";
    v3 = 0xD000000000000025;
  }

  else if (a1 == 3)
  {
    v4 = "tionTrigger_EmailSent";
    v3 = 0xD000000000000029;
  }

  else
  {
    v4 = "tionTrigger_EmailReceived";
    v3 = 0xD00000000000002DLL;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AB010(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001ELL;
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v4 = "common_SearchQualifier_NewToMe";
        v3 = 0xD00000000000001ALL;
      }

      else
      {
        v4 = "common_SearchQualifier_New";
        v3 = 0xD000000000000023;
      }

      goto LABEL_20;
    }

    if (a1 == 6)
    {
      v5 = "common_SearchQualifier_Exactly";
    }

    else
    {
      v5 = "common_SearchQualifier_Another";
    }

LABEL_19:
    v4 = (v5 - 32);
    goto LABEL_20;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "lifier_Approximate";
      v3 = 0xD00000000000001FLL;
      goto LABEL_20;
    }

    v5 = "common_SearchQualifier_NewToMe";
    goto LABEL_19;
  }

  if (a1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v4 = "common_SearchQualifier_Old";
  }

  else
  {
    v4 = "common_OffsetDirection_Before";
  }

LABEL_20:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AB1E8(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000003DLL;
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v4 = "itingsNounCouplet";
        v3 = 0xD000000000000043;
      }

      else
      {
        v4 = "buteMatchingCouplet";
        v3 = 0xD000000000000044;
      }

      goto LABEL_20;
    }

    if (a1 == 6)
    {
      v4 = "buteAuthorCollection";
      v3 = 0xD000000000000032;
      goto LABEL_20;
    }

    v5 = "appleWriting_WritingAttribute_WritingsQueryAttributePrevVerse";
LABEL_19:
    v4 = (v5 - 32);
    goto LABEL_20;
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v4 = "itingsQueryAttributeNextVerse";
      v3 = 0xD000000000000031;
      goto LABEL_20;
    }

    v5 = "appleWriting_WritingAttribute_WritingsQueryAttributeNextVerse";
    goto LABEL_19;
  }

  if (a1)
  {
    v3 = 0xD00000000000002ELL;
  }

  else
  {
    v3 = 0xD000000000000038;
  }

  if (a1)
  {
    v4 = "itingsNounIdiomSolitaire";
  }

  else
  {
    v4 = "sAttributesHandwritten";
  }

LABEL_20:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AB3C8(char a1)
{
  v2 = v1;
  v3 = "common_ActivationValue_Off";
  if (a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if ((a1 & 1) == 0)
  {
    v3 = "tatus_ResponseNo";
  }

  v5 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AB500(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000016;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = "common_EmailState_Unread";
      }

      else
      {
        v4 = "common_EmailState_Sent";
      }
    }

    else
    {
      v3 = 0xD000000000000018;
      v4 = "common_ActiveType_Upcoming";
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v4 = "common_EmailState_Unsent";
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = "common_EmailState_Received";
      v3 = 0xD000000000000019;
    }
  }

  else if (a1 == 3)
  {
    v4 = "common_EmailState_Read";
    v3 = 0xD000000000000017;
  }

  else
  {
    v4 = "common_EmailState_Saved";
    v3 = 0xD000000000000018;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AB6C4(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000022;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = "tatus_ResponseMaybe";
        v3 = 0xD00000000000001FLL;
      }

      else
      {
        v4 = "common_ResponseStatus_Responded";
        v3 = 0xD000000000000024;
      }
    }

    else
    {
      v3 = 0xD000000000000023;
      v4 = "common_RequiredStatus_Optional";
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v4 = "tatus_RespondedNo";
    }

    else
    {
      v4 = "tatus_NotResponded";
      v3 = 0xD000000000000020;
    }
  }

  else if (a1 == 3)
  {
    v4 = "tatus_RespondedMaybe";
  }

  else
  {
    v4 = "tatus_RespondedYes";
    v3 = 0xD000000000000021;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AB888(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v4 = "common_Politeness_Impolite";
  }

  else
  {
    v4 = "common_NumberSign_PositiveSign";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AB9C4(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001BLL;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = "common_SizeDirection_Shorter";
      v3 = 0xD00000000000001DLL;
      goto LABEL_13;
    }

    if (a1 == 4)
    {
      v4 = "common_SizeDirection_Narrower";
      goto LABEL_13;
    }

    v5 = "common_SizeDirection_Smaller";
LABEL_12:
    v4 = (v5 - 32);
    v3 = 0xD00000000000001CLL;
    goto LABEL_13;
  }

  if (!a1)
  {
    v4 = "Type_DefiniteReference";
    goto LABEL_13;
  }

  if (a1 != 1)
  {
    v5 = "common_SizeDirection_Shorter";
    goto LABEL_12;
  }

  v4 = "common_SizeDirection_Bigger";
  v3 = 0xD00000000000001ALL;
LABEL_13:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07ABB64(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001ALL;
  v4 = "common_ZoomDirection_ZoomToFit";
  v5 = "common_AdjustmentType_Scroll";
  if (a1 == 2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (a1 != 2)
  {
    v5 = "common_AdjustmentType_Resize";
  }

  if (a1)
  {
    v3 = 0xD00000000000001CLL;
    v4 = "common_AdjustmentType_Zoom";
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v10 = swift_allocObject();
  v10[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C0970C90;
  *(v12 + 32) = v10;
  swift_beginAccess();

  v13 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v12, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v16;
  swift_endAccess();
}

uint64_t sub_1C07ABCD4(char a1)
{
  v2 = v1;
  v3 = "common_OffsetDirection_After";
  if (a1)
  {
    v4 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0xD00000000000001CLL;
  }

  if ((a1 & 1) == 0)
  {
    v3 = "ntUnit_Kilojoule";
  }

  v5 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07ABE0C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000025;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = "common_Interjection_IndirectDismissal";
    }

    else
    {
      if (a1 == 4)
      {
        v4 = "ion_IndirectDismissal";
        v3 = 0xD00000000000001ALL;
        goto LABEL_13;
      }

      v5 = "common_Interjection_IncorrectBehavior";
    }

LABEL_12:
    v4 = (v5 - 32);
    goto LABEL_13;
  }

  if (!a1)
  {
    v3 = 0xD00000000000001CLL;
    v5 = "common_Interjection_ThankYou";
    goto LABEL_12;
  }

  if (a1 == 1)
  {
    v4 = "common_Interjection_ThankYou";
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = "common_Interjection_Attention";
    v3 = 0xD000000000000023;
  }

LABEL_13:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07ABFAC(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "DateTime_Weekends";
    }

    else
    {
      v3 = "DateTime_EveryDay";
    }
  }

  else
  {
    v3 = "tionMode_Collaborate";
  }

  v4 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v5 = swift_allocObject();
  v5[6] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = v6;
  v5[4] = v6;
  v5[5] = 0xD000000000000021;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0970C90;
  *(v7 + 32) = v5;
  swift_beginAccess();

  v8 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v7, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v11;
  swift_endAccess();
}

uint64_t sub_1C07AC0F8(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000011;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (a1)
    {
      v4 = "common_Date_Tomorrow";
    }

    else
    {
      v4 = "common_Age_Senior";
    }
  }

  else if (a1 == 2)
  {
    v4 = "common_Date_DayBeforeYesterday";
    v3 = 0xD00000000000001CLL;
  }

  else if (a1 == 3)
  {
    v4 = "common_Date_DayAfterTomorrow";
  }

  else
  {
    v4 = "common_Date_Today";
    v3 = 0xD000000000000015;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AC28C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000018;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v4 = "common_MessageState_Unread";
      }

      else if (a1 == 7)
      {
        v4 = "common_MessageState_Read";
      }

      else
      {
        v4 = "common_MessageState_Sent";
        v3 = 0xD00000000000001CLL;
      }

      goto LABEL_22;
    }

    if (a1 != 4)
    {
      v4 = "common_MessageState_Saved";
      v3 = 0xD00000000000001ALL;
      goto LABEL_22;
    }

    v5 = "common_MessageState_Saved";
LABEL_19:
    v4 = v5 - 32;
    v3 = 0xD000000000000019;
    goto LABEL_22;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "common_MessageState_Unsaved";
      v3 = 0xD00000000000001BLL;
      goto LABEL_22;
    }

    v5 = "common_MessageState_Draft";
    goto LABEL_19;
  }

  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v4 = "common_MessageState_Unsent";
  }

  else
  {
    v4 = "common_ListPosition_Tenth";
  }

LABEL_22:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AC484(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000014;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "common_Duration_AllDay";
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = "common_Duration_NoDuration";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1)
    {
      v4 = "common_Duration_TotalDuration";
    }

    else
    {
      v4 = "common_DateType_BankHoliday";
    }
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AC600(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (a1)
  {
    v4 = "common_AllDay_NotAllDay";
  }

  else
  {
    v4 = "common_Agent_UnknownAgent";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AC73C(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0xD000000000000028;
  }

  if (a1)
  {
    v4 = "Type_IndefiniteReference";
  }

  else
  {
    v4 = "common_PlaybackState_Stopped";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AC878(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000002ELL;
  v4 = "Attribute_AlarmAttributesSleep";
  v5 = 0xD00000000000002CLL;
  if (a1 != 2)
  {
    v5 = 0xD00000000000002ELL;
    v4 = "Attribute_AlarmAttributesSet";
  }

  if (a1)
  {
    v6 = "Attribute_AlarmAttributesNotSet";
  }

  else
  {
    v3 = 0xD00000000000002FLL;
    v6 = "_UserEntityAttribute_New";
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v10 = swift_allocObject();
  v10[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C0970C90;
  *(v12 + 32) = v10;
  swift_beginAccess();

  v13 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v12, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v16;
  swift_endAccess();
}

uint64_t sub_1C07AC9EC(char a1)
{
  v2 = v1;
  v3 = 0xD00000000000001FLL;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000021;
    }

    else
    {
      v3 = 0xD000000000000024;
    }

    if (a1 == 1)
    {
      v4 = "common_CompletionStatus_Overdue";
    }

    else
    {
      v4 = "nStatus_Completed";
    }
  }

  else
  {
    v4 = "reUnit_DegreesFahrenheit";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07ACB44(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000024;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = "mount_MaximumAllowed";
      v3 = 0xD00000000000001ALL;
    }

    else if (a1 == 4)
    {
      v4 = "common_CurrencyAmount_Free";
      v3 = 0xD000000000000026;
    }

    else
    {
      v4 = "mount_StatementBalance";
      v3 = 0xD000000000000020;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = "mount_MinimumAllowed";
      v3 = 0xD00000000000001FLL;
    }

    else
    {
      v4 = "common_CurrencyAmount_AmountDue";
    }
  }

  else
  {
    v4 = "tType_EmailMessage";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07ACCEC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000039;
  v4 = "tionAttributesLatest";
  v5 = "ttribute_ConditionDeparture";
  v6 = 0xD00000000000003ELL;
  if (a1 != 2)
  {
    v6 = 0xD00000000000003FLL;
    v5 = "ttribute_ConditionEnterVehicle";
  }

  if (a1)
  {
    v3 = 0xD00000000000003BLL;
    v4 = "ttribute_ConditionArrival";
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (a1 > 1u)
  {
    v4 = v5;
  }

  v8 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v9 = swift_allocObject();
  v9[6] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = MEMORY[0x1E69E7CC0];
  v9[3] = v10;
  v9[4] = v10;
  v9[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0970C90;
  *(v11 + 32) = v9;
  swift_beginAccess();

  v12 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v11, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v15;
  swift_endAccess();
}

uint64_t sub_1C07ACE64(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000023;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v4 = "angeQualifier_HalfOf";
      }

      else
      {
        v4 = "angeQualifier_AllOf";
        v3 = 0xD000000000000026;
      }
    }

    else if (a1 == 4)
    {
      v4 = "angeQualifier_EndOf";
      v3 = 0xD000000000000029;
    }

    else
    {
      v4 = "angeQualifier_LaterPartOf";
      v3 = 0xD000000000000024;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "angeQualifier_StartOf";
      v3 = 0xD00000000000002BLL;
    }

    else
    {
      v4 = "angeQualifier_EarlierPartOf";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000025;
    }

    else
    {
      v3 = 0xD000000000000024;
    }

    if (a1)
    {
      v4 = "angeQualifier_RestOf";
    }

    else
    {
      v4 = "ntQualifier_EndOf";
    }
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AD044(unsigned __int8 a1)
{
  v2 = v1;
  v3 = "angeQualifier_MiddleOf";
  v4 = "andConfirmation_DontDelete";
  v5 = 0xD000000000000027;
  if (a1 != 2)
  {
    v5 = 0xD00000000000002CLL;
    v4 = "andConfirmation_ShowAll";
  }

  if (a1)
  {
    v3 = "andConfirmation_DeleteOnce";
  }

  if (a1 <= 1u)
  {
    v6 = 0xD00000000000002ALL;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v9 = swift_allocObject();
  v9[6] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = MEMORY[0x1E69E7CC0];
  v9[3] = v10;
  v9[4] = v10;
  v9[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0970C90;
  *(v11 + 32) = v9;
  swift_beginAccess();

  v12 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v11, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v15;
  swift_endAccess();
}

uint64_t sub_1C07AD1B4(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = 0xD00000000000002CLL;
  }

  if (a1)
  {
    v4 = "RelationshipType_ContainedOn";
  }

  else
  {
    v4 = "andConfirmation_DeleteAlways";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AD2F0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000024;
  if (a1 <= 2u)
  {
    if (!a1)
    {
      v3 = 0xD000000000000028;
      v4 = "commonNotebook_NotebookItemType_Reminder";
      goto LABEL_14;
    }

    if (a1 == 1)
    {
      v4 = "commonNotebook_NotebookItemType_Item";
      goto LABEL_14;
    }

    v5 = "otebookItemType_Item";
    v3 = 0xD000000000000027;
  }

  else
  {
    if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v4 = "commonNotebook_NotebookItemType_List";
      }

      else
      {
        v4 = "commonNotebook_NotebookItemType_Note";
      }

      goto LABEL_14;
    }

    if (a1 == 3)
    {
      v4 = "commonNotebook_NotebookItemType_Task";
LABEL_14:
      v5 = (v4 - 32);
      goto LABEL_15;
    }

    v5 = "otebookItemType_Task";
    v3 = 0xD000000000000026;
  }

LABEL_15:
  v6 = v5 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AD49C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000023;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v4 = "ntQualifier_Minimum";
      }

      else
      {
        v4 = "ntQualifier_Average";
        v3 = 0xD000000000000021;
      }
    }

    else if (a1 == 4)
    {
      v4 = "ntQualifier_Possible";
    }

    else
    {
      v4 = "ntQualifier_Maximum";
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "ntQualifier_Remaining";
    }

    else
    {
      v4 = "ntQualifier_StartOf";
      v3 = 0xD000000000000024;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000025;
    }

    else
    {
      v3 = 0xD000000000000021;
    }

    if (a1)
    {
      v4 = "ntQualifier_Total";
    }

    else
    {
      v4 = "tionTrigger_TextMessageReceived";
    }
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AD678(char a1)
{
  v2 = v1;
  v3 = "common_SettingValueType_Current";
  if (a1)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if ((a1 & 1) == 0)
  {
    v3 = "common_ReactionCategory_Sticker";
  }

  v5 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AD7B0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001FLL;
  v4 = "Version_Soundtrack";
  v5 = "common_ReactionCategory_Emoji";
  v6 = 0xD00000000000001ELL;
  if (a1 != 2)
  {
    v6 = 0xD00000000000001FLL;
    v5 = "common_ReactionCategory_Memoji";
  }

  if (a1)
  {
    v3 = 0xD00000000000001DLL;
    v4 = "common_ReactionCategory_Genmoji";
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v10 = swift_allocObject();
  v10[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C0970C90;
  *(v12 + 32) = v10;
  swift_beginAccess();

  v13 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v12, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v16;
  swift_endAccess();
}

uint64_t sub_1C07AD924(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000025;
  v4 = "DateTime_Weekdays";
  v5 = "ntUnitType_DistanceUnit";
  v6 = 0xD000000000000024;
  if (a1 == 2)
  {
    v6 = 0xD000000000000025;
  }

  else
  {
    v5 = "ntUnitType_WeightUnit";
  }

  if (a1)
  {
    v3 = 0xD000000000000027;
    v4 = "ntUnitType_EnergyUnit";
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v10 = swift_allocObject();
  v10[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C0970C90;
  *(v12 + 32) = v10;
  swift_beginAccess();

  v13 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v12, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v16;
  swift_endAccess();
}

uint64_t sub_1C07ADA98(unsigned __int8 a1)
{
  v2 = v1;
  v3 = "operator_increasing";
  v4 = "common_MessageMode_Text";
  if (a1 != 2)
  {
    v4 = "common_MessageMode_Audio";
  }

  v5 = 0xD000000000000017;
  if (a1)
  {
    v3 = "common_MessageMode_Video";
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v9 = swift_allocObject();
  v9[6] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = MEMORY[0x1E69E7CC0];
  v9[3] = v10;
  v9[4] = v10;
  v9[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0970C90;
  *(v11 + 32) = v9;
  swift_beginAccess();

  v12 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v11, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v15;
  swift_endAccess();
}

uint64_t sub_1C07ADC04(char a1)
{
  v2 = v1;
  v3 = "commonUserEntity_UserEntityAttribute_Old";
  if (a1)
  {
    v3 = "commonUserEntity_UserEntityAttribute_New";
  }

  v4 = (v3 - 32) | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v5 = swift_allocObject();
  v5[6] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = v6;
  v5[4] = v6;
  v5[5] = 0xD000000000000028;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0970C90;
  *(v7 + 32) = v5;
  swift_beginAccess();

  v8 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v7, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v11;
  swift_endAccess();
}

uint64_t sub_1C07ADD34(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001FLL;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = "common_SpatialDirection_Up";
        v3 = 0xD00000000000001ELL;
      }

      else
      {
        v4 = "common_SpatialDirection_Nearer";
      }
    }

    else
    {
      v3 = 0xD00000000000001ALL;
      v4 = "common_SettingValueType_Target";
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v4 = "rection_Leftward";
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = "common_SpatialDirection_Down";
      v3 = 0xD000000000000021;
    }
  }

  else if (a1 == 3)
  {
    v4 = "common_SpatialDirection_Farther";
  }

  else
  {
    v4 = "common_SpatialDirection_Further";
    v3 = 0xD000000000000020;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07ADEF8(char a1)
{
  v2 = v1;
  v3 = "common_ScheduleType_AsNeeded";
  if (a1)
  {
    v4 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0xD00000000000001CLL;
  }

  if ((a1 & 1) == 0)
  {
    v3 = "common_ReminderType_Section";
  }

  v5 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AE030(char a1)
{
  v2 = v1;
  v3 = "common_MessageType_Conversation";
  if (a1)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if ((a1 & 1) == 0)
  {
    v3 = "common_MessageMode_Email";
  }

  v5 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AE168(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (a1)
  {
    v4 = "common_Age_Teenager";
  }

  else
  {
    v4 = "agentDerived";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AE2A4(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000016;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v4 = "common_Quantifier_Less";
        v3 = 0xD000000000000015;
        goto LABEL_17;
      }

      v5 = "common_Quantifier_More";
    }

    else
    {
      if (a1 == 4)
      {
        v4 = "common_Quantifier_Multiple";
        v3 = 0xD00000000000001BLL;
        goto LABEL_17;
      }

      v5 = "common_Quantifier_Less";
    }

    v4 = v5 - 32;
    goto LABEL_17;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "common_Quantifier_Any";
      v3 = 0xD000000000000018;
    }

    else
    {
      v4 = "common_Quantifier_Single";
      v3 = 0xD00000000000001ALL;
    }
  }

  else if (a1)
  {
    v3 = 0xD000000000000015;
    v4 = "common_Quantifier_None";
  }

  else
  {
    v4 = "common_Politeness_Polite";
  }

LABEL_17:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AE480(char a1)
{
  v2 = v1;
  v3 = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 == 1)
    {
      v4 = "common_ActiveType_Active";
    }

    else
    {
      v4 = "common_ActiveType_NotActive";
    }
  }

  else
  {
    v4 = "common_SortOrder_MostFirst";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AE5D8(char a1)
{
  v2 = v1;
  v3 = "common_RequiredStatus_Required";
  if (a1)
  {
    v3 = "common_RequiredStatus_Optional";
  }

  v4 = (v3 - 32) | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v5 = swift_allocObject();
  v5[6] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = v6;
  v5[4] = v6;
  v5[5] = 0xD00000000000001ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0970C90;
  *(v7 + 32) = v5;
  swift_beginAccess();

  v8 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v7, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v11;
  swift_endAccess();
}

uint64_t sub_1C07AE708(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (a1)
  {
    v4 = "common_DateType_Holiday";
  }

  else
  {
    v4 = "common_DateTime_Now";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AE844(char a1)
{
  v2 = v1;
  v3 = "common_Meridiem_PM";
  if (a1)
  {
    v3 = "common_Meridiem_AM";
  }

  v4 = (v3 - 32) | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v5 = swift_allocObject();
  v5[6] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = v6;
  v5[4] = v6;
  v5[5] = 0xD000000000000012;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0970C90;
  *(v7 + 32) = v5;
  swift_beginAccess();

  v8 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v7, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v11;
  swift_endAccess();
}

uint64_t sub_1C07AE974(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000030;
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v5 = "Attribute_EmailAttributesNew";
      }

      else
      {
        v3 = 0xD00000000000002CLL;
        v5 = "Attribute_AlarmAttributesSound";
      }

      goto LABEL_25;
    }

    if (a1 != 2)
    {
      if (a1 != 3)
      {
        v4 = "appleEmail_EmailAttribute_EmailAttributesUnread";
LABEL_21:
        v5 = (v4 - 32);
        v3 = 0xD00000000000002FLL;
        goto LABEL_25;
      }

      v5 = "Attribute_EmailAttributesRead";
      v3 = 0xD000000000000031;
      goto LABEL_25;
    }

    v6 = "appleEmail_EmailAttribute_EmailAttributesRead";
LABEL_19:
    v5 = (v6 - 32);
    v3 = 0xD00000000000002DLL;
    goto LABEL_25;
  }

  if (a1 <= 7u)
  {
    if (a1 != 5)
    {
      if (a1 != 6)
      {
        v5 = "Attribute_EmailAttributesLatest";
        v3 = 0xD000000000000033;
        goto LABEL_25;
      }

      v4 = "appleEmail_EmailAttribute_EmailAttributesLatest";
      goto LABEL_21;
    }

    v7 = "appleEmail_EmailAttribute_EmailAttributesUnsaved";
LABEL_24:
    v5 = (v7 - 32);
    goto LABEL_25;
  }

  if (a1 == 8)
  {
    v6 = "appleEmail_EmailAttribute_EmailAttributesSent";
    goto LABEL_19;
  }

  if (a1 != 9)
  {
    v7 = "appleEmail_EmailAttribute_EmailAttributesFlagged";
    goto LABEL_24;
  }

  v5 = "Attribute_EmailAttributesSent";
  v3 = 0xD00000000000002ELL;
LABEL_25:
  v8 = v5 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v9 = swift_allocObject();
  v9[6] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = MEMORY[0x1E69E7CC0];
  v9[3] = v10;
  v9[4] = v10;
  v9[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0970C90;
  *(v11 + 32) = v9;
  swift_beginAccess();

  v12 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v11, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v15;
  swift_endAccess();
}

uint64_t sub_1C07AEB94(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (a1)
  {
    v4 = "common_AppState_Installed";
  }

  else
  {
    v4 = "common_Decimal_Percent";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AECD0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001CLL;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "common_PlaybackState_Playing";
    }

    else
    {
      if (a1 == 3)
      {
        v4 = "common_PlaybackState_Playing";
        v3 = 0xD000000000000020;
        goto LABEL_11;
      }

      v5 = "common_PlaybackState_Stopped";
    }

    v4 = v5 - 32;
    goto LABEL_11;
  }

  if (a1)
  {
    v3 = 0xD00000000000001BLL;
    v4 = "common_PlaybackState_Seeking";
  }

  else
  {
    v4 = "common_PhoneCallMode_Video";
  }

LABEL_11:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AEE58(unsigned __int8 a1)
{
  v2 = v1;
  v3 = "ventType_Meeting";
  v4 = 0xD000000000000024;
  if (a1 != 2)
  {
    v4 = 0xD00000000000001ELL;
    v3 = "ventType_Appointment";
  }

  v5 = 0xD000000000000020;
  if (a1)
  {
    v6 = "ventType_Conflict";
  }

  else
  {
    v5 = 0xD000000000000021;
    v6 = "rection_Rightward";
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v10 = swift_allocObject();
  v10[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C0970C90;
  *(v12 + 32) = v10;
  swift_beginAccess();

  v13 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v12, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v16;
  swift_endAccess();
}

uint64_t sub_1C07AEFD0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001DLL;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v4 = "ureMode_SpatialVideo";
        v3 = 0xD000000000000026;
      }

      else
      {
        v4 = "ureMode_AudioRecording";
        v3 = 0xD000000000000027;
      }
    }

    else if (a1 == 4)
    {
      v4 = "common_MediaCaptureMode_Selfie";
    }

    else
    {
      v4 = "common_MediaCaptureMode_Video";
      v3 = 0xD000000000000024;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "ureMode_SpatialPhoto";
    }

    else
    {
      v4 = "common_MediaCaptureMode_Photo";
      v3 = 0xD00000000000001ELL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000024;
    }

    else
    {
      v3 = 0xD000000000000022;
    }

    if (a1)
    {
      v4 = "ureMode_Screenshot";
    }

    else
    {
      v4 = "nStatus_NotCompleted";
    }
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AF1B4(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
  }

  if (a1)
  {
    v4 = "common_GeographicArea_Nearby";
  }

  else
  {
    v4 = "mount_PaidInFull";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AF2F0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000013;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = "common_RadioBand_HD";
    }

    else
    {
      v4 = "common_DayOfWeek_Sunday";
    }
  }

  else if (a1 == 2)
  {
    v4 = "common_RadioBand_XM";
  }

  else if (a1 == 3)
  {
    v4 = "common_RadioBand_AM";
  }

  else
  {
    v4 = "common_RadioBand_FM";
    v3 = 0xD000000000000014;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AF474(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (a1)
  {
    v4 = "commonStock_StockType_Stock";
  }

  else
  {
    v4 = "kChangeState_GoDown";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AF5B0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001BLL;
  v4 = "common_SortDirection_Trending";
  v5 = "tion_ZoomToFitWidth";
  v6 = 0xD00000000000001ELL;
  if (a1 == 2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = "common_ZoomDirection_ZoomOut";
  }

  if (a1)
  {
    v3 = 0xD000000000000023;
    v4 = "common_ZoomDirection_ZoomIn";
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v10 = swift_allocObject();
  v10[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C0970C90;
  *(v12 + 32) = v10;
  swift_beginAccess();

  v13 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v12, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v16;
  swift_endAccess();
}

uint64_t sub_1C07AF724(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000028;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = "Attribute_TimerTypeSleep";
      v3 = 0xD00000000000002FLL;
    }

    else if (a1 == 4)
    {
      v4 = "Attribute_TimerAttributesPaused";
      v3 = 0xD00000000000002CLL;
    }

    else
    {
      v4 = "Attribute_TimerAttributesOff";
      v3 = 0xD00000000000002BLL;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = "Attribute_TimerNounSleepTimer";
      v3 = 0xD000000000000030;
    }

    else
    {
      v4 = "ttributesRunning";
    }
  }

  else
  {
    v3 = 0xD00000000000002DLL;
    v4 = "ttributesFlagged";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AF8D4(char a1)
{
  v2 = v1;
  v3 = "common_SortOrder_LeastFirst";
  if (a1)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD00000000000001BLL;
  }

  if ((a1 & 1) == 0)
  {
    v3 = "common_RadioBand_DAB";
  }

  v5 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AFA0C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000017;
  if (a1 > 2u)
  {
    if (a1 <= 4u)
    {
      if (a1 == 3)
      {
        v4 = "common_DayOfWeek_Friday";
      }

      else
      {
        v4 = "common_DayOfWeek_Monday";
      }

      goto LABEL_14;
    }

    if (a1 == 5)
    {
      v5 = "common_DayOfWeek_Monday";
      v3 = 0xD000000000000018;
      goto LABEL_15;
    }

    v4 = "common_DayOfWeek_Sunday";
LABEL_14:
    v5 = v4 - 32;
    goto LABEL_15;
  }

  if (!a1)
  {
    v3 = 0xD000000000000019;
    v4 = "common_DayOfWeek_Thursday";
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    v5 = "common_DayOfWeek_Thursday";
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = "common_DayOfWeek_Wednesday";
    v3 = 0xD000000000000019;
  }

LABEL_15:
  v6 = v5 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AFBC0(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (a1)
  {
    v4 = "common_Similarity_SimilarTo";
  }

  else
  {
    v4 = "common_Quantifier_More";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AFCFC(char a1)
{
  v2 = v1;
  v3 = 0xD00000000000001ELL;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000025;
    }

    else
    {
      v3 = 0xD000000000000028;
    }

    if (a1 == 1)
    {
      v4 = "common_TemperatureUnit_Degrees";
    }

    else
    {
      v4 = "reUnit_DegreesCelsius";
    }
  }

  else
  {
    v4 = "common_SpatialPosition_Bottom";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AFE54(unsigned __int8 a1)
{
  v2 = v1;
  v3 = "kChangeState_GoUpOrDown";
  v4 = 0xD000000000000023;
  if (a1 == 2)
  {
    v4 = 0xD000000000000021;
  }

  else
  {
    v3 = "kChangeState_GoUp";
  }

  v5 = 0xD000000000000027;
  if (a1)
  {
    v6 = "kChangeState_Unchanged";
  }

  else
  {
    v5 = 0xD000000000000026;
    v6 = "common_UserEntity_Everywhere";
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v10 = swift_allocObject();
  v10[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C0970C90;
  *(v12 + 32) = v10;
  swift_beginAccess();

  v13 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v12, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v16;
  swift_endAccess();
}

uint64_t sub_1C07AFFCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = a2();
  v6 = v5;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v3 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07B00EC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000021;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = "tionMode_Airdrop";
    }

    else if (a1 == 4)
    {
      v4 = "tionMode_SendCopy";
      v3 = 0xD000000000000022;
    }

    else
    {
      v4 = "tionMode_SharePlay";
      v3 = 0xD000000000000024;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = "tionMode_Namedrop";
    }

    else
    {
      v4 = "tionMode_Together";
      v3 = 0xD000000000000020;
    }
  }

  else
  {
    v4 = "common_CalendarEventType_Event";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07B0290(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (a1)
    {
      v3 = "common_Time_Sunset";
    }

    else
    {
      v3 = "operator_notEquals";
    }
  }

  else if (a1 == 2)
  {
    v3 = "common_Time_Noon";
    v4 = 0xD000000000000014;
  }

  else if (a1 == 3)
  {
    v3 = "common_Time_Midnight";
    v4 = 0xD000000000000013;
  }

  else
  {
    v3 = "common_Time_Sunrise";
    v4 = 0xD000000000000017;
  }

  v5 = v3 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07B0468(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F5C(0xD000000000000012, 0x80000001C09D4E20, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B0524(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F70(0xD000000000000010, 0x80000001C09D4DE0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B0664(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F98(0xD000000000000010, 0x80000001C09D4E00, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B07AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = type metadata accessor for UsoEntityBuilder();
  if (v3 != MEMORY[0x1E69E6158] && v3 != MEMORY[0x1E69E7360])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C0970C90;
    *(v5 + 32) = a1;

    v6 = *(v1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 56);
    *(v1 + 56) = 0x8000000000000000;
    sub_1C051D194(v5, 0x65766E6F436F7375, 0xEE006D6F72467472, isUniquelyReferenced_nonNull_native);
    *(v1 + 56) = v9;
  }

  return swift_endAccess();
}

uint64_t sub_1C07B08F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4FC0(0xD000000000000012, 0x80000001C09DE360, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilderGlobalArgs.__allocating_init(valueTypeString:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = a1;
  v4[6] = a2;
  v5 = MEMORY[0x1E69E7CC0];
  v4[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v4[2] = v5;
  v4[3] = v5;
  v4[4] = v5;
  return v4;
}

void *UsoEntityBuilderGlobalArgs.init(valueTypeString:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = MEMORY[0x1E69E7CC0];
  v2[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v2[2] = v3;
  v2[3] = v3;
  v2[4] = v3;
  return v2;
}

void *UsoEntityBuilder_common_SpatialPosition.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09DE2A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SpatialPosition.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09DE2A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SummaryMode.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFBE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SummaryMode.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFBE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_WorkoutEquipment.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DF5C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_WorkoutEquipment.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DF5C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EventTrigger.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CD9C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EventTrigger.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CD9C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B0F5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4FFC(0xD000000000000011, 0x80000001C09DE220, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B1018(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F0C(0xD000000000000014, 0x80000001C09DDE20, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B10D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5010(0xD000000000000014, 0x80000001C09DF8F0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B1190(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4EE4(0xD000000000000015, 0x80000001C09D8D60, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B1310(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x656D695465746164, 0xEF72656767697254, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07B1440(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5038(0xD000000000000016, 0x80000001C09D51C0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B1680(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C0525B20(0xD000000000000015, 0x80000001C09DDB80, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B17C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5074(0xD000000000000018, 0x80000001C09D8D80, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B187C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5060(0xD000000000000018, 0x80000001C09DF640, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_commonTimer_TimerAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09CD9E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonTimer_TimerAttribute.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09CD9E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_VoiceTrigger.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CDA00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_VoiceTrigger.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CDA00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReactionType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFC60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReactionType.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFC60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B1D78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E50B0(0xD000000000000010, 0x80000001C09DFDE0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_ReminderType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFC40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReminderType.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFC40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DailyBriefingItem.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09DDF90;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DailyBriefingItem.init()()
{
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09DDF90;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CDA40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppEntity.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CDA40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B22B4(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = *a1;
  v9 = 0xE800000000000000;
  v10 = 0x7465536F54646461;
  v11 = 0xED00007465536D6FLL;
  v12 = 0x724665766F6D6572;
  v13 = 0xE800000000000000;
  v14 = 0x736E6961746E6F63;
  if (v8 != 4)
  {
    v14 = 0x61746E6F43746F6ELL;
    v13 = 0xEB00000000736E69;
  }

  if (v8 != 3)
  {
    v12 = v14;
    v11 = v13;
  }

  if (v8 == 1)
  {
    v10 = 0xD00000000000001ALL;
    v9 = 0x80000001C09B2710;
  }

  if (!*a1)
  {
    v10 = 0xD000000000000015;
    v9 = 0x80000001C09B26F0;
  }

  if (*a1 <= 2u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (*a1 <= 2u)
  {
    v16 = v9;
  }

  else
  {
    v16 = v11;
  }

  swift_beginAccess();
  sub_1C07A9278(a4, a5, (v7 + 56), v15, v16, a2, a3, a6, a7);
  swift_endAccess();
}

void *UsoEntityBuilder_common_WorkoutGoal.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DF600;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_WorkoutGoal.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DF600;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B266C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x6D6572757361656DLL, 0xEB00000000746E65, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

void *UsoEntityBuilder_common_DurationComponent.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09CDBA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DurationComponent.init()()
{
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09CDBA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PhoneCallMode.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CDBC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PhoneCallMode.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CDBC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_appleContact_ContactAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CDBE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_appleContact_ContactAttribute.init()()
{
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CDBE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CDC00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonProperty.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CDC00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_QRCodeType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DFCA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_QRCodeType.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DFCA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OpinionJudgment.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09DFB80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OpinionJudgment.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09DFB80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriOpinion.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDC60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriOpinion.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDC60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_TemperatureComponent.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001BLL;
  v0[6] = 0x80000001C09CDC80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_TemperatureComponent.init()()
{
  v0[5] = 0xD00000000000001BLL;
  v0[6] = 0x80000001C09CDC80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SearchObject.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CDCA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SearchObject.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CDCA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Voicemail.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CDCC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Voicemail.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CDCC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_RecurringDateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CDD80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_RecurringDateTimeRange.init()()
{
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CDD80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B388C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5074(0xD000000000000011, 0x80000001C09D5320, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_commonStock_StockAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09CDE40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonStock_StockAttribute.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09CDE40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_UserEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CDE80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_UserEntity.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CDE80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B3EEC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = 0xE800000000000000;
  v8 = 0x7465536F54646461;
  v9 = 0xED00007465536D6FLL;
  v10 = 0x724665766F6D6572;
  v11 = 0xE800000000000000;
  v12 = 0x736E6961746E6F63;
  if (v6 != 4)
  {
    v12 = 0x61746E6F43746F6ELL;
    v11 = 0xEB00000000736E69;
  }

  if (v6 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  if (v6 == 1)
  {
    v8 = 0xD00000000000001ALL;
    v7 = 0x80000001C09B2710;
  }

  if (!*a1)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001C09B26F0;
  }

  if (*a1 <= 2u)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (*a1 <= 2u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  swift_beginAccess();
  sub_1C07A9088(a4, a5, (v5 + 56), v13, v14, a2, a3);
  swift_endAccess();
}

void *UsoEntityBuilder_common_SiriContent.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDF70;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriContent.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDF70;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MonthOfYear.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDF90;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MonthOfYear.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDF90;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B474C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Integer.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x5672656765746E69, 0xEC00000065756C61, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E140, &unk_1C09A4F50);
  swift_endAccess();
}

void *UsoEntityBuilder_common_PhoneNumber.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDFB0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B4AA0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x656D695465746164, 0xE800000000000000, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

void *UsoEntityBuilder_appleMessage_MessageAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CDFD0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_appleMessage_MessageAttribute.init()()
{
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CDFD0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NoteFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CDFF0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NoteFolder.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CDFF0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B4EF4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0xD000000000000012, 0x80000001C09D5560, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

void *UsoEntityBuilder_commonAlarm_AlarmAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09CE010;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonAlarm_AlarmAttribute.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09CE010;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SortDirection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DE380;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SortDirection.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DE380;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonContact_ContactAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ELL;
  v0[6] = 0x80000001C09CE030;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonContact_ContactAttribute.init()()
{
  v0[5] = 0xD00000000000001ELL;
  v0[6] = 0x80000001C09CE030;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_UserEntityType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DDFD0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_UserEntityType.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DDFD0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DeviceProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE050;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DeviceProperty.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE050;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MeasurementUnit.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE070;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MeasurementUnit.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE070;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReminderList.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CE090;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReminderList.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CE090;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppSection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE0B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppSection.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE0B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PhoneCall.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CE0D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B6078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F0C(0xD000000000000017, 0x80000001C09D7B70, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_ContactAddress.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE1B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ContactAddress.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE1B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_LocalisedString.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE1D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_LocalisedString.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE1D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ProductCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE1F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ProductCategory.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE1F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NumberSign.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE210;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NumberSign.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE210;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Utilities.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CE230;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Utilities.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CE230;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonName.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE250;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonNotification_NotificationAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000028;
  v0[6] = 0x80000001C09CE270;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonNotification_NotificationAttribute.init()()
{
  v0[5] = 0xD000000000000028;
  v0[6] = 0x80000001C09CE270;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonPhoneCall_PhoneCallAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000022;
  v0[6] = 0x80000001C09CE2A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonPhoneCall_PhoneCallAttribute.init()()
{
  v0[5] = 0xD000000000000022;
  v0[6] = 0x80000001C09CE2A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CommunicationTrigger.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001BLL;
  v0[6] = 0x80000001C09DF8B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CommunicationTrigger.init()()
{
  v0[5] = 0xD00000000000001BLL;
  v0[6] = 0x80000001C09DF8B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SettingValue.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CE2D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SettingValue.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CE2D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B7750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F20(0xD000000000000010, 0x80000001C09DE010, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B77C8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0xD000000000000010, 0x80000001C09DE010, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

uint64_t sub_1C07B7990(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x6E6F697461727564, 0xE800000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

uint64_t sub_1C07B7B3C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Number.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x56636972656D756ELL, 0xEC00000065756C61, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E1F8, &qword_1C0993130);
  swift_endAccess();
}

uint64_t sub_1C07B7C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F0C(0xD000000000000012, 0x80000001C09D96B0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_PersonContact.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CE320;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonContact.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CE320;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonRole.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF700;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonRole.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF700;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SportsItem.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE360;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SportsItem.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE360;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *sub_1C07B8080()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  v2 = sub_1C06DCCC0(0xD000000000000015, 0x80000001C09DE0F0, v1);

  return v2;
}

uint64_t sub_1C07B80FC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E47E8(0xD000000000000015, 0x80000001C09DE0F0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07B8174(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v4 = 0xD000000000000015;
  v5 = *a1;
  v6 = 0xE800000000000000;
  v7 = 0x7465536F54646461;
  v8 = 0xED00007465536D6FLL;
  v9 = 0x724665766F6D6572;
  v10 = 0xE800000000000000;
  v11 = 0x736E6961746E6F63;
  if (v5 != 4)
  {
    v11 = 0x61746E6F43746F6ELL;
    v10 = 0xEB00000000736E69;
  }

  if (v5 != 3)
  {
    v9 = v11;
    v8 = v10;
  }

  if (v5 == 1)
  {
    v7 = 0xD00000000000001ALL;
    v6 = 0x80000001C09B2710;
  }

  if (*a1)
  {
    v4 = v7;
  }

  else
  {
    v6 = 0x80000001C09B26F0;
  }

  if (*a1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  if (*a1 <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  swift_beginAccess();
  sub_1C07A9278(0xD000000000000015, 0x80000001C09DE0F0, (v3 + 56), v12, v13, a2, a3, &qword_1EBE17128, &qword_1C0970900);
  swift_endAccess();
}

void *UsoEntityBuilder_common_JourneyType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFA40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_JourneyType.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFA40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B86FC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x656D6954646E65, 0xE700000000000000, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07B8860(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x7275446C61746F74, 0xED00006E6F697461, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

void *UsoEntityBuilder_common_WorkoutInstructor.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09DF5E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_WorkoutInstructor.init()()
{
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09DF5E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SearchQualifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE3A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SearchQualifier.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE3A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CrisisSupport.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CE3C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CrisisSupport.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CE3C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DateTimeRange.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CE3E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DateTimeRange.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CE3E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B9324(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(6581861, 0xE300000000000000, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07B94D4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x7472617473, 0xE500000000000000, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07B9604(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(29793, 0xE200000000000000, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

void *UsoEntityBuilder_appleWriting_WritingAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CE400;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_appleWriting_WritingAttribute.init()()
{
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CE400;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PointOfInterestType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DFA20;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PointOfInterestType.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DFA20;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonRelationship.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CE420;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonRelationship.init()()
{
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CE420;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07B9CA8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v3 + 56), v6, v7, a2, a3, &qword_1EBE16EE8, &qword_1C09706C0);
  swift_endAccess();
}

uint64_t sub_1C07B9DD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveStringBuilder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[5] = a1;
  v7[6] = a2;
  v7[2] = v8;
  v7[3] = v8;
  v7[4] = v8;
  *(v6 + 32) = v7;

  v9 = *(v3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  sub_1C051D194(v6, 0xD000000000000010, 0x80000001C09D5440, isUniquelyReferenced_nonNull_native);
  *(v3 + 56) = v12;
  return swift_endAccess();
}

uint64_t sub_1C07B9ED8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD000000000000010;
  v5 = *a1;
  v6 = 0xEF646E657070615FLL;
  v7 = 0xE600000000000000;
  v8 = 0x646E65707061;
  v9 = 0xE700000000000000;
  v10 = 0x6563616C706572;
  if (v5 != 4)
  {
    v10 = 0x6C61757145746F6ELL;
    v9 = 0xE900000000000073;
  }

  if (v5 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0x80000001C09B2D20;
  if (v5 != 1)
  {
    v4 = 0xD000000000000012;
    v11 = 0x80000001C09B28B0;
  }

  if (*a1)
  {
    v6 = v11;
  }

  else
  {
    v4 = 0x726F74617265706FLL;
  }

  if (*a1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v8;
  }

  if (*a1 <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v7;
  }

  swift_beginAccess();
  sub_1C07A95C8(0xD000000000000010, 0x80000001C09D5440, (v3 + 56), v12, v13, a2, a3);
  swift_endAccess();
}

void *UsoEntityBuilder_common_ActivationValue.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE440;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ActivationValue.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CE440;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailState.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF830;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailState.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF830;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ResponseStatus.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DF760;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ResponseStatus.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DF760;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DeviceCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE4E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DeviceCategory.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE4E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07BB0C4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x655274657366666FLL, 0xEF65636E65726566, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07BB20C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(1702125924, 0xE400000000000000, (v3 + 56), v6, v7, a2, a3, &qword_1EBE1DFE8, &unk_1C09A4F30);
  swift_endAccess();
}

uint64_t sub_1C07BB3B4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07BB514(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x615674657366666FLL, 0xEB0000000065756CLL, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

void *UsoEntityBuilder_common_ReminderListType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFAE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReminderListType.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFAE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_apple_PhotoMemory.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE530;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_apple_PhotoMemory.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE530;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriPossession.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE620;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriPossession.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CE620;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonSocialAction.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CE640;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PersonSocialAction.init()()
{
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CE640;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07BBC94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5038(0xD000000000000012, 0x80000001C09DF9E0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BBD90(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x7369446C61746F74, 0xED000065636E6174, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

uint64_t sub_1C07BBEDC(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x4464657370616C65, 0xEF6E6F6974617275, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

uint64_t sub_1C07BBFE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F20(0xD000000000000011, 0x80000001C09DFA80, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BC060(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0xD000000000000011, 0x80000001C09DFA80, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

uint64_t sub_1C07BC1D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5038(0xD000000000000014, 0x80000001C09DF9C0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BC2F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4E94(0xD000000000000011, 0x80000001C09DFA60, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BC368(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0xD000000000000011, 0x80000001C09DFA60, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

uint64_t sub_1C07BC4AC(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x4464657370616C65, 0xEF65636E61747369, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

void *UsoEntityBuilder_common_Politeness.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF9A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Politeness.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF9A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppSubSection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DFCC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppSubSection.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DFCC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SizeDirection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DE2E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SizeDirection.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DE2E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonMessage_MessageAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ELL;
  v0[6] = 0x80000001C09CE760;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonMessage_MessageAttribute.init()()
{
  v0[5] = 0xD00000000000001ELL;
  v0[6] = 0x80000001C09CE760;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Salutation.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE780;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Salutation.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE780;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AdjustmentDirection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE320;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AdjustmentDirection.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE320;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Organization.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CE7A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Organization.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CE7A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonArithmetic_ArithmeticAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000024;
  v0[6] = 0x80000001C09CE7C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonArithmetic_ArithmeticAttribute.init()()
{
  v0[5] = 0xD000000000000024;
  v0[6] = 0x80000001C09CE7C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MultipliedNumber.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09CE7F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MultipliedNumber.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09CE7F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07BD46C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_MultipliedNumber.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1DF88, &qword_1C0992E78);
  swift_endAccess();
}

uint64_t sub_1C07BD5A0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Number.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x696C7069746C756DLL, 0xEA00000000007265, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E1F8, &qword_1C0993130);
  swift_endAccess();
}

void *UsoEntityBuilder_common_MeasurementCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE400;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MeasurementCategory.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE400;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CarSetting.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE840;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CarSetting.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE840;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AdjustmentType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DE300;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AdjustmentType.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DE300;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SportsItemType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DE030;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SportsItemType.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DE030;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetDirection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CEA90;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetDirection.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CEA90;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Interjection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CEAB0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Interjection.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CEAB0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_FavoriteCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFB60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_FavoriteCategory.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFB60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MedicationEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CEAD0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MedicationEvent.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CEAD0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07BE8D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E595C(0xD000000000000012, 0x80000001C09DF6C0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_RecurringDateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09CEB10;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_RecurringDateTime.init()()
{
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09CEB10;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07BEA84(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveIntegerBuilder();
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = v6;
  *(v5 + 32) = v6;
  *(v5 + 40) = a1;
  *(v4 + 32) = v5;
  v7 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v4, 0xD000000000000018, 0x80000001C09D52A0, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v10;
  return swift_endAccess();
}

uint64_t sub_1C07BEB78(char *a1, uint64_t a2)
{
  v3 = v2;
  v9 = *a1;
  v5 = PrimitiveIntegerOperators.rawValue.getter();
  v7 = v6;
  swift_beginAccess();
  sub_1C07A9730(0xD000000000000018, 0x80000001C09D52A0, (v3 + 56), v5, v7, a2);
  swift_endAccess();
}

uint64_t sub_1C07BEC60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4F0C(0xD000000000000017, 0x80000001C09D5260, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BED1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4ED0(0xD000000000000014, 0x80000001C09D7CF0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BED94(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0xD000000000000014, 0x80000001C09D7CF0, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07BEEC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4ED0(0xD000000000000016, 0x80000001C09D7CD0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BEF38(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0xD000000000000016, 0x80000001C09D7CD0, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

void *sub_1C07BF094()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  v2 = sub_1C06DDFC8(0xD000000000000013, 0x80000001C09D5420, v1);

  return v2;
}

uint64_t sub_1C07BF110(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4860(0xD000000000000013, 0x80000001C09D5420, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BF188(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9278(0xD000000000000013, 0x80000001C09D5420, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07BF270(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0xED00007465536D6FLL;
  v7 = 0x724665766F6D6572;
  v8 = 0xE800000000000000;
  v9 = 0x736E6961746E6F63;
  if (v4 != 4)
  {
    v9 = 0x61746E6F43746F6ELL;
    v8 = 0xEB00000000736E69;
  }

  if (v4 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xD00000000000001ALL;
  if (v4 == 1)
  {
    v5 = 0x80000001C09B2710;
  }

  else
  {
    v10 = 0x7465536F54646461;
  }

  if (!*a1)
  {
    v10 = 0xD000000000000015;
    v5 = 0x80000001C09B26F0;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (*a1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  swift_beginAccess();
  sub_1C07A9278(0xD000000000000013, 0x80000001C09D5420, (v3 + 56), v11, v12, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07BF42C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4E94(0xD000000000000010, 0x80000001C09D5280, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07BF4A4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0xD000000000000010, 0x80000001C09D5280, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

uint64_t sub_1C07BF740(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Integer.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x6559664F6B656577, 0xEA00000000007261, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E140, &unk_1C09A4F50);
  swift_endAccess();
}

uint64_t sub_1C07BF9D8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Integer.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(1918985593, 0xE400000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E140, &unk_1C09A4F50);
  swift_endAccess();
}

uint64_t sub_1C07BFB00(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v3 + 56), v6, v7, a2, a3, &qword_1EBE1DFE8, &unk_1C09A4F30);
  swift_endAccess();
}

uint64_t sub_1C07BFD20(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Integer.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x6E6F4D664F796164, 0xEA00000000006874, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E140, &unk_1C09A4F50);
  swift_endAccess();
}

void *UsoEntityBuilder_common_MessageState.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DF930;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MessageState.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DF930;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MedicationSchedule.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CEC10;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MedicationSchedule.init()()
{
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CEC10;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetDate.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CEC30;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetDate.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CEC30;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C0988(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x655274657366666FLL, 0xEF65636E65726566, (v3 + 56), v6, v7, a2, a3, &qword_1EBE1DFE8, &unk_1C09A4F30);
  swift_endAccess();
}

uint64_t sub_1C07C0AE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5074(0xD000000000000017, 0x80000001C09D8140, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_MediaCapture.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CEC70;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MediaCapture.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CEC70;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C0E10(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

uint64_t sub_1C07C12A8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_CurrencyAmount.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x746E756F6D61, 0xE600000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1DEB0, &qword_1C0992D80);
  swift_endAccess();
}

uint64_t sub_1C07C1448(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_CurrencyAmount.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x7544746E756F6D61, 0xE900000000000065, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1DEB0, &qword_1C0992D80);
  swift_endAccess();
}

uint64_t sub_1C07C154C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4ED0(0xD000000000000013, 0x80000001C09D9E10, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07C15C4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0xD000000000000013, 0x80000001C09D9E10, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07C1718(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x65746144657564, 0xE700000000000000, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

void *UsoEntityBuilder_common_VoiceCommand.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CED50;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_VoiceCommand.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CED50;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailLabel.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF850;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailLabel.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF850;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *sub_1C07C1C30()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  v2 = sub_1C06D9B10(0xD000000000000016, 0x80000001C09DDFF0, v1);

  return v2;
}

uint64_t sub_1C07C1CAC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4548(0xD000000000000016, 0x80000001C09DDFF0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07C1D24(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0x7465536F54646461;
  v7 = 0xED00007465536D6FLL;
  v8 = 0x724665766F6D6572;
  v9 = 0xE800000000000000;
  v10 = 0x736E6961746E6F63;
  if (v4 != 4)
  {
    v10 = 0x61746E6F43746F6ELL;
    v9 = 0xEB00000000736E69;
  }

  if (v4 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v4 == 1)
  {
    v6 = 0xD00000000000001ALL;
    v5 = 0x80000001C09B2710;
  }

  if (!*a1)
  {
    v6 = 0xD000000000000015;
    v5 = 0x80000001C09B26F0;
  }

  if (*a1 <= 2u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (*a1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  swift_beginAccess();
  sub_1C07A9278(0xD000000000000016, 0x80000001C09DDFF0, (v3 + 56), v11, v12, a2, a3, &qword_1EBE172C8, &qword_1C09931D0);
  swift_endAccess();
}

void *UsoEntityBuilder_common_MixedFraction.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEDC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MixedFraction.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEDC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C2410(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_MixedFraction.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1DE98, &qword_1C0992D68);
  swift_endAccess();
}

uint64_t sub_1C07C2514(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveIntegerBuilder();
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = v6;
  *(v5 + 32) = v6;
  *(v5 + 40) = a1;
  *(v4 + 32) = v5;
  v7 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v4, 0xD000000000000010, 0x80000001C09CC420, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v10;
  return swift_endAccess();
}

uint64_t sub_1C07C2608(char *a1, uint64_t a2)
{
  v3 = v2;
  v9 = *a1;
  v5 = PrimitiveIntegerOperators.rawValue.getter();
  v7 = v6;
  swift_beginAccess();
  sub_1C07A9730(0xD000000000000010, 0x80000001C09CC420, (v3 + 56), v5, v7, a2);
  swift_endAccess();
}

void *UsoEntityBuilder_common_ReferenceType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEDE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReferenceType.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEDE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_appleAlarm_AlarmAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CEE00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_appleAlarm_AlarmAttribute.init()()
{
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CEE00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_FavoriteInstance.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFBA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_FavoriteInstance.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFBA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriSocialAction.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09CEE40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriSocialAction.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09CEE40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MessageLabel.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DF910;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MessageLabel.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DF910;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CompletionStatus.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DF660;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CompletionStatus.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DF660;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CurrencyAmount.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CEE60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CurrencyAmount.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CEE60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C32B4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_CurrencyAmount.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1DEB0, &qword_1C0992D80);
  swift_endAccess();
}

uint64_t sub_1C07C3444(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Number.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x746E756F6D61, 0xE600000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E1F8, &qword_1C0993130);
  swift_endAccess();
}

void *UsoEntityBuilder_common_MediaItemType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEE80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MediaItemType.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEE80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DF870;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailProvider.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DF870;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Geolocation.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CEEA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Geolocation.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CEEA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonFindMy_DeviceAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001CLL;
  v0[6] = 0x80000001C09CEEC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonFindMy_DeviceAttribute.init()()
{
  v0[5] = 0xD00000000000001CLL;
  v0[6] = 0x80000001C09CEEC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonEventTrigger_EventTriggerAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000028;
  v0[6] = 0x80000001C09CEEE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonEventTrigger_EventTriggerAttribute.init()()
{
  v0[5] = 0xD000000000000028;
  v0[6] = 0x80000001C09CEEE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonCalendarEvent_CalendarEventAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000002ALL;
  v0[6] = 0x80000001C09CEF10;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonCalendarEvent_CalendarEventAttribute.init()()
{
  v0[5] = 0xD00000000000002ALL;
  v0[6] = 0x80000001C09CEF10;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_VoiceCommandPayload.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE170;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_VoiceCommandPayload.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE170;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C41C4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Number.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x7265626D756ELL, 0xE600000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E1F8, &qword_1C0993130);
  swift_endAccess();
}

uint64_t sub_1C07C434C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_CurrencyAmount.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x79636E6572727563, 0xE800000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1DEB0, &qword_1C0992D80);
  swift_endAccess();
}

uint64_t sub_1C07C44C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5BC8(0xD000000000000018, 0x80000001C09DFE50, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_AppEntityType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DE150;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppEntityType.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09DE150;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PointOfInterest.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CEF40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_PointOfInterest.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CEF40;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C4800(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x65636E6174736964, 0xE800000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

void *UsoEntityBuilder_common_SocialInterjection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CEF60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SocialInterjection.init()()
{
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CEF60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SafetySession.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEF80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SafetySession.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CEF80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_KnowledgeQuestion.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09CEFA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_KnowledgeQuestion.init()()
{
  v0[5] = 0xD000000000000018;
  v0[6] = 0x80000001C09CEFA0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DateTimeRangeQualifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CEFC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DateTimeRangeQualifier.init()()
{
  v0[5] = 0xD00000000000001DLL;
  v0[6] = 0x80000001C09CEFC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailAddress.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CEFE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailAddress.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CEFE0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CarProfile.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CF000;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CarProfile.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CF000;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_VoiceCommandConfirmation.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001FLL;
  v0[6] = 0x80000001C09DFE30;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_VoiceCommandConfirmation.init()()
{
  v0[5] = 0xD00000000000001FLL;
  v0[6] = 0x80000001C09DFE30;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MediaItemRelationshipType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000020;
  v0[6] = 0x80000001C09DF970;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MediaItemRelationshipType.init()()
{
  v0[5] = 0xD000000000000020;
  v0[6] = 0x80000001C09DF970;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_KnowledgeQuestionAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000021;
  v0[6] = 0x80000001C09CF020;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_KnowledgeQuestionAttribute.init()()
{
  v0[5] = 0xD000000000000021;
  v0[6] = 0x80000001C09CF020;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Measurement.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CF050;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Measurement.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CF050;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C5B1C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

uint64_t sub_1C07C5D4C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x676E6972616562, 0xE700000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

uint64_t sub_1C07C5E7C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x6F69746176656C65, 0xE90000000000006ELL, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

uint64_t sub_1C07C601C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x676E6964616568, 0xE700000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

uint64_t sub_1C07C615C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x64726F6F436F6567, 0xEE00736574616E69, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

void *UsoEntityBuilder_common_Participant.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DF720;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Participant.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DF720;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_LocalBusiness.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CF0D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_LocalBusiness.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CF0D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppAction.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF0F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppAction.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF0F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C6C34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E50EC(0xD000000000000013, 0x80000001C09DE190, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_WorkoutClass.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DF5A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_WorkoutClass.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DF5A0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C6E24(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Integer.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x4E65646F73697065, 0xED00007265626D75, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E140, &unk_1C09A4F50);
  swift_endAccess();
}

uint64_t sub_1C07C6FA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5CF4(0xD000000000000013, 0x80000001C09DF620, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_FindMyStatus.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CF160;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_FindMyStatus.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CF160;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonNotebook_NotebookItemType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001FLL;
  v0[6] = 0x80000001C09CF1F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonNotebook_NotebookItemType.init()()
{
  v0[5] = 0xD00000000000001FLL;
  v0[6] = 0x80000001C09CF1F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NotificationAction.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CF210;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NotificationAction.init()()
{
  v0[5] = 0xD000000000000019;
  v0[6] = 0x80000001C09CF210;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C7588(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5D44(0xD000000000000016, 0x80000001C09D5580, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07C76BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4EE4(0xD000000000000018, 0x80000001C09DF8D0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_MeasurementQualifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001BLL;
  v0[6] = 0x80000001C09DE3C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MeasurementQualifier.init()()
{
  v0[5] = 0xD00000000000001BLL;
  v0[6] = 0x80000001C09DE3C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonApp_AppAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CF230;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonApp_AppAttribute.init()()
{
  v0[5] = 0xD000000000000016;
  v0[6] = 0x80000001C09CF230;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C7C18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5024(0xD000000000000011, 0x80000001C09DDE40, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_UserSocialAction.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09CF2F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_UserSocialAction.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09CF2F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C8038(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Duration.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x616D6552656D6974, 0xED0000676E696E69, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E188, &unk_1C09A4F60);
  swift_endAccess();
}

uint64_t sub_1C07C817C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x5465746144646E65, 0xEB00000000656D69, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07C82A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5074(0xD000000000000011, 0x80000001C09D8AE0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_SettingValueType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DE1D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SettingValueType.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DE1D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_UserProperty.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CF350;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_UserProperty.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CF350;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReactionCategory.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFDC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ReactionCategory.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DFDC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MeasurementUnitType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE3E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MeasurementUnitType.init()()
{
  v0[5] = 0xD00000000000001ALL;
  v0[6] = 0x80000001C09DE3E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_StopWatch.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF370;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_StopWatch.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF370;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C8B9C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Integer.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(7364972, 0xE300000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E140, &unk_1C09A4F50);
  swift_endAccess();
}

void *UsoEntityBuilder_common_MessageMode.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DDE60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MessageMode.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DDE60;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EasterEgg.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF390;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EasterEgg.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF390;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonUserEntity_UserEntityAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000024;
  v0[6] = 0x80000001C09DE1F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_commonUserEntity_UserEntityAttribute.init()()
{
  v0[5] = 0xD000000000000024;
  v0[6] = 0x80000001C09DE1F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CalendarEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CF3B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_CalendarEvent.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CF3B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07C9814(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5E34(0xD000000000000012, 0x80000001C09DF780, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_DailyBriefing.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CF3F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_DailyBriefing.init()()
{
  v0[5] = 0xD000000000000014;
  v0[6] = 0x80000001C09CF3F0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SpatialDirection.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DE2C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SpatialDirection.init()()
{
  v0[5] = 0xD000000000000017;
  v0[6] = 0x80000001C09DE2C0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppIntent.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09DFC00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_AppIntent.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09DFC00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ScheduleType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFA00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ScheduleType.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFA00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MessageType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFC80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MessageType.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFC80;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NotebookItem.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CF410;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_NotebookItem.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09CF410;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07CA370(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0x656D695465746164, 0xEF64657461657243, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07CA758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveStringBuilder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[5] = a1;
  v7[6] = a2;
  v7[2] = v8;
  v7[3] = v8;
  v7[4] = v8;
  *(v6 + 32) = v7;

  v9 = *(v3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  sub_1C051D194(v6, 0xD000000000000017, 0x80000001C09D8B00, isUniquelyReferenced_nonNull_native);
  *(v3 + 56) = v12;
  return swift_endAccess();
}

uint64_t sub_1C07CA860(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = 0xEF646E657070615FLL;
  v6 = 0x726F74617265706FLL;
  v7 = 0xE600000000000000;
  v8 = 0x646E65707061;
  v9 = 0xE700000000000000;
  v10 = 0x6563616C706572;
  if (v4 != 4)
  {
    v10 = 0x6C61757145746F6ELL;
    v9 = 0xE900000000000073;
  }

  if (v4 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0x80000001C09B2D20;
  v12 = 0xD000000000000012;
  if (v4 == 1)
  {
    v12 = 0xD000000000000010;
  }

  else
  {
    v11 = 0x80000001C09B28B0;
  }

  if (*a1)
  {
    v6 = v12;
    v5 = v11;
  }

  if (*a1 <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (*a1 <= 2u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  swift_beginAccess();
  sub_1C07A95C8(0xD000000000000017, 0x80000001C09D8B00, (v3 + 56), v13, v14, a2, a3);
  swift_endAccess();
}

void *UsoEntityBuilder_common_OpinionTopic.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFBC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OpinionTopic.init()()
{
  v0[5] = 0xD000000000000013;
  v0[6] = 0x80000001C09DFBC0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07CADC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E4ED0(0xD000000000000011, 0x80000001C09DE260, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07CAE3C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0x6C61757145746F6ELL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a1)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0x80000001C09B28B0;
  }

  swift_beginAccess();
  sub_1C07A9884(0xD000000000000011, 0x80000001C09DE260, (v3 + 56), v6, v7, a2, a3, &qword_1EBE170C8, &qword_1C09708A0);
  swift_endAccess();
}

uint64_t sub_1C07CAFE0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Number.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x65756C6176, 0xE500000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E1F8, &qword_1C0993130);
  swift_endAccess();
}

void *UsoEntityBuilder_uso_NLv3UnknownEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CF450;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_uso_NLv3UnknownEntity.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CF450;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Ingredient.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DFD00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Ingredient.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DFD00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07CB3D4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Measurement.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x746E756F6D61, 0xE600000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E208, &qword_1C0993140);
  swift_endAccess();
}

void *UsoEntityBuilder_common_SiriAlias.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF470;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_SiriAlias.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF470;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetDateTime.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CF490;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetDateTime.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09CF490;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07CB9AC(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Number.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x41656D61536F7375, 0xE900000000000073, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E1F8, &qword_1C0993130);
  swift_endAccess();
}

void *UsoEntityBuilder_common_TapbackType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFB00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_TapbackType.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DFB00;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Quantifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CF4B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Quantifier.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CF4B0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07CBD5C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = *a1;
  v7 = UsoEntity_common_Integer.Operators.rawValue.getter();
  v9 = v8;
  swift_beginAccess();
  sub_1C07A9884(0x746E756F63, 0xE500000000000000, (v4 + 56), v7, v9, a2, a3, &qword_1EBE1E140, &unk_1C09A4F50);
  swift_endAccess();
}

void *UsoEntityBuilder_common_Translation.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CF4D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_Translation.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CF4D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ActiveType.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF680;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_ActiveType.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09DF680;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailFolder.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DF890;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_EmailFolder.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09DF890;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_RequiredStatus.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DF6E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_RequiredStatus.init()()
{
  v0[5] = 0xD000000000000015;
  v0[6] = 0x80000001C09DF6E0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetTime.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CF570;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_OffsetTime.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CF570;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MediaItem.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF590;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_common_MediaItem.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CF590;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C07CCCA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5934(0xD000000000000010, 0x80000001C09DF6A0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *sub_1C07CCD18()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  v2 = sub_1C06E1F38(0xD000000000000014, 0x80000001C09DF500, v1);

  return v2;
}

uint64_t sub_1C07CCD94(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E49F0(0xD000000000000014, 0x80000001C09DF500, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07CCE0C(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0x7465536F54646461;
  v7 = 0xED00007465536D6FLL;
  v8 = 0x724665766F6D6572;
  v9 = 0xE800000000000000;
  v10 = 0x736E6961746E6F63;
  if (v4 != 4)
  {
    v10 = 0x61746E6F43746F6ELL;
    v9 = 0xEB00000000736E69;
  }

  if (v4 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v4 == 1)
  {
    v6 = 0xD00000000000001ALL;
    v5 = 0x80000001C09B2710;
  }

  if (*a1)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0xD000000000000015;
  }

  if (!*a1)
  {
    v5 = 0x80000001C09B26F0;
  }

  if (*a1 <= 2u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  if (*a1 <= 2u)
  {
    v13 = v5;
  }

  else
  {
    v13 = v7;
  }

  swift_beginAccess();
  sub_1C07A9278(0xD000000000000014, 0x80000001C09DF500, (v3 + 56), v12, v13, a2, a3, &qword_1EBE16F88, &qword_1C0970760);
  swift_endAccess();
}

uint64_t sub_1C07CD038(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5F9C(0xD000000000000010, 0x80000001C09DF520, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C07CD1EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C06E5C54(0xD000000000000010, 0x80000001C09D5440, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_appleNotebook_NotebookAttribute.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[5] = 0xD00000000000001FLL;
  v0[6] = 0x80000001C09CF740;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

void *UsoEntityBuilder_appleNotebook_NotebookAttribute.init()()
{
  v0[5] = 0xD00000000000001FLL;
  v0[6] = 0x80000001C09CF740;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}