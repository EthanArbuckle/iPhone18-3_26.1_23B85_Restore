uint64_t sub_2148DE700(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_2148DE75C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
  v6 = *(sub_21498DFB0() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_214992710;
  sub_214990050();
  sub_21498DFA0();

  sub_21498DFA0();
  sub_21498DFA0();
  return v9;
}

uint64_t static TapToRadarDraft.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_214990080();
}

uint64_t TapToRadarDraft.Component.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x216059200](*v0);
  sub_21498F900();

  return sub_21498F900();
}

uint64_t TapToRadarDraft.Component.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_214990160();
  MEMORY[0x216059200](v1);
  sub_21498F900();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148DEA90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_214990160();
  MEMORY[0x216059200](v1);
  sub_21498F900();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148DEB10()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x216059200](*v0);
  sub_21498F900();

  return sub_21498F900();
}

uint64_t sub_2148DEB80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_214990160();
  MEMORY[0x216059200](v1);
  sub_21498F900();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148DEBFC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_214990080();
}

unint64_t TapToRadarDraft.Classification.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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

iCloudMailAssistant::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DEE7C()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DA890();
  return sub_214990190();
}

uint64_t sub_2148DEECC()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DA890();
  return sub_214990190();
}

unint64_t sub_2148DEF1C@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadarDraft.Classification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x656C62616E55;
  v4 = 0x74276E6469442049;
  if (v1 != 4)
  {
    v4 = 0x6C70704120746F4ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D6974656D6F53;
  if (v1 != 1)
  {
    v5 = 0x796C65726152;
  }

  if (*v0)
  {
    v2 = v5;
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

iCloudMailAssistant::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DF07C()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

void sub_2148DF18C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 0x5654656C707041;
  v4 = 0x646F50656D6F48;
  if (v1 != 4)
  {
    v4 = 6512973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 0x6863746157;
  }

  if (*v0)
  {
    v2 = v5;
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

iCloudMailAssistant::TapToRadarDraft::DeviceClass_optional __swiftcall TapToRadarDraft.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DF36C()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

void sub_2148DF458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE700000000000000;
  v6 = 0x5654656C707041;
  v7 = 0xE700000000000000;
  v8 = 0x646F50656D6F48;
  if (v2 != 4)
  {
    v8 = 6512973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x6863746157;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2148DF500(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v2 = sub_21498F810();

  return v2;
}

uint64_t sub_2148DF598()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

uint64_t sub_2148DF5E0()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

void *sub_2148DF64C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2148DF678@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2148DF728@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2148E26AC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2148DF768()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {

    return 0;
  }

  v2 = sub_214990080();

  if (v2)
  {
    return 0;
  }

  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (v1 == 1)
  {
    return 48;
  }

  else if (v1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t TapToRadarDraft.AutoDiagnostics.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 48;
    if (v1 != 1)
    {
      v4 = 12589;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 7105633;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

iCloudMailAssistant::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DFA54()
{
  *v0;
  sub_21498F900();
}

void sub_2148DFB64(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002149A0700;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000002149A0720;
    }

    v5 = 0x80000002149A06C0;
    if (v2 != 3)
    {
      v5 = 0x80000002149A06E0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t TapToRadarDraft.TapToRadarError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t TapToRadarDraft.TapToRadarError.hashValue.getter()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

unint64_t sub_2148DFD14()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_2148DFD6C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_21498DFA0();

    v3 = 0;
  }

  v4 = sub_21498DFB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_2148DFF60@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_21498DFA0();

    v3 = 0;
  }

  v4 = sub_21498DFB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_2148E00B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_21498E320();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28);
  sub_2148AA824(v2 + *(v13 + 36), v7, &qword_27CA1ABA0, &qword_214993E20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21489DFCC(v7, &qword_27CA1ABA0, &qword_214993E20);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v16 = sub_21498F840();
    [v15 setDateFormat_];

    [v15 setDoesRelativeDateFormatting_];
    v17 = sub_21498E2B0();
    v18 = [v15 stringFromDate_];

    sub_21498F870();
    (*(v9 + 8))(v12, v8);
    v19 = *v2;
    v20 = v2[1];
    sub_21498DFA0();

    v14 = 0;
  }

  v21 = sub_21498DFB0();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t sub_2148E0384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x277D84F90];
  v3 = (a1 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 == 4;
    v7 = 0x646F50656D6F48;
    if (v5 != 4)
    {
      v7 = 6512973;
    }

    v8 = 0xE300000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    if (v4 == 3)
    {
      v7 = 0x5654656C707041;
      v8 = 0xE700000000000000;
    }

    v9 = 1684099177;
    if (v4 != 1)
    {
      v9 = 0x6863746157;
    }

    v10 = 0xE400000000000000;
    if (v4 != 1)
    {
      v10 = 0xE500000000000000;
    }

    if (!v4)
    {
      v9 = 0x656E6F685069;
      v10 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2148A90C8(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_2148A90C8((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v16 = sub_21498F810();

  return v16;
}

uint64_t sub_2148E0544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2148A90C8(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_2148A90C8((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v9 = sub_21498F810();

  return v9;
}

uint64_t sub_2148E0674(uint64_t a1)
{
  v24 = sub_21498E1B0();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_21498E170();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2148A90C8(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_2148A90C8((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v20 = sub_21498F810();

  return v20;
}

uint64_t sub_2148E0888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_214990050();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2148A90C8(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_2148A90C8((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v11 = sub_21498F810();

  return v11;
}

unint64_t sub_2148E09E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B590, &unk_214995AD0);
    v3 = sub_21498FEC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2148AA824(v4, v13, &qword_27CA1A3B8, &qword_214991A68);
      result = sub_214908014(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2148A4198(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2148E0B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
    v3 = sub_21498FEC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2148AA824(v4, &v13, &qword_27CA1A4C8, &unk_214992030);
      v5 = v13;
      v6 = v14;
      result = sub_214907F9C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2148A4198(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2148E0C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7C0, &unk_214995AE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B598, &qword_21499EFD0);
    v8 = sub_21498FEC0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2148AA824(v10, v6, &qword_27CA1A7C0, &unk_214995AE0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_214907F9C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_21498E7C0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2148E0E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5B0, &qword_214995B00);
    v3 = sub_21498FEC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2148AA824(v4, &v11, &qword_27CA1B5B8, &unk_214995B08);
      v5 = v11;
      result = sub_214908058(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2148A4198(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2148E0F60()
{
  result = qword_27CA1A020;
  if (!qword_27CA1A020)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A020);
  }

  return result;
}

unint64_t sub_2148E0FD4()
{
  result = qword_27CA1B3E0;
  if (!qword_27CA1B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3E0);
  }

  return result;
}

unint64_t sub_2148E102C()
{
  result = qword_27CA1B3E8;
  if (!qword_27CA1B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3E8);
  }

  return result;
}

unint64_t sub_2148E1084()
{
  result = qword_27CA1B3F0;
  if (!qword_27CA1B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3F0);
  }

  return result;
}

unint64_t sub_2148E10DC()
{
  result = qword_27CA1B3F8;
  if (!qword_27CA1B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3F8);
  }

  return result;
}

unint64_t sub_2148E1134()
{
  result = qword_27CA1B400;
  if (!qword_27CA1B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B400);
  }

  return result;
}

unint64_t sub_2148E118C()
{
  result = qword_27CA1B408;
  if (!qword_27CA1B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B408);
  }

  return result;
}

unint64_t sub_2148E11E4()
{
  result = qword_27CA1B410;
  if (!qword_27CA1B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B410);
  }

  return result;
}

void sub_2148E1260()
{
  sub_2148E16A0(319, &qword_27CA1B428, &qword_27CA1AB18, &unk_21499A610, sub_2148E15BC);
  if (v0 <= 0x3F)
  {
    sub_2148E1650();
    if (v1 <= 0x3F)
    {
      sub_2148E16A0(319, &qword_27CA1B440, &qword_27CA1B448, &qword_214995770, sub_2148E1710);
      if (v2 <= 0x3F)
      {
        sub_2148E16A0(319, &qword_27CA1B458, &qword_27CA1B460, &qword_214995778, sub_2148E178C);
        if (v3 <= 0x3F)
        {
          sub_2148E16A0(319, &qword_27CA1B470, &qword_27CA1B478, &qword_214995780, sub_2148E1808);
          if (v4 <= 0x3F)
          {
            sub_2148E16A0(319, &qword_27CA1B488, &qword_27CA1ABA0, &qword_214993E20, sub_2148E1884);
            if (v5 <= 0x3F)
            {
              sub_2148E16A0(319, &qword_27CA1B498, &qword_27CA1B4A0, &unk_214995788, sub_2148E1900);
              if (v6 <= 0x3F)
              {
                sub_2148E16A0(319, &qword_27CA1B4B0, &qword_27CA1A378, &qword_214993B80, sub_2148E197C);
                if (v7 <= 0x3F)
                {
                  sub_2148E1A74(319, &qword_27CA1B4C0);
                  if (v8 <= 0x3F)
                  {
                    sub_2148E16A0(319, &qword_27CA1B4C8, &qword_27CA1B4D0, &qword_214995798, sub_2148E19F8);
                    if (v9 <= 0x3F)
                    {
                      sub_2148E1A74(319, &qword_27CA1B4E0);
                      if (v10 <= 0x3F)
                      {
                        sub_2148E1A74(319, qword_27CA1B4E8);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_2148E15BC()
{
  result = qword_27CA1B430;
  if (!qword_27CA1B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AB18, &unk_21499A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B430);
  }

  return result;
}

void sub_2148E1650()
{
  if (!qword_27CA1B438)
  {
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1B438);
    }
  }
}

void sub_2148E16A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2148E1710()
{
  result = qword_27CA1B450;
  if (!qword_27CA1B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B448, &qword_214995770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B450);
  }

  return result;
}

unint64_t sub_2148E178C()
{
  result = qword_27CA1B468;
  if (!qword_27CA1B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B460, &qword_214995778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B468);
  }

  return result;
}

unint64_t sub_2148E1808()
{
  result = qword_27CA1B480;
  if (!qword_27CA1B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B478, &qword_214995780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B480);
  }

  return result;
}

unint64_t sub_2148E1884()
{
  result = qword_27CA1B490;
  if (!qword_27CA1B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ABA0, &qword_214993E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B490);
  }

  return result;
}

unint64_t sub_2148E1900()
{
  result = qword_27CA1B4A8;
  if (!qword_27CA1B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B4A0, &unk_214995788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B4A8);
  }

  return result;
}

unint64_t sub_2148E197C()
{
  result = qword_27CA1B4B8;
  if (!qword_27CA1B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B4B8);
  }

  return result;
}

unint64_t sub_2148E19F8()
{
  result = qword_27CA1B4D8;
  if (!qword_27CA1B4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B4D0, &qword_214995798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B4D8);
  }

  return result;
}

void sub_2148E1A74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2148E1AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2148E1B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OBKLiftUIContentItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OBKLiftUIContentItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2148E1F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2148E2018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_2148E219C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

unint64_t sub_2148E23EC()
{
  result = qword_27CA1B570;
  if (!qword_27CA1B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B570);
  }

  return result;
}

unint64_t sub_2148E2444()
{
  result = qword_27CA1B578;
  if (!qword_27CA1B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B578);
  }

  return result;
}

unint64_t sub_2148E249C()
{
  result = qword_27CA1B580;
  if (!qword_27CA1B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B580);
  }

  return result;
}

unint64_t sub_2148E24F4()
{
  result = qword_27CA1B588;
  if (!qword_27CA1B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B588);
  }

  return result;
}

unint64_t sub_2148E2570(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21498FEC0();

    for (i = (a1 + 80); ; i += 7)
    {
      v7 = *(i - 5);
      v8 = *(i - 4);
      v9 = *(i - 3);
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      *&v20 = *(i - 6);
      *(&v20 + 1) = v7;
      *&v21 = v8;
      *(&v21 + 1) = v9;
      *&v22 = v10;
      *(&v22 + 1) = v11;

      sub_21489B6F8(v10, v11);

      result = sub_2149080EC(&v20);
      if (v14)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v5[6] + 48 * result);
      v16 = v21;
      *v15 = v20;
      v15[1] = v16;
      v15[2] = v22;
      *(v5[7] + 8 * result) = v12;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v5[2] = v19;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2148E26AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2148E26F8(uint64_t a1, uint64_t *a2)
{
  v36 = a2;
  v31 = type metadata accessor for MATipDismissal();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v30 = v2;
  v37 = MEMORY[0x277D84F90];
  sub_2148A9C5C(0, v8, 0);
  v10 = 0;
  v9 = v37;
  v11 = *(v4 + 80);
  v33 = v8;
  v34 = (v11 + 32) & ~v11;
  v35 = a1 + v34;
  v12 = *(v4 + 72);
  v32 = v12;
  while (1)
  {
    sub_2148E5F5C(v35 + v12 * v10, v7, type metadata accessor for MATipDismissal);
    v13 = *v36;
    if (*(*v36 + 16))
    {
      break;
    }

LABEL_16:
    v37 = v9;
    v29 = *(v9 + 16);
    v28 = *(v9 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_2148A9C5C(v28 > 1, v29 + 1, 1);
      v9 = v37;
    }

    ++v10;
    *(v9 + 16) = v29 + 1;
    sub_2148E6034(v7, v9 + v34 + v29 * v12, type metadata accessor for MATipDismissal);
    if (v10 == v8)
    {
      return v9;
    }
  }

  v15 = *v7;
  v14 = v7[1];
  v16 = *(v13 + 40);
  sub_214990160();

  sub_21498F900();
  v17 = sub_214990190();
  v18 = -1 << *(v13 + 32);
  v19 = v17 & ~v18;
  if (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_12:

LABEL_15:
    v12 = v32;
    v8 = v33;
    goto LABEL_16;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = (*(v13 + 48) + 16 * v19);
    v22 = *v21 == v15 && v21[1] == v14;
    if (v22 || (sub_214990080() & 1) != 0)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v24 = *(v31 + 24);
  v25 = *(v7 + v24);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v7 + v24) = v27;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2148E299C()
{
  type metadata accessor for DataStoreActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_281194E50 = v0;
  return result;
}

uint64_t sub_2148E29D8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2148E2A4C()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2148E2AA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DataStoreActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_2148E2AE0()
{
  v0 = sub_21498F760();
  __swift_allocate_value_buffer(v0, qword_281194E58);
  __swift_project_value_buffer(v0, qword_281194E58);
  return sub_21498F770();
}

uint64_t sub_2148E2B7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498F6A0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2148E2CAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3C0();
}

uint64_t sub_2148E2D84()
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498F6A0();

  return v0;
}

uint64_t sub_2148E2EA8()
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498F6B0();
}

uint64_t sub_2148E2F5C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState);
  sub_21498F6A0();
}

uint64_t sub_2148E30A0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MailCleanupState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2148E5F5C(a1, v7, type metadata accessor for MailCleanupState);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3C0();

  return sub_2148E5E04(v7);
}

uint64_t sub_2148E31E0()
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState);
  sub_21498F6A0();
}

