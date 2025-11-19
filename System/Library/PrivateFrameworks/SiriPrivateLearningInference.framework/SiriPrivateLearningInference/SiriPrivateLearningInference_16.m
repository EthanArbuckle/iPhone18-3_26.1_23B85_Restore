unint64_t ContactPromptGroundTruth.promptTask.getter()
{
  v1 = (v0 + *(type metadata accessor for ContactPromptGroundTruth() + 48));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  return v2;
}

uint64_t type metadata accessor for ContactPromptGroundTruth()
{
  result = qword_280FDE6B0;
  if (!qword_280FDE6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ContactPromptGroundTruth.init(id:promptTask:promptType:usoContactQuery:presentedContacts:selectedContact:interactionOutcome:plusSuggestions:plusForcePrompted:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v17 = *a4;
  v18 = *a8;
  v19 = type metadata accessor for ContactPromptGroundTruth();
  v20 = (a9 + v19[12]);
  v21 = sub_222C9367C();
  v24 = a7[1];
  v25 = *a7;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  *v20 = a2;
  v20[1] = a3;
  *(a9 + v19[5]) = v17;
  *(a9 + v19[6]) = a5;
  *(a9 + v19[7]) = a6;
  v22 = (a9 + v19[8]);
  result = v25;
  *v22 = v25;
  v22[1] = v24;
  *(a9 + v19[9]) = v18;
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a11;
  return result;
}

uint64_t ContactPromptGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactPromptGroundTruthType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x616D7269666E6F63;
  }

  else
  {
    result = 0x6769626D61736964;
  }

  *v0;
  return result;
}

uint64_t sub_222C79004()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C7909C()
{
  *v0;
  sub_222C9452C();
}

uint64_t sub_222C79120()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222C791C0(uint64_t *a1@<X8>)
{
  v2 = 0x6769626D61736964;
  if (*v1)
  {
    v2 = 0x616D7269666E6F63;
  }

  v3 = 0xEE006E6F69746175;
  if (*v1)
  {
    v3 = 0xEC0000006E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222C792C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616D7269666E6F63;
  }

  else
  {
    v4 = 0x6769626D61736964;
  }

  if (v3)
  {
    v5 = 0xEE006E6F69746175;
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v6 = 0x616D7269666E6F63;
  }

  else
  {
    v6 = 0x6769626D61736964;
  }

  if (*a2)
  {
    v7 = 0xEC0000006E6F6974;
  }

  else
  {
    v7 = 0xEE006E6F69746175;
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

uint64_t sub_222C7938C@<X0>(char *a1@<X8>)
{
  v2 = sub_222C94FDC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ContactPromptInteractionOutcome.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E61624172657375;
  }

  else
  {
    result = 0x65746E4972657375;
  }

  *v0;
  return result;
}

uint64_t sub_222C79440()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C794DC()
{
  *v0;
  sub_222C9452C();
}

uint64_t sub_222C79564()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C79608@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_222C79664(uint64_t *a1@<X8>)
{
  v2 = 0x65746E4972657375;
  if (*v1)
  {
    v2 = 0x6E61624172657375;
  }

  v3 = 0xEE00646574636172;
  if (*v1)
  {
    v3 = 0xED000064656E6F64;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222C7976C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E61624172657375;
  }

  else
  {
    v4 = 0x65746E4972657375;
  }

  if (v3)
  {
    v5 = 0xEE00646574636172;
  }

  else
  {
    v5 = 0xED000064656E6F64;
  }

  if (*a2)
  {
    v6 = 0x6E61624172657375;
  }

  else
  {
    v6 = 0x65746E4972657375;
  }

  if (*a2)
  {
    v7 = 0xED000064656E6F64;
  }

  else
  {
    v7 = 0xEE00646574636172;
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

SiriPrivateLearningInference::ContactPromptGroundTruthSource_optional __swiftcall ContactPromptGroundTruthSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ContactPromptGroundTruthSource.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 3)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000017;
  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_222C7993C()
{
  *v0;
  *v0;
  *v0;
  sub_222C9452C();
}

void sub_222C79A20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "disambiguationAbandoned";
  v4 = 0xD000000000000012;
  v5 = "confirmationChosen";
  if (v2 != 4)
  {
    v5 = "confirmationNotChosen";
  }

  if (v2 != 3)
  {
    v4 = 0xD000000000000015;
    v3 = v5;
  }

  v6 = "disambiguationChosen";
  v7 = 0xD000000000000017;
  if (v2 != 1)
  {
    v6 = "disambiguationNotChosen";
  }

  if (*v1)
  {
    v8 = v6;
  }

  else
  {
    v7 = 0xD000000000000014;
    v8 = "erInteracted";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t ContactPromptGroundTruth.promptType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactPromptGroundTruth();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ContactPromptGroundTruth.usoContactQuery.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContactPromptGroundTruth() + 24));
}

uint64_t ContactPromptGroundTruth.presentedContacts.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContactPromptGroundTruth() + 28));
}

uint64_t ContactPromptGroundTruth.selectedContact.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ContactPromptGroundTruth() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_222B98D00(v4, v5);
}

uint64_t ContactPromptGroundTruth.interactionOutcome.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactPromptGroundTruth();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ContactPromptGroundTruth.plusSuggestions.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContactPromptGroundTruth() + 40));
}

unint64_t sub_222C79D28(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x61746E6F436F7375;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x795474706D6F7270;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6767755373756C70;
    v2 = 0x5474706D6F72705FLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 == 4)
    {
      v3 = 0x64657463656C6573;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_222C79E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C7BB68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C79EA8(uint64_t a1)
{
  v2 = sub_222C7B124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C79EE4(uint64_t a1)
{
  v2 = sub_222C7B124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactPromptGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027AE8, &qword_222CA6350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C7B124();
  sub_222C9536C();
  LOBYTE(v22) = 0;
  sub_222C9367C();
  sub_222C7B660(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for ContactPromptGroundTruth();
    LOBYTE(v22) = *(v3 + v11[5]);
    v26 = 1;
    sub_222C7B178();
    sub_222C9512C();
    v22 = *(v3 + v11[6]);
    v26 = 2;
    sub_222C9378C();
    sub_222C7B660(&qword_27D025A98, MEMORY[0x277D5E850]);
    sub_222C9512C();
    v22 = *(v3 + v11[7]);
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0268A0, &unk_222C9E708);
    sub_222C7B274(&qword_27D027B00, sub_222BFD70C);
    sub_222C9512C();
    v12 = (v3 + v11[8]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v22 = *v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = 4;
    sub_222B98D00(v22, v13);
    sub_222BFD70C();
    sub_222C950DC();
    sub_222B450E8(v22, v23);
    LOBYTE(v22) = *(v3 + v11[9]);
    v26 = 5;
    sub_222C7B1CC();
    sub_222C950DC();
    v22 = *(v3 + v11[10]);
    v26 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
    sub_222C7B340(&qword_27D027B10);
    sub_222C9512C();
    v16 = *(v3 + v11[11]);
    LOBYTE(v22) = 7;
    sub_222C950FC();
    v17 = (v3 + v11[12]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v22) = 8;
    sub_222C950CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ContactPromptGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_222C9367C();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027B18, &qword_222CA6358);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ContactPromptGroundTruth();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C7B124();
  v34 = v9;
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v32;
  v29 = v13;
  LOBYTE(v36) = 0;
  sub_222C7B660(&qword_27D025178, MEMORY[0x277CC95F0]);
  v16 = v33;
  sub_222C9507C();
  v17 = v4;
  v18 = v29;
  (*(v31 + 32))(v29, v16, v4);
  v38 = 1;
  sub_222C7B220();
  sub_222C9507C();
  v19 = v15;
  v28 = v17;
  v18[v10[5]] = v36;
  sub_222C9378C();
  v38 = 2;
  sub_222C7B660(&qword_27D026C98, MEMORY[0x277D5E850]);
  sub_222C9507C();
  *&v18[v10[6]] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0268A0, &unk_222C9E708);
  v38 = 3;
  sub_222C7B274(&qword_27D027B28, sub_222BFD7B4);
  sub_222C9507C();
  *&v18[v10[7]] = v36;
  v38 = 4;
  sub_222BFD7B4();
  sub_222C9502C();
  v20 = &v18[v10[8]];
  v21 = v37;
  *v20 = v36;
  *(v20 + 1) = v21;
  v38 = 5;
  sub_222C7B2EC();
  sub_222C9502C();
  v18[v10[9]] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
  v38 = 6;
  sub_222C7B340(&qword_27D027B38);
  sub_222C9507C();
  *&v18[v10[10]] = v36;
  LOBYTE(v36) = 7;
  v18[v10[11]] = sub_222C9504C() & 1;
  LOBYTE(v36) = 8;
  v22 = sub_222C9501C();
  v24 = v23;
  v25 = v29;
  v26 = &v29[v10[12]];
  (*(v19 + 8))(v34, v35);
  *v26 = v22;
  v26[1] = v24;
  sub_222C7B3AC(v25, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222C7B410(v25);
}

BOOL _s28SiriPrivateLearningInference24ContactPromptGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ContactPromptGroundTruth();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x616D7269666E6F63;
  }

  else
  {
    v8 = 0x6769626D61736964;
  }

  if (v6)
  {
    v9 = 0xEC0000006E6F6974;
  }

  else
  {
    v9 = 0xEE006E6F69746175;
  }

  if (v7)
  {
    v10 = 0x616D7269666E6F63;
  }

  else
  {
    v10 = 0x6769626D61736964;
  }

  if (v7)
  {
    v11 = 0xEC0000006E6F6974;
  }

  else
  {
    v11 = 0xEE006E6F69746175;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_222C951FC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = v4[6];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v17 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v17 != sub_222C9534C() || (sub_222BBCBC4(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = *(a1 + v18 + 16);
  v22 = *(a1 + v18 + 24);
  v23 = (a2 + v18);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = v23[3];
  if (!v20)
  {
    v54 = v19;
    sub_222B98D00(v19, 0);
    if (!v25)
    {
      sub_222B98D00(v24, 0);
      v20 = 0;
      goto LABEL_55;
    }

    v35 = v24;
    sub_222B98D00(v24, v25);
    v36 = v19;
    goto LABEL_42;
  }

  if (!v25)
  {
    v35 = *v23;
    v36 = v19;
    sub_222B98D00(v19, v20);
    sub_222B98D00(v35, 0);
    sub_222B98D00(v19, v20);

LABEL_42:
    sub_222B450E8(v36, v20);
    v37 = v35;
    v38 = v25;
LABEL_48:
    sub_222B450E8(v37, v38);
    return 0;
  }

  if (v19 != v24 || v20 != v25)
  {
    v53 = v23[3];
    v28 = v22;
    v29 = *v23;
    v30 = v19;
    v31 = v21;
    v32 = sub_222C951FC();
    v21 = v31;
    v19 = v30;
    v24 = v29;
    v22 = v28;
    v27 = v53;
    if ((v32 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  if (!v22)
  {
    sub_222B98D00(v19, v20);
    if (!v27)
    {
      sub_222B98D00(v24, v25);
      sub_222B98D00(v19, v20);
      v33 = v24;
      v34 = v25;
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  if (!v27)
  {
LABEL_43:
    sub_222B98D00(v19, v20);
LABEL_46:
    sub_222B98D00(v24, v25);
    sub_222B98D00(v19, v20);
    sub_222B450E8(v24, v25);
LABEL_47:

    v37 = v19;
    v38 = v20;
    goto LABEL_48;
  }

  if (v21 != v26 || v22 != v27)
  {
    v55 = sub_222C951FC();
    sub_222B98D00(v19, v20);
    sub_222B98D00(v24, v25);
    sub_222B98D00(v19, v20);
    sub_222B450E8(v24, v25);
    if (v55)
    {
      goto LABEL_54;
    }

    goto LABEL_47;
  }

  sub_222B98D00(v19, v20);
  sub_222B98D00(v24, v25);
  sub_222B98D00(v19, v20);
  v33 = v24;
  v34 = v25;
LABEL_53:
  sub_222B450E8(v33, v34);
LABEL_54:
  v54 = v19;

LABEL_55:
  sub_222B450E8(v54, v20);
  v40 = v4[9];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v42 == 2)
    {
      return 0;
    }

    if (v41)
    {
      v43 = 0x6E61624172657375;
    }

    else
    {
      v43 = 0x65746E4972657375;
    }

    if (v41)
    {
      v44 = 0xED000064656E6F64;
    }

    else
    {
      v44 = 0xEE00646574636172;
    }

    if (v42)
    {
      v45 = 0x6E61624172657375;
    }

    else
    {
      v45 = 0x65746E4972657375;
    }

    if (v42)
    {
      v46 = 0xED000064656E6F64;
    }

    else
    {
      v46 = 0xEE00646574636172;
    }

    if (v43 == v45 && v44 == v46)
    {
    }

    else
    {
      v47 = sub_222C951FC();

      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_222BBC5A4(*(a1 + v4[10]), *(a2 + v4[10])) & 1) == 0 || *(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v48 = v4[12];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (!v50)
  {
    return !v52;
  }

  return v52 && (*v49 == *v51 && v50 == v52 || (sub_222C951FC() & 1) != 0);
}

unint64_t sub_222C7B124()
{
  result = qword_27D027AF0;
  if (!qword_27D027AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027AF0);
  }

  return result;
}

unint64_t sub_222C7B178()
{
  result = qword_27D027AF8;
  if (!qword_27D027AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027AF8);
  }

  return result;
}

unint64_t sub_222C7B1CC()
{
  result = qword_27D027B08;
  if (!qword_27D027B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B08);
  }

  return result;
}

unint64_t sub_222C7B220()
{
  result = qword_27D027B20;
  if (!qword_27D027B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B20);
  }

  return result;
}

uint64_t sub_222C7B274(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0268A0, &unk_222C9E708);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C7B2EC()
{
  result = qword_27D027B30;
  if (!qword_27D027B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B30);
  }

  return result;
}

uint64_t sub_222C7B340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F20, &unk_222C96CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222C7B3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPromptGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C7B410(uint64_t a1)
{
  v2 = type metadata accessor for ContactPromptGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C7B470()
{
  result = qword_27D027B40;
  if (!qword_27D027B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B40);
  }

  return result;
}

unint64_t sub_222C7B4C8()
{
  result = qword_27D027B48;
  if (!qword_27D027B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B48);
  }

  return result;
}

unint64_t sub_222C7B520()
{
  result = qword_27D027B50;
  if (!qword_27D027B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B50);
  }

  return result;
}

unint64_t sub_222C7B578()
{
  result = qword_27D027B58;
  if (!qword_27D027B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D027B60, &qword_222CA6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B58);
  }

  return result;
}