uint64_t sub_2148E3324()
{
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_2148E5E60(&qword_281192048, 255, type metadata accessor for MailCleanupState);
  sub_21498F6B0();
}

uint64_t sub_2148E3404()
{
  v1 = v0;
  v31 = type metadata accessor for MailCleanupState();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31);
  v29 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5F8, &qword_214995ED0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v30 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState;
  swift_beginAccess();
  sub_2148E5FC4(v1 + v19, v18);
  v32 = v1;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  v20 = v31;
  (*(v2 + 56))(v16, 0, 1, v31);
  v21 = *(v6 + 56);
  sub_2148E5FC4(v18, v9);
  sub_2148E5FC4(v16, &v9[v21]);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v20) != 1)
  {
    v24 = v30;
    sub_2148E5FC4(v9, v30);
    if (v22(&v9[v21], 1, v20) != 1)
    {
      v25 = v29;
      sub_2148E6034(&v9[v21], v29, type metadata accessor for MailCleanupState);
      v26 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v24, v25);
      sub_2148E5E04(v25);
      sub_21489DFCC(v16, &unk_27CA1B600, &qword_214995ED8);
      sub_21489DFCC(v18, &unk_27CA1B600, &qword_214995ED8);
      sub_2148E5E04(v24);
      sub_21489DFCC(v9, &unk_27CA1B600, &qword_214995ED8);
      v23 = !v26;
      return v23 & 1;
    }

    sub_21489DFCC(v16, &unk_27CA1B600, &qword_214995ED8);
    sub_21489DFCC(v18, &unk_27CA1B600, &qword_214995ED8);
    sub_2148E5E04(v24);
    goto LABEL_6;
  }

  sub_21489DFCC(v16, &unk_27CA1B600, &qword_214995ED8);
  sub_21489DFCC(v18, &unk_27CA1B600, &qword_214995ED8);
  if (v22(&v9[v21], 1, v20) != 1)
  {
LABEL_6:
    sub_21489DFCC(v9, &qword_27CA1B5F8, &qword_214995ED0);
    v23 = 1;
    return v23 & 1;
  }

  sub_21489DFCC(v9, &unk_27CA1B600, &qword_214995ED8);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_2148E38CC(uint64_t a1, uint64_t *a2)
{
  v17 = a2;
  v3 = type metadata accessor for MailCleanupState();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v16 - v9);
  v18 = a1;
  swift_getKeyPath();
  v16 = sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  sub_2148E5F5C(v8, v10, type metadata accessor for MailCleanupState);
  v11 = *(v4 + 32);
  v12 = sub_2148E26F8(*(v10 + v11), v17);
  v17 = 0;

  *(v10 + v11) = v12;
  sub_2148E5E04(v8);
  v18 = a1;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v13 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v8, v10);
  sub_2148E5E04(v8);
  if (!v13)
  {
    sub_2148E5F5C(v10, v8, type metadata accessor for MailCleanupState);
    v18 = a1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v16 - 2) = a1;
    *(&v16 - 1) = v8;
    sub_21498E3C0();

    sub_2148E5E04(v8);
    sub_2148E3F20();
  }

  return sub_2148E5E04(v10);
}

uint64_t sub_2148E3C1C(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v14 = a2;
  v15 = a1;
  v4 = type metadata accessor for MailCleanupState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v14 - v9);
  v16 = v2;
  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  v15(v8);
  sub_2148E5E04(v8);
  v16 = v2;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v11 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v8, v10);
  sub_2148E5E04(v8);
  if (!v11)
  {
    sub_2148E5F5C(v10, v8, type metadata accessor for MailCleanupState);
    v16 = v3;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v3;
    *(&v14 - 1) = v8;
    sub_21498E3C0();

    sub_2148E5E04(v8);
    sub_2148E3F20();
  }

  return sub_2148E5E04(v10);
}

uint64_t sub_2148E3F20()
{
  v1 = type metadata accessor for MailCleanupState();
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) < 1)
  {
    if ((*(v0 + 25) & 1) == 0)
    {
      *(v0 + 25) = 1;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6[1] = v0;
      swift_getKeyPath();
      sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
      sub_21498E3D0();

      swift_getKeyPath();
      sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
      sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState);
      sub_21498F6A0();

      sub_21496C824(v5);
      swift_unknownObjectRelease();
      return sub_2148E5E04(v5);
    }
  }

  else
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t sub_2148E4100()
{
  v1 = type metadata accessor for MailCleanupState();
  v2 = *(*(v1 - 1) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = (v14 - v7);
  if ((*(v0 + 25) & 1) == 0)
  {
    v14[1] = v0;
    swift_getKeyPath();
    sub_2148E5E60(&qword_281191F48, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
    sub_21498E3D0();

    swift_getKeyPath();
    sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
    sub_2148E5E60(&qword_281192040, 255, type metadata accessor for MailCleanupState);
    sub_21498F6A0();

    v9 = MEMORY[0x277D84F90];
    *v5 = MEMORY[0x277D84F90];
    v10 = v1[5];
    v11 = sub_21498E320();
    v12 = *(*(v11 - 8) + 56);
    v12(v5 + v10, 1, 1, v11);
    *(v5 + v1[6]) = v9;
    *(v5 + v1[7]) = 2;
    *(v5 + v1[8]) = 2;
    *(v5 + v1[9]) = 3;
    v12(v5 + v1[10], 1, 1, v11);
    *(v5 + v1[11]) = v9;
    *(v5 + v1[12]) = v9;
    v12(v5 + v1[13], 1, 1, v11);
    *(v5 + v1[14]) = v9;
    v13 = (v5 + v1[15]);
    *v13 = 0;
    v13[1] = 0;
    v12(v5 + v1[16], 1, 1, v11);
    LOBYTE(v11) = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v8, v5);
    sub_2148E5E04(v5);
    result = sub_2148E5E04(v8);
    if ((v11 & 1) == 0)
    {
      return sub_2148E3F20();
    }
  }

  return result;
}

uint64_t sub_2148E43F0(__int128 *a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for MailCleanupState();
  v28 = *(v3 - 1);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21498E380();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData);
  v12 = type metadata accessor for MailCleanupSchemaV1.DataModel();
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5E8, &unk_214995EC0);
  v13 = sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  v30 = v12;
  v31 = v12;
  v32 = v13;
  v33 = v13;
  v11[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_21498F660();
  v14 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  swift_getKeyPath();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21498F5C0();

  sub_21498E370();
  v15 = sub_21498E360();
  v17 = v16;
  (*(v7 + 8))(v10, v27);
  v18 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  swift_getKeyPath();
  v30 = v15;
  v31 = v17;
  sub_21498F5C0();

  v19 = MEMORY[0x277D84F90];
  *v6 = MEMORY[0x277D84F90];
  v20 = v3[5];
  v21 = sub_21498E320();
  v22 = *(*(v21 - 8) + 56);
  v22(&v6[v20], 1, 1, v21);
  *&v6[v3[6]] = v19;
  v6[v3[7]] = 2;
  v6[v3[8]] = 2;
  v6[v3[9]] = 3;
  v22(&v6[v3[10]], 1, 1, v21);
  *&v6[v3[11]] = v19;
  *&v6[v3[12]] = v19;
  v22(&v6[v3[13]], 1, 1, v21);
  *&v6[v3[14]] = v19;
  v23 = &v6[v3[15]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v22(&v6[v3[16]], 1, 1, v21);
  v24 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  swift_getKeyPath();
  sub_2148E5E60(&qword_281192048, 255, type metadata accessor for MailCleanupState);
  sub_21498F5C0();

  sub_2148E5E04(v6);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  (*(v28 + 56))(v2 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState, 1, 1, v3);
  sub_21498E3E0();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2148970B8(v29, v11);
  swift_endAccess();
  return v2;
}

uint64_t sub_2148E48D4()
{
  sub_2148E609C(v0 + 32);
  sub_21489DFCC(v0 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState, &unk_27CA1B600, &qword_214995ED8);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData));
  v1 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
  v2 = sub_21498E3F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MailCleanupSchemaV1.DataModel()
{
  result = qword_281191F20;
  if (!qword_281191F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148E49FC()
{
  sub_2148E4B04();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21498E3F0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2148E4B04()
{
  if (!qword_281191FD0)
  {
    type metadata accessor for MailCleanupState();
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_281191FD0);
    }
  }
}

uint64_t sub_2148E4B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5F0, &qword_21499DEA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_214991720;
  v1 = type metadata accessor for MailCleanupSchemaV1.DataModel();
  v2 = sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_2148E4C14@<X0>(uint64_t a1@<X8>)
{
  if (qword_281191F70 != -1)
  {
    swift_once();
  }

  v2 = sub_21498F760();
  v3 = __swift_project_value_buffer(v2, qword_281194E58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2148E4CBC(__int128 *a1)
{
  v2 = type metadata accessor for MailCleanupSchemaV1.DataModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_2148E43F0(a1);
  return v5;
}

uint64_t sub_2148E4D00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData;
  swift_beginAccess();
  return sub_2148994D0(v1 + v3, a1);
}

uint64_t sub_2148E4D58(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_2148970B8(a1, v1 + v3);
  return swift_endAccess();
}

void (*sub_2148E4DC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  swift_beginAccess();
  sub_2148994D0(v1 + v5, v4);
  return sub_2148E4E58;
}

void sub_2148E4E58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  if (a2)
  {
    sub_2148994D0(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v4 + v3));
    sub_2148970B8((v2 + 40), v4 + v3);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v4 + v3));
    sub_2148970B8(v2, v4 + v3);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_2148E4F1C()
{
  v1 = *v0;
  sub_214990160();
  type metadata accessor for MailCleanupSchemaV1.DataModel();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498F690();
  return sub_214990190();
}

uint64_t sub_2148E4FAC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21498F690();
}

uint64_t sub_2148E5004()
{
  sub_214990160();
  v1 = *v0;
  swift_getWitnessTable();
  sub_21498F690();
  return sub_214990190();
}

uint64_t sub_2148E506C()
{
  v1 = *v0;
  type metadata accessor for MailCleanupSchemaV1.DataModel();
  sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  return sub_21498F680();
}

uint64_t sub_2148E50EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t sub_2148E5368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a6;
  v40 = a5;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = a1;
  v8 = type metadata accessor for MailCleanupState();
  v34 = *(v8 - 1);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21498E380();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v32);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v6 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___backingData);
  v17 = type metadata accessor for MailCleanupSchemaV1.DataModel();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5E8, &unk_214995EC0);
  v33 = type metadata accessor for MailCleanupSchemaV1.DataModel;
  v18 = sub_2148E5E60(&qword_281191F50, 255, type metadata accessor for MailCleanupSchemaV1.DataModel);
  v47 = v17;
  v48 = v17;
  v49 = v18;
  v50 = v18;
  v16[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_21498F660();
  v19 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  swift_getKeyPath();
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_21498F5C0();

  sub_21498E370();
  v20 = sub_21498E360();
  v22 = v21;
  (*(v12 + 8))(v15, v32);
  v23 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  swift_getKeyPath();
  v47 = v20;
  v48 = v22;
  sub_21498F5C0();

  v24 = MEMORY[0x277D84F90];
  *v11 = MEMORY[0x277D84F90];
  v25 = v8[5];
  v26 = sub_21498E320();
  v27 = *(*(v26 - 8) + 56);
  v27(&v11[v25], 1, 1, v26);
  *&v11[v8[6]] = v24;
  v11[v8[7]] = 2;
  v11[v8[8]] = 2;
  v11[v8[9]] = 3;
  v27(&v11[v8[10]], 1, 1, v26);
  *&v11[v8[11]] = v24;
  *&v11[v8[12]] = v24;
  v27(&v11[v8[13]], 1, 1, v26);
  *&v11[v8[14]] = v24;
  v28 = &v11[v8[15]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v27(&v11[v8[16]], 1, 1, v26);
  v29 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  swift_getKeyPath();
  sub_2148E5E60(&qword_281192048, 255, type metadata accessor for MailCleanupState);
  sub_21498F5C0();

  sub_2148E5E04(v11);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  swift_unknownObjectWeakInit();
  (*(v34 + 56))(v7 + OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState, 1, 1, v8);
  sub_21498E3E0();
  v47 = v7;
  swift_getKeyPath();
  v44 = v7;
  v45 = v35;
  v46 = v36;
  sub_2148E5E60(&qword_281191F48, 255, v33);
  sub_21498E3C0();

  v47 = v7;
  swift_getKeyPath();
  v41 = v7;
  v42 = v37;
  v43 = v38;
  sub_21498E3C0();

  *(v7 + 40) = v39;
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_2148E595C()
{
  v0 = sub_21498E380();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5D8, &qword_214995E38);
  v5 = *(sub_21498F750() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27[1] = 2 * *(v5 + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214992710;
  swift_getKeyPath();
  v8 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837D0];
  v31 = 0;
  v32 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5E0, &qword_214995E68);
  v9 = *(sub_21498F790() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_214991720;
  sub_21498F780();
  v12 = sub_21498F7A0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_21498F7B0();
  *(&v29 + 1) = v12;
  v30 = sub_2148E5E60(&qword_281190D80, 255, MEMORY[0x277CDD5E8]);
  *&v28 = v15;
  sub_21498F740();
  swift_getKeyPath();
  sub_21498E370();
  v16 = sub_21498E360();
  v18 = v17;
  (*(v1 + 8))(v4, v0);
  v33 = v8;
  v31 = v16;
  v32 = v18;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_21498F740();
  swift_getKeyPath();
  v19 = type metadata accessor for MailCleanupState();
  v33 = v19;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v21 = MEMORY[0x277D84F90];
  *v20 = MEMORY[0x277D84F90];
  v22 = v19[5];
  v23 = sub_21498E320();
  v24 = *(*(v23 - 8) + 56);
  v24(v20 + v22, 1, 1, v23);
  *(v20 + v19[6]) = v21;
  *(v20 + v19[7]) = 2;
  *(v20 + v19[8]) = 2;
  *(v20 + v19[9]) = 3;
  v24(v20 + v19[10], 1, 1, v23);
  *(v20 + v19[11]) = v21;
  *(v20 + v19[12]) = v21;
  v24(v20 + v19[13], 1, 1, v23);
  *(v20 + v19[14]) = v21;
  v25 = (v20 + v19[15]);
  *v25 = 0;
  v25[1] = 0;
  v24(v20 + v19[16], 1, 1, v23);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_21498F740();
  return v7;
}

uint64_t sub_2148E5DE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2148E3324();
}

uint64_t sub_2148E5E04(uint64_t a1)
{
  v2 = type metadata accessor for MailCleanupState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2148E5E60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2148E5EA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2148E2EA8();
}

uint64_t sub_2148E5ED0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2148E2EA8();
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

uint64_t sub_2148E5F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148E5FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148E6034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for BusinessLogoView()
{
  result = qword_27CA1B628;
  if (!qword_27CA1B628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148E6180()
{
  sub_2148E63B0();
  if (v0 <= 0x3F)
  {
    sub_2148E6460(319, &qword_27CA1B640, &qword_27CA1B610, &qword_214995EF0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2148E6408();
      if (v2 <= 0x3F)
      {
        sub_2148E6460(319, &qword_27CA1B650, &qword_27CA1A668, &qword_2149926D8, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21498E6A0();
          if (v4 <= 0x3F)
          {
            sub_2148B0744();
            if (v5 <= 0x3F)
            {
              sub_214899B90(319, &qword_27CA1B670, 0x277CF3618);
              if (v6 <= 0x3F)
              {
                sub_214899B90(319, &qword_27CA1B678, 0x277CBDAB8);
                if (v7 <= 0x3F)
                {
                  sub_214899B90(319, &qword_27CA1B680, 0x277CBEA78);
                  if (v8 <= 0x3F)
                  {
                    sub_214899B90(319, &qword_27CA1B688, 0x277CBDBD0);
                    if (v9 <= 0x3F)
                    {
                      sub_2148E6460(319, &qword_27CA1B690, &qword_27CA1B698, &qword_214995F40, MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

void sub_2148E63B0()
{
  if (!qword_27CA1B638)
  {
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1B638);
    }
  }
}

void sub_2148E6408()
{
  if (!qword_27CA1B648)
  {
    sub_21498E7D0();
    v0 = sub_21498FA30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1B648);
    }
  }
}

void sub_2148E6460(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2148E64D0()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148E65B0()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148E667C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148E6758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148EAD68();
  *a2 = result;
  return result;
}

void sub_2148E6788(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701667182;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 3)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69616D65;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2148E6824()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701667182;
  v4 = 0x6C6F686563616C70;
  if (v1 != 3)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C69616D65;
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

uint64_t sub_2148E68BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148EAD68();
  *a1 = result;
  return result;
}

uint64_t sub_2148E68E4(uint64_t a1)
{
  v2 = sub_2148EB2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148E6920(uint64_t a1)
{
  v2 = sub_2148EB2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148E695C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BusinessLogoView();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = (v1 + v4[10]);
  if (*v11)
  {
    v28 = v5;
    v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = a1;
    v12 = v4[5];

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
    sub_21498E750();

    v14 = v31;
    v15 = v32;
    sub_2148AA824(v2 + v4[6], v10, &unk_27CA1B618, qword_214995EF8);
    v16 = *(v13 - 8);
    if ((*(v16 + 48))(v10, 1, v13) == 1)
    {
      sub_21489DFCC(v10, &unk_27CA1B618, qword_214995EF8);
      v17 = 0;
      v18 = 0;
    }

    else
    {

      sub_21498E750();

      (*(v16 + 8))(v10, v13);
      v17 = v31;
      v18 = v32;
    }

    v19 = v30;
    sub_2148E6D1C(v2, v14, v15, v17, v18, v30);
    v20 = v29;
    sub_2148EA984(v2, v29);
    v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v14;
    *(v22 + 24) = v15;
    sub_2148EA9E8(v20, v22 + v21);
    v23 = (v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v17;
    v23[1] = v18;
    v24 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6C8, &unk_214996078) + 36));
    v25 = v24 + *(sub_21498EC30() + 20);
    result = sub_21498FAC0();
    *v24 = &unk_214996070;
    v24[1] = v22;
  }

  else
  {
    v27 = v11[1];
    sub_21498E8C0();
    sub_2148EB734(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148E6D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v62 = a3;
  v58 = a4;
  v59 = a2;
  v64 = a6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B700, &qword_2149960C0);
  v7 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v9 = (&v53 - v8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B708, &qword_2149960C8);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v12 = &v53 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B710, &qword_2149960D0);
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B718, &qword_2149960D8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v53 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B720, &qword_2149960E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  v24 = type metadata accessor for BusinessLogoView();
  v67 = *(a1 + v24[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F410();
  if (v66)
  {
    v25 = v66;
    sub_21498F3C0();
    v26 = *(a1 + v24[8]);
    v27 = sub_21498F3D0();

    *v19 = v27;
    swift_storeEnumTagMultiPayload();
    sub_2148EB234();

    sub_21498EE90();
    sub_2148AA824(v23, v15, &qword_27CA1B720, &qword_2149960E0);
    swift_storeEnumTagMultiPayload();
    sub_21498E6A0();
    sub_2148EB1A8();
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8]);
    sub_21498EE90();

    v28 = v23;
    v29 = &qword_27CA1B720;
    v30 = &qword_2149960E0;
  }

  else
  {
    v55 = v16;
    v56 = v12;
    v57 = v20;
    v31 = v62;
    if (!v62)
    {
      v40 = v24[9];
      v41 = sub_21498E6A0();
      (*(*(v41 - 8) + 16))(v15, a1 + v40, v41);
      swift_storeEnumTagMultiPayload();
      sub_2148EB1A8();
      sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8]);
      return sub_21498EE90();
    }

    v54 = v15;
    v32 = a1;
    if (v61)
    {
      v33 = v61;
      v53 = sub_214899B90(0, &qword_27CA1B6E0, 0x277CCACA8);

      v34 = sub_21498FCC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A488, &qword_2149960A0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_214991BE0;
      v36 = MEMORY[0x277D837D0];
      *(v35 + 56) = MEMORY[0x277D837D0];
      v37 = sub_2148A3FCC();
      v38 = v59;
      *(v35 + 32) = v58;
      *(v35 + 40) = v33;
      *(v35 + 96) = v36;
      *(v35 + 104) = v37;
      *(v35 + 64) = v37;
      *(v35 + 72) = v38;
      *(v35 + 80) = v31;

      v39 = sub_21498FCD0();
    }

    else
    {
      v39 = sub_21498F840();
    }

    v43 = v23;
    v44 = *(v32 + v24[13]);
    v62 = v39;
    v45 = [v44 objectForKey_];
    v46 = v19;
    if (v45)
    {
      v47 = v45;
      sub_21498F3C0();
      v48 = *(v32 + v24[8]);
      v49 = sub_21498F3D0();

      *v9 = v49;
      swift_storeEnumTagMultiPayload();
      sub_21498E6A0();
      sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8]);

      v50 = v56;
      sub_21498EE90();
    }

    else
    {
      v51 = v24[9];
      v52 = sub_21498E6A0();
      (*(*(v52 - 8) + 16))(v9, v32 + v51, v52);
      swift_storeEnumTagMultiPayload();
      sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8]);
      v50 = v56;
      sub_21498EE90();
    }

    sub_2148AA824(v50, v46, &qword_27CA1B708, &qword_2149960C8);
    swift_storeEnumTagMultiPayload();
    sub_2148EB234();
    sub_21498EE90();
    sub_2148AA824(v43, v54, &qword_27CA1B720, &qword_2149960E0);
    swift_storeEnumTagMultiPayload();
    sub_21498E6A0();
    sub_2148EB1A8();
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8]);
    sub_21498EE90();

    sub_21489DFCC(v43, &qword_27CA1B720, &qword_2149960E0);
    v28 = v50;
    v29 = &qword_27CA1B708;
    v30 = &qword_2149960C8;
  }

  return sub_21489DFCC(v28, v29, v30);
}

uint64_t sub_2148E74E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for BusinessLogoView();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = sub_21498FAB0();
  v5[16] = sub_21498FAA0();
  v10 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148E7628, v10, v9);
}

uint64_t sub_2148E7628()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);

  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    if (v3)
    {
      v5 = *(v0 + 64);
      v6 = *(v0 + 40);
      sub_214899B90(0, &qword_27CA1B6E0, 0x277CCACA8);

      v7 = sub_21498FCC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A488, &qword_2149960A0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_214991BE0;
      v9 = MEMORY[0x277D837D0];
      *(v8 + 56) = MEMORY[0x277D837D0];
      v10 = sub_2148A3FCC();
      *(v8 + 32) = v5;
      *(v8 + 40) = v3;
      *(v8 + 96) = v9;
      *(v8 + 104) = v10;
      *(v8 + 64) = v10;
      *(v8 + 72) = v6;
      *(v8 + 80) = v4;

      v11 = sub_21498FCD0();
    }

    else
    {
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);

      v11 = sub_21498F840();
    }

    v14 = *(v0 + 80);
    v15 = *(v0 + 56);
    v16 = [*(v15 + *(v14 + 52)) objectForKey_];
    *(v0 + 16) = *(v15 + *(v14 + 60));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
    sub_21498F410();
    v17 = *(v0 + 32);
    if (v17)
    {

      v16 = v17;
    }

    else if (v16)
    {
    }

    else
    {
      v18 = *(v0 + 112);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      v21 = *(v0 + 88);
      v22 = *(v0 + 72);
      v37 = *(v0 + 64);
      v23 = *(v0 + 56);
      v36 = *(v0 + 40);
      v24 = sub_21498FAE0();
      (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
      sub_2148EA984(v23, v19);

      v25 = sub_21498FAA0();
      v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v27 = (v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      v29 = MEMORY[0x277D85700];
      *(v28 + 16) = v25;
      *(v28 + 24) = v29;
      sub_2148EA9E8(v19, v28 + v26);
      v30 = (v28 + v27);
      *v30 = v36;
      v30[1] = v4;
      v31 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v31 = v37;
      v31[1] = v22;
      sub_214926978(0, 0, v18, &unk_214996098, v28);

      v16 = v11;
    }
  }

  v33 = *(v0 + 104);
  v32 = *(v0 + 112);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2148E7944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_21498FAB0();
  v8[7] = sub_21498FAA0();
  v10 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148E79E4, v10, v9);
}

uint64_t sub_2148E79E4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  sub_2148E7A70(v6, v4, v3, v2);
  v7 = v0[1];

  return v7();
}

void sub_2148E7A70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for BusinessLogoView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v29 = a3;
  if (a4)
  {
    sub_214899B90(0, &qword_27CA1B6E0, 0x277CCACA8);

    v26 = sub_21498FCC0();
    v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A488, &qword_2149960A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_214991BE0;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v16 = sub_2148A3FCC();
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = a1;
    *(v14 + 80) = a2;

    v17 = v26;
    v18 = sub_21498FCD0();

    v13 = v27;
  }

  else
  {
    v18 = sub_21498F840();
  }

  if (qword_27CA19FD8 != -1)
  {
    swift_once();
  }

  v19 = sub_21498E570();
  sub_2148EA984(v5, v13);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_2148EA9E8(v13, v22 + v20);
  if (v19)
  {
    *(v22 + v21) = v18;
    v23 = v18;
    sub_2148E7E18(a1, a2, v29, v28, sub_2148EB040, v22);
  }

  else
  {
    v24 = (v22 + v21);
    *v24 = a1;
    v24[1] = a2;
    *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

    v25 = v18;
    sub_2148EADB4(a1, a2, sub_2148EACBC, v22);
  }
}

void sub_2148E7D48(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BusinessLogoView();
  v7 = (a2 + *(v6 + 60));
  v8 = *v7;
  v9 = v7[1];
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F420();
  sub_21498F410();
  if (a1)
  {
    [*(a2 + *(v6 + 52)) setObject:a1 forKey:a3];
  }
}

void sub_2148E7E18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v51 = a3;
  v57 = a2;
  v58 = sub_21498E690();
  v7 = *(v58 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v58);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v48 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v50 = &v48 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v21 = v58;
  v22 = __swift_project_value_buffer(v58, qword_281194E18);
  v23 = v7[2];
  v23(v20, v22, v21);
  v24 = sub_21498E670();
  v25 = sub_21498FBD0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v54 = (v7 + 2);
    v27 = v26;
    *v26 = 0;
    _os_log_impl(&dword_21488E000, v24, v25, "Getting monogram...", v26, 2u);
    MEMORY[0x216059AC0](v27, -1, -1);
  }

  v54 = v7[1];
  v54(v20, v58);
  v28 = sub_2148E8850();
  v29 = v28;
  if (v28 >> 62)
  {
    if (sub_21498FE90())
    {
      goto LABEL_7;
    }

LABEL_15:
    v36 = v23;
    v37 = sub_2148E8C54(v51, a4, v29);

    if (!v37)
    {
      v42 = v48;
      v36(v48, v22, v58);
      v43 = sub_21498E670();
      v44 = sub_21498FBD0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_21488E000, v43, v44, "No contacts found", v45, 2u);
        MEMORY[0x216059AC0](v45, -1, -1);
      }

      v54(v42, v58);
      if (a4)
      {
        v46 = sub_21498F840();
      }

      else
      {
        v46 = 0;
      }

      v47 = sub_21498F840();
      v31 = [objc_opt_self() contactWithDisplayName:v46 emailOrPhoneNumber:v47];

      goto LABEL_13;
    }

    v38 = v49;
    v36(v49, v22, v58);
    v39 = sub_21498E670();
    v40 = sub_21498FBD0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21488E000, v39, v40, "Found a best match", v41, 2u);
      MEMORY[0x216059AC0](v41, -1, -1);
    }

    v54(v38, v58);
    sub_2148E8A2C(v37, v55, v56);

    return;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x216058EB0](0, v29);
    goto LABEL_10;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