uint64_t sub_222C7B5DC(uint64_t a1)
{
  *(a1 + 8) = sub_222C7B660(&qword_280FDE6C8, type metadata accessor for ContactPromptGroundTruth);
  result = sub_222C7B660(qword_280FDE6D0, type metadata accessor for ContactPromptGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C7B660(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_222C7B700()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C9378C();
    if (v1 <= 0x3F)
    {
      sub_222C7B8C0(319, &qword_280FDB7C8, &type metadata for ContactReference, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_222C7B8C0(319, qword_280FDFB50, &type metadata for ContactReference, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_222C7B8C0(319, qword_280FDD240, &type metadata for ContactPromptInteractionOutcome, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_222C7B8C0(319, &qword_280FDB798, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_222C7B8C0(319, &qword_280FDB820, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_222C7B8C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContactPromptGroundTruth.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactPromptGroundTruth.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222C7BA64()
{
  result = qword_27D027B68;
  if (!qword_27D027B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B68);
  }

  return result;
}

unint64_t sub_222C7BABC()
{
  result = qword_27D027B70;
  if (!qword_27D027B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B70);
  }

  return result;
}

unint64_t sub_222C7BB14()
{
  result = qword_27D027B78;
  if (!qword_27D027B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B78);
  }

  return result;
}

uint64_t sub_222C7BB68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795474706D6F7270 && a2 == 0xEA00000000006570 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746E6F436F7375 && a2 == 0xEF79726575517463 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CADED0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF746361746E6F43 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000222CADEF0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6767755373756C70 && a2 == 0xEF736E6F69747365 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CADF10 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474706D6F72705FLL && a2 == 0xEB000000006B7361)
  {

    return 8;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_222C7BE70()
{
  result = qword_27D027B80;
  if (!qword_27D027B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B80);
  }

  return result;
}

unint64_t sub_222C7BEC4()
{
  result = qword_27D027B88;
  if (!qword_27D027B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B88);
  }

  return result;
}

unint64_t sub_222C7BF18()
{
  result = qword_27D027B90;
  if (!qword_27D027B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B90);
  }

  return result;
}

uint64_t SuccessfulPhoneCallClassification.init(siriStarted:phoneCallEventId:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C97C40;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(a4 + 32) = v7;
}

uint64_t SuccessfulPhoneCallClassification.phoneCallEventId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

SiriPrivateLearningInference::PlayMediaUserFeedback_optional __swiftcall PlayMediaUserFeedback.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PlayMediaUserFeedback.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000014;
    if (v1 == 6)
    {
      v5 = 0xD000000000000011;
    }

    if (v1 == 4)
    {
      v6 = 0x6369755169726973;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x756C636E6F636E69;
    if (v1 != 2)
    {
      v3 = 0x7561506B63697571;
    }

    if (*v0)
    {
      v2 = 0x73736563637573;
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
}

unint64_t sub_222C7C1D0()
{
  result = qword_27D027B98;
  if (!qword_27D027B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027B98);
  }

  return result;
}

void sub_222C7C24C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x8000000222CA9630;
    v9 = 0xD000000000000014;
    if (v2 == 6)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v8 = 0x8000000222CA9650;
    }

    v10 = 0xEF65676E6168436BLL;
    if (v2 == 4)
    {
      v11 = 0x6369755169726973;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (v2 != 4)
    {
      v10 = 0x8000000222CA9610;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    *a1 = v12;
    a1[1] = v13;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xEC00000065766973;
    v6 = 0x756C636E6F636E69;
    if (v2 != 2)
    {
      v6 = 0x7561506B63697571;
      v5 = 0xEA00000000006573;
    }

    if (*v1)
    {
      v4 = 0x73736563637573;
      v3 = 0xE700000000000000;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_222C7C378()
{
  type metadata accessor for MediaEvaluationFramework();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027938, &qword_222CA53D8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027BA0 = 91;
  *algn_27D027BA8 = 0xE100000000000000;
  return result;
}

uint64_t MediaEvaluationFramework.__allocating_init(_:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MediaEvaluationFramework.init(_:)(a1);
  return v2;
}

uint64_t MediaEvaluationFramework.init(_:)(uint64_t *a1)
{
  v2 = v1;
  *(v1 + 64) = MEMORY[0x277D84F90];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 40))(v13, v4, v5);
  sub_222B405A0(v13, v1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v13, v6, v7);
  type metadata accessor for MediaGroundTruthSummarizer();
  v8 = swift_allocObject();
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  sub_222B405A0(v13, v8 + 16);
  *(v2 + 56) = v8;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 32))(v13, v9, v10);
  type metadata accessor for MediaSuggestionManager();
  v11 = swift_allocObject();
  sub_222B405A0(v13, v11 + 16);
  *(v2 + 72) = v11;
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

uint64_t sub_222C7C598()
{
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  v5 = &type metadata for PIMSProcessingState;
  v6 = sub_222BDEBC8();
  v3[0] = 0xD000000000000013;
  v3[1] = 0x8000000222CAB9A0;
  v4 = 1;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_222C7C65C(unint64_t a1)
{
  v97 = type metadata accessor for MediaEvaluationSummary();
  v2 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v96 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v90 - v6;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v111 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for FeaturisedTurn(0);
  v110 = *(v115 - 8);
  v12 = *(v110 + 64);
  MEMORY[0x28223BE20](v115);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v90 - v16;
  MEMORY[0x28223BE20](v17);
  v108 = &v90 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v90 - v20;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v22 = sub_222C9431C();
    v98 = __swift_project_value_buffer(v22, qword_280FE2340);
    v23 = sub_222C942FC();
    v24 = sub_222C94A3C();
    v25 = os_log_type_enabled(v23, v24);
    v105 = v9;
    if (v25)
    {
      v9 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v118 = v26;
      *v9 = 136315138;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, &v118);
      _os_log_impl(&dword_222B39000, v23, v24, "%s: Successful evaluateSession run", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      MEMORY[0x223DCA8C0](v9, -1, -1);
    }

    v100 = v14;
    v101 = v8;
    v102 = v7;
    v114 = *(a1 + 16);
    if (v114)
    {
      v28 = 0;
      v107 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v109 = a1 + v107;
      v29 = *(v110 + 72);
      v8 = "essages.SendMessageIntent";
      v113 = MEMORY[0x277D84F90];
      v14 = v112;
      do
      {
        sub_222C7EC48(v109 + v29 * v28, v21, type metadata accessor for FeaturisedTurn);
        v30 = sub_222B41648(*&v21[*(v115 + 24)]);
        if (v30)
        {
          a1 = v30;
          v31 = (v30 + 40);
          v7 = -*(v30 + 16);
          v14 = -1;
          do
          {
            if (v7 + v14 == -1)
            {

              v14 = v112;
              goto LABEL_9;
            }

            if (++v14 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_83;
            }

            v9 = (v31 + 2);
            v33 = *(v31 - 1);
            v32 = *v31;

            LOBYTE(v33) = sub_222B42DF0();

            v31 = v9;
          }

          while ((v33 & 1) == 0);

          sub_222C7ED10(v21, v108, type metadata accessor for FeaturisedTurn);
          v34 = v113;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v34;
          *&v118 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222B4C3D4(0, *(v34 + 16) + 1, 1);
            v36 = v118;
          }

          v14 = v112;
          v7 = *(v36 + 16);
          v37 = *(v36 + 24);
          if (v7 >= v37 >> 1)
          {
            sub_222B4C3D4(v37 > 1, v7 + 1, 1);
            v36 = v118;
          }

          *(v36 + 16) = v7 + 1;
          v113 = v36;
          sub_222C7ED10(v108, v36 + v107 + v7 * v29, type metadata accessor for FeaturisedTurn);
        }

        else
        {
LABEL_9:
          sub_222C7ECB0(v21, type metadata accessor for FeaturisedTurn);
        }

        ++v28;
      }

      while (v28 != v114);
    }

    else
    {
      v113 = MEMORY[0x277D84F90];
      v14 = v112;
    }

    v38 = v113;
    v108 = *(v113 + 16);
    if (!v108)
    {
    }

    a1 = 0;
    v99 = 0;
    v107 = v113 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v106 = (v105 + 48);
    v95 = (v105 + 32);
    v21 = 0x8000000222CA87C0;
    v91 = (v105 + 16);
    v90 = (v105 + 56);
    v94 = (v105 + 8);
    *&v27 = 136315394;
    v92 = v27;
    v8 = v102;
    v39 = v101;
    while (1)
    {
      if (a1 >= *(v38 + 16))
      {
        goto LABEL_84;
      }

      sub_222C7EC48(v107 + *(v110 + 72) * a1, v14, type metadata accessor for FeaturisedTurn);
      v41 = *(v14 + *(v115 + 24));
      sub_222B421FC(v41, v8);
      v42 = (*v106)(v8, 1, v39);
      v114 = a1;
      if (v42 != 1)
      {
        break;
      }

      sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      *(&v119 + 1) = &type metadata for PIMSFatalError;
      *v120 = sub_222BE72D0();
      strcpy(&v118, "PIMSFatalError");
      HIBYTE(v118) = -18;
      LOBYTE(v119) = 8;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(&v118);
      v7 = v100;
      sub_222C7EC48(v14, v100, type metadata accessor for FeaturisedTurn);
      v43 = sub_222C942FC();
      v9 = sub_222C94A3C();
      if (os_log_type_enabled(v43, v9))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v118 = v45;
        *v44 = v92;
        if (qword_27D024798 != -1)
        {
          swift_once();
        }

        *(v44 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, &v118);
        *(v44 + 12) = 2080;
        v7 = v100;
        v46 = sub_222C9360C();
        v48 = v47;
        sub_222C7ECB0(v7, type metadata accessor for FeaturisedTurn);
        v49 = sub_222B437C0(v46, v48, &v118);

        *(v44 + 14) = v49;
        _os_log_impl(&dword_222B39000, v43, v9, "%s No request id found in the turn with id = %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v45, -1, -1);
        MEMORY[0x223DCA8C0](v44, -1, -1);

        v14 = v112;
        sub_222C7ECB0(v112, type metadata accessor for FeaturisedTurn);
        v8 = v102;
        v39 = v101;
      }

      else
      {

        sub_222C7ECB0(v7, type metadata accessor for FeaturisedTurn);
        v40 = v14;
LABEL_25:
        sub_222C7ECB0(v40, type metadata accessor for FeaturisedTurn);
      }

      a1 = v114 + 1;
      v38 = v113;
      if (v114 + 1 == v108)
      {
      }
    }

    (*v95)(v111, v8, v39);
    v50 = sub_222B42DBC(v41);
    if (v50)
    {
      v51 = v50;
      *&v118 = 0x6C7070612E6D6F63;
      *(&v118 + 1) = 0xEF636973754D2E65;
      MEMORY[0x28223BE20](v50);
      *(&v90 - 2) = &v118;
      v52 = v99;
      LODWORD(v109) = sub_222B42F4C(sub_222B5EBA4, (&v90 - 4), v51);
      v99 = v52;
    }

    else
    {
      LODWORD(v109) = 0;
    }

    v53 = *(v14 + *(v115 + 28));
    v54 = (v53 + 64);
    v55 = *(v53 + 16) + 1;
    do
    {
      if (!--v55)
      {
        v59 = v109;
        if (v109)
        {
          if (qword_280FDF1F0 != -1)
          {
            swift_once();
          }

          *(&v119 + 1) = &type metadata for PIMSFatalError;
          *v120 = sub_222BE72D0();
          strcpy(&v118, "PIMSFatalError");
          HIBYTE(v118) = -18;
          LOBYTE(v119) = 7;
          sub_222C93B5C();
          __swift_destroy_boxed_opaque_existential_0Tm(&v118);
          v9 = 0;
          v104 = 0;
          v105 = 0;
          goto LABEL_66;
        }

        v9 = 0;
        v104 = 0;
        v105 = 0;
LABEL_67:
        sub_222C7D78C(v14, v59 & 1, &v118);
        v66 = v118;
        v67 = sub_222B41B48(v41);
        if (v67)
        {
          v68 = v103[5];
          v69 = v103[6];
          __swift_project_boxed_opaque_existential_1(v103 + 2, v68);
          v70 = *(v69 + 48);

          v72 = v70(v71, v68, v69);
        }

        else
        {
          v72 = MEMORY[0x277D84F90];
        }

        v8 = v102;
        v39 = v101;
        v7 = v105;
        sub_222C7E3C4(v72, v104, v105, v9, v121);

        if (v66 == 8)
        {
          (*v94)(v111, v39);

          sub_222B4FCD4(v121, qword_27D027BB0, &unk_222CA6AF8);
          v14 = v112;
        }

        else
        {
          if (v67)
          {
            v73 = v103;
            v74 = v103[7];

            v76 = sub_222C62184(v75);
          }

          else
          {
            v76 = MEMORY[0x277D84F90];
            v73 = v103;
          }

          v77 = v96;
          (*v91)(v96, v111, v39);
          (*v90)(v77, 0, 1, v39);
          v78 = v73[9];
          sub_222C49B94(&v118);
          v79 = v118;
          v80 = v97;
          v81 = (v77 + *(v97 + 20));
          *v81 = 0;
          v81[1] = 0;
          v82 = v77 + v80[6];
          v83 = v121[1];
          *v82 = v121[0];
          *(v82 + 16) = v83;
          *(v82 + 32) = v121[2];
          *(v82 + 48) = v122;
          *(v77 + v80[7]) = v79;
          *(v77 + v80[8]) = v66;
          *(v77 + v80[9]) = v76;
          swift_beginAccess();
          v84 = v73[8];
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v73[8] = v84;
          if ((v85 & 1) == 0)
          {
            v84 = sub_222B4C124(0, v84[2] + 1, 1, v84);
            v73[8] = v84;
          }

          v14 = v112;
          v7 = v84[2];
          v86 = v84[3];
          if (v7 >= v86 >> 1)
          {
            v84 = sub_222B4C124((v86 > 1), v7 + 1, 1, v84);
            v103[8] = v84;
          }

          *(&v119 + 1) = v97;
          *v120 = &off_28360CE30;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
          v9 = type metadata accessor for MediaEvaluationSummary;
          v88 = v96;
          sub_222C7EC48(v96, boxed_opaque_existential_1, type metadata accessor for MediaEvaluationSummary);
          v84[2] = v7 + 1;
          sub_222B405A0(&v118, &v84[5 * v7 + 4]);
          sub_222C7ECB0(v88, type metadata accessor for MediaEvaluationSummary);
          v103[8] = v84;
          swift_endAccess();

          (*v94)(v111, v39);
        }

        v40 = v14;
        goto LABEL_25;
      }

      v56 = *(v54 - 3);
      v57 = *(v54 - 2);
      a1 = *v54;
      if (*(v54 - 1) == 0xD000000000000011 && 0x8000000222CA87C0 == a1)
      {
        break;
      }

      v54 += 5;
    }

    while ((sub_222C951FC() & 1) == 0);
    swift_bridgeObjectRetain_n();

    sub_222B4183C(v57, v116);

    v118 = v116[0];
    v119 = v116[1];
    *v120 = *v117;
    *&v120[9] = *&v117[9];
    v105 = *(&v116[0] + 1);
    if (*(&v116[0] + 1))
    {
      v104 = v118;

      sub_222B4FCD4(&v118, &qword_27D025370, &qword_222C98310);
    }

    else
    {
      v104 = 0;
    }

    v61 = sub_222B41F10(v60);

    swift_bridgeObjectRelease_n();

    if (!v61)
    {
      v9 = 0;
      goto LABEL_66;
    }

    v93 = v41;
    v14 = *(v61 + 16);
    if (!v14)
    {
      v9 = MEMORY[0x277D84F90];
LABEL_65:

      v14 = v112;
      v41 = v93;
LABEL_66:
      v59 = v109;
      goto LABEL_67;
    }

    v7 = 0;
    v62 = (v61 + 40);
    v9 = MEMORY[0x277D84F90];
    while (v7 < *(v61 + 16))
    {
      v63 = *(v62 - 1);
      a1 = *v62;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_222B49E84(0, *(v9 + 16) + 1, 1, v9);
      }

      v8 = *(v9 + 16);
      v64 = *(v9 + 24);
      if (v8 >= v64 >> 1)
      {
        v9 = sub_222B49E84((v64 > 1), v8 + 1, 1, v9);
      }

      ++v7;
      *(v9 + 16) = v8 + 1;
      v65 = v9 + 16 * v8;
      *(v65 + 32) = v63;
      *(v65 + 40) = a1;
      v62 += 8;
      if (v14 == v7)
      {
        goto LABEL_65;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
  }
}

void sub_222C7D78C(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v73 = a2;
  v75 = a3;
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v14);
  v72 = &v71 - v15;
  v17 = *(v16 + 36);
  v74 = a1;
  v18 = *(a1 + v17);
  v19 = (v18 + 64);
  v20 = *(v18 + 16) + 1;
  do
  {
    if (!--v20)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v27 = sub_222C9431C();
      __swift_project_value_buffer(v27, qword_280FE2340);
      sub_222C7EC48(v74, v7, type metadata accessor for FeaturisedTurn);
      v28 = sub_222C942FC();
      v29 = sub_222C94A3C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v76[0] = v31;
        *v30 = 136315394;
        if (qword_27D024798 != -1)
        {
          swift_once();
        }

        *(v30 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v76);
        *(v30 + 12) = 2080;
        v32 = sub_222C9360C();
        v34 = v33;
        sub_222C7ECB0(v7, type metadata accessor for FeaturisedTurn);
        v35 = sub_222B437C0(v32, v34, v76);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_222B39000, v28, v29, "%s No now playing event found related to the turn with id = %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v31, -1, -1);
        MEMORY[0x223DCA8C0](v30, -1, -1);

        if ((v73 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {

        sub_222C7ECB0(v7, type metadata accessor for FeaturisedTurn);
        if ((v73 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v78 = &type metadata for PIMSFatalError;
      v79 = sub_222BE72D0();
      strcpy(v76, "PIMSFatalError");
      HIBYTE(v76[1]) = -18;
      v77 = 6;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      goto LABEL_48;
    }

    v21 = *(v19 - 3);
    v22 = *(v19 - 2);
    if (*(v19 - 1) == 0xD000000000000011 && 0x8000000222CA87E0 == *v19)
    {
      break;
    }

    v19 += 5;
  }

  while ((sub_222C951FC() & 1) == 0);
  swift_bridgeObjectRetain_n();

  v24 = sub_222B41824(v22);
  v26 = v25;

  if (v26)
  {
    if (v24 == 0x6C7070612E6D6F63 && v26 == 0xEF636973754D2E65)
    {

      goto LABEL_20;
    }

    v36 = sub_222C951FC();

    if (v36)
    {
      goto LABEL_20;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v61 = sub_222C9431C();
    __swift_project_value_buffer(v61, qword_280FE2340);
    v62 = v72;
    sub_222C7EC48(v74, v72, type metadata accessor for FeaturisedTurn);
    v63 = sub_222C942FC();
    v64 = sub_222C94A3C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v76[0] = v66;
      *v65 = 136315394;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v65 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v76);
      *(v65 + 12) = 2080;
      v67 = sub_222C9360C();
      v69 = v68;
      sub_222C7ECB0(v62, type metadata accessor for FeaturisedTurn);
      v70 = sub_222B437C0(v67, v69, v76);

      *(v65 + 14) = v70;
      _os_log_impl(&dword_222B39000, v63, v64, "%s 3rd party media play on turn with id = %s, no evaluation summary will be extracted", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v66, -1, -1);
      MEMORY[0x223DCA8C0](v65, -1, -1);
    }

    else
    {

      sub_222C7ECB0(v62, type metadata accessor for FeaturisedTurn);
    }

LABEL_48:
    LOBYTE(v50) = 8;
    goto LABEL_49;
  }

LABEL_20:

  v38 = COERCE_DOUBLE(sub_222B423B8(v37));
  v40 = v39;

  if ((v40 & 1) != 0 || v38 < 30.0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v51 = sub_222C9431C();
    __swift_project_value_buffer(v51, qword_280FE2340);
    sub_222C7EC48(v74, v10, type metadata accessor for FeaturisedTurn);
    v52 = sub_222C942FC();
    v53 = sub_222C94A3C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v76[0] = v55;
      *v54 = 136315394;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v54 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v76);
      *(v54 + 12) = 2080;
      v56 = sub_222C9360C();
      v58 = v57;
      sub_222C7ECB0(v10, type metadata accessor for FeaturisedTurn);
      v59 = sub_222B437C0(v56, v58, v76);

      *(v54 + 14) = v59;
      _os_log_impl(&dword_222B39000, v52, v53, "%s Short media play detected on turn with id = %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v55, -1, -1);
      MEMORY[0x223DCA8C0](v54, -1, -1);
    }

    else
    {

      sub_222C7ECB0(v10, type metadata accessor for FeaturisedTurn);
    }

    sub_222B42DD4(v60, v76);

    swift_bridgeObjectRelease_n();

    v50 = 0x30203030300uLL >> (8 * LOBYTE(v76[0]));
  }

  else
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v41 = sub_222C9431C();
    __swift_project_value_buffer(v41, qword_280FE2340);
    sub_222C7EC48(v74, v13, type metadata accessor for FeaturisedTurn);
    v42 = sub_222C942FC();
    v43 = sub_222C94A3C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v76[0] = v45;
      *v44 = 136315394;
      if (qword_27D024798 != -1)
      {
        swift_once();
      }

      *(v44 + 4) = sub_222B437C0(qword_27D027BA0, *algn_27D027BA8, v76);
      *(v44 + 12) = 2080;
      v46 = sub_222C9360C();
      v48 = v47;
      sub_222C7ECB0(v13, type metadata accessor for FeaturisedTurn);
      v49 = sub_222B437C0(v46, v48, v76);

      *(v44 + 14) = v49;
      _os_log_impl(&dword_222B39000, v42, v43, "%s Successful media play detected on turn with id = %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v45, -1, -1);
      MEMORY[0x223DCA8C0](v44, -1, -1);

      LOBYTE(v50) = 1;
    }

    else
    {

      sub_222C7ECB0(v13, type metadata accessor for FeaturisedTurn);
      LOBYTE(v50) = 1;
    }
  }

LABEL_49:
  *v75 = v50;
}

uint64_t *MediaEvaluationFramework.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return v0;
}

uint64_t MediaEvaluationFramework.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_222C7E300()
{
  v1 = *v0;
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  v6 = &type metadata for PIMSProcessingState;
  v7 = sub_222BDEBC8();
  v4[0] = 0xD000000000000013;
  v4[1] = 0x8000000222CAB9A0;
  v5 = 1;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  swift_beginAccess();
  v2 = *(v1 + 64);
}

uint64_t sub_222C7E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v19 = type metadata accessor for PlusMediaSuggestion();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v75 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v70 - v28;
  v30 = *(a1 + 16);
  v77 = v20;
  v79 = a3;
  v78 = a2;
  v83 = v25;
  v74 = a1;
  v80 = v30;
  if (v30)
  {
    v82 = v26;
    v70 = v15;
    v71 = v18;
    v72 = a4;
    v73 = a5;
    v31 = v25[7];
    v32 = &v29[v25[6]];
    v85 = v25[8];
    v86 = v31;
    v33 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v87 = *(v20 + 72);
    v34 = MEMORY[0x277D84F90];
    v84 = xmmword_222C9A0B0;
    v81 = v33;
    v35 = v30;
    do
    {
      sub_222C7EC48(v33, v29, type metadata accessor for PlusMediaSuggestion);
      v37 = *v32;
      v36 = *(v32 + 1);

      v38 = PlusMediaSuggestion.isNominated.getter();
      v39 = *&v29[v85];
      v40 = *&v29[v86];

      sub_222C7ECB0(v29, type metadata accessor for PlusMediaSuggestion);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v41 = v34;
      }

      else
      {
        v41 = sub_222B4BFFC(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_222B4BFFC((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v44 = &v41[72 * v43];
      *(v44 + 4) = v37;
      *(v44 + 5) = v36;
      *(v44 + 3) = v84;
      *(v44 + 8) = 0;
      *(v44 + 9) = 0;
      *(v44 + 40) = 770;
      v44[82] = v38 & 1;
      v45 = v89;
      *(v44 + 83) = v88;
      v44[87] = v45;
      *(v44 + 11) = v39;
      *(v44 + 12) = v40;
      v33 += v87;
      --v35;
      v34 = v41;
    }

    while (v35);
    *&v84 = v41;
    v46 = 0;
    v85 = 0x8000000222CA93E0;
    v86 = 0x8000000222CA9400;
    v47 = v80;
    v48 = v82;
    while (1)
    {
      sub_222C7EC48(v81 + v87 * v46, v48, type metadata accessor for PlusMediaSuggestion);
      v49 = *(v48 + v83[11]);
      if (*(v49 + 16))
      {
        v50 = *(v49 + 40);
        sub_222C952FC();
        sub_222C9452C();
        v51 = sub_222C9534C();
        v52 = -1 << *(v49 + 32);
        v53 = v51 & ~v52;
        if ((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
        {
          break;
        }
      }

LABEL_10:
      ++v46;
      v48 = v82;
      sub_222C7ECB0(v82, type metadata accessor for PlusMediaSuggestion);
      if (v46 == v47)
      {
        v56 = 1;
        a5 = v73;
        a4 = v72;
        v18 = v71;
        goto LABEL_21;
      }
    }

    v54 = ~v52;
    while (*(*(v49 + 48) + v53) != 3)
    {
      v55 = sub_222C951FC();

      if (v55)
      {
        goto LABEL_20;
      }

      v53 = (v53 + 1) & v54;
      if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_20:
    v18 = v71;
    sub_222C7ED10(v82, v71, type metadata accessor for PlusMediaSuggestion);
    v56 = 0;
    a5 = v73;
    a4 = v72;
LABEL_21:
    v15 = v70;
    v20 = v77;
  }

  else
  {
    *&v84 = MEMORY[0x277D84F90];
    v56 = 1;
  }

  v57 = *(v20 + 56);
  v58 = v83;
  v57(v18, v56, 1, v83, v27);
  sub_222B9E560(v18, v15);
  v59 = *(v20 + 48);
  v60 = v59(v15, 1, v58);
  sub_222B4FCD4(v15, &qword_27D025D28, &unk_222C9AC30);
  if (v60 == 1)
  {
    if (v80)
    {
      v61 = v76;
      sub_222C7EC48(v74 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v76, type metadata accessor for PlusMediaSuggestion);
      v62 = 0;
    }

    else
    {
      v62 = 1;
      v61 = v76;
    }

    (v57)(v61, v62, 1, v58);
    sub_222C7ED78(v61, v18);
  }

  if (v59(v18, 1, v58))
  {
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v65 = v75;
    sub_222C7EC48(v18, v75, type metadata accessor for PlusMediaSuggestion);
    v66 = (v65 + v58[6]);
    v63 = *v66;
    v64 = v66[1];

    sub_222C7ECB0(v65, type metadata accessor for PlusMediaSuggestion);
  }

  v67 = v59(v18, 1, v58) == 0;
  v68 = v79;

  result = sub_222B4FCD4(v18, &qword_27D025D28, &unk_222C9AC30);
  *a5 = v84;
  *(a5 + 8) = a4;
  *(a5 + 16) = v78;
  *(a5 + 24) = v68;
  *(a5 + 32) = v63;
  *(a5 + 40) = v64;
  *(a5 + 48) = v67;
  return result;
}

uint64_t sub_222C7EC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C7ECB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C7ED10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C7ED78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C7EE08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;
}

uint64_t sub_222C7EEE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222C7EF2C(uint64_t result, int a2, int a3)
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
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222C7EFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_222C00D84;

  return v11(a1, a2, a3);
}

uint64_t sub_222C7F0C8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222C00E84;

  return v9(a1, a2);
}

uint64_t sub_222C7F1E8(void *a1)
{
  v2 = a1[5];
  v3 = a1[3];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[4];
    v7 = a1[2];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_222C9427C();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_222C7F314(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v6 = a3[5];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = a3[4];
  v12 = a3[2];
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  if (v15 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v9 + 64) + v16;
  v19 = *(*(v13 - 8) + 64) + 7;
  if (v17 >= a2)
  {
    goto LABEL_30;
  }

  v20 = ((v19 + (v18 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v20 <= 3)
  {
    v21 = ((a2 - v17 + 255) >> 8) + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *&a1[v20];
      if (!*&a1[v20])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = *&a1[v20];
      if (!v24)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v26 = (v24 - 1) << (8 * v20);
    if (v20 <= 3)
    {
      v27 = *a1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
    }

    return v17 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = a1[v20];
    if (a1[v20])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v10 == v17)
  {
    v28 = *(v9 + 48);

    return v28(a1, v10, AssociatedTypeWitness);
  }

  else
  {
    v29 = &a1[v18] & ~v16;
    if (v15 == v17)
    {
      v30 = *(v14 + 48);

      return v30(v29);
    }

    else
    {
      v31 = *((v19 + v29) & 0xFFFFFFFFFFFFFFF8);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }
  }
}

void sub_222C7F5C8(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[5];
  v9 = a4[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = a4[4];
  v14 = a4[2];
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = *(v15 + 84);
  v17 = *(v11 + 64);
  v18 = *(v15 + 80);
  v19 = *(v15 + 64);
  if (v16 <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = *(v15 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = v17 + v18;
  v22 = (v17 + v18) & ~v18;
  v23 = v19 + 7;
  v24 = ((v19 + 7 + v22) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v20 >= a3)
  {
    v27 = 0;
    if (v20 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v24 <= 3)
    {
      v25 = ((a3 - v20 + 255) >> 8) + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v20 >= a2)
    {
LABEL_19:
      if (v27 > 1)
      {
        if (v27 != 2)
        {
          *&a1[v24] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v24] = 0;
      }

      else if (v27)
      {
        a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v12 == v20)
      {
        v30 = *(v11 + 56);

        v30(a1, a2, v12, AssociatedTypeWitness);
      }

      else
      {
        v31 = &a1[v21] & ~v18;
        if (v16 == v20)
        {
          v32 = *(v15 + 56);

          v32(v31, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v33 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v33 = (a2 - 1);
          }

          *((v23 + v31) & 0xFFFFFFFFFFFFFFF8) = v33;
        }
      }

      return;
    }
  }

  v28 = ~v20 + a2;
  bzero(a1, v24);
  if (v24 <= 3)
  {
    v29 = (v28 >> 8) + 1;
  }

  else
  {
    v29 = 1;
  }

  if (v24 <= 3)
  {
    *a1 = v28;
    if (v27 > 1)
    {
LABEL_29:
      if (v27 == 2)
      {
        *&a1[v24] = v29;
      }

      else
      {
        *&a1[v24] = v29;
      }

      return;
    }
  }

  else
  {
    *a1 = v28;
    if (v27 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v27)
  {
    a1[v24] = v29;
  }
}

uint64_t sub_222C7F8DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222C7F968(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_222C7FB44(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_222C7FE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v15 = &v25 - v14;
  v16 = *(a1 + 40);
  v17 = *(a1 + 24);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v25 - v21;
  v23 = v3 + *(a1 + 52);
  (*(v16 + 24))(v17, v16, v20);
  (*(v6 + 16))(v9, v3, v5);
  sub_222C9487C();
  return sub_222C8000C(v22, v15, v26);
}

uint64_t sub_222C8000C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for AsyncStreamProcessingSequence.AsyncIterator();
  v6 = v5[14];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_222C9427C();
  *(a3 + v6) = sub_222C9425C();
  *(a3 + v5[15]) = 0;
  v7 = swift_checkMetadataState();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = v5[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(a3 + v8, a2, AssociatedTypeWitness);
}

uint64_t sub_222C801A4(uint64_t a1, void *a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v5 = a2[5];
  v6 = a2[3];
  v3[7] = swift_getAssociatedTypeWitness();
  v3[8] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[9] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v3[10] = v8;
  v3[11] = *(v8 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = a2[4];
  v3[15] = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  v3[16] = v9;
  v10 = sub_222C94B5C();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = *(v9 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C803DC, 0, 0);
}

uint64_t sub_222C803DC()
{
  *(v0 + 176) = *(*(v0 + 48) + *(*(v0 + 40) + 56));
  if ((sub_222C9424C() & 1) == 0)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 32);
    sub_222C9421C();
    goto LABEL_5;
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v2 + 60);
  *(v0 + 240) = v4;
  if (*(v3 + v4))
  {
    (*(v1 + 56))(*(v0 + 32), 1, 1, *(v0 + 72));
LABEL_5:
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  v15 = *(v2 + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(MEMORY[0x277D856D0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *v19 = v0;
  v19[1] = sub_222C805A4;
  v20 = *(v0 + 152);

  return MEMORY[0x282200308](v20, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222C805A4()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_222C810D8;
  }

  else
  {
    v3 = sub_222C806B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222C806B8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 56);
    v24 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 144) + 8))(v1, *(v0 + 136));
    *(v6 + v4) = 1;
    v7 = *(v24 + 32);
    v8 = swift_checkMetadataState();
    v22 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    *v10 = v0;
    v10[1] = sub_222C80D98;
    v11 = *(v0 + 64);
    v12 = *(v0 + 48);

    return v22(v8, v11);
  }

  else
  {
    v14 = *(v0 + 56);
    v25 = *(v0 + 64);
    (*(v2 + 32))(*(v0 + 168), v1, v3);
    v15 = *(v25 + 24);
    v16 = swift_checkMetadataState();
    v23 = (v15 + *v15);
    v17 = v15[1];
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_222C80974;
    v19 = *(v0 + 168);
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);

    return v23(v19, v16, v20);
  }
}

uint64_t sub_222C80974(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_222C81164;
  }

  else
  {
    v5 = sub_222C80A88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222C80A88()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 72);
  if (sub_222C947BC())
  {
    v3 = 0;
    do
    {
      v4 = *(v0 + 208);
      v5 = *(v0 + 72);
      v6 = sub_222C9479C();
      sub_222C9474C();
      if (v6)
      {
        (*(*(v0 + 80) + 16))(*(v0 + 104), *(v0 + 208) + ((*(*(v0 + 80) + 80) + 32) & ~*(*(v0 + 80) + 80)) + *(*(v0 + 80) + 72) * v3, *(v0 + 72));
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = *(v0 + 88);
        v14 = *(v0 + 72);
        v15 = sub_222C94D7C();
        if (v13 != 8)
        {
          __break(1u);
          return MEMORY[0x282200308](v15, v16, v17);
        }

        v18 = *(v0 + 104);
        v19 = *(v0 + 72);
        v20 = *(v0 + 80);
        *(v0 + 24) = v15;
        (*(v20 + 16))(v18, v0 + 24, v19);
        swift_unknownObjectRelease();
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      v8 = *(v0 + 208);
      v9 = *(v0 + 176);
      v10 = *(v0 + 104);
      v11 = *(v0 + 72);
      v12 = *(v0 + 80);
      sub_222C9422C();
      (*(v12 + 8))(v10, v11);
      ++v3;
    }

    while (v7 != sub_222C947BC());
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 168);
  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = *(v0 + 128);

  (*(v24 + 8))(v22, v25);
  if ((sub_222C9424C() & 1) == 0)
  {
    v29 = *(v0 + 176);
    v30 = *(v0 + 32);
    sub_222C9421C();
    goto LABEL_15;
  }

  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  v28 = *(v26 + 60);
  *(v0 + 240) = v28;
  if (*(v27 + v28))
  {
    (*(*(v0 + 80) + 56))(*(v0 + 32), 1, 1, *(v0 + 72));
LABEL_15:
    v31 = *(v0 + 168);
    v32 = *(v0 + 152);
    v34 = *(v0 + 96);
    v33 = *(v0 + 104);

    v35 = *(v0 + 8);

    return v35();
  }

  v37 = *(v0 + 112);
  v38 = *(v0 + 120);
  v39 = *(v26 + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = *(MEMORY[0x277D856D0] + 4);
  v43 = swift_task_alloc();
  *(v0 + 184) = v43;
  *v43 = v0;
  v43[1] = sub_222C805A4;
  v15 = *(v0 + 152);
  v16 = AssociatedTypeWitness;
  v17 = AssociatedConformanceWitness;

  return MEMORY[0x282200308](v15, v16, v17);
}

uint64_t sub_222C80D98(uint64_t a1)
{
  v3 = *(*v2 + 224);
  v4 = *v2;
  v4[29] = a1;

  if (v1)
  {
    v5 = v4[21];
    v6 = v4[19];
    v7 = v4[12];
    v8 = v4[13];

    v9 = v4[1];

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_222C80F00, 0, 0);
  }
}

uint64_t sub_222C80F00()
{
  v1 = v0[29];
  v2 = v0[9];
  if (sub_222C947BC())
  {
    v3 = 0;
    do
    {
      v4 = v0[29];
      v5 = v0[9];
      v6 = sub_222C9479C();
      sub_222C9474C();
      if (v6)
      {
        (*(v0[10] + 16))(v0[12], v0[29] + ((*(v0[10] + 80) + 32) & ~*(v0[10] + 80)) + *(v0[10] + 72) * v3, v0[9]);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = v0[11];
        v14 = v0[9];
        result = sub_222C94D7C();
        if (v13 != 8)
        {
          __break(1u);
          return result;
        }

        v16 = v0[12];
        v17 = v0[9];
        v18 = v0[10];
        v0[2] = result;
        (*(v18 + 16))(v16, v0 + 2, v17);
        swift_unknownObjectRelease();
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      v8 = v0[29];
      v9 = v0[22];
      v10 = v0[12];
      v11 = v0[9];
      v12 = v0[10];
      sub_222C9422C();
      (*(v12 + 8))(v10, v11);
      ++v3;
    }

    while (v7 != sub_222C947BC());
  }

  v19 = v0[29];
  v20 = v0[22];
  v21 = v0[4];

  sub_222C9421C();
  v22 = v0[21];
  v23 = v0[19];
  v25 = v0[12];
  v24 = v0[13];

  v26 = v0[1];

  return v26();
}

uint64_t sub_222C810D8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_222C81164()
{
  (*(v0[20] + 8))(v0[21], v0[16]);
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_222C81208(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return sub_222C801A4(a1, a2);
}

uint64_t sub_222C812CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_222C7FE18(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_222C8132C()
{
  v0 = sub_222BAFDE0(&unk_283607C58);
  result = sub_222BB6FDC(&unk_283607C78);
  qword_27D027CB8 = v0;
  return result;
}

uint64_t PhoneCallContactPartialRepetitionDefinition.__allocating_init()()
{
  v0 = swift_allocObject();
  PhoneCallContactPartialRepetitionDefinition.init()();
  return v0;
}

uint64_t PhoneCallContactPartialRepetitionDefinition.init()()
{
  v1 = v0;
  type metadata accessor for PhoneCallContactPartialRepetitionDefinition();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CC0, &unk_222CA6E10);
  v2 = sub_222C944EC();
  MEMORY[0x223DC9330](v2);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  type metadata accessor for EntityPromptClassifier();
  v4 = swift_allocObject();
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD0, &unk_222C9BC70);
  *(v3 + 64) = &off_28360D250;
  *(v3 + 32) = v4;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_222C814CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD8, &qword_222CA5EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  if (qword_27D0247A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D027CB8;
  v2 = type metadata accessor for ContactEntityUtteranceComparator();
  v3 = swift_allocObject();
  *(v3 + 32) = v1;
  *(v3 + 16) = 0x3FE6666666666666;
  *(v3 + 24) = 0;
  *(v0 + 56) = v2;
  *(v0 + 64) = &protocol witness table for ContactEntityUtteranceComparator;
  *(v0 + 32) = v3;

  return v0;
}

uint64_t sub_222C815A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  type metadata accessor for SuccessfulPhoneCallClassifier();
  v1 = swift_allocObject();
  *(v1 + 16) = 0x4014000000000000;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CC8, &qword_222CA6E20);
  *(v0 + 64) = &off_28360D250;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_222C81648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth();
  *(a5 + v16[5]) = 2;
  *(a5 + v16[6]) = a2;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

uint64_t sub_222C81798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v38 = a3;
  v44 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - v12;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v37 = v5;
  v40 = (v5 + 48);
  v41 = (v5 + 56);
  v46 = *a1;

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

    sub_222C81E98(v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v42, type metadata accessor for FeaturisedTurn);
    v27 = 0;
    ++v25;
LABEL_15:
    (*v41)(v30, v27, 1, v28);
    sub_222B5EC84(v30, v29);
    if ((*v40)(v29, 1, v28) == 1)
    {

      v35 = v38;
      *v38 = 0u;
      v35[1] = 0u;
      return result;
    }

    v45 = v25;
    v31 = v29;
    v32 = v39;
    sub_222B7E350(v31, v39);
    v33 = *(v32 + *(v28 + 28));

    sub_222B73DD0(v32);

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

        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = *(v16 - 2);
        v22 = *(v16 - 1);
        v23 = *v16;
        if (v20 == v13 && v19 == v14)
        {
          v20 = v13;
LABEL_19:

          v47[0] = v20;
          v47[1] = v19;
          v47[2] = v21;
          v47[3] = v22;
          v47[4] = v23;
          extractContactReference(event:)(v47, v38);
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

uint64_t PhoneCallContactPartialRepetitionDefinition.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t PhoneCallContactPartialRepetitionDefinition.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_222C81B88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth();
  *(a5 + v16[5]) = 2;
  *(a5 + v16[6]) = v7;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

uint64_t sub_222C81CF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2 - 1;
  v4 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v4 - 8);
  result = v4 - 8;
  v7 = *(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3 + *(result + 32));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_222B43E3C(v10, v12);
      sub_222B43E3C(v12, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      type metadata accessor for USOTaskSummaryFeature();
      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        return MEMORY[0x277D84F90];
      }

      sub_222B405A0(v12, v11);
      sub_222C9404C();
      result = swift_dynamicCast();
      if (result)
      {

        return MEMORY[0x277D84F90];
      }

      ++v9;
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    return sub_222C53118(1, v1);
  }

  return result;
}

uint64_t sub_222C81E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C81F00(uint64_t a1, uint64_t a2)
{
  result = sub_222C81FF0(&qword_27D027CD0, a2, type metadata accessor for PhoneCallContactPartialRepetitionDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222C81FF0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *ReformulationSpecializationClassifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = &unk_283607EF0;
  v1 = sub_222BAFDE0(&unk_283607F50);
  swift_arrayDestroy();
  v0[4] = v1;
  return v0;
}

uint64_t SlotBasedTurnComparison.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SlotBasedTurnComparison.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SlotBasedTurnComparison.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222C823D8()
{
  type metadata accessor for ReformulationSpecializationClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B78, &qword_222C9A4E8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027CD8 = 91;
  unk_27D027CE0 = 0xE100000000000000;
  return result;
}

void *ReformulationSpecializationClassifier.init()()
{
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = &unk_283607EF0;
  v1 = sub_222BAFDE0(&unk_283607F50);
  swift_arrayDestroy();
  v0[4] = v1;
  return v0;
}

uint64_t sub_222C824CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = *(a1 + 8);
  v5 = a1[3];
  v48 = a1[2];
  v49 = v5;
  v6 = a1[1];
  v46 = *a1;
  v47 = v6;
  if (!*(v49 + 16))
  {
    v14 = sub_222C84B94;
    v40 = sub_222C84B94;
    v41 = v2;
    v42 = sub_222C84B98;
    v43 = v2;
    v44 = sub_222C84B9C;
    v45 = v2;
    swift_retain_n();
    sub_222C84BA0(&v46, &v51);

    *v53 = v48;
    *&v53[16] = v49;
    v54 = v50;
    v51 = v46;
    v52 = v47;
    sub_222C835AC(&v34, &v51);

    v15 = v36[24];
    v37 = v34;
    v38 = v35;
    v39[0] = *v36;
    *(v39 + 9) = *&v36[9];
    sub_222B4FCD4(&v37, &qword_27D027090, &qword_222CA1FF0);
    if (v15 == 255)
    {

      *v53 = v48;
      *&v53[16] = v49;
      v54 = v50;
      v51 = v46;
      v52 = v47;
      sub_222C83050(&v51, &v34);

      v16 = v36[24];
      v37 = v34;
      v38 = v35;
      v39[0] = *v36;
      *(v39 + 9) = *&v36[9];
      sub_222B4FCD4(&v37, &qword_27D027090, &qword_222CA1FF0);
      if (v16 == 255)
      {
        v14 = v44;
        *v32 = v48;
        *&v32[16] = v49;
        v33 = v50;
        v30 = v46;
        v31 = v47;

        v14(&v34, &v30);

        v17 = v36[24];
        v37 = v34;
        v38 = v35;
        v39[0] = *v36;
        *(v39 + 9) = *&v36[9];
        sub_222B4FCD4(&v37, &qword_27D027090, &qword_222CA1FF0);
        if (v17 == 255)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CE8, &qword_222CA6EE8);
          swift_arrayDestroy();
          sub_222C2C6E0(&v46);
          swift_beginAccess();
          result = *(v3 + 16);
          v23 = *(result + 16);
          v19 = 0uLL;
          if (v23)
          {
            v24 = ( + 48);
            do
            {
              v25 = *(v24 - 2);
              v26 = *(v24 - 1);
              v27 = *v24;
              v28 = qword_280FDF1F0;

              if (v28 != -1)
              {
                swift_once();
              }

              v24 += 24;
              *(&v52 + 1) = &type metadata for PIMSConstraintMismatch;
              *v53 = sub_222B77B4C();
              *&v51 = v25;
              *(&v51 + 1) = v26;
              LOBYTE(v52) = v27;
              sub_222C93B5C();
              __swift_destroy_boxed_opaque_existential_0Tm(&v51);
              --v23;
            }

            while (v23);

            v21 = 0;
            v22 = -1;
            v18 = 0uLL;
            v20 = 0uLL;
            v19 = 0uLL;
          }

          else
          {
            v21 = 0;
            v22 = -1;
            v18 = 0uLL;
            v20 = 0uLL;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v14 = sub_222C84B98;
      }
    }

    *v53 = v48;
    *&v53[16] = v49;
    v54 = v50;
    v51 = v46;
    v52 = v47;

    v14(&v34, &v51);

    v30 = v34;
    v31 = v35;
    *v32 = *v36;
    *&v32[9] = *&v36[9];
    v51 = v34;
    v52 = v35;
    *v53 = *v36;
    *&v53[9] = *&v36[9];
    sub_222C84BFC(&v30, v29);
    sub_222B4FCD4(&v51, &qword_27D027090, &qword_222CA1FF0);
    if (v32[24] == 255)
    {
      result = sub_222C2C6E0(&v46);
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CE8, &qword_222CA6EE8);
    swift_arrayDestroy();
    result = sub_222C2C6E0(&v46);
    v19 = v30;
    v18 = v31;
    v20 = *v32;
    v21 = *&v32[16];
    v22 = v32[24];
LABEL_13:
    *a2 = v19;
    *(a2 + 16) = v18;
    *(a2 + 32) = v20;
    *(a2 + 48) = v21;
    *(a2 + 56) = v22;
    return result;
  }

  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_222B4B9DC(0, *(v7 + 2) + 1, 1, v7);
    *(v3 + 16) = v7;
  }

  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  if (v11 >= v10 >> 1)
  {
    v7 = sub_222B4B9DC((v10 > 1), v11 + 1, 1, v7);
  }

  *(v7 + 2) = v11 + 1;
  v12 = &v7[24 * v11];
  *(v12 + 4) = 0xD000000000000016;
  *(v12 + 5) = 0x8000000222CA9C80;
  v12[48] = 27;
  *(v3 + 16) = v7;
  result = swift_endAccess();
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = -1;
  return result;
}

void sub_222C829E8(__int128 *a1@<X0>, int64_t a2@<X8>)
{
  v3 = a2;
  v69 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v67 = a1[2];
  v68 = *(a1 + 6);
  if (*(v5 + 16))
  {
    v6 = 0x8000000222CA9C80;
    swift_beginAccess();
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_54:
      v7 = sub_222B4B9DC(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_222B4B9DC((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[24 * v10];
    *(v11 + 4) = 0xD000000000000016;
    *(v11 + 5) = v6;
    v12 = 23;
  }

  else
  {
    v55 = v5;
    v56 = v4;
    v58 = v2;
    v13 = *(a1 + 56);
    v54 = v13;
    v14 = *(a1 + 7);
    v15 = v13 + 64;
    v7 = *(v2 + 32);
    v16 = 1 << *(v13 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v6 = v17 & *(v13 + 64);
    v3 = (v16 + 63) >> 6;
    v18 = v7 + 56;
    v19 = *(v2 + 32);
    swift_bridgeObjectRetain_n();

    v20 = 0;
    for (i = v14; ; v14 = i)
    {
      do
      {
        if (!v6)
        {
          while (1)
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v22 >= v3)
            {
              goto LABEL_39;
            }

            v21 = *(v15 + 8 * v22);
            ++v20;
            if (v21)
            {
              v20 = v22;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_54;
        }

        v21 = v6;
LABEL_17:
        v6 = (v21 - 1) & v21;
      }

      while (!*(v7 + 2));
      v23 = (*(v14 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v21)))));
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v7 + 5);
      sub_222C952FC();

      sub_222C9452C();
      v27 = sub_222C9534C();
      v28 = -1 << v7[32];
      v2 = v27 & ~v28;
      if ((*&v18[(v2 >> 3) & 0xFFFFFFFFFFFFFF8] >> v2))
      {
        break;
      }

LABEL_26:
    }

    v29 = ~v28;
    while (1)
    {
      v30 = (*(v7 + 6) + 16 * v2);
      v31 = *v30 == v25 && v30[1] == v24;
      if (v31 || (sub_222C951FC() & 1) != 0)
      {
        break;
      }

      v2 = (v2 + 1) & v29;
      if (((*&v18[(v2 >> 3) & 0xFFFFFFFFFFFFFF8] >> v2) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v32 = *(v56 + 16);
    v2 = v58;
    if (v32 >= 2)
    {
      swift_beginAccess();
      v33 = *(v58 + 16);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *(v58 + 16) = v33;
      if ((v34 & 1) == 0)
      {
        v33 = sub_222B4B9DC(0, *(v33 + 2) + 1, 1, v33);
        *(v58 + 16) = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_222B4B9DC((v35 > 1), v36 + 1, 1, v33);
      }

      *(v33 + 2) = v36 + 1;
      v37 = &v33[24 * v36];
      *(v37 + 4) = 0xD000000000000016;
      *(v37 + 5) = 0x8000000222CA9C80;
      v37[48] = 25;
      *(v58 + 16) = v33;
      swift_endAccess();
      v32 = *(v56 + 16);
    }

    if (v32 != 1 || (sub_222BB78A0(v56, &v61), (v38 = *(&v61 + 1)) == 0))
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 56) = -1;
      return;
    }

    v39 = v61;
    v41 = v62;
    v40 = v63;
    v61 = v69;
    v62 = v56;
    v63 = v55;
    v64 = v67;
    v65 = v68;
    v66 = v54;
    v60[0] = v41;
    v60[1] = v40;

    v42 = sub_222C842E0(&v61, v39, v38, v60);

    if (v42)
    {

      v43 = *(i + 16);
      if (v43)
      {
        v44 = sub_222B8C8D4(*(i + 16), 0);
        v45 = sub_222B95AD8(&v61, v44 + 4, v43, i);

        sub_222B504E8();
        if (v45 != v43)
        {
          __break(1u);
LABEL_39:

          swift_bridgeObjectRelease_n();
          swift_beginAccess();
          v46 = *(v58 + 16);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *(v58 + 16) = v46;
          if ((v47 & 1) == 0)
          {
            v46 = sub_222B4B9DC(0, *(v46 + 2) + 1, 1, v46);
            *(v58 + 16) = v46;
          }

          v3 = a2;
          v49 = *(v46 + 2);
          v48 = *(v46 + 3);
          if (v49 >= v48 >> 1)
          {
            v46 = sub_222B4B9DC((v48 > 1), v49 + 1, 1, v46);
          }

          *(v46 + 2) = v49 + 1;
          v50 = &v46[24 * v49];
          *(v50 + 4) = 0xD000000000000016;
          *(v50 + 5) = 0x8000000222CA9C80;
          v50[48] = 24;
          *(v58 + 16) = v46;
          goto LABEL_44;
        }
      }

      else
      {
        v44 = MEMORY[0x277D84F90];
      }

      *a2 = v39;
      *(a2 + 8) = v38;
      *(a2 + 16) = v44;
      *(a2 + 56) = 0;
      return;
    }

    sub_222B450E8(v39, v38);
    swift_beginAccess();
    v7 = *(v58 + 16);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 16) = v7;
    if ((v51 & 1) == 0)
    {
      v7 = sub_222B4B9DC(0, *(v7 + 2) + 1, 1, v7);
      *(v58 + 16) = v7;
    }

    v3 = a2;
    v53 = *(v7 + 2);
    v52 = *(v7 + 3);
    if (v53 >= v52 >> 1)
    {
      v7 = sub_222B4B9DC((v52 > 1), v53 + 1, 1, v7);
    }

    *(v7 + 2) = v53 + 1;
    v11 = &v7[24 * v53];
    *(v11 + 4) = 0xD000000000000016;
    *(v11 + 5) = 0x8000000222CA9C80;
    v12 = 26;
  }

  v11[48] = v12;
  *(v2 + 16) = v7;
LABEL_44:
  swift_endAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 56) = -1;
}

void sub_222C83050(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  if (*(v5 + 16) != 1)
  {
    goto LABEL_24;
  }

  v6 = a1[2];
  v7 = a1[7];
  sub_222BB78A0(v5, &v36);
  v8 = v37;
  if (!v37)
  {
    goto LABEL_24;
  }

  v9 = v36;
  v11 = v38;
  v10 = v39;
  if (*(v6 + 16) == 1)
  {
    sub_222BB78A0(v6, &v36);
    v12 = v37;
    if (v37)
    {
      v13 = v36;
      v14 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v14 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        sub_222B450E8(v36, v37);
        swift_beginAccess();
        v15 = *(v2 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_222B4B9DC(0, *(v15 + 2) + 1, 1, v15);
          *(v2 + 16) = v15;
        }

        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = sub_222B4B9DC((v17 > 1), v18 + 1, 1, v15);
        }

        *(v15 + 2) = v18 + 1;
        v19 = &v15[24 * v18];
        *(v19 + 4) = 0xD000000000000016;
        *(v19 + 5) = 0x8000000222CA9C80;
        v19[48] = 28;
        *(v2 + 16) = v15;
        swift_endAccess();
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v20 = sub_222C9431C();
        __swift_project_value_buffer(v20, qword_280FE2340);

        v21 = sub_222C942FC();
        v22 = sub_222C94A3C();
        sub_222B450E8(v9, v8);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v36 = v24;
          *v23 = 136315394;
          if (qword_27D0247A8 != -1)
          {
            swift_once();
          }

          *(v23 + 4) = sub_222B437C0(qword_27D027CD8, unk_27D027CE0, &v36);
          *(v23 + 12) = 2080;

          sub_222B450E8(v9, v8);
          v25 = sub_222B437C0(v9, v8, &v36);

          *(v23 + 14) = v25;
          _os_log_impl(&dword_222B39000, v21, v22, "%s REJECT - Moved slot wasn't from unqualified slot (from: %s)", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v24, -1, -1);
          MEMORY[0x223DCA8C0](v23, -1, -1);

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v36 = v11;
      v37 = v10;
      v40[0] = v38;
      v40[1] = v39;
      v26 = v13;
      sub_222B98D00(v9, v8);
      sub_222B98D00(v26, v12);
      v35 = v26;
      LOBYTE(v26) = sub_222C87098(v9, v8, &v36, v26, v12, v40);

      if ((v26 & 1) == 0)
      {
        sub_222B450E8(v9, v8);
        sub_222B450E8(v35, v12);
        swift_beginAccess();
        v29 = *(v2 + 16);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v29;
        if ((v30 & 1) == 0)
        {
          v29 = sub_222B4B9DC(0, *(v29 + 2) + 1, 1, v29);
          *(v2 + 16) = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_222B4B9DC((v31 > 1), v32 + 1, 1, v29);
        }

        *(v29 + 2) = v32 + 1;
        v33 = &v29[24 * v32];
        *(v33 + 4) = 0xD000000000000016;
        *(v33 + 5) = 0x8000000222CA9C80;
        v33[48] = 29;
        *(v2 + 16) = v29;
        swift_endAccess();
        goto LABEL_24;
      }

      v27 = *(v7 + 16);
      if (v27)
      {
        v21 = sub_222B8C8D4(*(v7 + 16), 0);
        v34 = sub_222B95AD8(&v36, &v21[4], v27, v7);

        sub_222B504E8();
        if (v34 != v27)
        {
          __break(1u);
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = v35;
      *(a2 + 24) = v12;
      *(a2 + 32) = v21;
      v28 = 1;
      goto LABEL_25;
    }
  }

LABEL_23:
  sub_222B450E8(v9, v8);
LABEL_24:
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v28 = -1;
LABEL_25:
  *(a2 + 56) = v28;
}

uint64_t sub_222C84040(uint64_t result, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < v4)
    {
      v8 = v5;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_38;
      }

      v10 = *(v3 + 24);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = 0;
        v13 = (v6 + 16 * v8);
        v14 = *v13;
        v15 = v13[1];
        v16 = (v10 + 40);
        while (*(v16 - 1) != v14 || *v16 != v15)
        {
          result = sub_222C951FC();
          if (result)
          {
            break;
          }

          ++v12;
          v16 += 2;
          if (v11 == v12)
          {
            goto LABEL_4;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_222B4AB44(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v19 = *(v7 + 16);
        v18 = *(v7 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_222B4AB44((v18 > 1), v19 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v19 + 1;
        *(v7 + 8 * v19 + 32) = v12;
      }

LABEL_4:
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:
  v20 = *(v7 + 16);
  if (!v20)
  {

    v24 = 0;
    return v24 & 1;
  }

  v21 = *(v7 + 32);
  v22 = v20 - 1;
  if (v20 != 1)
  {
    if (v20 >= 5)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v25 = vdupq_n_s64(v21);
      v26 = (v7 + 56);
      v27 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = v25;
      do
      {
        v25 = vbslq_s8(vcgtq_s64(v25, v26[-1]), v25, v26[-1]);
        v28 = vbslq_s8(vcgtq_s64(v28, *v26), v28, *v26);
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      v29 = vbslq_s8(vcgtq_s64(v25, v28), v25, v28);
      v30 = vextq_s8(v29, v29, 8uLL).u64[0];
      v21 = vbsl_s8(vcgtd_s64(v29.i64[0], v30), *v29.i8, v30);
      if (v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v23 = 1;
    }

    v31 = v20 - v23;
    v32 = (v7 + 8 * v23 + 32);
    do
    {
      v34 = *v32++;
      v33 = v34;
      if (v21 <= v34)
      {
        v21 = v33;
      }

      --v31;
    }

    while (v31);
  }

LABEL_33:

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = *(v3 + 24);
  if (*(v35 + 16) >= v21)
  {
    v39[0] = v37;
    v39[1] = v38;
    MEMORY[0x28223BE20](result);
    v36[2] = v39;

    v24 = sub_222B4400C(sub_222B77BA0, v36, v35 + 32, 0, (2 * v21) | 1);

    return v24 & 1;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *ReformulationSpecializationClassifier.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ReformulationSpecializationClassifier.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_222C848A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_222C8492C(v3);
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

uint64_t _s28SiriPrivateLearningInference16FollowUpTurnTypeO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  *v15 = a1[2];
  v3 = *v15;
  v4 = a2[1];
  v16 = *a2;
  v17 = v4;
  v6 = *a2;
  v5 = a2[1];
  *v18 = a2[2];
  *&v18[9] = *(a2 + 41);
  *&v15[9] = *(a1 + 41);
  v19[0] = v13;
  v19[1] = v2;
  v20[0] = v3;
  *(v20 + 9) = *&v15[9];
  v20[2] = v6;
  v20[3] = v5;
  v21[0] = a2[2];
  *(v21 + 9) = *(a2 + 41);
  v7 = v2;
  if (!v15[24])
  {
    if (!v18[24] && (v13 == v16 || (sub_222C951FC() & 1) != 0))
    {
      v8 = v7;
      v9 = v17;
      goto LABEL_21;
    }

LABEL_22:
    sub_222C87468(&v16, v12);
    sub_222C87468(&v13, v12);
    v10 = 0;
    goto LABEL_23;
  }

  if (v15[24] != 1)
  {
    if (v18[24] == 2 && (v13 == v16 || (sub_222C951FC() & 1) != 0) && (__PAIR128__(*(&v14 + 1), v7) == v17 || (sub_222C951FC() & 1) != 0) && (*v15 == *v18 || (sub_222C951FC() & 1) != 0))
    {
      v8 = *&v15[16];
      v9 = *&v18[16];
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v18[24] != 1 || v13 != v16 && (sub_222C951FC() & 1) == 0 || __PAIR128__(*(&v14 + 1), v7) != v17 && (sub_222C951FC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *v15;
  v9 = *v18;
LABEL_21:
  v10 = sub_222BBC5A4(v8, v9);
  sub_222C87468(&v16, v12);
  sub_222C87468(&v13, v12);
LABEL_23:
  sub_222B4FCD4(v19, &qword_27D027CF8, qword_222CA7120);
  return v10 & 1;
}

uint64_t sub_222C84BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027090, &qword_222CA1FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222C84C6C(uint64_t a1)
{
  result = sub_222C84C94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222C84C94()
{
  result = qword_27D027CF0;
  if (!qword_27D027CF0)
  {
    type metadata accessor for SlotBasedTurnComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027CF0);
  }

  return result;
}

uint64_t sub_222C84D18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222C84D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_222C853B8(char **a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v21 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v21 = sub_222C8492C(v21);
  }

  v18 = v5;
  *v5 = v21;
  v7 = (v21 + 16);
  v8 = *(v21 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v18 = v21;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v21[16 * v8];
      v5 = *v11;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      v23 = (v9 + 32 * *v11);
      __src = (v9 + 32 * *v12);
      v14 = v9 + 32 * v13;

      sub_222C84EA4(v23, __src, v14, a2);
      v4 = v10;

      if (v10)
      {
        *v18 = v21;

        return 1;
      }

      if (v13 < v5)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v15 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v11 = v5;
      *(v11 + 1) = v13;
      v16 = v15 - v8;
      if (v15 < v8)
      {
        goto LABEL_14;
      }

      v8 = v15 - 1;
      memmove(v12, v12 + 2, 16 * v16);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v21;
    __break(1u);
  }

  return result;
}

uint64_t sub_222C867B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a3 == a2)
  {
    return result;
  }

  v8 = a8;
  v9 = a7;
  v10 = result;
  v11 = *a4;
  if ((a8 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a8) & 0xF;
  }

  else
  {
    v12 = a7 & 0xFFFFFFFFFFFFLL;
  }

  v68 = *a4;
  v67 = result;
  v73 = v12;
LABEL_8:
  v13 = (v11 + 32 * a3);
  v15 = v13[1];
  v14 = v13[2];
  v16 = v13[3];
  v70 = a3;
  while (1)
  {
    v76 = a3 - 1;
    v77 = a3;
    v17 = v11 + 32 * (a3 - 1);
    v78 = *(v17 + 16);
    v79 = *(v17 + 8);
    v18 = *(v17 + 24);
    if (v16)
    {
      if (v8)
      {
        v19 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v19 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v19 && v12)
        {
          break;
        }
      }
    }

    v22 = *(v17 + 24);

    v20 = 0.0;
    v21 = v78;
    if (!v18)
    {
      goto LABEL_54;
    }

LABEL_21:
    if (!v8)
    {
      goto LABEL_54;
    }

LABEL_22:
    v23 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23 || !v12)
    {
      goto LABEL_54;
    }

    v24 = v10;
    v25 = v9;
    if (v21 == v9 && v18 == v8 || (v75 = v18, (sub_222C951FC() & 1) != 0))
    {

      v26 = v77;
      v10 = v24;
      v12 = v73;
      if (v20 <= 1.0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v38 = sub_222C9453C();
      result = sub_222C9453C();
      if (__OFADD__(v38, result))
      {
        goto LABEL_70;
      }

      v72 = v38 + result;
      v39 = String.commonSequences(between:)(v9, v8, v78, v18);
      v40 = *(v39 + 16);
      if (v40)
      {
        v81 = MEMORY[0x277D84F90];
        sub_222B4C7F8(0, v40, 0);
        v41 = v81;
        v42 = (v39 + 40);
        do
        {
          v43 = *(v42 - 1);
          v44 = *v42;

          v45 = sub_222C9453C();

          v47 = *(v81 + 16);
          v46 = *(v81 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_222B4C7F8((v46 > 1), v47 + 1, 1);
          }

          *(v81 + 16) = v47 + 1;
          *(v81 + 8 * v47 + 32) = v45;
          v42 += 2;
          --v40;
        }

        while (v40);

        v11 = v68;
        v8 = a8;
        v9 = a7;
      }

      else
      {

        v41 = MEMORY[0x277D84F90];
        v9 = v25;
      }

      v12 = v73;
      result = v75;
      v59 = *(v41 + 16);
      v10 = v67;
      if (v59)
      {
        v60 = v9;
        v61 = 0;
        v62 = 32;
        while (1)
        {
          v63 = *(v41 + v62);
          v53 = __OFADD__(v61, v63);
          v61 += v63;
          if (v53)
          {
            goto LABEL_68;
          }

          v62 += 8;
          if (!--v59)
          {

            v64 = v61;
            v9 = v60;
            v12 = v73;
            goto LABEL_65;
          }
        }
      }

      v64 = 0.0;
LABEL_65:

      v26 = v77;
      if (2.0 / v72 * v64 >= v20)
      {
LABEL_7:
        a3 = v70 + 1;
        if (v70 + 1 == a2)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

LABEL_55:
    if (!v11)
    {
      goto LABEL_71;
    }

    v55 = (v11 + 32 * v26);
    v56 = *v55;
    v57 = v55[1];
    v14 = v55[2];
    v16 = v55[3];
    v58 = *(v17 + 16);
    *v55 = *v17;
    *(v55 + 1) = v58;
    *v17 = v56;
    *(v17 + 8) = v57;
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    a3 = v76;
    if (v76 == v10)
    {
      goto LABEL_7;
    }
  }

  if (v14 == v9 && v16 == v8 || (v74 = *(v17 + 24), v18 = v74, (sub_222C951FC() & 1) != 0))
  {

    v20 = 1.0;
    v21 = v78;
    if (!v18)
    {
      goto LABEL_54;
    }

    goto LABEL_22;
  }

  v27 = v9;
  v28 = sub_222C9453C();
  result = sub_222C9453C();
  if (__OFADD__(v28, result))
  {
    goto LABEL_69;
  }

  v71 = v28 + result;
  v29 = String.commonSequences(between:)(v27, v8, v14, v16);
  v30 = *(v29 + 16);
  if (v30)
  {
    v80 = MEMORY[0x277D84F90];
    sub_222B4C7F8(0, v30, 0);
    v31 = v80;
    v32 = (v29 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;

      v35 = sub_222C9453C();

      v37 = *(v80 + 16);
      v36 = *(v80 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_222B4C7F8((v36 > 1), v37 + 1, 1);
      }

      *(v80 + 16) = v37 + 1;
      *(v80 + 8 * v37 + 32) = v35;
      v32 += 2;
      --v30;
    }

    while (v30);

    v9 = a7;
    v10 = v67;
  }

  else
  {
    v9 = v27;

    v31 = MEMORY[0x277D84F90];
  }

  v48 = *(v31 + 16);
  v11 = v68;
  if (!v48)
  {

    v54 = 0.0;
    v8 = a8;
LABEL_53:
    v12 = v73;
    v20 = 2.0 / v71 * v54;
    v18 = v74;
    v21 = v78;
    if (!v74)
    {
LABEL_54:

      v26 = v77;
      if (v20 <= 0.0)
      {
        goto LABEL_7;
      }

      goto LABEL_55;
    }

    goto LABEL_21;
  }

  v49 = v9;
  v50 = 0;
  v51 = 32;
  v8 = a8;
  while (1)
  {
    v52 = *(v31 + v51);
    v53 = __OFADD__(v50, v52);
    v50 += v52;
    if (v53)
    {
      break;
    }

    v51 += 8;
    if (!--v48)
    {

      v54 = v50;
      v9 = v49;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_222C86DD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  result = sub_222C9514C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C08, &qword_222C969E0);
        v14 = sub_222C9478C();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;

      (sub_222C855B0)(v15, v16, a1, v12, a2, a3, a4, a5);

      *(v14 + 16) = 0;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {

    sub_222C867B0(0, v10, 1, a1, a2, a3, a4, a5);
  }

  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_222C86FA4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_222C8488C(v10);
  }

  v11 = v10[2];
  v13[0] = (v10 + 4);
  v13[1] = v11;

  sub_222C86DD0(v13, a2, a3, a4, a5);

  *a1 = v10;
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t PimsSuggestionMetadata.pimsId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PimsSuggestionMetadata.locality.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PimsSuggestionMetadata();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for PimsSuggestionMetadata()
{
  result = qword_27D027DC0;
  if (!qword_27D027DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PimsSuggestionMetadata.serverTreatment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PimsSuggestionMetadata();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PimsSuggestionMetadata.clientTreatment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PimsSuggestionMetadata();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t PimsSuggestionMetadata.init(pimsId:locality:serverTreatment:clientTreatment:suggestionSurfaced:noveltyState:redundancyState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  v16 = sub_222C9367C();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for PimsSuggestionMetadata();
  *(a8 + v17[5]) = v13;
  *(a8 + v17[6]) = v14;
  *(a8 + v17[7]) = v15;
  sub_222B723A4(a5, a8 + v17[8], &qword_27D027D00, &qword_222CA7170);
  sub_222B723A4(a6, a8 + v17[9], &qword_27D027D08, &qword_222CA7178);
  return sub_222B723A4(a7, a8 + v17[10], &qword_27D027D10, &qword_222CA7180);
}

uint64_t sub_222C87818(uint64_t a1)
{
  v2 = sub_222C87EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C87854(uint64_t a1)
{
  v2 = sub_222C87EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C87890()
{
  v1 = 0x7972617262696CLL;
  if (*v0 != 1)
  {
    v1 = 0x7261506472696874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t sub_222C878F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C88F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C87918(uint64_t a1)
{
  v2 = sub_222C87DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C87954(uint64_t a1)
{
  v2 = sub_222C87DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C87990(uint64_t a1)
{
  v2 = sub_222C87EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C879CC(uint64_t a1)
{
  v2 = sub_222C87EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C87A08(uint64_t a1)
{
  v2 = sub_222C87E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C87A44(uint64_t a1)
{
  v2 = sub_222C87E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PimsLocality.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D18, &qword_222CA7188);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D20, &qword_222CA7190);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D28, &qword_222CA7198);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D30, &qword_222CA71A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C87DF8();
  sub_222C9536C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_222C87EA0();
      v12 = v26;
      sub_222C950BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_222C87E4C();
      v12 = v29;
      sub_222C950BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_222C87EF4();
    sub_222C950BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_222C87DF8()
{
  result = qword_27D027D38;
  if (!qword_27D027D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D38);
  }

  return result;
}

unint64_t sub_222C87E4C()
{
  result = qword_27D027D40;
  if (!qword_27D027D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D40);
  }

  return result;
}

unint64_t sub_222C87EA0()
{
  result = qword_27D027D48;
  if (!qword_27D027D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D48);
  }

  return result;
}

unint64_t sub_222C87EF4()
{
  result = qword_27D027D50;
  if (!qword_27D027D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D50);
  }

  return result;
}

uint64_t PimsLocality.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D58, &qword_222CA71A8);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D60, &qword_222CA71B0);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D68, &qword_222CA71B8);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D70, &unk_222CA71C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_222C87DF8();
  v20 = v43;
  sub_222C9535C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_222C9508C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_222B572CC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_222C94DBC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v30 = &type metadata for PimsLocality;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_222C87EA0();
          sub_222C94FFC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_222C87E4C();
          v33 = v22;
          sub_222C94FFC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_222C87EF4();
        sub_222C94FFC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

unint64_t sub_222C88554()
{
  result = qword_27D027D78;
  if (!qword_27D027D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D78);
  }

  return result;
}

unint64_t sub_222C885DC()
{
  result = qword_27D027D90;
  if (!qword_27D027D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D90);
  }

  return result;
}

unint64_t sub_222C88664()
{
  result = qword_27D027DA8;
  if (!qword_27D027DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027DA8);
  }

  return result;
}

void sub_222C88720()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C888A0(319, &qword_27D0259B0);
    if (v1 <= 0x3F)
    {
      sub_222C888A0(319, &qword_27D027DD0);
      if (v2 <= 0x3F)
      {
        sub_222C888A0(319, &qword_27D027DD8);
        if (v3 <= 0x3F)
        {
          sub_222C888EC(319, &qword_27D027DE0, MEMORY[0x277D5FC80]);
          if (v4 <= 0x3F)
          {
            sub_222C888EC(319, &qword_27D027DE8, MEMORY[0x277D5FC60]);
            if (v5 <= 0x3F)
            {
              sub_222C888EC(319, &qword_27D027DF0, MEMORY[0x277D5FCB0]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_222C888A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_222C94B5C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_222C888EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_222C94B5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PimsServerTreatment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PimsServerTreatment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PimsClientTreatment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PimsClientTreatment(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222C88C34()
{
  result = qword_27D027DF8;
  if (!qword_27D027DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027DF8);
  }

  return result;
}

unint64_t sub_222C88C8C()
{
  result = qword_27D027E00;
  if (!qword_27D027E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E00);
  }

  return result;
}

unint64_t sub_222C88CE4()
{
  result = qword_27D027E08;
  if (!qword_27D027E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E08);
  }

  return result;
}

unint64_t sub_222C88D3C()
{
  result = qword_27D027E10;
  if (!qword_27D027E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E10);
  }

  return result;
}

unint64_t sub_222C88D94()
{
  result = qword_27D027E18;
  if (!qword_27D027E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E18);
  }

  return result;
}

unint64_t sub_222C88DEC()
{
  result = qword_27D027E20;
  if (!qword_27D027E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E20);
  }

  return result;
}

unint64_t sub_222C88E44()
{
  result = qword_27D027E28;
  if (!qword_27D027E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E28);
  }

  return result;
}

unint64_t sub_222C88E9C()
{
  result = qword_27D027E30;
  if (!qword_27D027E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E30);
  }

  return result;
}

unint64_t sub_222C88EF4()
{
  result = qword_27D027E38;
  if (!qword_27D027E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E38);
  }

  return result;
}

uint64_t sub_222C88F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F6C61746163 && a2 == 0xE700000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t NowPlayingFeatures.MediaType.__allocating_init(value:)(__int128 *a1)
{
  return sub_222C8936C(a1, MEMORY[0x277D5FB90]);
}

{
  return sub_222C8936C(a1, MEMORY[0x277D5FB88]);
}

uint64_t _s28SiriPrivateLearningInference18NowPlayingFeaturesO13PlaybackStateC5valueAeA0efhI0O_tcfC_0(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  return sub_222C93EEC();
}

uint64_t NowPlayingFeatures.PlaybackState.init(value:)(char *a1)
{
  v2 = *a1;
  return sub_222C93EEC();
}

{
  v2 = *a1;
  return sub_222C93EDC();
}

uint64_t NowPlayingFeatures.PlaybackState.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C89200(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C89270(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t NowPlayingFeatures.MediaType.init(value:)(__int128 *a1)
{
  v2 = *a1;
  return sub_222C93EEC();
}

{
  v2 = *a1;
  return sub_222C93EDC();
}

uint64_t sub_222C8936C(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v8 = *a1;
  return a2(&v8);
}

uint64_t NowPlayingFeatures.ITunesStoreIdentifier.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t NowPlayingFeatures.TotalPlayLength.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222C8951C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C8958C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t _s28SiriPrivateLearningInference18NowPlayingFeaturesO13PlaybackStateC5valueAESgAA0efhI0OSg_tcfC_0(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v6 = *a1;
  return sub_222C93EDC();
}

uint64_t _s28SiriPrivateLearningInference19NowPlayingMediaTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (!v5)
      {
        sub_222B831E4(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v3 == 1)
    {
      if (v5 == 1)
      {
        v8 = 1;
        sub_222B831E4(*a1, 1uLL);
        sub_222B831E4(v4, 1uLL);
        return v8;
      }

LABEL_18:
      sub_222B831C0(*a2, *(a2 + 8));
      sub_222B831C0(v2, v3);
      sub_222B831E4(v2, v3);
      sub_222B831E4(v4, v5);
      return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        if (v5 == 2)
        {
          sub_222B831E4(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 3:
        if (v5 == 3)
        {
          sub_222B831E4(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 4:
        if (v5 == 4)
        {
          sub_222B831E4(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
LABEL_22:
          sub_222B831E4(v6, v7);
          return 1;
        }

        goto LABEL_18;
    }
  }

  if (v5 < 5)
  {
    goto LABEL_18;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_222B831C0(*a1, v3);
    sub_222B831C0(v2, v3);
    sub_222B831E4(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_22;
  }

  v10 = *a1;
  v11 = sub_222C951FC();
  sub_222B831C0(v4, v5);
  sub_222B831C0(v2, v3);
  sub_222B831E4(v2, v3);
  sub_222B831E4(v4, v5);
  return v11 & 1;
}

unint64_t sub_222C89850()
{
  result = qword_27D027E40;
  if (!qword_27D027E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E40);
  }

  return result;
}

unint64_t sub_222C898A8()
{
  result = qword_27D027E48;
  if (!qword_27D027E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference19NowPlayingMediaTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222C89B3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C89B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

Swift::Bool __swiftcall FeaturisedTurn.containsTaskInDomain(_:)(Swift::String a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = sub_222B41648(*(v1 + *(v2 + 24)));
  if (v3)
  {
    v4 = v3;
    v5 = (v3 + 40);
    v6 = -*(v3 + 16);
    v7 = -1;
    while (1)
    {
      v8 = v6 + v7 != -1;
      if (v6 + v7 == -1)
      {
LABEL_6:

        goto LABEL_8;
      }

      if (++v7 >= *(v4 + 16))
      {
        break;
      }

      v9 = v5 + 2;
      v11 = *(v5 - 1);
      v10 = *v5;

      LOBYTE(v11) = sub_222B42DF0();

      v5 = v9;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_8:
    LOBYTE(v3) = v8;
  }

  return v3;
}

uint64_t FeaturisedTurn.getPlusId()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  sub_222B42000(*(v1 + *(v4 + 32)), &v25 - v10);
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_222B86DA0(v11);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    sub_222B78534(v1, v7);
    v15 = sub_222C942FC();
    v16 = sub_222C94A4C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v19 = sub_222C9360C();
      v21 = v20;
      sub_222B73DD0(v7);
      v22 = sub_222B437C0(v19, v21, &v26);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_222B39000, v15, v16, "Missing Plus ID for turn=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x223DCA8C0](v18, -1, -1);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    else
    {

      sub_222B73DD0(v7);
    }

    v23 = 1;
  }

  else
  {
    (*(v13 + 32))(a1, v11, v12);
    v23 = 0;
  }

  return (*(v13 + 56))(a1, v23, 1, v12);
}

uint64_t FeaturisedTurn.firstEventOf(type:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = type metadata accessor for FeaturisedTurn(0);
  v22 = *(v2 + *(result + 28));
  v21 = *(v22 + 16);
  if (v21)
  {
    v5 = 0;
    v6 = (v22 + 64);
    while (v5 < *(v22 + 16))
    {
      if (v3 > 1)
      {
        v8 = "INSendMessageIntent";
        if (v3 != 2)
        {
          v8 = "INPlayMediaIntent";
        }

        v7 = 0xD000000000000011;
      }

      else
      {
        v7 = 0xD000000000000011;
        v8 = "nerationTriggered";
        if (v3)
        {
          v7 = 0xD000000000000013;
          v8 = "INStartCallIntent";
        }
      }

      v10 = *(v6 - 4);
      v9 = *(v6 - 3);
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      v13 = *v6;
      v14 = v8 | 0x8000000000000000;
      if (v12 == v7 && v14 == v13)
      {
        v19 = *(v6 - 3);

LABEL_19:
        *a2 = v10;
        a2[1] = v9;
        a2[2] = v11;
        a2[3] = v12;
        a2[4] = v14;
        return result;
      }

      v16 = *(v6 - 1);
      v17 = *v6;
      v18 = sub_222C951FC();

      if (v18)
      {
        v14 = v13;
        goto LABEL_19;
      }

      ++v5;

      v6 += 5;
      if (v21 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t sub_222C8A24C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v51 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v5 = *(*(v56 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v56);
  v50 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v46 - v15);
  result = MEMORY[0x28223BE20](v14);
  v21 = (&v46 - v19);
  v22 = *(a3 + 16);
  if (v22)
  {
    v23 = *(v56 + 48);
    v24 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v54 = *(v18 + 72);
    v55 = v23;
    *&v20 = 136315650;
    v46 = v20;
    v48 = v13;
    v49 = a2;
    v47 = &v46 - v19;
    do
    {
      sub_222C1F2E0(v24, v21);
      v41 = v21[1];
      v42 = *(v56 + 48);
      *v16 = *v21;
      v16[1] = v41;
      sub_222B73D68(v21 + v55, v16 + v42, type metadata accessor for RuleResult);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v43 = sub_222C9431C();
      __swift_project_value_buffer(v43, qword_280FE2340);
      sub_222C1F2E0(v16, v13);
      sub_222C1F2E0(v16, v10);

      v44 = sub_222C942FC();
      v45 = sub_222C94A3C();

      if (os_log_type_enabled(v44, v45))
      {
        v25 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57 = v53;
        *v25 = v46;
        *(v25 + 4) = sub_222B437C0(v51, a2, &v57);
        *(v25 + 12) = 2080;
        v26 = v13;
        v27 = v10;
        v28 = v50;
        sub_222C8B4B8(v26, v50);
        v29 = *v28;
        v30 = v28[1];
        v52 = v45;
        v31 = v56;
        sub_222C8B528(v28 + *(v56 + 48), type metadata accessor for RuleResult);
        v32 = sub_222B437C0(v29, v30, &v57);

        *(v25 + 14) = v32;
        *(v25 + 22) = 2080;
        sub_222C1F2E0(v27, v28);
        v33 = v28[1];

        v34 = *(v31 + 48);
        type metadata accessor for RuleResult();
        v10 = v27;
        v13 = v48;
        v35 = sub_222C944EC();
        v37 = v36;
        sub_222B4FCD4(v10, &qword_27D024CC8, &unk_222C96AA0);
        v38 = sub_222B437C0(v35, v37, &v57);

        *(v25 + 24) = v38;
        a2 = v49;
        _os_log_impl(&dword_222B39000, v44, v52, "%s%s: %s", v25, 0x20u);
        v39 = v53;
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v39, -1, -1);
        v40 = v25;
        v21 = v47;
        MEMORY[0x223DCA8C0](v40, -1, -1);
      }

      else
      {

        sub_222B4FCD4(v10, &qword_27D024CC8, &unk_222C96AA0);
        sub_222B4FCD4(v13, &qword_27D024CC8, &unk_222C96AA0);
      }

      result = sub_222B4FCD4(v16, &qword_27D024CC8, &unk_222C96AA0);
      v24 += v54;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_222C8A6B4()
{
  type metadata accessor for PhoneCallAbandonmentClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027EF0, &qword_222CA7B98);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDD3A8 = 91;
  *algn_280FDD3B0 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C8A740(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222CA7B20;
  v25 = v11;
  v12 = (v11 + v10);
  v13 = *(v8 + 48);
  *v12 = 0xD00000000000001CLL;
  v12[1] = 0x8000000222CAAC90;
  swift_storeEnumTagMultiPayload();
  v14 = (v12 + v9);
  *v14 = 0xD00000000000001FLL;
  v14[1] = 0x8000000222CAE4B0;
  isSiriPhoneCall(_:)(a1);
  swift_storeEnumTagMultiPayload();
  sub_222B73D68(v7, v12 + v9 + *(v8 + 48), type metadata accessor for RuleResult);
  v15 = (v12 + 2 * v9);
  v16 = *(v8 + 48);
  *v15 = 0xD00000000000001CLL;
  v15[1] = 0x8000000222CA9B40;
  sub_222C432CC(a1, (v15 + v16));
  v17 = (v12 + 3 * v9);
  v18 = *(v8 + 48);
  *v17 = 0xD00000000000001CLL;
  v17[1] = 0x8000000222CAE4D0;
  sub_222C8AA44(a1, v17 + v18);
  v19 = (v12 + 4 * v9);
  *v19 = 0xD000000000000011;
  v19[1] = 0x8000000222CAC6E0;
  v20 = type metadata accessor for FeaturisedTurn(0);
  v21 = sub_222B41B30(*(a1 + *(v20 + 24)));
  if (v21)
  {
    if (v21 >> 62)
    {
      sub_222C94C6C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v23 = v26;
  swift_storeEnumTagMultiPayload();
  sub_222B73D68(v23, v19 + *(v8 + 48), type metadata accessor for RuleResult);
  return v25;
}

uint64_t sub_222C8AA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = type metadata accessor for RuleResult();
  v3 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FeaturisedTurn(0);
  v6 = *(a1 + *(result + 28));
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_12:

    return swift_storeEnumTagMultiPayload();
  }

  v8 = 0;
  v9 = (v6 + 64);
  while (1)
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v13 = *(v9 - 1);
    v12 = *v9;

    v14 = sub_222B41F28(v11);
    if (v15)
    {
      goto LABEL_4;
    }

    if (v13 != 0xD000000000000011 || 0x8000000222CA8780 != v12)
    {
      break;
    }

    if (v14 == 1)
    {
      goto LABEL_11;
    }

LABEL_4:
    ++v8;

    v9 += 5;
    if (v7 == v8)
    {
      goto LABEL_12;
    }
  }

  v16 = v14;
  if ((sub_222C951FC() & 1) == 0 || v16 != 1)
  {
    goto LABEL_4;
  }

LABEL_11:

  v18 = sub_222B41CFC(v17);

  swift_bridgeObjectRelease_n();

  if (v18 == 2)
  {
    goto LABEL_12;
  }

  v19 = v21;
  swift_storeEnumTagMultiPayload();
  return sub_222B73D68(v19, v23, type metadata accessor for RuleResult);
}

unint64_t sub_222C8ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  sub_222C434E4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_222B4FCD4(v5, &qword_27D0253C8, &unk_222C98400);
    if (*(a1 + 16))
    {
LABEL_3:
      v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15 = sub_222C9360C();
      v17 = v16;
LABEL_7:
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v21 = sub_222C9431C();
      __swift_project_value_buffer(v21, qword_280FE2340);

      v22 = sub_222C942FC();
      v23 = sub_222C94A3C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v53 = v25;
        *v24 = 136315394;
        if (qword_280FDD3A0 != -1)
        {
          swift_once();
        }

        *(v24 + 4) = sub_222B437C0(qword_280FDD3A8, *algn_280FDD3B0, &v53);
        *(v24 + 12) = 2080;
        v26 = sub_222B437C0(v15, v17, &v53);

        *(v24 + 14) = v26;
        _os_log_impl(&dword_222B39000, v22, v23, "%s Skipping conversation with id=%s with no dismissal features", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v25, -1, -1);
        MEMORY[0x223DCA8C0](v24, -1, -1);
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }

LABEL_6:
    v17 = 0x8000000222CA9B80;
    v15 = 0xD000000000000014;
    goto LABEL_7;
  }

  sub_222B73D68(v5, v13, type metadata accessor for FeaturisedTurn);
  v18 = *&v13[*(v6 + 24)];
  v19 = sub_222B41494(v18);
  if (v20)
  {
    sub_222C8B528(v13, type metadata accessor for FeaturisedTurn);
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v52 = v19;
  v28 = sub_222C8A740(v13);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v29 = sub_222C9431C();
  __swift_project_value_buffer(v29, qword_280FE2340);
  sub_222B78534(v13, v10);
  v30 = sub_222C942FC();
  v31 = sub_222C94A3C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53 = v33;
    *v32 = 136315394;
    if (qword_280FDD3A0 != -1)
    {
      swift_once();
    }

    *(v32 + 4) = sub_222B437C0(qword_280FDD3A8, *algn_280FDD3B0, &v53);
    *(v32 + 12) = 2080;
    sub_222C9367C();
    sub_222B9E5D0();
    v34 = sub_222C9517C();
    v36 = v35;
    sub_222C8B528(v10, type metadata accessor for FeaturisedTurn);
    v37 = sub_222B437C0(v34, v36, &v53);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_222B39000, v30, v31, "%s Rule Matrix for turnId=%s:", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v33, -1, -1);
    MEMORY[0x223DCA8C0](v32, -1, -1);
  }

  else
  {

    sub_222C8B528(v10, type metadata accessor for FeaturisedTurn);
  }

  sub_222C8A24C(8224, 0xE200000000000000, v28);
  v38 = sub_222C1EC00(v28);

  if (!v38)
  {
    sub_222C8B528(v13, type metadata accessor for FeaturisedTurn);
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v39 = swift_allocObject();
  v51 = xmmword_222C97C40;
  *(v39 + 16) = xmmword_222C97C40;
  result = sub_222B41B30(v18);
  if (!result)
  {
    goto LABEL_34;
  }

  v40 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    goto LABEL_33;
  }

  v42 = result;
  v43 = sub_222C94C6C();
  result = v42;
  if (!v43)
  {
LABEL_33:

LABEL_34:
    v41 = 0;
    goto LABEL_35;
  }

LABEL_27:
  if ((result & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x223DC9B30](0);
    goto LABEL_30;
  }

  if (*(v40 + 16))
  {
    v41 = *(result + 32);

LABEL_30:

LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v44 = sub_222C9367C();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v51;
    (*(v45 + 16))(v48 + v47, v13, v44);
    *(v39 + 56) = &type metadata for PhoneCallAbandonmentClassification;
    *(v39 + 64) = &protocol witness table for PhoneCallAbandonmentClassification;
    v49 = swift_allocObject();
    *(v39 + 32) = v49;
    v49[2] = v52;
    v49[3] = v41;
    v50 = MEMORY[0x277D84F90];
    v49[4] = v48;
    v49[5] = v50;
    sub_222C8B528(v13, type metadata accessor for FeaturisedTurn);
    return v39;
  }

  __break(1u);
  return result;
}

uint64_t sub_222C8B4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C8B528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AsyncCoreDuetEventStreamProcessor.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t sub_222C8B5B0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_222C8B5D0, 0, 0);
}

uint64_t sub_222C8B5D0()
{
  v40 = v0;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = sub_222C9431C();
  __swift_project_value_buffer(v3, qword_280FE2340);

  v4 = sub_222C942FC();
  v5 = sub_222C94A5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_222B437C0(*(v7 + 16), *(v7 + 24), &v39);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v6 + 16);

    _os_log_impl(&dword_222B39000, v4, v5, "%s Processing %ld events", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x223DCA8C0](v9, -1, -1);
    MEMORY[0x223DCA8C0](v8, -1, -1);
  }

  else
  {
    v10 = v0[13];
  }

  v12 = v0[13];
  v11 = v0[14];
  v13 = v11[7];
  v14 = v11[8];
  __swift_project_boxed_opaque_existential_1(v11 + 4, v13);
  v15 = *(v14 + 8);
  v16 = *(v15 + 24);
  v0[5] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[15] = AssociatedConformanceWitness;
  v0[6] = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v16(v13, v15);
  v18 = MEMORY[0x277D84F90];
  v0[12] = MEMORY[0x277D84F90];
  v19 = *(v12 + 16);
  v0[16] = v19;
  if (v19)
  {
    v20 = v0[13];
    v0[17] = v18;
    v0[18] = 0;
    v37 = v0[15];
    v21 = v20[5];
    v0[19] = v21;
    v22 = v20[6];
    v0[20] = v22;
    v23 = v20[8];
    v0[21] = v23;
    v24 = v20[7];
    v0[7] = v20[4];
    v0[8] = v21;
    v0[9] = v22;
    v0[10] = v24;
    v0[11] = v23;
    v25 = v0[5];
    v26 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v25);
    v27 = *(v37 + 24);

    v36 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[22] = v29;
    *v29 = v0;
    v29[1] = sub_222C8BA60;

    return v36(v0 + 7, v25, v26);
  }

  else
  {
    v0[25] = v18;
    v31 = v0[5];
    v32 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v31);
    v33 = *(v32 + 32);
    v38 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    v0[26] = v35;
    *v35 = v0;
    v35[1] = sub_222C8BF3C;

    return v38(v31, v32);
  }
}

uint64_t sub_222C8BA60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v11 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = v3[17];

    v6 = sub_222C8C140;
  }

  else
  {
    v8 = v3[20];
    v7 = v3[21];
    v9 = v3[19];

    v6 = sub_222C8BBA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222C8BBA0()
{
  v1 = v0[23];
  result = v0[17];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[17];
  if (result && (v7 = *(v6 + 24) >> 1, v7 >= v5))
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v12 = v4 + v3;
    }

    else
    {
      v12 = v4;
    }

    result = sub_222B4A35C(result, v12, 1, v0[17]);
    v6 = result;
    v7 = *(result + 24) >> 1;
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 16) >= v3)
      {
        v8 = v0[23];
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 16);
        v10 = __OFADD__(v9, v3);
        v11 = v9 + v3;
        if (!v10)
        {
          *(v6 + 16) = v11;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v13 = v0[23];

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v14 = v0[16];
  v15 = v0[18] + 1;
  v0[12] = v6;
  if (v15 == v14)
  {
    v0[25] = v6;
    v16 = v0[5];
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    v18 = *(v17 + 32);
    v32 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[26] = v20;
    *v20 = v0;
    v20[1] = sub_222C8BF3C;

    return v32(v16, v17);
  }

  else
  {
    v0[17] = v6;
    v0[18] = v15;
    v33 = v0[15];
    v21 = (v0[13] + 40 * v15);
    v22 = v21[5];
    v0[19] = v22;
    v23 = v21[6];
    v0[20] = v23;
    v24 = v21[8];
    v0[21] = v24;
    v25 = v21[7];
    v0[7] = v21[4];
    v0[8] = v22;
    v0[9] = v23;
    v0[10] = v25;
    v0[11] = v24;
    v26 = v0[5];
    v27 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v26);
    v28 = *(v33 + 24);

    v31 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[22] = v30;
    *v30 = v0;
    v30[1] = sub_222C8BA60;

    return (v31)(v0 + 7, v26, v27);
  }
}

uint64_t sub_222C8BF3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = *(v4 + 200);

    v8 = sub_222C8C1C0;
  }

  else
  {
    *(v4 + 224) = a1;
    v8 = sub_222C8C06C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_222C8C06C()
{
  v6 = v0;
  v1 = v0[27];
  sub_222B49224(v0[28]);
  v5 = v0[12];

  sub_222C8C978(&v5);
  if (v1)
  {
  }

  else
  {

    v3 = v5;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_222C8C140()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];

  v4 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_222C8C1C0()
{
  v1 = v0[27];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t EventStreamContext.init(dateRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222C932BC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t EventStreamContext.dateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C932BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_222C8C2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = sub_222C935EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v40 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v39 = &v37 - v22;
  v23 = *(a1 + 16);
  v38 = *(a2 + 16);
  sub_222B41CB8(v23, v13);
  v24 = *(v18 + 48);
  if (v24(v13, 1, v17) == 1)
  {
    sub_222B41CE4(v23);
    if (v25)
    {
      v26 = 1;
    }

    else
    {
      sub_222C935AC();
      v26 = 0;
    }

    v27 = *(v18 + 56);
    v27(v16, v26, 1, v17);
    if (v24(v13, 1, v17) != 1)
    {
      sub_222BA2994(v13);
    }
  }

  else
  {
    (*(v18 + 32))(v16, v13, v17);
    v27 = *(v18 + 56);
    v27(v16, 0, 1, v17);
  }

  v28 = v24(v16, 1, v17);
  v29 = v39;
  if (v28 == 1)
  {
    sub_222C9353C();
    if (v24(v16, 1, v17) != 1)
    {
      sub_222BA2994(v16);
    }
  }

  else
  {
    (*(v18 + 32))(v39, v16, v17);
  }

  v30 = v38;
  sub_222B41CB8(v38, v7);
  if (v24(v7, 1, v17) == 1)
  {
    sub_222B41CE4(v30);
    if (v31)
    {
      v32 = 1;
    }

    else
    {
      sub_222C935AC();
      v32 = 0;
    }

    v27(v10, v32, 1, v17);
    if (v24(v7, 1, v17) != 1)
    {
      sub_222BA2994(v7);
    }
  }

  else
  {
    (*(v18 + 32))(v10, v7, v17);
    v27(v10, 0, 1, v17);
  }

  if (v24(v10, 1, v17) == 1)
  {
    v33 = v40;
    sub_222C9352C();
    if (v24(v10, 1, v17) != 1)
    {
      sub_222BA2994(v10);
    }
  }

  else
  {
    v33 = v40;
    (*(v18 + 32))(v40, v10, v17);
  }

  v34 = sub_222C9357C();
  v35 = *(v18 + 8);
  v35(v33, v17);
  v35(v29, v17);
  return v34 & 1;
}

uint64_t AsyncCoreDuetEventStreamProcessor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_222C8C7E0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222C8C878;

  return sub_222C8B5B0(a1);
}

uint64_t sub_222C8C878(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_222C8C978(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_222C84878(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_222C8CD48(v4);
  *a1 = v2;
}

uint64_t type metadata accessor for EventStreamContext()
{
  result = qword_280FDF678;
  if (!qword_280FDF678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C8CA58()
{
  result = sub_222C932BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of EventStreamProcessing.process(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_222C00D84;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AsyncCoreDuetEventStreamProcessor.process(_:)(uint64_t a1)
{
  v4 = *(*v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222C00E84;

  return v8(a1);
}

void sub_222C8CD48(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_222C9514C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_222C9478C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_222C8D47C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_222C8CE40(0, v2, 1, a1);
  }
}

void sub_222C8CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v17);
  v69 = &v59 - v18;
  v19 = sub_222C935EC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v64 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v79 = &v59 - v24;
  v60 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v78 = (v23 + 32);
    v76 = (v23 + 48);
    v77 = (v23 + 56);
    v65 = (v23 + 8);
    v66 = v16;
    v67 = v13;
    v68 = v25;
    v26 = v25 + 40 * a3 - 40;
    v27 = a1 - a3;
LABEL_5:
    v62 = v26;
    v63 = a3;
    v28 = (v68 + 40 * a3);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[4];
    v61 = v27;
    v32 = v27;
    v33 = v64;
    while (1)
    {
      v34 = *(v26 + 8);
      v80 = *(v26 + 16);
      v35 = *(v26 + 32);
      v74 = v29;

      v73 = v34;

      v72 = v35;

      sub_222B41CB8(v30, v16);
      v36 = *v76;
      v37 = (*v76)(v16, 1, v19);
      v75 = v32;
      if (v37 == 1)
      {
        sub_222B41CE4(v30);
        if (v38)
        {
          v39 = 1;
          v40 = v69;
        }

        else
        {
          v40 = v69;
          sub_222C935AC();
          v39 = 0;
        }

        v71 = *v77;
        v71(v40, v39, 1, v19);
        if (v36(v16, 1, v19) != 1)
        {
          sub_222BA2994(v16);
        }

        v41 = v69;
        v42 = v64;
      }

      else
      {
        v41 = v69;
        (*v78)();
        v71 = *v77;
        v71(v41, 0, 1, v19);
        v42 = v33;
      }

      if (v36(v41, 1, v19) == 1)
      {
        sub_222C9353C();
        if (v36(v41, 1, v19) != 1)
        {
          sub_222BA2994(v41);
        }
      }

      else
      {
        (*v78)(v79, v41, v19);
      }

      v43 = v70;
      v44 = v80;
      sub_222B41CB8(v80, v70);
      if (v36(v43, 1, v19) == 1)
      {
        sub_222B41CE4(v44);
        if (v45)
        {
          v46 = 1;
          v47 = v67;
        }

        else
        {
          v47 = v67;
          sub_222C935AC();
          v46 = 0;
        }

        v71(v47, v46, 1, v19);
        v48 = v70;
        if (v36(v70, 1, v19) != 1)
        {
          sub_222BA2994(v48);
        }
      }

      else
      {
        v47 = v67;
        (*v78)();
        v71(v47, 0, 1, v19);
      }

      if (v36(v47, 1, v19) == 1)
      {
        sub_222C9352C();
        if (v36(v47, 1, v19) != 1)
        {
          sub_222BA2994(v47);
        }
      }

      else
      {
        (*v78)(v42, v47, v19);
      }

      v49 = v79;
      v50 = sub_222C9357C();
      v51 = *v65;
      v33 = v42;
      (*v65)();
      (v51)(v49, v19);

      v16 = v66;
      v52 = v75;
      if ((v50 & 1) == 0)
      {
LABEL_4:
        a3 = v63 + 1;
        v26 = v62 + 40;
        v27 = v61 - 1;
        if (v63 + 1 == v60)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v68)
      {
        break;
      }

      v29 = *(v26 + 48);
      v30 = *(v26 + 56);
      v53 = *(v26 + 16);
      v55 = *(v26 + 32);
      v54 = *(v26 + 40);
      *(v26 + 40) = *v26;
      v56 = *(v26 + 64);
      v57 = *(v26 + 72);
      *(v26 + 56) = v53;
      *(v26 + 72) = v55;
      *v26 = v54;
      *(v26 + 8) = v29;
      *(v26 + 16) = v30;
      *(v26 + 24) = v56;
      *(v26 + 32) = v57;
      v26 -= 40;
      v58 = __CFADD__(v52, 1);
      v32 = v52 + 1;
      if (v58)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_222C8D47C(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v198 = a4;
  v199 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v194 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v194 - v15;
  MEMORY[0x28223BE20](v17);
  v216 = &v194 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v194 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v194 - v23;
  MEMORY[0x28223BE20](v25);
  v208 = &v194 - v26;
  MEMORY[0x28223BE20](v27);
  v207 = &v194 - v28;
  v224 = sub_222C935EC();
  v29 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v212 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v221 = &v194 - v32;
  MEMORY[0x28223BE20](v33);
  v205 = &v194 - v34;
  MEMORY[0x28223BE20](v35);
  v209 = &v194 - v37;
  v38 = a3[1];
  if (v38 < 1)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_141:
    v10 = *v199;
    if (!*v199)
    {
      goto LABEL_181;
    }

    v13 = v40;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v189 = v13;
    }

    else
    {
LABEL_175:
      v189 = sub_222C8492C(v13);
    }

    v233 = v189;
    v13 = *(v189 + 2);
    if (v13 >= 2)
    {
      while (*a3)
      {
        v190 = *&v189[16 * v13];
        v191 = v189;
        v192 = *&v189[16 * v13 + 24];
        sub_222C8E728((*a3 + 40 * v190), (*a3 + 40 * *&v189[16 * v13 + 16]), (*a3 + 40 * v192), v10);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v192 < v190)
        {
          goto LABEL_168;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v191 = sub_222C8492C(v191);
        }

        if (v13 - 2 >= *(v191 + 2))
        {
          goto LABEL_169;
        }

        v193 = &v191[16 * v13];
        *v193 = v190;
        *(v193 + 1) = v192;
        v233 = v191;
        sub_222C848A0(v13 - 1);
        v189 = v233;
        v13 = *(v233 + 2);
        if (v13 <= 1)
        {
          goto LABEL_152;
        }
      }

      goto LABEL_179;
    }

    goto LABEL_152;
  }

  v39 = (v36 + 48);
  v222 = (v36 + 56);
  v223 = (v36 + 32);
  v215 = (v36 + 8);
  v40 = MEMORY[0x277D84F90];
  v195 = a3;
  v217 = v10;
  v41 = 0;
  v211 = v13;
  v213 = v16;
  v206 = v21;
  v204 = v24;
  v226 = v39;
  while (1)
  {
    v42 = v41;
    v43 = v41 + 1;
    v200 = v42;
    if (v43 < v38)
    {
      v210 = v38;
      v197 = v40;
      v44 = *a3;
      v45 = (*a3 + 40 * v43);
      v46 = v45[1];
      v48 = v45[2];
      v47 = v45[3];
      v49 = v45[4];
      v228 = *v45;
      v229 = v46;
      v230 = v48;
      v231 = v47;
      v232 = v49;
      v50 = (v44 + 40 * v42);
      v51 = v50[1];
      v53 = v50[2];
      v52 = v50[3];
      v54 = v50[4];
      v227[0] = *v50;
      v227[1] = v51;
      v227[2] = v53;
      v227[3] = v52;
      v227[4] = v54;

      LODWORD(v214) = sub_222C8C2F8(&v228, v227);
      if (!v5)
      {
        v196 = 0;

        v10 = v229;
        v13 = v230;

        v55 = v42 + 2;
        v203 = 40 * v42;
        v56 = (v44 + 40 * v42 + 56);
        while (1)
        {
          v59 = v210;
          v60 = v208;
          if (v210 == v55)
          {
            break;
          }

          v61 = v56[4];
          v62 = v56[5];
          v63 = v56[7];
          v64 = *(v56 - 1);
          v13 = *v56;
          v65 = v56[2];

          v218 = v63;

          v219 = v65;

          sub_222B41CB8(v62, v60);
          v66 = *v226;
          v67 = v224;
          v68 = (*v226)(v60, 1, v224);
          v225 = v64;
          v220 = v61;
          if (v68 == 1)
          {
            sub_222B41CE4(v62);
            if (v69)
            {
              v70 = 1;
              v71 = v207;
            }

            else
            {
              v71 = v207;
              sub_222C935AC();
              v70 = 0;
            }

            v73 = *v222;
            v74 = v224;
            (*v222)(v71, v70, 1, v224);
            v75 = v208;
            if (v66(v208, 1, v74) != 1)
            {
              sub_222BA2994(v75);
            }

            v72 = v207;
            v67 = v224;
          }

          else
          {
            v72 = v207;
            (*v223)();
            v73 = *v222;
            (*v222)(v72, 0, 1, v67);
          }

          if (v66(v72, 1, v67) == 1)
          {
            sub_222C9353C();
            if (v66(v72, 1, v67) != 1)
            {
              sub_222BA2994(v72);
            }
          }

          else
          {
            (*v223)(v209, v72, v67);
          }

          v76 = v206;
          sub_222B41CB8(v13, v206);
          if (v66(v76, 1, v67) == 1)
          {
            sub_222B41CE4(v13);
            if (v77)
            {
              v78 = 1;
              v79 = v204;
            }

            else
            {
              v79 = v204;
              sub_222C935AC();
              v78 = 0;
            }

            v67 = v224;
            v73(v79, v78, 1, v224);
            v80 = v206;
            if (v66(v206, 1, v67) != 1)
            {
              sub_222BA2994(v80);
            }
          }

          else
          {
            v79 = v204;
            (*v223)(v204, v76, v67);
            v73(v79, 0, 1, v67);
          }

          v81 = v66(v79, 1, v67);
          v82 = v205;
          if (v81 == 1)
          {
            sub_222C9352C();
            if (v66(v79, 1, v67) != 1)
            {
              sub_222BA2994(v79);
            }
          }

          else
          {
            (*v223)(v205, v79, v67);
          }

          v57 = v209;
          v10 = sub_222C9357C();
          v58 = *v215;
          (*v215)(v82, v67);
          v58(v57, v67);

          ++v55;
          v56 += 5;
          if ((v214 ^ v10))
          {
            v59 = v55 - 1;
            break;
          }
        }

        v5 = v196;
        a3 = v195;
        v84 = v199;
        v83 = v198;
        v40 = v197;
        v39 = v226;
        v16 = v213;
        if (v214)
        {
          v85 = v200;
          if (v59 < v200)
          {
            goto LABEL_174;
          }

          if (v200 < v59)
          {
            v86 = 40 * v59 - 16;
            v87 = v203 + 32;
            v88 = v59;
            do
            {
              if (v85 != --v88)
              {
                v97 = *a3;
                if (!*a3)
                {
                  goto LABEL_178;
                }

                v89 = (v97 + v87);
                v90 = *(v97 + v87 - 32);
                v91 = (v97 + v86);
                v92 = *(v89 - 1);
                v93 = *v89;
                v94 = *(v89 - 3);
                v95 = v91[1];
                v96 = *(v91 - 1);
                *(v89 - 2) = *(v91 - 3);
                *(v89 - 1) = v96;
                *v89 = v95;
                *(v91 - 3) = v90;
                *(v91 - 1) = v94;
                *v91 = v92;
                v91[1] = v93;
              }

              ++v85;
              v86 -= 40;
              v87 += 40;
            }

            while (v85 < v88);
          }
        }

        goto LABEL_43;
      }

LABEL_152:

      return;
    }

    v59 = v43;
    v83 = v198;
    v84 = v199;
LABEL_43:
    v98 = a3[1];
    if (v59 >= v98)
    {
      goto LABEL_53;
    }

    if (__OFSUB__(v59, v200))
    {
      goto LABEL_171;
    }

    if (v59 - v200 >= v83)
    {
LABEL_53:
      v101 = v59;
      goto LABEL_54;
    }

    if (__OFADD__(v200, v83))
    {
      goto LABEL_172;
    }

    if (v200 + v83 >= v98)
    {
      v99 = a3[1];
    }

    else
    {
      v99 = v200 + v83;
    }

    if (v99 < v200)
    {
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v100 = v200;
    if (v59 == v99)
    {
      v101 = v59;
      goto LABEL_55;
    }

    v197 = v40;
    v196 = v5;
    v214 = *a3;
    v151 = v214 + 40 * v59 - 40;
    v152 = v200 - v59;
    v153 = v224;
    v201 = v99;
LABEL_109:
    v210 = v59;
    v154 = (v214 + 40 * v59);
    v10 = v154[1];
    v13 = v154[2];
    v155 = v154[4];
    v202 = v152;
    v156 = v152;
    v203 = v151;
LABEL_110:
    v218 = v156;
    v157 = *(v151 + 8);
    v158 = *(v151 + 16);
    v159 = *(v151 + 32);

    v220 = v157;

    v225 = v158;

    v219 = v159;

    sub_222B41CB8(v13, v16);
    v160 = *v39;
    if ((*v39)(v16, 1, v153) == 1)
    {
      sub_222B41CE4(v13);
      if (v161)
      {
        v162 = 1;
        v163 = v216;
      }

      else
      {
        v163 = v216;
        sub_222C935AC();
        v162 = 0;
      }

      v165 = *v222;
      v166 = v163;
      v167 = v224;
      (*v222)(v166, v162, 1, v224);
      if (v160(v16, 1, v167) != 1)
      {
        sub_222BA2994(v16);
      }

      v164 = v216;
      v153 = v224;
    }

    else
    {
      v164 = v216;
      (*v223)(v216, v16, v153);
      v165 = *v222;
      (*v222)(v164, 0, 1, v153);
    }

    if (v160(v164, 1, v153) == 1)
    {
      sub_222C9353C();
      if (v160(v164, 1, v153) != 1)
      {
        sub_222BA2994(v164);
      }
    }

    else
    {
      (*v223)(v221, v164, v153);
    }

    v168 = v217;
    v169 = v225;
    sub_222B41CB8(v225, v217);
    if (v160(v168, 1, v153) == 1)
    {
      sub_222B41CE4(v169);
      if (v170)
      {
        v171 = 1;
        v172 = v211;
      }

      else
      {
        v172 = v211;
        sub_222C935AC();
        v171 = 0;
      }

      v153 = v224;
      v165(v172, v171, 1, v224);
      if (v160(v217, 1, v153) != 1)
      {
        sub_222BA2994(v217);
      }
    }

    else
    {
      v172 = v211;
      (*v223)();
      v165(v172, 0, 1, v153);
    }

    if (v160(v172, 1, v153) == 1)
    {
      v173 = v212;
      sub_222C9352C();
      v174 = v160(v172, 1, v153);
      v175 = v173;
      v176 = v153;
      if (v174 != 1)
      {
        sub_222BA2994(v172);
      }
    }

    else
    {
      v175 = v212;
      (*v223)(v212, v172, v153);
      v176 = v153;
    }

    v177 = v221;
    v178 = sub_222C9357C();
    v179 = v175;
    v180 = v178;
    v181 = *v215;
    (*v215)(v179, v176);
    v181(v177, v176);

    if (v180)
    {
      break;
    }

    v16 = v213;
    v153 = v224;
    v39 = v226;
LABEL_108:
    v59 = v210 + 1;
    v151 = v203 + 40;
    v152 = v202 - 1;
    v101 = v201;
    if (v210 + 1 != v201)
    {
      goto LABEL_109;
    }

    v5 = v196;
    a3 = v195;
    v84 = v199;
    v40 = v197;
LABEL_54:
    v100 = v200;
LABEL_55:
    if (v101 < v100)
    {
      goto LABEL_170;
    }

    v201 = v101;
    v102 = v40;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v40 = v102;
    }

    else
    {
      v40 = sub_222B4B304(0, *(v102 + 2) + 1, 1, v102);
    }

    v104 = *(v40 + 2);
    v103 = *(v40 + 3);
    v13 = v104 + 1;
    v105 = v201;
    if (v104 >= v103 >> 1)
    {
      v40 = sub_222B4B304((v103 > 1), v104 + 1, 1, v40);
    }

    *(v40 + 2) = v13;
    v106 = &v40[16 * v104];
    *(v106 + 4) = v200;
    *(v106 + 5) = v105;
    v10 = *v84;
    if (!*v84)
    {
      goto LABEL_180;
    }

    if (v104)
    {
      while (2)
      {
        v107 = v13 - 1;
        if (v13 >= 4)
        {
          v112 = &v40[16 * v13 + 32];
          v113 = *(v112 - 64);
          v114 = *(v112 - 56);
          v118 = __OFSUB__(v114, v113);
          v115 = v114 - v113;
          if (v118)
          {
            goto LABEL_157;
          }

          v117 = *(v112 - 48);
          v116 = *(v112 - 40);
          v118 = __OFSUB__(v116, v117);
          v110 = v116 - v117;
          v111 = v118;
          if (v118)
          {
            goto LABEL_158;
          }

          v119 = &v40[16 * v13];
          v121 = *v119;
          v120 = *(v119 + 1);
          v118 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v118)
          {
            goto LABEL_160;
          }

          v118 = __OFADD__(v110, v122);
          v123 = v110 + v122;
          if (v118)
          {
            goto LABEL_163;
          }

          if (v123 >= v115)
          {
            v141 = &v40[16 * v107 + 32];
            v143 = *v141;
            v142 = *(v141 + 1);
            v118 = __OFSUB__(v142, v143);
            v144 = v142 - v143;
            if (v118)
            {
              goto LABEL_167;
            }

            if (v110 < v144)
            {
              v107 = v13 - 2;
            }
          }

          else
          {
LABEL_75:
            if (v111)
            {
              goto LABEL_159;
            }

            v124 = &v40[16 * v13];
            v126 = *v124;
            v125 = *(v124 + 1);
            v127 = __OFSUB__(v125, v126);
            v128 = v125 - v126;
            v129 = v127;
            if (v127)
            {
              goto LABEL_162;
            }

            v130 = &v40[16 * v107 + 32];
            v132 = *v130;
            v131 = *(v130 + 1);
            v118 = __OFSUB__(v131, v132);
            v133 = v131 - v132;
            if (v118)
            {
              goto LABEL_165;
            }

            if (__OFADD__(v128, v133))
            {
              goto LABEL_166;
            }

            if (v128 + v133 < v110)
            {
              goto LABEL_89;
            }

            if (v110 < v133)
            {
              v107 = v13 - 2;
            }
          }
        }

        else
        {
          if (v13 == 3)
          {
            v108 = *(v40 + 4);
            v109 = *(v40 + 5);
            v118 = __OFSUB__(v109, v108);
            v110 = v109 - v108;
            v111 = v118;
            goto LABEL_75;
          }

          v134 = &v40[16 * v13];
          v136 = *v134;
          v135 = *(v134 + 1);
          v118 = __OFSUB__(v135, v136);
          v128 = v135 - v136;
          v129 = v118;
LABEL_89:
          if (v129)
          {
            goto LABEL_161;
          }

          v137 = &v40[16 * v107];
          v139 = *(v137 + 4);
          v138 = *(v137 + 5);
          v118 = __OFSUB__(v138, v139);
          v140 = v138 - v139;
          if (v118)
          {
            goto LABEL_164;
          }

          if (v140 < v128)
          {
            break;
          }
        }

        v145 = v107 - 1;
        if (v107 - 1 >= v13)
        {
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*a3)
        {
          goto LABEL_177;
        }

        v146 = v16;
        v147 = v40;
        v13 = *&v40[16 * v145 + 32];
        v148 = *&v40[16 * v107 + 40];
        sub_222C8E728((*a3 + 40 * v13), (*a3 + 40 * *&v40[16 * v107 + 32]), (*a3 + 40 * v148), v10);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v148 < v13)
        {
          goto LABEL_155;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v149 = v147;
        }

        else
        {
          v149 = sub_222C8492C(v147);
        }

        if (v145 >= *(v149 + 2))
        {
          goto LABEL_156;
        }

        v16 = v146;
        v150 = &v149[16 * v145];
        *(v150 + 4) = v13;
        *(v150 + 5) = v148;
        v233 = v149;
        sub_222C848A0(v107);
        v40 = v233;
        v13 = *(v233 + 2);
        v39 = v226;
        if (v13 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v38 = a3[1];
    v41 = v201;
    if (v201 >= v38)
    {
      goto LABEL_141;
    }
  }

  v16 = v213;
  v39 = v226;
  v182 = v218;
  if (v214)
  {
    v10 = *(v151 + 48);
    v13 = *(v151 + 56);
    v183 = *(v151 + 16);
    v185 = *(v151 + 32);
    v184 = *(v151 + 40);
    *(v151 + 40) = *v151;
    v186 = *(v151 + 64);
    v187 = *(v151 + 72);
    *(v151 + 56) = v183;
    *(v151 + 72) = v185;
    *v151 = v184;
    *(v151 + 8) = v10;
    *(v151 + 16) = v13;
    *(v151 + 24) = v186;
    *(v151 + 32) = v187;
    v151 -= 40;
    v188 = __CFADD__(v182, 1);
    v156 = v182 + 1;
    v153 = v224;
    if (v188)
    {
      goto LABEL_108;
    }

    goto LABEL_110;
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
}

uint64_t sub_222C8E728(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 < v10)
  {
    v11 = __dst;
    if (__dst != __src || &__src[40 * v8] <= __dst)
    {
      memmove(__dst, __src, 40 * v8);
    }

    v12 = __src;
    v13 = &v11[40 * v8];
    if (v7 < 40)
    {
      v30 = v12;
      goto LABEL_42;
    }

    v14 = v74;
    if (v5 >= v4)
    {
LABEL_16:
      v30 = v12;
      goto LABEL_42;
    }

    while (1)
    {
      v15 = v4;
      v16 = *(v5 + 1);
      v18 = *(v5 + 2);
      v17 = *(v5 + 3);
      v19 = *(v5 + 4);
      v69 = *v5;
      v70 = v16;
      v71 = v18;
      v72 = v17;
      v73 = v19;
      v20 = *(v11 + 1);
      v22 = *(v11 + 2);
      v21 = *(v11 + 3);
      v23 = *(v11 + 4);
      v62 = v12;
      v64 = *v11;
      v65 = v20;
      v66 = v22;
      v67 = v21;
      v68 = v23;

      v24 = sub_222C8C2F8(&v69, &v64);
      if (v14)
      {

        v54 = (v13 - v11) / 40;
        v30 = v62;
        if (v62 < v11)
        {
          goto LABEL_45;
        }

LABEL_43:
        if (v30 >= &v11[40 * v54] || v30 != v11)
        {
LABEL_45:
          v57 = 40 * v54;
          v55 = v11;
LABEL_46:
          memmove(v30, v55, v57);
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v5;
      v27 = v62 == v5;
      v5 += 40;
      v4 = v15;
      if (!v27)
      {
        goto LABEL_13;
      }

LABEL_14:
      v12 = v62 + 40;
      if (v11 >= v13 || v5 >= v4)
      {
        goto LABEL_16;
      }
    }

    v26 = v11;
    v27 = v62 == v11;
    v11 += 40;
    v4 = v15;
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_13:
    v28 = *v26;
    v29 = *(v26 + 1);
    *(v62 + 4) = *(v26 + 4);
    *v62 = v28;
    *(v62 + 1) = v29;
    goto LABEL_14;
  }

  if (__dst != a2 || &a2[40 * v10] <= __dst)
  {
    v31 = __dst;
    memmove(__dst, a2, 40 * v10);
    __dst = v31;
  }

  __srca = __dst;
  v13 = &__dst[40 * v10];
  if (v9 < 40 || v5 <= __src)
  {
    v30 = v5;
    v11 = __dst;
    goto LABEL_42;
  }

LABEL_22:
  v32 = 0;
  v33 = v13;
  v59 = v5 - 40;
  v60 = v4;
  while (1)
  {
    v34 = v33;
    v35 = &v33[v32];
    v36 = &v33[v32 - 40];
    v37 = *&v33[v32 - 32];
    v38 = *&v33[v32 - 24];
    v39 = *&v33[v32 - 16];
    v40 = *(v35 - 1);
    v69 = *v36;
    v70 = v37;
    v71 = v38;
    v72 = v39;
    v73 = v40;
    v41 = *(v5 - 4);
    v43 = *(v5 - 3);
    v42 = *(v5 - 2);
    v44 = *(v5 - 1);
    v64 = *(v5 - 5);
    v65 = v41;
    v66 = v43;
    v67 = v42;
    v68 = v44;

    v45 = v74;
    v46 = sub_222C8C2F8(&v69, &v64);
    v74 = v45;
    if (v45)
    {
      break;
    }

    v47 = v46;

    if (v47)
    {
      v30 = v5 - 40;
      v4 = v60 + v32 - 40;
      if (v60 + v32 != v5)
      {
        v51 = *v59;
        v52 = *(v5 - 24);
        *(v60 + v32 - 8) = *(v5 - 1);
        *v4 = v51;
        *(v60 + v32 - 24) = v52;
      }

      v53 = v34;
      v13 = &v34[v32];
      v11 = __srca;
      if (v13 <= __srca || (v5 -= 40, v59 <= __src))
      {
        v13 = &v53[v32];
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (v60 + v32 != v35)
    {
      v48 = v60 + v32 - 40;
      v49 = *v36;
      v50 = *(v36 + 16);
      *(v48 + 32) = *(v36 + 32);
      *v48 = v49;
      *(v48 + 16) = v50;
    }

    v32 -= 40;
    v33 = v34;
    v13 = &v34[v32];
    v11 = __srca;
    if (v13 <= __srca)
    {
      v30 = v5;
LABEL_42:
      v54 = (v13 - v11) / 40;
      if (v30 < v11)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }
  }

  v55 = __srca;
  v56 = (v34 - __srca + v32) / 40;
  if (v5 < __srca || v5 >= &__srca[40 * v56])
  {
    memmove(v5, __srca, 40 * v56);
  }

  else if (v5 != __srca)
  {
    v57 = 40 * v56;
    v30 = v5;
    goto LABEL_46;
  }

  return 1;
}

uint64_t UsoPersonRecipients.__allocating_init(value:)()
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

void *sub_222C8ECA4()
{
  if (!sub_222C93C3C())
  {
    return MEMORY[0x277D84F90];
  }

  v0 = sub_222C8F310();

  return v0;
}

void *sub_222C8ED04(uint64_t *a1)
{
  v1 = *a1;
  if (!sub_222C93C3C())
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_222C8F310();

  return v2;
}

uint64_t UsoPersonRecipients.__allocating_init(value:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222C9BAE0;
  *(v2 + 32) = a1;
  v3 = type metadata accessor for UsoPersonRecipients();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t UsoPersonRecipients.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t UsoPersonRecipients.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C8EEA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for UsoPersonRecipients();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C8EEEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for UsoPersonRecipients();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222C8EF38()
{
  v0 = sub_222C937CC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      return 1;
    }
  }

  v5 = sub_222C937BC();
  if (v5)
  {
    if (v5 >> 62)
    {
      v8 = sub_222C94C6C();

      if (v8)
      {
        return 1;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_222C8EFDC()
{
  v0 = sub_222C937AC();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    v29 = MEMORY[0x277D84F90];
    v3 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
LABEL_35:
      v4 = sub_222C94C6C();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v24 = v4;
        v25 = v2 & 0xC000000000000001;
        v22 = v2;
        v23 = v3;
        do
        {
          v21 = v1;
          v6 = v5;
          while (1)
          {
            if (v25)
            {
              v7 = MEMORY[0x223DC9B30](v6, v2);
              v5 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (v6 >= *(v3 + 16))
              {
                goto LABEL_34;
              }

              v7 = *(v2 + 8 * v6 + 32);

              v5 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }
            }

            sub_222C936DC();
            if (v27)
            {
              sub_222C936BC();
            }

            sub_222C9378C();
            sub_222C9381C();

            if (v28)
            {
              break;
            }

            v1 = v7;
            sub_222C936DC();
            if (v27)
            {
              v1 = v27;
              sub_222C9373C();
              if (v8)
              {
                v9 = sub_222C9394C();
                v10 = *(v9 + 48);
                v11 = *(v9 + 52);
                swift_allocObject();
                v12 = sub_222C9393C();
                sub_222C9392C();

                if (sub_222C9372C())
                {
                  sub_222C939BC();
                  v14 = v13;

                  if (v14)
                  {
                    v15 = sub_222C93ACC();
                    v16 = *(v15 + 48);
                    v17 = *(v15 + 52);
                    swift_allocObject();
                    sub_222C93ABC();
                    sub_222C93AAC();

                    sub_222C9391C();
                    v2 = v22;
                  }
                }

                v1 = MEMORY[0x223DC8590](v12);
                sub_222C9381C();

                v3 = v23;
                v4 = v24;
                if (v26)
                {
                  goto LABEL_26;
                }
              }

              else
              {

                v4 = v24;
              }
            }

            else
            {
            }

            ++v6;
            if (v5 == v4)
            {
              v1 = v21;
              goto LABEL_31;
            }
          }

LABEL_26:
          MEMORY[0x223DC94A0](v18);
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v19 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
            v2 = v22;
          }

          sub_222C947AC();
          v1 = v29;
        }

        while (v5 != v4);
      }
    }

    else
    {
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

LABEL_31:
  }

  return v1;
}

void *sub_222C8F310()
{
  v3 = MEMORY[0x223DC84A0]();
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v38 = v3;
  v39 = sub_222C94C6C();
  v3 = v38;
  if (!v39)
  {
    goto LABEL_32;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC9B30](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_36:
      v29 = v4;
      if (sub_222C94C6C())
      {
        v40 = sub_222C94C6C();
        v4 = v29;
        v12 = v40;
        if (!v40)
        {
          v17 = MEMORY[0x277D84F90];
          goto LABEL_27;
        }

LABEL_11:
        v13 = v4;
        *&v46 = MEMORY[0x277D84F90];
        v14 = &v46;
        sub_222B4C418(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
          goto LABEL_46;
        }

        v16 = 0;
        v17 = v46;
        v18 = v13;
        v19 = v13 & 0xC000000000000001;
        v20 = v13;
        do
        {
          if (v19)
          {
            MEMORY[0x223DC9B30](v16, v18);
          }

          else
          {
            v21 = *(v18 + 8 * v16 + 32);
          }

          v22 = sub_222C9377C();
          v24 = v23;

          if (v24)
          {
            v25 = v22;
          }

          else
          {
            v25 = 0;
          }

          if (!v24)
          {
            v24 = 0xE000000000000000;
          }

          *&v46 = v17;
          v27 = *(v17 + 16);
          v26 = *(v17 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_222B4C418((v26 > 1), v27 + 1, 1);
            v17 = v46;
          }

          ++v16;
          *(v17 + 16) = v27 + 1;
          v28 = v17 + 16 * v27;
          *(v28 + 32) = v25;
          *(v28 + 40) = v24;
          v18 = v20;
        }

        while (v12 != v16);
        v29 = v20;
LABEL_27:
        v30 = type metadata accessor for SendMessageUSOFeature.RecipientNames(0);
        v31 = *(v30 + 48);
        v32 = *(v30 + 52);
        swift_allocObject();
        *&v46 = v17;
        v33 = sub_222C93EEC();
        v2 = sub_222B4A108(1, 2, 1, v45);
        v47 = v30;
        v48 = sub_222C8FA68(&qword_27D027F00, 255, type metadata accessor for SendMessageUSOFeature.RecipientNames);
        *&v46 = v33;
        v2[2] = 2;
        sub_222B405A0(&v46, (v2 + 9));
        HasPayload = type metadata accessor for UsoPersonRecipients();
        v34 = *(HasPayload + 48);
        v35 = *(HasPayload + 52);
        swift_allocObject();
        *&v46 = v29;
        v14 = sub_222C93EEC();
        v0 = v2[2];
        v15 = v2[3];
        v13 = v0 + 1;
        if (v0 < v15 >> 1)
        {
          v36 = v2;
LABEL_29:

          sub_222BEB9B0(v50);
          v47 = HasPayload;
          v48 = sub_222C8FA68(&qword_27D026A30, 255, type metadata accessor for UsoPersonRecipients);
          *&v46 = v14;
          v36[2] = v13;
          sub_222B405A0(&v46, &v36[5 * v0 + 4]);
          return v36;
        }

LABEL_46:
        v36 = sub_222B4A108((v15 > 1), v13, 1, v2);
        goto LABEL_29;
      }

      goto LABEL_39;
    }

    v5 = *(v3 + 32);
  }

  sub_222C937DC();

  sub_222BEB940(v50, &v46);
  if (!v47)
  {
    sub_222BEB9B0(&v46);
    goto LABEL_26;
  }

  sub_222C938EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    sub_222BEB9B0(v50);
    return MEMORY[0x277D84F90];
  }

  v0 = v49;

  sub_222C9379C();

  if (!v46)
  {

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C97C40;
  v7 = sub_222C8EF38();
  HasPayload = type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
  v8 = *(HasPayload + 48);
  v9 = *(HasPayload + 52);
  swift_allocObject();
  LOBYTE(v46) = v7 & 1;
  v10 = sub_222C93EEC();
  *(v6 + 56) = HasPayload;
  *(v6 + 64) = sub_222C8FA68(&qword_27D027EF8, 255, type metadata accessor for SendMessageUSOFeature.MessageHasPayload);
  v45 = v6;
  *(v6 + 32) = v10;
  v11 = sub_222C8EFDC();
  v4 = v11;
  if (v11 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_39:

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v41 = sub_222C9431C();
  __swift_project_value_buffer(v41, qword_280FE2340);
  v42 = sub_222C942FC();
  v43 = sub_222C94A2C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_222B39000, v42, v43, "Cannot extract message recipient features from turn: No recipients", v44, 2u);
    MEMORY[0x223DCA8C0](v44, -1, -1);
  }

  else
  {
  }

  sub_222BEB9B0(v50);
  return v45;
}

uint64_t type metadata accessor for UsoPersonRecipients()
{
  result = qword_280FDF228;
  if (!qword_280FDF228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C8FA68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t CommonInteractionFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CommonInteractionFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CommonInteractionFeatureExtractor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CommonInteractionFeatureExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_222C8FB54()
{
  v0 = sub_222C935EC();
  v118 = *(v0 - 8);
  v119 = v0;
  v1 = *(v118 + 64);
  MEMORY[0x28223BE20](v0);
  v112 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v116 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v117 = &v111 - v7;
  MEMORY[0x28223BE20](v8);
  v114 = &v111 - v9;
  MEMORY[0x28223BE20](v10);
  v115 = &v111 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v111 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v111 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v113 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v111 - v22;
  v24 = sub_222C93CAC();
  v25 = [v24 identifier];
  v26 = sub_222C9449C();
  v28 = v27;

  v29 = type metadata accessor for CommonFeature.UniqueIdentifier(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *&v128 = v26;
  *(&v128 + 1) = v28;
  v32 = sub_222C93EEC();
  v131[8] = v29;
  v131[9] = sub_222C90788(&qword_27D026468, 255, type metadata accessor for CommonFeature.UniqueIdentifier);
  v131[5] = v32;
  LOBYTE(v32) = [v24 _donatedBySiri];
  v33 = type metadata accessor for CommonFeature.DonatedBySiri(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  LOBYTE(v128) = v32;
  v36 = sub_222C93EEC();
  v131[13] = v33;
  v131[14] = sub_222C90788(&qword_27D026F98, 255, type metadata accessor for CommonFeature.DonatedBySiri);
  v131[10] = v36;
  v37 = sub_222C93CBC();
  v39 = v38;
  v40 = type metadata accessor for CommonFeature.BundleID(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  *&v128 = v37;
  *(&v128 + 1) = v39;
  v43 = sub_222C93EEC();
  v131[18] = v40;
  v131[19] = sub_222C90788(&qword_27D026470, 255, type metadata accessor for CommonFeature.BundleID);
  v131[15] = v43;
  v44 = [v24 direction];
  v45 = type metadata accessor for CommonFeature.InteractionDirection(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  *&v128 = v44;
  v48 = sub_222C93EEC();
  v131[23] = v45;
  v131[24] = sub_222C90788(&qword_27D027F08, 255, type metadata accessor for CommonFeature.InteractionDirection);
  v131[20] = v48;
  v49 = [v24 intentHandlingStatus];
  v50 = type metadata accessor for CommonFeature.IntentHandlingStatus(0);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  *&v128 = v49;
  v53 = sub_222C93EEC();
  v131[28] = v50;
  v131[29] = sub_222C90788(&qword_27D027F10, 255, type metadata accessor for CommonFeature.IntentHandlingStatus);
  v131[25] = v53;
  v122 = v24;
  v54 = [v24 dateInterval];
  if (v54)
  {
    v55 = v54;
    sub_222C9326C();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = sub_222C932BC();
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v60 = 1;
  v120 = v58 + 56;
  v121 = v59;
  v59(v14, v56, 1, v57);
  sub_222B812EC(v14, v17);
  v61 = *(v58 + 48);
  if (!v61(v17, 1, v57))
  {
    sub_222C9329C();
    v60 = 0;
  }

  sub_222B4FCD4(v17, &qword_27D025A08, &unk_222C99BD0);
  (*(v118 + 56))(v23, v60, 1, v119);
  v62 = type metadata accessor for CommonFeature.OrderingTimestamp(0);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_222B4FC6C(v23, v113, &qword_27D025360, &unk_222C98300);
  v65 = sub_222C93EDC();
  sub_222B4FCD4(v23, &qword_27D025360, &unk_222C98300);
  if (v65)
  {
    v66 = sub_222C90788(&qword_27D026378, 255, type metadata accessor for CommonFeature.OrderingTimestamp);
  }

  else
  {
    v62 = 0;
    v66 = 0;
    v131[31] = 0;
    v131[32] = 0;
  }

  v67 = v114;
  v68 = v115;
  v131[30] = v65;
  v131[33] = v62;
  v131[34] = v66;
  v69 = [v122 dateInterval];
  if (v69)
  {
    v70 = v69;
    sub_222C9326C();

    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = v117;
  v121(v67, v71, 1, v57);
  sub_222B812EC(v67, v68);
  v73 = v61(v68, 1, v57);
  if (v73)
  {
    sub_222B4FCD4(v68, &qword_27D025A08, &unk_222C99BD0);
    v74 = 0;
  }

  else
  {
    v75 = v112;
    sub_222C9329C();
    sub_222B4FCD4(v68, &qword_27D025A08, &unk_222C99BD0);
    sub_222C935BC();
    v74 = v76;
    (*(v118 + 8))(v75, v119);
  }

  v77 = v73 != 0;
  started = type metadata accessor for CommonFeature.StartTimestamp(0);
  v79 = *(started + 48);
  v80 = *(started + 52);
  swift_allocObject();
  *&v128 = v74;
  BYTE8(v128) = v77;
  v81 = sub_222C93EDC();
  v82 = v81;
  if (v81)
  {
    v81 = sub_222C90788(&unk_27D026380, 255, type metadata accessor for CommonFeature.StartTimestamp);
  }

  else
  {
    started = 0;
    v131[37] = 0;
    v131[36] = 0;
  }

  v83 = v116;
  v131[35] = v82;
  v131[38] = started;
  v131[39] = v81;
  v84 = [v122 dateInterval];
  if (v84)
  {
    v85 = v84;
    sub_222C9326C();

    v86 = 0;
  }

  else
  {
    v86 = 1;
  }

  v121(v83, v86, 1, v57);
  sub_222B812EC(v83, v72);
  v87 = v61(v72, 1, v57);
  if (v87)
  {
    sub_222B4FCD4(v72, &qword_27D025A08, &unk_222C99BD0);
    v88 = 0;
  }

  else
  {
    v89 = v112;
    sub_222C9327C();
    sub_222B4FCD4(v72, &qword_27D025A08, &unk_222C99BD0);
    sub_222C935BC();
    v88 = v90;
    (*(v118 + 8))(v89, v119);
  }

  v91 = v87 != 0;
  v92 = type metadata accessor for CommonFeature.EndTimestamp(0);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  *&v128 = v88;
  BYTE8(v128) = v91;
  v95 = sub_222C93EDC();
  v96 = v95;
  if (v95)
  {
    v95 = sub_222C90788(&qword_27D027F18, 255, type metadata accessor for CommonFeature.EndTimestamp);
  }

  else
  {
    v92 = 0;
    v131[42] = 0;
    v131[41] = 0;
  }

  v131[40] = v96;
  v131[43] = v92;
  v97 = 4;
  v131[44] = v95;
  v98 = MEMORY[0x277D84F90];
  do
  {
    sub_222B4FC6C(&v131[v97 + 1], &v128, &qword_27D024860, &unk_222C962F0);
    v123[0] = v128;
    v123[1] = v129;
    v124 = v130;
    if (*(&v129 + 1))
    {
      sub_222B405A0(v123, v125);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131[0] = v98;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v98 = sub_222B4A108(0, v98[2] + 1, 1, v98);
        v131[0] = v98;
      }

      v101 = v98[2];
      v100 = v98[3];
      if (v101 >= v100 >> 1)
      {
        v98 = sub_222B4A108((v100 > 1), v101 + 1, 1, v98);
        v131[0] = v98;
      }

      v102 = v126;
      v103 = v127;
      v104 = __swift_mutable_project_boxed_opaque_existential_1(v125, v126);
      v105 = *(*(v102 - 8) + 64);
      v106 = MEMORY[0x28223BE20](v104);
      v108 = &v111 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v109 + 16))(v108, v106);
      sub_222B4F8F0(v101, v108, v131, v102, v103);
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
    }

    else
    {
      sub_222B4FCD4(v123, &qword_27D024860, &unk_222C962F0);
    }

    v97 += 5;
  }

  while (v97 != 44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  swift_arrayDestroy();
  return v98;
}

uint64_t sub_222C90788(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id PlusMediaReferenceCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaReferenceCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaReferenceCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaReferenceCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaReferenceCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C909E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mediaId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C90A48(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_222C9448C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setMediaId_];
}

uint64_t sub_222C90AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id PlusMediaReferenceSourceAppCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaReferenceSourceAppCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaReferenceSourceAppCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaReferenceSourceAppCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C90D04(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C90D6C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_222C9448C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setName_];
}

uint64_t sub_222C90DDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id PlusMediaSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_222C90FA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastUpdated];
  *a2 = v4;
  return result;
}

id static PlusMediaSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_222C9105C()
{
  result = qword_27D027F20;
  if (!qword_27D027F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D026290, &qword_222C96B40);
    sub_222C910E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027F20);
  }

  return result;
}

unint64_t sub_222C910E0()
{
  result = qword_280FE02A8;
  if (!qword_280FE02A8)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE02A8);
  }

  return result;
}

uint64_t sub_222C91138@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    sub_222C9363C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222C9367C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_222C911DC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_222B5551C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_222C9361C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}

void sub_222C91308(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9350C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_222C9136C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *a1;
    v7 = sub_222C934FC();
  }

  v9 = v7;
  [v6 *a5];
}

uint64_t sub_222C913E4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 id];
  if (v3)
  {
    v4 = v3;
    sub_222C9363C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222C9367C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id PlusMediaSuggestionStoreUpdateRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaSuggestionStoreUpdateRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaSuggestionStoreUpdateRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaSuggestionStoreUpdateRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C916C0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 source];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C91728(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_222C9448C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setSource_];
}

uint64_t sub_222C91798@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 timestamp];
  if (v3)
  {
    v4 = v3;
    sub_222C935CC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222C935EC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_222C9183C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_222B81ED0(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_222C935EC();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_222C9355C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

uint64_t sub_222C91968@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id PlusMediaSuggestionTagCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaSuggestionTagCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaSuggestionTagCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaSuggestionTagCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_222C91B90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id PlusStorefrontCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusStorefrontCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusStorefrontCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusStorefrontCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusStorefrontCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusStorefrontCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C91DB8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9449C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_222C91E1C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_222C9448C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_222C91E8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusStorefrontCoreDataRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id ThinMediaGroundTruthCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ThinMediaGroundTruthCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ThinMediaGroundTruthCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ThinMediaGroundTruthCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C920CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groundTruthSource];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9350C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C92134(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_222C934FC();
  }

  v5 = v3;
  [v2 setGroundTruthSource_];
}

void sub_222C921AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groundTruthType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C92214(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_222C9448C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setGroundTruthType_];
}

void sub_222C92284(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_222B5551C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_222C9361C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}

id PlusContactReferenceCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactReferenceCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactReferenceCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactReferenceCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactReferenceCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactReferenceCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_222C925AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusContactReferenceCoreDataRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id PlusContactSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C927EC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_222B5551C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_222C9361C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}

id PlusContactSuggestionStoreUpdateRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactSuggestionStoreUpdateRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactSuggestionStoreUpdateRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactSuggestionStoreUpdateRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C92B20(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_222B81ED0(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_222C935EC();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_222C9355C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

uint64_t sub_222C92C4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id PlusContactSuggestionTagCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactSuggestionTagCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactSuggestionTagCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactSuggestionTagCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_222C92E68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  result = sub_222C94D2C();
  *a1 = result;
  return result;
}

id ThinContactGroundTruthCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ThinContactGroundTruthCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ThinContactGroundTruthCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ThinContactGroundTruthCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThinContactGroundTruthCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ThinContactGroundTruthCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C93084(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_222B5551C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_222C9361C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setId_];
}