LABEL_10:
    v31 = v30;

    v32 = v50;
    v23(v50, v22, v58);
    v33 = sub_21498E670();
    v34 = sub_21498FBD0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21488E000, v33, v34, "Found a matching contact", v35, 2u);
      MEMORY[0x216059AC0](v35, -1, -1);
    }

    v54(v32, v58);
LABEL_13:
    sub_2148E8A2C(v31, v55, v56);

    return;
  }

  __break(1u);
}

void sub_2148E868C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = (a2 + *(type metadata accessor for BusinessLogoView() + 60));
    v9 = *v8;
    v10 = v8[1];
    v17 = a1;
    v11 = a1;
  }

  else
  {
    if (qword_27CA19FD8 != -1)
    {
      swift_once();
    }

    sub_21498E550();
    v12 = [objc_opt_self() mainScreen];
    [v12 scale];

    v13 = PKMapsIconForMerchantCategory();
    v14 = (a2 + *(type metadata accessor for BusinessLogoView() + 60));
    v15 = *v14;
    v16 = v14[1];
    v17 = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F420();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D8, &qword_214996088);
  sub_21498F410();
  if (v17)
  {
    [*(a2 + *(type metadata accessor for BusinessLogoView() + 52)) setObject:v17 forKey:a5];
  }
}

void *sub_2148E8850()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_21498F840();
  v3 = [v1 predicateForContactsMatchingEmailAddress_];

  v4 = *(v0 + *(type metadata accessor for BusinessLogoView() + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6E8, &unk_2149960A8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214995EE0;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6F8, &qword_2149960B8);
  v6 = sub_21498F9E0();

  v13[0] = 0;
  v7 = [v4 unifiedContactsMatchingPredicate:v3 keysToFetch:v6 error:v13];

  v8 = v13[0];
  if (v7)
  {
    sub_214899B90(0, &qword_27CA1B6F0, 0x277CBDA58);
    v1 = sub_21498F9F0();
    v9 = v8;
  }

  else
  {
    v10 = v13[0];
    sub_21498E100();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2148E8A2C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [v7 scopeWithPointSize:0 scale:0 strokeWidth:1 strokeColor:45.0 rightToLeft:45.0 style:{v10, 0.0}];
  v12 = *(v3 + *(type metadata accessor for BusinessLogoView() + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6E8, &unk_2149960A8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_214995EE0;
  *(v13 + 32) = a1;
  sub_214899B90(0, &qword_27CA1B6F0, 0x277CBDA58);
  v14 = a1;
  v15 = sub_21498F9E0();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v19[4] = sub_2148EB0DC;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2148E9B00;
  v19[3] = &block_descriptor_1;
  v17 = _Block_copy(v19);

  v18 = [v12 renderAvatarsForContacts:v15 scope:v11 imageHandler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id sub_2148E8C54(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_21498E0E0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  result = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a3 >> 62);
  if (a3 >> 62)
  {
    goto LABEL_66;
  }

  v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 <= 1)
  {
LABEL_68:
    if (!v12)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x216058EB0](0, a3);
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(a3 + 32);
    }

LABEL_80:
    __break(1u);
    return result;
  }

  while (1)
  {
    v40 = v6;
    v41 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6E8, &unk_2149960A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214995EE0;
    result = [objc_opt_self() descriptorForRequiredKeys];
    *(inited + 32) = result;
    v50 = a1;
    if ((inited & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x216058EB0](0, inited);
      goto LABEL_6;
    }

    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v14 = result;
    swift_unknownObjectRetain();
LABEL_6:
    v51 = [v14 isEqual_];
    result = swift_unknownObjectRelease();
    if ((inited & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x216058EB0](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v15 = *(inited + 32);
      swift_unknownObjectRetain();
    }

    v16 = [v15 isEqual_];
    swift_unknownObjectRelease();
    swift_setDeallocating();
    v17 = *(inited + 16);
    swift_arrayDestroy();
    v49 = v16;
    if (((v16 | v51) & 1) == 0)
    {
      goto LABEL_52;
    }

    v6 = objc_opt_self();

    v18 = sub_21498F840();

    v19 = [v6 componentsFromString_];

    sub_21498E0D0();
    v43 = sub_21498E0B0();
    v21 = v20;
    v42 = sub_21498E0C0();
    v48 = v21 == 0;
    v50 = v21;
    if (!(v21 | v22))
    {
      goto LABEL_51;
    }

    v23 = v22;
    if (v11)
    {
      v24 = sub_21498FE90();
      if (!v24)
      {
LABEL_50:

LABEL_51:
        (v40[1])(v10, v41);
        goto LABEL_52;
      }
    }

    else
    {
      v24 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_50;
      }
    }

    v37 = v11;
    v38 = v10;
    a1 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v24;
    v47 = a3 & 0xC000000000000001;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    if (v47)
    {
      result = MEMORY[0x216058EB0](a1, a3);
      goto LABEL_21;
    }

    if (a1 >= *(v39 + 16))
    {
      __break(1u);
      return MEMORY[0x216058EB0](0, a3);
    }

    result = *(a3 + 8 * a1 + 32);
LABEL_21:
    v11 = result;
    v10 = (a1 + 1);
    if (!__OFADD__(a1, 1))
    {
      break;
    }

    __break(1u);
LABEL_66:
    v35 = result;
    v36 = sub_21498FE90();
    result = v35;
    if (v36 < 2)
    {
      result = sub_21498FE90();
      v12 = result;
      goto LABEL_68;
    }
  }

  if (v51)
  {
    v25 = [result givenName];
    v6 = sub_21498F870();
    v27 = v26;

    if (!v49)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v6 = 0;
    v27 = 0;
    if (!v49)
    {
LABEL_24:
      v28 = 0;
      v29 = 0;
      v30 = v48;
      if (!v27)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  v31 = [v11 familyName];
  v28 = sub_21498F870();
  v29 = v32;

  v30 = v48;
  if (!v27)
  {
LABEL_31:
    if (!v29)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

LABEL_25:
  if (v50)
  {
    if (v6 == v43 && v27 == v50)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_214990080();
    }
  }

  else
  {
    v30 = 0;
  }

  if (!v29)
  {
LABEL_41:
    if (v23)
    {
LABEL_42:
      if ((v30 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_15;
    }

    if (v30)
    {
      goto LABEL_64;
    }

LABEL_48:

    v45 = v11;
    goto LABEL_16;
  }

LABEL_32:
  if (!v23)
  {

    goto LABEL_42;
  }

  if (v28 != v42 || v29 != v23)
  {
    v33 = sub_214990080();

    if ((v30 & 1) == 0)
    {
      if (v33)
      {
        goto LABEL_48;
      }

LABEL_43:

      goto LABEL_16;
    }

    if (v33)
    {
      goto LABEL_63;
    }

LABEL_15:

    v44 = v11;
LABEL_16:
    ++a1;
    if (v10 == v46)
    {
      while (1)
      {

        (v40[1])(v38, v41);
        v11 = v37;
        v34 = v44;
        if (v44)
        {
          break;
        }

        result = v45;
        if (v45)
        {
          return result;
        }

LABEL_52:
        if (v11)
        {
          result = sub_21498FE90();
          if (!result)
          {
            return result;
          }
        }

        else
        {
          result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            return result;
          }
        }

        if ((a3 & 0xC000000000000001) != 0)
        {
          return MEMORY[0x216058EB0](0, a3);
        }

        if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return *(a3 + 32);
        }

        __break(1u);
      }

      return v34;
    }

    goto LABEL_17;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_63:

LABEL_64:

  (v40[1])(v38, v41);

  return v11;
}

void sub_2148E929C(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v10, qword_281194E18);
    (*(v11 + 16))(v14, v16, v10);
    v17 = a2;
    v18 = sub_21498E670();
    v19 = sub_21498FBB0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33[1] = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33[0] = a3;
      v23 = v22;
      aBlock[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v24 = sub_214990100();
      v26 = sub_2149079F4(v24, v25, aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_21488E000, v18, v19, "Unable to get business logo metadata: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v27 = v23;
      a3 = v33[0];
      MEMORY[0x216059AC0](v27, -1, -1);
      MEMORY[0x216059AC0](v21, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    a3(0);
  }

  else if (a1)
  {
    v28 = [a1 businessId];
    if (!v28)
    {
      sub_21498F870();
      v28 = sub_21498F840();
    }

    v29 = *(a5 + *(type metadata accessor for BusinessLogoView() + 44));
    v30 = [objc_allocWithZone(MEMORY[0x277CF3610]) initWithBusinessId_];

    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    *(v31 + 24) = a4;
    aBlock[4] = sub_2148EB1A0;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2148EB894;
    aBlock[3] = &block_descriptor_28;
    v32 = _Block_copy(aBlock);

    [v29 fetchBusinessLogoForBusinessIdentifier:v30 completion:v32];
    _Block_release(v32);
  }

  else
  {
    a3(0);
  }
}

uint64_t sub_2148E9640(uint64_t a1, void *a2, void (*a3)(id))
{
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21498E1B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  if (v17)
  {
    v40 = v10;
    v41 = v7;
    v39 = v6;
    v20 = a3;
    v21 = [v17 logoURL];
    sub_21498E160();

    (*(v12 + 32))(v19, v16, v11);
    sub_21498E180();
    v22 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v23 = sub_21498F840();

    v24 = [v22 initWithContentsOfFile_];

    if (v24)
    {
      v25 = v24;
      v20(v24);

      return (*(v12 + 8))(v19, v11);
    }

    (*(v12 + 8))(v19, v11);
    a3 = v20;
    v6 = v39;
    v10 = v40;
    v7 = v41;
  }

  if (a2)
  {
    v27 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v6, qword_281194E18);
    (*(v7 + 16))(v10, v28, v6);
    v29 = a2;
    v30 = sub_21498E670();
    v31 = sub_21498FBB0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = v7;
      v33 = v32;
      v34 = swift_slowAlloc();
      v40 = v10;
      v35 = v34;
      v42 = v34;
      *v33 = 136315138;
      swift_getErrorValue();
      v36 = sub_214990100();
      v38 = sub_2149079F4(v36, v37, &v42);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_21488E000, v30, v31, "Unable to get business logo icon: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x216059AC0](v35, -1, -1);
      MEMORY[0x216059AC0](v33, -1, -1);

      (*(v41 + 8))(v40, v6);
      return (a3)(0);
    }

    (*(v7 + 8))(v10, v6);
  }

  return (a3)(0);
}

void sub_2148E9A74(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_2148E9B00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2148E9B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = sub_21498E6A0();
  v72 = *(v73 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21498E970();
  v70 = *(v77 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v77);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = (&v68 - v9);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v78 = *(v81 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - v11;
  v75 = sub_21498E350();
  v82 = *(v75 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v75);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B740, &qword_2149960E8);
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = type metadata accessor for BusinessLogoView();
  v20 = *(*(v19 - 1) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v23 + *(v21 + 28)) = MEMORY[0x277D84F90];
  v24 = (v23 + *(v21 + 40));
  sub_21498E8C0();
  sub_2148EB734(&qword_27CA1A858, MEMORY[0x277D23330]);
  v89 = sub_21498ED20();
  *v24 = v89;
  v24[1] = v25;
  v26 = v19[11];
  v87 = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  *(v23 + v26) = v87;
  v27 = v19[12];
  v88 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v23 + v27) = v88;
  v28 = v19[13];
  v86 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v23 + v28) = v86;
  v29 = v19[14];
  v30 = [objc_opt_self() defaultSettings];
  v31 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

  v85 = v31;
  *(v23 + v29) = v31;
  v32 = (v23 + v19[15]);
  v94 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B698, &qword_214995F40);
  sub_21498F400();
  v33 = *(&v92 + 1);
  v84 = v92;
  *v32 = v92;
  v32[1] = v33;
  v35 = a1[3];
  v34 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_2148EB2F0();
  v36 = v90;
  sub_2149901B0();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  else
  {
    v37 = v82;
    LOBYTE(v92) = 0;
    v38 = sub_21498FF20();
    v41 = v39;
    v90 = v15;
    if (!v39)
    {
      v42 = v14;
      sub_21498E340();
      v43 = sub_21498E330();
      v45 = v44;
      (*(v37 + 8))(v42, v75);
      v41 = v45;
      v38 = v43;
    }

    v46 = v81;
    v47 = v79;
    *v23 = v38;
    v23[1] = v41;
    v82 = v41;
    LOBYTE(v92) = 1;
    sub_2148EB344();
    v48 = v90;
    sub_21498FFA0();
    (*(v78 + 32))(v23 + v19[5], v47, v46);
    LOBYTE(v92) = 2;
    v49 = v76;
    v79 = 0;
    sub_21498FF40();
    sub_2148EB3A8(v49, v23 + v19[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B758, &qword_2149960F0);
    LOBYTE(v92) = 4;
    sub_2148EB418();
    sub_21498FF40();
    v50 = v48;
    v51 = MEMORY[0x277D84F90];
    if (v94)
    {
      v52 = *(v94 + 16);
      if (v52)
      {
        v69 = v18;
        v93 = MEMORY[0x277D84F90];
        v53 = v94;
        sub_2148A9CE0(0, v52, 0);
        v51 = v93;
        v54 = v70 + 16;
        v76 = *(v70 + 16);
        v55 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v68 = v53;
        v56 = v53 + v55;
        v75 = *(v70 + 72);
        v70 += 8;
        v57 = v80;
        do
        {
          v58 = v77;
          v59 = v54;
          v76(v57, v56, v77);
          sub_21498E960();
          v57 = v80;
          (*v70)(v80, v58);
          v93 = v51;
          v61 = *(v51 + 16);
          v60 = *(v51 + 24);
          v62 = v61 + 1;
          if (v61 >= v60 >> 1)
          {
            sub_2148A9CE0((v60 > 1), v61 + 1, 1);
            v62 = v61 + 1;
            v57 = v80;
            v51 = v93;
          }

          *(v51 + 16) = v62;
          sub_2148970B8(&v92, v51 + 40 * v61 + 32);
          v56 += v75;
          --v52;
          v54 = v59;
        }

        while (v52);

        v50 = v90;
        v18 = v69;
      }

      else
      {
      }
    }

    *(v23 + v19[8]) = v51;
    LOBYTE(v92) = 3;
    sub_2148EB734(&qword_27CA1B770, MEMORY[0x277D231A8]);
    v63 = v71;
    v64 = v73;
    sub_21498FFA0();
    v65 = v74;
    v66 = v50;
    v67 = v72;
    (*(v83 + 8))(v18, v66);
    (*(v67 + 32))(v23 + v19[9], v63, v64);
    sub_2148EA984(v23, v65);
    __swift_destroy_boxed_opaque_existential_1(v91);
    return sub_2148EB4CC(v23);
  }
}

uint64_t sub_2148EA604(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148EB734(&qword_27CA1B6A0, type metadata accessor for BusinessLogoView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148EA688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148EB734(&qword_27CA1B6A8, type metadata accessor for BusinessLogoView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148EA704(uint64_t a1)
{
  v2 = sub_2148EB734(&qword_27CA1B6A8, type metadata accessor for BusinessLogoView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148EA780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148EB734(&qword_27CA1B6C0, type metadata accessor for BusinessLogoView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148EA83C()
{
  sub_2148EB734(&qword_27CA1B6A0, type metadata accessor for BusinessLogoView);
  sub_2148EB734(&qword_27CA1B6A8, type metadata accessor for BusinessLogoView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2148EA984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessLogoView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148EA9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessLogoView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148EAA4C()
{
  v2 = *(type metadata accessor for BusinessLogoView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_214899138;

  return sub_2148E74E8(v4, v5, v0 + v3, v7, v8);
}

uint64_t sub_2148EAB68(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BusinessLogoView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_214899964;

  return sub_2148E7944(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

void sub_2148EACBC(void *a1)
{
  v3 = *(type metadata accessor for BusinessLogoView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  sub_2148E868C(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_2148EAD68()
{
  v0 = sub_21498FEF0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_2148EADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v4 = type metadata accessor for BusinessLogoView();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  if (qword_27CA19FD8 != -1)
  {
    swift_once();
  }

  sub_21498E580();
  sub_21498E540();
  v6 = objc_allocWithZone(MEMORY[0x277CF35F0]);
  v7 = sub_21498F840();
  v8 = sub_21498F840();

  v9 = sub_21498F840();

  v10 = [v6 initWithEmail:v7 fullDomain:v8 topLevelDomain:v9];

  v11 = *(v17 + *(v4 + 44));
  sub_2148EA984(v17, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v13 = swift_allocObject();
  v14 = v19;
  *(v13 + 16) = v18;
  *(v13 + 24) = v14;
  sub_2148EA9E8(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_2148EB11C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148EB894;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  [v11 fetchBusinessMetadataForEmailIdentifier:v10 completion:v15];
  _Block_release(v15);
}

void sub_2148EB040(void *a1)
{
  v3 = *(type metadata accessor for BusinessLogoView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2148E7D48(a1, v1 + v4, v5);
}

uint64_t sub_2148EB0DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2148EB11C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for BusinessLogoView() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_2148E929C(a1, a2, v6, v7, v8);
}

unint64_t sub_2148EB1A8()
{
  result = qword_27CA1B728;
  if (!qword_27CA1B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B720, &qword_2149960E0);
    sub_2148EB234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B728);
  }

  return result;
}

unint64_t sub_2148EB234()
{
  result = qword_27CA1B730;
  if (!qword_27CA1B730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B708, &qword_2149960C8);
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B730);
  }

  return result;
}

unint64_t sub_2148EB2F0()
{
  result = qword_27CA1B748;
  if (!qword_27CA1B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B748);
  }

  return result;
}

unint64_t sub_2148EB344()
{
  result = qword_27CA1B750;
  if (!qword_27CA1B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B610, &qword_214995EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B750);
  }

  return result;
}

uint64_t sub_2148EB3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2148EB418()
{
  result = qword_27CA1B760;
  if (!qword_27CA1B760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B758, &qword_2149960F0);
    sub_2148EB734(&qword_27CA1B768, MEMORY[0x277D23390]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B760);
  }

  return result;
}

uint64_t sub_2148EB4CC(uint64_t a1)
{
  v2 = type metadata accessor for BusinessLogoView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2148EB538()
{
  result = qword_27CA1B778;
  if (!qword_27CA1B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B6C8, &unk_214996078);
    sub_2148EB5F4();
    sub_2148EB734(&qword_27CA1B7A0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B778);
  }

  return result;
}

unint64_t sub_2148EB5F4()
{
  result = qword_27CA1B780;
  if (!qword_27CA1B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B788, &qword_214996108);
    sub_2148EB678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B780);
  }

  return result;
}

unint64_t sub_2148EB678()
{
  result = qword_27CA1B790;
  if (!qword_27CA1B790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B798, &qword_214996110);
    sub_2148EB1A8();
    sub_2148EB734(&qword_27CA1AD60, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B790);
  }

  return result;
}

uint64_t sub_2148EB734(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2148EB780()
{
  result = qword_27CA1B7A8;
  if (!qword_27CA1B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B7A8);
  }

  return result;
}

unint64_t sub_2148EB7D8()
{
  result = qword_27CA1B7B0;
  if (!qword_27CA1B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B7B0);
  }

  return result;
}

unint64_t sub_2148EB830()
{
  result = qword_27CA1B7B8;
  if (!qword_27CA1B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B7B8);
  }

  return result;
}

uint64_t type metadata accessor for GradientIconView()
{
  result = qword_27CA1B7C0;
  if (!qword_27CA1B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148EB90C()
{
  sub_2148EBA9C(319, &qword_27CA1A828, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2148EBA38();
    if (v1 <= 0x3F)
    {
      sub_2148EBA9C(319, &qword_27CA1B648, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2148B0744();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2148EBA38()
{
  if (!qword_27CA1B650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A668, &qword_2149926D8);
    v0 = sub_21498FA30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1B650);
    }
  }
}

void sub_2148EBA9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2148EBB00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v41 - v10;
  v12 = type metadata accessor for GradientIconView();
  sub_2148ED338(v2 + v12[7], v11);
  v13 = sub_21498E900();
  v45 = *(v13 - 8);
  v14 = *(v45 + 48);
  if (v14(v11, 1, v13) == 1)
  {
    sub_2148ED3A8(v11);
    sub_2148ED338(v2 + v12[5], v9);
    v17 = v14(v9, 1, v13);
    if (v17 == 1)
    {
      sub_2148ED3A8(v9);
      v30 = v46;
      goto LABEL_9;
    }

    v42 = v12;
    v18 = v12[10];
    v43 = v2;
    v15 = (v2 + v18);
    if (*v15)
    {
      v19 = *v15;

      v41[0] = sub_21498E8F0();
      v41[1] = v31;

      v32 = *(v45 + 8);
      v32(v9, v13);
      v33 = v44;
      sub_2148ED338(v43 + v42[6], v44);
      v34 = v14(v33, 1, v13);
      if (v34 != 1)
      {

        sub_21498E8F0();

        v32(v33, v13);
        v35 = sub_21498F840();

        v36 = [objc_opt_self() bundleWithIdentifier_];

        sub_21498F3F0();
        v37 = *(v43 + v42[8]);
        v38 = sub_21498F3D0();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B828, &qword_2149963D8);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_214991BE0;
        *(v39 + 32) = sub_21498F280();
        *(v39 + 40) = sub_21498F2C0();
        MEMORY[0x216058560](v39);
        sub_21498F500();
        sub_21498F4F0();
        sub_21498EC50();
        *&v47 = v38;
        *(&v47 + 1) = v54;
        v48 = v55;
        v49 = v56;
        v50 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
        sub_2148ED410();
        sub_21498EE90();
        v20 = v57;
        v21 = v58;
        v22 = v59;
        v23 = v60;
        v30 = v46;
        goto LABEL_10;
      }

      sub_2148ED3A8(v33);
      v30 = v46;
LABEL_9:
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v50 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
      sub_2148ED410();
      sub_21498EE90();
      v20 = v57;
      v21 = v58;
      v22 = v59;
      v23 = v60;
LABEL_10:
      v53 = v23;
      v52 = 1;
      v47 = v20;
      v48 = v21;
      v49 = v22;
      v50 = v23;
      v51 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B818, &qword_2149963D0);
      sub_2148ED410();
      sub_2148ED500();
      result = sub_21498EE90();
      goto LABEL_11;
    }
  }

  else
  {
    v15 = (v2 + v12[10]);
    if (*v15)
    {
      v16 = *v15;

      sub_21498E8F0();

      (*(v45 + 8))(v11, v13);
      sub_21498F3E0();
      v26 = *(v2 + v12[8]);
      v27 = sub_21498F3D0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B828, &qword_2149963D8);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_214991BE0;
      *(v28 + 32) = sub_21498F280();
      *(v28 + 40) = sub_21498F2C0();
      MEMORY[0x216058560](v28);
      sub_21498F500();
      sub_21498F4F0();
      sub_21498EC50();
      v53 = 0;
      *&v47 = v27;
      *(&v47 + 1) = v54;
      v48 = v55;
      v49 = v56;
      v51 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B7F8, &qword_2149963C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B818, &qword_2149963D0);
      sub_2148ED410();
      sub_2148ED500();
      result = sub_21498EE90();
      v30 = v46;
LABEL_11:
      v24 = v58;
      v25 = v59;
      *v30 = v57;
      *(v30 + 16) = v24;
      *(v30 + 32) = v25;
      *(v30 + 48) = v60;
      return result;
    }
  }

  v40 = v15[1];
  sub_21498E8C0();
  sub_2148ED650(&qword_27CA1A858, MEMORY[0x277D23330]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148EC300()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148EC3E4()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148EC4B4()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148EC594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148ED8FC();
  *a2 = result;
  return result;
}

void sub_2148EC5C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEE00737265696669;
  v6 = 0x646F4D6567616D69;
  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000002149A0770;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x614E6D6574737973;
    v3 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2148EC664()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x646F4D6567616D69;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614E6D6574737973;
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

uint64_t sub_2148EC700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148ED8FC();
  *a1 = result;
  return result;
}

uint64_t sub_2148EC728(uint64_t a1)
{
  v2 = sub_2148ED58C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EC764(uint64_t a1)
{
  v2 = sub_2148ED58C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148EC7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v66 = sub_21498E970();
  v62 = *(v66 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v70 = &v59 - v11;
  v12 = sub_21498E350();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B830, &unk_2149963E0);
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = type metadata accessor for GradientIconView();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v24 + *(v22 + 36)) = MEMORY[0x277D84F90];
  v25 = v24 + *(v22 + 40);
  sub_21498E8C0();
  sub_2148ED650(&qword_27CA1A858, MEMORY[0x277D23330]);
  v72 = sub_21498ED20();
  *v25 = v72;
  *(v25 + 1) = v26;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148ED58C();
  v28 = v73;
  sub_2149901B0();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v15;
  v61 = v24;
  v73 = v20;
  LOBYTE(v74) = 0;
  v30 = sub_21498FF20();
  v33 = v31;
  v60 = v16;
  if (!v31)
  {
    sub_21498E340();
    v34 = sub_21498E330();
    v33 = v35;
    (*(v67 + 8))(v29, v68);
    v30 = v34;
  }

  v36 = v70;
  v37 = v61;
  *v61 = v30;
  v37[1] = v33;
  v70 = v33;
  sub_21498E900();
  LOBYTE(v74) = 1;
  sub_2148ED650(&qword_27CA1A2C0, MEMORY[0x277D23340]);
  v38 = v19;
  sub_21498FF40();
  v39 = v36;
  v40 = v73;
  sub_2148ED5E0(v39, v37 + *(v73 + 28));
  LOBYTE(v74) = 3;
  v41 = v69;
  v68 = 0;
  sub_21498FF40();
  sub_2148ED5E0(v41, v37 + *(v40 + 20));
  LOBYTE(v74) = 4;
  v42 = v64;
  sub_21498FF40();
  sub_2148ED5E0(v42, v37 + *(v40 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B758, &qword_2149960F0);
  LOBYTE(v74) = 2;
  sub_2148EB418();
  sub_21498FF40();
  v43 = a1;
  v44 = v37;
  v69 = v38;
  v45 = v76;
  v46 = MEMORY[0x277D84F90];
  v47 = v71;
  if (v76)
  {
    v48 = *(v76 + 16);
    if (v48)
    {
      v75 = MEMORY[0x277D84F90];
      sub_2148A9CE0(0, v48, 0);
      v46 = v75;
      v72 = *(v62 + 16);
      v49 = *(v62 + 80);
      v68 = v45;
      v50 = v45 + ((v49 + 32) & ~v49);
      v70 = *(v62 + 72);
      v51 = (v62 + 8);
      v52 = v66;
      do
      {
        v53 = v65;
        v72(v65, v50, v52);
        sub_21498E960();
        v52 = v66;
        (*v51)(v53, v66);
        v75 = v46;
        v55 = *(v46 + 16);
        v54 = *(v46 + 24);
        v56 = v55 + 1;
        if (v55 >= v54 >> 1)
        {
          sub_2148A9CE0((v54 > 1), v55 + 1, 1);
          v56 = v55 + 1;
          v52 = v66;
          v46 = v75;
        }

        *(v46 + 16) = v56;
        sub_2148970B8(&v74, v46 + 40 * v55 + 32);
        v50 += v70;
        --v48;
      }

      while (v48);

      v43 = a1;
      v57 = v63;
      v58 = v73;
      v44 = v61;
      v47 = v71;
      goto LABEL_15;
    }
  }

  v58 = v73;
  v57 = v63;
LABEL_15:
  (*(v47 + 8))(v69, v60);
  *(v44 + *(v58 + 32)) = v46;
  sub_2148ED698(v44, v57);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_2148ED6FC(v44);
}

uint64_t sub_2148ECFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148ED650(&qword_27CA1B7D0, type metadata accessor for GradientIconView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148ED03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148ED650(&qword_27CA1B7D8, type metadata accessor for GradientIconView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148ED0B8(uint64_t a1)
{
  v2 = sub_2148ED650(&qword_27CA1B7D8, type metadata accessor for GradientIconView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148ED134(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148ED650(&qword_27CA1B7F0, type metadata accessor for GradientIconView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148ED1F0()
{
  sub_2148ED650(&qword_27CA1B7D0, type metadata accessor for GradientIconView);
  sub_2148ED650(&qword_27CA1B7D8, type metadata accessor for GradientIconView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2148ED338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148ED3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2148ED410()
{
  result = qword_27CA1B800;
  if (!qword_27CA1B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B7F8, &qword_2149963C0);
    sub_2148ED49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B800);
  }

  return result;
}

unint64_t sub_2148ED49C()
{
  result = qword_27CA1B808;
  if (!qword_27CA1B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B810, &qword_2149963C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B808);
  }

  return result;
}

unint64_t sub_2148ED500()
{
  result = qword_27CA1B820;
  if (!qword_27CA1B820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B818, &qword_2149963D0);
    sub_2148ED410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B820);
  }

  return result;
}

unint64_t sub_2148ED58C()
{
  result = qword_27CA1B838;
  if (!qword_27CA1B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B838);
  }

  return result;
}

uint64_t sub_2148ED5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148ED650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2148ED698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientIconView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148ED6FC(uint64_t a1)
{
  v2 = type metadata accessor for GradientIconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2148ED768()
{
  result = qword_27CA1B840;
  if (!qword_27CA1B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B848, &qword_214996408);
    sub_2148ED410();
    sub_2148ED500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B840);
  }

  return result;
}

unint64_t sub_2148ED7F8()
{
  result = qword_27CA1B850;
  if (!qword_27CA1B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B850);
  }

  return result;
}

unint64_t sub_2148ED850()
{
  result = qword_27CA1B858;
  if (!qword_27CA1B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B858);
  }

  return result;
}

unint64_t sub_2148ED8A8()
{
  result = qword_27CA1B860;
  if (!qword_27CA1B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B860);
  }

  return result;
}

uint64_t sub_2148ED8FC()
{
  v0 = sub_21498FEF0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148ED948()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148ED9BC()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148EDA10@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2148EDB2C()
{
  result = qword_27CA1B868;
  if (!qword_27CA1B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B868);
  }

  return result;
}

unint64_t sub_2148EDB80()
{
  result = qword_27CA1B870;
  if (!qword_27CA1B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B870);
  }

  return result;
}

uint64_t sub_2148EDBD4(uint64_t a1, unint64_t a2)
{
  v53 = sub_21498E690();
  v50 = *(v53 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - v9;
  v11 = sub_21498E3B0();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21498E320();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v51 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  sub_21498E310();
  v22 = v14;
  sub_21498E3A0();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v24 = v23;
  v52 = a1;
  v25 = a2;
  v26 = sub_21498F840();
  v27 = [v24 objectForKey_];

  if (v27)
  {
    sub_21498FD40();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  v28 = v53;
  if (!*(&v57 + 1))
  {
    sub_21489DFCC(v58, &qword_27CA1B878, qword_214996678);
    (*(v16 + 56))(v10, 1, 1, v15);
    goto LABEL_12;
  }

  v29 = v6;
  v30 = swift_dynamicCast();
  (*(v16 + 56))(v10, v30 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
LABEL_12:
    sub_21489DFCC(v10, &qword_27CA1ABA0, &qword_214993E20);
LABEL_13:
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v43 = v42;
    v44 = sub_21498E2B0();
    v45 = sub_21498F840();
    [v43 setObject:v44 forKey:v45];

    (*(v54 + 8))(v22, v55);
    (*(v16 + 8))(v21, v15);
    return 1;
  }

  v31 = v51;
  (*(v16 + 32))(v51, v10, v15);
  if ((sub_21498E390() & 1) == 0)
  {
    (*(v16 + 8))(v31, v15);
    goto LABEL_13;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v28, qword_281194E18);
  v33 = v50;
  (*(v50 + 16))(v29, v32, v28);

  v34 = sub_21498E670();
  v35 = sub_21498FB90();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v49 = v29;
    v37 = v36;
    v38 = swift_slowAlloc();
    v48 = v34;
    v39 = v38;
    *&v58[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_2149079F4(v52, v25, v58);
    v40 = v35;
    v41 = v48;
    _os_log_impl(&dword_21488E000, v48, v40, "[shouldExecuteAction] Action already executed today for key: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x216059AC0](v39, -1, -1);
    MEMORY[0x216059AC0](v37, -1, -1);

    (*(v33 + 8))(v49, v28);
  }

  else
  {

    (*(v33 + 8))(v29, v28);
  }

  v47 = *(v16 + 8);
  v47(v51, v15);
  (*(v54 + 8))(v22, v55);
  v47(v21, v15);
  return 0;
}

uint64_t sub_2148EE1D0()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2148EE218()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PreferencesAPIRequest = type metadata accessor for GetPreferencesAPIRequest();
  v24.receiver = v0;
  v24.super_class = PreferencesAPIRequest;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD000000000000026, 0x80000002149A1E00, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498BF80(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD00000000000002DLL, 0x80000002149A1E30);

    return v23[0];
  }

  return v8;
}

id sub_2148EE510(void *a1)
{
  v1 = a1;
  sub_2148EE218();

  v2 = sub_21498F840();

  return v2;
}

id sub_2148EE578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetPreferencesAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetPreferencesAPIRequest()
{
  result = qword_281191358;
  if (!qword_281191358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant16SharedPreferenceVSg(uint64_t a1)
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2148EE67C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 49))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_2148EE6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2148EE754(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B888, &qword_214996788);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF2D8();
  sub_2149901C0();
  v10 = *(v2 + 16);
  v14 = *v2;
  v15 = v10;
  v16 = *(v2 + 32);
  v17 = *(v2 + 48);
  sub_2148EF380(v2, v13);
  sub_2148EF3B8();
  sub_21498FFE0();
  sub_2148D98E8(v14, *(&v14 + 1));
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2148EE8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1E60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_214990080();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2148EE980(uint64_t a1)
{
  v2 = sub_2148EF2D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EE9BC(uint64_t a1)
{
  v2 = sub_2148EF2D8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148EE9F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2148EF140(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_2148EEA48(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_2148EE754(a1);
}

uint64_t sub_2148EEA8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8A8, &qword_214996948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF998();
  sub_2149901C0();
  v15 = *v3;
  v16 = *(v3 + 2);
  v14 = 0;
  sub_2148EFA40();
  sub_21498FFE0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = *(v3 + 24);
  v16 = *(v3 + 5);
  v14 = 1;
  sub_21498FFE0();
  v12 = *(v3 + 48);
  LOBYTE(v15) = 2;
  sub_21498FFD0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2148EEC6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8C8, &qword_214996AE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EFE34();
  sub_2149901C0();
  v10[15] = 0;
  sub_214990000();
  if (!v1)
  {
    v10[14] = 1;
    sub_214990020();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2148EEE08()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_2148EEE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148EF5F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148EEE88(uint64_t a1)
{
  v2 = sub_2148EF998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EEEC4(uint64_t a1)
{
  v2 = sub_2148EF998();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148EEF00@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2148EF718(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_2148EEF68()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_2148EEFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

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

uint64_t sub_2148EF078(uint64_t a1)
{
  v2 = sub_2148EFE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148EF0B4(uint64_t a1)
{
  v2 = sub_2148EFE34();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2148EF0F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_2148EFC58(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_2148EF120(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_2148EEC6C(a1);
}

uint64_t sub_2148EF140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B880, &qword_214996780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF2D8();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2148EF32C();
  sub_21498FF40();
  (*(v6 + 8))(v9, v5);
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v16 = v19;
  v17 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v15 = v16;
  *a2 = v17;
  *(a2 + 16) = v15;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_2148EF2D8()
{
  result = qword_2811911B0;
  if (!qword_2811911B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811911B0);
  }

  return result;
}

unint64_t sub_2148EF32C()
{
  result = qword_281191838;
  if (!qword_281191838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191838);
  }

  return result;
}

unint64_t sub_2148EF3B8()
{
  result = qword_27CA1B890;
  if (!qword_27CA1B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B890);
  }

  return result;
}

uint64_t sub_2148EF41C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_2148EF478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2148EF4F0()
{
  result = qword_27CA1B898;
  if (!qword_27CA1B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B898);
  }

  return result;
}

unint64_t sub_2148EF548()
{
  result = qword_2811911A0;
  if (!qword_2811911A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811911A0);
  }

  return result;
}

unint64_t sub_2148EF5A0()
{
  result = qword_2811911A8;
  if (!qword_2811911A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811911A8);
  }

  return result;
}

uint64_t sub_2148EF5F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000002149A1E80 == a2;
  if (v3 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002149A1EA0 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A1EC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

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

uint64_t sub_2148EF718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8A0, &qword_214996940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EF998();
  sub_2149901B0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    sub_2148EF9EC();
    sub_21498FF40();
    v11 = v24;
    v21 = v25;
    v22 = v23;
    v26 = 1;
    sub_21498FF40();
    v12 = v24;
    v19 = v25;
    v20 = v23;
    LOBYTE(v23) = 2;
    v13 = sub_21498FF30();
    (*(v6 + 8))(v9, v5);

    __swift_destroy_boxed_opaque_existential_1(a1);

    v15 = v21;
    *a2 = v22;
    *(a2 + 8) = v11;
    v16 = v19;
    v17 = v20;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v12;
    *(a2 + 40) = v16;
    *(a2 + 48) = v13;
  }

  return result;
}

unint64_t sub_2148EF998()
{
  result = qword_281191850;
  if (!qword_281191850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191850);
  }

  return result;
}

unint64_t sub_2148EF9EC()
{
  result = qword_281191B90;
  if (!qword_281191B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191B90);
  }

  return result;
}

unint64_t sub_2148EFA40()
{
  result = qword_27CA1B8B0;
  if (!qword_27CA1B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8B0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2148EFAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2148EFB00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2148EFB54()
{
  result = qword_27CA1B8B8;
  if (!qword_27CA1B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8B8);
  }

  return result;
}

unint64_t sub_2148EFBAC()
{
  result = qword_281191840;
  if (!qword_281191840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191840);
  }

  return result;
}

unint64_t sub_2148EFC04()
{
  result = qword_281191848;
  if (!qword_281191848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191848);
  }

  return result;
}

double sub_2148EFC58(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B8C0, &qword_214996AD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148EFE34();
  sub_2149901B0();
  if (!v1)
  {
    v14 = 0;
    sub_21498FF60();
    v13 = 1;
    sub_21498FF80();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_2148EFE34()
{
  result = qword_281191BA8[0];
  if (!qword_281191BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281191BA8);
  }

  return result;
}

unint64_t sub_2148EFE9C()
{
  result = qword_27CA1B8D0;
  if (!qword_27CA1B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8D0);
  }

  return result;
}

unint64_t sub_2148EFEF4()
{
  result = qword_281191B98;
  if (!qword_281191B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191B98);
  }

  return result;
}

unint64_t sub_2148EFF4C()
{
  result = qword_281191BA0;
  if (!qword_281191BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191BA0);
  }

  return result;
}

id sub_2148EFFA0()
{
  result = sub_2148EFFC0();
  qword_27CA31008 = result;
  return result;
}

id sub_2148EFFC0()
{
  v0 = [objc_allocWithZone(sub_21498E850()) init];
  type metadata accessor for DateText();
  sub_2148F0AC8(&qword_27CA1B8D8, type metadata accessor for DateText);
  v1 = v0;
  sub_21498E820();
  type metadata accessor for MALoadRemoteDataAction();
  sub_2148F0AC8(&qword_27CA1B8E0, type metadata accessor for MALoadRemoteDataAction);
  sub_21498E830();
  type metadata accessor for CustomRemoteContent();
  sub_2148F0AC8(&qword_27CA1A868, type metadata accessor for CustomRemoteContent);
  sub_21498E820();
  type metadata accessor for MANavigationLinkView(0);
  sub_2148F0AC8(&qword_27CA1B8E8, type metadata accessor for MANavigationLinkView);
  sub_21498E820();
  sub_2148F0924();
  sub_21498E840();
  sub_2148F0978();
  sub_21498E840();
  type metadata accessor for DelayedSetAction();
  sub_2148F0AC8(&qword_27CA1B900, type metadata accessor for DelayedSetAction);
  sub_21498E830();
  type metadata accessor for MAHttpRequestAction();
  sub_2148F0AC8(&qword_27CA1B908, type metadata accessor for MAHttpRequestAction);
  sub_21498E830();
  type metadata accessor for IntervalGuardAction();
  sub_2148F0AC8(&qword_27CA1A2A0, type metadata accessor for IntervalGuardAction);
  sub_21498E830();
  type metadata accessor for EmitNavigationEventAction();
  sub_2148F0AC8(&qword_27CA1B910, type metadata accessor for EmitNavigationEventAction);
  sub_21498E830();
  type metadata accessor for MathSetAction();
  sub_2148F0AC8(&qword_27CA1B918, type metadata accessor for MathSetAction);
  sub_21498E830();
  type metadata accessor for MACoreAnalyticsLogging();
  sub_2148F0AC8(&qword_27CA1B920, type metadata accessor for MACoreAnalyticsLogging);
  sub_21498E830();
  type metadata accessor for MAInvalidateMailCleanupCacheAction();
  sub_2148F0AC8(&qword_27CA1B928, type metadata accessor for MAInvalidateMailCleanupCacheAction);
  sub_21498E830();
  type metadata accessor for GradientIconView();
  sub_2148F0AC8(&qword_27CA1B7D0, type metadata accessor for GradientIconView);
  sub_21498E820();
  type metadata accessor for SendNotificationAction();
  sub_2148F0AC8(&qword_27CA1B930, type metadata accessor for SendNotificationAction);
  sub_21498E830();
  type metadata accessor for DeeplinkAction();
  sub_2148F0AC8(&qword_27CA1A3C0, type metadata accessor for DeeplinkAction);
  sub_21498E830();
  sub_2148F09CC();
  sub_21498E840();
  type metadata accessor for AllowsHitTestingModifier();
  sub_2148F0AC8(&qword_27CA1B940, type metadata accessor for AllowsHitTestingModifier);
  sub_21498E840();
  type metadata accessor for BindableMANavigationLink(0);
  sub_2148F0AC8(&qword_27CA1B948, type metadata accessor for BindableMANavigationLink);
  sub_21498E820();
  type metadata accessor for DelayedDisplay();
  sub_2148F0AC8(&qword_27CA1B950, type metadata accessor for DelayedDisplay);
  sub_21498E840();
  sub_2148F0A20();
  sub_21498E820();
  sub_2148F0A74();
  sub_21498E820();
  type metadata accessor for OBKLiftUIView(0);
  sub_2148F0AC8(&qword_27CA1AC30, type metadata accessor for OBKLiftUIView);
  sub_21498E820();
  type metadata accessor for MAUnsubscribeAction();
  sub_2148F0AC8(&qword_27CA1A5A8, type metadata accessor for MAUnsubscribeAction);
  sub_21498E830();
  type metadata accessor for BusinessLogoView();
  sub_2148F0AC8(&qword_27CA1B6A0, type metadata accessor for BusinessLogoView);
  sub_21498E820();
  sub_2148F0B10();
  sub_21498E820();

  return v1;
}

unint64_t sub_2148F0924()
{
  result = qword_27CA1B8F0;
  if (!qword_27CA1B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8F0);
  }

  return result;
}

unint64_t sub_2148F0978()
{
  result = qword_27CA1B8F8;
  if (!qword_27CA1B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B8F8);
  }

  return result;
}

unint64_t sub_2148F09CC()
{
  result = qword_27CA1B938;
  if (!qword_27CA1B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B938);
  }

  return result;
}

unint64_t sub_2148F0A20()
{
  result = qword_27CA1B958;
  if (!qword_27CA1B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B958);
  }

  return result;
}

unint64_t sub_2148F0A74()
{
  result = qword_27CA1B960;
  if (!qword_27CA1B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B960);
  }

  return result;
}

uint64_t sub_2148F0AC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2148F0B10()
{
  result = qword_27CA1B968;
  if (!qword_27CA1B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B968);
  }

  return result;
}

uint64_t sub_2148F0B64()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2148F0BAC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateAutomationRecommendationAPIRequest(0);
  v24.receiver = v0;
  v24.super_class = updated;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD00000000000003FLL, 0x80000002149A2150, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD00000000000002CLL, 0x80000002149A2190);

    return v23[0];
  }

  return v8;
}

unint64_t sub_2148F0F4C()
{
  if (*v0)
  {
    result = 0x6F54737574617473;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_2148F0F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1110 == a2 || (sub_214990080() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F54737574617473 && a2 == 0xEE00657461647055)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_214990080();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2148F1088(uint64_t a1)
{
  v2 = sub_2148F1B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F10C4(uint64_t a1)
{
  v2 = sub_2148F1B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148F119C()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2148F11E4()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateUnsubscribeRecommendationAPIRequest(0);
  v24.receiver = v0;
  v24.super_class = updated;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD000000000000040, 0x80000002149A20D0, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD000000000000026, 0x80000002149A2120);

    return v23[0];
  }

  return v8;
}

id sub_2148F14EC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21498F840();

  return v5;
}

id sub_2148F1574(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2148F164C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  sub_2149901C0();
  v23 = 0;
  v19 = v21[3];
  sub_214990000();
  if (!v19)
  {
    v22 = 1;
    sub_214990000();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2148F17DC()
{
  if (*v0)
  {
    result = 0x6F54737574617473;
  }

  else
  {
    result = 0x6D457265646E6573;
  }

  *v0;
  return result;
}

uint64_t sub_2148F182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D457265646E6573 && a2 == 0xEB000000006C6961;
  if (v6 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F54737574617473 && a2 == 0xEE00657461647055)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

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

uint64_t sub_2148F1914(uint64_t a1)
{
  v2 = sub_2148F1B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F1950(uint64_t a1)
{
  v2 = sub_2148F1B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148F19D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_2148F1BC4(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2148F1A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2148F1ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2148F1B1C()
{
  result = qword_27CA1B998;
  if (!qword_27CA1B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B998);
  }

  return result;
}

unint64_t sub_2148F1B70()
{
  result = qword_27CA1B9A8;
  if (!qword_27CA1B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9A8);
  }

  return result;
}

uint64_t sub_2148F1BC4(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_2149901B0();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_21498FF60();
    v16 = 1;
    sub_21498FF60();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_2148F1DD8()
{
  result = qword_27CA1B9C0;
  if (!qword_27CA1B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9C0);
  }

  return result;
}

unint64_t sub_2148F1E30()
{
  result = qword_27CA1B9C8;
  if (!qword_27CA1B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9C8);
  }

  return result;
}

unint64_t sub_2148F1E88()
{
  result = qword_27CA1B9D0;
  if (!qword_27CA1B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9D0);
  }

  return result;
}

unint64_t sub_2148F1EE0()
{
  result = qword_27CA1B9D8;
  if (!qword_27CA1B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9D8);
  }

  return result;
}

unint64_t sub_2148F1F38()
{
  result = qword_27CA1B9E0;
  if (!qword_27CA1B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9E0);
  }

  return result;
}

unint64_t sub_2148F1F90()
{
  result = qword_27CA1B9E8;
  if (!qword_27CA1B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B9E8);
  }

  return result;
}

uint64_t MATip.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MATip.tipId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MATip.icon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2148F20B8(v2, v3);
}

uint64_t sub_2148F20B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 MATip.icon.setter(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_2148AF724(v1[2], v1[3]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v6;
  return result;
}

uint64_t MATip.title.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MATip.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MATip.message.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t MATip.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MATip.submitButtonLabel.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t MATip.submitButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t MATip.submitAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

uint64_t sub_2148F2328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B9F0, &qword_2149970D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 MATip.submitAction.setter(uint64_t a1)
{
  v3 = v1[7];
  v8[0] = v1[6];
  v8[1] = v3;
  v4 = v1[9];
  v8[2] = v1[8];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[6] = *a1;
  v1[7] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[8] = result;
  v1[9] = v7;
  return result;
}

uint64_t MATip.cancelButtonLabel.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t MATip.cancelButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t MATip.cancelAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v7[0] = v1[11];
  v7[1] = v2;
  v4 = v1[14];
  v8 = v1[13];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

__n128 MATip.cancelAction.setter(uint64_t a1)
{
  v3 = v1[12];
  v8[0] = v1[11];
  v8[1] = v3;
  v4 = v1[14];
  v8[2] = v1[13];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[13] = result;
  v1[14] = v7;
  return result;
}

uint64_t MATip.onAppearFeedbackAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[16];
  v7[0] = v1[15];
  v7[1] = v2;
  v4 = v1[18];
  v8 = v1[17];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

__n128 MATip.onAppearFeedbackAction.setter(uint64_t a1)
{
  v3 = v1[16];
  v8[0] = v1[15];
  v8[1] = v3;
  v4 = v1[18];
  v8[2] = v1[17];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[15] = *a1;
  v1[16] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[17] = result;
  v1[18] = v7;
  return result;
}

uint64_t MATip.onClickFeedbackAction.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[20];
  v7[0] = v1[19];
  v7[1] = v2;
  v4 = v1[22];
  v8 = v1[21];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2148F2328(v7, &v6);
}

__n128 MATip.onClickFeedbackAction.setter(uint64_t a1)
{
  v3 = v1[20];
  v8[0] = v1[19];
  v8[1] = v3;
  v4 = v1[22];
  v8[2] = v1[21];
  v8[3] = v4;
  sub_21489DFCC(v8, &qword_27CA1B9F0, &qword_2149970D0);
  v5 = *(a1 + 16);
  v1[19] = *a1;
  v1[20] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[21] = result;
  v1[22] = v7;
  return result;
}

uint64_t MATip.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 368);

  *(v1 + 368) = a1;
  return result;
}

unint64_t sub_2148F2764(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0x69726F6765746163;
    if (a1 != 10)
    {
      v7 = 0x6576697463417369;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0x63416C65636E6163;
    if (a1 != 7)
    {
      v9 = 0xD000000000000016;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7470697263736564;
    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0x634174696D627573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1852793705;
    if (a1 != 1)
    {
      v4 = 0x656C746974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2148F28F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2148F2764(*a1);
  v5 = v4;
  if (v3 == sub_2148F2764(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_2148F297C()
{
  v1 = *v0;
  sub_214990160();
  sub_2148F2764(v1);
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F29E0()
{
  sub_2148F2764(*v0);
  sub_21498F900();
}

uint64_t sub_2148F2A34()
{
  v1 = *v0;
  sub_214990160();
  sub_2148F2764(v1);
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F2A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148F75F0();
  *a2 = result;
  return result;
}

unint64_t sub_2148F2AC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2148F2764(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2148F2B0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148F75F0();
  *a1 = result;
  return result;
}

uint64_t sub_2148F2B40(uint64_t a1)
{
  v2 = sub_2148F68E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F2B7C(uint64_t a1)
{
  v2 = sub_2148F68E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATip.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0 + 376);
  sub_21498FE00();

  strcpy(v9, "MATip(tipId: ");
  HIBYTE(v9[1]) = -18;
  MEMORY[0x2160589C0](v1, v2);
  MEMORY[0x2160589C0](0x7463417369202C22, 0xEE0022203A657669);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2160589C0](v6, v7);

  MEMORY[0x2160589C0](0x656C746974202C22, 0xEB0000000022203ALL);
  MEMORY[0x2160589C0](v3, v4);
  MEMORY[0x2160589C0](10530, 0xE200000000000000);
  return v9[0];
}

__n128 MATip.init(tipId:icon:title:message:submitButtonLabel:submitAction:cancelButtonLabel:cancelAction:onAppearFeedbackAction:onClickFeedbackAction:categories:isActive:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _OWORD *a11, uint64_t a12, uint64_t a13, _OWORD *a14, _OWORD *a15, uint64_t a16, uint64_t a17, char a18)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_2148AF724(0, 0);
  v23 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v23;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  memset(v35, 0, sizeof(v35));
  sub_21489DFCC(v35, &qword_27CA1B9F0, &qword_2149970D0);
  v24 = a11[1];
  *(a9 + 96) = *a11;
  *(a9 + 112) = v24;
  v25 = a11[3];
  *(a9 + 128) = a11[2];
  *(a9 + 144) = v25;
  *(a9 + 160) = a12;
  *(a9 + 168) = a13;
  memset(v36, 0, sizeof(v36));
  sub_21489DFCC(v36, &qword_27CA1B9F0, &qword_2149970D0);
  v26 = a14[1];
  *(a9 + 176) = *a14;
  *(a9 + 192) = v26;
  v27 = a14[3];
  *(a9 + 208) = a14[2];
  *(a9 + 224) = v27;
  memset(v37, 0, sizeof(v37));
  sub_21489DFCC(v37, &qword_27CA1B9F0, &qword_2149970D0);
  v28 = a15[1];
  *(a9 + 240) = *a15;
  *(a9 + 256) = v28;
  v29 = a15[3];
  *(a9 + 272) = a15[2];
  *(a9 + 288) = v29;
  memset(v38, 0, 64);
  sub_21489DFCC(v38, &qword_27CA1B9F0, &qword_2149970D0);
  v30 = *(a16 + 16);
  *(a9 + 304) = *a16;
  *(a9 + 320) = v30;
  result = *(a16 + 32);
  v32 = *(a16 + 48);
  *(a9 + 336) = result;
  *(a9 + 352) = v32;
  *(a9 + 368) = a17;
  *(a9 + 376) = a18;
  return result;
}

uint64_t MATip.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B9F8, &unk_2149970D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - v6;
  v8 = *v1;
  v41 = *(v1 + 8);
  v42 = v8;
  v9 = *(v1 + 16);
  v39 = *(v1 + 24);
  v40 = v9;
  v10 = *(v1 + 32);
  v37 = *(v1 + 40);
  v38 = v10;
  v11 = *(v1 + 48);
  v35 = *(v1 + 56);
  v36 = v11;
  v12 = *(v1 + 72);
  v33 = *(v1 + 64);
  v34 = v12;
  v13 = *(v1 + 88);
  v31 = *(v1 + 80);
  v32 = v13;
  v14 = *(v1 + 112);
  v69 = *(v1 + 96);
  v70 = v14;
  v15 = *(v1 + 144);
  v71 = *(v1 + 128);
  v72 = v15;
  v16 = *(v1 + 168);
  v29 = *(v1 + 160);
  v30 = v16;
  v17 = *(v1 + 192);
  v73 = *(v1 + 176);
  v74 = v17;
  v18 = *(v1 + 224);
  v75 = *(v1 + 208);
  v76 = v18;
  v19 = *(v1 + 256);
  v77 = *(v1 + 240);
  v78 = v19;
  v20 = *(v1 + 288);
  v79 = *(v1 + 272);
  v80 = v20;
  v21 = *(v1 + 352);
  v83 = *(v1 + 336);
  v84 = v21;
  v22 = *(v1 + 320);
  v81 = *(v1 + 304);
  v82 = v22;
  v28 = *(v1 + 368);
  v27[1] = *(v1 + 376);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F68E8();
  sub_2149901C0();
  LOBYTE(v65) = 0;
  v24 = v85;
  sub_214990000();
  if (v24)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v85 = v4;
  *&v65 = v40;
  *(&v65 + 1) = v39;
  *&v66 = v38;
  *(&v66 + 1) = v37;
  LOBYTE(v63[0]) = 1;
  sub_2148F20B8(v40, v39);
  sub_2148F693C();
  sub_21498FFE0();
  sub_2148AF724(v65, *(&v65 + 1));
  LOBYTE(v65) = 2;
  sub_214990000();
  LOBYTE(v65) = 3;
  sub_21498FFC0();
  LOBYTE(v65) = 4;
  sub_21498FFC0();
  v65 = v69;
  v66 = v70;
  v67 = v71;
  v68 = v72;
  v64 = 5;
  sub_2148F2328(&v69, v63);
  v26 = sub_2148F6990();
  sub_21498FFE0();
  v42 = v26;
  v63[0] = v65;
  v63[1] = v66;
  v63[2] = v67;
  v63[3] = v68;
  sub_21489DFCC(v63, &qword_27CA1B9F0, &qword_2149970D0);
  LOBYTE(v59) = 6;
  sub_21498FFC0();
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v62 = v76;
  v58 = 7;
  sub_2148F2328(&v73, v57);
  sub_21498FFE0();
  v57[0] = v59;
  v57[1] = v60;
  v57[2] = v61;
  v57[3] = v62;
  sub_21489DFCC(v57, &qword_27CA1B9F0, &qword_2149970D0);
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  v52 = 8;
  sub_2148F2328(&v77, v51);
  sub_21498FFE0();
  v51[0] = v53;
  v51[1] = v54;
  v51[2] = v55;
  v51[3] = v56;
  sub_21489DFCC(v51, &qword_27CA1B9F0, &qword_2149970D0);
  v47 = v81;
  v48 = v82;
  v49 = v83;
  v50 = v84;
  v46 = 9;
  sub_2148F2328(&v81, v45);
  sub_21498FFE0();
  v45[0] = v47;
  v45[1] = v48;
  v45[2] = v49;
  v45[3] = v50;
  sub_21489DFCC(v45, &qword_27CA1B9F0, &qword_2149970D0);
  v44 = v28;
  v43 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_2148F6A8C(&qword_281190CF8);
  sub_21498FFE0();
  LOBYTE(v44) = 11;
  sub_214990010();
  return (*(v85 + 8))(v7, v3);
}

uint64_t MATip.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA00, &qword_2149970E8);
  v5 = *(v91 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v91);
  v8 = &v73 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F68E8();
  sub_2149901B0();
  if (v2)
  {
    v110 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2148AF724(0, 0);
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v109 = 0uLL;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v108 = 0uLL;
    v107 = 0uLL;
    v106 = 0uLL;
    v104 = 0;
    v105 = 0;
    v20 = 0;
    v98 = 0;
    v99 = 0;
    v93 = 0uLL;
    v95 = 0uLL;
    v96 = 0uLL;
    v97 = 0uLL;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v21 = 0;
LABEL_4:

    *&v168 = v19;
    *(&v168 + 1) = v18;
    *&v169 = v17;
    *(&v169 + 1) = v16;
    *&v170 = v15;
    *(&v170 + 1) = v91;
    v171 = v109;
    sub_21489DFCC(&v168, &qword_27CA1B9F0, &qword_2149970D0);

    v172 = v20;
    v173 = v105;
    v174 = v106;
    v175 = v107;
    v176 = v108;
    sub_21489DFCC(&v172, &qword_27CA1B9F0, &qword_2149970D0);
    *&v111[0] = v21;
    *(&v111[0] + 1) = v104;
    *&v111[1] = v103;
    *(&v111[1] + 1) = v102;
    *&v111[2] = v101;
    *(&v111[2] + 1) = v100;
    *&v111[3] = v99;
    *(&v111[3] + 1) = v98;
    sub_21489DFCC(v111, &qword_27CA1B9F0, &qword_2149970D0);
    v112 = v93;
    v113 = v95;
    v114 = v96;
    v115 = v97;
    sub_21489DFCC(&v112, &qword_27CA1B9F0, &qword_2149970D0);
  }

  v10 = v5;
  v11 = a2;
  LOBYTE(v112) = 0;
  v12 = v91;
  v13 = sub_21498FF60();
  v110 = 0;
  v23 = v13;
  v82 = v14;
  LOBYTE(v111[0]) = 1;
  sub_2148F69E4();
  v24 = v110;
  sub_21498FF40();
  v110 = v24;
  if (v24)
  {
    (*(v10 + 8))(v8, v12);
    v79 = 0;
    v80 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v25 = 0;
    v26 = 0;
    v84 = 0;
    v83 = 0uLL;
    v27 = 0;
    v28 = 0;
    v94 = 0;
    v81 = 0;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v93 = 0uLL;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v92 = 0;
LABEL_12:
    *&v95 = v48;
    *(&v95 + 1) = v47;
    *&v96 = v46;
    *(&v96 + 1) = v45;
    *&v97 = v44;
    *(&v97 + 1) = v43;
    v98 = v50;
    v99 = v49;
    v100 = v42;
    v101 = v41;
    v102 = v40;
    v103 = v39;
    v104 = v38;
    v105 = v52;
    v89 = v37;
    v90 = v51;
    *&v106 = v53;
    *(&v106 + 1) = v54;
    *&v107 = v55;
    *(&v107 + 1) = v56;
    *&v108 = v57;
    *(&v108 + 1) = v58;
    *&v109 = v26;
    *(&v109 + 1) = v27;
    v91 = v25;

    sub_2148AF724(v83, *(&v83 + 1));
    if (v28)
    {
    }

    v17 = v87;
    v18 = v88;
    v15 = v85;
    v16 = v86;
    v21 = v89;
    v20 = v90;
    v19 = v79;
    goto LABEL_4;
  }

  v83 = v112;
  v78 = *(&v113 + 1);
  v84 = v113;
  sub_2148AF724(0, 0);
  LOBYTE(v112) = 2;
  v29 = v110;
  v30 = sub_21498FF60();
  if (v29)
  {
    v110 = v29;
    (*(v10 + 8))(v8, v12);
    v79 = 0;
    v80 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v94 = 0;
    v81 = 0;
    goto LABEL_11;
  }

  *&v77 = v30;
  *(&v77 + 1) = v31;
  LOBYTE(v112) = 3;
  v76 = sub_21498FF20();
  v81 = v32;
  LOBYTE(v112) = 4;
  v33 = sub_21498FF20();
  v110 = 0;
  v74 = v33;
  v75 = v23;
  v80 = v34;
  v181 = 5;
  v35 = sub_2148F6A38();
  v36 = v110;
  sub_21498FF40();
  v110 = v36;
  if (v36)
  {
    (*(v10 + 8))(v8, v12);
    v79 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v94 = 0;
    v28 = 1;
    goto LABEL_11;
  }

  *(&v97 + 1) = v35;
  v79 = v172;
  v87 = v174;
  v88 = v173;
  v86 = *(&v174 + 1);
  v25 = *(&v175 + 1);
  v59 = v175;
  v109 = v176;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  sub_21489DFCC(&v168, &qword_27CA1B9F0, &qword_2149970D0);
  LOBYTE(v112) = 6;
  v60 = v110;
  v61 = sub_21498FF20();
  v85 = v59;
  if (v60)
  {
    v110 = v60;
    (*(v10 + 8))(v8, v12);
    v94 = 0;
    v28 = 1;
    v27 = *(&v109 + 1);
    v26 = v109;
    goto LABEL_11;
  }

  v73 = v61;
  v94 = v62;
  v180 = 7;
  sub_21498FF40();
  v110 = 0;
  v90 = v163;
  v105 = v164;
  v106 = v165;
  v107 = v166;
  v108 = v167;
  memset(v162, 0, sizeof(v162));
  sub_21489DFCC(v162, &qword_27CA1B9F0, &qword_2149970D0);
  v179 = 8;
  v63 = v110;
  sub_21498FF40();
  v110 = v63;
  if (v63)
  {
    (*(v10 + 8))(v8, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v93 = 0uLL;
    v49 = 0;
    v50 = 0;
    v92 = 0;
    v28 = 1;
    v27 = *(&v109 + 1);
    v26 = v109;
    v58 = *(&v108 + 1);
    v57 = v108;
    v56 = *(&v107 + 1);
    v55 = v107;
    v54 = *(&v106 + 1);
    v53 = v106;
    v52 = v105;
    v51 = v90;
    goto LABEL_12;
  }

  v89 = v154;
  v103 = v156;
  v104 = v155;
  v101 = v158;
  v102 = v157;
  v99 = v160;
  v100 = v159;
  v98 = v161;
  memset(v153, 0, sizeof(v153));
  sub_21489DFCC(v153, &qword_27CA1B9F0, &qword_2149970D0);
  v178 = 9;
  v64 = v110;
  sub_21498FF40();
  v110 = v64;
  if (v64)
  {
    (*(v10 + 8))(v8, v91);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v93 = 0uLL;
    v92 = 0;
    v28 = 1;
    v27 = *(&v109 + 1);
    v26 = v109;
    v58 = *(&v108 + 1);
    v57 = v108;
    v56 = *(&v107 + 1);
    v55 = v107;
    v54 = *(&v106 + 1);
    v53 = v106;
    v38 = v104;
    v52 = v105;
    v37 = v89;
    v51 = v90;
    v40 = v102;
    v39 = v103;
    v42 = v100;
    v41 = v101;
    v50 = v98;
    v49 = v99;
    goto LABEL_12;
  }

  v93 = v149;
  v95 = v150;
  v96 = v151;
  v97 = v152;
  memset(v148, 0, sizeof(v148));
  sub_21489DFCC(v148, &qword_27CA1B9F0, &qword_2149970D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  LOBYTE(v111[0]) = 10;
  sub_2148F6A8C(&qword_281190CE8);
  v65 = v110;
  sub_21498FF40();
  v110 = v65;
  if (v65)
  {
    (*(v10 + 8))(v8, v91);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v92 = 0;
    v28 = 1;
    v27 = *(&v109 + 1);
    v26 = v109;
    v58 = *(&v108 + 1);
    v57 = v108;
    v56 = *(&v107 + 1);
    v55 = v107;
    v54 = *(&v106 + 1);
    v53 = v106;
    v38 = v104;
    v52 = v105;
    v37 = v89;
    v51 = v90;
    v40 = v102;
    v39 = v103;
    v42 = v100;
    v41 = v101;
    v50 = v98;
    v49 = v99;
    v43 = *(&v97 + 1);
    v44 = v97;
    v45 = *(&v96 + 1);
    v46 = v96;
    v47 = *(&v95 + 1);
    v48 = v95;
    goto LABEL_12;
  }

  v92 = v112;
  v177 = 11;
  v66 = sub_21498FF70();
  v110 = 0;
  v67 = v66;
  (*(v10 + 8))(v8, v91);
  LODWORD(v91) = v67 & 1;
  v68 = v81;
  v69 = v82;
  *&v111[0] = v75;
  *(&v111[0] + 1) = v82;
  v111[1] = v83;
  v70 = v79;
  *&v111[2] = v84;
  *(&v111[2] + 1) = v78;
  v111[3] = v77;
  *&v111[4] = v76;
  *(&v111[4] + 1) = v81;
  v71 = v80;
  *&v111[5] = v74;
  *(&v111[5] + 1) = v80;
  *&v111[6] = v79;
  *(&v111[6] + 1) = v88;
  *&v111[7] = v87;
  *(&v111[7] + 1) = v86;
  *&v111[8] = v85;
  *(&v111[8] + 1) = v25;
  v72 = v109;
  v111[9] = v109;
  *&v111[10] = v73;
  *(&v111[10] + 1) = v94;
  *&v111[11] = v90;
  *(&v111[11] + 1) = v105;
  v111[12] = v106;
  v111[13] = v107;
  v111[14] = v108;
  *&v111[15] = v89;
  *(&v111[15] + 1) = v104;
  *&v111[16] = v103;
  *(&v111[16] + 1) = v102;
  *&v111[17] = v101;
  *(&v111[17] + 1) = v100;
  *&v111[18] = v99;
  *(&v111[18] + 1) = v98;
  v111[19] = v93;
  v111[20] = v95;
  v111[21] = v96;
  v111[22] = v97;
  *&v111[23] = v92;
  BYTE8(v111[23]) = v91;
  memcpy(v11, v111, 0x179uLL);
  sub_2148D8FC8(v111, &v112);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v112 = v75;
  *(&v112 + 1) = v69;
  v113 = v83;
  *&v114 = v84;
  *(&v114 + 1) = v78;
  v115 = v77;
  v116 = v76;
  v117 = v68;
  v118 = v74;
  v119 = v71;
  v120 = v70;
  v121 = v88;
  v122 = v87;
  v123 = v86;
  v124 = v85;
  v125 = v25;
  v126 = __PAIR128__(*(&v109 + 1), v72);
  v127 = v73;
  v128 = v94;
  v129 = v90;
  v130 = v105;
  v131 = v106;
  v132 = v107;
  v133 = v108;
  v134 = v89;
  v135 = v104;
  v136 = v103;
  v137 = v102;
  v138 = v101;
  v139 = v100;
  v140 = v99;
  v141 = v98;
  v142 = v93;
  v143 = v95;
  v144 = v96;
  v145 = v97;
  v146 = v92;
  v147 = v91;
  return sub_2148F6AF8(&v112);
}

uint64_t sub_2148F4230@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MATipIcon.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MATipIcon.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MATipIcon.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MATipIcon.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static MATipIcon.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_214990080(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_214990080();
    }
  }

  return result;
}

uint64_t sub_2148F4428()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2148F4458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

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

uint64_t sub_2148F4530(uint64_t a1)
{
  v2 = sub_2148F6B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F456C(uint64_t a1)
{
  v2 = sub_2148F6B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATipIcon.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA08, &qword_2149970F0);
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
  sub_2148F6B28();
  sub_2149901C0();
  v16 = 0;
  v12 = v14[3];
  sub_214990000();
  if (!v12)
  {
    v15 = 1;
    sub_214990000();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MATipIcon.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA10, &qword_2149970F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6B28();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_21498FF60();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_21498FF60();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2148F496C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_214990080(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_214990080();
    }
  }

  return result;
}

uint64_t MATipAction.actionType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MATipAction.actionType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MATipAction.url.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MATipAction.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MATipAction.httpMethod.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MATipAction.httpMethod.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MATipAction.requestBody.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MATipAction.requestBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2148F4C34()
{
  v1 = 0x79546E6F69746361;
  v2 = 0x6874654D70747468;
  if (*v0 != 2)
  {
    v2 = 0x4274736575716572;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_2148F4CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148F763C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148F4CDC(uint64_t a1)
{
  v2 = sub_2148F6B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148F4D18(uint64_t a1)
{
  v2 = sub_2148F6B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MATipAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA18, &qword_214997100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6B7C();
  sub_2149901C0();
  v20 = 0;
  v14 = v16[7];
  sub_214990000();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_21498FFC0();
  v18 = 2;
  sub_21498FFC0();
  v17 = 3;
  sub_21498FFC0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MATipAction.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BA20, &qword_214997108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F6B7C();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_21498FF60();
  v13 = v12;
  v30 = v11;
  LOBYTE(v34[0]) = 1;
  *&v29 = sub_21498FF20();
  *(&v29 + 1) = v14;
  LOBYTE(v34[0]) = 2;
  v15 = sub_21498FF20();
  v17 = v16;
  v28 = v15;
  v40 = 3;
  v18 = sub_21498FF20();
  v19 = v9;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  v22 = v30;
  *&v31[0] = v30;
  *(&v31[0] + 1) = v13;
  v23 = v29;
  v31[1] = v29;
  *&v32 = v28;
  *(&v32 + 1) = v17;
  *&v33 = v18;
  *(&v33 + 1) = v21;
  v24 = v29;
  *a2 = v31[0];
  a2[1] = v24;
  v25 = v33;
  a2[2] = v32;
  a2[3] = v25;
  sub_2148F6BD0(v31, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v22;
  v34[1] = v13;
  v35 = __PAIR128__(*(&v29 + 1), v23);
  v36 = v28;
  v37 = v17;
  v38 = v18;
  v39 = v21;
  return sub_2148F6C08(v34);
}