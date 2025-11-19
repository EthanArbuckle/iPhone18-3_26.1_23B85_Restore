uint64_t sub_19A531880()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x19A901C40](*v0);
  MEMORY[0x19A901C40](v1);
  MEMORY[0x19A901C40](v2);
  MEMORY[0x19A901C40](v3);
  MEMORY[0x19A901C40](v4);
  return MEMORY[0x19A901C40](v5);
}

uint64_t sub_19A5318F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  MEMORY[0x19A901C40](v2);
  MEMORY[0x19A901C40](v3);
  MEMORY[0x19A901C40](v4);
  MEMORY[0x19A901C40](v5);
  MEMORY[0x19A901C40](v6);
  return sub_19A57410C();
}

BOOL sub_19A531994(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s13DiffusionBase05AppleA13ModelMetadataV41Adapter_StyleSpecificTimestepConditioningV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

uint64_t AppleDiffusionModelMetadata.LayoutStyleSelection.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7463656A627573;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t sub_19A531A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A53D23C();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_19A531AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19A53D23C();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

uint64_t AppleDiffusionModelMetadata.Adapter_LayoutTemplate.prompt_template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppleDiffusionModelMetadata.Adapter_LayoutTemplate.layout.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_19A531BE0()
{
  v1 = 0x74756F79616CLL;
  if (*v0 != 1)
  {
    v1 = 0x656C616373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x745F74706D6F7270;
  }
}

uint64_t sub_19A531C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A539C0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A531C68(uint64_t a1)
{
  v2 = sub_19A53DDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A531CA4(uint64_t a1)
{
  v2 = sub_19A53DDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleDiffusionModelMetadata.Adapter_LayoutTemplate.hash(into:)()
{
  if (*(v0 + 8))
  {
    sub_19A5740DC();
    sub_19A572E4C();
    if (*(v0 + 24))
    {
LABEL_3:
      sub_19A5740DC();
      sub_19A572E4C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19A5740DC();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_19A5740DC();
LABEL_6:
  if (*(v0 + 36) == 1)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return sub_19A5740EC();
}

uint64_t AppleDiffusionModelMetadata.Adapter_LayoutTemplate.hashValue.getter()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.Adapter_LayoutTemplate.hash(into:)();
  return sub_19A57410C();
}

double AppleDiffusionModelMetadata.Adapter_LayoutTemplate.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_19A539D24(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 29) = *&v7[13];
  }

  return result;
}

double sub_19A531E2C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_19A539D24(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 29) = *&v7[13];
  }

  return result;
}

uint64_t sub_19A531E74()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.Adapter_LayoutTemplate.hash(into:)();
  return sub_19A57410C();
}

uint64_t sub_19A531EB8()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.Adapter_LayoutTemplate.hash(into:)();
  return sub_19A57410C();
}

uint64_t sub_19A531EF4(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return _s13DiffusionBase05AppleA13ModelMetadataV22Adapter_LayoutTemplateV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.ReplacementTokens.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E616D6F77;
  v2 = 0x7372657020646C6FLL;
  if (a1 != 5)
  {
    v2 = 0x79656C696D73;
  }

  v3 = 0x616D6F7720646C6FLL;
  if (a1 != 3)
  {
    v3 = 0x6E616D20646C6FLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 7233901;
  if (a1 != 1)
  {
    v4 = 0x6E6F73726570;
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

uint64_t sub_19A532014@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase05AppleA13ModelMetadataV34Adapter_StyleSpecificAugmentationsV17ReplacementTokensO8rawValueAGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_19A532044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E616D6F77;
  v5 = 0xEA00000000006E6FLL;
  v6 = 0x7372657020646C6FLL;
  if (v2 != 5)
  {
    v6 = 0x79656C696D73;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE90000000000006ELL;
  v8 = 0x616D6F7720646C6FLL;
  if (v2 != 3)
  {
    v8 = 0x6E616D20646C6FLL;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7233901;
  if (v2 != 1)
  {
    v10 = 0x6E6F73726570;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_19A532184()
{
  sub_19A572E4C();
}

uint64_t sub_19A53229C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A53D1E8();

  return MEMORY[0x1EEE693C8](a1, a2, v4);
}

uint64_t sub_19A5322F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19A53D1E8();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_19A532378@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13DiffusionBase05AppleA13ModelMetadataV34Adapter_StyleSpecificAugmentationsV5ShadeO8rawValueAGSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_19A532404(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A53D194();

  return MEMORY[0x1EEE693D8](a1, a2, v4);
}

uint64_t sub_19A532458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19A53D194();

  return MEMORY[0x1EEE693E0](a1, a4, a2, a5, v10, a3);
}

uint64_t AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.person_template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.merge(overriding:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v6 = a1[2];
  if (v5)
  {
    v7 = v2[2];
    if (v6)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v5;
      sub_19A539FCC(v6, sub_19A53F020, 0, isUniquelyReferenced_nonNull_native, &v21, sub_19A31FC68, sub_19A5521C4, &type metadata for AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.ReplacementTokens, sub_19A555494);

      v7 = v21;
      goto LABEL_6;
    }
  }

  else
  {

    v7 = v6;
  }

LABEL_6:
  v9 = v2[3];
  v10 = a1[3];
  if (v9)
  {
    v11 = v2[3];
    if (v10)
    {

      v12 = swift_isUniquelyReferenced_nonNull_native();
      v21 = v9;
      sub_19A539FCC(v10, sub_19A53F020, 0, v12, &v21, sub_19A3355E4, sub_19A551F24, &type metadata for AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.Shade, sub_19A555480);

      v11 = v21;
      goto LABEL_11;
    }
  }

  else
  {

    v11 = v10;
  }

LABEL_11:
  v13 = v2[4];
  v14 = a1[4];
  if (!v13)
  {

    v15 = v14;
LABEL_16:

    v17 = v2[1];
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v15 = v2[4];
  if (!v14)
  {
    goto LABEL_16;
  }

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v13;
  sub_19A539FCC(v14, sub_19A53F020, 0, v16, &v21, sub_19A3355E4, sub_19A551F24, &type metadata for AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.Shade, sub_19A555480);

  v15 = v21;
  v17 = v2[1];
  if (v17)
  {
LABEL_14:
    v18 = *v2;
    v19 = v17;
    goto LABEL_18;
  }

LABEL_17:
  v18 = *a1;

LABEL_18:
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v7;
  a2[3] = v11;
  a2[4] = v15;
}

uint64_t sub_19A532808()
{
  v1 = 0x745F6E6F73726570;
  v2 = 0x656E6F746E696B73;
  if (*v0 != 2)
  {
    v2 = 1919508840;
  }

  if (*v0)
  {
    v1 = 0x736E656B6F74;
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

uint64_t sub_19A532884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A53A28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A5328AC(uint64_t a1)
{
  v2 = sub_19A53DC44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A5328E8(uint64_t a1)
{
  v2 = sub_19A53DC44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_19A5740DC();
    sub_19A572E4C();
    v4 = v2[2];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19A5740DC();
    v4 = v2[2];
    if (v4)
    {
LABEL_3:
      sub_19A5740DC();
      sub_19A535AA4(a1, v4);
      v5 = v2[3];
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_19A5740DC();
      v6 = v2[4];
      if (v6)
      {
        goto LABEL_5;
      }

      return sub_19A5740DC();
    }
  }

  sub_19A5740DC();
  v5 = v2[3];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19A5740DC();
  sub_19A53595C(a1, v5);
  v6 = v2[4];
  if (!v6)
  {
    return sub_19A5740DC();
  }

LABEL_5:
  sub_19A5740DC();

  return sub_19A53595C(a1, v6);
}

uint64_t AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.hashValue.getter()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.hash(into:)(v1);
  return sub_19A57410C();
}

double AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_19A53A3F4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_19A532AA8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_19A53A3F4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_19A532AF0()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.hash(into:)(v1);
  return sub_19A57410C();
}

uint64_t sub_19A532B34()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.hash(into:)(v1);
  return sub_19A57410C();
}

uint64_t sub_19A532B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s13DiffusionBase05AppleA13ModelMetadataV34Adapter_StyleSpecificAugmentationsV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t sub_19A532BC8()
{
  v0 = sub_19A573C2C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A532C24@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

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

void sub_19A532C80(uint64_t *a1@<X8>)
{
  v2 = 3226161;
  if (*v1)
  {
    v2 = 3226162;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_19A532D50()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A532DB0()
{
  sub_19A572E4C();
}

uint64_t sub_19A532DF4()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A532E50(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 3226162;
  }

  else
  {
    v2 = 3226161;
  }

  if (*a2)
  {
    v3 = 3226162;
  }

  else
  {
    v3 = 3226161;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_19A573F1C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_19A532EC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A53A7D8();
  *a1 = result;
  return result;
}

void sub_19A532EF0(uint64_t *a1@<X8>)
{
  v2 = 0xEE00646E756F7267;
  v3 = 0x6B6361625F67736DLL;
  v4 = 0xE800000000000000;
  v5 = 0x656C626269726373;
  if (*v1 != 2)
  {
    v5 = 0x636E657265666572;
    v4 = 0xEF6567616D695F65;
  }

  if (*v1)
  {
    v3 = 0x746C7561666564;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_19A533038()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A533114()
{
  sub_19A572E4C();
}

uint64_t sub_19A5331DC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t AppleDiffusionModelMetadata.prompt.getter()
{
  v1 = *(v0 + 192);
  sub_19A4B0DCC(v1, *(v0 + 200));
  return v1;
}

__n128 AppleDiffusionModelMetadata.lcm.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 290);
  result = *(v1 + 256);
  v5 = *(v1 + 272);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 34) = v3;
  return result;
}

unint64_t sub_19A5333B0(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x636E657265666572;
      break;
    case 2:
      result = 0x74706D6F7270;
      break;
    case 3:
      result = 0x5F656C626174756DLL;
      break;
    case 4:
      result = 0x735F746E6574616CLL;
      break;
    case 5:
      result = 0x69735F6567616D69;
      break;
    case 6:
      result = 0x7361726F6CLL;
      break;
    case 7:
      result = 7168876;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x65745F656C797473;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19A53359C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A53A824(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A5335D0(uint64_t a1)
{
  v2 = sub_19A53D518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A53360C(uint64_t a1)
{
  v2 = sub_19A53D518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleDiffusionModelMetadata.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (v3 != 1)
  {
    v4 = *(v1 + 24);
    sub_19A5740DC();
    if (v3)
    {
      sub_19A5740DC();
      sub_19A572E4C();
      if (v4)
      {
LABEL_4:
        sub_19A5740DC();
        sub_19A572E4C();
        goto LABEL_7;
      }
    }

    else
    {
      sub_19A5740DC();
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  sub_19A5740DC();
LABEL_7:
  v5 = *(v1 + 144);
  v24[6] = *(v1 + 128);
  v24[7] = v5;
  v25[0] = *(v1 + 160);
  *(v25 + 13) = *(v1 + 173);
  v6 = *(v1 + 80);
  v24[2] = *(v1 + 64);
  v24[3] = v6;
  v7 = *(v1 + 112);
  v24[4] = *(v1 + 96);
  v24[5] = v7;
  v8 = *(v1 + 48);
  v24[0] = *(v1 + 32);
  v24[1] = v8;
  if (sub_19A4E7208(v24) == 1)
  {
    sub_19A5740DC();
  }

  else
  {
    sub_19A5740DC();
    AppleDiffusionModelMetadata.ReferenceImageInfo.hash(into:)(a1);
  }

  sub_19A534BC4(a1, *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216));
  v9 = *(v1 + 224);
  if (v9)
  {
    sub_19A5740DC();
    v10 = *(v9 + 16);
    MEMORY[0x19A901C40](v10);
    if (v10)
    {
      v11 = v9 + 40;
      do
      {

        sub_19A572E4C();

        v11 += 16;
        --v10;
      }

      while (v10);
    }

    v12 = *(v1 + 232);
    if (v12)
    {
LABEL_15:
      sub_19A5740DC();
      sub_19A5360B4(a1, v12);
      v13 = *(v1 + 240);
      if (v13)
      {
        goto LABEL_16;
      }

LABEL_20:
      sub_19A5740DC();
      v14 = *(v1 + 248);
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  else
  {
    sub_19A5740DC();
    v12 = *(v1 + 232);
    if (v12)
    {
      goto LABEL_15;
    }
  }

  sub_19A5740DC();
  v13 = *(v1 + 240);
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_19A5740DC();
  sub_19A5360B4(a1, v13);
  v14 = *(v1 + 248);
  if (v14)
  {
LABEL_17:
    sub_19A5740DC();
    sub_19A534D74(a1, v14);
    goto LABEL_22;
  }

LABEL_21:
  sub_19A5740DC();
LABEL_22:
  v15 = *(v1 + 272);
  v25[2] = *(v1 + 256);
  v26[0] = v15;
  *(v26 + 15) = *(v1 + 287);
  sub_19A534AD0();
  v16 = *(v1 + 296);
  if (v16)
  {
    sub_19A5740DC();
    sub_19A535E30(a1, v16);
    v17 = *(v1 + 304);
    if (v17)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_19A5740DC();
    v17 = *(v1 + 304);
    if (v17)
    {
LABEL_24:
      sub_19A5740DC();
      sub_19A5360B4(a1, v17);
      v18 = *(v1 + 312);
      if (v18)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  sub_19A5740DC();
  v18 = *(v1 + 312);
  if (v18)
  {
LABEL_25:
    sub_19A5740DC();
    sub_19A535CC4(a1, v18);
    v19 = *(v1 + 320);
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_31:
    sub_19A5740DC();
    v20 = *(v1 + 328);
    if (v20)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_30:
  sub_19A5740DC();
  v19 = *(v1 + 320);
  if (!v19)
  {
    goto LABEL_31;
  }

LABEL_26:
  sub_19A5740DC();
  sub_19A535254(a1, v19);
  v20 = *(v1 + 328);
  if (v20)
  {
LABEL_27:
    sub_19A5740DC();
    sub_19A534FBC(a1, v20);
    goto LABEL_33;
  }

LABEL_32:
  sub_19A5740DC();
LABEL_33:
  if (*(v1 + 340) == 1)
  {
    sub_19A5740DC();
    v21 = *(v1 + 344);
    if (v21)
    {
      goto LABEL_35;
    }

LABEL_38:
    sub_19A5740DC();
    v22 = *(v1 + 352);
    if (v22)
    {
      goto LABEL_36;
    }

    return sub_19A5740DC();
  }

  sub_19A5740DC();
  sub_19A5740EC();
  v21 = *(v1 + 344);
  if (!v21)
  {
    goto LABEL_38;
  }

LABEL_35:
  sub_19A5740DC();
  sub_19A534D0C(a1, v21);
  v22 = *(v1 + 352);
  if (v22)
  {
LABEL_36:
    sub_19A5740DC();
    return sub_19A535CC4(a1, v22);
  }

  return sub_19A5740DC();
}

uint64_t AppleDiffusionModelMetadata.hashValue.getter()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.hash(into:)(v1);
  return sub_19A57410C();
}

void *AppleDiffusionModelMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_19A53AD34(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x168uLL);
  }

  return result;
}

void *sub_19A533AE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_19A53AD34(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x168uLL);
  }

  return result;
}

uint64_t sub_19A533B30()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.hash(into:)(v1);
  return sub_19A57410C();
}

uint64_t sub_19A533B74()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.hash(into:)(v1);
  return sub_19A57410C();
}

BOOL sub_19A533BB0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s13DiffusionBase05AppleA13ModelMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst);
}

uint64_t sub_19A533C08()
{
  if (*v0)
  {
    return 6775156;
  }

  else
  {
    return 0x6E695F6C65646F6DLL;
  }
}

uint64_t sub_19A533C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E695F6C65646F6DLL && a2 == 0xEB00000000736F66;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

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

uint64_t sub_19A533D24(uint64_t a1)
{
  v2 = sub_19A53D48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A533D60(uint64_t a1)
{
  v2 = sub_19A53D48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *CoreMLUserMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_19A53BBEC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x178uLL);
  }

  return result;
}

void *CoreMLUserMetadata.init(tag:model_infos:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x168uLL);
  a4[45] = a2;
  a4[46] = a3;
  return result;
}

void *sub_19A533E2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_19A53BBEC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x178uLL);
  }

  return result;
}

uint64_t sub_19A533E78(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_19A31F6BC(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 32;
      while (v21)
      {
        if (*(v20 + v23) != *(v16 + v23))
        {
          goto LABEL_26;
        }

        v23 += 8;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_19A534008(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56) + 48 * v12;
    v23 = *(v13 + 16);
    v24 = *v13;
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
    v16 = sub_19A31FB90(*(*(v3 + 48) + v12));
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = v16;
    result = 0;
    v19 = (*(a2 + 56) + 48 * v18);
    v20 = v19[2].i64[0] == v15;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*v19, v24), vceqq_s64(v19[1], v23)))))
    {
      v21 = v19[2].i64[1];
      if (v20 && v21 == v14)
      {
        continue;
      }
    }

    return result;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A534174(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_19A31F6BC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_19A573F1C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A534318(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v31 = result;
  if (!v6)
  {
LABEL_7:
    v9 = v2;
    while (1)
    {
      v2 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v2 >= v7)
      {
        return 1;
      }

      v10 = *(v3 + 8 * v2);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v33 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
    v8 = __clz(__rbit64(v6));
    v33 = (v6 - 1) & v6;
LABEL_12:
    v11 = v8 | (v2 << 6);
    v12 = (*(result + 56) + 40 * v11);
    v13 = *v12;
    v14 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = *(*(result + 48) + v11);
    v18 = v12[4];

    v34 = v16;

    v35 = v15;

    v19 = sub_19A31FB90(v17);
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = (*(a2 + 56) + 40 * v19);
    v23 = v21[1];
    v22 = v21[2];
    v24 = v21[3];
    v36 = v21[4];
    v25 = v18;
    if (v23)
    {
      if (!v14)
      {
        break;
      }

      v26 = *v21 == v13 && v23 == v14;
      if (!v26 && (sub_19A573F1C() & 1) == 0)
      {
        break;
      }
    }

    else if (v14)
    {
      break;
    }

    if (v22)
    {
      if (!v34)
      {
        break;
      }

      v28 = sub_19A534848(v27, v34);

      if ((v28 & 1) == 0)
      {

        break;
      }

      if (!v24)
      {
LABEL_31:
        if (v35)
        {
          goto LABEL_46;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v34)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_31;
      }
    }

    if (!v35)
    {

      goto LABEL_49;
    }

    v29 = sub_19A5349A8(v24, v35);

    v25 = v18;
    if ((v29 & 1) == 0)
    {

LABEL_46:

LABEL_47:

      break;
    }

LABEL_32:
    if (v36)
    {
      if (!v25)
      {

        goto LABEL_47;
      }

      v30 = sub_19A5349A8(v36, v25);

      if ((v30 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_49;
      }
    }

    result = v31;
    v6 = v33;
    if (!v33)
    {
      goto LABEL_7;
    }
  }

LABEL_49:

  return 0;
}

uint64_t sub_19A534718(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + 8 * v12);

    v15 = sub_19A31FEBC(v13);
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_19A505430(*(*(a2 + 56) + 8 * v15), v14);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A534848(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 56) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 48) + v12);

    v17 = sub_19A31FC68(v16);
    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v19 = (*(a2 + 56) + 16 * v17);
    if (*v19 == v15 && v19[1] == v14)
    {
    }

    else
    {
      v21 = sub_19A573F1C();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A5349A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 56) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = sub_19A3355E4(*(*(v3 + 48) + v12));
    if (v17)
    {
      v18 = (*(a2 + 56) + 16 * v16);
      result = *v18;
      if (*v18 == v14 && v18[1] == v15)
      {
        continue;
      }

      result = sub_19A573F1C();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A534AD0()
{
  if (*(v0 + 34))
  {
    return sub_19A5740DC();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);
  sub_19A5740DC();
  sub_19A5740EC();
  if (v2)
  {
    sub_19A5740DC();
    if ((v1 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_19A5740DC();
    MEMORY[0x19A901C40](v4);
    if ((v1 & 1) == 0)
    {
LABEL_4:
      sub_19A5740DC();
      sub_19A5740EC();
      if ((v3 & 0x100) != 0)
      {
        return sub_19A5740DC();
      }

      goto LABEL_8;
    }
  }

  sub_19A5740DC();
  if ((v3 & 0x100) != 0)
  {
    return sub_19A5740DC();
  }

LABEL_8:
  sub_19A5740DC();
  if (v3)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return sub_19A5740EC();
}

uint64_t sub_19A534BC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  if (a3 == 1)
  {
    return sub_19A5740DC();
  }

  v8 = a4;
  sub_19A5740DC();
  if (a3)
  {
    sub_19A5740DC();
    sub_19A572E4C();
    if (v8 == 3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_19A5740DC();
    if (v8 == 3)
    {
LABEL_5:
      sub_19A5740DC();
      if (!a5)
      {
        return sub_19A5740DC();
      }

      goto LABEL_9;
    }
  }

  sub_19A5740DC();
  sub_19A572E4C();

  if (!a5)
  {
    return sub_19A5740DC();
  }

LABEL_9:
  sub_19A5740DC();
  v9 = *(a5 + 16);
  result = MEMORY[0x19A901C40](v9);
  if (v9)
  {
    v10 = a5 + 40;
    do
    {

      sub_19A572E4C();

      v10 += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_19A534D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x19A901C40](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_19A5740EC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_19A534D74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x19A901C40](v3);
  if (v3)
  {
    v5 = (a2 + 60);
    do
    {
      v6 = *(v5 - 28);
      v7 = *(v5 - 12);
      v8 = *v5;
      if (v6 == 10)
      {
        sub_19A5740DC();

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_19A5740DC();

        sub_19A572E4C();

        if (!v7)
        {
LABEL_7:
          sub_19A5740DC();
          if (!v8)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_19A5740DC();
      sub_19A572E4C();
      if (!v8)
      {
LABEL_11:
        sub_19A5740DC();
        sub_19A5740EC();
        goto LABEL_4;
      }

LABEL_3:
      sub_19A5740DC();
LABEL_4:

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_19A534FBC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v16 = v6;
  v17 = v2;
LABEL_5:
  if (v5)
  {
    v19 = v8;
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x19A901C40](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v19 = v8;
      v9 = v10;
LABEL_11:
      v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

      sub_19A572E4C();

      MEMORY[0x19A901C40](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 68);
        do
        {
          v14 = *(v13 - 12);
          v15 = *v13;
          if (*(v13 - 28))
          {
            sub_19A5740DC();

            sub_19A572E4C();
            if (v14)
            {
              goto LABEL_17;
            }
          }

          else
          {
            sub_19A5740DC();

            if (v14)
            {
LABEL_17:
              sub_19A5740DC();
              sub_19A572E4C();
              if (v15)
              {
                goto LABEL_21;
              }

              goto LABEL_13;
            }
          }

          sub_19A5740DC();
          if (v15)
          {
LABEL_21:
            sub_19A5740DC();
            goto LABEL_14;
          }

LABEL_13:
          sub_19A5740DC();
          sub_19A5740EC();
LABEL_14:

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      v5 &= v5 - 1;

      result = sub_19A57410C();
      v8 = result ^ v19;
      v6 = v16;
      v2 = v17;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A535254(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v47 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v45 = v2;
  while (v5)
  {
    v48 = v7;
LABEL_13:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 56) + 40 * (v10 | (v8 << 6)));
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];

    sub_19A572E4C();

    sub_19A5740DC();
    if (v12)
    {
      sub_19A572E4C();
    }

    v51 = v14;
    v50 = v15;
    if (v13)
    {
      sub_19A5740DC();
      v16 = 1 << *(v13 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v13 + 64);
      v19 = (v16 + 63) >> 6;

      v20 = 0;
      v21 = 0;
      if (v18)
      {
        while (1)
        {
          v49 = v20;
          v22 = v21;
LABEL_25:
          v18 &= v18 - 1;

          sub_19A572E4C();

          sub_19A572E4C();

          result = sub_19A57410C();
          v20 = result ^ v49;
          v21 = v22;
          if (!v18)
          {
            goto LABEL_21;
          }
        }
      }

      while (1)
      {
LABEL_21:
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_56;
        }

        if (v22 >= v19)
        {
          break;
        }

        v18 = *(v13 + 64 + 8 * v22);
        ++v21;
        if (v18)
        {
          v49 = v20;
          goto LABEL_25;
        }
      }

      MEMORY[0x19A901C40](v20);
      v15 = v50;
      if (!v14)
      {
        goto LABEL_52;
      }

LABEL_28:
      sub_19A5740DC();
      v23 = v14;
      v26 = *(v14 + 64);
      v25 = v14 + 64;
      v24 = v26;
      v27 = 1 << *(v23 + 32);
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & v24;
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      for (i = 0; v29; v31 ^= result)
      {
        v33 = i;
LABEL_37:
        v34 = *(*(v51 + 48) + (__clz(__rbit64(v29)) | (v33 << 6)));
        v29 &= v29 - 1;
        MEMORY[0x19A901C40](v34);

        sub_19A572E4C();

        result = sub_19A57410C();
      }

      while (1)
      {
        v33 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v33 >= v30)
        {

          MEMORY[0x19A901C40](v31);
          v15 = v50;
          if (!v50)
          {
            goto LABEL_53;
          }

          goto LABEL_40;
        }

        v29 = *(v25 + 8 * v33);
        ++i;
        if (v29)
        {
          i = v33;
          goto LABEL_37;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    sub_19A5740DC();
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_52:
    sub_19A5740DC();
    if (v15)
    {
LABEL_40:
      sub_19A5740DC();
      v35 = v15 + 64;
      v36 = 1 << *(v15 + 32);
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v38 = v37 & *(v15 + 64);
      v39 = (v36 + 63) >> 6;

      v40 = 0;
      for (j = 0; v38; v40 ^= result)
      {
        v42 = j;
LABEL_49:
        v43 = *(*(v50 + 48) + (__clz(__rbit64(v38)) | (v42 << 6)));
        v38 &= v38 - 1;
        MEMORY[0x19A901C40](v43);

        sub_19A572E4C();

        result = sub_19A57410C();
      }

      while (1)
      {
        v42 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_57;
        }

        if (v42 >= v39)
        {

          MEMORY[0x19A901C40](v40);

          goto LABEL_6;
        }

        v38 = *(v35 + 8 * v42);
        ++j;
        if (v38)
        {
          j = v42;
          goto LABEL_49;
        }
      }
    }

LABEL_53:
    sub_19A5740DC();
LABEL_6:

    result = sub_19A57410C();
    v7 = result ^ v48;
    v2 = v45;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v47)
    {
      v44 = v7;

      return MEMORY[0x19A901C40](v44);
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v48 = v7;
      v8 = v9;
      goto LABEL_13;
    }
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_19A53595C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 48) + (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;
    MEMORY[0x19A901C40](v12);

    sub_19A572E4C();

    result = sub_19A57410C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x19A901C40](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A535AA4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; i = v10)
  {
    v10 = i;
LABEL_8:
    v5 &= v5 - 1;

    sub_19A572E4C();

    sub_19A572E4C();

    result = sub_19A57410C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x19A901C40](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A535CC4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x19A901C40](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_19A572E4C();

        sub_19A572E4C();

        result = sub_19A57410C();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A535E30(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; i = v10)
  {
    v20 = v8;
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    v5 &= v5 - 1;
    v12 = (*(a2 + 56) + 48 * v11);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v18 = v12[4];
    v19 = v12[5];
    sub_19A572E4C();

    MEMORY[0x19A901C40](v14);
    MEMORY[0x19A901C40](v13);
    MEMORY[0x19A901C40](v16);
    MEMORY[0x19A901C40](v15);
    MEMORY[0x19A901C40](v18);
    MEMORY[0x19A901C40](v19);
    result = sub_19A57410C();
    v8 = result ^ v20;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x19A901C40](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      v20 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A5360B4(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v16 = v9;
LABEL_11:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v10 << 6)));

    sub_19A572E4C();

    MEMORY[0x19A901C40](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 32);
      do
      {
        v15 = *v14++;
        MEMORY[0x19A901C40](v15);
        --v13;
      }

      while (v13);
    }

    v6 &= v6 - 1;

    result = sub_19A57410C();
    v9 = result ^ v16;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x19A901C40](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v16 = v9;
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A536238@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  *a2 = v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
}

BOOL _s13DiffusionBase05AppleA13ModelMetadataV10PromptInfoV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v8 = a3;
      v9 = a4;
      v10 = a8;
      v11 = a7;
      v12 = sub_19A573F1C();
      a3 = v8;
      a7 = v11;
      a4 = v9;
      a8 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3 == 3)
  {
    if (a7 != 3)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (a7 == 3)
  {
    return 0;
  }

  v13 = a3;
  v14 = 3228749;
  if (v13)
  {
    if (v13 == 1)
    {
      v15 = 3425357;
    }

    else
    {
      v15 = 0x3031764D4441;
    }

    if (v13 == 1)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    v17 = a7;
    if (a7)
    {
      goto LABEL_23;
    }

LABEL_30:
    v18 = 0xE300000000000000;
    goto LABEL_31;
  }

  v16 = 0xE300000000000000;
  v15 = 3228749;
  v17 = a7;
  if (!a7)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (v17 == 1)
  {
    v14 = 3425357;
  }

  else
  {
    v14 = 0x3031764D4441;
  }

  if (v17 == 1)
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = 0xE600000000000000;
  }

LABEL_31:
  v19 = a4;
  v20 = a8;
  if (v15 != v14 || v16 != v18)
  {
    v22 = sub_19A573F1C();

    a8 = v20;
    a4 = v19;
    if ((v22 & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (a4)
    {
      return a8 && (sub_19A504E80(a4, a8) & 1) != 0;
    }

    return !a8;
  }

  a8 = v20;
  a4 = v19;
  if (v19)
  {
    return a8 && (sub_19A504E80(a4, a8) & 1) != 0;
  }

  return !a8;
}

BOOL _s13DiffusionBase05AppleA13ModelMetadataV18ReferenceImageInfoV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 5)
    {
      return 0;
    }

    v3 = a2;
    v6 = a1;
    if (v4 << 16 == v5 << 16)
    {
      swift_bridgeObjectRelease_n();
      a1 = v6;
      a2 = v3;
    }

    else
    {
      v2 = sub_19A573F1C();
      swift_bridgeObjectRelease_n();
      a1 = v6;
      a2 = v3;
      if ((v2 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (*(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v7 = *(a1 + 1);
  v8 = *(a2 + 1);
  v9 = *(v7 + 16);
  if (v9 != *(v8 + 16))
  {
    return 0;
  }

  if (v9)
  {
    v10 = v7 == v8;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v7 + 32;
    v12 = (v8 + 32);
    while (v9)
    {
      if (*v11 != *v12)
      {
        return 0;
      }

      v11 += 4;
      ++v12;
      if (!--v9)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_47:
    if (a2)
    {
      return 0;
    }

    goto LABEL_48;
  }

LABEL_18:
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = a1;
  v3 = a2;
  if ((sub_19A5053D4(*(a1 + 3), *(a2 + 3)) & 1) == 0)
  {
    return 0;
  }

  v11 = v2;
  v9 = v3;
  v13 = v3[36];
  if (*(v2 + 36))
  {
    if (!v3[36])
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 32) != *(v3 + 8))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = *(v2 + 40);
  v15 = *(v3 + 5);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = sub_19A5053D4(v14, v15);
    v9 = v3;
    v11 = v2;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v9[52];
  if (*(v11 + 52))
  {
    if (!v9[52])
    {
      return 0;
    }
  }

  else
  {
    if (*(v11 + 48) != *(v9 + 12))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(v11 + 56);
  v19 = *(v9 + 7);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = sub_19A5053D4(v18, v19);
    v9 = v3;
    v11 = v2;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = *(v11 + 64);
  a2 = *(v9 + 8);
  if (!v21)
  {
    goto LABEL_47;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = sub_19A5053D4(v21, a2);
  v9 = v3;
  v11 = v2;
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v23 = v9[76];
  if (*(v11 + 76))
  {
    if (!v9[76])
    {
      return 0;
    }
  }

  else
  {
    if (*(v11 + 72) != *(v9 + 18))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = *(v11 + 80);
  v25 = *(v9 + 10);
  if (v24)
  {
    if (!v25 || (sub_19A5053D4(v24, v25) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = v3[92];
  if (*(v2 + 92))
  {
    if (!v3[92])
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 88) != *(v3 + 22))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = *(v2 + 96);
  v28 = *(v3 + 12);
  if (v27)
  {
    if (!v28 || (sub_19A5053D4(v27, v28) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = v3[108];
  if (*(v2 + 108))
  {
    if (!v3[108])
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 104) != *(v3 + 26))
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = *(v2 + 112);
  v31 = *(v3 + 14);
  if (v30)
  {
    if (!v31 || (sub_19A5053D4(v30, v31) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v3[124];
  if (*(v2 + 124))
  {
    if (!v3[124])
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 120) != *(v3 + 30))
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = *(v2 + 128);
  v34 = *(v3 + 16);
  if (v33)
  {
    if (!v34 || (sub_19A5053D4(v33, v34) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v35 = v3[140];
  if (*(v2 + 140))
  {
    if (!v3[140])
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 136) != *(v3 + 34))
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = *(v2 + 144);
  v37 = *(v3 + 18);
  if (v36)
  {
    if (!v37 || (sub_19A5053D4(v36, v37) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v38 = v3[156];
  if ((*(v2 + 156) & 1) == 0)
  {
    if (*(v2 + 152) != *(v3 + 38))
    {
      v38 = 1;
    }

    return (v38 & 1) == 0;
  }

  return (v3[156] & 1) != 0;
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV19GlobalLCMParametersV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 33))
  {
    if (*(a2 + 33))
    {
      return 1;
    }
  }

  else if ((*(a2 + 33) & 1) == 0)
  {
    v5 = *(a2 + 28) | (*(a2 + 32) << 32);
    if (((*(a1 + 28) | (*(a1 + 32) << 32)) & 0x100000000) != 0)
    {
      if ((v5 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((v5 & 0x100000000) != 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV22Adapter_LayoutTemplateV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_19A573F1C();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_19A573F1C();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (*(a2 + 36))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV34Adapter_StyleSpecificAugmentationsV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_19A573F1C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = sub_19A534848(v7, v8);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
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

    v12 = sub_19A5349A8(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = a1[4];
  v14 = a2[4];
  if (v13)
  {
    if (v14)
    {

      v15 = sub_19A5349A8(v13, v14);

      if (v15)
      {
        return 1;
      }
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

BOOL sub_19A536AEC(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 10)
  {
    if (a5 != 10)
    {
      return 0;
    }
  }

  else
  {
    if (a5 == 10)
    {
      return 0;
    }

    v11 = a2;
    v12 = a3;
    v13 = a6;
    v14 = a7;
    v15 = a4;
    v16 = a8;
    v18 = AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(a1);
    v20 = v19;
    if (v18 == AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(a5) && v20 == v21)
    {

      a8 = v16;
      a4 = v15;
      a7 = v14;
      a6 = v13;
      a3 = v12;
      a2 = v11;
      if (v12)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    v22 = sub_19A573F1C();

    a8 = v16;
    a4 = v15;
    a7 = v14;
    a6 = v13;
    a3 = v12;
    a2 = v11;
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
LABEL_4:
    if (!a7)
    {
      return 0;
    }

    if (a2 != a6 || a3 != a7)
    {
      v8 = a4;
      v9 = a8;
      v10 = sub_19A573F1C();
      a4 = v8;
      a8 = v9;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_14;
  }

LABEL_13:
  if (a7)
  {
    return 0;
  }

LABEL_14:
  if ((a4 & 0x100000000) != 0)
  {
    return (a8 & 0x100000000) != 0;
  }

  return (a8 & 0x100000000) == 0 && *&a4 == *&a8;
}

BOOL _s13DiffusionBase05AppleA13ModelMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  if (v5 == 1)
  {
    if (v8 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  if (v8 == 1)
  {
LABEL_7:
    sub_19A4B0DCC(*a2, *(a2 + 8));
    sub_19A4B0DCC(v4, v5);
    sub_19A53D56C(v4, v5);
    v41 = v9;
    v42 = v8;
LABEL_8:
    sub_19A53D56C(v41, v42);
    return 0;
  }

  if (v5)
  {
    if (!v8)
    {
      return 0;
    }

    if ((v4 != v9 || v5 != v8) && (sub_19A573F1C() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v8)
  {
    sub_19A4B0DCC(*a2, *(a2 + 8));
    sub_19A4B0DCC(v4, 0);

    v41 = v4;
    v42 = 0;
    goto LABEL_8;
  }

  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (v6 == v11 && v7 == v10)
    {
      sub_19A4B0DCC(v9, v8);
      sub_19A4B0DCC(v4, v5);

      sub_19A53D56C(v4, v5);
    }

    else
    {
      v115 = sub_19A573F1C();
      sub_19A4B0DCC(v9, v8);
      sub_19A4B0DCC(v4, v5);

      sub_19A53D56C(v4, v5);
      if ((v115 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
LABEL_32:
    sub_19A4B0DCC(v9, v8);
    sub_19A4B0DCC(v4, v5);

    v41 = v4;
    v42 = v5;
    goto LABEL_8;
  }

LABEL_3:
  v12 = *(a1 + 144);
  v13 = *(a1 + 112);
  v152 = *(a1 + 128);
  v153 = v12;
  v14 = *(a1 + 144);
  v154[0] = *(a1 + 160);
  *(v154 + 13) = *(a1 + 173);
  v15 = *(a1 + 80);
  v16 = *(a1 + 48);
  v148 = *(a1 + 64);
  v149 = v15;
  v17 = *(a1 + 80);
  v18 = *(a1 + 112);
  v150 = *(a1 + 96);
  v151 = v18;
  v19 = *(a1 + 48);
  v147[0] = *(a1 + 32);
  v147[1] = v19;
  v20 = *(a2 + 144);
  v21 = *(a2 + 112);
  v144 = *(a2 + 128);
  v145 = v20;
  v22 = *(a2 + 144);
  v146[0] = *(a2 + 160);
  *(v146 + 13) = *(a2 + 173);
  v23 = *(a2 + 80);
  v24 = *(a2 + 48);
  v140 = *(a2 + 64);
  v141 = v23;
  v25 = *(a2 + 80);
  v26 = *(a2 + 112);
  v142 = *(a2 + 96);
  v143 = v26;
  v27 = *(a2 + 48);
  v139[0] = *(a2 + 32);
  v139[1] = v27;
  v28 = *(a1 + 144);
  __src[6] = *(a1 + 128);
  __src[7] = v28;
  __src[8] = *(a1 + 160);
  *(&__src[8] + 13) = *(a1 + 173);
  v29 = *(a1 + 80);
  __src[2] = *(a1 + 64);
  __src[3] = v29;
  v30 = *(a1 + 112);
  __src[4] = *(a1 + 96);
  __src[5] = v30;
  v31 = *(a1 + 48);
  __src[0] = *(a1 + 32);
  __src[1] = v31;
  *(&__src[18] + 13) = *(a2 + 173);
  v32 = *(a2 + 160);
  __src[17] = v22;
  __src[18] = v32;
  __src[12] = v140;
  __src[13] = v25;
  __src[14] = v142;
  __src[16] = v144;
  __src[15] = v21;
  __src[10] = v139[0];
  __src[11] = v24;
  v137[6] = v152;
  v137[7] = v14;
  v138[0] = *(a1 + 160);
  *(v138 + 13) = *(a1 + 173);
  v137[2] = v148;
  v137[3] = v17;
  v137[4] = v150;
  v137[5] = v13;
  v137[0] = v147[0];
  v137[1] = v16;
  if (sub_19A4E7208(v137) == 1)
  {
    v33 = *(a2 + 144);
    __dst[6] = *(a2 + 128);
    __dst[7] = v33;
    __dst[8] = *(a2 + 160);
    *(&__dst[8] + 13) = *(a2 + 173);
    v34 = *(a2 + 80);
    __dst[2] = *(a2 + 64);
    __dst[3] = v34;
    v35 = *(a2 + 112);
    __dst[4] = *(a2 + 96);
    __dst[5] = v35;
    v36 = *(a2 + 48);
    __dst[0] = *(a2 + 32);
    __dst[1] = v36;
    if (sub_19A4E7208(__dst) == 1)
    {
      v37 = *(a1 + 144);
      v161 = *(a1 + 128);
      v162 = v37;
      v163[0] = *(a1 + 160);
      *(v163 + 13) = *(a1 + 173);
      v38 = *(a1 + 80);
      v157 = *(a1 + 64);
      v158 = v38;
      v39 = *(a1 + 112);
      v159 = *(a1 + 96);
      v160 = v39;
      v40 = *(a1 + 48);
      v155 = *(a1 + 32);
      v156 = v40;
      sub_19A53A768(v147, &v126);
      sub_19A53A768(v139, &v126);
      sub_19A2F3FA0(&v155, &unk_1EAFA2C20);
      goto LABEL_26;
    }

LABEL_17:
    memcpy(__dst, __src, 0x13DuLL);
    sub_19A53A768(v147, &v155);
    sub_19A53A768(v139, &v155);
    sub_19A2F3FA0(__dst, &qword_1EAFA3530);
    return 0;
  }

  v44 = *(a2 + 144);
  v132 = *(a2 + 128);
  v133 = v44;
  v134[0] = *(a2 + 160);
  *(v134 + 13) = *(a2 + 173);
  v45 = *(a2 + 80);
  v128 = *(a2 + 64);
  v129 = v45;
  v46 = *(a2 + 112);
  v130 = *(a2 + 96);
  v131 = v46;
  v47 = *(a2 + 48);
  v126 = *(a2 + 32);
  v127 = v47;
  if (sub_19A4E7208(&v126) == 1)
  {
    goto LABEL_17;
  }

  v48 = *(a2 + 144);
  v49 = *(a2 + 112);
  v121 = *(a2 + 128);
  v122 = v48;
  v50 = *(a2 + 144);
  v123[0] = *(a2 + 160);
  *(v123 + 13) = *(a2 + 173);
  v51 = *(a2 + 80);
  v52 = *(a2 + 48);
  v117 = *(a2 + 64);
  v118 = v51;
  v53 = *(a2 + 80);
  v54 = *(a2 + 112);
  v119 = *(a2 + 96);
  v120 = v54;
  v55 = *(a2 + 48);
  v116[0] = *(a2 + 32);
  v116[1] = v55;
  __dst[6] = v121;
  __dst[7] = v50;
  __dst[8] = *(a2 + 160);
  *(&__dst[8] + 13) = *(a2 + 173);
  __dst[2] = v117;
  __dst[3] = v53;
  __dst[4] = v119;
  __dst[5] = v49;
  __dst[0] = v116[0];
  __dst[1] = v52;
  v56 = *(a1 + 144);
  v161 = *(a1 + 128);
  v162 = v56;
  v163[0] = *(a1 + 160);
  *(v163 + 13) = *(a1 + 173);
  v57 = *(a1 + 80);
  v157 = *(a1 + 64);
  v158 = v57;
  v58 = *(a1 + 112);
  v159 = *(a1 + 96);
  v160 = v58;
  v59 = *(a1 + 48);
  v155 = *(a1 + 32);
  v156 = v59;
  sub_19A53A768(v147, v124);
  sub_19A53A768(v139, v124);
  v60 = _s13DiffusionBase05AppleA13ModelMetadataV18ReferenceImageInfoV23__derived_struct_equalsySbAE_AEtFZ_0(&v155, __dst);
  sub_19A2F3FA0(v116, &unk_1EAFA2C20);
  v61 = *(a1 + 144);
  v124[6] = *(a1 + 128);
  v124[7] = v61;
  v125[0] = *(a1 + 160);
  *(v125 + 13) = *(a1 + 173);
  v62 = *(a1 + 80);
  v124[2] = *(a1 + 64);
  v124[3] = v62;
  v63 = *(a1 + 112);
  v124[4] = *(a1 + 96);
  v124[5] = v63;
  v64 = *(a1 + 48);
  v124[0] = *(a1 + 32);
  v124[1] = v64;
  sub_19A2F3FA0(v124, &unk_1EAFA2C20);
  if (!v60)
  {
    return 0;
  }

LABEL_26:
  v65 = *(a1 + 192);
  v66 = *(a1 + 200);
  v67 = *(a1 + 208);
  v68 = *(a1 + 216);
  v70 = *(a2 + 192);
  v69 = *(a2 + 200);
  v72 = *(a2 + 208);
  v71 = *(a2 + 216);
  if (v66 == 1)
  {
    if (v69 == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (v69 == 1)
  {
LABEL_30:
    sub_19A4B0DCC(*(a2 + 192), *(a2 + 200));
    sub_19A4B0DCC(v65, v66);
    sub_19A53D56C(v65, v66);
    v41 = v70;
    v42 = v69;
    goto LABEL_8;
  }

  sub_19A4B0DCC(*(a2 + 192), *(a2 + 200));
  sub_19A4B0DCC(v65, v66);
  v73 = _s13DiffusionBase05AppleA13ModelMetadataV10PromptInfoV23__derived_struct_equalsySbAE_AEtFZ_0(v65, v66, v67, v68, v70, v69, v72, v71);

  sub_19A53D56C(v65, v66);
  if (!v73)
  {
    return 0;
  }

LABEL_34:
  v74 = *(a1 + 224);
  v75 = *(a2 + 224);
  if (v74)
  {
    if (!v75 || (sub_19A504E80(v74, v75) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  v76 = *(a1 + 232);
  v77 = *(a2 + 232);
  if (v76)
  {
    if (!v77)
    {
      return 0;
    }

    v78 = sub_19A533E78(v76, v77);

    if ((v78 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v79 = *(a1 + 240);
  v80 = *(a2 + 240);
  if (v79)
  {
    if (!v80)
    {
      return 0;
    }

    v81 = sub_19A533E78(v79, v80);

    if ((v81 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  v82 = *(a1 + 248);
  v83 = *(a2 + 248);
  if (v82)
  {
    if (!v83)
    {
      return 0;
    }

    v84 = sub_19A504F10(v82, v83);

    if ((v84 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v83)
  {
    return 0;
  }

  if (*(a1 + 290))
  {
    if ((*(a2 + 290) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 290))
    {
      return 0;
    }

    v85 = *(a1 + 264);
    v86 = *(a1 + 272);
    v87 = *(a1 + 280);
    v88 = *(a2 + 256);
    v89 = *(a2 + 264);
    v90 = *(a2 + 272);
    v91 = *(a2 + 280);
    v92 = *(a2 + 288);
    *(&v93 + 1) = *(a1 + 288);
    *&v93 = v87;
    LODWORD(v126) = *(a1 + 256);
    *(&v126 + 1) = v85;
    LOBYTE(v127) = v86 & 1;
    DWORD1(v127) = HIDWORD(v86);
    BYTE8(v127) = v87 & 1;
    HIDWORD(v127) = HIDWORD(v87);
    LOBYTE(v128) = (v93 >> 32) >> 32;
    BYTE1(v128) = BYTE9(v93) & 1;
    *(&v93 + 1) = v92;
    *&v93 = v91;
    LODWORD(__src[0]) = v88;
    *(&__src[0] + 1) = v89;
    LOBYTE(__src[1]) = v90 & 1;
    DWORD1(__src[1]) = HIDWORD(v90);
    BYTE8(__src[1]) = v91 & 1;
    HIDWORD(__src[1]) = HIDWORD(v91);
    LOBYTE(__src[2]) = (v93 >> 32) >> 32;
    BYTE1(__src[2]) = BYTE1(v92) & 1;
    if ((_s13DiffusionBase05AppleA13ModelMetadataV19GlobalLCMParametersV23__derived_struct_equalsySbAE_AEtFZ_0(&v126, __src) & 1) == 0)
    {
      return 0;
    }
  }

  v94 = *(a1 + 296);
  v95 = *(a2 + 296);
  if (v94)
  {
    if (!v95)
    {
      return 0;
    }

    v96 = sub_19A534008(v94, v95);

    if ((v96 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v95)
  {
    return 0;
  }

  v97 = *(a1 + 304);
  v98 = *(a2 + 304);
  if (v97)
  {
    if (!v98)
    {
      return 0;
    }

    v99 = sub_19A533E78(v97, v98);

    if ((v99 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  v100 = *(a1 + 312);
  v101 = *(a2 + 312);
  if (v100)
  {
    if (!v101)
    {
      return 0;
    }

    v102 = sub_19A534174(v100, v101);

    if ((v102 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  v103 = *(a1 + 320);
  v104 = *(a2 + 320);
  if (v103)
  {
    if (!v104)
    {
      return 0;
    }

    v105 = sub_19A534318(v103, v104);

    if ((v105 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  v106 = *(a1 + 328);
  v107 = *(a2 + 328);
  if (v106)
  {
    if (!v107)
    {
      return 0;
    }

    v108 = sub_19A534718(v106, v107);

    if ((v108 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v109 = *(a2 + 340);
  if (*(a1 + 340))
  {
    if (!*(a2 + 340))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 336) != *(a2 + 336))
    {
      v109 = 1;
    }

    if (v109)
    {
      return 0;
    }
  }

  v110 = *(a1 + 344);
  v111 = *(a2 + 344);
  if (v110)
  {
    if (!v111 || (sub_19A5053D4(v110, v111) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v111)
  {
    return 0;
  }

  v112 = *(a1 + 352);
  v113 = *(a2 + 352);
  if (v112)
  {
    if (v113)
    {

      v114 = sub_19A534174(v112, v113);

      if (v114)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v113;
}

uint64_t sub_19A53770C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA34D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53D0EC();
  sub_19A57417C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_19A573C8C();
    v10 = 1;
    sub_19A573C8C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV18ReferenceImageInfoV012ConditioningD7VersionO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A53793C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x800000019A59D600 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000019A596980 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000019A5968D0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x800000019A596950 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x800000019A5968A0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000019A59D640 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000019A59D660 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000019A59D680 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000019A59D6A0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000028 && 0x800000019A596810 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000028 && 0x800000019A5967E0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000002BLL && 0x800000019A5967B0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002BLL && 0x800000019A596780 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002BLL && 0x800000019A596750 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000002BLL && 0x800000019A596720 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000002ELL && 0x800000019A5966F0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000002ELL && 0x800000019A5966C0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000025 && 0x800000019A596690 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000025 && 0x800000019A596660 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000028 && 0x800000019A596630 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000028 && 0x800000019A596600 == a2)
  {

    return 20;
  }

  else
  {
    v5 = sub_19A573F1C();

    if (v5)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_19A537FA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3578);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v129 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_19A53E064();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v129);
  }

  v10 = v6;
  v53 = a2;
  LOBYTE(v54) = 0;
  sub_19A53E0B8();
  sub_19A573CDC();
  v11 = LOBYTE(v63[0]);
  LOBYTE(v63[0]) = 1;
  sub_19A573D2C();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
  LOBYTE(v54) = 2;
  sub_19A53DBDC(&qword_1ED823F30, &unk_1EAFA32E0);
  sub_19A573D4C();
  v52 = v63[0];
  LOBYTE(v63[0]) = 3;
  sub_19A573D2C();
  v16 = v15;
  LOBYTE(v54) = 4;
  sub_19A573D4C();
  v50 = v63[0];
  LOBYTE(v63[0]) = 5;
  v17 = sub_19A573CBC();
  v126 = BYTE4(v17) & 1;
  LOBYTE(v54) = 6;
  v51 = v17;
  sub_19A573CDC();
  v49 = v63[0];
  LOBYTE(v63[0]) = 7;
  v42 = sub_19A573CBC();
  v123 = BYTE4(v42) & 1;
  LOBYTE(v54) = 8;
  v47 = v14;
  sub_19A573CDC();
  v41 = v11;
  v48 = v63[0];
  LOBYTE(v54) = 9;
  sub_19A573CDC();
  v47 = v63[0];
  LOBYTE(v63[0]) = 10;
  v18 = sub_19A573CBC();
  v19 = v18;
  v120 = BYTE4(v18) & 1;
  LOBYTE(v54) = 11;
  sub_19A573CDC();
  v46 = v63[0];
  LOBYTE(v63[0]) = 12;
  v40 = sub_19A573CBC();
  v117 = BYTE4(v40) & 1;
  LOBYTE(v54) = 13;
  sub_19A573CDC();
  v45 = v63[0];
  LOBYTE(v63[0]) = 14;
  v39 = sub_19A573CBC();
  v114 = BYTE4(v39) & 1;
  LOBYTE(v54) = 15;
  sub_19A573CDC();
  v44 = v63[0];
  LOBYTE(v63[0]) = 16;
  v38 = sub_19A573CBC();
  v111 = BYTE4(v38) & 1;
  LOBYTE(v54) = 17;
  sub_19A573CDC();
  v43 = v63[0];
  LOBYTE(v63[0]) = 18;
  v37 = sub_19A573CBC();
  v108 = BYTE4(v37) & 1;
  LOBYTE(v54) = 19;
  sub_19A573CDC();
  v20 = v63[0];
  v104 = 20;
  v21 = sub_19A573CBC();
  (*(v10 + 8))(v8, v5);
  v30 = v21;
  v105 = BYTE4(v21) & 1;
  LOBYTE(v54) = v41;
  *(&v54 + 1) = v127;
  BYTE3(v54) = v128;
  DWORD1(v54) = v13;
  *(&v54 + 1) = v52;
  LODWORD(v55) = v16;
  *(&v55 + 1) = v50;
  LODWORD(v56) = v51;
  v36 = v126;
  BYTE4(v56) = v126;
  *(&v56 + 5) = v124;
  BYTE7(v56) = v125;
  *(&v56 + 1) = v49;
  LODWORD(v57) = v42;
  v35 = v123;
  BYTE4(v57) = v123;
  *(&v57 + 5) = v121;
  BYTE7(v57) = v122;
  *(&v57 + 1) = v48;
  *&v58 = v47;
  DWORD2(v58) = v19;
  v34 = v120;
  BYTE12(v58) = v120;
  *(&v58 + 13) = v118;
  HIBYTE(v58) = v119;
  *&v59 = v46;
  DWORD2(v59) = v40;
  v33 = v117;
  BYTE12(v59) = v117;
  HIBYTE(v59) = v116;
  *(&v59 + 13) = v115;
  *&v60 = v45;
  DWORD2(v60) = v39;
  v32 = v114;
  BYTE12(v60) = v114;
  HIBYTE(v60) = v113;
  *(&v60 + 13) = v112;
  v22 = v43;
  *&v61 = v44;
  LODWORD(v10) = v37;
  DWORD2(v61) = v38;
  v31 = v111;
  BYTE12(v61) = v111;
  HIBYTE(v61) = v110;
  *(&v61 + 13) = v109;
  *&v62[0] = v43;
  DWORD2(v62[0]) = v37;
  v23 = v108;
  BYTE12(v62[0]) = v108;
  HIBYTE(v62[0]) = v107;
  *(v62 + 13) = v106;
  *&v62[1] = v20;
  DWORD2(v62[1]) = v21;
  BYTE12(v62[1]) = BYTE4(v21) & 1;
  sub_19A53E10C(&v54, v63);
  __swift_destroy_boxed_opaque_existential_0Tm(v129);
  LOBYTE(v63[0]) = v41;
  *(v63 + 1) = v127;
  BYTE3(v63[0]) = v128;
  HIDWORD(v63[0]) = v13;
  v63[1] = v52;
  v64 = v16;
  v65 = v50;
  v66 = v51;
  v67 = v36;
  v68 = v124;
  v69 = v125;
  v70 = v49;
  v71 = v42;
  v72 = v35;
  v73 = v121;
  v74 = v122;
  v75 = v48;
  v76 = v47;
  v77 = v19;
  v78 = v34;
  v79 = v118;
  v80 = v119;
  v81 = v46;
  v82 = v40;
  v83 = v33;
  v84 = v115;
  v85 = v116;
  v86 = v45;
  v87 = v39;
  v88 = v32;
  v90 = v113;
  v89 = v112;
  v91 = v44;
  v92 = v38;
  v93 = v31;
  v95 = v110;
  v94 = v109;
  v96 = v22;
  v97 = v10;
  v98 = v23;
  v100 = v107;
  v99 = v106;
  v101 = v20;
  v102 = v30;
  v103 = BYTE4(v21) & 1;
  result = sub_19A53E144(v63);
  v25 = v61;
  v26 = v53;
  v53[6] = v60;
  v26[7] = v25;
  v26[8] = v62[0];
  *(v26 + 141) = *(v62 + 13);
  v27 = v57;
  v26[2] = v56;
  v26[3] = v27;
  v28 = v59;
  v26[4] = v58;
  v26[5] = v28;
  v29 = v55;
  *v26 = v54;
  v26[1] = v29;
  return result;
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV10PromptInfoV012ConditioningD7VersionO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A538C88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000019A59D600 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A59D620 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A538DAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3570);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53DFBC();
  sub_19A57417C();
  v8[31] = 0;
  v7 = sub_19A573C8C();
  v8[29] = 1;
  sub_19A53E010();
  sub_19A573CDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  v8[28] = 2;
  sub_19A53DBDC(&qword_1ED823F40, &qword_1EAF9FCD8);
  sub_19A573CDC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV8LoraInfoV0F4TypeO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A53906C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1667592307 && a2 == 0xE400000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A539180(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3568);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53DF14();
  sub_19A57417C();
  if (!v1)
  {
    v12 = 0;
    sub_19A53DF68();
    sub_19A573CDC();
    v7 = v13;
    v11 = 1;
    sub_19A573C8C();
    v10 = 2;
    sub_19A573CBC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_19A5393A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6164697567 && a2 == 0xEE00656C6163735FLL;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706574735F6D756ELL && a2 == 0xE900000000000073 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5F6D636C5F657375 && a2 == 0xEC00000073726570 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365766C6F766E69 && a2 == 0xEF656C706F65705FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A539528@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3560);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53DE6C();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  sub_19A573D2C();
  v10 = v9;
  v26 = 1;
  v11 = sub_19A573CCC();
  v13 = v12;
  v14 = v11;
  v25 = 2;
  v20 = sub_19A573CBC();
  v21 = 3;
  sub_19A53DEC0();
  sub_19A573CDC();
  (*(v6 + 8))(v8, v5);
  v15 = v22;
  v16 = v23;
  v17 = v24;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v10;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13 & 1;
  v19 = BYTE4(v20);
  *(a2 + 20) = v20;
  *(a2 + 24) = v19 & 1;
  *(a2 + 32) = v16;
  *(a2 + 28) = v15;
  *(a2 + 33) = v17;
  return result;
}

unint64_t sub_19A539778()
{
  result = qword_1ED825118;
  if (!qword_1ED825118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825118);
  }

  return result;
}

uint64_t sub_19A5397CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000019A59D540 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A59D560 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A59D580 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019A59D5A0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A59D5C0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A59D5E0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_19A573F1C();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_19A5399D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3558);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53DE18();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = 0;
  v9 = sub_19A573D3C();
  v22 = 1;
  v10 = sub_19A573D3C();
  v21 = 2;
  v17 = sub_19A573D3C();
  v20 = 3;
  v16 = sub_19A573D3C();
  v19 = 4;
  v15 = sub_19A573D3C();
  v18 = 5;
  v14 = sub_19A573D3C();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9;
  a2[1] = v10;
  v12 = v16;
  a2[2] = v17;
  a2[3] = v12;
  v13 = v14;
  a2[4] = v15;
  a2[5] = v13;
  return result;
}

uint64_t sub_19A539C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745F74706D6F7270 && a2 == 0xEF6574616C706D65;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A539D24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3550);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53DDC4();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = 0;
  v9 = sub_19A573C8C();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_19A573C8C();
  v18 = v12;
  v20 = 2;
  v13 = sub_19A573CBC();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v19;
  *(a2 + 8) = v11;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  *(a2 + 36) = BYTE4(v13) & 1;
  return result;
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV34Adapter_StyleSpecificAugmentationsV17ReplacementTokensO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t _s13DiffusionBase05AppleA13ModelMetadataV34Adapter_StyleSpecificAugmentationsV5ShadeO8rawValueAGSgSi_tcfC_0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_19A539FCC(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5, uint64_t (*a6)(uint64_t), void (*a7)(void), uint64_t a8, void (*a9)(void))
{
  v55 = a5;
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (63 - v11) >> 6;

  v15 = 0;
  v46 = v10;
  while (v13)
  {
    v50 = a4;
    v21 = v15;
LABEL_14:
    v23 = __clz(__rbit64(v13)) | (v21 << 6);
    v24 = *(*(a1 + 48) + v23);
    v25 = (*(a1 + 56) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v52[0] = v24;
    v53 = v26;
    v54 = v27;

    a2(v51, v52);

    v28 = LOBYTE(v51[0]);
    v29 = v51[1];
    v30 = v51[2];
    v31 = *v55;
    v33 = a6(LOBYTE(v51[0]));
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_25;
    }

    v36 = v32;
    if (v31[3] >= v34 + v35)
    {
      if ((v50 & 1) == 0)
      {
        a9();
      }
    }

    else
    {
      a7();
      v37 = a6(v28);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v33 = v37;
    }

    v13 &= v13 - 1;
    v39 = *v55;
    if (v36)
    {
      v16 = 16 * v33;
      v17 = (v39[7] + v16);
      v19 = *v17;
      v18 = v17[1];

      v20 = (v39[7] + v16);
      *v20 = v19;
      v20[1] = v18;
    }

    else
    {
      v39[(v33 >> 6) + 8] |= 1 << v33;
      *(v39[6] + v33) = v28;
      v40 = (v39[7] + 16 * v33);
      *v40 = v29;
      v40[1] = v30;
      v41 = v39[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v39[2] = v43;
    }

    a4 = 1;
    v15 = v21;
    v10 = v46;
  }

  v22 = v15;
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v14)
    {
      sub_19A2EA480();
    }

    v13 = *(v10 + 8 * v21);
    ++v22;
    if (v13)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A53A28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745F6E6F73726570 && a2 == 0xEF6574616C706D65;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F746E696B73 && a2 == 0xE800000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1919508840 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A53A3F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3538);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53DC44();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v19) = 0;
  v16 = sub_19A573C8C();
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3540);
  v18 = 1;
  sub_19A53DCEC(&qword_1ED823FA0, &qword_1EAFA3540, &unk_19A5930F0, sub_19A53DC98);
  sub_19A573CDC();
  v15 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3548);
  v18 = 2;
  v14[1] = sub_19A53DCEC(&qword_1ED823F98, &qword_1EAFA3548, &unk_19A5930F8, sub_19A53DD70);
  sub_19A573CDC();
  v14[0] = v19;
  v18 = 3;
  sub_19A573CDC();
  (*(v6 + 8))(v8, v5);
  v10 = v19;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v12 = v17;
  *a2 = v16;
  a2[1] = v12;
  v13 = v14[0];
  a2[2] = v15;
  a2[3] = v13;
  a2[4] = v10;
  return result;
}

uint64_t sub_19A53A768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A53A7D8()
{
  v0 = sub_19A573C2C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A53A824(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE900000000000072;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEF6567616D695F65 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5F656C626174756DLL && a2 == 0xEC0000007379656BLL || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x735F746E6574616CLL && a2 == 0xEC00000073657A69 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69735F6567616D69 && a2 == 0xEB0000000073657ALL || (sub_19A573F1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7361726F6CLL && a2 == 0xE500000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7168876 && a2 == 0xE300000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A59C560 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000019A59D480 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65745F656C797473 && a2 == 0xEF736574616C706DLL || (sub_19A573F1C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A59D4A0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A59D4C0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x800000019A59D4E0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000019A59D500 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x800000019A59D520 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

void *sub_19A53AD34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA34F8);
  v5 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53D518();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v42 = a2;
  v43 = v5;
  v44[0] = 0;
  sub_19A53D5B4();
  sub_19A573CDC();
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v89 = 1;
  sub_19A53D608();
  sub_19A573CDC();
  v113 = v96;
  v114 = v97;
  v115[0] = v98[0];
  *(v115 + 13) = *(v98 + 13);
  v109 = v92;
  v110 = v93;
  v111 = v94;
  v112 = v95;
  v107 = v90;
  v108 = v91;
  v44[0] = 2;
  sub_19A53D65C();
  v37 = 0;
  sub_19A573CDC();
  v33 = v45;
  v34 = v46;
  v35 = v47;
  v36 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  v44[0] = 3;
  sub_19A53DBDC(&qword_1ED823F40, &qword_1EAF9FCD8);
  sub_19A573CDC();
  v32 = v45;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3500);
  v44[0] = 4;
  v9 = sub_19A53D6B0();
  sub_19A573CDC();
  v31 = v45;
  v44[0] = 5;
  sub_19A573CDC();
  v26 = v9;
  v27 = v8;
  v30 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3508);
  v44[0] = 6;
  sub_19A53DB0C(&qword_1ED823F60, &qword_1EAFA3508, &unk_19A5930A8, sub_19A53D75C);
  sub_19A573CDC();
  v29 = v45;
  v44[0] = 7;
  sub_19A53D7B0();
  sub_19A573CDC();
  v24 = v46;
  v25 = v45;
  v22 = v48;
  v23 = v47;
  v21 = v49;
  v104 = BYTE2(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3510);
  v44[0] = 8;
  sub_19A53D928(&qword_1ED823FB0, &qword_1EAFA3510, &unk_19A5930B0, sub_19A53D858);
  sub_19A573CDC();
  v28 = v45;
  v44[0] = 9;
  sub_19A573CDC();
  v27 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290);
  v44[0] = 10;
  sub_19A53D8AC();
  sub_19A573CDC();
  v26 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3518);
  v44[0] = 11;
  sub_19A53D928(&qword_1ED823FB8, &qword_1EAFA3518, &unk_19A5930C0, sub_19A53D9AC);
  sub_19A573CDC();
  v10 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3520);
  v44[0] = 12;
  sub_19A53DA00();
  sub_19A573CDC();
  v37 = v45;
  LOBYTE(v45) = 13;
  v19 = sub_19A573CBC();
  v101 = BYTE4(v19) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
  v44[0] = 14;
  sub_19A53DBDC(&qword_1ED823F30, &unk_1EAFA32E0);
  sub_19A573CDC();
  v20 = v45;
  v87 = 15;
  sub_19A573CDC();
  (*(v43 + 8))(v7, v116);
  v43 = v88;
  *v44 = v38;
  *&v44[8] = v39;
  *&v44[16] = v40;
  *&v44[24] = v41;
  *&v44[128] = v113;
  *&v44[144] = v114;
  *&v44[160] = v115[0];
  *&v44[173] = *(v115 + 13);
  *&v44[64] = v109;
  *&v44[80] = v110;
  *&v44[96] = v111;
  *&v44[112] = v112;
  *&v44[32] = v107;
  *&v44[48] = v108;
  *&v44[189] = v105;
  v44[191] = v106;
  *&v44[192] = v33;
  *&v44[200] = v34;
  *&v44[208] = v35;
  *&v44[216] = v36;
  *&v44[224] = v32;
  *&v44[232] = v31;
  *&v44[240] = v30;
  *&v44[248] = v29;
  *&v44[256] = v25;
  *&v44[264] = v24;
  *&v44[272] = v23;
  *&v44[280] = v22;
  *&v44[288] = v21;
  LODWORD(v116) = v104;
  v44[290] = v104;
  *&v44[291] = v102;
  v44[295] = v103;
  v11 = v28;
  *&v44[296] = v28;
  *&v44[304] = v27;
  v12 = v26;
  *&v44[312] = v26;
  v13 = v10;
  *&v44[320] = v10;
  *&v44[328] = v37;
  v14 = v19;
  v15 = v20;
  *&v44[336] = v19;
  v18 = v101;
  v44[340] = v101;
  *&v44[341] = v99;
  v44[343] = v100;
  *&v44[344] = v20;
  *&v44[352] = v88;
  sub_19A4895B4(v44, &v45);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v45 = v38;
  v46 = v39;
  v47 = v40;
  v48 = v41;
  v55 = v113;
  v56 = v114;
  *v57 = v115[0];
  *&v57[13] = *(v115 + 13);
  v51 = v109;
  v52 = v110;
  v53 = v111;
  v54 = v112;
  v49 = v107;
  v50 = v108;
  v58 = v105;
  v59 = v106;
  v60 = v33;
  v61 = v34;
  v62 = v35;
  v63 = v36;
  v64 = v32;
  v65 = v31;
  v66 = v30;
  v67 = v29;
  v68 = v25;
  v69 = v24;
  v70 = v23;
  v71 = v22;
  v72 = v21;
  v73 = v116;
  v74 = v102;
  v75 = v103;
  v76 = v11;
  v77 = v27;
  v78 = v12;
  v79 = v13;
  v80 = v37;
  v81 = v14;
  v82 = v18;
  v83 = v99;
  v84 = v100;
  v85 = v15;
  v86 = v43;
  sub_19A4B0CA8(&v45);
  return memcpy(v42, v44, 0x168uLL);
}

void *sub_19A53BBEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = sub_19A572D6C();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA34E8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A53D48C();
  v9 = v34;
  sub_19A57417C();
  if (v9)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v25;
  v29[0] = 1;
  v11 = sub_19A573CFC();
  v34 = v13;
  v23 = v11;
  v29[0] = 0;
  sub_19A573CFC();
  v21 = v8;
  v22 = v6;
  v14 = v5;
  sub_19A572D4C();
  v15 = sub_19A572D0C();
  v17 = v16;

  (*(v10 + 8))(v14, v3);
  if (v17 >> 60 == 15)
  {
    type metadata accessor for AppleDiffusionMetadataError();
    sub_19A53D3E0();
    swift_allocError();
    *v18 = 0x6E695F6C65646F6DLL;
    v18[1] = 0xEB00000000736F66;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v26 + 8))(v21, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    sub_19A5707EC();
    swift_allocObject();
    sub_19A5707DC();
    sub_19A53D438();
    sub_19A5707BC();
    (*(v26 + 8))(v21, v22);

    sub_19A33EFB0(v15, v17);
    memcpy(v27, v32, sizeof(v27));
    nullsub_2(v27);
    memcpy(v33, v27, sizeof(v33));
    memcpy(v28, v27, 0x168uLL);
    v19 = v23;
    v28[45] = v23;
    v20 = v34;
    v28[46] = v34;
    sub_19A53D4E0(v28, v29);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    memcpy(v29, v33, sizeof(v29));
    v30 = v19;
    v31 = v20;
    sub_19A4F75E8(v29);
    return memcpy(v24, v28, 0x178uLL);
  }
}

unint64_t sub_19A53C034()
{
  result = qword_1EAF9F8B8;
  if (!qword_1EAF9F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F8B8);
  }

  return result;
}

unint64_t sub_19A53C08C()
{
  result = qword_1EAFA3470;
  if (!qword_1EAFA3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3470);
  }

  return result;
}

unint64_t sub_19A53C0E4()
{
  result = qword_1EAF9F8C0;
  if (!qword_1EAF9F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F8C0);
  }

  return result;
}

unint64_t sub_19A53C13C()
{
  result = qword_1EAFA3478;
  if (!qword_1EAFA3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3478);
  }

  return result;
}

unint64_t sub_19A53C194()
{
  result = qword_1EAFA3480;
  if (!qword_1EAFA3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3480);
  }

  return result;
}

unint64_t sub_19A53C1EC()
{
  result = qword_1EAFA3488;
  if (!qword_1EAFA3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3488);
  }

  return result;
}

unint64_t sub_19A53C244()
{
  result = qword_1EAFA3490;
  if (!qword_1EAFA3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3490);
  }

  return result;
}

unint64_t sub_19A53C29C()
{
  result = qword_1EAFA3498;
  if (!qword_1EAFA3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3498);
  }

  return result;
}

unint64_t sub_19A53C2F4()
{
  result = qword_1ED8251B8;
  if (!qword_1ED8251B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251B8);
  }

  return result;
}

unint64_t sub_19A53C34C()
{
  result = qword_1EAFA34A0;
  if (!qword_1EAFA34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34A0);
  }

  return result;
}

unint64_t sub_19A53C3A4()
{
  result = qword_1ED825150;
  if (!qword_1ED825150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825150);
  }

  return result;
}

unint64_t sub_19A53C3FC()
{
  result = qword_1EAFA34A8;
  if (!qword_1EAFA34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34A8);
  }

  return result;
}

unint64_t sub_19A53C454()
{
  result = qword_1ED8250E0;
  if (!qword_1ED8250E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250E0);
  }

  return result;
}

unint64_t sub_19A53C4AC()
{
  result = qword_1ED8250C8;
  if (!qword_1ED8250C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250C8);
  }

  return result;
}

unint64_t sub_19A53C504()
{
  result = qword_1EAFA34B0;
  if (!qword_1EAFA34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34B0);
  }

  return result;
}

unint64_t sub_19A53C55C()
{
  result = qword_1EAFA34B8;
  if (!qword_1EAFA34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34B8);
  }

  return result;
}

unint64_t sub_19A53C5B4()
{
  result = qword_1EAFA34C0;
  if (!qword_1EAFA34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34C0);
  }

  return result;
}

uint64_t type metadata accessor for AppleDiffusionMetadataError()
{
  result = qword_1ED8252C0;
  if (!qword_1ED8252C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A53C654()
{
  sub_19A53C6C8();
  if (v0 <= 0x3F)
  {
    sub_19A53C6F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_19A53C6C8()
{
  result = qword_1ED823F70;
  if (!qword_1ED823F70)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ED823F70);
  }

  return result;
}

void sub_19A53C6F8()
{
  if (!qword_1ED8252F8)
  {
    v0 = sub_19A570EAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8252F8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase05AppleA13ModelMetadataV18ReferenceImageInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19A53C760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 360))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_19A53C7BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy157_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_19A53C8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 157))
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

uint64_t sub_19A53C8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 157) = 1;
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

    *(result + 157) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_19A53C9B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 29))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_19A53CA14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19A53CAA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A53CAC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 34) = v3;
  return result;
}

uint64_t sub_19A53CB24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A53CB44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19A53CBB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 37))
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

uint64_t sub_19A53CC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19A53CC78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_19A53CCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase05AppleA13ModelMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
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

uint64_t sub_19A53CD9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 376))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 368);
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

uint64_t sub_19A53CDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 376) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 376) = 0;
    }

    if (a2)
    {
      *(result + 368) = a2;
    }
  }

  return result;
}

uint64_t sub_19A53CEBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_19A53CF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_19A53CF90()
{
  result = qword_1EAFA34C8;
  if (!qword_1EAFA34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34C8);
  }

  return result;
}

unint64_t sub_19A53CFE8()
{
  result = qword_1EAFA34D0;
  if (!qword_1EAFA34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34D0);
  }

  return result;
}

unint64_t sub_19A53D040()
{
  result = qword_1ED825108;
  if (!qword_1ED825108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825108);
  }

  return result;
}

unint64_t sub_19A53D098()
{
  result = qword_1ED825110;
  if (!qword_1ED825110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825110);
  }

  return result;
}

unint64_t sub_19A53D0EC()
{
  result = qword_1ED8251D8;
  if (!qword_1ED8251D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251D8);
  }

  return result;
}

unint64_t sub_19A53D140()
{
  result = qword_1EAFA34E0;
  if (!qword_1EAFA34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34E0);
  }

  return result;
}

unint64_t sub_19A53D194()
{
  result = qword_1ED8250C0;
  if (!qword_1ED8250C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250C0);
  }

  return result;
}

unint64_t sub_19A53D1E8()
{
  result = qword_1ED8250D8;
  if (!qword_1ED8250D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250D8);
  }

  return result;
}

unint64_t sub_19A53D23C()
{
  result = qword_1ED825148;
  if (!qword_1ED825148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825148);
  }

  return result;
}

unint64_t sub_19A53D290()
{
  result = qword_1ED8251B0;
  if (!qword_1ED8251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251B0);
  }

  return result;
}

unint64_t sub_19A53D2E4()
{
  result = qword_1ED825080;
  if (!qword_1ED825080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825080);
  }

  return result;
}

unint64_t sub_19A53D338()
{
  result = qword_1ED825208;
  if (!qword_1ED825208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825208);
  }

  return result;
}

unint64_t sub_19A53D38C()
{
  result = qword_1ED8251A0;
  if (!qword_1ED8251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251A0);
  }

  return result;
}

unint64_t sub_19A53D3E0()
{
  result = qword_1ED8252D0;
  if (!qword_1ED8252D0)
  {
    type metadata accessor for AppleDiffusionMetadataError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8252D0);
  }

  return result;
}

unint64_t sub_19A53D438()
{
  result = qword_1ED825050;
  if (!qword_1ED825050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825050);
  }

  return result;
}

unint64_t sub_19A53D48C()
{
  result = qword_1EAFA34F0;
  if (!qword_1EAFA34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA34F0);
  }

  return result;
}

unint64_t sub_19A53D518()
{
  result = qword_1ED825220[0];
  if (!qword_1ED825220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED825220);
  }

  return result;
}

uint64_t sub_19A53D56C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_19A53D5B4()
{
  result = qword_1ED8251C0;
  if (!qword_1ED8251C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251C0);
  }

  return result;
}

unint64_t sub_19A53D608()
{
  result = qword_1ED825178;
  if (!qword_1ED825178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825178);
  }

  return result;
}

unint64_t sub_19A53D65C()
{
  result = qword_1ED8251E0;
  if (!qword_1ED8251E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251E0);
  }

  return result;
}

unint64_t sub_19A53D6B0()
{
  result = qword_1ED823F78;
  if (!qword_1ED823F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3500);
    sub_19A53DBDC(&qword_1ED823F28, &qword_1EAFA2DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823F78);
  }

  return result;
}

unint64_t sub_19A53D75C()
{
  result = qword_1ED825058;
  if (!qword_1ED825058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825058);
  }

  return result;
}

unint64_t sub_19A53D7B0()
{
  result = qword_1ED825158;
  if (!qword_1ED825158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825158);
  }

  return result;
}

unint64_t sub_19A53D804()
{
  result = qword_1ED8251A8;
  if (!qword_1ED8251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251A8);
  }

  return result;
}

unint64_t sub_19A53D858()
{
  result = qword_1ED825088;
  if (!qword_1ED825088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825088);
  }

  return result;
}

unint64_t sub_19A53D8AC()
{
  result = qword_1ED823F88;
  if (!qword_1ED823F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823F88);
  }

  return result;
}

uint64_t sub_19A53D928(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_19A53D804();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A53D9AC()
{
  result = qword_1ED8250B0;
  if (!qword_1ED8250B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250B0);
  }

  return result;
}

unint64_t sub_19A53DA00()
{
  result = qword_1ED823FA8;
  if (!qword_1ED823FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3520);
    sub_19A53DAB8();
    sub_19A53DB0C(&qword_1ED823F68, &qword_1EAFA3528, &unk_19A5930D0, sub_19A53DB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FA8);
  }

  return result;
}

unint64_t sub_19A53DAB8()
{
  result = qword_1ED825140;
  if (!qword_1ED825140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825140);
  }

  return result;
}

uint64_t sub_19A53DB0C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A53DB88()
{
  result = qword_1ED825120;
  if (!qword_1ED825120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825120);
  }

  return result;
}

uint64_t sub_19A53DBDC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A53DC44()
{
  result = qword_1ED8250F8;
  if (!qword_1ED8250F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250F8);
  }

  return result;
}

unint64_t sub_19A53DC98()
{
  result = qword_1ED8250D0;
  if (!qword_1ED8250D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250D0);
  }

  return result;
}

uint64_t sub_19A53DCEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A53DD70()
{
  result = qword_1ED8250B8;
  if (!qword_1ED8250B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250B8);
  }

  return result;
}

unint64_t sub_19A53DDC4()
{
  result = qword_1ED825138;
  if (!qword_1ED825138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825138);
  }

  return result;
}

unint64_t sub_19A53DE18()
{
  result = qword_1ED8250A0;
  if (!qword_1ED8250A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250A0);
  }

  return result;
}

unint64_t sub_19A53DE6C()
{
  result = qword_1ED825170;
  if (!qword_1ED825170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825170);
  }

  return result;
}

unint64_t sub_19A53DEC0()
{
  result = qword_1ED825100;
  if (!qword_1ED825100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825100);
  }

  return result;
}

unint64_t sub_19A53DF14()
{
  result = qword_1ED825070;
  if (!qword_1ED825070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825070);
  }

  return result;
}

unint64_t sub_19A53DF68()
{
  result = qword_1ED825078;
  if (!qword_1ED825078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825078);
  }

  return result;
}

unint64_t sub_19A53DFBC()
{
  result = qword_1ED8251F8;
  if (!qword_1ED8251F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251F8);
  }

  return result;
}

unint64_t sub_19A53E010()
{
  result = qword_1ED825200;
  if (!qword_1ED825200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825200);
  }

  return result;
}

unint64_t sub_19A53E064()
{
  result = qword_1ED825190;
  if (!qword_1ED825190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825190);
  }

  return result;
}

unint64_t sub_19A53E0B8()
{
  result = qword_1ED825198;
  if (!qword_1ED825198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDiffusionModelMetadata.ReferenceImageInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionModelMetadata.ReferenceImageInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDiffusionModelMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionModelMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A53E4A8()
{
  result = qword_1EAFA3580;
  if (!qword_1EAFA3580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3580);
  }

  return result;
}

unint64_t sub_19A53E510()
{
  result = qword_1EAF9EFF8;
  if (!qword_1EAF9EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EFF8);
  }

  return result;
}

unint64_t sub_19A53E568()
{
  result = qword_1EAFA3590;
  if (!qword_1EAFA3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3590);
  }

  return result;
}

unint64_t sub_19A53E5C0()
{
  result = qword_1EAFA3598;
  if (!qword_1EAFA3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3598);
  }

  return result;
}

unint64_t sub_19A53E618()
{
  result = qword_1EAFA35A0;
  if (!qword_1EAFA35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35A0);
  }

  return result;
}

unint64_t sub_19A53E670()
{
  result = qword_1EAFA35A8;
  if (!qword_1EAFA35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35A8);
  }

  return result;
}

unint64_t sub_19A53E6C8()
{
  result = qword_1EAFA35B0;
  if (!qword_1EAFA35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35B0);
  }

  return result;
}

unint64_t sub_19A53E720()
{
  result = qword_1EAFA35B8;
  if (!qword_1EAFA35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35B8);
  }

  return result;
}

unint64_t sub_19A53E778()
{
  result = qword_1EAFA35C0;
  if (!qword_1EAFA35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35C0);
  }

  return result;
}

unint64_t sub_19A53E7D0()
{
  result = qword_1EAFA35C8;
  if (!qword_1EAFA35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35C8);
  }

  return result;
}

unint64_t sub_19A53E828()
{
  result = qword_1EAFA35D0;
  if (!qword_1EAFA35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35D0);
  }

  return result;
}

unint64_t sub_19A53E880()
{
  result = qword_1EAFA35D8;
  if (!qword_1EAFA35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35D8);
  }

  return result;
}

unint64_t sub_19A53E8D8()
{
  result = qword_1ED825180;
  if (!qword_1ED825180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825180);
  }

  return result;
}

unint64_t sub_19A53E930()
{
  result = qword_1ED825188;
  if (!qword_1ED825188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825188);
  }

  return result;
}

unint64_t sub_19A53E988()
{
  result = qword_1ED8251E8;
  if (!qword_1ED8251E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251E8);
  }

  return result;
}

unint64_t sub_19A53E9E0()
{
  result = qword_1ED8251F0;
  if (!qword_1ED8251F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251F0);
  }

  return result;
}

unint64_t sub_19A53EA38()
{
  result = qword_1ED825060;
  if (!qword_1ED825060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825060);
  }

  return result;
}

unint64_t sub_19A53EA90()
{
  result = qword_1ED825068;
  if (!qword_1ED825068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825068);
  }

  return result;
}

unint64_t sub_19A53EAE8()
{
  result = qword_1ED825160;
  if (!qword_1ED825160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825160);
  }

  return result;
}

unint64_t sub_19A53EB40()
{
  result = qword_1ED825168;
  if (!qword_1ED825168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825168);
  }

  return result;
}

unint64_t sub_19A53EB98()
{
  result = qword_1ED825090;
  if (!qword_1ED825090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825090);
  }

  return result;
}

unint64_t sub_19A53EBF0()
{
  result = qword_1ED825098;
  if (!qword_1ED825098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825098);
  }

  return result;
}

unint64_t sub_19A53EC48()
{
  result = qword_1ED825128;
  if (!qword_1ED825128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825128);
  }

  return result;
}

unint64_t sub_19A53ECA0()
{
  result = qword_1ED825130;
  if (!qword_1ED825130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825130);
  }

  return result;
}

unint64_t sub_19A53ECF8()
{
  result = qword_1ED8250E8;
  if (!qword_1ED8250E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250E8);
  }

  return result;
}

unint64_t sub_19A53ED50()
{
  result = qword_1ED8250F0;
  if (!qword_1ED8250F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8250F0);
  }

  return result;
}

unint64_t sub_19A53EDA8()
{
  result = qword_1ED825210;
  if (!qword_1ED825210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825210);
  }

  return result;
}

unint64_t sub_19A53EE00()
{
  result = qword_1ED825218;
  if (!qword_1ED825218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825218);
  }

  return result;
}

unint64_t sub_19A53EE58()
{
  result = qword_1EAFA35E0;
  if (!qword_1EAFA35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35E0);
  }

  return result;
}

unint64_t sub_19A53EEB0()
{
  result = qword_1EAFA35E8;
  if (!qword_1EAFA35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35E8);
  }

  return result;
}

unint64_t sub_19A53EF08()
{
  result = qword_1ED8251C8;
  if (!qword_1ED8251C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251C8);
  }

  return result;
}

unint64_t sub_19A53EF60()
{
  result = qword_1ED8251D0;
  if (!qword_1ED8251D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8251D0);
  }

  return result;
}

unint64_t sub_19A53EFB4()
{
  result = qword_1EAFA35F0;
  if (!qword_1EAFA35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA35F0);
  }

  return result;
}

uint64_t ConcreteAdapter.weights.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConcreteAdapter() + 20);
  v4 = sub_19A570EAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ConcreteAdapter()
{
  result = qword_1EAF9EE88;
  if (!qword_1EAF9EE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConcreteAdapter.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConcreteAdapter() + 24);

  return sub_19A4895B4(v3, a1);
}

void *ConcreteAdapter.init(diffusionAdapter:weights:metadata:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, const void *a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ConcreteAdapter();
  v8 = *(v7 + 20);
  v9 = sub_19A570EAC();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return memcpy(v10, a3, 0x168uLL);
}

uint64_t ConcreteAdapter.hash(into:)(uint64_t a1)
{
  AppleDiffusionAdapter.rawValue.getter(*v1);
  sub_19A572E4C();

  v3 = type metadata accessor for ConcreteAdapter();
  sub_19A570EAC();
  sub_19A53F7E8(&qword_1EAFA35F8, MEMORY[0x1E6968FB0]);
  sub_19A572B4C();
  memcpy(__dst, &v1[*(v3 + 24)], sizeof(__dst));
  return AppleDiffusionModelMetadata.hash(into:)(a1);
}

uint64_t ConcreteAdapter.hashValue.getter()
{
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(*v0);
  sub_19A572E4C();

  v1 = type metadata accessor for ConcreteAdapter();
  sub_19A570EAC();
  sub_19A53F7E8(&qword_1EAFA35F8, MEMORY[0x1E6968FB0]);
  sub_19A572B4C();
  memcpy(__dst, &v0[*(v1 + 24)], sizeof(__dst));
  AppleDiffusionModelMetadata.hash(into:)(&v3);
  return sub_19A57410C();
}

uint64_t sub_19A53F3D4(uint64_t a1)
{
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(*v1);
  sub_19A572E4C();

  sub_19A570EAC();
  sub_19A53F7E8(&qword_1EAFA35F8, MEMORY[0x1E6968FB0]);
  sub_19A572B4C();
  memcpy(__dst, &v1[*(a1 + 24)], sizeof(__dst));
  AppleDiffusionModelMetadata.hash(into:)(&v4);
  return sub_19A57410C();
}

uint64_t sub_19A53F4C4(uint64_t a1, uint64_t a2)
{
  AppleDiffusionAdapter.rawValue.getter(*v2);
  sub_19A572E4C();

  sub_19A570EAC();
  sub_19A53F7E8(&qword_1EAFA35F8, MEMORY[0x1E6968FB0]);
  sub_19A572B4C();
  memcpy(__dst, &v2[*(a2 + 24)], sizeof(__dst));
  return AppleDiffusionModelMetadata.hash(into:)(a1);
}

uint64_t sub_19A53F5A4(uint64_t a1, uint64_t a2)
{
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(*v2);
  sub_19A572E4C();

  sub_19A570EAC();
  sub_19A53F7E8(&qword_1EAFA35F8, MEMORY[0x1E6968FB0]);
  sub_19A572B4C();
  memcpy(__dst, &v2[*(a2 + 24)], sizeof(__dst));
  AppleDiffusionModelMetadata.hash(into:)(&v5);
  return sub_19A57410C();
}

BOOL _s13DiffusionBase15ConcreteAdapterV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = AppleDiffusionAdapter.rawValue.getter(*a1);
  v7 = v6;
  if (v5 == AppleDiffusionAdapter.rawValue.getter(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_19A573F1C();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = type metadata accessor for ConcreteAdapter();
  if ((sub_19A570E1C() & 1) == 0)
  {
    return 0;
  }

  memcpy(v14, &a1[*(v11 + 24)], sizeof(v14));
  memcpy(__dst, &a2[*(v11 + 24)], sizeof(__dst));
  return _s13DiffusionBase05AppleA13ModelMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v14, __dst);
}

uint64_t sub_19A53F7E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A53F858()
{
  result = sub_19A570EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A53F8DC()
{
  v1 = sub_19A570F6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_19A570ECC();
  if (v0)
  {
    return result;
  }

  v7 = v6;
  *&v76 = 0;
  v8 = result;
  sub_19A356EC8(result, v6);
  v75 = v8;
  sub_19A570F7C();
  v9 = 0;
  v80 = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    isUniquelyReferenced_nonNull_native = sub_19A570F5C();
    if ((isUniquelyReferenced_nonNull_native & 0x100) != 0)
    {
LABEL_77:
      (*(v2 + 8))(v4, v1);
      sub_19A33EFC4(v75, v7);

      return v80;
    }

    v12 = isUniquelyReferenced_nonNull_native;
    while (v12 != 10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_19A514D48(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_19A514D48((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      v10[v14 + 32] = v12;
      isUniquelyReferenced_nonNull_native = sub_19A570F5C();
      v12 = isUniquelyReferenced_nonNull_native;
      if ((isUniquelyReferenced_nonNull_native & 0x100) != 0)
      {
        goto LABEL_77;
      }
    }

    v15 = *(v10 + 2);
    if (!v15)
    {
      goto LABEL_62;
    }

    v16 = (v10 + 32);
    if (v10[32] == 35)
    {
      goto LABEL_62;
    }

    v72 = v2;
    v17 = 0;
    v18 = (v10 + 32);
    v19 = -v15;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = v76;
    v70 = v1;
    v74 = v7;
    while (2)
    {
      if (v17 != v15)
      {
        v22 = (2 * v17) | 1;
        v23 = v18 + v17;
        while (2)
        {
          v24 = 0;
          if (*(v10 + 2) <= v17)
          {
            v25 = v17;
          }

          else
          {
            v25 = *(v10 + 2);
          }

          v26 = v17 - v25;
          v27 = v22;
          while (1)
          {
            if (!(v26 + v24))
            {
              __break(1u);
              goto LABEL_82;
            }

            if (*(v23 + v24) == 32)
            {
              break;
            }

            ++v24;
            v27 += 2;
            if (!(v19 + v17 + v24))
            {
              v7 = v74;
              goto LABEL_35;
            }
          }

          if (!v24)
          {
            ++v17;
            v22 += 2;
            ++v23;
            if (v17 != v15)
            {
              continue;
            }

            v7 = v74;
            v56 = *(v20 + 16);
            goto LABEL_46;
          }

          break;
        }

        if ((v17 + v24) < v17)
        {
          goto LABEL_92;
        }

        v69 = v19;
        v71 = v18;
        v73 = v16;
        *&v76 = v21;
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_93;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_19A514C14(0, *(v20 + 16) + 1, 1, v20);
          v20 = isUniquelyReferenced_nonNull_native;
        }

        v16 = v73;
        v18 = v71;
        v19 = v69;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        v30 = v29 + 1;
        v21 = v76;
        if (v29 >= v28 >> 1)
        {
          v68 = v29 + 1;
          isUniquelyReferenced_nonNull_native = sub_19A514C14((v28 > 1), v29 + 1, 1, v20);
          v30 = v68;
          v19 = v69;
          v18 = v71;
          v16 = v73;
          v21 = v76;
          v20 = isUniquelyReferenced_nonNull_native;
        }

        *(v20 + 16) = v30;
        v31 = (v20 + 32 * v29);
        v31[4] = v10;
        v31[5] = v16;
        v31[6] = v17;
        v31[7] = v27;
        v17 += v24 + 1;
        v1 = v70;
        v7 = v74;
        if (v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }

LABEL_35:
        if (v17 == v15)
        {
          break;
        }

        if (v15 < v17)
        {
          goto LABEL_88;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_89;
        }

        v73 = v16;
        v32 = *(v10 + 2);
        if (v32 >= v17 && v32 >= v15)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_19A514C14(0, *(v20 + 16) + 1, 1, v20);
            v20 = isUniquelyReferenced_nonNull_native;
          }

          v33 = v73;
          v35 = *(v20 + 16);
          v34 = *(v20 + 24);
          v56 = v35 + 1;
          if (v35 >= v34 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_19A514C14((v34 > 1), v35 + 1, 1, v20);
            v33 = v73;
            v20 = isUniquelyReferenced_nonNull_native;
          }

          v7 = v74;
          *(v20 + 16) = v56;
          v36 = (v20 + 32 * v35);
          v36[4] = v10;
          v36[5] = v33;
          v36[6] = v17;
          v36[7] = (2 * v15) | 1;
          v1 = v70;
          goto LABEL_46;
        }

        goto LABEL_90;
      }

      break;
    }

    v56 = *(v20 + 16);
LABEL_46:
    v37 = v72;
    if (v56 != 2)
    {
      break;
    }

    v38 = *(v20 + 48);
    v39 = *(v20 + 56);
    v77 = *(v20 + 32);
    v78 = v38;
    v79 = v39;
    if (__OFSUB__(v39 >> 1, v38))
    {
      goto LABEL_83;
    }

    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    *(&v68 - 2) = &v77;
    swift_unknownObjectRetain();
    v71 = sub_19A572E3C();
    v73 = v40;
    swift_unknownObjectRelease();
    if (*(v20 + 16) < 2uLL)
    {
      goto LABEL_84;
    }

    v41 = *(v20 + 80);
    v42 = *(v20 + 88);
    v76 = *(v20 + 64);
    swift_unknownObjectRetain();

    v77 = v76;
    v78 = v41;
    v79 = v42;
    if (__OFSUB__(v42 >> 1, v41))
    {
      goto LABEL_85;
    }

    MEMORY[0x1EEE9AC00]((v42 >> 1) - v41);
    *(&v68 - 2) = &v77;
    v43 = sub_19A572E3C();
    v45 = v44;
    *&v76 = v21;
    swift_unknownObjectRelease();
    v46 = v80;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v77 = v46;
    v49 = sub_19A4F394C(v71, v73, v43, v45);
    v50 = v46[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_86;
    }

    v53 = v48;
    if (v46[3] >= v52)
    {
      if (v47)
      {
        v2 = v72;
        if ((v48 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        sub_19A554E04();
        v2 = v72;
        if ((v53 & 1) == 0)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      sub_19A551074(v52, v47);
      v54 = sub_19A4F394C(v71, v73, v43, v45);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_94;
      }

      v49 = v54;
      v2 = v72;
      if ((v53 & 1) == 0)
      {
LABEL_59:
        v57 = v77;
        *(v77 + 8 * (v49 >> 6) + 64) |= 1 << v49;
        v58 = (v57[6] + 32 * v49);
        v59 = v73;
        *v58 = v71;
        v58[1] = v59;
        v58[2] = v43;
        v58[3] = v45;
        *(v57[7] + 8 * v49) = v9;
        v60 = v57[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_87;
        }

        v80 = v57;
        v57[2] = v62;
        goto LABEL_61;
      }
    }

    v80 = v77;
    *(*(v77 + 56) + 8 * v49) = v9;
LABEL_61:
    v1 = v70;
    v7 = v74;
LABEL_62:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v63 = *(v10 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_19A514D48(0, v63, 1, v10);
      }

      if (!v63)
      {
        goto LABEL_71;
      }

      v64 = *(v10 + 2) - v63;
      memmove(v10 + 32, &v10[v63 + 32], v64);
      *(v10 + 2) = v64;
      v61 = __OFADD__(v9++, 1);
      if (v61)
      {
        goto LABEL_82;
      }
    }

    else if (*(v10 + 3) > 1uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01A0);
      v65 = swift_allocObject();
      v66 = _swift_stdlib_malloc_size(v65);
      v65[2] = 0;
      v65[3] = 2 * v66 - 64;

      v10 = v65;
      v61 = __OFADD__(v9++, 1);
      if (v61)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
LABEL_71:
      v61 = __OFADD__(v9++, 1);
      if (v61)
      {
        goto LABEL_82;
      }
    }
  }

  if (!__OFADD__(v9, 1))
  {
    sub_19A540154();
    swift_allocError();
    *v67 = v9 + 1;
    swift_willThrow();
    sub_19A33EFC4(v75, v7);
    (*(v37 + 8))(v4, v1);
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

unint64_t sub_19A540154()
{
  result = qword_1EAFA3608;
  if (!qword_1EAFA3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3608);
  }

  return result;
}

void *sub_19A5401C0(void *result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = v3[2];
  v5 = v3[3] >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    if (!v6)
    {
      return v6;
    }

    if (v6 <= a2)
    {
      memcpy(result, (v3[1] + v4), v5 - v4);
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A540248()
{
  v0 = sub_19A5723FC();
  __swift_allocate_value_buffer(v0, qword_1ED82BD48);
  __swift_project_value_buffer(v0, qword_1ED82BD48);
  return sub_19A5723EC();
}

void CGImageRef.planarRGBShapedArray(minValue:maxValue:)(int32x2_t a1, int32x2_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = sub_19A57079C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = v2;
  sub_19A57364C();
  if (v83.colorSpace == 1)
  {
    goto LABEL_9;
  }

  srcFormat = v83;
  if (!CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_19A57365C();
  if (v84.colorSpace == 1 || (destFormat = v84, Width = CGImageGetWidth(v5), (Width & 0x8000000000000000) != 0) || (v7 = Width, Height = CGImageGetHeight(v5), (Height & 0x8000000000000000) != 0))
  {
LABEL_9:
    sub_19A54089C();
    swift_allocError();
    v30 = 1;
LABEL_10:
    *v29 = v30;
    swift_willThrow();
    return;
  }

  v9 = Height;
  v10 = v5;
  sub_19A57077C();
  v11 = sub_19A57357C();
  if (v3)
  {
    return;
  }

  v80.data = v11;
  v80.height = v12;
  v80.width = v13;
  v80.rowBytes = v14;
  v79.data = sub_19A57358C();
  v79.height = v15;
  v79.width = v16;
  v79.rowBytes = v17;
  v18 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x100u, 0);
  if (!v18)
  {
    sub_19A54089C();
    swift_allocError();
    v30 = 2;
    goto LABEL_10;
  }

  v19 = v18;
  vImageConvert_AnyToAny(v18, &v80, &v79, 0, 0x100u);
  v78.data = sub_19A57358C();
  v78.height = v20;
  v78.width = v21;
  v78.rowBytes = v22;
  v77.data = sub_19A57358C();
  v77.height = v23;
  v77.width = v24;
  v77.rowBytes = v25;
  v76.data = sub_19A57358C();
  v76.height = v26;
  v76.width = v27;
  v76.rowBytes = v28;
  v61 = v19;
  v75.data = sub_19A57358C();
  v75.height = v31;
  v75.width = v32;
  v75.rowBytes = v33;
  v34 = sub_19A5730DC();
  v34[1].i64[0] = 4;
  v34[2] = vdupq_lane_s32(a1, 0);
  i32 = v34[2].i32;
  v36 = sub_19A5730DC();
  *(v36 + 16) = 4;
  *(v36 + 32) = vdupq_lane_s32(a2, 0);
  vImageConvert_ARGB8888toPlanarF(&v79, &v78, &v77, &v76, &v75, (v36 + 32), i32, 0);
  data = v78.data;
  if (!v78.data)
  {
    goto LABEL_28;
  }

  if (!v77.data)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v38 = v76.data;
  if (!v76.data)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v62 = v77.data;
  v39 = v75.data;
  if (!v75.data)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v40 = v7 * v9;
  if ((v7 * v9) >> 64 != (v7 * v9) >> 63)
  {
    goto LABEL_26;
  }

  v41 = v62;
  if (v40 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  for (; v40; --v40)
  {
    if (*data == 0.0)
    {
      *v41 = -1082130432;
      *v38 = -1082130432;
      *v39 = -1082130432;
    }

    ++v39;
    ++v38;
    ++v41;
    ++data;
  }

  v42 = sub_19A541E1C(v77.data, v77.height, v77.width, v77.rowBytes);
  v44 = v43;
  v45 = sub_19A541E1C(v76.data, v76.height, v76.width, v76.rowBytes);
  v47 = v46;
  v58 = sub_19A541E1C(v75.data, v75.height, v75.width, v75.rowBytes);
  v66 = v48;
  v71 = v42;
  v72 = v44;
  v64 = v42;
  v69 = MEMORY[0x1E6969080];
  v70 = MEMORY[0x1E6969078];
  v67 = v45;
  v68 = v47;
  v59 = v47;
  v60 = v45;
  v49 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x1E6969080]);
  v50 = *v49;
  v57 = v49[1];
  sub_19A356EC8(v42, v44);
  sub_19A356EC8(v45, v47);
  sub_19A5426EC(v50, v57);
  __swift_destroy_boxed_opaque_existential_0Tm(&v67);
  v51 = v71;
  v52 = v72;
  v73 = v71;
  v74 = v72;
  v69 = MEMORY[0x1E6969080];
  v70 = MEMORY[0x1E6969078];
  v67 = v58;
  v68 = v66;
  v53 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x1E6969080]);
  v54 = *v53;
  v55 = v53[1];
  sub_19A356EC8(v51, v52);
  sub_19A356EC8(v58, v66);
  sub_19A5426EC(v54, v55);
  sub_19A33EFC4(v51, v52);
  __swift_destroy_boxed_opaque_existential_0Tm(&v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_19A57A9D0;
  *(v56 + 32) = xmmword_19A576E00;
  *(v56 + 48) = CGImageGetHeight(v10);
  *(v56 + 56) = CGImageGetWidth(v10);
  sub_19A57262C();
  sub_19A33EFC4(v58, v66);
  sub_19A33EFC4(v60, v59);
  sub_19A33EFC4(v64, v44);
}

unint64_t sub_19A54089C()
{
  result = qword_1EAFA3610;
  if (!qword_1EAFA3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3610);
  }

  return result;
}

unint64_t CGImageRef.ShapedArrayError.rawValue.getter(char a1)
{
  result = 0xD000000000000015;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000027;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  return result;
}

uint64_t sub_19A540968(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "wrongNumberOfChannels";
  v4 = 0xD000000000000027;
  if (v2 == 1)
  {
    v5 = 0xD000000000000027;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (v2 == 1)
  {
    v6 = "wrongNumberOfChannels";
  }

  else
  {
    v6 = "ConvertingToShapedArray";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ribble";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v3 = "ConvertingToShapedArray";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ribble";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A540A40()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A540ADC()
{
  sub_19A572E4C();
}

uint64_t sub_19A540B64()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A540BFC@<X0>(_BYTE *a1@<X8>)
{
  result = _sSo10CGImageRefa13DiffusionBaseE16ShapedArrayErrorO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_19A540C2C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "wrongNumberOfChannels";
  v4 = 0xD000000000000027;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001DLL;
    v3 = "ConvertingToShapedArray";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ribble";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t CGImageRef.PixelBufferConversionError.init(rawValue:)()
{
  v0 = sub_19A573C2C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t CGImageRef.PixelBufferConversionError.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x436567616D496763;
  }

  else
  {
    return 0x616E616C506E6F6ELL;
  }
}

uint64_t sub_19A540D2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x436567616D496763;
  }

  else
  {
    v3 = 0x616E616C506E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEF72656666754272;
  }

  else
  {
    v4 = 0xEF6E6F6974616572;
  }

  if (*a2)
  {
    v5 = 0x436567616D496763;
  }

  else
  {
    v5 = 0x616E616C506E6F6ELL;
  }

  if (*a2)
  {
    v6 = 0xEF6E6F6974616572;
  }

  else
  {
    v6 = 0xEF72656666754272;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A540DEC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A540E88()
{
  sub_19A572E4C();
}

uint64_t sub_19A540F10()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A540FA8@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

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

void sub_19A541008(uint64_t *a1@<X8>)
{
  v2 = 0x616E616C506E6F6ELL;
  if (*v1)
  {
    v2 = 0x436567616D496763;
  }

  v3 = 0xEF72656666754272;
  if (*v1)
  {
    v3 = 0xEF6E6F6974616572;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_19A541060()
{
  v0 = *MEMORY[0x1E695F1C0];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    sub_19A57365C();
    if (*(&v2 + 1) != 1)
    {
      xmmword_1EAFCA2F0 = v2;
      xmmword_1EAFCA300 = v3;
      qword_1EAFCA310 = v4;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *static CGImageRef.fromShapedArray(_:_:)(char *a1, float a2, float a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v14 = sub_19A57263C();
  if (*(v14 + 16) < 2uLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = v6;
  v15 = *(v14 + 40);

  if (v15 != 3)
  {
    sub_19A54089C();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    return a1;
  }

  v16 = sub_19A57263C();
  if (*(v16 + 16) < 3uLL)
  {
    goto LABEL_14;
  }

  v17 = *(v16 + 48);

  v18 = sub_19A57263C();
  if (*(v18 + 16) < 4uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v11;
  v31 = v10;
  v19 = *(v18 + 56);

  MEMORY[0x1EEE9AC00](v20);
  *(&v30 - 4) = v19;
  *(&v30 - 3) = v17;
  *(&v30 - 4) = a2;
  *(&v30 - 3) = a3;
  *(&v30 - 1) = a1;
  v21 = sub_19A4DB1FC(sub_19A542D5C, (&v30 - 6), 0, 3);
  sub_19A57071C();
  sub_19A5706CC();
  if (!*(v21 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v35;
  v23 = (*(v7 + 16))(v9, v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v35);
  MEMORY[0x1EEE9AC00](v23);
  *(&v30 - 2) = v21;
  *(&v30 - 1) = v13;
  sub_19A57067C();

  (*(v7 + 8))(v9, v22);
  if (qword_1EAFA2BC8 != -1)
  {
LABEL_17:
    swift_once();
  }

  v32 = xmmword_1EAFCA2F0;
  v33 = xmmword_1EAFCA300;
  v34 = qword_1EAFCA310;
  v24 = v31;
  a1 = v13;
  v25 = sub_19A5706AC();
  v26 = v30;
  if (v25)
  {
    a1 = v25;
  }

  else
  {
    sub_19A542DA0();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
  }

  (*(v26 + 8))(v13, v24);
  return a1;
}

uint64_t sub_19A541534@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v23 = a3;
  v22 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3110);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  sub_19A5707AC();
  sub_19A5706CC();
  if (a6 >= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  v18 = -v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  sub_19A57266C();
  sub_19A2F12E4(&qword_1EAF9E930, &qword_1EAFA3110);
  sub_19A57273C();
  v19 = *(v11 + 8);
  v19(v16, v10);
  v24 = a1;
  v25 = a2;
  v26 = 1.0 / vabds_f32(a6, a5);
  v27 = v18;
  v28 = v22;
  sub_19A57269C();
  return (v19)(v14, v10);
}

uint64_t sub_19A541780(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33[2] = a8;
  v33[3] = a9;
  v40[4] = *MEMORY[0x1E69E9840];
  v13 = sub_19A57074C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D48);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v33 - v22;
  if (!a1)
  {
LABEL_9:
    __break(1u);
  }

  if (!*(a6 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((*(a6 + 32) - 0x2000000000000000) >> 62 != 3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v33[0] = v21;
  sub_19A5707AC();
  sub_19A5706BC();
  sub_19A57063C();
  sub_19A57063C();
  v24 = sub_19A57073C();
  v25 = *(v14 + 8);
  v25(v17, v13);
  v25(v19, v13);
  if ((v24 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  pre_bias = a3;
  post_bias = 0.0;
  v40[0] = sub_19A57066C();
  v40[1] = v26;
  v40[2] = v27;
  v40[3] = v28;
  v39[0] = sub_19A57066C();
  v39[1] = v29;
  v39[2] = v30;
  v39[3] = v31;
  srcs = v40;
  dests = v39;
  v36 = a2;
  vImageMatrixMultiply_PlanarF(&srcs, &dests, 1u, 1u, &v36, &pre_bias, &post_bias, 0);
  return (*(v33[0] + 8))(v23, v20);
}

uint64_t sub_19A541AAC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D48);
    MEMORY[0x1EEE9AC00](v2);
    return sub_19A57067C();
  }

  return result;
}

uint64_t sub_19A541BCC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D48);
    MEMORY[0x1EEE9AC00](v2);
    return sub_19A57067C();
  }

  return result;
}

vImage_Error sub_19A541CF8(const vImage_Buffer *a1, const vImage_Buffer *a2, const vImage_Buffer *a3, const vImage_Buffer *a4)
{
  v8 = sub_19A57079C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57077C();
  v12 = sub_19A57078C();
  (*(v9 + 8))(v11, v8);
  return vImageConvert_PlanarFToBGRX8888(a2, a3, a4, 0xFFu, a1, flt_1F0DB6EB0, flt_1F0DB6E80, v12);
}

uint64_t sub_19A541E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = a3 * (a4 / a3);
  if ((a3 * (a4 / a3)) >> 64 != v6 >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a2 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v6 * a2) >> 64 != (v6 * a2) >> 63)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  result = sub_19A5428B8(v6 * a2);
  v18 = result;
  v19 = v10;
  if (!a2)
  {
    return result;
  }

  v11 = 0;
  do
  {
    if (!a1)
    {
      goto LABEL_26;
    }

    if ((v11 * a4) >> 64 != (v11 * a4) >> 63)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6)
    {
      if (v6 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v17 = v6;
        memcpy(__dst, (a1 + v11 * a4), v6);
        v12 = *__dst;
        v4 = v4 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v17 << 16)) << 32);
        v13 = v4;
      }

      else
      {
        sub_19A5709BC();
        swift_allocObject();
        v14 = sub_19A57095C();
        v15 = v14;
        if (v6 >= 0x7FFFFFFF)
        {
          sub_19A570EDC();
          v12 = swift_allocObject();
          *(v12 + 16) = 0;
          *(v12 + 24) = v6;
          v13 = v15 | 0x8000000000000000;
        }

        else
        {
          v13 = v14 | 0x4000000000000000;
          v12 = v6 << 32;
        }
      }
    }

    else
    {
      v12 = 0;
      v13 = 0xC000000000000000;
    }

    ++v11;
    sub_19A570F4C();
    sub_19A33EFC4(v12, v13);
  }

  while (a2 != v11);
  return v18;
}

void CGImageRef.toRGBShapedArray(minValue:maxValue:)(uint64_t a1@<X8>, float a2@<S0>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v47 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v54 = v47 - v15;
  Width = CGImageGetWidth(v4);
  Height = CGImageGetHeight(v4);
  v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v18)
  {
    goto LABEL_33;
  }

  if ((Width - 0x2000000000000000) >> 62 != 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v53 = v7;
  v19 = v18;
  v20 = __CGBitmapContextCreate_1(Width, Height, 4 * Width, v18);
  if (!v20)
  {
LABEL_32:

LABEL_33:
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
    sub_19A5726DC();
    return;
  }

  v50 = v19;
  v51 = v14;
  v52 = v20;
  Data = CGBitmapContextGetData(v20);
  if (!Data)
  {
LABEL_31:

    v19 = v52;
    goto LABEL_32;
  }

  v49 = v11;
  v22 = Width * Height;
  if ((Width * Height) >> 64 != (Width * Height) >> 63)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v48 = v8;
  if ((v22 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v23 = Data;
  sub_19A5734CC();
  if (v22 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v47[2] = a1;
  v47[3] = v3;
  if (v22)
  {
    v25 = sub_19A5730DC();
    *(v25 + 16) = v22;
    bzero((v25 + 32), 4 * v22);
    v26 = sub_19A5730DC();
    *(v26 + 16) = v22;
    bzero((v26 + 32), 4 * v22);
    v27 = sub_19A5730DC();
    *(v27 + 16) = v22;
    bzero((v27 + 32), 4 * v22);
    if ((Height & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  if (Height < 0)
  {
    goto LABEL_36;
  }

LABEL_10:
  if (!Height)
  {
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_19A57A9D0;
    *(v37 + 32) = vdupq_n_s64(1uLL);
    *(v37 + 48) = Height;
    *(v37 + 56) = Width;
    v55 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
    v47[1] = MEMORY[0x1E69E6328];
    sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
    sub_19A57264C();
    v55 = v26;

    sub_19A57264C();
    v55 = v27;
    v38 = v49;
    sub_19A57264C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
    v39 = v48;
    v40 = *(v48 + 72);
    v41 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_19A5792A0;
    v43 = v42 + v41;
    v44 = *(v39 + 16);
    v45 = v53;
    v44(v43, v54, v53);
    v44(v43 + v40, v51, v45);
    v44(v43 + 2 * v40, v38, v45);
    v55 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50);
    sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
    sub_19A5725EC();

    v46 = *(v39 + 8);
    v46(v38, v45);
    v46(v51, v45);
    v46(v54, v45);
    return;
  }

  if ((Width & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v25 + 32;
    v30 = v26 + 32;
    while (!Width)
    {
LABEL_13:
      if (++v28 == Height)
      {
        goto LABEL_34;
      }
    }

    v31 = v28 * Width;
    if ((v28 * Width) >> 64 != (v28 * Width) >> 63)
    {
      goto LABEL_46;
    }

    v32 = 0;
    while (1)
    {
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        break;
      }

      if ((v33 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_38;
      }

      if (v23[4 * v33 + 3])
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v33 >= *(v25 + 16))
        {
          goto LABEL_40;
        }

        LOBYTE(v24) = v23[4 * v33];
        v34 = (LODWORD(v24) / 127.5) + -1.0;
        *(v29 + 4 * v33) = v34;
        if (v33 >= *(v26 + 16))
        {
          goto LABEL_41;
        }

        v35 = &v23[4 * v33];
        LOBYTE(v34) = v35[1];
        v36 = (LODWORD(v34) / 127.5) + -1.0;
        *(v30 + 4 * v33) = v36;
        if (v33 >= *(v27 + 16))
        {
          goto LABEL_42;
        }

        LOBYTE(v36) = v35[2];
        v24 = (LODWORD(v36) / 127.5) + -1.0;
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v33 >= *(v25 + 16))
        {
          goto LABEL_44;
        }

        *(v29 + 4 * v33) = a2;
        if (v33 >= *(v26 + 16))
        {
          goto LABEL_45;
        }

        *(v30 + 4 * v33) = a2;
        v24 = a2;
        if (v33 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }
      }

      ++v32;
      *(v27 + 32 + 4 * v33) = v24;
      if (Width == v32)
      {
        goto LABEL_13;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_19A5426EC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_19A570EFC();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_19A542824(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_19A542824(v3, v4);
  }

  return sub_19A570EFC();
}

uint64_t sub_19A542824(uint64_t a1, uint64_t a2)
{
  result = sub_19A57096C();
  if (!result || (result = sub_19A57099C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_19A57098C();
      return sub_19A570EFC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A5428B8(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_19A5709BC();
      swift_allocObject();
      sub_19A5709AC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_19A570EDC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19A54295C(__CVBuffer *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - v5;
  v7 = sub_19A57079C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CVPixelBufferIsPlanar(a1))
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v12 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVImageBuffer_];
    [v12 extent];
    v13 = [v11 createCGImage:v12 fromRect:?];

    v14 = v13;
    if (v13)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v29 = v4;
  type metadata accessor for vImageCVImageFormat(0);
  result = sub_19A5736BC();
  if (result)
  {
    v16 = result;
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (result)
    {
      sub_19A57369C();
      sub_19A5736AC();
      type metadata accessor for vImageConverter(0);
      v13 = v17;
      if (qword_1EAFA2BC8 != -1)
      {
        swift_once();
      }

      v26 = xmmword_1EAFCA2F0;
      v27 = xmmword_1EAFCA300;
      v28 = qword_1EAFCA310;
      sub_19A57077C();
      v18 = sub_19A57363C();
      if (v1)
      {
        (*(v8 + 8))(v10, v7);

        return v13;
      }

      v19 = v18;
      (*(v8 + 8))(v10, v7);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      sub_19A57071C();
      v20 = a1;
      v21 = v19;
      sub_19A57068C();
      v24[0] = xmmword_1EAFCA2F0;
      v24[1] = xmmword_1EAFCA300;
      v25 = qword_1EAFCA310;
      v13 = sub_19A5706AC();
      (*(v29 + 8))(v6, v3);
      v22 = v13;
      CVPixelBufferUnlockBaseAddress(v20, 1uLL);

      if (v13)
      {
LABEL_3:

        return v13;
      }

LABEL_11:
      sub_19A542DA0();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSo10CGImageRefa13DiffusionBaseE16ShapedArrayErrorO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_19A542DA0()
{
  result = qword_1EAFA3618;
  if (!qword_1EAFA3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3618);
  }

  return result;
}

unint64_t sub_19A542E18()
{
  result = qword_1EAFA3620;
  if (!qword_1EAFA3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3620);
  }

  return result;
}

unint64_t sub_19A542E70()
{
  result = qword_1EAFA3628;
  if (!qword_1EAFA3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3628);
  }

  return result;
}

uint64_t AppleDiffusionGlobalImageConditioner.encode(_:inferenceDiagnostics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E10;
  sub_19A5735DC();
  if (v5)
  {
    goto LABEL_9;
  }

  *(inited + 32) = v22;
  *(inited + 40) = v23;
  *(inited + 48) = a1;
  v10 = a1;
  v11 = sub_19A4E7C6C(inited);
  swift_setDeallocating();
  sub_19A2F3FA0(inited + 32, &qword_1EAFA2EE8);
  sub_19A543D10(v11, &qword_1ED823EE0);
  v12 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v13 = sub_19A544CF4();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0);
  sub_19A5735DC();
  v16 = sub_19A56D50C(v22);

  if (*(v16 + 16))
  {
    v18 = sub_19A31F6BC(a4, a5);
    if (v19)
    {
      v20 = [*(*(v16 + 56) + 8 * v18) multiArrayValue];
      if (v20)
      {
        v21 = v20;

        return v21;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t AppleDiffusionLocalImageConditioner.encode(latentEncoding:conditioningScale:inferenceDiagnostics:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v60 = a2;
  v4 = v3;
  v59 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - v14;
  sub_19A33546C(a1, v8, &qword_1EAFA2630);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    v18 = v4[1];
    v19 = v4[2];
    v20 = sub_19A2F1600(0, &qword_1ED823EE0);
    (*(v10 + 16))(v13, v15, v9);
    sub_19A51B91C();
    v21 = sub_19A57351C();
    v64 = v20;
    *&v63 = v21;
    sub_19A3355EC(&v63, v62);
    v22 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v22;
    sub_19A33D694(v62, v18, v19, isUniquelyReferenced_nonNull_native);
    v24 = *(v10 + 8);
    v10 += 8;
    v24(v15, v9);
    v16 = v66;
    v17 = v60;
    if ((v60 & 0x100000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_19A2F3FA0(v8, &qword_1EAFA2630);
  v16 = MEMORY[0x1E69E7CC8];
  v17 = v60;
  if ((v60 & 0x100000000) == 0)
  {
LABEL_5:
    v25 = v4[3];
    v26 = v4[4];
    v64 = MEMORY[0x1E69E6448];
    LODWORD(v63) = v17;
    sub_19A3355EC(&v63, v62);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v16;
    sub_19A33D694(v62, v25, v26, v27);
  }

LABEL_6:
  v28 = v61;
  v29 = objc_allocWithZone(MEMORY[0x1E695FE48]);

  v30 = sub_19A544CF4();
  if (v28)
  {

    return v10;
  }

  v31 = MEMORY[0x1EEE9AC00](v30);
  v61 = v31;
  v32 = v59;
  *(&v59 - 2) = v31;
  *(&v59 - 1) = v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  *(&v59 - 4) = sub_19A546324;
  *(&v59 - 3) = v34;
  *(&v59 - 2) = v35;
  MEMORY[0x1EEE9AC00](v33);
  *(&v59 - 5) = 0;
  *(&v59 - 4) = 0;
  *(&v59 - 6) = v36;
  *(&v59 - 3) = sub_19A546474;
  *(&v59 - 2) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0);
  sub_19A5735DC();
  v39 = sub_19A56D50C(v63);

  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = sub_19A31EE78(*(v39 + 16), 0);
    v42 = sub_19A54607C(&v63, v41 + 4, v40, v39);
    v59 = v65;
    v60 = v42;
    swift_bridgeObjectRetain_n();
    sub_19A2EA480();
    if (v60 == v40)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_14:
  *&v63 = v41;
  sub_19A516A34(&v63);
  v43 = 0;

  v44 = v63;
  v10 = MEMORY[0x1E69E7CC0];
  *&v63 = MEMORY[0x1E69E7CC0];
  v45 = *(v44 + 16);
  if (v45)
  {
    v60 = 0;
    v46 = 0;
    v47 = (v44 + 40);
    while (v46 < *(v44 + 16))
    {
      if (!*(v39 + 16))
      {
        goto LABEL_30;
      }

      v48 = *(v47 - 1);
      v49 = *v47;

      v43 = v39;
      v50 = sub_19A31F6BC(v48, v49);
      if ((v51 & 1) == 0)
      {
        goto LABEL_31;
      }

      v52 = [*(*(v39 + 56) + 8 * v50) multiArrayValue];
      if (!v52)
      {
        goto LABEL_32;
      }

      v53 = v52;

      v54 = v53;
      v43 = &v63;
      MEMORY[0x19A900BE0]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v59 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_19A5730AC();
      }

      ++v46;
      sub_19A5730FC();

      v47 += 2;
      if (v45 == v46)
      {
        v10 = v63;
        v43 = v60;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_24:

    sub_19A50D150(v39);
    v56 = v55;

    if (*(v56 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F08);
      v57 = sub_19A573BEC();
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC8];
    }

    *&v62[0] = v57;

    sub_19A544ED4(v58, 1, v62);
    if (!v43)
    {

      return v10;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_19A543A20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FEE0);
    v2 = sub_19A573BEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_19A334618(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_19A3355EC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_19A3355EC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_19A3355EC(v31, v32);
    result = sub_19A5738CC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_19A3355EC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_19A543D10(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF20);
    v3 = sub_19A573BEC();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_19A2F1600(0, a2);

        v20 = v19;
        swift_dynamicCast();
        sub_19A3355EC(&v27, v29);
        sub_19A3355EC(v29, v30);
        sub_19A3355EC(v30, &v28);
        result = sub_19A31F6BC(v18, v17);
        if (v21)
        {
          v10 = (v3[6] + 16 * result);
          *v10 = v18;
          v10[1] = v17;
          v11 = result;

          v12 = (v3[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_19A3355EC(&v28, v12);
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v3[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_19A3355EC(&v28, (v3[7] + 32 * result));
          v23 = v3[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v3[2] = v25;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_19A543F74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3630);
    v1 = sub_19A573BEC();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_16:
    v15 = *(*(a1 + 48) + (__clz(__rbit64(v4)) | (v8 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3640);
    swift_dynamicCast();
    sub_19A5740BC();
    sub_19A572E4C();

    result = sub_19A57410C();
    v9 = -1 << *(v1 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    if (((-1 << v10) & ~*(v6 + 8 * (v10 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v9) >> 6;
      while (++v11 != v17 || (v16 & 1) == 0)
      {
        v18 = v11 == v17;
        if (v11 == v17)
        {
          v11 = 0;
        }

        v16 |= v18;
        v19 = *(v6 + 8 * v11);
        if (v19 != -1)
        {
          v12 = __clz(__rbit64(~v19)) + (v11 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_27;
    }

    v12 = __clz(__rbit64((-1 << v10) & ~*(v6 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
    v4 &= v4 - 1;
    *(v6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(*(v1 + 48) + v12) = v15;
    v13 = (*(v1 + 56) + 2 * v12);
    *v13 = v21;
    v13[1] = v22;
    ++*(v1 + 16);
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v4)
    {
      v8 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_19A544358()
{
  v1 = [v0 featureNames];
  v2 = sub_19A57337C();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(v2 + 48) + ((v7 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];
    swift_bridgeObjectRetain_n();
    v14 = sub_19A572CCC();
    v15 = [v37 featureValueForName_];

    if (!v15)
    {
      v16 = sub_19A31F6BC(v13, v12);
      v18 = v17;

      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19A554C94();
        }

        sub_19A4F7E60(v16, v8);
      }

      goto LABEL_10;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_19A31F6BC(v13, v12);
    v22 = v8[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_26;
    }

    if (v8[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v36 = v20;
      v30 = v21;
      sub_19A554C94();
      v20 = v36;
      if ((v30 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      v28 = v8[7];
      v29 = *(v28 + 8 * v20);
      *(v28 + 8 * v20) = v15;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v35 = v21;
      sub_19A550DC4(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_19A31F6BC(v13, v12);
      v27 = v26 & 1;
      v21 = v35;
      if ((v35 & 1) != v27)
      {
        goto LABEL_28;
      }

LABEL_19:
      if (v21)
      {
        goto LABEL_20;
      }

LABEL_22:
      v8[(v20 >> 6) + 8] |= 1 << v20;
      v31 = (v8[6] + 16 * v20);
      *v31 = v13;
      v31[1] = v12;
      *(v8[7] + 8 * v20) = v15;
      v32 = v8[2];
      v24 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v24)
      {
        goto LABEL_27;
      }

      v8[2] = v33;
LABEL_10:
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 56 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t AppleDiffusionGlobalImageConditioner.init(modelAt:configuration:name:)(uint64_t a1, void *a2, const char *a3, uint64_t a4, unsigned __int8 a5)
{
  v20 = a3;
  v21 = a4;
  v8 = sub_19A570EAC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = *(v9 + 16);
  v15(&v19 - v13, a1, v8);
  v15(v12, v14, v8);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v16 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v12, a2, MEMORY[0x1E69E7CC0], v20, v21, a5);
  v17 = *(v9 + 8);
  v17(a1, v8);
  v17(v14, v8);
  return v16;
}

uint64_t AppleDiffusionLocalImageConditioner.init(modelAt:configuration:name:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v22 = a3;
  v23 = a4;
  v10 = sub_19A570EAC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = *(v11 + 16);
  v17(&v21 - v15, a1, v10);
  v17(v14, v16, v10);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v18 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v14, a2, MEMORY[0x1E69E7CC0], v22, v23, a5);
  v19 = *(v11 + 8);
  v19(a1, v10);
  result = (v19)(v16, v10);
  *a6 = v18;
  a6[1] = 0x746E6574616CLL;
  a6[2] = 0xE600000000000000;
  a6[3] = 0x656C616373;
  a6[4] = 0xE500000000000000;
  return result;
}

id sub_19A544A0C(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  sub_19A33546C(a3, &v23 - v7, &qword_1EAFA3300);
  v9 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9) == 1)
  {
    sub_19A2F3FA0(v8, &qword_1EAFA3300);
    v10 = [objc_opt_self() defaultOptions];
  }

  else
  {
    v10 = [objc_opt_self() defaultOptions];
    v11 = v8[v9[6]];
    v12 = v9[8];
    v23 = v8[v9[7]];
    v24 = v11;
    v25 = a1;
    v13 = v8[v12];
    v14 = objc_allocWithZone(MEMORY[0x1E695FE88]);
    v15 = a2;
    v16 = sub_19A570DEC();
    v17 = sub_19A572CCC();
    v18 = [v14 initWithOutputDirectory:v16 prefix:v17 shouldOverwrite:v24 modelIOFrameData:v23 segmentIOFrameData:v13];

    a2 = v15;
    [v10 setInferenceFrameDataSerialization_];

    a1 = v25;
    sub_19A5068AC(v8);
  }

  v26[0] = 0;
  v19 = [a1 predictionFromFeatures:a2 options:v10 error:v26];

  if (v19)
  {
    v20 = v26[0];
  }

  else
  {
    v21 = v26[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v19;
}

id sub_19A544CF4()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_19A572ADC();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v2;
}

void *sub_19A544DDC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3648);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_19A544E50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3368);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void sub_19A544ED4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_19A31F6BC(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_19A550DB0(v16, v5 & 1);
    v11 = sub_19A31F6BC(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_19A57404C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_19A554C80();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD00000000000001BLL, 0x800000019A596BD0);
    sub_19A573ACC();
    MEMORY[0x19A900A50](39, 0xE100000000000000);
    sub_19A573B7C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_19A31F6BC(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_19A550DB0(v33, 1);
        v29 = sub_19A31F6BC(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_19A545264(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_19A3200C0(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_19A5549E8();
    result = v17;
    goto LABEL_8;
  }

  sub_19A550338(v14, a2 & 1);
  result = sub_19A3200C0(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 4 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 4 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

unint64_t sub_19A54538C(uint64_t a1, char a2, float a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_19A3200C0(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_19A554B34();
    result = v19;
    goto LABEL_8;
  }

  sub_19A550874(v16, a2 & 1);
  result = sub_19A3200C0(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 8 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a1;
    v23 = (v21[7] + 8 * result);
    *v23 = a3;
    v23[1] = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A545518(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_19A31F6BC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_19A31F6BC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_19A57404C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_19A5456AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_19A31FBD4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_19A555218();
      goto LABEL_7;
    }

    sub_19A5519F8(v13, a3 & 1);
    v24 = sub_19A31FBD4(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_19A57404C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_19A570EAC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_19A545FD0(v10, a2, a1, v16);
}

uint64_t sub_19A54585C(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_19A31FCAC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_19A552D18(v14, a3 & 1);
      v9 = sub_19A31FCAC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_19A57404C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_19A55561C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    result = memcpy((v19[7] + 360 * v9), a1, 0x168uLL);
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 360 * v9;

  return sub_19A546400(a1, v20);
}

unint64_t sub_19A5459B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_19A31FCAC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_19A555630();
    result = v17;
    goto LABEL_8;
  }

  sub_19A5532F0(v14, a3 & 1);
  result = sub_19A31FCAC(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_19A57404C();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

unint64_t sub_19A545B48(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void))
{
  v10 = v6;
  v14 = *v6;
  result = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      a6(v20, a3 & 1);
      result = a4(a2);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_19A57404C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v25 = *v10;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + result) = a2;
    *(v25[7] + 8 * result) = a1;
    v26 = v25[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v19)
    {
      v25[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  *(v25[7] + 8 * result) = a1;
}

unint64_t sub_19A545CC8(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_19A31FDEC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_19A55413C(v16, a4 & 1);
      result = sub_19A31FDEC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_19A57404C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_19A555938();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void sub_19A545E28(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19A4F38B8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_19A554700(v18, a5 & 1);
      v13 = sub_19A4F38B8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D40);
        sub_19A57404C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_19A555C0C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;

    sub_19A2E8B10(v25);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = v23[7] + 16 * v13;
  *v27 = a1;
  *(v27 + 8) = a2 & 1;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_19A545FD0(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_19A570EAC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_19A54607C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

        goto LABEL_24;
      }

      v11 += 2;

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

void sub_19A5461D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, void *)@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v13 = MEMORY[0x19A902330]();
  sub_19A547EB8(a1, a2, a3, a4, a5);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v16 = v14;
    v17 = v15;
    objc_autoreleasePoolPop(v13);
    *a6 = v16;
    a6[1] = v17;
  }
}

uint64_t sub_19A546274@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = a1();
  if (!v3)
  {
    v7 = sub_19A544358();
    swift_unknownObjectRelease();

    v8 = sub_19A56DF20(v7, a2);

    *a3 = v8;
  }

  return result;
}

uint64_t sub_19A546350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_19A546398(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t MultilingualTextEncoder.init(modelAt:configuration:script:)(uint64_t a1, void *a2, char a3)
{
  sub_19A5493D8(a1, a2, a3);
  v5 = v4;

  return v5;
}

void sub_19A5464EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MultilingualTextEncoder.loadResources()()
{
  v2 = v1;
  v6[1] = *MEMORY[0x1E69E9840];
  if (!v0 || (ManagedMLModel.loadResources()(), !v3))
  {
    v6[0] = 0;
    if ([v2 loadWithError_])
    {
      v4 = v6[0];
    }

    else
    {
      v5 = v6[0];
      sub_19A570D1C();

      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall MultilingualTextEncoder.unloadResources()()
{
  v2 = v1;
  if (v0)
  {
    ManagedMLModel.unloadResources()();
  }

  [v2 unload];
}

void MultilingualTextEncoder.encode(_:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  if ([a3 hasAvailableAssets])
  {
    v34 = a2;
    v35 = a4;
    v36 = a5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_19A3687E0();
    v19 = v18;
    v20 = sub_19A572CCC();
    v38[0] = 0;
    v21 = [a3 embeddingResultForString:v20 language:0 error:v38];

    v22 = v38[0];
    v37 = v21;
    if (v21)
    {
      v32 = v14;
      v33 = v11;
      v38[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_19A5792A0;
      v24 = v35;
      *(v23 + 32) = 1;
      *(v23 + 40) = v24;
      v25 = v22;
      *(v23 + 48) = [a3 dimension];
      v31 = sub_19A525F54(&qword_1EAF9E950, &unk_1EAFA2F28);
      v26 = sub_19A57271C();
      MEMORY[0x1EEE9AC00](v26);
      *(&v31 - 6) = v37;
      *(&v31 - 5) = v17;
      v27 = v34;
      *(&v31 - 4) = v19;
      *(&v31 - 3) = v27;
      *(&v31 - 2) = a3;
      *(&v31 - 1) = v24;
      sub_19A57261C();

      if (v27)
      {
        sub_19A546BE8(v16, v27);
        (*(v33 + 8))(v16, v10);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
        v30 = v33;
        (*(v33 + 16))(v32, v16, v10);
        sub_19A525F54(&qword_1ED823FD0, &qword_1EAFA2C30);
        sub_19A5726BC();

        (*(v30 + 8))(v16, v10);
      }
    }

    else
    {
      v29 = v38[0];

      sub_19A570D1C();

      swift_willThrow();
    }
  }

  else
  {
    sub_19A5496EC();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t sub_19A546B28(uint64_t result, int a2, int a3, uint64_t *a4, void *a5, int a6, id a7)
{
  v8 = *(result + 16);
  if (v8)
  {
    v11 = 0;
    v12 = result + 32;
    while (1)
    {
      v13 = *a4;
      v14 = *a5;
      result = [a7 dimension];
      v15 = v14 * result;
      if ((v14 * result) >> 64 != (v14 * result) >> 63)
      {
        break;
      }

      v16 = __OFADD__(v15, v11);
      v17 = v15 + v11;
      if (v16)
      {
        goto LABEL_9;
      }

      *(v13 + 8 * v17) = *(v12 + 8 * v11++);
      if (v8 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  else
  {
LABEL_6:
    if (!__OFADD__(*a5, 1))
    {
      ++*a5;
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A546BE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v11 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v11);
    sub_19A2F1600(0, &qword_1EAFA3660);
    swift_retain_n();
    v3 = sub_19A5735DC();
    if (!v2)
    {
      v4 = MEMORY[0x1EEE9AC00](v3);
      v5 = MEMORY[0x1EEE9AC00](v4);
      MEMORY[0x1EEE9AC00](v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0);
      sub_19A5735DC();
      v6 = sub_19A56D50C(v13);

      sub_19A543CFC(v6);

      v7 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v8 = sub_19A544CF4();
      v12 = MEMORY[0x1EEE9AC00](v8);
      v9 = MEMORY[0x1EEE9AC00](v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
      sub_19A5735DC();
    }
  }

  else
  {
    result = sub_19A573B7C();
    __break(1u);
  }

  return result;
}

void sub_19A546FDC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = [a1 modelDescription];
  v12 = [v11 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v13 = sub_19A572AFC();

  sub_19A506920(v13);
  v15 = v14;
  v17 = v16;

  if (v15)
  {
    v31 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    v19 = [v17 name];
    v20 = sub_19A572CFC();
    v32 = v3;
    v21 = v20;
    v23 = v22;

    *(inited + 32) = v21;
    *(inited + 40) = v23;
    v24 = sub_19A2F1600(0, &qword_1ED823EE0);
    (*(v8 + 16))(v10, a2, v7);
    sub_19A525F54(&qword_1EAF9E950, &unk_1EAFA2F28);
    v25 = sub_19A57351C();
    *(inited + 72) = v24;
    *(inited + 48) = v25;
    sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00);
    v26 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    v27 = v32;
    v28 = sub_19A544CF4();

    if (!v27)
    {
      *v31 = v28;
    }
  }

  else
  {
    sub_19A5496EC();
    swift_allocError();
    *v29 = xmmword_19A57B400;
    *(v29 + 16) = 2;
    swift_willThrow();
  }
}

void sub_19A5472C8(void *a1, void *a2)
{
  v3 = [a1 modelDescription];
  v4 = [v3 outputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v5 = sub_19A572AFC();

  sub_19A506920(v5);
  v7 = v6;
  v9 = v8;

  if (v7)
  {

    v10 = [v9 name];
    if (!v10)
    {
      sub_19A572CFC();
      v10 = sub_19A572CCC();
    }

    v11 = [a2 featureValueForName_];

    if (v11 && (v12 = [v11 multiArrayValue], v11, v12))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
      sub_19A525F54(&qword_1ED823FD0, &qword_1EAFA2C30);
      sub_19A5726AC();
    }

    else
    {
      v13 = [v9 type];
      sub_19A5496EC();
      swift_allocError();
      *v14 = 5;
      *(v14 + 8) = v13;
      *(v14 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_19A5496EC();
    swift_allocError();
    *v15 = xmmword_19A57B410;
    *(v15 + 16) = 2;
    swift_willThrow();
  }
}

id sub_19A547540()
{
  v1 = v0[1];
  if (*v0)
  {
    ManagedMLModel.unloadResources()();
  }

  return [v1 unload];
}

unint64_t MultilingualTextEncoder.Error.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_19A57395C();
    v4 = 0x800000019A59D790;
    v3 = 0xD000000000000027;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_19A57395C();
    v3 = 0xD000000000000028;
    v4 = 0x800000019A59D760;
LABEL_5:
    MEMORY[0x19A900A50](v3, v4);
    type metadata accessor for MLFeatureType(0);
    sub_19A573ACC();
    MEMORY[0x19A900A50](0x2073692074756220, 0xE800000000000000);
    sub_19A573ACC();
    MEMORY[0x19A900A50](46, 0xE100000000000000);
    return 0;
  }

  v6 = 0xD000000000000026;
  if (a1 ^ 1 | a2)
  {
    v6 = 0xD000000000000027;
  }

  if (a1 | a2)
  {
    return v6;
  }

  else
  {
    return 0xD000000000000080;
  }
}

uint64_t Script.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6974616CLL;
  }

  if (a1 == 1)
  {
    return 0x63696C6C69727963;
  }

  return 7039587;
}

uint64_t sub_19A5477C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x63696C6C69727963;
  if (v2 != 1)
  {
    v4 = 7039587;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6974616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x63696C6C69727963;
  if (*a2 != 1)
  {
    v8 = 7039587;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6974616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A5478B8()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A547950()
{
  sub_19A572E4C();
}

uint64_t sub_19A5479D4()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A547A68@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase6ScriptO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_19A547A98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x63696C6C69727963;
  if (v2 != 1)
  {
    v5 = 7039587;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6974616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_19A547B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v8 = (a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56BF4C(&v8[2], a1);
  v27 = v6;
  if (v6)
  {
    goto LABEL_15;
  }

  os_unfair_lock_unlock(v8);
  v9 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v10 = sub_19A57236C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1 + v9, v10);
  v14 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
  v15 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
  v16 = sub_19A57231C();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57232C();
  v36 = v10;
  v37 = &v26;
  v35 = &v26;
  if ((v15 & 1) == 0)
  {
    if (v14)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v14 >> 32)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v14 & 0xFFFFF800) == 0xD800)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    os_unfair_lock_unlock(v8);
    __break(1u);
    return;
  }

  if (v14 >> 16 > 0x10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = &v38;
LABEL_9:
  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_19A57234C();
  v21 = sub_19A57361C();
  v22 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v20, v21, v22, v14, "", v19, 2u);
  os_unfair_lock_lock(v8);
  v23 = v27;
  (v34)(&v8[2], v30, v31, v32, v33);
  os_unfair_lock_unlock(v8);
  if (v23)
  {

    (*(v28 + 8))(v18, v29);
    (*(v11 + 8))(v13, v36);
  }

  else
  {
    v24 = sub_19A57360C();
    v34 = v13;
    v25 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v20, v24, v25, v14, "", v19, 2u);

    MEMORY[0x19A902C50](v19, -1, -1);
    (*(v28 + 8))(v18, v29);
    (*(v11 + 8))(v34, v36);
  }
}

void sub_19A547EB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *), char *a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v24 = a2;
  v7 = a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56BF4C(v7 + 8, a1);
  if (v5)
  {
    goto LABEL_13;
  }

  os_unfair_lock_unlock(v7);
  v8 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v9 = sub_19A57236C();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v12;
  (*(v12 + 16))(v11, a1 + v8, v9);
  v13 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
  v14 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
  v25 = sub_19A57231C();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57232C();
  v31 = v9;
  v32 = &v23;
  v29 = &v23;
  if ((v14 & 1) == 0)
  {
    if (v13)
    {
LABEL_9:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_19A57234C();
      v19 = sub_19A57361C();
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v18, v19, v20, v13, "", v17, 2u);
      os_unfair_lock_lock(v7);
      sub_19A548F0C((v7 + 8), v24, v26, v27);
      os_unfair_lock_unlock(v7);
      v21 = sub_19A57360C();
      v28 = v11;
      v22 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v18, v21, v22, v13, "", v17, 2u);

      MEMORY[0x19A902C50](v17, -1, -1);
      (*(v23 + 8))(v16, v25);
      (*(v30 + 8))(v28, v31);
      return;
    }

    __break(1u);
  }

  if (v13 >> 32)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v13 & 0xFFFFF800) != 0xD800)
  {
    if (v13 >> 16 <= 0x10)
    {
      v13 = &v33;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  os_unfair_lock_unlock(v7);
  __break(1u);
}

void sub_19A548268(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *)@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v38 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v12;
  v13 = a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56BF4C(v13 + 8, a1);
  if (v6)
  {
    goto LABEL_13;
  }

  os_unfair_lock_unlock(v13);
  v14 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v15 = sub_19A57236C();
  v51 = &v36;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v19;
  v50 = v18;
  (*(v19 + 16))(v17, a1 + v14);
  v20 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
  v21 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
  v22 = sub_19A57231C();
  v41 = *(v22 - 8);
  v42 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57232C();
  v39 = v9;
  v40 = a6;
  v43 = &v36;
  if ((v21 & 1) == 0)
  {
    if (v20)
    {
LABEL_9:
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_19A57234C();
      v27 = sub_19A57361C();
      v28 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v26, v27, v28, v20, "", v25, 2u);
      os_unfair_lock_lock(v13);
      v29 = v48;
      sub_19A549034((v13 + 8), v44, v45, v46);
      os_unfair_lock_unlock(v13);
      v30 = sub_19A57360C();
      v31 = v29;
      v32 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v26, v30, v32, v20, "", v25, 2u);

      v33 = v37;
      v34 = *(v38 + 32);
      v35 = v39;
      v34(v37, v31, v39);
      MEMORY[0x19A902C50](v25, -1, -1);
      v34(v40, v33, v35);
      (*(v41 + 8))(v24, v42);
      (*(v49 + 8))(v17, v50);
      return;
    }

    __break(1u);
  }

  if (v20 >> 32)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v20 & 0xFFFFF800) != 0xD800)
  {
    if (v20 >> 16 <= 0x10)
    {
      v20 = &v52;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  os_unfair_lock_unlock(v13);
  __break(1u);
}

void sub_19A5486B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v8 = (a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56BF4C(&v8[2], a1);
  v27 = v6;
  if (v6)
  {
    goto LABEL_15;
  }

  os_unfair_lock_unlock(v8);
  v9 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v10 = sub_19A57236C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1 + v9, v10);
  v14 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
  v15 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
  v16 = sub_19A57231C();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57232C();
  v36 = v10;
  v37 = &v26;
  v35 = &v26;
  if ((v15 & 1) == 0)
  {
    if (v14)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v14 >> 32)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v14 & 0xFFFFF800) == 0xD800)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    os_unfair_lock_unlock(v8);
    __break(1u);
    return;
  }

  if (v14 >> 16 > 0x10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = &v38;
LABEL_9:
  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_19A57234C();
  v21 = sub_19A57361C();
  v22 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v20, v21, v22, v14, "", v19, 2u);
  os_unfair_lock_lock(v8);
  v23 = v27;
  (v34)(&v8[2], v30, v31, v32, v33);
  os_unfair_lock_unlock(v8);
  if (v23)
  {

    (*(v28 + 8))(v18, v29);
    (*(v11 + 8))(v13, v36);
  }

  else
  {
    v24 = sub_19A57360C();
    v34 = v13;
    v25 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v20, v24, v25, v14, "", v19, 2u);

    MEMORY[0x19A902C50](v19, -1, -1);
    (*(v28 + 8))(v18, v29);
    (*(v11 + 8))(v34, v36);
  }
}

void sub_19A548A50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *), char *a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v7 = a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56BF4C(v7 + 8, a1);
  v25 = v5;
  if (v5)
  {
    goto LABEL_15;
  }

  os_unfair_lock_unlock(v7);
  v8 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v9 = sub_19A57236C();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v12;
  (*(v12 + 16))(v11, a1 + v8, v9);
  v13 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
  v14 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
  v26 = sub_19A57231C();
  v15 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57232C();
  v33 = v9;
  v34 = &v25;
  v31 = &v25;
  if ((v14 & 1) == 0)
  {
    if (v13)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v13 >> 32)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v13 & 0xFFFFF800) == 0xD800)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    os_unfair_lock_unlock(v7);
    __break(1u);
    return;
  }

  if (v13 >> 16 > 0x10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = &v35;
LABEL_9:
  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = sub_19A57234C();
  v20 = sub_19A57361C();
  v21 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v19, v20, v21, v13, "", v18, 2u);
  os_unfair_lock_lock(v7);
  v22 = v25;
  sub_19A549158((v7 + 8), v27, v28, v29);
  os_unfair_lock_unlock(v7);
  if (v22)
  {

    (*(v15 + 8))(v17, v26);
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v23 = sub_19A57360C();
    v30 = v11;
    v24 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v19, v23, v24, v13, "", v18, 2u);

    MEMORY[0x19A902C50](v18, -1, -1);
    (*(v15 + 8))(v17, v26);
    (*(v32 + 8))(v30, v33);
  }
}

void sub_19A548DE4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v6 = *a1;
  if (*(*a1 + 16) && (v8 = sub_19A4F38B8(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(v6 + 56) + 16 * v8;
    v11 = *v10;
    if (*(v10 + 8))
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
    }

    else
    {
      a4(&v14, v11);
      sub_19A2E8B10(v11);
    }
  }

  else
  {
    sub_19A5498D4();
    swift_allocError();
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 16) = 2;
    swift_willThrow();
  }
}

void sub_19A548F0C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v6 = *a1;
  if (*(*a1 + 16) && (v8 = sub_19A4F38B8(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(v6 + 56) + 16 * v8;
    v11 = *v10;
    if (*(v10 + 8))
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
    }

    else
    {
      a4(&v14, v11);
      sub_19A2E8B10(v11);
    }
  }

  else
  {
    sub_19A5498D4();
    swift_allocError();
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 16) = 2;
    swift_willThrow();
  }
}

void sub_19A549034(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6 = *a1;
  if (*(*a1 + 16) && (v8 = sub_19A4F38B8(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(v6 + 56) + 16 * v8;
    v11 = *v10;
    if (*(v10 + 8))
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
    }

    else
    {
      a4(v11);
      sub_19A2E8B10(v11);
    }
  }

  else
  {
    sub_19A5498D4();
    swift_allocError();
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t sub_19A549158(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v7 = *a1;
  if (*(*a1 + 16) && (v9 = sub_19A4F38B8(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(v7 + 56) + 16 * v9;
    v12 = *v11;
    if (*(v11 + 8))
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
    }

    else
    {
      a4(&v17, v12);
      sub_19A2E8B10(v12);
      if (!v4)
      {
        v14 = v17;
      }
    }
  }

  else
  {
    sub_19A5498D4();
    swift_allocError();
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 16) = 2;
    swift_willThrow();
  }

  return v14 & 1;
}

void sub_19A549284(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = MEMORY[0x19A902330]();
  sub_19A547B18(a1, a2, a3, a4, a5, sub_19A548DE4);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = v14;
    objc_autoreleasePoolPop(v13);
    *a6 = v15;
  }
}

BOOL _s13DiffusionBase23MultilingualTextEncoderV5ErrorO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4 && a2 == a5;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a1 ^ 1 | a2)
    {
      if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a4 != 1)
    {
      return 0;
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

void sub_19A5493D8(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_19A570EAC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20[-v14];
  sub_19A549938(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_19A2F3FA0(v8, &qword_1EAFA02E8);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    type metadata accessor for ManagedMLModel(0);
    swift_allocObject();
    v16 = a2;
    ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v13, v16, MEMORY[0x1E69E7CC0], "MultilingualTextEncoder", 23, 2);
    (*(v10 + 8))(v15, v9);
  }

  v17 = **(&unk_1E75179A0 + a3);
  v18 = [objc_opt_self() contextualEmbeddingWithScript_];

  if (v18)
  {
    aBlock[4] = nullsub_2;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A5464EC;
    aBlock[3] = &block_descriptor_14;
    v19 = _Block_copy(aBlock);
    [v18 requestEmbeddingAssetsWithCompletionHandler_];
    _Block_release(v19);
    sub_19A2F3FA0(a1, &qword_1EAFA02E8);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_19A5496EC()
{
  result = qword_1EAFA3650;
  if (!qword_1EAFA3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3650);
  }

  return result;
}

uint64_t _s13DiffusionBase6ScriptO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_19A5497C4()
{
  result = qword_1EAFA3658;
  if (!qword_1EAFA3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3658);
  }

  return result;
}

uint64_t sub_19A549828(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_19A549840(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_19A5498D4()
{
  result = qword_1EAFA3668;
  if (!qword_1EAFA3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3668);
  }

  return result;
}

uint64_t sub_19A549938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19A5499D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    result = sub_19A3200C0(a2);
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19A5549E8();
        v11 = v13;
      }

      result = sub_19A4F425C(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v5 = *&a1;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_19A545264(a2, v6, v5);
    *v2 = v12;
  }

  return result;
}

uint64_t sub_19A549B0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(unint64_t, uint64_t), uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_19A31F6BC(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        sub_19A554CA8(a6);
        v20 = v22;
      }

      result = a5(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

uint64_t sub_19A549C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v19 - v6;
  v8 = sub_19A570EAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_19A2F3FA0(a1, &qword_1EAFA02E8);
    v12 = sub_19A31FBD4(a2);
    if (v13)
    {
      v14 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19A555218();
        v16 = v20;
      }

      (*(v9 + 32))(v7, *(v16 + 56) + *(v9 + 72) * v14, v8);
      sub_19A4F4C94(v14, v16);
      *v3 = v16;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_19A2F3FA0(v7, &qword_1EAFA02E8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    result = sub_19A5456AC(v11, a2, v17);
    *v3 = v20;
  }

  return result;
}

unint64_t sub_19A549E7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_19A545CC8(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_19A31FDEC(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_19A55594C(&qword_1EAFA2E18);
        v13 = v15;
      }

      result = sub_19A4F5308(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

id sub_19A549F60(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_19A570DEC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelAssetWithURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_19A570EAC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_19A570D1C();

    swift_willThrow();
    v9 = sub_19A570EAC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t AppleDiffusionPipeline.ResourceURLs.init(resourcesAt:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  (MEMORY[0x1EEE9AC00])();
  v73 = v54 - v4;
  v5 = sub_19A570DCC();
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  (MEMORY[0x1EEE9AC00])();
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A570EAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x1EEE9AC00])();
  v66 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v54 - v13;
  v15 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  *a2 = 0;
  a2[1] = 0;
  *(a2 + v15[8]) = &unk_1F0DB5680;
  v16 = *(v10 + 16);
  v17 = a2 + v15[5];
  v76 = a1;
  v16(v17, a1, v9);
  v64 = v16;
  v65 = v10 + 16;
  v16(v14, a1, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v18, v14, v9);
  v55 = v15;
  v20 = v15[6];
  v21 = v10;
  v56 = a2;
  v22 = (a2 + v20);
  *v22 = sub_19A54B0FC;
  v22[1] = v19;
  v23 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v80 = 0xD000000000000024;
  v81 = 0x800000019A59D8E0;
  v24 = *MEMORY[0x1E6968F58];
  v25 = v74;
  v26 = v75;
  v69 = *(v75 + 104);
  v70 = v75 + 104;
  v69(v8, v24, v74);
  v68 = sub_19A2F4450();
  sub_19A570E9C();
  v27 = *(v26 + 8);
  v72 = v8;
  v75 = v26 + 8;
  v67 = v27;
  v27(v8, v25);
  sub_19A570E4C();
  v71 = v21;
  v28 = v21 + 8;
  v29 = *(v21 + 8);
  v29(v14, v9);
  v30 = sub_19A572CCC();

  LODWORD(v14) = [v23 fileExistsAtPath_];

  if (v14)
  {
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v31 = sub_19A5723FC();
    __swift_project_value_buffer(v31, qword_1ED82BD48);
    v32 = v66;
    v64(v66, v76, v9);
    v33 = sub_19A5723DC();
    v34 = sub_19A57355C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v80 = v36;
      *v35 = 136315138;
      sub_19A555D94();
      v37 = sub_19A573EDC();
      v39 = v38;
      v29(v32, v9);
      v40 = sub_19A31F114(v37, v39, &v80);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_19A2DE000, v33, v34, "Found an M2 model for local conditioning producer at %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x19A902C50](v36, -1, -1);
      MEMORY[0x19A902C50](v35, -1, -1);
    }

    else
    {

      v29(v32, v9);
    }
  }

  v54[0] = v29;
  v54[1] = v28;
  v41 = 0;
  v79 = sub_19A4E8180(MEMORY[0x1E69E7CC0]);
  v66 = 0x800000019A59D910;
  v63 = 0x800000019A596560;
  v64 = 0x800000019A596540;
  v61 = 0x800000019A5965A0;
  v62 = 0x800000019A596580;
  v60 = 0x800000019A5965C0;
  v59 = 0x800000019A5965E0;
  LODWORD(v65) = *MEMORY[0x1E6968F68];
  v42 = (v71 + 56);
  v58 = 0xD000000000000016;
  v57 = 0xD000000000000012;
  v71 = v9;
  do
  {
    v52 = *(&unk_1F0DB5600 + v41 + 32);
    if (*(&unk_1F0DB5600 + v41 + 32) <= 4u)
    {
      if (*(&unk_1F0DB5600 + v41 + 32) <= 1u)
      {
        if (*(&unk_1F0DB5600 + v41 + 32))
        {
          v44 = v58;
          v43 = v59;
        }

        else
        {
          v43 = 0xE90000000000006ELL;
          v44 = 0x6F6974616D696E61;
        }
      }

      else if (v52 == 2)
      {
        v43 = 0xE500000000000000;
        v44 = 0x696A6F6D65;
      }

      else if (v52 == 3)
      {
        v44 = v57;
        v43 = v60;
      }

      else
      {
        v44 = 0x61727473756C6C69;
        v43 = 0xEC0000006E6F6974;
      }
    }

    else if (*(&unk_1F0DB5600 + v41 + 32) > 7u)
    {
      if (v52 == 8)
      {
        v44 = 0x63735F656C797473;
        v43 = 0xEE00656C62626972;
      }

      else
      {
        v44 = 0xD00000000000001BLL;
        if (v52 == 9)
        {
          v43 = v63;
        }

        else
        {
          v44 = 0xD000000000000014;
          v43 = v64;
        }
      }
    }

    else if (v52 == 5)
    {
      v44 = 0xD000000000000019;
      v43 = v61;
    }

    else if (v52 == 6)
    {
      v43 = 0xE600000000000000;
      v44 = 0x686374656B73;
    }

    else
    {
      v44 = 0xD000000000000013;
      v43 = v62;
    }

    ++v41;
    v80 = 1852400174;
    v81 = 0xE400000000000000;
    v77 = v44;
    v78 = v43;
    v77 = sub_19A572F8C();
    v78 = v45;
    sub_19A572ECC();
    v80 = v77;
    v81 = v78;
    v77 = 0x2F61726F6CLL;
    v78 = 0xE500000000000000;
    v77 = sub_19A572F8C();
    v78 = v46;
    sub_19A572ECC();

    v80 = v77;
    v81 = v78;
    v77 = 0xD00000000000001BLL;
    v78 = v66;
    v77 = sub_19A572F8C();
    v78 = v47;
    sub_19A572ECC();

    v80 = v77;
    v81 = v78;
    v48 = v72;
    v49 = v74;
    v69(v72, v65, v74);
    v50 = v73;
    sub_19A570E8C();
    v67(v48, v49);

    v51 = v71;
    (*v42)(v50, 0, 1, v71);
    sub_19A549C2C(v50, v52);
  }

  while (v41 != 10);
  result = (v54[0])(v76, v51);
  *(v56 + v55[7]) = v79;
  return result;
}

unint64_t AppleDiffusionPipeline.ComponentModel.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000011;
    v5 = 0xD000000000000011;
    if (a1 != 8)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x7265646F636564;
    if (a1 != 5)
    {
      v6 = 0x6365446168706C61;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 1952804469;
    v2 = 0x7265646F636E65;
    if (a1 == 3)
    {
      v2 = 0x6F636E4570696C63;
    }

    if (a1 == 2)
    {
      v2 = 0x6E75684374656E75;
    }

    if (a1)
    {
      v1 = 0x6E75684374656E75;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_19A54AB8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AppleDiffusionPipeline.ComponentModel.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AppleDiffusionPipeline.ComponentModel.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A54AC14()
{
  v1 = *v0;
  sub_19A5740BC();
  AppleDiffusionPipeline.ComponentModel.rawValue.getter(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A54AC78()
{
  AppleDiffusionPipeline.ComponentModel.rawValue.getter(*v0);
  sub_19A572E4C();
}

uint64_t sub_19A54ACCC()
{
  v1 = *v0;
  sub_19A5740BC();
  AppleDiffusionPipeline.ComponentModel.rawValue.getter(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A54AD2C@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase05AppleA8PipelineV14ComponentModelO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_19A54AD5C@<X0>(unint64_t *a1@<X8>)
{
  result = AppleDiffusionPipeline.ComponentModel.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AppleDiffusionPipeline.ResourceURLs.catalogVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppleDiffusionPipeline.ResourceURLs.catalogVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppleDiffusionPipeline.ResourceURLs.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 20);
  v4 = sub_19A570EAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleDiffusionPipeline.ResourceURLs.urlForComponent.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 24));

  return v1;
}

uint64_t AppleDiffusionPipeline.ResourceURLs.urlForAdapter.getter()
{
  type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
}

uint64_t AppleDiffusionPipeline.ResourceURLs.urlForAdapter.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19A54AF98(unsigned __int8 a1)
{
  v2 = sub_19A570DCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A555DEC(a1);
  v8[0] = sub_19A57397C();
  v8[1] = v6;
  MEMORY[0x19A900A50](0x6C65646F6D6C6D2ELL, 0xE900000000000063);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_19A2F4450();
  sub_19A570E8C();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_19A54B0FC(unsigned __int8 a1)
{
  sub_19A570EAC();

  return sub_19A54AF98(a1);
}

uint64_t AppleDiffusionPipeline.ResourceURLs.requiredComponentCombinations.getter()
{
  type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
}

uint64_t AppleDiffusionPipeline.ResourceURLs.validate()()
{
  v55 = sub_19A570DCC();
  v1 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A570EAC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v46 - v8;
  v9 = sub_19A4E837C(MEMORY[0x1E69E7CC0]);
  v10 = 0;
  v11 = (v0 + *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 24));
  v12 = *v11;
  v52 = v11[1];
  v53 = v12;
  v51 = *MEMORY[0x1E6968F68];
  v49 = (v1 + 8);
  v50 = (v1 + 104);
  v57 = (v4 + 8);
  v47 = v7;
  v48 = v3;
  while (1)
  {
    v14 = *(&unk_1F0DB56B0 + v10 + 32);
    v53(v14);
    v15 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    sub_19A570E4C();
    v16 = sub_19A572CCC();

    v56 = [v15 fileExistsAtPath:v16 isDirectory:0];

    v59 = 0x646C6D65726F632FLL;
    v60 = 0xEF6E69622E617461;
    v18 = v54;
    v17 = v55;
    (*v50)(v54, v51, v55);
    sub_19A2F4450();
    sub_19A570E8C();
    (*v49)(v18, v17);
    v19 = sub_19A570ECC();
    v20 = *v57;
    v22 = v21;
    (*v57)(v7, v3);
    v23 = v22;
    v24 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      v26 = v19;
      if (v24 == 2)
      {
        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        sub_19A33EFC4(v26, v23);
        v25 = v27 - v28;
        if (__OFSUB__(v27, v28))
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_19A33EFC4(v19, v22);
        v25 = 0;
      }
    }

    else if (v24)
    {
      sub_19A33EFC4(v19, v22);
      LODWORD(v25) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_26;
      }

      v25 = v25;
    }

    else
    {
      sub_19A33EFC4(v19, v22);
      v25 = BYTE6(v22);
    }

    v29 = v25 > 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v9;
    v32 = sub_19A31FCAC(v14);
    v33 = v9[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v9[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A5554A8();
      }
    }

    else
    {
      sub_19A552530(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_19A31FCAC(v14);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_28;
      }

      v32 = v37;
    }

    v39 = v56;
    v9 = v59;
    if (v36)
    {
      v13 = (*(v59 + 56) + 2 * v32);
      *v13 = v56;
      v13[1] = v29;
      v3 = v48;
      v20(v58, v48);
    }

    else
    {
      *(v59 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      *(v9[6] + v32) = v14;
      v40 = (v9[7] + 2 * v32);
      *v40 = v39;
      v40[1] = v29;
      v3 = v48;
      v20(v58, v48);
      v41 = v9[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v9[2] = v43;
    }

    ++v10;
    v7 = v47;
    if (v10 == 10)
    {
      v44 = sub_19A543F74(v9);

      return v44;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t AppleDiffusionPipeline.init(resources:configuration:reduceMemory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 3149) = a4;
  *(v4 + 3576) = a3;
  *(v4 + 3568) = a2;
  *(v4 + 3560) = a1;
  *(v4 + 3584) = type metadata accessor for AppleDiffusionPipeline(0);
  *(v4 + 3592) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  *(v4 + 3600) = swift_task_alloc();
  *(v4 + 3608) = swift_task_alloc();
  *(v4 + 3616) = _s18ModelConfigurationVMa(0);
  *(v4 + 3624) = swift_task_alloc();
  *(v4 + 3632) = swift_task_alloc();
  *(v4 + 3640) = swift_task_alloc();
  *(v4 + 3648) = swift_task_alloc();
  *(v4 + 3656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  *(v4 + 3664) = swift_task_alloc();
  *(v4 + 3672) = swift_task_alloc();
  v5 = sub_19A570EAC();
  *(v4 + 3680) = v5;
  *(v4 + 3688) = *(v5 - 8);
  *(v4 + 3696) = swift_task_alloc();
  *(v4 + 3704) = swift_task_alloc();
  *(v4 + 3712) = swift_task_alloc();
  *(v4 + 3720) = swift_task_alloc();
  *(v4 + 3728) = swift_task_alloc();
  *(v4 + 3736) = swift_task_alloc();
  *(v4 + 3744) = swift_task_alloc();
  *(v4 + 3752) = type metadata accessor for AppleDiffusionUnet();
  *(v4 + 3760) = swift_task_alloc();
  *(v4 + 3768) = swift_task_alloc();
  *(v4 + 3776) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A54B928, 0, 0);
}

uint64_t sub_19A54B928()
{
  v47 = v0;
  v1 = *(v0 + 3744);
  v2 = *(v0 + 3688);
  v3 = *(v0 + 3680);
  v4 = *(v0 + 3568);
  v5 = objc_opt_self();
  *(v0 + 3784) = v5;
  v6 = [v5 defaultManager];
  v7 = v4 + *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 24);
  v8 = *v7;
  *(v0 + 3792) = *v7;
  *(v0 + 3800) = *(v7 + 8);
  v46 = v8;
  v8(1);
  sub_19A570E5C();
  v9 = *(v2 + 8);
  *(v0 + 3808) = v9;
  *(v0 + 3816) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  v10 = sub_19A572CCC();

  LODWORD(v1) = [v6 fileExistsAtPath_];

  if (v1 && (v11 = *(v0 + 3744), v12 = *(v0 + 3680), v13 = [v5 defaultManager], v46(2), sub_19A570E5C(), v9(v11, v12), v14 = sub_19A572CCC(), , LODWORD(v11) = objc_msgSend(v13, sel_fileExistsAtPath_, v14), v14, v13, v11))
  {
    v15 = *(v0 + 3688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F88);
    v16 = *(v15 + 72);
    v17 = *(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_19A576E20;
    v19 = v46;
    v46(1);
    v46(2);
    v20 = v17;
  }

  else
  {
    v21 = *(v0 + 3688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F88);
    v16 = *(v21 + 72);
    v20 = *(v21 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_19A576E10;
    v19 = v46;
    v46(0);
  }

  *(v0 + 3888) = v20;
  *(v0 + 3824) = v16;
  v22 = *(v0 + 3768);
  v23 = *(v0 + 3672);
  v24 = *(v0 + 3576);
  v25 = type metadata accessor for ConcreteAdapter();
  *(v0 + 3832) = v25;
  v26 = *(v25 - 8);
  *(v0 + 3840) = v26;
  (*(v26 + 56))(v23, 1, 1, v25);
  v27 = v24;
  sub_19A4EF65C(v18, v27, v23, MEMORY[0x1E69E7CC0], v22);
  v28 = *(v0 + 3736);
  v29 = *(v0 + 3688);
  v30 = *(v0 + 3680);
  v31 = *(v0 + 3656);
  v32 = v19;
  v33 = *(v0 + 3648);
  v34 = *(v0 + 3640);
  v35 = *(v0 + 3616);
  sub_19A55602C(*(v0 + 3768), *(v0 + 3776), type metadata accessor for AppleDiffusionUnet);
  v32(6);
  v36 = *(v35 + 20);
  *(v0 + 3892) = v36;
  v37 = (v31 + v36);
  *v37 = 0;
  v37[1] = 0;
  v32(4);
  v38 = *(v35 + 20);
  *(v0 + 3896) = v38;
  v39 = (v33 + v38);
  *v39 = 0;
  v39[1] = 0;
  v32(5);
  v40 = (v34 + *(v35 + 20));
  sub_19A52C910();
  *v40 = 0;
  v40[1] = 0;
  v41 = *(v29 + 16);
  *(v0 + 3848) = v41;
  *(v0 + 3856) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v28, v34, v30);
  v42 = sub_19A549F60(v28);
  *(v0 + 3864) = v42;
  *(v0 + 3872) = 0;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 3552;
  *(v0 + 24) = sub_19A54C270;
  v43 = v42;
  v44 = swift_continuation_init();
  *(v0 + 3528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3678);
  *(v0 + 3504) = v44;
  *(v0 + 3472) = MEMORY[0x1E69E9820];
  *(v0 + 3480) = 1107296256;
  *(v0 + 3488) = sub_19A54FDB0;
  *(v0 + 3496) = &block_descriptor_15;
  [v43 functionNamesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_19A54C270()
{
  v1 = *(*v0 + 48);
  *(*v0 + 3880) = v1;
  if (v1)
  {
    v2 = sub_19A54DF70;
  }

  else
  {
    v2 = sub_19A54C380;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A54C380()
{
  v244 = v0;
  v1 = 0x7265646F636E65;
  v210 = (v0 + 2992);
  v2 = *(v0 + 3552);
  v212 = (v0 + 3152);
  v213 = *(v0 + 3872);
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = v3 + 1;
  while (--v5)
  {
    if (*(v4 - 1) != 0x7265646F636E65 || *v4 != 0xE700000000000000)
    {
      v4 += 2;
      if ((sub_19A573F1C() & 1) == 0)
      {
        continue;
      }
    }

    v7 = *(v0 + 3848);
    v8 = *(v0 + 3896);
    v9 = *(v0 + 3680);
    v10 = *(v0 + 3648);
    v11 = *(v0 + 3640);
    sub_19A555F4C(v10, _s18ModelConfigurationVMa);
    v7(v10, v11, v9);
    *(v10 + v8) = xmmword_19A594320;
    v12 = 0xE700000000000000;
    goto LABEL_10;
  }

  v1 = 0;
  v12 = 0;
LABEL_10:
  v13 = (v2 + 40);
  v14 = -v3;
  v15 = -1;
  v229 = v12;
  while (1)
  {
    if (v15 - v3 == -1)
    {

      v225 = 0;
      v241 = 0;
LABEL_20:
      v23 = *(v0 + 3848);
      v24 = *(v0 + 3744);
      v25 = *(v0 + 3728);
      v26 = *(v0 + 3688);
      v27 = *(v0 + 3680);
      v28 = *(v0 + 3656);
      v29 = *(v0 + 3608);
      v232 = *(v0 + 3600);
      v236 = *(v0 + 3576);
      v23(v25, *(v0 + 3640), v27);
      v23(v29, v28, v27);
      (*(v26 + 56))(v29, 0, 1, v27);
      v23(v24, v25, v27);
      type metadata accessor for ManagedMLModel(0);
      swift_allocObject();

      v30 = v236;
      v237 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v24, v30, MEMORY[0x1E69E7CC0], "latent color image decoder", 26, 2);
      sub_19A33546C(v29, v232, &qword_1EAFA02E8);
      if ((*(v26 + 48))(v232, 1, v27) == 1)
      {
        v31 = *(v0 + 3808);
        v32 = *(v0 + 3728);
        v33 = *(v0 + 3680);
        v34 = *(v0 + 3608);
        v35 = *(v0 + 3600);

        sub_19A2F3FA0(v34, &qword_1EAFA02E8);
        v31(v32, v33);
        sub_19A2F3FA0(v35, &qword_1EAFA02E8);
        v36 = 0;
      }

      else
      {
        (*(*(v0 + 3688) + 32))(*(v0 + 3720), *(v0 + 3600), *(v0 + 3680));
        if (v241)
        {

          v37 = sub_19A31CE20(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v39 = *(v37 + 2);
          v38 = *(v37 + 3);
          if (v39 >= v38 >> 1)
          {
            v37 = sub_19A31CE20((v38 > 1), v39 + 1, 1, v37);
          }

          *(v37 + 2) = v39 + 1;
          v40 = &v37[16 * v39];
          *(v40 + 4) = v225;
          *(v40 + 5) = v241;
        }

        else
        {
          v37 = MEMORY[0x1E69E7CC0];
        }

        v41 = *(v0 + 3808);
        v42 = *(v0 + 3744);
        v233 = *(v0 + 3728);
        v43 = *(v0 + 3720);
        v44 = *(v0 + 3680);
        v45 = *(v0 + 3608);
        v46 = *(v0 + 3576);
        (*(v0 + 3848))(v42, v43, v44);
        swift_allocObject();
        v47 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v42, v46, v37, "latent alpha image decoder", 26, 2);
        v41(v43, v44);
        v48 = v45;
        v36 = v47;
        sub_19A2F3FA0(v48, &qword_1EAFA02E8);
        v41(v233, v44);
      }

      v49 = [*(v0 + 3784) defaultManager];
      sub_19A570E5C();
      v50 = sub_19A572CCC();

      v51 = [v49 fileExistsAtPath_];

      if (v51)
      {
        v52 = *(v0 + 3744);
        v53 = *(v0 + 3576);
        (*(v0 + 3848))(v52, *(v0 + 3648), *(v0 + 3680));

        v227 = _s13DiffusionBase7EncoderV7modelAt13configuration17encoderEntryPointAC10Foundation3URLV_So20MLModelConfigurationCSSSgtcfC_0(v52, v53, v1, v229);
        v228 = v54;
        v230 = v55;
        v234 = v56;
      }

      else
      {
        v227 = 0;
        v228 = 0;
        v230 = 0;
        v234 = 0;
      }

      v57 = *(v0 + 3808);
      v58 = *(v0 + 3784);
      v59 = *(v0 + 3744);
      v60 = *(v0 + 3680);
      (*(v0 + 3792))(7);
      v61 = sub_19A570E5C();
      v63 = v62;
      v57(v59, v60);
      v64 = [v58 defaultManager];
      v65 = sub_19A572CCC();
      LODWORD(v59) = [v64 fileExistsAtPath_];

      if (v59)
      {
        v224 = v36;
        v66 = *(v0 + 3848);
        v216 = *(v0 + 3808);
        v67 = *(v0 + 3792);
        v220 = *(v0 + 3784);
        v68 = *(v0 + 3744);
        v69 = *(v0 + 3712);
        v70 = *(v0 + 3680);
        v71 = *(v0 + 3576);

        v67(7);
        v66(v69, v68, v70);
        swift_allocObject();
        v72 = v71;
        v223 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v69, v72, MEMORY[0x1E69E7CC0], "local_conditioning_producer_scribble", 36, 2);
        v216(v68, v70);
        v67(8);
        v73 = sub_19A570E5C();
        v75 = v74;
        v216(v68, v70);
        v76 = [v220 defaultManager];
        v77 = sub_19A572CCC();
        LOBYTE(v69) = [v76 fileExistsAtPath_];

        if (v69)
        {
          v78 = *(v0 + 3848);
          v217 = *(v0 + 3808);
          v79 = *(v0 + 3792);
          v80 = *(v0 + 3744);
          v81 = *(v0 + 3712);
          v82 = *(v0 + 3704);
          v83 = *(v0 + 3680);
          v221 = *(v0 + 3576);

          v79(8);
          v78(v81, v80, v83);
          v78(v82, v81, v83);
          swift_allocObject();
          v84 = v221;
          v222 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v82, v84, MEMORY[0x1E69E7CC0], "local_conditioning_producer_messages_backgrounds", 48, 2);
          v217(v81, v83);
          v217(v80, v83);
          v218 = 0x656C616373;
          v219 = 0xE500000000000000;
          v214 = 0x746E6574616CLL;
          v215 = 0xE600000000000000;
        }

        else
        {
          if (qword_1ED824D40 != -1)
          {
            swift_once();
          }

          v92 = sub_19A5723FC();
          __swift_project_value_buffer(v92, qword_1ED82BD48);

          v93 = sub_19A5723DC();
          v94 = sub_19A57355C();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            *v95 = 138412290;
            sub_19A4E6F34();
            swift_allocError();
            *v97 = v73;
            *(v97 + 8) = v75;
            *(v97 + 16) = 1;
            v98 = _swift_stdlib_bridgeErrorToNSError();
            *(v95 + 4) = v98;
            *v96 = v98;
            _os_log_impl(&dword_19A2DE000, v93, v94, "Failed to load messages backgrounds conditioner: %@", v95, 0xCu);
            sub_19A2F3FA0(v96, &qword_1EAF9FD28);
            MEMORY[0x19A902C50](v96, -1, -1);
            MEMORY[0x19A902C50](v95, -1, -1);
          }

          else
          {
          }

          v219 = 0;
          v222 = 0;
          v214 = 0;
          v215 = 0;
          v218 = 0;
        }

        v99 = *(v0 + 3808);
        v100 = *(v0 + 3784);
        v101 = *(v0 + 3744);
        v102 = *(v0 + 3680);
        (*(v0 + 3792))(9);
        v103 = sub_19A570E5C();
        v105 = v104;
        v99(v101, v102);
        v106 = [v100 defaultManager];
        v107 = sub_19A572CCC();
        LODWORD(v101) = [v106 fileExistsAtPath_];

        if (v101)
        {
          v108 = *(v0 + 3848);
          v203 = *(v0 + 3808);
          v206 = *(v0 + 3776);
          v208 = *(v0 + 3792);
          v205 = *(v0 + 3760);
          v109 = *(v0 + 3744);
          v197 = *(v0 + 3712);
          v198 = *(v0 + 3704);
          v110 = *(v0 + 3680);
          v111 = *(v0 + 3592);
          v112 = *(v0 + 3584);
          v240 = *(v0 + 3149);
          v200 = *(v0 + 3576);

          v208(9);
          v108(v197, v109, v110);
          v108(v198, v197, v110);
          swift_allocObject();
          v113 = v200;
          v114 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v198, v113, MEMORY[0x1E69E7CC0], "global_conditioning_producer_reference_image", 44, 2);
          v203(v197, v110);
          v203(v109, v110);
          sub_19A555FC4(v206, v205, type metadata accessor for AppleDiffusionUnet);
          v115 = (v111 + v112[6]);
          v116 = v112[11];
          v117 = (v111 + v112[10]);
          v207 = v112[5];
          sub_19A555FC4(v205, v111 + v207, type metadata accessor for AppleDiffusionUnet);
          *v115 = v227;
          v115[1] = v228;
          v115[2] = v230;
          v115[3] = v234;
          v118 = (v111 + v112[7]);
          *v118 = v237;
          v118[1] = v224;
          v118[2] = v225;
          v118[3] = v241;
          *(v111 + v112[8]) = v223;
          v119 = (v111 + v112[9]);
          *v119 = v114;
          v119[1] = 0xD000000000000013;
          v119[2] = 0x800000019A59C3C0;
          *v117 = v222;
          v117[1] = v214;
          v117[2] = v215;
          v117[3] = v218;
          v117[4] = v219;
          *(v111 + v116) = v240;
          v120 = v112[12];

          v226 = v111;
          sub_19A57235C();
          v121 = *(v205 + 208);
          v3 = v121 >> 62;
          v209 = v120;
          if (v121 >> 62)
          {
            result = sub_19A573B4C();
            if (!result)
            {
              goto LABEL_49;
            }
          }

          else
          {
            result = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!result)
            {
LABEL_49:
              if (qword_1ED824D40 != -1)
              {
                swift_once();
              }

              v124 = sub_19A5723FC();
              __swift_project_value_buffer(v124, qword_1ED82BD48);
              v125 = sub_19A5723DC();
              v126 = sub_19A57355C();
              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                *v127 = 0;
                _os_log_impl(&dword_19A2DE000, v125, v126, "Unable to get unet user metadata", v127, 2u);
                MEMORY[0x19A902C50](v127, -1, -1);
              }

              v128 = *(v0 + 3576);

              sub_19A4E6F34();
              swift_allocError();
              *v129 = xmmword_19A577090;
              *(v129 + 16) = 5;
              swift_willThrow();

LABEL_54:
              v130 = *(v0 + 3776);
              v131 = *(v0 + 3760);
              v132 = *(v0 + 3656);
              v133 = *(v0 + 3648);
              sub_19A555F4C(*(v0 + 3640), _s18ModelConfigurationVMa);
              sub_19A555F4C(v133, _s18ModelConfigurationVMa);
              sub_19A555F4C(v132, _s18ModelConfigurationVMa);
              sub_19A555F4C(v130, type metadata accessor for AppleDiffusionUnet);
              sub_19A555F4C(v131, type metadata accessor for AppleDiffusionUnet);
              sub_19A555F4C(v226 + v207, type metadata accessor for AppleDiffusionUnet);
              sub_19A4E6F88(v227, v228, v230, v234);

              sub_19A50CF7C(v222);
              v134 = sub_19A57236C();
              (*(*(v134 - 8) + 8))(v226 + v209, v134);
LABEL_57:
              sub_19A555F4C(*(v0 + 3568), type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

              v140 = *(v0 + 8);
              goto LABEL_58;
            }
          }

          v239 = v121 & 0xC000000000000001;
          if ((v121 & 0xC000000000000001) != 0)
          {
            v123 = MEMORY[0x19A901520](0, v121);
          }

          else
          {
            if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_114;
            }

            v123 = *(v121 + 32);
          }

          sub_19A52C5EC(v123 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, (v0 + 456));
          memcpy((v0 + 80), (v0 + 456), 0x178uLL);
          if (sub_19A4E6F10(v0 + 80) == 1)
          {

            goto LABEL_49;
          }

          memcpy((v0 + 1192), (v0 + 80), 0x168uLL);
          memcpy((v0 + 832), (v0 + 80), 0x168uLL);
          if (sub_19A489468(v0 + 832) == 1)
          {
            v199 = 0;
            v201 = 0;
            v141 = 0;
LABEL_76:
            v211 = sub_19A4E6FD0(&unk_1F0DB70B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C08);
            v147 = swift_allocObject();
            *(v147 + 16) = xmmword_19A57A9D0;
            *(v147 + 32) = 4;
            *(v147 + 36) = 0x3ECCCCCD00000000;
            *(v147 + 44) = 5;
            *(v147 + 48) = 0x3ECCCCCD00000000;
            *(v147 + 56) = 6;
            *(v147 + 60) = 0x3ECCCCCD00000000;
            *(v147 + 68) = 7;
            *(v147 + 72) = 0x3ECCCCCD00000000;
            v204 = sub_19A4E70BC(v147);
            swift_setDeallocating();
            swift_deallocClassInstance();
            memcpy((v0 + 1552), (v0 + 1192), 0x168uLL);
            v202 = v141;
            if (sub_19A489468(v0 + 1552) == 1)
            {
LABEL_80:
              v152 = 4;
              goto LABEL_81;
            }

            v15 = v121;
            v148 = *(v0 + 1696);
            *(v0 + 3248) = *(v0 + 1680);
            *(v0 + 3264) = v148;
            *(v0 + 3280) = *(v0 + 1712);
            v149 = *(v0 + 1632);
            *(v0 + 3184) = *(v0 + 1616);
            *(v0 + 3200) = v149;
            v150 = *(v0 + 1664);
            *(v0 + 3216) = *(v0 + 1648);
            *(v0 + 3232) = v150;
            v151 = *(v0 + 1600);
            *v212 = *(v0 + 1584);
            *(v0 + 3168) = v151;
            *(v0 + 3293) = *(v0 + 1725);
            if (sub_19A4E7208(v212) == 1)
            {
              if ((*(v0 + 1482) & 1) == 0)
              {
                goto LABEL_107;
              }

              goto LABEL_79;
            }

            v187 = *(v0 + 3264);
            *(v0 + 3088) = *(v0 + 3248);
            *(v0 + 3104) = v187;
            *(v0 + 3120) = *(v0 + 3280);
            *(v0 + 3133) = *(v0 + 3293);
            v188 = *(v0 + 3200);
            *(v0 + 3024) = *(v0 + 3184);
            *(v0 + 3040) = v188;
            v189 = *(v0 + 3232);
            *(v0 + 3056) = *(v0 + 3216);
            *(v0 + 3072) = v189;
            v190 = *(v0 + 3168);
            *v210 = *v212;
            *(v0 + 3008) = v190;
            sub_19A33546C(v0 + 1584, v0 + 3312, &unk_1EAFA2C20);
            v14 = v213;
            v191 = sub_19A4E7350(v210);
            if (!v213)
            {
              v2 = v192;
              v194 = v191;
              sub_19A2F3FA0(v0 + 1584, &unk_1EAFA2C20);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v243[0] = v211;
              sub_19A4E4104(v194, sub_19A4E6E50, 0, isUniquelyReferenced_nonNull_native, v243);
              v13 = v243[0];
              goto LABEL_104;
            }

            v193 = *(v0 + 3576);

            sub_19A2F3FA0(v0 + 1584, &unk_1EAFA2C20);

            sub_19A2F3FA0(v0 + 456, &unk_1EAFA2C10);

            goto LABEL_54;
          }

          if (*(v0 + 840) == 1 || (v142 = *(v0 + 848), v143 = *(v0 + 856), , !v143))
          {
            v201 = 0;
            v141 = 0;
            v144 = *(v0 + 1416);
            if (!v144)
            {
LABEL_75:
              v199 = 0;
              goto LABEL_76;
            }

LABEL_70:
            *(v0 + 3536) = 1634889580;
            *(v0 + 3544) = 0xE400000000000000;
            v145 = v121;
            v146 = swift_task_alloc();
            *(v146 + 16) = v0 + 3536;

            v199 = sub_19A374F10(sub_19A2F13CC, v146, v144);

            v121 = v145;

            goto LABEL_76;
          }

          if (v142 == 7168876 && v143 == 0xE300000000000000)
          {
            v141 = 1;
          }

          else
          {
            v141 = sub_19A573F1C();
            if (v142 == 0x776F6C662D6D636CLL && v143 == 0xE800000000000000)
            {
              v201 = 1;
LABEL_74:

              v144 = *(v0 + 1416);
              if (!v144)
              {
                goto LABEL_75;
              }

              goto LABEL_70;
            }
          }

          v201 = sub_19A573F1C();
          goto LABEL_74;
        }

        v85 = *(v0 + 3776);
        v135 = *(v0 + 3656);
        v136 = *(v0 + 3648);
        v137 = *(v0 + 3640);
        v138 = *(v0 + 3576);
        sub_19A4E6F34();
        swift_allocError();
        *v139 = v103;
        *(v139 + 8) = v105;
        *(v139 + 16) = 1;
        swift_willThrow();

        sub_19A4E6F88(v227, v228, v230, v234);
        sub_19A50CF7C(v222);

        sub_19A555F4C(v137, _s18ModelConfigurationVMa);
        sub_19A555F4C(v136, _s18ModelConfigurationVMa);
        v91 = v135;
      }

      else
      {
        v85 = *(v0 + 3776);
        v86 = *(v0 + 3656);
        v87 = *(v0 + 3648);
        v88 = *(v0 + 3640);
        v89 = *(v0 + 3576);
        sub_19A4E6F34();
        swift_allocError();
        *v90 = v61;
        *(v90 + 8) = v63;
        *(v90 + 16) = 0;
        swift_willThrow();

        sub_19A4E6F88(v227, v228, v230, v234);

        sub_19A555F4C(v88, _s18ModelConfigurationVMa);
        sub_19A555F4C(v87, _s18ModelConfigurationVMa);
        v91 = v86;
      }

      sub_19A555F4C(v91, _s18ModelConfigurationVMa);
      sub_19A555F4C(v85, type metadata accessor for AppleDiffusionUnet);
      goto LABEL_57;
    }

    if (++v15 >= *(v2 + 16))
    {
      break;
    }

    if (*(v13 - 1) != 0xD000000000000013 || 0x800000019A59D930 != *v13)
    {
      v13 += 2;
      if ((sub_19A573F1C() & 1) == 0)
      {
        continue;
      }
    }

    v17 = *(v0 + 3864);
    v18 = *(v0 + 3848);
    v19 = *(v0 + 3680);
    v20 = *(v0 + 3656);
    v21 = *(v0 + 3640);
    v22 = (v20 + *(v0 + 3892));
    sub_19A555F4C(v20, _s18ModelConfigurationVMa);

    v18(v20, v21, v19);
    *v22 = 0xD000000000000013;
    v22[1] = 0x800000019A59D930;
    v241 = 0x800000019A59D930;
    v225 = 0xD000000000000013;
    goto LABEL_20;
  }

  __break(1u);
LABEL_104:
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v243[0] = v204;
  sub_19A4E3EDC(v2, sub_19A4E6E3C, 0, v196, v243);
  if (v14)
  {
  }

  v211 = v13;
  v204 = v243[0];
  if (*(v0 + 1482))
  {
LABEL_79:
    v121 = v15;
    goto LABEL_80;
  }

LABEL_107:
  v152 = *(v0 + 1456);
  v121 = v15;
  if (*(v0 + 1464))
  {
    v152 = 4;
  }

LABEL_81:
  v235 = v152;
  v153 = *(v0 + 3840);
  v154 = *(v0 + 3832);
  v155 = *(v0 + 3664);
  sub_19A33546C(*(v0 + 3760) + *(*(v0 + 3752) + 24), v155, &unk_1EAFA2BF0);
  v156 = (*(v153 + 48))(v155, 1, v154);
  v157 = *(v0 + 3664);
  if (v156 == 1)
  {
    sub_19A2F3FA0(v157, &unk_1EAFA2BF0);
    v158 = 11;
    v159 = v121 & 0xFFFFFFFFFFFFFF8;
    if (v3)
    {
      goto LABEL_83;
    }

LABEL_94:
    v160 = *(v159 + 16);
    v231 = v158;
    if (!v160)
    {
      goto LABEL_95;
    }

LABEL_84:
    v242 = v121;
    v243[0] = MEMORY[0x1E69E7CC0];
    result = sub_19A4E432C(0, v160 & ~(v160 >> 63), 0);
    if ((v160 & 0x8000000000000000) == 0)
    {
      v161 = 0;
      v162 = v243[0];
      v163 = (*(v0 + 3688) + 32);
      v238 = (*(v0 + 3888) + 32) & ~*(v0 + 3888);
      do
      {
        v164 = *(v0 + 3848);
        v165 = *(v0 + 3696);
        v166 = *(v0 + 3680);
        if (v239)
        {
          v167 = MEMORY[0x19A901520](v161, v242);
          v164(v165, v167 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v166);
          swift_unknownObjectRelease();
        }

        else
        {
          v164(*(v0 + 3696), *(v242 + 8 * v161 + 32) + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, *(v0 + 3680));
        }

        v243[0] = v162;
        v169 = *(v162 + 16);
        v168 = *(v162 + 24);
        if (v169 >= v168 >> 1)
        {
          sub_19A4E432C(v168 > 1, v169 + 1, 1);
          v162 = v243[0];
        }

        v170 = *(v0 + 3824);
        v171 = *(v0 + 3696);
        v172 = *(v0 + 3680);
        ++v161;
        *(v162 + 16) = v169 + 1;
        (*v163)(v162 + v238 + v170 * v169, v171, v172);
      }

      while (v160 != v161);
      v173 = *(v0 + 3776);
      v174 = *(v0 + 3656);
      v175 = *(v0 + 3648);
      v176 = *(v0 + 3640);
      v177 = *(v0 + 3576);

      sub_19A555F4C(v176, _s18ModelConfigurationVMa);
      sub_19A555F4C(v175, _s18ModelConfigurationVMa);
      sub_19A555F4C(v174, _s18ModelConfigurationVMa);
      sub_19A555F4C(v173, type metadata accessor for AppleDiffusionUnet);
      goto LABEL_96;
    }

LABEL_114:
    __break(1u);
    return result;
  }

  v158 = *v157;
  sub_19A555F4C(v157, type metadata accessor for ConcreteAdapter);
  v159 = v121 & 0xFFFFFFFFFFFFFF8;
  if (!v3)
  {
    goto LABEL_94;
  }

LABEL_83:
  v160 = sub_19A573B4C();
  v231 = v158;
  if (v160)
  {
    goto LABEL_84;
  }

LABEL_95:
  v178 = *(v0 + 3776);
  v179 = *(v0 + 3656);
  v180 = *(v0 + 3648);
  v181 = *(v0 + 3640);
  v182 = *(v0 + 3576);

  sub_19A555F4C(v181, _s18ModelConfigurationVMa);
  sub_19A555F4C(v180, _s18ModelConfigurationVMa);
  sub_19A555F4C(v179, _s18ModelConfigurationVMa);
  sub_19A555F4C(v178, type metadata accessor for AppleDiffusionUnet);
  v162 = MEMORY[0x1E69E7CC0];
LABEL_96:
  memcpy((v0 + 1912), (v0 + 1192), 0x168uLL);
  if (sub_19A489468(v0 + 1912) == 1)
  {
    sub_19A2F3FA0(v0 + 456, &unk_1EAFA2C10);
    v183 = 0;
  }

  else
  {
    memcpy((v0 + 2272), (v0 + 1192), 0x168uLL);
    sub_19A4895B4(v0 + 2272, v0 + 2632);
    sub_19A2F3FA0(v0 + 456, &unk_1EAFA2C10);
    v183 = *(v0 + 2144);

    sub_19A2F3FA0(v0 + 1192, &qword_1EAFA2510);
  }

  v184 = *(v0 + 3592);
  v185 = *(v0 + 3568);
  v186 = *(v0 + 3560);
  sub_19A555F4C(*(v0 + 3760), type metadata accessor for AppleDiffusionUnet);
  *v184 = v202 & 1;
  *(v184 + 1) = v201 & 1;
  *(v184 + 2) = v199 & 1;
  *(v184 + 3) = v231;
  *(v184 + 8) = v211;
  *(v184 + 16) = v204;
  *(v184 + 24) = v162;
  *(v184 + 32) = v235;
  *(v184 + 40) = v183;
  sub_19A55602C(v184, v186, type metadata accessor for AppleDiffusionPipeline);
  sub_19A555F4C(v185, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

  v140 = *(v0 + 8);
LABEL_58:

  return v140();
}

uint64_t sub_19A54DF70()
{
  v255 = v0;
  swift_willThrow();
  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3880);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3624);
  v235 = sub_19A5723FC();
  __swift_project_value_buffer(v235, qword_1ED82BD48);
  sub_19A555FC4(v2, v3, _s18ModelConfigurationVMa);
  v4 = v1;
  v5 = sub_19A5723DC();
  v6 = sub_19A57355C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 3880);
  v9 = *(v0 + 3624);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v254[0] = v12;
    *v10 = 136446466;
    sub_19A555D94();
    v13 = sub_19A573EDC();
    v15 = v14;
    sub_19A555F4C(v9, _s18ModelConfigurationVMa);
    v16 = sub_19A31F114(v13, v15, v254);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_19A2DE000, v5, v6, "Unable to query model bundle for function names at %{public}s: %@", v10, 0x16u);
    sub_19A2F3FA0(v11, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x19A902C50](v12, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  else
  {

    sub_19A555F4C(v9, _s18ModelConfigurationVMa);
  }

  v220 = (v0 + 2992);
  v223 = (v0 + 3152);
  v19 = 0x7265646F636E65;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = *(MEMORY[0x1E69E7CC0] + 16);
  v22 = (MEMORY[0x1E69E7CC0] + 40);
  v23 = v21 + 1;
  while (--v23)
  {
    if (*(v22 - 1) != 0x7265646F636E65 || *v22 != 0xE700000000000000)
    {
      v22 += 2;
      if ((sub_19A573F1C() & 1) == 0)
      {
        continue;
      }
    }

    v25 = *(v0 + 3848);
    v26 = *(v0 + 3896);
    v27 = *(v0 + 3680);
    v28 = *(v0 + 3648);
    v29 = *(v0 + 3640);
    sub_19A555F4C(v28, _s18ModelConfigurationVMa);
    v25(v28, v29, v27);
    *(v28 + v26) = xmmword_19A594320;
    v242 = 0xE700000000000000;
    goto LABEL_15;
  }

  v19 = 0;
  v242 = 0;
LABEL_15:
  v30 = -v21;
  v31 = (v20 + 40);
  v32 = -1;
  while (v32 - v21 != -1)
  {
    if (++v32 >= *(v20 + 16))
    {
      __break(1u);
LABEL_87:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v254[0] = v216;
      sub_19A4E3EDC(v30, sub_19A4E6E3C, 0, isUniquelyReferenced_nonNull_native, v254);
      if (v32)
      {
      }

      v236 = v31;
      v216 = v254[0];
      if ((*(v0 + 1482) & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_84:
      v135 = v20;
      v164 = 4;
      goto LABEL_92;
    }

    if (*(v31 - 1) != 0xD000000000000013 || 0x800000019A59D930 != *v31)
    {
      v31 += 2;
      if ((sub_19A573F1C() & 1) == 0)
      {
        continue;
      }
    }

    v34 = *(v0 + 3864);
    v35 = *(v0 + 3848);
    v36 = *(v0 + 3680);
    v37 = *(v0 + 3656);
    v38 = *(v0 + 3640);
    v39 = (v37 + *(v0 + 3892));
    sub_19A555F4C(v37, _s18ModelConfigurationVMa);

    v35(v37, v38, v36);
    *v39 = 0xD000000000000013;
    v39[1] = 0x800000019A59D930;
    v252 = 0x800000019A59D930;
    v237 = 0xD000000000000013;
    goto LABEL_25;
  }

  v237 = 0;
  v252 = 0;
LABEL_25:
  v40 = *(v0 + 3848);
  v41 = *(v0 + 3744);
  v42 = *(v0 + 3728);
  v43 = *(v0 + 3688);
  v44 = *(v0 + 3680);
  v45 = *(v0 + 3656);
  v46 = *(v0 + 3608);
  v244 = *(v0 + 3600);
  v247 = *(v0 + 3576);
  v40(v42, *(v0 + 3640), v44);
  v40(v46, v45, v44);
  (*(v43 + 56))(v46, 0, 1, v44);
  v40(v41, v42, v44);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();

  v47 = v247;
  v248 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v41, v47, MEMORY[0x1E69E7CC0], "latent color image decoder", 26, 2);
  sub_19A33546C(v46, v244, &qword_1EAFA02E8);
  if ((*(v43 + 48))(v244, 1, v44) == 1)
  {
    v48 = *(v0 + 3808);
    v49 = *(v0 + 3728);
    v50 = *(v0 + 3680);
    v51 = *(v0 + 3608);
    v52 = *(v0 + 3600);

    sub_19A2F3FA0(v51, &qword_1EAFA02E8);
    v48(v49, v50);
    sub_19A2F3FA0(v52, &qword_1EAFA02E8);
    v245 = 0;
  }

  else
  {
    (*(*(v0 + 3688) + 32))(*(v0 + 3720), *(v0 + 3600), *(v0 + 3680));
    if (v252)
    {

      v53 = sub_19A31CE20(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v55 = *(v53 + 2);
      v54 = *(v53 + 3);
      if (v55 >= v54 >> 1)
      {
        v53 = sub_19A31CE20((v54 > 1), v55 + 1, 1, v53);
      }

      *(v53 + 2) = v55 + 1;
      v56 = &v53[16 * v55];
      *(v56 + 4) = v237;
      *(v56 + 5) = v252;
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

    v57 = *(v0 + 3808);
    v58 = *(v0 + 3744);
    v240 = *(v0 + 3728);
    v59 = *(v0 + 3720);
    v60 = *(v0 + 3680);
    v61 = *(v0 + 3608);
    v62 = *(v0 + 3576);
    (*(v0 + 3848))(v58, v59, v60);
    swift_allocObject();
    v245 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v58, v62, v53, "latent alpha image decoder", 26, 2);
    v57(v59, v60);
    sub_19A2F3FA0(v61, &qword_1EAFA02E8);
    v57(v240, v60);
  }

  v63 = [*(v0 + 3784) defaultManager];
  sub_19A570E5C();
  v64 = sub_19A572CCC();

  v65 = [v63 fileExistsAtPath_];

  if (v65)
  {
    v66 = *(v0 + 3744);
    v67 = *(v0 + 3576);
    (*(v0 + 3848))(v66, *(v0 + 3648), *(v0 + 3680));

    v239 = _s13DiffusionBase7EncoderV7modelAt13configuration17encoderEntryPointAC10Foundation3URLV_So20MLModelConfigurationCSSSgtcfC_0(v66, v67, v19, v242);
    v241 = v68;
    v243 = v69;
    v71 = v70;
  }

  else
  {
    v239 = 0;
    v241 = 0;
    v243 = 0;
    v71 = 0;
  }

  v72 = *(v0 + 3808);
  v73 = *(v0 + 3784);
  v74 = *(v0 + 3744);
  v75 = *(v0 + 3680);
  (*(v0 + 3792))(7);
  v76 = sub_19A570E5C();
  v78 = v77;
  v72(v74, v75);
  v79 = [v73 defaultManager];
  v80 = sub_19A572CCC();
  LODWORD(v74) = [v79 fileExistsAtPath_];

  if (v74)
  {
    v234 = v71;
    v81 = *(v0 + 3848);
    v226 = *(v0 + 3808);
    v82 = *(v0 + 3792);
    v230 = *(v0 + 3784);
    v83 = *(v0 + 3744);
    v84 = *(v0 + 3712);
    v85 = *(v0 + 3680);
    v86 = *(v0 + 3576);

    v82(7);
    v81(v84, v83, v85);
    swift_allocObject();
    v87 = v86;
    v233 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v84, v87, MEMORY[0x1E69E7CC0], "local_conditioning_producer_scribble", 36, 2);
    v226(v83, v85);
    v82(8);
    v88 = sub_19A570E5C();
    v90 = v89;
    v226(v83, v85);
    v91 = [v230 defaultManager];
    v92 = sub_19A572CCC();
    LOBYTE(v84) = [v91 fileExistsAtPath_];

    if (v84)
    {
      v93 = *(v0 + 3848);
      v227 = *(v0 + 3808);
      v94 = *(v0 + 3792);
      v95 = *(v0 + 3744);
      v96 = *(v0 + 3712);
      v97 = *(v0 + 3704);
      v98 = *(v0 + 3680);
      v231 = *(v0 + 3576);

      v94(8);
      v93(v96, v95, v98);
      v93(v97, v96, v98);
      swift_allocObject();
      v99 = v231;
      v232 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v97, v99, MEMORY[0x1E69E7CC0], "local_conditioning_producer_messages_backgrounds", 48, 2);
      v227(v96, v98);
      v227(v95, v98);
      v228 = 0x656C616373;
      v229 = 0xE500000000000000;
      v224 = 0x746E6574616CLL;
      v225 = 0xE600000000000000;
    }

    else
    {
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v235, qword_1ED82BD48);

      v107 = sub_19A5723DC();
      v108 = sub_19A57355C();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *v109 = 138412290;
        sub_19A4E6F34();
        swift_allocError();
        *v111 = v88;
        *(v111 + 8) = v90;
        *(v111 + 16) = 1;
        v112 = _swift_stdlib_bridgeErrorToNSError();
        *(v109 + 4) = v112;
        *v110 = v112;
        _os_log_impl(&dword_19A2DE000, v107, v108, "Failed to load messages backgrounds conditioner: %@", v109, 0xCu);
        sub_19A2F3FA0(v110, &qword_1EAF9FD28);
        MEMORY[0x19A902C50](v110, -1, -1);
        MEMORY[0x19A902C50](v109, -1, -1);
      }

      else
      {
      }

      v229 = 0;
      v232 = 0;
      v224 = 0;
      v225 = 0;
      v228 = 0;
    }

    v113 = *(v0 + 3808);
    v114 = *(v0 + 3784);
    v115 = *(v0 + 3744);
    v116 = *(v0 + 3680);
    (*(v0 + 3792))(9);
    v117 = sub_19A570E5C();
    v119 = v118;
    v113(v115, v116);
    v120 = [v114 defaultManager];
    v121 = sub_19A572CCC();
    LODWORD(v115) = [v120 fileExistsAtPath_];

    if (v115)
    {
      v122 = *(v0 + 3848);
      v215 = *(v0 + 3808);
      v217 = *(v0 + 3760);
      v218 = *(v0 + 3776);
      v123 = *(v0 + 3744);
      v213 = *(v0 + 3792);
      v208 = *(v0 + 3712);
      v209 = *(v0 + 3704);
      v124 = *(v0 + 3680);
      v125 = *(v0 + 3592);
      v126 = *(v0 + 3584);
      v251 = *(v0 + 3149);
      v210 = *(v0 + 3576);

      v213(9);
      v122(v208, v123, v124);
      v122(v209, v208, v124);
      swift_allocObject();
      v127 = v210;
      v128 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v209, v127, MEMORY[0x1E69E7CC0], "global_conditioning_producer_reference_image", 44, 2);
      v215(v208, v124);
      v215(v123, v124);
      sub_19A555FC4(v218, v217, type metadata accessor for AppleDiffusionUnet);
      v129 = (v125 + v126[6]);
      v130 = v126[11];
      v131 = (v125 + v126[10]);
      v219 = v126[5];
      sub_19A555FC4(v217, v125 + v219, type metadata accessor for AppleDiffusionUnet);
      *v129 = v239;
      v129[1] = v241;
      v129[2] = v243;
      v129[3] = v234;
      v132 = (v125 + v126[7]);
      *v132 = v248;
      v132[1] = v245;
      v132[2] = v237;
      v132[3] = v252;
      *(v125 + v126[8]) = v233;
      v133 = (v125 + v126[9]);
      *v133 = v128;
      v133[1] = 0xD000000000000013;
      v133[2] = 0x800000019A59C3C0;
      *v131 = v232;
      v131[1] = v224;
      v131[2] = v225;
      v131[3] = v228;
      v131[4] = v229;
      *(v125 + v130) = v251;
      v134 = v126[12];

      v238 = v125;
      sub_19A57235C();
      v135 = *(v217 + 208);
      v21 = v135 >> 62;
      if (v135 >> 62)
      {
        result = sub_19A573B4C();
      }

      else
      {
        result = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!result)
      {
        goto LABEL_55;
      }

      v250 = v135 & 0xC000000000000001;
      if ((v135 & 0xC000000000000001) != 0)
      {
        v137 = MEMORY[0x19A901520](0, v135);
      }

      else
      {
        if (!*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_115;
        }

        v137 = *(v135 + 32);
      }

      sub_19A52C5EC(v137 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, (v0 + 456));
      memcpy((v0 + 80), (v0 + 456), 0x178uLL);
      if (sub_19A4E6F10(v0 + 80) == 1)
      {

LABEL_55:
        v221 = v134;
        if (qword_1ED824D40 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v235, qword_1ED82BD48);
        v138 = sub_19A5723DC();
        v139 = sub_19A57355C();
        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          *v140 = 0;
          _os_log_impl(&dword_19A2DE000, v138, v139, "Unable to get unet user metadata", v140, 2u);
          MEMORY[0x19A902C50](v140, -1, -1);
        }

        v141 = *(v0 + 3576);

        sub_19A4E6F34();
        swift_allocError();
        *v142 = xmmword_19A577090;
        *(v142 + 16) = 5;
        swift_willThrow();

        v143 = *(v0 + 3776);
        v144 = *(v0 + 3760);
        v145 = *(v0 + 3656);
        v146 = *(v0 + 3648);
        sub_19A555F4C(*(v0 + 3640), _s18ModelConfigurationVMa);
        sub_19A555F4C(v146, _s18ModelConfigurationVMa);
        sub_19A555F4C(v145, _s18ModelConfigurationVMa);
        sub_19A555F4C(v143, type metadata accessor for AppleDiffusionUnet);
        sub_19A555F4C(v144, type metadata accessor for AppleDiffusionUnet);
        sub_19A555F4C(v238 + v219, type metadata accessor for AppleDiffusionUnet);
        sub_19A4E6F88(v239, v241, v243, v234);

        sub_19A50CF7C(v232);
        v147 = sub_19A57236C();
        (*(*(v147 - 8) + 8))(v238 + v221, v147);
        goto LABEL_62;
      }

      memcpy((v0 + 1192), (v0 + 80), 0x168uLL);
      memcpy((v0 + 832), (v0 + 80), 0x168uLL);
      if (sub_19A489468(v0 + 832) == 1)
      {
        v32 = 0;
        v212 = 0;
        v214 = 0;
        v211 = 0;
        goto LABEL_81;
      }

      if (*(v0 + 840) == 1 || (v154 = *(v0 + 848), v155 = *(v0 + 856), , !v155))
      {
        v214 = 0;
        v211 = 0;
        v156 = *(v0 + 1416);
        if (!v156)
        {
LABEL_80:
          v32 = 0;
          v212 = 0;
LABEL_81:
          v236 = sub_19A4E6FD0(&unk_1F0DB70B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C08);
          v159 = swift_allocObject();
          *(v159 + 16) = xmmword_19A57A9D0;
          v222 = 4;
          *(v159 + 32) = 4;
          *(v159 + 36) = 0x3ECCCCCD00000000;
          *(v159 + 44) = 5;
          *(v159 + 48) = 0x3ECCCCCD00000000;
          *(v159 + 56) = 6;
          *(v159 + 60) = 0x3ECCCCCD00000000;
          *(v159 + 68) = 7;
          *(v159 + 72) = 0x3ECCCCCD00000000;
          v216 = sub_19A4E70BC(v159);
          swift_setDeallocating();
          swift_deallocClassInstance();
          memcpy((v0 + 1552), (v0 + 1192), 0x168uLL);
          if (sub_19A489468(v0 + 1552) != 1)
          {
            v20 = v135;
            v160 = *(v0 + 1696);
            *(v0 + 3248) = *(v0 + 1680);
            *(v0 + 3264) = v160;
            *(v0 + 3280) = *(v0 + 1712);
            v161 = *(v0 + 1632);
            *(v0 + 3184) = *(v0 + 1616);
            *(v0 + 3200) = v161;
            v162 = *(v0 + 1664);
            *(v0 + 3216) = *(v0 + 1648);
            *(v0 + 3232) = v162;
            v163 = *(v0 + 1600);
            *v223 = *(v0 + 1584);
            *(v0 + 3168) = v163;
            *(v0 + 3293) = *(v0 + 1725);
            if (sub_19A4E7208(v223) != 1)
            {
              v165 = *(v0 + 3264);
              *(v0 + 3088) = *(v0 + 3248);
              *(v0 + 3104) = v165;
              *(v0 + 3120) = *(v0 + 3280);
              *(v0 + 3133) = *(v0 + 3293);
              v166 = *(v0 + 3200);
              *(v0 + 3024) = *(v0 + 3184);
              *(v0 + 3040) = v166;
              v167 = *(v0 + 3232);
              *(v0 + 3056) = *(v0 + 3216);
              *(v0 + 3072) = v167;
              v168 = *(v0 + 3168);
              *v220 = *v223;
              *(v0 + 3008) = v168;
              sub_19A33546C(v0 + 1584, v0 + 3312, &unk_1EAFA2C20);
              v169 = sub_19A4E7350(v220);
              v30 = v170;
              v171 = v169;
              sub_19A2F3FA0(v0 + 1584, &unk_1EAFA2C20);
              v172 = swift_isUniquelyReferenced_nonNull_native();
              v254[0] = v236;
              sub_19A4E4104(v171, sub_19A4E6E50, 0, v172, v254);
              v31 = v254[0];
              goto LABEL_87;
            }

            if (*(v0 + 1482))
            {
              goto LABEL_84;
            }

LABEL_90:
            v164 = *(v0 + 1456);
            v135 = v20;
            if (*(v0 + 1464))
            {
              v164 = 4;
            }

LABEL_92:
            v222 = v164;
          }

          v174 = *(v0 + 3840);
          v175 = *(v0 + 3832);
          v176 = *(v0 + 3664);
          sub_19A33546C(*(v0 + 3760) + *(*(v0 + 3752) + 24), v176, &unk_1EAFA2BF0);
          v177 = (*(v174 + 48))(v176, 1, v175);
          v178 = *(v0 + 3664);
          if (v177 == 1)
          {
            sub_19A2F3FA0(v178, &unk_1EAFA2BF0);
            v179 = 11;
            v180 = v135 & 0xFFFFFFFFFFFFFF8;
            if (v21)
            {
              goto LABEL_95;
            }
          }

          else
          {
            v179 = *v178;
            sub_19A555F4C(v178, type metadata accessor for ConcreteAdapter);
            v180 = v135 & 0xFFFFFFFFFFFFFF8;
            if (v21)
            {
LABEL_95:
              v181 = sub_19A573B4C();
              v246 = v179;
              if (v181)
              {
                goto LABEL_96;
              }

              goto LABEL_107;
            }
          }

          v181 = *(v180 + 16);
          v246 = v179;
          if (v181)
          {
LABEL_96:
            v253 = v135;
            v254[0] = MEMORY[0x1E69E7CC0];
            result = sub_19A4E432C(0, v181 & ~(v181 >> 63), 0);
            if ((v181 & 0x8000000000000000) == 0)
            {
              v182 = 0;
              v183 = v254[0];
              v184 = (*(v0 + 3688) + 32);
              v249 = (*(v0 + 3888) + 32) & ~*(v0 + 3888);
              do
              {
                v185 = *(v0 + 3848);
                v186 = *(v0 + 3696);
                v187 = *(v0 + 3680);
                if (v250)
                {
                  v188 = MEMORY[0x19A901520](v182, v253);
                  v185(v186, v188 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, v187);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v185(*(v0 + 3696), *(v253 + 8 * v182 + 32) + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL, *(v0 + 3680));
                }

                v254[0] = v183;
                v190 = *(v183 + 16);
                v189 = *(v183 + 24);
                if (v190 >= v189 >> 1)
                {
                  sub_19A4E432C(v189 > 1, v190 + 1, 1);
                  v183 = v254[0];
                }

                v191 = *(v0 + 3824);
                v192 = *(v0 + 3696);
                v193 = *(v0 + 3680);
                ++v182;
                *(v183 + 16) = v190 + 1;
                (*v184)(v183 + v249 + v191 * v190, v192, v193);
              }

              while (v181 != v182);
              v194 = *(v0 + 3776);
              v195 = *(v0 + 3656);
              v196 = *(v0 + 3648);
              v197 = *(v0 + 3640);
              v198 = *(v0 + 3576);

              sub_19A555F4C(v197, _s18ModelConfigurationVMa);
              sub_19A555F4C(v196, _s18ModelConfigurationVMa);
              sub_19A555F4C(v195, _s18ModelConfigurationVMa);
              sub_19A555F4C(v194, type metadata accessor for AppleDiffusionUnet);
              goto LABEL_108;
            }

LABEL_115:
            __break(1u);
            return result;
          }

LABEL_107:
          v199 = *(v0 + 3776);
          v200 = *(v0 + 3656);
          v201 = *(v0 + 3648);
          v202 = *(v0 + 3640);
          v203 = *(v0 + 3576);

          sub_19A555F4C(v202, _s18ModelConfigurationVMa);
          sub_19A555F4C(v201, _s18ModelConfigurationVMa);
          sub_19A555F4C(v200, _s18ModelConfigurationVMa);
          sub_19A555F4C(v199, type metadata accessor for AppleDiffusionUnet);
          v183 = MEMORY[0x1E69E7CC0];
LABEL_108:
          memcpy((v0 + 1912), (v0 + 1192), 0x168uLL);
          if (sub_19A489468(v0 + 1912) == 1)
          {
            sub_19A2F3FA0(v0 + 456, &unk_1EAFA2C10);
            v204 = 0;
          }

          else
          {
            memcpy((v0 + 2272), (v0 + 1192), 0x168uLL);
            sub_19A4895B4(v0 + 2272, v0 + 2632);
            sub_19A2F3FA0(v0 + 456, &unk_1EAFA2C10);
            v204 = *(v0 + 2144);

            sub_19A2F3FA0(v0 + 1192, &qword_1EAFA2510);
          }

          v205 = *(v0 + 3592);
          v206 = *(v0 + 3568);
          v207 = *(v0 + 3560);
          sub_19A555F4C(*(v0 + 3760), type metadata accessor for AppleDiffusionUnet);
          *v205 = v211 & 1;
          *(v205 + 1) = v214 & 1;
          *(v205 + 2) = v212 & 1;
          *(v205 + 3) = v246;
          *(v205 + 8) = v236;
          *(v205 + 16) = v216;
          *(v205 + 24) = v183;
          *(v205 + 32) = v222;
          *(v205 + 40) = v204;
          sub_19A55602C(v205, v207, type metadata accessor for AppleDiffusionPipeline);
          sub_19A555F4C(v206, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

          v153 = *(v0 + 8);
          goto LABEL_63;
        }

LABEL_75:
        *(v0 + 3536) = 1634889580;
        *(v0 + 3544) = 0xE400000000000000;
        v157 = v135;
        v158 = swift_task_alloc();
        *(v158 + 16) = v0 + 3536;

        v32 = 0;
        v212 = sub_19A374F10(sub_19A2F13CC, v158, v156);

        v135 = v157;

        goto LABEL_81;
      }

      if (v154 == 7168876 && v155 == 0xE300000000000000)
      {
        v211 = 1;
      }

      else
      {
        v211 = sub_19A573F1C();
        if (v154 == 0x776F6C662D6D636CLL && v155 == 0xE800000000000000)
        {
          v214 = 1;
LABEL_79:

          v156 = *(v0 + 1416);
          if (!v156)
          {
            goto LABEL_80;
          }

          goto LABEL_75;
        }
      }

      v214 = sub_19A573F1C();
      goto LABEL_79;
    }

    v100 = *(v0 + 3776);
    v148 = *(v0 + 3656);
    v149 = *(v0 + 3648);
    v150 = *(v0 + 3640);
    v151 = *(v0 + 3576);
    sub_19A4E6F34();
    swift_allocError();
    *v152 = v117;
    *(v152 + 8) = v119;
    *(v152 + 16) = 1;
    swift_willThrow();

    sub_19A4E6F88(v239, v241, v243, v234);
    sub_19A50CF7C(v232);

    sub_19A555F4C(v150, _s18ModelConfigurationVMa);
    sub_19A555F4C(v149, _s18ModelConfigurationVMa);
    v106 = v148;
  }

  else
  {
    v100 = *(v0 + 3776);
    v101 = *(v0 + 3656);
    v102 = *(v0 + 3648);
    v103 = *(v0 + 3640);
    v104 = *(v0 + 3576);
    sub_19A4E6F34();
    swift_allocError();
    *v105 = v76;
    *(v105 + 8) = v78;
    *(v105 + 16) = 0;
    swift_willThrow();

    sub_19A4E6F88(v239, v241, v243, v71);

    sub_19A555F4C(v103, _s18ModelConfigurationVMa);
    sub_19A555F4C(v102, _s18ModelConfigurationVMa);
    v106 = v101;
  }

  sub_19A555F4C(v106, _s18ModelConfigurationVMa);
  sub_19A555F4C(v100, type metadata accessor for AppleDiffusionUnet);
LABEL_62:
  sub_19A555F4C(*(v0 + 3568), type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

  v153 = *(v0 + 8);
LABEL_63:

  return v153();
}

uint64_t sub_19A54FDB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_19A57308C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t AppleDiffusionPipeline.init(resourcesAt:configuration:reduceMemory:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 96) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_19A570EAC();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A54FF8C, 0, 0);
}

uint64_t sub_19A54FF8C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  (*(*(v0 + 48) + 16))(v3, *(v0 + 24), *(v0 + 40));
  AppleDiffusionPipeline.ResourceURLs.init(resourcesAt:)(v3, v2);
  sub_19A555FC4(v2, v1, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
  v5 = v4;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_19A55008C;
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = *(v0 + 96);

  return AppleDiffusionPipeline.init(resources:configuration:reduceMemory:)(v9, v7, v8, v10);
}

uint64_t sub_19A55008C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_19A55026C;
  }

  else
  {
    v2 = sub_19A5501A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A5501A0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  (*(v2 + 8))(v4, v3);
  sub_19A555F4C(v1, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19A55026C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  (*(v2 + 8))(v4, v3);
  sub_19A555F4C(v1, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19A550338(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F98);
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 4 * v22);
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 4 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_19A550874(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F90);
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_19A550DD8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_19A573BCC();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_19A5740BC();
      sub_19A572E4C();
      result = sub_19A57410C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_19A551074(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA36A8);
  v36 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v37 = *(v21 + 8 * v20);
      v38 = v22[2];
      if ((v36 & 1) == 0)
      {
      }

      sub_19A5740BC();
      sub_19A572E4C();
      sub_19A572E4C();
      result = sub_19A57410C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v38;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A551340(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3690);
  v32 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_19A551670(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2ED0);
  v42 = a2;
  result = sub_19A573BCC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_19A5740BC();
      sub_19A572E4C();
      result = sub_19A57410C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_19A5519F8(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = sub_19A570EAC();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00]();
  v39 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E40);
  v37 = a2;
  result = sub_19A573BCC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v38 = (v5 + 32);
    v33[5] = 0x800000019A596560;
    v33[6] = 0x800000019A596540;
    v33[3] = 0x800000019A5965A0;
    v33[4] = 0x800000019A596580;
    v33[2] = 0x800000019A5965C0;
    v33[1] = 0x800000019A5965E0;
    v16 = result + 64;
    v36 = v5;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v5 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v37)
      {
        (*v38)(v39, v27, v40);
      }

      else
      {
        (*v35)(v39, v27, v40);
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = (*v38)(*(v9 + 56) + v26 * v20, v39, v40);
      ++*(v9 + 16);
      v5 = v36;
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_19A551F24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA36A0);
  v32 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_19A5740BC();
      MEMORY[0x19A901C40](v21);
      result = sub_19A57410C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A5521C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3698);
  v32 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_19A552530(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D30);
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 2 * v23);
      v33 = v25[1];
      v26 = *v25;
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 2 * v18);
      *v19 = v26;
      v19[1] = v33;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_19A552928(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF8);
  v30 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_19A552D18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E00);
  v41 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v40 = v5;
    while (v12)
    {
      v24 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v27 = v24 | (v8 << 6);
      v28 = *(v5 + 56);
      v29 = *(*(v5 + 48) + v27);
      if (v41)
      {
        v30 = (v28 + 360 * v27);
        v44 = v30[1];
        v45 = *v30;
        v31 = v30[9];
        v67 = v30[8];
        v68 = v31;
        v69[0] = v30[10];
        *(v69 + 13) = *(v30 + 173);
        v32 = v30[5];
        v63 = v30[4];
        v64 = v32;
        v33 = v30[7];
        v65 = v30[6];
        v66 = v33;
        v34 = v30[3];
        v61 = v30[2];
        v62 = v34;
        v46 = v30[13];
        v47 = v30[12];
        v48 = v30[14];
        v49 = v30[15];
        v51 = v30[17];
        v52 = v30[16];
        v50 = *(v30 + 144);
        v54 = *(v30 + 37);
        v53 = v30[19];
        v55 = v30[20];
        v56 = *(v30 + 84);
        v42 = *(v30 + 290);
        v43 = *(v30 + 340);
        v57 = *(v30 + 43);
        v58 = *(v30 + 44);
      }

      else
      {
        memcpy(__dst, (v28 + 360 * v27), 0x168uLL);
        v57 = *(&__dst[21] + 1);
        v58 = *&__dst[22];
        v56 = __dst[21];
        v55 = __dst[20];
        v54 = *(&__dst[18] + 1);
        v52 = __dst[16];
        v53 = __dst[19];
        v51 = __dst[17];
        v50 = __dst[18];
        v42 = BYTE2(__dst[18]);
        v43 = BYTE4(__dst[21]);
        v48 = __dst[14];
        v49 = __dst[15];
        v46 = __dst[13];
        v47 = __dst[12];
        v44 = __dst[1];
        v45 = __dst[0];
        sub_19A4895B4(__dst, v59);
        v67 = __dst[8];
        v68 = __dst[9];
        v69[0] = __dst[10];
        *(v69 + 13) = *(&__dst[10] + 13);
        v63 = __dst[4];
        v64 = __dst[5];
        v65 = __dst[6];
        v66 = __dst[7];
        v61 = __dst[2];
        v62 = __dst[3];
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v15) >> 6;
        while (++v17 != v36 || (v35 & 1) == 0)
        {
          v37 = v17 == v36;
          if (v17 == v36)
          {
            v17 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v17);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      LOBYTE(__dst[0]) = v42;
      v59[0] = v43;
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v29;
      v19 = *(v7 + 56) + 360 * v18;
      *v19 = v45;
      *(v19 + 16) = v44;
      v20 = v62;
      *(v19 + 32) = v61;
      *(v19 + 48) = v20;
      v21 = v66;
      *(v19 + 96) = v65;
      *(v19 + 112) = v21;
      v22 = v64;
      *(v19 + 64) = v63;
      *(v19 + 80) = v22;
      *(v19 + 173) = *(v69 + 13);
      v23 = v69[0];
      *(v19 + 144) = v68;
      *(v19 + 160) = v23;
      *(v19 + 128) = v67;
      *(v19 + 192) = v47;
      *(v19 + 208) = v46;
      *(v19 + 224) = v48;
      *(v19 + 240) = v49;
      *(v19 + 256) = v52;
      *(v19 + 272) = v51;
      *(v19 + 288) = v50;
      *(v19 + 290) = __dst[0];
      *(v19 + 296) = v54;
      *(v19 + 304) = v53;
      *(v19 + 320) = v55;
      *(v19 + 336) = v56;
      *(v19 + 340) = v59[0];
      *(v19 + 344) = v57;
      *(v19 + 352) = v58;
      ++*(v7 + 16);
      v5 = v40;
    }

    v25 = v8;
    while (1)
    {
      v8 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v26 = v9[v8];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v12 = (v26 - 1) & v26;
        goto LABEL_16;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_19A5532F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E10);
  v31 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_19A5536DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E30);
  v30 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_19A553B18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E20);
  v41 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v40 = v5;
    while (v12)
    {
      v24 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v27 = v24 | (v8 << 6);
      v28 = *(v5 + 56);
      v29 = *(*(v5 + 48) + v27);
      if (v41)
      {
        v30 = (v28 + 360 * v27);
        v44 = v30[1];
        v45 = *v30;
        v31 = v30[9];
        v67 = v30[8];
        v68 = v31;
        v69[0] = v30[10];
        *(v69 + 13) = *(v30 + 173);
        v32 = v30[5];
        v63 = v30[4];
        v64 = v32;
        v33 = v30[7];
        v65 = v30[6];
        v66 = v33;
        v34 = v30[3];
        v61 = v30[2];
        v62 = v34;
        v46 = v30[13];
        v47 = v30[12];
        v48 = v30[14];
        v49 = v30[15];
        v51 = v30[17];
        v52 = v30[16];
        v50 = *(v30 + 144);
        v54 = *(v30 + 37);
        v53 = v30[19];
        v55 = v30[20];
        v56 = *(v30 + 84);
        v42 = *(v30 + 290);
        v43 = *(v30 + 340);
        v57 = *(v30 + 43);
        v58 = *(v30 + 44);
      }

      else
      {
        memcpy(__dst, (v28 + 360 * v27), 0x168uLL);
        v57 = *(&__dst[21] + 1);
        v58 = *&__dst[22];
        v56 = __dst[21];
        v55 = __dst[20];
        v54 = *(&__dst[18] + 1);
        v52 = __dst[16];
        v53 = __dst[19];
        v51 = __dst[17];
        v50 = __dst[18];
        v42 = BYTE2(__dst[18]);
        v43 = BYTE4(__dst[21]);
        v48 = __dst[14];
        v49 = __dst[15];
        v46 = __dst[13];
        v47 = __dst[12];
        v44 = __dst[1];
        v45 = __dst[0];
        sub_19A4895B4(__dst, v59);
        v67 = __dst[8];
        v68 = __dst[9];
        v69[0] = __dst[10];
        *(v69 + 13) = *(&__dst[10] + 13);
        v63 = __dst[4];
        v64 = __dst[5];
        v65 = __dst[6];
        v66 = __dst[7];
        v61 = __dst[2];
        v62 = __dst[3];
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v15) >> 6;
        while (++v17 != v36 || (v35 & 1) == 0)
        {
          v37 = v17 == v36;
          if (v17 == v36)
          {
            v17 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v17);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      LOBYTE(__dst[0]) = v42;
      v59[0] = v43;
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v29;
      v19 = *(v7 + 56) + 360 * v18;
      *v19 = v45;
      *(v19 + 16) = v44;
      v20 = v62;
      *(v19 + 32) = v61;
      *(v19 + 48) = v20;
      v21 = v66;
      *(v19 + 96) = v65;
      *(v19 + 112) = v21;
      v22 = v64;
      *(v19 + 64) = v63;
      *(v19 + 80) = v22;
      *(v19 + 173) = *(v69 + 13);
      v23 = v69[0];
      *(v19 + 144) = v68;
      *(v19 + 160) = v23;
      *(v19 + 128) = v67;
      *(v19 + 192) = v47;
      *(v19 + 208) = v46;
      *(v19 + 224) = v48;
      *(v19 + 240) = v49;
      *(v19 + 256) = v52;
      *(v19 + 272) = v51;
      *(v19 + 288) = v50;
      *(v19 + 290) = __dst[0];
      *(v19 + 296) = v54;
      *(v19 + 304) = v53;
      *(v19 + 320) = v55;
      *(v19 + 336) = v56;
      *(v19 + 340) = v59[0];
      *(v19 + 344) = v57;
      *(v19 + 352) = v58;
      ++*(v7 + 16);
      v5 = v40;
    }

    v25 = v8;
    while (1)
    {
      v8 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v26 = v9[v8];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v12 = (v26 - 1) & v26;
        goto LABEL_16;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_19A55413C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E18);
  v32 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A55443C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2DE0);
  v31 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {

        v22 = v20;
      }

      sub_19A5740BC();
      sub_19A5740DC();
      if (v21)
      {
        sub_19A572E4C();
      }

      result = sub_19A57410C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_19A554700(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2D00);
  v36 = a2;
  result = sub_19A573BCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v37 = v22;
      v26 = *(&v22 + 1);
      if ((v36 & 1) == 0)
      {

        sub_19A2EA56C(v24);
      }

      sub_19A5740BC();
      sub_19A5740DC();
      if (v26)
      {
        sub_19A572E4C();
      }

      result = sub_19A57410C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v37;
      v17 = *(v7 + 56) + v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

void *sub_19A5549E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F98);
  v2 = *v0;
  v3 = sub_19A573BBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19A554B34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F90);
  v2 = *v0;
  v3 = sub_19A573BBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_19A554CA8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_19A573BBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_19A554E04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA36A8);
  v2 = *v0;
  v3 = sub_19A573BBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = (*(v4 + 48) + 32 * v17);
        *v24 = v20;
        v24[1] = v19;
        v24[2] = v21;
        v24[3] = v22;
        *(*(v4 + 56) + 8 * v17) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_19A554F90()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2ED0);
  v3 = *v0;
  v4 = sub_19A573BBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_19A555218()
{
  v1 = v0;
  v29 = sub_19A570EAC();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00]();
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E40);
  v3 = *v0;
  v4 = sub_19A573BBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_19A5554A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D30);
  v2 = *v0;
  v3 = sub_19A573BBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v19[1] = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 2 * v14);
      v18 = *v17;
      LOBYTE(v17) = v17[1];
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v19 = (*(v4 + 56) + 2 * v14);
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_19A555630()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E10);
  v2 = *v0;
  v3 = sub_19A573BBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19A5557B4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_19A573BBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; result = sub_19A4895B4(__dst, v19))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v17 = v14 | (v9 << 6);
      v18 = *(*(v3 + 48) + v17);
      memcpy(__dst, (*(v3 + 56) + 360 * v17), 0x168uLL);
      *(*(v5 + 48) + v17) = v18;
      memcpy((*(v5 + 56) + 360 * v17), __dst, 0x168uLL);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_19A55594C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_19A573BBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 56) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        v22 = (*(v5 + 56) + 16 * v18);
        *v22 = v21;
        v22[1] = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_19A555AA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2DE0);
  v2 = *v0;
  v3 = sub_19A573BBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19A555C0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2D00);
  v2 = *v0;
  v3 = sub_19A573BBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + v17;
        *v21 = v19;
        *(v21 + 8) = v20;

        result = sub_19A2EA56C(v19);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_19A555D94()
{
  result = qword_1EAFA3670;
  if (!qword_1EAFA3670)
  {
    sub_19A570EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3670);
  }

  return result;
}

const char *sub_19A555DEC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = "local_conditioning_producer_scribble";
    v6 = "local_conditioning_producer_messages_backgrounds";
    if (a1 != 8)
    {
      v6 = "global_conditioning_producer_reference_image";
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = "decoder";
    if (a1 != 5)
    {
      v7 = "decoder_alpha_emoji";
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = "noise_predictor";
    v2 = "noise_predictorChunk2";
    v3 = "clip_encoder";
    if (a1 != 3)
    {
      v3 = "encoder";
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = "noise_predictorChunk1";
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t _s13DiffusionBase05AppleA8PipelineV14ComponentModelO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A555F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A555FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A55602C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A556098()
{
  result = qword_1ED824DF8[0];
  if (!qword_1ED824DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED824DF8);
  }

  return result;
}

unint64_t sub_19A5560F0()
{
  result = qword_1EAFA3680;
  if (!qword_1EAFA3680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3680);
  }

  return result;
}

void sub_19A55618C()
{
  sub_19A48AE00();
  if (v0 <= 0x3F)
  {
    sub_19A570EAC();
    if (v1 <= 0x3F)
    {
      sub_19A556258();
      if (v2 <= 0x3F)
      {
        sub_19A5562A8();
        if (v3 <= 0x3F)
        {
          sub_19A556368();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_19A556258()
{
  result = qword_1ED823EA0;
  if (!qword_1ED823EA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED823EA0);
  }

  return result;
}

void sub_19A5562A8()
{
  if (!qword_1ED823F90)
  {
    sub_19A570EAC();
    sub_19A556314();
    v0 = sub_19A572B1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED823F90);
    }
  }
}

unint64_t sub_19A556314()
{
  result = qword_1ED824EA8[0];
  if (!qword_1ED824EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED824EA8);
  }

  return result;
}

void sub_19A556368()
{
  if (!qword_1ED823F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3688);
    v0 = sub_19A57312C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED823F38);
    }
  }
}

void sub_19A5563F4()
{
  sub_19A570EAC();
  if (v0 <= 0x3F)
  {
    sub_19A48AE00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t DPMSolverMultistepScheduler.__allocating_init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:timeStepSpacing:predictionType:)(int64_t a1, int64_t a2, char a3, unint64_t a4, char a5, float a6, float a7)
{
  v14 = swift_allocObject();
  DPMSolverMultistepScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:timeStepSpacing:predictionType:)(a1, a2, a3 & 1, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_19A55653C(unsigned __int8 a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  return sub_19A57410C();
}

uint64_t DPMSolverMultistepScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:timeStepSpacing:predictionType:)(int64_t a1, int64_t a2, char a3, unint64_t a4, char a5, float a6, float a7)
{
  v9 = v7;
  v11 = a2;
  *(v7 + 88) = xmmword_19A57B410;
  *(v7 + 106) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(v9 + 104) = 0;
  *(v9 + 112) = v12;
  *(v9 + 105) = a5;
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  if (a3)
  {
    v13 = fabsf(sqrtf(a6));
    if (a6 == -INFINITY)
    {
      v14 = INFINITY;
    }

    else
    {
      v14 = v13;
    }

    v15 = fabsf(sqrtf(a7));
    if (a7 == -INFINITY)
    {
      v16 = INFINITY;
    }

    else
    {
      v16 = v15;
    }

    v17 = sub_19A51B9CC(a2, v14, v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v9;
      v133[0] = v12;
      v20 = v17;
      sub_19A4E44CC(0, v18, 0);
      v21 = v20;
      v22 = v12;
      v23 = *(v12 + 16);
      v24 = 32;
      do
      {
        v8 = *(v21 + v24);
        v133[0] = v22;
        v25 = *(v22 + 24);
        if (v23 >= v25 >> 1)
        {
          sub_19A4E44CC((v25 > 1), v23 + 1, 1);
          v21 = v20;
          v22 = v133[0];
        }

        *(v22 + 16) = v23 + 1;
        *(v22 + 4 * v23 + 32) = v8 * v8;
        v24 += 4;
        ++v23;
        --v18;
      }

      while (v18);

      v9 = v19;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v22 = sub_19A51B9CC(a2, a6, a7);
  }

  *(v9 + 32) = v22;
  v26 = *(v22 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v28 = v9;
    v133[0] = MEMORY[0x1E69E7CC0];

    sub_19A4E44CC(0, v26, 0);
    v29 = v133[0];
    v30 = *(v133[0] + 16);
    v31 = 32;
    v8 = 1.0;
    do
    {
      v32 = *(v22 + v31);
      v133[0] = v29;
      v33 = *(v29 + 3);
      if (v30 >= v33 >> 1)
      {
        sub_19A4E44CC((v33 > 1), v30 + 1, 1);
        v29 = v133[0];
      }

      *(v29 + 2) = v30 + 1;
      *&v29[4 * v30 + 32] = 1.0 - v32;
      v31 += 4;
      ++v30;
      --v26;
    }

    while (v26);

    v9 = v28;
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  *(v9 + 40) = v29;
  v34 = *(v29 + 2);
  v35 = (v34 - 1);
  if (v34 != 1)
  {
    if (!v34)
    {
      goto LABEL_110;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_111;
    }

    while (1)
    {
      v36 = 0;
      while (v36 < *(v29 + 2))
      {
        *&v29[4 * v36 + 36] = *&v29[4 * v36 + 32] * *&v29[4 * v36 + 36];
        if (v35 == ++v36)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v29 = sub_19A4E52CC(v29);
    }
  }

LABEL_31:
  *(v9 + 48) = v29;
  if (a4)
  {
    v131 = v9;
    if (a4 == 1)
    {
      v37 = v11 - 1;
      if (!__OFSUB__(v11, 1))
      {
        v38 = a1 + 1;
        if (!__OFADD__(a1, 1))
        {
          if (a1 == -1)
          {
            __break(1u);
          }

          else
          {
            if (v11 == 0x8000000000000001 && a1 == -2)
            {
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            if ((a1 & 0x8000000000000000) == 0)
            {
              v133[0] = v27;
              v11 = v38 & ~(v38 >> 63);

              v35 = v133;
              sub_19A4E44CC(0, v11, 0);
              if ((v38 & 0x8000000000000000) == 0)
              {
                v27 = 0;
                v39 = 0;
                v40 = 0;
                v41 = v133[0];
                v8 = 1.0;
                v9 = v37 / v38;
                v42 = a1;
                while (1)
                {
                  v43 = v27 + 1;
                  if (__OFADD__(v27, 1))
                  {
                    goto LABEL_106;
                  }

                  if (v40)
                  {
                    goto LABEL_123;
                  }

                  if ((v39 * v9) >> 64 != (v39 * v9) >> 63)
                  {
                    goto LABEL_107;
                  }

                  v133[0] = v41;
                  a4 = *(v41 + 16);
                  v44 = *(v41 + 24);
                  v11 = a4 + 1;
                  if (a4 >= v44 >> 1)
                  {
                    v35 = v133;
                    sub_19A4E44CC((v44 > 1), a4 + 1, 1);
                    v42 = a1;
                    v41 = v133[0];
                  }

                  *(v41 + 16) = v11;
                  *(v41 + 32 + 4 * a4) = (v39 * v9) + 1.0;
                  v40 = v39 == v42;
                  if (v39 == v42)
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v45 = __OFADD__(v39++, 1);
                    if (v45)
                    {
                      goto LABEL_109;
                    }
                  }

                  ++v27;
                  if (v43 == v38)
                  {
                    v56 = sub_19A557634(v41, v41 + 32, 1, (2 * v11) | 1);
                    v9 = v131;
                    v131[7] = v56;
                    v133[0] = v131[6];
                    v57 = *(v133[0] + 16);
                    MEMORY[0x1EEE9AC00](v56);

                    v58 = v57;
                    v59 = 0;
                    v60 = sub_19A51D274(v58, sub_19A559164);

                    v131[8] = v60;
                    v62 = *(v131[6] + 16);
                    if (v62)
                    {
                      v63 = sub_19A5730DC();
                      *(v63 + 16) = v62;
                      memset_pattern16((v63 + 32), &unk_19A590FB0, 4 * v62);
                    }

                    else
                    {
                      v63 = MEMORY[0x1E69E7CC0];
                      v62 = *(MEMORY[0x1E69E7CC0] + 16);
                    }

                    v133[0] = v63;
                    MEMORY[0x1EEE9AC00](v61);

                    v111 = sub_19A51D274(v62, sub_19A558C84);

                    v133[0] = v111;
                    v110 = MEMORY[0x1EEE9AC00](*(v111 + 16));
                    goto LABEL_95;
                  }
                }
              }

              goto LABEL_120;
            }
          }

          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        goto LABEL_115;
      }

      __break(1u);
      goto LABEL_113;
    }

    v52 = *(v29 + 2);

    if (v52)
    {
      v54 = sub_19A5730DC();
      *(v54 + 16) = v52;
      memset_pattern16((v54 + 32), &unk_19A590FB0, 4 * v52);
      v55 = *(v9 + 48);
      v52 = *(v55 + 2);
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
      v55 = v29;
    }

    v133[0] = v55;
    MEMORY[0x1EEE9AC00](v53);
    swift_bridgeObjectRetain_n();
    sub_19A51D274(v52, sub_19A558B98);

    v75 = *(*(v9 + 48) + 16);
    if (v75)
    {
      v76 = sub_19A5730DC();
      *(v76 + 16) = v75;
      bzero((v76 + 32), 4 * v75);
    }

    v133[0] = v54;
    v133[1] = v55;
    v77 = *(v54 + 16);
    MEMORY[0x1EEE9AC00](v74);

    v78 = sub_19A51D274(v77, sub_19A558BB8);
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v133[0] = v78;
    v79 = MEMORY[0x1EEE9AC00](*(v78 + 16));
    v80 = sub_19A51D274(v79, sub_19A558BDC);
    v130 = 0;
    v81 = *(v80 + 16);
    v82 = MEMORY[0x1E69E7CC0];
    if (!v81)
    {
      goto LABEL_124;
    }

    v83 = v80;
    v133[0] = MEMORY[0x1E69E7CC0];
    sub_19A4E44CC(0, v81, 0);
    v84 = v133[0];
    v85 = (v83 + 32);
    v86 = *(v133[0] + 16);
    v87 = 32;
    do
    {
      v88 = logf(*(v83 + v87));
      v133[0] = v84;
      v89 = *(v84 + 24);
      if (v86 >= v89 >> 1)
      {
        v90 = v88;
        sub_19A4E44CC((v89 > 1), v86 + 1, 1);
        v88 = v90;
        v84 = v133[0];
      }

      *(v84 + 16) = v86 + 1;
      *(v84 + 4 * v86 + 32) = v88;
      v87 += 4;
      ++v86;
      --v81;
    }

    while (v81);
    v91 = *(v83 + 16);
    if (!v91)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v92 = *v85;
    v8 = v85[v91 - 1];
    v93 = sub_19A51B9CC(a1, 0.0, 1.0);
    v94 = powf(v8, 0.14286);
    v95 = *(v93 + 16);
    if (v95)
    {
      v8 = v94;
      v96 = powf(v92, 0.14286);
      v133[0] = v82;
      sub_19A4E44CC(0, v95, 0);
      v97 = v96 - v8;
      a4 = v133[0];
      v98 = (v93 + 32);
      v99 = *(v133[0] + 16);
      do
      {
        v100 = *v98;
        v133[0] = a4;
        v101 = *(a4 + 24);
        v102 = v99 + 1;
        if (v99 >= v101 >> 1)
        {
          sub_19A4E44CC((v101 > 1), v99 + 1, 1);
          a4 = v133[0];
        }

        v103 = powf(v8 + (v97 * v100), 7.0);
        *(a4 + 16) = v102;
        *(a4 + 4 * v99 + 32) = v103;
        ++v98;
        ++v99;
        --v95;
      }

      while (v95);
    }

    else
    {
      v102 = *(v82 + 16);
      if (!v102)
      {
        a4 = MEMORY[0x1E69E7CC0];

        v105 = a4;
        goto LABEL_97;
      }

      a4 = v82;
    }

    v133[0] = v82;

    sub_19A4E44CC(0, v102, 0);
    v104 = 32;
    v105 = v133[0];
    do
    {
      sub_19A557860(v84, *(a4 + v104));
      v133[0] = v105;
      v108 = *(v105 + 16);
      v107 = *(v105 + 24);
      if (v108 >= v107 >> 1)
      {
        v8 = v106;
        sub_19A4E44CC((v107 > 1), v108 + 1, 1);
        v106 = v8;
        v105 = v133[0];
      }

      *(v105 + 16) = v108 + 1;
      *(v105 + 4 * v108 + 32) = v106;
      v104 += 4;
      --v102;
    }

    while (v102);
LABEL_97:
    v9 = v131;
    v131[7] = v105;
    v113 = *(a4 + 16);
    if (!v113)
    {
LABEL_125:

      __break(1u);
      goto LABEL_126;
    }

    if (v113 <= *(a4 + 16))
    {
      v8 = *(a4 + 4 * v113 + 28);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_100:
        v115 = *(a4 + 16);
        v114 = *(a4 + 24);
        v116 = v115 + 1;
        if (v115 >= v114 >> 1)
        {
          a4 = sub_19A514B10((v114 > 1), v115 + 1, 1, a4);
          v116 = v115 + 1;
        }

        *(a4 + 16) = v116;
        *(a4 + 4 * v115 + 32) = v8;
        v133[0] = a4;
        v117 = MEMORY[0x1EEE9AC00](v116);
        v59 = v130;
        v133[0] = sub_19A51D274(v117, sub_19A558BF8);
        v118 = MEMORY[0x1EEE9AC00](*(v133[0] + 16));
        v119 = sub_19A51D274(v118, sub_19A558C14);

        v133[0] = v119;
        v120 = MEMORY[0x1EEE9AC00](*(v119 + 16));
        v121 = sub_19A51D274(v120, sub_19A559164);

        v133[0] = v121;
        v122 = MEMORY[0x1EEE9AC00](*(v121 + 16));
        v123 = sub_19A51D274(v122, sub_19A559180);

        *(v9 + 64) = v123;
        v133[0] = a4;
        v125 = *(a4 + 16);
        MEMORY[0x1EEE9AC00](v124);

        v112 = sub_19A51D274(v125, sub_19A558C34);

        *(v9 + 72) = v112;
        *(v9 + 104) = 1;
        goto LABEL_103;
      }

LABEL_117:
      a4 = sub_19A514B10(0, *(a4 + 16) + 1, 1, a4);
      goto LABEL_100;
    }

    goto LABEL_114;
  }

  v46 = *(v9 + 16);
  v45 = __OFSUB__(v46, 1);
  v47 = v46 - 1;
  if (v45)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (__OFADD__(a1, 1))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v8 = v47;

  v48 = sub_19A51B9CC(a1 + 1, 0.0, v8);
  v49 = *(v48 + 16);
  v50 = v49 != 0;
  if (v49 > 1)
  {
    v64 = v48;
    a4 = v49 - v50;
    v133[0] = v27;
    sub_19A4E44CC(0, (v49 - v50) & ~((v49 - v50) >> 63), 0);
    if ((a4 & 0x8000000000000000) == 0)
    {
      v35 = v133[0];
      v65 = 4 * v49 + 28;
      v66 = v64;
      while (a4)
      {
        v8 = *(v66 + v65);
        v133[0] = v35;
        v68 = *(v35 + 2);
        v67 = *(v35 + 3);
        v11 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          sub_19A4E44CC((v67 > 1), v68 + 1, 1);
          v66 = v64;
          v35 = v133[0];
        }

        *(v35 + 2) = v11;
        v35[v68 + 8] = roundf(v8);
        v65 -= 4;
        if (!--a4)
        {

          goto LABEL_67;
        }
      }

      goto LABEL_108;
    }

    goto LABEL_121;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_67:
  *(v9 + 56) = v35;
  v133[0] = *(v9 + 48);
  v69 = *(v133[0] + 16);
  MEMORY[0x1EEE9AC00](v51);

  v70 = v69;
  v59 = 0;
  v71 = sub_19A51D274(v70, sub_19A559164);

  *(v9 + 64) = v71;
  v73 = *(*(v9 + 48) + 16);
  if (v73)
  {
    v27 = sub_19A5730DC();
    *(v27 + 16) = v73;
    memset_pattern16((v27 + 32), &unk_19A590FB0, 4 * v73);
  }

  else
  {
    v73 = *(v27 + 16);
  }

  v133[0] = v27;
  MEMORY[0x1EEE9AC00](v72);

  v109 = sub_19A51D274(v73, sub_19A559198);

  v133[0] = v109;
  v110 = MEMORY[0x1EEE9AC00](*(v109 + 16));
LABEL_95:
  v112 = sub_19A51D274(v110, sub_19A559164);

  *(v9 + 72) = v112;
LABEL_103:
  v126 = *(v9 + 64);

  sub_19A519C18(v126, v112);
  if (!v59)
  {
    v128 = v127;

    *(v9 + 80) = v128;

    return v9;
  }

LABEL_126:

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_19A557634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v8 = a2;
  v4 = a3;
  v9 = a4;
  sub_19A573FFC();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v9 >> 1, v4))
  {
    goto LABEL_22;
  }

  if (v11 != (v9 >> 1) - v4)
  {
LABEL_23:
    swift_unknownObjectRelease();
    a3 = v4;
    a4 = v9;
    a2 = v8;
LABEL_2:
    sub_19A51CFEC(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v7 + 16);
  if (v12 >= 2)
  {
    a1 = v12 >> 1;
    v8 = v12 + 7;
    v9 = 8;
    do
    {
      if (v9 != v8)
      {
        v14 = *(v7 + 16);
        if (v9 - 8 >= v14)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v8 - 8 >= v14)
        {
          goto LABEL_21;
        }

        v15 = *(v7 + 4 * v9);
        v16 = *(v7 + 4 * v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_19A4E52CC(v7);
        }

        *(v7 + 4 * v9) = v16;
        *(v7 + 4 * v8) = v15;
      }

      --v8;
      ++v9;
      --a1;
    }

    while (a1);
  }

  return v7;
}

uint64_t sub_19A5577A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A4E52CC(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_19A557860(uint64_t a1, float a2)
{
  v3 = logf(a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_19A4E44CC(0, v4, 0);
    v5 = v19;
    v6 = (a1 + 32);
    v7 = *(v19 + 16);
    v8 = v4;
    do
    {
      v9 = *v6;
      v20 = v5;
      v10 = *(v5 + 24);
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        sub_19A4E44CC((v10 > 1), v7 + 1, 1);
        v5 = v20;
      }

      *(v5 + 16) = v11;
      *(v5 + 4 * v7 + 32) = v3 - v9;
      ++v6;
      ++v7;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  v12 = v11 - 2;
  v13 = -1;
  v14 = 32;
  do
  {
    v16 = v13 < v12 && *(v5 + v14) >= 0.0;
    v13 += v16;
    v14 += 4;
    --v11;
  }

  while (v11);

  v18 = v13 & ~(v13 >> 63);
  if (__OFADD__(v18, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v18 >= v4)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v18 + 1 >= v4)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_19A557A00(float a1)
{
  if (*(v1 + 104) != 1)
  {
    if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (a1 > -9.2234e18)
    {
      if (a1 < 9.2234e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    do
    {
      if (*(v5 + 4 * v4) == a1)
      {
        break;
      }

      ++v4;
    }

    while (v3 != v4);
  }
}

void sub_19A557A88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v66 - v13;
  v14 = *(a2 + 16);
  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v14 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(a1 + 16);
  if (v15 < 2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v75 = v15 - 2;
  v16 = a2 + 4 * v14;
  v17 = *(v16 + 28);
  v18 = *(v16 + 24);
  v19 = *(v12 + 80);
  v20 = *(v12 + 72);
  v21 = v5[10];
  sub_19A557A00(a5);
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v74 = a3;
  v23 = *(v21 + 16);
  if (v22 >= v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = v21 + 32;
  v25 = *(v24 + 4 * v22);
  sub_19A557A00(v17);
  if (v26 >= v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = *(v24 + 4 * v26);
  sub_19A557A00(v18);
  if (v28 >= v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = *(v24 + 4 * v28);
  v30 = v5[8];
  sub_19A557A00(a5);
  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= *(v30 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = *(v30 + 4 * v31 + 32);
  v33 = v5[9];
  sub_19A557A00(a5);
  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v73 = a4;
  v35 = *(v33 + 16);
  if (v34 >= v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v33 + 32;
  v37 = *(v33 + 32 + 4 * v34);
  sub_19A557A00(v17);
  if (v38 < v35)
  {
    *&v39 = v29;
    v40 = v25;
    v41 = (v19 + 32) & ~v19;
    v71 = v19;
    v42 = v20;
    v43 = a1 + v41 + v20 * v75;
    v44 = a1 + v41 + v20 * (v15 - 1);
    v75 = v44;
    v45 = *(v36 + 4 * v38);
    v46 = v40 - v27;
    *&v39 = (v27 - *&v39) / v46;
    v70 = v39;
    *&v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068);
    inited = swift_initStackObject();
    v48 = v12;
    v72 = v12;
    v49 = inited;
    v69 = xmmword_19A576E20;
    v50 = vdivq_f64(xmmword_19A5944C0, vdupq_lane_s64(v70, 0));
    *(inited + 16) = xmmword_19A576E20;
    *(inited + 32) = v50;
    *&v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
    v67 = 2 * v42;
    v66 = v41;
    v51 = swift_allocObject();
    *(v51 + 16) = v69;
    v52 = v51 + v41;
    v53 = *(v48 + 16);
    v53(v52, v44, v11);
    v53(v52 + v42, v43, v11);
    *&v69 = sub_19A51B91C();
    v54 = sub_19A5726CC();
    v55 = sub_19A57263C();
    MEMORY[0x1EEE9AC00](v55);
    *(&v66 - 4) = v51;
    *(&v66 - 3) = v49;
    *(&v66 - 2) = v54;
    sub_19A5725FC();
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    swift_setDeallocating();
    v56 = swift_initStackObject();
    v68 = xmmword_19A5792A0;
    *(v56 + 16) = xmmword_19A5792A0;
    *(v56 + 32) = v37 / v45;
    v57 = exp(-v46) + -1.0;
    *(v56 + 40) = -(v32 * v57);
    *(v56 + 48) = v57 * (v32 * -0.5);
    v58 = v67;
    v59 = v66;
    v60 = swift_allocObject();
    *(v60 + 16) = v68;
    v61 = v60 + v59;
    v53(v61, v74, v11);
    v53(v61 + v42, v75, v11);
    v62 = v61 + v58;
    v63 = v76;
    v53(v62, v76, v11);
    v64 = sub_19A5726CC();
    v65 = sub_19A57263C();
    MEMORY[0x1EEE9AC00](v65);
    *(&v66 - 4) = v60;
    *(&v66 - 3) = v56;
    *(&v66 - 2) = v64;
    sub_19A5725FC();
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    swift_setDeallocating();
    (*(v72 + 8))(v63, v11);
    return;
  }

LABEL_25:
  __break(1u);
}

void DPMSolverMultistepScheduler.step(output:timeStep:sample:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v6 = v5;
  v7 = v4;
  v77 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v79 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  *&v78 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - v14;
  v16 = v7[7];
  v17 = *(v16 + 16);
  v18 = v16 + 32;
  v75 = a3;
  v72 = v16;
  if (v17)
  {
    v19 = 0;
    v20 = v17;
    while (*(v18 + 4 * v19) != a4)
    {
      ++v19;
      if (!--v20)
      {
        goto LABEL_5;
      }
    }

    if (v20 == 1)
    {
      v21 = 0.0;
    }

    else
    {
      v63 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v63 >= v17)
      {
LABEL_55:
        __break(1u);
        return;
      }

      LODWORD(v20) = 0;
      v21 = *(v18 + 4 * v63);
    }
  }

  else
  {
LABEL_5:
    v19 = v17 - 1;
    v21 = 0.0;
    LODWORD(v20) = 1;
  }

  if (v19 == v17 - 2)
  {
    LODWORD(v20) = 1;
  }

  if (v17 < 0xF)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v7[12] < 1)
  {
    v22 = 1;
  }

  v76 = v22;
  v71 = sub_19A51B91C();
  v23 = sub_19A5726CC();
  sub_19A557A00(a4);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v25 = v7[8];
  if (v24 >= *(v25 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v26 = v7[9];
  if (v24 >= *(v26 + 16))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    a1 = sub_19A5147F8(0, a1[2] + 1, 1, a1);
    v7[14] = a1;
    goto LABEL_19;
  }

  v70 = v7[8];
  v67 = v25 + 32;
  v27 = *(v25 + 32 + 4 * v24);
  v69 = v26;
  v68 = v26 + 32;
  v28 = *(v26 + 32 + 4 * v24);
  v29 = sub_19A57263C();
  MEMORY[0x1EEE9AC00](v29);
  *(&v64 - 6) = v23;
  *(&v64 - 5) = a1;
  *(&v64 - 4) = v77;
  *(&v64 - 3) = v7;
  *(&v64 - 4) = v28;
  *(&v64 - 3) = v27;
  sub_19A5725FC();
  v73 = v5;
  swift_beginAccess();
  if (*(v7[14] + 16) == 2)
  {
    sub_19A558E88(0, 1);
  }

  v6 = v79;
  v30 = *(v79 + 16);
  v30(v78, v15, v11);
  a1 = v7[14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[14] = a1;
  v74 = v15;
  v66 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_19:
  v33 = a1[2];
  v32 = a1[3];
  if (v33 >= v32 >> 1)
  {
    a1 = sub_19A5147F8(v32 > 1, v33 + 1, 1, a1);
  }

  a1[2] = v33 + 1;
  v34 = *(v6 + 32);
  v65 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v35 = *(v6 + 72);
  v36 = a1 + v65 + v35 * v33;
  v37 = v11;
  v34(v36, v78, v11);
  v7[14] = a1;
  if (v76)
  {
    sub_19A557A00(v21);
    v39 = v38;
    sub_19A557A00(a4);
    if ((v39 & 0x8000000000000000) == 0)
    {
      v41 = v7[10];
      v42 = *(v41 + 16);
      if (v39 < v42)
      {
        if (v40 < v42)
        {
          if (v39 < *(v70 + 16))
          {
            v43 = *(v69 + 16);
            if (v39 < v43)
            {
              if (v40 < v43)
              {
                v44 = *(v67 + 4 * v39);
                v45 = *(v68 + 4 * v39);
                v46 = *(v68 + 4 * v40);
                v47 = *(v41 + 32 + 4 * v39) - *(v41 + 32 + 4 * v40);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068);
                inited = swift_initStackObject();
                v78 = xmmword_19A576E20;
                *(inited + 16) = xmmword_19A576E20;
                *(inited + 32) = v45 / v46;
                *(inited + 40) = -(v44 * (exp(-v47) + -1.0));
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
                v49 = v35;
                v50 = v65;
                v51 = swift_allocObject();
                *(v51 + 16) = v78;
                v52 = v51 + v50;
                v53 = v66;
                v66(v52, v77, v37);
                v54 = v52 + v49;
                v55 = v74;
                v53(v54, v74, v37);
                v56 = sub_19A5726CC();
                v57 = sub_19A57263C();
                MEMORY[0x1EEE9AC00](v57);
                *(&v64 - 4) = v51;
                *(&v64 - 3) = inited;
                *(&v64 - 2) = v56;
                sub_19A5725FC();
                swift_setDeallocating();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                swift_setDeallocating();
                (*(v79 + 8))(v55, v37);
                goto LABEL_33;
              }

              goto LABEL_53;
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_19A576E20;
  v59 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    goto LABEL_46;
  }

  if ((v59 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v59 >= *(v72 + 16))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v58 + 32) = *(v18 + 4 * v59);
  *(v58 + 36) = a4;
  v60 = v58;

  sub_19A557A88(v61, v60, v77, v75, v21);

  swift_setDeallocating();
  (*(v79 + 8))(v74, v11);
LABEL_33:
  v62 = v7[12];
  if (v62 <= 1)
  {
    v7[12] = v62 + 1;
  }
}

uint64_t DPMSolverMultistepScheduler.deinit()
{

  return v0;
}

uint64_t DPMSolverMultistepScheduler.__deallocating_deinit()
{
  DPMSolverMultistepScheduler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_19A558878(uint64_t result, vDSP_Length *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 8);
  if (*(a3 + 16) != v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 16) != v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(a5 + 16) != v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 16) != v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __E = *result;
  if (*result)
  {

    vDSP_vsbsbm((a3 + 32), 1, (a4 + 32), 1, (a5 + 32), 1, (a6 + 32), 1, __E, 1, v6);

    *a2 = v6;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_19A558994(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*(a1 + 16) == v3)
  {
    if (*(a2 + 16) == v3)
    {
      if (*a3)
      {
LABEL_8:
        JUMPOUT(0x19A902DF0);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_19A5589DC(void *a1, void *a2, uint64_t *a3, float a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v7 = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = MEMORY[0x19A902E00](v4 + 32, 1, &v7, *a1, 1);
  *a2 = *(v4 + 16);
  return result;
}

void *sub_19A558A84(void *result, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16) == result[1])
  {
    if (*result)
    {
      result = MEMORY[0x19A902E20](v3 + 32, 1, *result, 1);
      *a2 = *(v3 + 16);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_19A558AF0(uint64_t a1, void *a2, uint64_t *a3, float a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*(*a3 + 16) != v5)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  __A = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  vDSP_svdiv(&__A, (v4 + 32), 1, *a1, 1, v5);
  *a2 = *(v4 + 16);
}

unint64_t sub_19A558D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_19A558E88(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_19A5147F8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_19A558D34(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_19A558F4C()
{
  result = qword_1EAFA36B0;
  if (!qword_1EAFA36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA36B0);
  }

  return result;
}

unint64_t sub_19A558FA4()
{
  result = qword_1EAFA36B8;
  if (!qword_1EAFA36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA36B8);
  }

  return result;
}

uint64_t sub_19A5590DC(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2)
  {
    v3 = 0;
    v4 = *(v1 + 32);
    v5 = *(v1 + 48);
    v6 = *(v1 + 52);
    v7 = *(v1 + 56);
    v8 = *(*(v1 + 24) + 105);
    do
    {
      if (v8)
      {
        if (v8 == 1)
        {
          v9 = *(v4 + 4 * v3);
        }

        else
        {
          v9 = (v6 * *(result + 4 * v3)) - (v5 * *(v4 + 4 * v3));
        }
      }

      else
      {
        v9 = (*(result + 4 * v3) - (v5 * *(v4 + 4 * v3))) / v6;
      }

      *(*v7 + 4 * v3++) = v9;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t BPETokenizer.init(mergesAt:vocabularyAt:padToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v11 = sub_19A53F8DC();
  if (v5)
  {

    v12 = sub_19A570EAC();
    v13 = *(*(v12 - 8) + 8);
    v13(a2, v12);
    return (v13)(a1, v12);
  }

  else
  {
    v22 = a3;
    v23 = v11;
    v15 = sub_19A570ECC();
    v17 = v16;
    sub_19A5707EC();
    swift_allocObject();
    sub_19A5707DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA36C0);
    sub_19A55AD90();
    sub_19A5707BC();
    sub_19A33EFC4(v15, v17);

    v18 = sub_19A570EAC();
    v19 = *(*(v18 - 8) + 8);
    v19(a2, v18);
    v19(a1, v18);
    *&v25 = v23;
    *(&v25 + 1) = v33;
    *&v26 = v22;
    *(&v26 + 1) = a4;
    *&v27 = 0x6F74726174737C3CLL;
    *(&v27 + 1) = 0xEF3E7C7478657466;
    strcpy(&v28, "<|endoftext|>");
    HIWORD(v28) = -4864;
    strcpy(&v29, "<|endoftext|>");
    HIWORD(v29) = -4864;
    v30[0] = v23;
    v30[1] = v33;
    v30[2] = v22;
    v30[3] = a4;
    v30[4] = 0x6F74726174737C3CLL;
    v30[5] = 0xEF3E7C7478657466;
    strcpy(v31, "<|endoftext|>");
    v31[7] = -4864;
    strcpy(v32, "<|endoftext|>");
    v32[7] = -4864;
    sub_19A55AE14(&v25, v24);
    result = sub_19A55AE4C(v30);
    v20 = v28;
    a5[2] = v27;
    a5[3] = v20;
    a5[4] = v29;
    v21 = v26;
    *a5 = v25;
    a5[1] = v21;
  }

  return result;
}

uint64_t BPETokenizer.tokenize(input:minCount:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v9 = v4[4];
  v8 = v4[5];

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_19A31CE20(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_19A31CE20((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[16 * v13];
  *(v14 + 4) = v9;
  *(v14 + 5) = v8;
  v39 = v11;
  v15 = sub_19A559D4C(a1);
  sub_19A559994(v15);
  v17 = v4[6];
  v16 = v4[7];
  v18 = v39;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_19A31CE20(0, *(v39 + 2) + 1, 1, v39);
    v18 = result;
  }

  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
    result = sub_19A31CE20((v20 > 1), v21 + 1, 1, v18);
    v18 = result;
  }

  *(v18 + 16) = v22;
  v23 = v18 + 16 * v21;
  *(v23 + 32) = v17;
  *(v23 + 40) = v16;
  v40 = v18;
  if ((a3 & 1) == 0)
  {
    v24 = a2 - v22 < 0;
    v25 = a2 <= v22;
    v26 = a2 - v22;
    if (!v25)
    {
      if (v24)
      {
        __break(1u);
        return result;
      }

      v28 = v4[2];
      v27 = v4[3];

      sub_19A55B7CC(v26, v28, v27);

      v18 = v40;
      v22 = *(v40 + 16);
      if (!v22)
      {
        return v18;
      }
    }
  }

  sub_19A3225A0(0, v22, 0);
  v29 = v4[1];
  v30 = (v18 + 40);
  do
  {
    v31 = *v30;
    if (*(v29 + 16))
    {
      v32 = *(v30 - 1);

      v33 = sub_19A31F6BC(v32, v31);
      if (v34 & 1) != 0 || *(v29 + 16) && (v33 = sub_19A31F6BC(v4[8], v4[9]), (v35))
      {
        v36 = *(*(v29 + 56) + 8 * v33);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v36 = 0;
LABEL_19:

    v38 = *(v10 + 16);
    v37 = *(v10 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_19A3225A0((v37 > 1), v38 + 1, 1);
    }

    *(v10 + 16) = v38 + 1;
    *(v10 + 8 * v38 + 32) = v36;
    v30 += 2;
    --v22;
  }

  while (v22);

  return v18;
}

Swift::String __swiftcall BPETokenizer.decode(tokens:)(Swift::OpaquePointer tokens)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  sub_19A572BEC();
  sub_19A572F8C();
  sub_19A2F4450();
  sub_19A57382C();

  sub_19A57382C();

  v1 = sub_19A57382C();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

DiffusionBase::MockedTokenizer __swiftcall MockedTokenizer.init()()
{
  v0 = 0;
  v1 = 0;
  v2 = 0xE000000000000000;
  result.padToken._object = v2;
  result.padToken._countAndFlagsBits = v1;
  result.padId = v0;
  return result;
}

void sub_19A559880(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_19A514B10(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 4 * v15 + 32), (a2 + 4 * a3), 4 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_19A559994(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19A31CE20(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19A559A88@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = v7 + result;
  if (__OFADD__(v7, result))
  {
    goto LABEL_35;
  }

  v4 = a2;
  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v6 + 24) >> 1, v10 < v8))
  {
    if (v7 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v7;
    }

    result = sub_19A31D5B0(result, v11, 1, v6);
    v6 = result;
    v10 = *(result + 24) >> 1;
  }

  v12 = *(v6 + 16);
  a3 = v10 - v12;
  if (v10 != v12)
  {
    if (a3 >= 1)
    {
      v9 = v5;
      if (!v5)
      {
        goto LABEL_28;
      }

      v13 = (v6 + 8 * v12);
      v14 = &v13[2];
      v15 = v5 & ~(v5 >> 63);
      v16 = v10 + ~v12;
      if (v15 < v16)
      {
        v16 = v5 & ~(v5 >> 63);
      }

      if (v16 >= v5 - 1)
      {
        v16 = v5 - 1;
      }

      if (v16 > 3)
      {
        v19 = v16 + 1;
        v20 = v19 & 3;
        if ((v19 & 3) == 0)
        {
          v20 = 4;
        }

        v17 = v19 - v20;
        v18 = v17 + 1;
        v14 += v17;
        v21 = vdupq_n_s64(v4);
        v22 = v13 + 3;
        v23 = v17;
        do
        {
          v22[-1] = v21;
          *v22 = v21;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
      }

      else
      {
        v17 = 0;
        v18 = 1;
      }

      while (1)
      {
        if (v17 == v15)
        {
          goto LABEL_34;
        }

        v17 = v18;
        *v14 = v4;
        if (a3 == v18)
        {
          break;
        }

        ++v14;
        ++v18;
        if (v5 + 1 == v17 + 1)
        {
          v9 = v5;
          goto LABEL_28;
        }
      }

      v9 = a3;
      if (a3 >= v5)
      {
LABEL_28:
        if (v9 > 0)
        {
          v24 = *(v6 + 16);
          v25 = __OFADD__(v24, v9);
          v26 = v24 + v9;
          if (v25)
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            return result;
          }

          *(v6 + 16) = v26;
        }

        goto LABEL_31;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 > 0)
  {
    goto LABEL_50;
  }

  v9 = 0;
LABEL_31:
  if (v9 != a3)
  {
    goto LABEL_32;
  }

LABEL_36:
  if (a3 == v5)
  {
    goto LABEL_32;
  }

  if (a3 >= v5)
  {
    goto LABEL_54;
  }

  v27 = *(v6 + 16);
  v28 = a3 + 1;
  while (1)
  {
    v29 = *(v6 + 24);
    v30 = v29 >> 1;
    if ((v29 >> 1) < v27 + 1)
    {
      break;
    }

    if (v27 < v30)
    {
      goto LABEL_42;
    }

LABEL_39:
    *(v6 + 16) = v27;
  }

  v33 = v6;
  v34 = v28;
  v35 = v27;
  result = sub_19A31D5B0((v29 > 1), v27 + 1, 1, v33);
  v27 = v35;
  v28 = v34;
  v6 = result;
  v30 = *(result + 24) >> 1;
  if (v35 >= v30)
  {
    goto LABEL_39;
  }

LABEL_42:
  v31 = v28 + v30 - v27;
  v9 = v27 + 4;
  v32 = v28;
  while (1)
  {
    *(v6 + 8 * v9) = v4;
    if (v5 == v32)
    {
      break;
    }

    if (v28 < 0 || v32 >= v5)
    {
      goto LABEL_53;
    }

    ++v32;
    if (++v9 - v30 == 4)
    {
      v27 = v30;
      v28 = v31;
      goto LABEL_39;
    }
  }

LABEL_51:
  *(v6 + 16) = v9 - 3;
LABEL_32:
  *v3 = v6;
  return result;
}

void __swiftcall BPETokenizer.init(merges:vocabulary:padToken:)(DiffusionBase::BPETokenizer *__return_ptr retstr, Swift::OpaquePointer merges, Swift::OpaquePointer vocabulary, Swift::String padToken)
{
  retstr->merges = merges;
  retstr->vocabulary = vocabulary;
  retstr->padToken = padToken;
  retstr->startToken._countAndFlagsBits = 0x6F74726174737C3CLL;
  retstr->startToken._object = 0xEF3E7C7478657466;
  strcpy(&retstr->endToken, "<|endoftext|>");
  HIWORD(retstr->endToken._object) = -4864;
  strcpy(&retstr->unknownToken, "<|endoftext|>");
  HIWORD(retstr->unknownToken._object) = -4864;
}

unint64_t sub_19A559D4C(void *a1)
{
  v2 = sub_19A57093C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_19A3687E0();
  v24 = v6;
  sub_19A5708CC();
  sub_19A2F4450();
  sub_19A57380C();
  (*(v3 + 8))(v5, v2);

  v7 = sub_19A572DCC();
  v9 = v8;

  v23 = 32;
  v24 = 0xE100000000000000;
  v22 = &v23;
  result = sub_19A33C9C8(0x7FFFFFFFFFFFFFFFLL, 1, sub_19A33E48C, v21, v7, v9, 0x20uLL);
  v11 = result;
  v12 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (result + 56);
    while (v14 < *(v11 + 16))
    {
      ++v14;
      v16 = *(v15 - 1);
      v17 = *v15;
      v19 = *(v15 - 3);
      v18 = *(v15 - 2);

      v20 = sub_19A55A0B0(v19, v18, v16, v17);

      result = sub_19A559994(v20);
      v15 += 4;
      if (v13 == v14)
      {
        v12 = v23;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return v12;
  }

  return result;
}

Swift::Int_optional __swiftcall BPETokenizer.tokenID(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if (*(v2 + 16) && (v3 = sub_19A31F6BC(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  result.value = v6;
  result.is_nil = v5;
  return result;
}

Swift::String_optional __swiftcall BPETokenizer.token(id:)(Swift::Int id)
{
  v2 = 0;
  v3 = *(v1 + 8);
  v17 = v3;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    if (*(*(v3 + 56) + 8 * v10) == id)
    {
      v11 = (*(v3 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];

LABEL_13:
      sub_19A55BA28(&v17, &v16);

      id = v13;
      v14 = v12;
      goto LABEL_15;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_13;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_15:
  result.value._object = v14;
  result.value._countAndFlagsBits = id;
  return result;
}

uint64_t sub_19A55A0B0(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v8 = sub_19A5737BC();
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v8;
    v53 = MEMORY[0x1E69E7CC0];
    v11 = &v53;
    sub_19A322580(0, v8 & ~(v8 >> 63), 0);
    if (v10 < 0)
    {
      goto LABEL_44;
    }

    v9 = v53;
    do
    {
      v12 = sub_19A5737CC();
      v53 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        v51 = v12;
        v17 = v13;
        sub_19A322580((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v51;
        v9 = v53;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      sub_19A57379C();
      --v10;
    }

    while (v10);
  }

  v5 = v9[2];
  if (!v5)
  {
    goto LABEL_11;
  }

  a4 = v5 - 1;
  v18 = &v9[2 * v5 - 2];
  v19 = v18[5];
  v53 = v18[4];
  v54 = v19;
  swift_bridgeObjectRetain_n();
  v20 = v9;
  MEMORY[0x19A900A50](1047998268, 0xE400000000000000);

  v4 = v53;
  v11 = v54;
  a3 = v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_45;
  }

  while (v5 <= *(a3 + 16))
  {
    v22 = a3 + 16 * a4;
    *(v22 + 32) = v4;
    *(v22 + 40) = v11;

    v9 = a3;
LABEL_11:
    v23 = 0;
LABEL_13:
    v45 = v9;
    v11 = sub_19A55AE7C(v9);
    v4 = v47;
    sub_19A55AE14(v47, &v53);

    v26 = sub_19A55B0FC(v25, v47);
    sub_19A55AE4C(v47);
    if (!*(v26 + 16))
    {

      return v45;
    }

    v46 = v26 + 56;
    v27 = 1 << *(v26 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v26 + 56);
    v44 = v23;
    if (v29)
    {
      v30 = 0;
      v31 = __clz(__rbit64(v29));
      v5 = (v29 - 1) & v29;
      a4 = (v27 + 63) >> 6;
LABEL_23:
      v34 = (*(v26 + 48) + 32 * v31);
      v4 = v34[3];
      v48 = v34[2];
      v49 = *v34;
      v52 = v34[1];

      v50 = v4;

LABEL_24:
      v11 = v30;
      while (1)
      {

        if (!v5)
        {
          break;
        }

        v30 = v11;
LABEL_30:
        v11 = *v47;
        if (!*(*v47 + 16))
        {
          goto LABEL_40;
        }

        a3 = v26;
        v35 = (*(v26 + 48) + ((v30 << 11) | (32 * __clz(__rbit64(v5)))));
        v36 = *v35;
        v37 = v35[1];
        v39 = v35[2];
        v38 = v35[3];

        v40 = sub_19A4F394C(v36, v37, v39, v38);
        if ((v41 & 1) == 0)
        {
          goto LABEL_41;
        }

        if (!v11[2])
        {
          goto LABEL_42;
        }

        v4 = *(v11[7] + 8 * v40);
        v42 = sub_19A4F394C(v49, v52, v48, v50);
        if ((v43 & 1) == 0)
        {
          goto LABEL_43;
        }

        v5 &= v5 - 1;
        if (v4 < *(v11[7] + 8 * v42))
        {

          v48 = v39;
          v49 = v36;
          v50 = v38;
          v52 = v37;
          v26 = a3;
          goto LABEL_24;
        }

        v11 = v30;
        v26 = a3;
      }

      while (1)
      {
        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v30 >= a4)
        {

          v5 = v50;
          v24 = sub_19A55B4C0(v45, v49, v52, v48, v50);

          v9 = v24;
          v23 = v44;
          goto LABEL_13;
        }

        v5 = *(v46 + 8 * v30);
        v11 = (v11 + 1);
        if (v5)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    else
    {
      v32 = 0;
      a4 = (v27 + 63) >> 6;
      while (a4 - 1 != v29)
      {
        v30 = v29 + 1;
        v33 = *(v26 + 64 + 8 * v29);
        v32 -= 64;
        ++v29;
        if (v33)
        {
          v5 = (v33 - 1) & v33;
          v31 = __clz(__rbit64(v33)) - v32;
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_19A4E52F4(a3);
    a3 = result;
  }

  __break(1u);
  return result;
}

uint64_t static BPETokenizer.TokenPair.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_19A573F1C(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_19A573F1C();
    }
  }

  return result;
}

uint64_t BPETokenizer.TokenPair.hash(into:)()
{
  sub_19A572E4C();

  return sub_19A572E4C();
}

uint64_t BPETokenizer.TokenPair.hashValue.getter()
{
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  return sub_19A57410C();
}

uint64_t sub_19A55A6BC()
{
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  return sub_19A57410C();
}

uint64_t sub_19A55A724()
{
  sub_19A572E4C();

  return sub_19A572E4C();
}

uint64_t sub_19A55A774()
{
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A572E4C();
  return sub_19A57410C();
}

uint64_t sub_19A55A7D8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_19A573F1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_19A573F1C();
    }
  }

  return result;
}

uint64_t MockedTokenizer.tokenize(input:minCount:)(void *a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v11 = sub_19A4E8368(&unk_1F0DB66C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA36D0);
  swift_arrayDestroy();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3687E0();
  v12 = sub_19A572DCC();
  v14 = v13;

  if (!*(v11 + 16))
  {

    goto LABEL_9;
  }

  v15 = sub_19A31F6BC(v12, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_9:

    sub_19A55BA98();
    swift_allocError();
    *v23 = 0xD000000000000047;
    v23[1] = 0x800000019A59DB10;
    return swift_willThrow();
  }

  v18 = *(*(v11 + 56) + 8 * v15);

  sub_19A470780(v18);
  v19 = v26;
  if (a3)
  {
    goto LABEL_7;
  }

  v20 = *(v26 + 16);
  result = a2 - v20;
  if (a2 <= v20)
  {
    goto LABEL_7;
  }

  if (a2 - v20 >= 0)
  {
    sub_19A559A88(result, a4, v20);
    v19 = v26;
LABEL_7:
    v22 = *(v19 + 16);

    sub_19A55B7CC(v22, a5, a6);

    return v25;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall MockedTokenizer.decode(tokens:)(Swift::OpaquePointer tokens)
{
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void *sub_19A55AA8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_19A55AE14(a4, &v9);
    v8 = sub_19A55AF74(v7, a2, a3, a4);

    sub_19A55AE4C(a4);
    sub_19A55AE4C(a4);
    return v8;
  }

  return result;
}

uint64_t sub_19A55AB38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E68);
  result = sub_19A57391C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_19A5740BC();

    sub_19A572E4C();
    sub_19A572E4C();
    result = sub_19A57410C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 32 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v19;
    v29[3] = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v32 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_19A55AD90()
{
  result = qword_1EAFA36C8;
  if (!qword_1EAFA36C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA36C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA36C8);
  }

  return result;
}

uint64_t sub_19A55AE7C(void *a1)
{
  v3 = a1[2];
  if (v3 < 2)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v15 = v1;
  v16 = v2;
  v5 = v3 - 1;
  v6 = sub_19A55BC3C();
  v14 = MEMORY[0x19A900F10](v5, &type metadata for BPETokenizer.TokenPair, v6);
  v8 = a1[4];
  v7 = a1[5];

  v9 = a1 + 7;
  do
  {
    v10 = v7;
    v11 = *(v9 - 1);
    v7 = *v9;
    swift_bridgeObjectRetain_n();
    sub_19A4E56F8(&v13, v8, v10, v11, v7);

    v9 += 2;
    v8 = v11;
    --v5;
  }

  while (v5);

  return v14;
}

uint64_t sub_19A55AF74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    if (*(*a4 + 16))
    {
      v14 = (*(a3 + 48) + 32 * v13);
      v15 = v14[2];
      v16 = v14[3];
      v17 = *v14;
      v18 = v14[1];

      sub_19A4F394C(v17, v18, v15, v16);
      LOBYTE(v17) = v19;

      if (v17)
      {
        *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_16:

          return sub_19A55AB38(v22, a2, v23, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A55B0FC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  for (i = sub_19A55AE14(v31, v32); ; i = )
  {
    v27[0] = v27;
    MEMORY[0x1EEE9AC00](i);
    v28 = v27 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v5);
    v29 = 0;
    v30 = v2;
    v7 = 0;
    v4 = v2 + 56;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = v12 | (v7 << 6);
      v5 = *v31;
      if (*(*v31 + 16))
      {
        v16 = (*(v2 + 48) + 32 * v15);
        v17 = v16[2];
        v18 = v16[3];
        v19 = *v16;
        v20 = v16[1];

        sub_19A4F394C(v19, v20, v17, v18);
        LOBYTE(v19) = v21;
        v2 = v30;

        if (v19)
        {
          *&v28[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          if (__OFADD__(v29++, 1))
          {
            __break(1u);
LABEL_18:
            v23 = sub_19A55AB38(v28, v27[1], v29, v2);
            goto LABEL_19;
          }
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(v4 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    sub_19A55AE14(v31, v32);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v31;
  sub_19A55AE14(v31, v32);
  v23 = sub_19A55AA8C(v25, v4, v2, v26);

  MEMORY[0x19A902C50](v25, -1, -1);
LABEL_19:
  sub_19A55AE4C(v31);
  return v23;
}

void sub_19A55B3C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_19A31CE20(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = *(v7 + 2);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 2) = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_19A55B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_19A31CE20(0, v5 - 1, 0, MEMORY[0x1E69E7CC0]);
  v11 = 0;
  v33 = result;
  v27 = (2 * v5) | 1;
  v28 = a5;
  v32 = a1;
  v30 = a1 + 56;
  while (1)
  {
    if (v5 < v11)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    if (v11 < 0)
    {
      goto LABEL_36;
    }

    if (v11 == v5)
    {
      break;
    }

    v12 = 0;
    v13 = (v30 + 16 * v11);
    v14 = v5;
    v15 = (2 * v11) | 1;
    v16 = v32;
    while (1)
    {
      v17 = *(v13 - 3) == a2 && *(v13 - 2) == a3;
      if (v17 || (sub_19A573F1C() & 1) != 0)
      {
        break;
      }

      --v12;
      v13 += 2;
      v15 += 2;
      if (v11 == --v14)
      {
        v5 = v11;
        goto LABEL_32;
      }
    }

    swift_bridgeObjectRetain_n();

    sub_19A55B3C0(v32, v32 + 32, v11, v15);

    if (v11 >= v5 - 1)
    {
      goto LABEL_24;
    }

    if (v11 - v12 + 1 >= v5)
    {
      goto LABEL_37;
    }

    if (*(v13 - 1) == a4 && *v13 == a5 || (sub_19A573F1C() & 1) != 0)
    {

      MEMORY[0x19A900A50](a4, a5);
      v19 = a2;
      v18 = a3;
      v20 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_19A31CE20(0, *(v33 + 16) + 1, 1, v33);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      v29 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v20 = sub_19A31CE20((v21 > 1), v22 + 1, 1, v20);
      }

      v23 = 2;
    }

    else
    {
LABEL_24:
      v20 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_19A31CE20(0, *(v33 + 16) + 1, 1, v33);
      }

      v22 = *(v20 + 2);
      v24 = *(v20 + 3);
      v29 = v22 + 1;
      if (v22 >= v24 >> 1)
      {
        v20 = sub_19A31CE20((v24 > 1), v22 + 1, 1, v20);
      }

      v19 = a2;
      v18 = a3;
      v23 = 1;
    }

    *(v20 + 2) = v29;
    v25 = &v20[16 * v22];
    *(v25 + 4) = v19;
    *(v25 + 5) = v18;
    v33 = v20;
    v11 = v23 + v11 - v12;
    a5 = v28;
    if (v11 >= v5)
    {
      return v20;
    }
  }

  v16 = v32;
LABEL_32:

  sub_19A55B3C0(v26, v16 + 32, v5, v27);

  return v33;
}

uint64_t sub_19A55B7CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v10 = *(*v3 + 16);
  v11 = v10 + result;
  if (__OFADD__(v10, result))
  {
    goto LABEL_26;
  }

  v4 = a3;
  v5 = a2;
  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v12 = *(v9 + 24) >> 1, v12 < v11))
  {
    if (v10 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    result = sub_19A31CE20(result, v13, 1, v9);
    v9 = result;
    v12 = *(result + 24) >> 1;
  }

  v14 = *(v9 + 16);
  v6 = v12 - v14;
  if (v12 != v14)
  {
    if (v6 >= 1)
    {
      v15 = v7;
      if (!v7)
      {
        goto LABEL_19;
      }

      v33 = v3;
      v15 = v12 - v14;
      v16 = v7;
      v7 &= ~(v7 >> 63);
      v17 = (v9 + 16 * v14 + 32);
      v8 = ~v14 + v12;
      v3 = v16;
      while (1)
      {
        if (!v7)
        {
          goto LABEL_25;
        }

        *v17 = v5;
        v17[1] = v4;

        if (!v8)
        {
          break;
        }

        v17 += 2;
        --v7;
        --v8;
        if (!--v16)
        {
          v7 = v3;
          v15 = v3;
          v3 = v33;
          goto LABEL_19;
        }
      }

      v7 = v3;
      v18 = v6 < v3;
      v3 = v33;
      if (!v18)
      {
LABEL_19:
        if (v15 > 0)
        {
          v19 = *(v9 + 16);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            return result;
          }

          *(v9 + 16) = v21;
        }

        goto LABEL_22;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 > 0)
  {
    goto LABEL_41;
  }

  v15 = 0;
LABEL_22:
  if (v15 != v6)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v6 == v7)
  {
    goto LABEL_23;
  }

  if (v6 >= v7)
  {
    goto LABEL_45;
  }

  v22 = *(v9 + 16);
  v23 = v6 + 1;

  while (1)
  {
    v24 = *(v9 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v22 + 1)
    {
      break;
    }

    v26 = v22 - v25;
    if (v22 < v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    *(v9 + 16) = v22;
  }

  result = sub_19A31CE20((v24 > 1), v22 + 1, 1, v9);
  v9 = result;
  v25 = *(result + 24) >> 1;
  v26 = v22 - v25;
  if (v22 >= v25)
  {
    goto LABEL_30;
  }

LABEL_33:
  v8 = 0;
  v31 = v23 + v25 - v22;
  v32 = v25;
  v27 = v7;
  v28 = v22;
  v29 = v7 - v23;
  v33 = v28;
  v30 = (v9 + 16 * v28 + 40);
  while (1)
  {
    *(v30 - 1) = v5;
    *v30 = v4;
    if (v29 == v8)
    {
      break;
    }

    if (v23 < 0 || v23 + v8 >= v27)
    {
      goto LABEL_44;
    }

    ++v8;
    v30 += 2;
    if (!(v26 + v8))
    {
      v23 = v31;
      v22 = v32;
      v7 = v27;
      goto LABEL_30;
    }
  }

LABEL_42:
  *(v9 + 16) = v33 + v8 + 1;
LABEL_23:
  *v3 = v9;
  return result;
}

uint64_t sub_19A55BA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA36C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A55BA98()
{
  result = qword_1EAFA36D8;
  if (!qword_1EAFA36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA36D8);
  }

  return result;
}

unint64_t sub_19A55BAF0()
{
  result = qword_1EAFA36E0;
  if (!qword_1EAFA36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA36E0);
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

uint64_t sub_19A55BB60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_19A55BBA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A55BC3C()
{
  result = qword_1EAFA36E8;
  if (!qword_1EAFA36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA36E8);
  }

  return result;
}

unint64_t sub_19A55BC94()
{
  result = qword_1EAFA36F0;
  if (!qword_1EAFA36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA36F0);
  }

  return result;
}

uint64_t sub_19A55BCE8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_19A55BD00(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_19A55BD28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = sub_19A572CFC();
  *(inited + 40) = v1;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = sub_19A572CFC();
  *(inited + 88) = v2;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3700);
  *(inited + 96) = MEMORY[0x1E69E7CC8];
  v3 = sub_19A4E7B3C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F68);
  result = swift_arrayDestroy();
  qword_1EAFCA318 = v3;
  return result;
}

uint64_t sub_19A55BE28(uint64_t a1, int32x2_t a2, int32x2_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, const vImage_Buffer *a10)
{
  v47 = *MEMORY[0x1E69E9840];
  if ((a5 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a6 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a6)
  {
    v12 = 4 * a5;
    blue.data = MEMORY[0x1E69E7CC0];
    sub_19A4E460C(0, a6, 0);
    v14 = a6;
    v13 = a8;
    v15 = a9;
    v16 = 0;
    data = blue.data;
    while (1)
    {
      if (!a1)
      {
        goto LABEL_32;
      }

      if ((v16 * a7) >> 64 != (v16 * a7) >> 63)
      {
        break;
      }

      if (((a9 | a8) & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      blue.data = data;
      v19 = data[2];
      v18 = data[3];
      if (v19 >= v18 >> 1)
      {
        sub_19A4E460C((v18 > 1), v19 + 1, 1);
        v14 = a6;
        v13 = a8;
        v15 = a9;
        data = blue.data;
      }

      data[2] = v19 + 1;
      v20 = &data[4 * v19];
      v20[4] = a1 + 4 * v16 * a7;
      v20[5] = v13;
      ++v16;
      v20[6] = v15;
      v20[7] = v12;
      if (v14 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  data = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_13:
  v22 = *(data + 3);
  v21 = (data + 4);
  *&blue.data = *(data + 2);
  *&blue.width = v22;
  v23 = sub_19A5730DC();
  *(v23 + 16) = 4;
  *(v23 + 32) = vdupq_lane_s32(a3, 0);
  v24 = sub_19A5730DC();
  v24[1].i64[0] = 4;
  v24[2] = vdupq_lane_s32(a2, 0);
  i32 = v24[2].i32;
  v26 = data[2];
  if (v26 == 3)
  {
    if (*(v23 + 16) < 4uLL)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v27 = 0;
    *(v23 + 44) = 1065353216;
    v24[2].i32[3] = 1065353216;
  }

  else
  {
    v27 = 1;
  }

  if (v27 >= v26)
  {
    goto LABEL_28;
  }

  v28 = &v21[32 * v27];
  v29 = *(v28 + 1);
  *&green.data = *v28;
  *&green.width = v29;
  if (v27 + 1 >= v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = &v21[32 * v27 + 32];
  v31 = *(v30 + 1);
  *&red.data = *v30;
  *&red.width = v31;
  v32 = v27 | 2;
  if (v32 >= v26)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v33 = &v21[32 * v32];
  v40 = *(v33 + 1);
  v42 = *v33;

  *&alpha.data = v42;
  *&alpha.width = v40;
  vImageConvert_PlanarFToARGB8888(&alpha, &red, &green, &blue, a10, (v23 + 32), i32, 0);

  if (v26 == 4)
  {
    vImagePremultiplyData_RGBA8888(a10, a10, 0);
  }
}

CVPixelBufferRef sub_19A55C0FC(OSType a1, double a2, double a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = a1;
  v4 = a2;
  v5 = a3;
  if (qword_1EAFA2BD0 != -1)
  {
LABEL_17:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E80);
  v6 = sub_19A572ADC();
  v7 = CVPixelBufferCreate(0, v4, v5, v3, v6, v11);

  v8 = v11[0];
  if (v7 || !v11[0])
  {
    sub_19A55BC94();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    swift_willThrow();
  }

  return v8;
}

__CVBuffer *sub_19A55C2D4(void *a1)
{
  v5 = v1;
  v6 = a1;
  v7 = [a1 shape];
  sub_19A2F1600(0, &qword_1ED823EA8);
  v8 = sub_19A57308C();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x19A901520](1, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_32;
    }

    v9 = *(v8 + 40);
  }

  v10 = v9;

  v8 = &selRef_initWithScaledImageWidth_scaledImageHeight_scalingModel_;
  v4 = [v10 integerValue];

  v11 = [v6 shape];
  v12 = sub_19A57308C();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x19A901520](3, v12);
  }

  else
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
      __break(1u);
      goto LABEL_34;
    }

    v13 = *(v12 + 56);
  }

  v14 = v13;

  v7 = [v14 integerValue];

  v15 = [v6 shape];
  v2 = sub_19A57308C();

  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v16 = *(v2 + 48);
      goto LABEL_10;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_32:
  v16 = MEMORY[0x19A901520](2, v2);
LABEL_10:
  v3 = v16;

  v17 = [v3 *(v8 + 760)];

  if (v4 == 1)
  {
    v18 = 1278226488;
  }

  else
  {
    v18 = 1111970369;
  }

  v19 = sub_19A5676E4(v7, v17, v18);
  v5 = v19;
  if (!v1)
  {
    if (!CVPixelBufferLockBaseAddress(v19, 0) && CVPixelBufferGetBaseAddress(v5))
    {
      if (((v17 | v7) & 0x8000000000000000) == 0)
      {
        CVPixelBufferGetBytesPerRow(v5);
        if ([v6 dataType] == 65552)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_19A576E00;
          *(v21 + 32) = v6;
          sub_19A2F1600(0, &qword_1ED823EE0);
          v22 = v6;
          v23 = sub_19A57307C();

          v6 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v23 alongAxis:0 dataType:65568];
        }

        else
        {
          v6 = v6;
        }

        v24 = [v6 strides];
        v3 = sub_19A57308C();

        if ((v3 & 0xC000000000000001) == 0)
        {
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            __break(1u);
            goto LABEL_39;
          }

          v25 = *(v3 + 40);
LABEL_24:
          v26 = v25;

          [v26 *(v8 + 760)];

          v27 = [v6 strides];
          v28 = sub_19A57308C();

          if ((v28 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x19A901520](2, v28);
            goto LABEL_27;
          }

          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
          {
            v29 = *(v28 + 48);
LABEL_27:
            v30 = v29;

            [v30 *(v8 + 760)];

            MEMORY[0x1EEE9AC00](v31);
            sub_19A5734EC();

            CVPixelBufferUnlockBaseAddress(v5, 0);
            return v5;
          }

LABEL_39:
          __break(1u);
        }

LABEL_36:
        v25 = MEMORY[0x19A901520](1, v3);
        goto LABEL_24;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    sub_19A55BC94();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 2;
    swift_willThrow();
  }

  return v5;
}

__CVBuffer *sub_19A55C818(__CVBuffer *a1)
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  if (!CVPixelBufferIsPlanar(a1) && ((PixelFormatType = CVPixelBufferGetPixelFormatType(a1), v7 = PixelFormatType, PixelFormatType == 1278226488) || PixelFormatType == 1111970369))
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v10 = sub_19A5676E4(Width, Height, v7);
    if (!v1)
    {
      v2 = v10;
      if (CVPixelBufferLockBaseAddress(a1, 1uLL) || (v12 = CVPixelBufferGetBaseAddress(a1)) == 0)
      {
        sub_19A55BC94();
        swift_allocError();
        *v11 = 1;
        *(v11 + 8) = 2;
        swift_willThrow();
      }

      else
      {
        v13 = v12;
        if (CVPixelBufferLockBaseAddress(v2, 0) || (BaseAddress = CVPixelBufferGetBaseAddress(v2)) == 0)
        {
          sub_19A55BC94();
          swift_allocError();
          *v14 = 1;
          *(v14 + 8) = 2;
          swift_willThrow();
        }

        else
        {
          if (((Height | Width) & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          v16 = BaseAddress;
          src.data = v13;
          src.height = Height;
          src.width = Width;
          src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
          dest.data = v16;
          dest.height = Height;
          dest.width = Width;
          dest.rowBytes = CVPixelBufferGetBytesPerRow(v2);
          if (v7 == 1278226488)
          {
            v17 = 1;
          }

          else
          {
            v17 = 4;
          }

          v18 = vImageCopyBuffer(&src, &dest, v17, 0);
          if (!v18)
          {
            CVPixelBufferUnlockBaseAddress(v2, 0);
            CVPixelBufferUnlockBaseAddress(a1, 1uLL);
            return v2;
          }

          v19 = v18;
          sub_19A55BC94();
          swift_allocError();
          *v20 = v19;
          *(v20 + 8) = 1;
          swift_willThrow();
          CVPixelBufferUnlockBaseAddress(v2, 0);
        }

        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      }
    }
  }

  else
  {
    sub_19A55BC94();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 2;
    swift_willThrow();
  }

  return v2;
}

__CVBuffer *sub_19A55CAB0(__CVBuffer *a1, __CVBuffer *a2)
{
  v3 = v2;
  v29 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v8 = CVPixelBufferGetWidth(a2);
  v9 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v11 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1111970369 || v11 != 1278226488 || Width != v8 || Height != v9)
  {
    sub_19A55BC94();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 2;
    goto LABEL_8;
  }

  if (CVPixelBufferIsPlanar(a1))
  {
    sub_19A55BC94();
    swift_allocError();
    *v12 = 3;
    *(v12 + 8) = 2;
LABEL_8:
    swift_willThrow();
    return v3;
  }

  v15 = sub_19A5676E4(Width, Height, 0x42475241u);
  if (v2)
  {
    return v3;
  }

  v3 = v15;
  if (CVPixelBufferLockBaseAddress(v15, 0) || (BaseAddress = CVPixelBufferGetBaseAddress(v3)) == 0)
  {
    sub_19A55BC94();
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = 2;
    swift_willThrow();
LABEL_26:

    return v3;
  }

  v18 = BaseAddress;
  if (CVPixelBufferLockBaseAddress(a1, 1uLL) || (v20 = CVPixelBufferGetBaseAddress(a1)) == 0)
  {
    sub_19A55BC94();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 2;
    swift_willThrow();
LABEL_25:
    CVPixelBufferUnlockBaseAddress(v3, 0);
    goto LABEL_26;
  }

  v21 = v20;
  if (CVPixelBufferLockBaseAddress(a2, 1uLL) || (result = CVPixelBufferGetBaseAddress(a2)) == 0)
  {
    sub_19A55BC94();
    swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 2;
    swift_willThrow();
LABEL_24:
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    goto LABEL_25;
  }

  if (((Height | Width) & 0x8000000000000000) == 0)
  {
    newSrc.data = result;
    newSrc.height = Height;
    newSrc.width = Width;
    newSrc.rowBytes = CVPixelBufferGetBytesPerRow(a2);
    origSrc.data = v21;
    origSrc.height = Height;
    origSrc.width = Width;
    origSrc.rowBytes = CVPixelBufferGetBytesPerRow(a1);
    dest.data = v18;
    dest.height = Height;
    dest.width = Width;
    dest.rowBytes = CVPixelBufferGetBytesPerRow(v3);
    v23 = vImageOverwriteChannels_ARGB8888(&newSrc, &origSrc, &dest, 1u, 0);
    if (!v23)
    {
      v23 = vImagePremultiplyData_RGBA8888(&dest, &dest, 0);
      if (!v23)
      {
        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        CVPixelBufferUnlockBaseAddress(v3, 0);
        return v3;
      }
    }

    v24 = v23;
    sub_19A55BC94();
    swift_allocError();
    *v25 = v24;
    *(v25 + 8) = 1;
    swift_willThrow();
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A55CE78(uint64_t a1, uint64_t a2, int32x2_t a3, int32x2_t a4)
{
  a3.i32[0] = *(v4 + 56);
  a4.i32[0] = *(v4 + 60);
  return sub_19A55BE28(a1, a3, a4, a2, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 64));
}

_UNKNOWN **sub_19A55CEA4(uint64_t a1)
{
  v4 = 0xD000000000000014;
  v5 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  v6 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithColor_];
  v7 = sub_19A572CCC();
  v8 = [objc_opt_self() filterWithName_];

  if (v8)
  {
    v9 = v5;
    v10 = sub_19A572CCC();
    [v8 setValue:v9 forKey:v10];

    v11 = v6;
    v12 = sub_19A572CCC();
    [v8 setValue:v11 forKey:v12];

    v13 = [v8 outputImage];
    if (v13)
    {
      v5 = v13;
      v4 = &off_1E7517000;
      [v9 extent];
      v6 = [v5 imageByCroppingToRect_];
      [v6 extent];
      v16 = sub_19A55C0FC(0x42475241u, v14, v15);
      if (!v2)
      {
        v4 = v16;
        v20 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
        [v20 render:v6 toCVPixelBuffer:v4];

        return v4;
      }
    }

    else
    {
      sub_19A55D178();
      swift_allocError();
      *v18 = 0xD00000000000001ELL;
      *(v18 + 8) = 0x800000019A59DB90;
      *(v18 + 16) = 0;
      swift_willThrow();

      v5 = v11;
      v6 = v8;
    }
  }

  else
  {
    sub_19A55D178();
    swift_allocError();
    *v17 = 0xD00000000000002CLL;
    *(v17 + 8) = 0x800000019A59DB60;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_19A55D178()
{
  result = qword_1EAFA3708;
  if (!qword_1EAFA3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3708);
  }

  return result;
}

__CVBuffer *sub_19A55D1CC(double a1, double a2)
{
  v4 = v2;
  v29 = *MEMORY[0x1E69E9840];
  v7 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  Width = CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  v28.a = 1.0;
  v28.b = 0.0;
  v28.c = 0.0;
  v28.d = 1.0;
  v28.tx = 0.0;
  v28.ty = 0.0;
  CGAffineTransformScale(&v27, &v28, a1 / Width, a2 / Height);
  v28 = v27;
  v10 = [(CGColorSpace *)v7 imageByApplyingTransform:&v28];
  v11 = sub_19A55C0FC(0x42475241u, a1, a2);
  if (!v3)
  {
    v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v13)
    {
      v14 = v13;
      CVBufferSetAttachment(v11, *MEMORY[0x1E6965CE8], v13, kCVAttachmentMode_ShouldPropagate);
      v15 = [objc_allocWithZone(MEMORY[0x1E695F678]) initWithPixelBuffer_];
      [v15 setColorSpace_];
      v16 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      v28.a = 0.0;
      v17 = [v16 startTaskToRender:v10 toDestination:v15 error:&v28];
      a = v28.a;
      if (v17)
      {
        v19 = v17;
        v28.a = 0.0;
        v20 = *&a;
        v21 = [v19 waitUntilCompletedAndReturnError_];
        if (v21)
        {
          v22 = v21;
          v23 = *&v28.a;

          return v11;
        }

        v26 = *&v28.a;
        sub_19A570D1C();

        swift_willThrow();
      }

      else
      {
        v25 = *&v28.a;
        sub_19A570D1C();

        swift_willThrow();
      }

      v10 = v11;
      v7 = v14;
    }

    else
    {
      sub_19A55D178();
      swift_allocError();
      *v24 = 0xD00000000000001FLL;
      *(v24 + 8) = 0x800000019A59DBB0;
      *(v24 + 16) = 1;
      swift_willThrow();

      v10 = v11;
    }
  }

  return v11;
}

unint64_t AppleDiffusionAdapter.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6F6974616D696E61;
    v7 = 0x696A6F6D65;
    v8 = 0x61727473756C6C69;
    if (a1 == 3)
    {
      v8 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x63735F656C797473;
    v2 = 0xD00000000000001BLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    v4 = 0xD000000000000013;
    if (a1 == 6)
    {
      v4 = 0x686374656B73;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_19A55D694(unsigned __int8 a1)
{
  AppleDiffusionAdapter.rawValue.getter(a1);
  sub_19A572F8C();
  sub_19A572ECC();
  v2 = sub_19A572F8C();
  sub_19A572ECC();

  return v2;
}

uint64_t AppleDiffusionAdapter.DiffusionAdapterError.hashValue.getter()
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](0);
  return sub_19A57410C();
}

uint64_t sub_19A55D7FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AppleDiffusionAdapter.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AppleDiffusionAdapter.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A55D884()
{
  v1 = *v0;
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A55D8E8()
{
  AppleDiffusionAdapter.rawValue.getter(*v0);
  sub_19A572E4C();
}

uint64_t sub_19A55D93C()
{
  v1 = *v0;
  sub_19A5740BC();
  AppleDiffusionAdapter.rawValue.getter(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A55D99C@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase05AppleA7AdapterO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_19A55D9CC@<X0>(unint64_t *a1@<X8>)
{
  result = AppleDiffusionAdapter.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

DiffusionBase::AppleDiffusionAdapter_optional __swiftcall AppleDiffusionAdapter.init(modelCatalogInferenceAssetIdentifier:)(Swift::String modelCatalogInferenceAssetIdentifier)
{
  sub_19A57139C();
  swift_allocObject();
  sub_19A57138C();
  sub_19A57137C();

  v1 = v41;
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v2 = sub_19A5713AC();
    v1 = v3;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  else
  {
    sub_19A2F3FA0(v40, &qword_1EAFA3710);
    v2 = 0;
  }

  sub_19A57131C();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v4 = sub_19A5713BC();
  if (v1)
  {
    if (v4 == v2 && v1 == v5)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_20:

      return 0;
    }

    v7 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v7)
    {
      goto LABEL_20;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A5712CC();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v8 = sub_19A5713BC();
  if (v1)
  {
    if (v8 == v2 && v1 == v9)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_27:

      return 1;
    }

    v11 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v11)
    {
      goto LABEL_27;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A5712EC();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v13 = sub_19A5713BC();
  if (v1)
  {
    if (v13 == v2 && v1 == v14)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_30:

      return 2;
    }

    v15 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v15)
    {
      goto LABEL_30;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A57128C();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v16 = sub_19A5713BC();
  if (v1)
  {
    if (v16 == v2 && v1 == v17)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_37:

      return 3;
    }

    v18 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v18)
    {
      goto LABEL_37;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A57127C();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v19 = sub_19A5713BC();
  if (v1)
  {
    if (v19 == v2 && v1 == v20)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_44:

      return 4;
    }

    v21 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v21)
    {
      goto LABEL_44;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A5712DC();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v22 = sub_19A5713BC();
  if (v1)
  {
    if (v22 == v2 && v1 == v23)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_51:

      return 5;
    }

    v24 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v24)
    {
      goto LABEL_51;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A5712FC();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v25 = sub_19A5713BC();
  if (v1)
  {
    if (v25 == v2 && v1 == v26)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_58:

      return 6;
    }

    v27 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v27)
    {
      goto LABEL_58;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A57129C();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v28 = sub_19A5713BC();
  if (v1)
  {
    if (v28 == v2 && v1 == v29)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_65:

      return 7;
    }

    v30 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v30)
    {
      goto LABEL_65;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A57130C();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v31 = sub_19A5713BC();
  if (v1)
  {
    if (v31 == v2 && v1 == v32)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_72:

      return 8;
    }

    v33 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v33)
    {
      goto LABEL_72;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A5712BC();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v34 = sub_19A5713BC();
  if (v1)
  {
    if (v34 == v2 && v1 == v35)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_79:

      return 9;
    }

    v36 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v36)
    {
      goto LABEL_79;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  sub_19A5712AC();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v37 = sub_19A5713BC();
  if (v1)
  {
    if (v37 == v2 && v1 == v38)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      return 10;
    }

    v39 = sub_19A573F1C();

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (v39)
    {
      return 10;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
  }

  return 11;
}

uint64_t AppleDiffusionAdapter.modelCatalogResourceBundleIdentifier.getter(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_19A55E318(a1, &v9 - v6);
  if (!v1)
  {
    v2 = sub_19A57147C();
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

uint64_t sub_19A55E318@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v41 = a2;
  v42 = v17;
  v43 = v18;
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        sub_19A57121C();
      }

      else
      {
        sub_19A5711BC();
      }
    }

    else if (a1 == 2)
    {
      sub_19A57123C();
    }

    else if (a1 == 3)
    {
      sub_19A5711DC();
    }

    else
    {
      sub_19A5711CC();
    }
  }

  else if (a1 > 7u)
  {
    if (a1 == 8)
    {
      sub_19A5711AC();
    }

    else if (a1 == 9)
    {
      sub_19A57120C();
    }

    else
    {
      sub_19A5711FC();
    }
  }

  else if (a1 == 5)
  {
    sub_19A57122C();
  }

  else if (a1 == 6)
  {
    sub_19A57124C();
  }

  else
  {
    sub_19A5711EC();
  }

  v19 = *(v9 + 32);
  v19(v16, v14, v8);
  sub_19A57147C();
  sub_19A560124(v7);
  if (v2)
  {
    (*(v9 + 8))(v16, v8);
  }

  else
  {
    v40 = v8;

    v21 = sub_19A5714BC();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v7, 1, v21) == 1)
    {
      sub_19A2F3FA0(v7, &qword_1EAFA3740);
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      v23 = sub_19A5723FC();
      __swift_project_value_buffer(v23, qword_1ED82BD48);
      v24 = v42;
      v25 = v40;
      (*(v9 + 16))(v42, v16, v40);
      v26 = sub_19A5723DC();
      v27 = sub_19A57355C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39 = v28;
        v43 = swift_slowAlloc();
        v44 = v43;
        *v28 = 136446210;
        LODWORD(v41) = v27;
        v29 = sub_19A57147C();
        v31 = v30;
        v32 = *(v9 + 8);
        v32(v24, v25);
        v33 = sub_19A31F114(v29, v31, &v44);

        v34 = v39;
        *(v39 + 1) = v33;
        v35 = v32;
        _os_log_impl(&dword_19A2DE000, v26, v41, "Unable to resolve localized diffusion catalog bundle for identifier %{public}s", v34, 0xCu);
        v36 = v43;
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x19A902C50](v36, -1, -1);
        MEMORY[0x19A902C50](v34, -1, -1);
      }

      else
      {

        v35 = *(v9 + 8);
        v35(v24, v25);
      }

      sub_19A55FEB0();
      swift_allocError();
      swift_willThrow();
      return (v35)(v16, v25);
    }

    else
    {
      sub_19A57148C();
      v37 = v40;
      (*(v9 + 8))(v16, v40);
      (*(v22 + 8))(v7, v21);
      return (v19)(v41, v43, v37);
    }
  }
}

uint64_t AppleDiffusionAdapter.modelCatalogInferenceAssetIdentifier.getter(unsigned __int8 a1)
{
  sub_19A55E958(a1, v3);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v1 = sub_19A5713BC();
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    return v1;
  }

  else
  {
    sub_19A2F3FA0(v3, &qword_1EAFA3718);
    return 0;
  }
}

uint64_t sub_19A55E958@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        sub_19A5712CC();
      }

      else
      {
        sub_19A57131C();
      }
    }

    else if (a1 == 2)
    {
      sub_19A5712EC();
    }

    else if (a1 == 3)
    {
      sub_19A57128C();
    }

    else
    {
      sub_19A57127C();
    }
  }

  else if (a1 > 7u)
  {
    if (a1 == 8)
    {
      sub_19A57130C();
    }

    else if (a1 == 9)
    {
      sub_19A5712BC();
    }

    else
    {
      sub_19A5712AC();
    }
  }

  else if (a1 == 5)
  {
    sub_19A5712DC();
  }

  else if (a1 == 6)
  {
    sub_19A5712FC();
  }

  else
  {
    sub_19A57129C();
  }

  sub_19A2EA460(&v4, v5);
  sub_19A560390(v5, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t sub_19A55EA80@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  result = sub_19A55E318(a1, v13 - v7);
  if (!v2)
  {
    sub_19A57139C();
    swift_allocObject();
    sub_19A57138C();
    sub_19A57147C();
    sub_19A57136C();
    (*(v6 + 8))(v8, v5);

    v13[0] = v15;
    v13[1] = v16;
    v14 = v17;
    if (*(&v16 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3750);
      v10 = sub_19A5714BC();
      v11 = swift_dynamicCast();
      return (*(*(v10 - 8) + 56))(a2, v11 ^ 1u, 1, v10);
    }

    else
    {
      sub_19A2F3FA0(v13, &qword_1EAFA3748);
      v12 = sub_19A5714BC();
      return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    }
  }

  return result;
}

uint64_t sub_19A55ECF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v44) = a2;
  v38 = a1;
  v42 = a3;
  v43 = sub_19A570EAC();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A5714DC();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3758);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3760);
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3740);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_19A5714BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v48;
  result = sub_19A55EA80(v44, v15);
  if (!v20)
  {
    v44 = v19;
    v35 = v12;
    v36 = v10;
    v34 = v4;
    v23 = v40;
    v22 = v41;
    v48 = 0;
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_19A2F3FA0(v15, &qword_1EAFA3740);
      return (*(v22 + 56))(v42, 1, 1, v43);
    }

    v24 = v44;
    (*(v17 + 32))();
    sub_19A5714AC();
    if (v46)
    {
      sub_19A2EA460(&v45, v47);
      __swift_project_boxed_opaque_existential_1(v47, v47[3]);
      v25 = v48;
      sub_19A57144C();
      if (v25)
      {

        (*(v39 + 56))(v9, 1, 1, v36);
        (*(v17 + 8))(v44, v16);
        sub_19A2F3FA0(v9, &qword_1EAFA3758);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        v48 = 0;
      }

      else
      {
        v38 = v17;
        v48 = 0;
        v26 = v39;
        v27 = v36;
        (*(v39 + 56))(v9, 0, 1, v36);
        (*(v26 + 32))(v35, v9, v27);
        v28 = sub_19A57135C();
        v29 = v23;
        MEMORY[0x19A8FF040](v28);
        v30 = *(v37 + 8);
        v31 = v34;
        v30(v6, v34);
        LOBYTE(v26) = sub_19A570DBC();
        (*(v22 + 8))(v29, v43);
        if (v26)
        {
          v32 = v35;
          v33 = sub_19A57135C();
          MEMORY[0x19A8FF040](v33);
          v30(v6, v31);
          (*(v39 + 8))(v32, v27);
          (*(v38 + 8))(v44, v16);
          (*(v22 + 56))(v42, 0, 1, v43);
          return __swift_destroy_boxed_opaque_existential_0Tm(v47);
        }

        (*(v39 + 8))(v35, v27);
        (*(v38 + 8))(v44, v16);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
      }
    }

    else
    {
      (*(v17 + 8))(v24, v16);
      sub_19A2F3FA0(&v45, &qword_1EAFA3718);
    }

    return (*(v22 + 56))(v42, 1, 1, v43);
  }

  return result;
}

uint64_t sub_19A55F308@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase05AppleA7AdapterO36modelCatalogResourceBundleIdentifierACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_19A55F330()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  sub_19A55E318(*v0, v8 - v5);
  if (!v1)
  {
    v2 = sub_19A57147C();
    (*(v4 + 8))(v6, v3);
  }

  return v2;
}

uint64_t _s13DiffusionBase05AppleA7AdapterO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t _s13DiffusionBase05AppleA7AdapterO36modelCatalogResourceBundleIdentifierACSgSS_tcfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v84 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v84 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v84 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  sub_19A57139C();
  swift_allocObject();
  sub_19A57138C();
  sub_19A57136C();

  v27 = v93;
  if (v93)
  {
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v28 = sub_19A57140C();
    v27 = v29;
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
  }

  else
  {
    sub_19A2F3FA0(v92, &qword_1EAFA3748);
    v28 = 0;
  }

  sub_19A5711BC();
  v30 = sub_19A57147C();
  v32 = v31;
  v91 = *(v1 + 8);
  v91(v26, v0);
  if (v27)
  {
    if (v30 == v28 && v27 == v32)
    {

LABEL_17:

      return 0;
    }

    v34 = sub_19A573F1C();

    if (v34)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  sub_19A57121C();
  v35 = sub_19A57147C();
  v37 = v36;
  v38 = v91;
  v91(v23, v0);
  if (v27)
  {
    if (v35 == v28 && v27 == v37)
    {

LABEL_20:

      return 1;
    }

    v40 = sub_19A573F1C();

    if (v40)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  sub_19A57123C();
  v41 = sub_19A57147C();
  v43 = v42;
  v38(v20, v0);
  if (v27)
  {
    if (v41 == v28 && v27 == v43)
    {

LABEL_27:

      return 2;
    }

    v44 = sub_19A573F1C();

    if (v44)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  sub_19A5711DC();
  v45 = sub_19A57147C();
  v47 = v46;
  v38(v17, v0);
  if (v27)
  {
    if (v45 == v28 && v27 == v47)
    {

LABEL_34:

      return 3;
    }

    v48 = sub_19A573F1C();

    if (v48)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v49 = v90;
  sub_19A5711CC();
  v50 = sub_19A57147C();
  v52 = v51;
  v38(v49, v0);
  if (v27)
  {
    if (v50 == v28 && v27 == v52)
    {

LABEL_41:

      return 4;
    }

    v53 = sub_19A573F1C();

    if (v53)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v54 = v89;
  sub_19A57122C();
  v55 = sub_19A57147C();
  v57 = v56;
  v91(v54, v0);
  if (v27)
  {
    if (v55 == v28 && v27 == v57)
    {

LABEL_48:

      return 5;
    }

    v58 = sub_19A573F1C();

    if (v58)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v59 = v88;
  sub_19A57124C();
  v60 = sub_19A57147C();
  v62 = v61;
  v91(v59, v0);
  if (v27)
  {
    if (v60 == v28 && v27 == v62)
    {

LABEL_55:

      return 6;
    }

    v63 = sub_19A573F1C();

    if (v63)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v64 = v87;
  sub_19A5711EC();
  v65 = sub_19A57147C();
  v67 = v66;
  v91(v64, v0);
  if (v27)
  {
    if (v65 == v28 && v27 == v67)
    {

LABEL_62:

      return 7;
    }

    v68 = sub_19A573F1C();

    if (v68)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v69 = v86;
  sub_19A5711AC();
  v70 = sub_19A57147C();
  v72 = v71;
  v91(v69, v0);
  if (v27)
  {
    if (v70 == v28 && v27 == v72)
    {

LABEL_69:

      return 8;
    }

    v73 = sub_19A573F1C();

    if (v73)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v74 = v85;
  sub_19A57120C();
  v75 = sub_19A57147C();
  v77 = v76;
  v91(v74, v0);
  if (v27)
  {
    if (v75 == v28 && v27 == v77)
    {

LABEL_76:

      return 9;
    }

    v78 = sub_19A573F1C();

    if (v78)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v79 = v84;
  sub_19A5711FC();
  v80 = sub_19A57147C();
  v82 = v81;
  v91(v79, v0);
  if (v27)
  {
    if (v80 == v28 && v27 == v82)
    {

      return 10;
    }

    v83 = sub_19A573F1C();

    if (v83)
    {
      return 10;
    }
  }

  else
  {
  }

  return 11;
}

unint64_t sub_19A55FE58()
{
  result = qword_1EAFA3720;
  if (!qword_1EAFA3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3720);
  }

  return result;
}

unint64_t sub_19A55FEB0()
{
  result = qword_1EAFA3728;
  if (!qword_1EAFA3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3728);
  }

  return result;
}

unint64_t sub_19A55FF08()
{
  result = qword_1ED824EA0;
  if (!qword_1ED824EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824EA0);
  }

  return result;
}

unint64_t sub_19A55FF60()
{
  result = qword_1EAFA3730;
  if (!qword_1EAFA3730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3730);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDiffusionAdapter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionAdapter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_19A560124@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A57146C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_19A330D28(MEMORY[0x1E69E7CC0]);
  result = sub_19A57145C();
  if (!v1)
  {
    sub_19A57139C();
    swift_allocObject();
    *&v11[0] = sub_19A57138C();
    sub_19A57133C();

    (*(v4 + 8))(v6, v3);
    v11[0] = v13;
    v11[1] = v14;
    v12 = v15;
    if (*(&v14 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3750);
      v8 = sub_19A5714BC();
      v9 = swift_dynamicCast();
      return (*(*(v8 - 8) + 56))(a1, v9 ^ 1u, 1, v8);
    }

    else
    {
      sub_19A2F3FA0(v11, &qword_1EAFA3748);
      v10 = sub_19A5714BC();
      return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    }
  }

  return result;
}

double sub_19A5603E0@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  *(&v12 + 1) = v6;
  v13 = *(v7 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
  sub_19A560528(&v11, &v14);
  __swift_destroy_boxed_opaque_existential_0Tm(&v11);
  if (!v3)
  {
    v11 = v14;
    v12 = v15;
    v13 = v16;
    if (*(&v15 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3338);
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      if (swift_dynamicCast())
      {
        return result;
      }
    }

    else
    {
      sub_19A2F3FA0(&v11, &qword_1EAFA3768);
    }

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_19A560528@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_19A5713FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A5713BC();
  sub_19A330D28(MEMORY[0x1E69E7CC0]);
  sub_19A5713EC();
  if (!v2)
  {
    sub_19A57139C();
    swift_allocObject();
    *&v10[0] = sub_19A57138C();
    sub_19A57132C();

    (*(v6 + 8))(v8, v5);
    v10[0] = v12;
    v10[1] = v13;
    v11 = v14;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3778);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3338);
      if (swift_dynamicCast())
      {
        return result;
      }
    }

    else
    {
      sub_19A2F3FA0(v10, &qword_1EAFA3710);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t static ModelCatalogHelpers.localizedCatalogBundleIdentifier(nonLocalizedIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_19A560124(&v10 - v5);
  if (!v2)
  {
    v7 = sub_19A5714BC();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_19A2F3FA0(v6, &qword_1EAFA3740);
      return 0;
    }

    else
    {
      a2 = sub_19A57149C();
      (*(v8 + 8))(v6, v7);
    }
  }

  return a2;
}

uint64_t *PowerLog.appleDiffusionLogger.unsafeMutableAddressor()
{
  if (qword_1EAF9ED98 != -1)
  {
    swift_once();
  }

  return &static PowerLog.appleDiffusionLogger;
}

Swift::Void __swiftcall PowerLog.CategoryReporter.report(payload:)(Swift::OpaquePointer payload)
{
  sub_19A543A20(payload._rawValue);
  v1 = sub_19A572ADC();

  PPSSendTelemetry();
}

uint64_t sub_19A5609A8()
{
  result = _s13DiffusionBase8PowerLogV16CategoryReporterV8categoryAESgSS_tcfC_0(0x666944656C707061, 0xEE006E6F69737566);
  static PowerLog.appleDiffusionLogger = result;
  qword_1EAFCA180 = v1;
  qword_1EAFCA188 = v2;
  return result;
}

uint64_t static PowerLog.appleDiffusionLogger.getter()
{
  if (qword_1EAF9ED98 != -1)
  {
    swift_once();
  }

  v0 = static PowerLog.appleDiffusionLogger;

  return v0;
}

uint64_t sub_19A560A6C()
{
  result = _s13DiffusionBase8PowerLogV16CategoryReporterV8categoryAESgSS_tcfC_0(0xD000000000000010, 0x800000019A59DBD0);
  static PowerLog.fileResidentInfoLogger = result;
  *algn_1EAFCA168 = v1;
  qword_1EAFCA170 = v2;
  return result;
}

uint64_t *PowerLog.fileResidentInfoLogger.unsafeMutableAddressor()
{
  if (qword_1EAF9ED90 != -1)
  {
    swift_once();
  }

  return &static PowerLog.fileResidentInfoLogger;
}

uint64_t static PowerLog.fileResidentInfoLogger.getter()
{
  if (qword_1EAF9ED90 != -1)
  {
    swift_once();
  }

  v0 = static PowerLog.fileResidentInfoLogger;

  return v0;
}

void sub_19A560B74(uint64_t a1)
{
  sub_19A543A20(a1);
  v1 = sub_19A572ADC();

  PPSSendTelemetry();
}

uint64_t _s13DiffusionBase8PowerLogV16CategoryReporterV8categoryAESgSS_tcfC_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_19A572CCC();
  v5 = sub_19A572CCC();
  v6 = PPSCreateTelemetryIdentifier();

  if (!v6)
  {
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v7 = sub_19A5723FC();
    __swift_project_value_buffer(v7, qword_1ED82BD48);

    v8 = sub_19A5723DC();
    v9 = sub_19A57355C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_19A31F114(0xD000000000000019, 0x800000019A59DBF0, &v14);
      *(v10 + 12) = 2080;
      v12 = sub_19A31F114(a1, a2, &v14);

      *(v10 + 14) = v12;
      _os_log_impl(&dword_19A2DE000, v8, v9, "Unable to create a telemetry identifier for (%s, %s)", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v11, -1, -1);
      MEMORY[0x19A902C50](v10, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return a1;
}

uint64_t static AppleDiffusionResourceFactory.shared(reset:)(char a1)
{
  if (qword_1ED824F98 != -1)
  {
    swift_once();
  }

  v3 = off_1ED824FA0;

  os_unfair_lock_lock(v3 + 6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) == 0)
    {
      v5 = Strong;
      goto LABEL_10;
    }
  }

  v5 = swift_allocObject();
  v6 = sub_19A561E50();
  if (!v1)
  {
    v5 = v6;
    swift_weakAssign();
  }

LABEL_10:
  os_unfair_lock_unlock(v3 + 6);

  return v5;
}

uint64_t sub_19A560F0C()
{
  type metadata accessor for AppleDiffusionResourceFactory.WeakContainer();
  v0 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3828);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1ED824FA0 = result;
  return result;
}

uint64_t sub_19A560F80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    while (v7)
    {
      v11 = v7;
LABEL_12:
      v7 = (v11 - 1) & v11;
      if (*(a2 + 16))
      {
        v13 = __clz(__rbit64(v11)) | (v10 << 6);
        v14 = (*(a1 + 56) + 16 * v13);
        v15 = v14[1];
        v26 = *v14;
        v16 = (*(a1 + 48) + 16 * v13);
        v17 = *v16;
        v18 = v16[1];

        v19 = sub_19A31F6BC(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0 || ((v22 = (*(a2 + 56) + 16 * v19), *v22 == v26) ? (v23 = v22[1] == v15) : (v23 = 0), v23))
        {
        }

        else
        {
          v24 = sub_19A573F1C();

          if ((v24 & 1) == 0)
          {
            v25 = 0;
LABEL_21:

            return v25;
          }
        }
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        v25 = 1;
        goto LABEL_21;
      }

      v11 = *(v4 + 8 * v12);
      ++v10;
      if (v11)
      {
        v10 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t AppleDiffusionResourceFactory.areModelResourcesCurrent(_:)(uint64_t a1)
{
  v2 = sub_19A330E3C(MEMORY[0x1E69E7CC0]);
  v111 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentVersions);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v116 = v3;

  v9 = 0;
  v112 = v8;
  v114 = v4;
LABEL_6:
  if (v7)
  {
    v124 = v2;
    v14 = v9;
    goto LABEL_12;
  }

  do
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_100;
    }

    if (v14 >= v8)
    {

      v50 = *(v111 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterVersions);
      v53 = *(v50 + 64);
      v52 = v50 + 64;
      v51 = v53;
      v54 = 1 << *(*(v111 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterVersions) + 32);
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v56 = v55 & v51;
      v57 = (v54 + 63) >> 6;
      v117 = *(v111 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterVersions);

      v58 = 0;
      v113 = v57;
      v115 = v52;
      while (1)
      {
        if (v56)
        {
          v125 = v2;
          v63 = v58;
        }

        else
        {
          do
          {
            v63 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_101;
            }

            if (v63 >= v57)
            {

              v101 = *(a1 + 16);
              if (v101)
              {
                v134 = MEMORY[0x1E69E7CC0];
                sub_19A322760(0, v101, 0);
                v102 = v134;
                v103 = (a1 + 32);
                do
                {
                  v105 = *v103++;
                  v104 = v105;
                  if (v105)
                  {

                    v106 = _s13DiffusionBase05AppleA15ResourceFactoryC27areModelResourcesEquivalentySbSDySSSDyS2SGG_AFtFZ_0(v104, v2);
                  }

                  else
                  {
                    v106 = 1;
                  }

                  v108 = *(v134 + 16);
                  v107 = *(v134 + 24);
                  if (v108 >= v107 >> 1)
                  {
                    sub_19A322760((v107 > 1), v108 + 1, 1);
                  }

                  *(v134 + 16) = v108 + 1;
                  *(v134 + v108 + 32) = v106 & 1;
                  --v101;
                }

                while (v101);
              }

              else
              {

                return MEMORY[0x1E69E7CC0];
              }

              return v102;
            }

            v56 = *(v52 + 8 * v63);
            ++v58;
          }

          while (!v56);
          v125 = v2;
        }

        v123 = (v56 - 1) & v56;
        v119 = v63;
        v64 = __clz(__rbit64(v56)) | (v63 << 6);
        v121 = *(*(v117 + 48) + v64);
        v65 = *(*(v117 + 56) + 8 * v64);

        v66 = sub_19A330D28(MEMORY[0x1E69E7CC0]);
        v67 = 0;
        v68 = v65 + 64;
        v129 = v65 + 64;
        v131 = v65;
        v69 = 1 << *(v65 + 32);
        if (v69 < 64)
        {
          v70 = ~(-1 << v69);
        }

        else
        {
          v70 = -1;
        }

        v71 = v70 & *(v65 + 64);
        v72 = (v69 + 63) >> 6;
        v127 = v72;
        while (v71)
        {
          v74 = v67;
LABEL_66:
          v75 = __clz(__rbit64(v71));
          v71 &= v71 - 1;
          v76 = v75 | (v74 << 6);
          v77 = *(*(v131 + 48) + v76);
          v78 = (*(v131 + 56) + 16 * v76);
          v79 = v78[1];
          v133 = *v78;
          v80 = 0x676E696E69617274;
          if (v77 != 1)
          {
            v80 = 0x6365705361726F6CLL;
          }

          v81 = 0xEB00000000676154;
          if (v77 != 1)
          {
            v81 = 0xE800000000000000;
          }

          if (v77)
          {
            v82 = v80;
          }

          else
          {
            v82 = 0x676F6C61746163;
          }

          if (v77)
          {
            v83 = v81;
          }

          else
          {
            v83 = 0xE700000000000000;
          }

          v84 = v79;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v82;
          v87 = v83;
          v89 = sub_19A31F6BC(v82, v83);
          v90 = v66[2];
          v91 = (v88 & 1) == 0;
          v92 = v90 + v91;
          if (__OFADD__(v90, v91))
          {
            goto LABEL_103;
          }

          v93 = v88;
          if (v66[3] >= v92)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v96 = v133;
              if (v88)
              {
                goto LABEL_59;
              }
            }

            else
            {
              sub_19A32D67C();
              v96 = v133;
              if (v93)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            sub_19A32B730(v92, isUniquelyReferenced_nonNull_native);
            v94 = sub_19A31F6BC(v86, v83);
            if ((v93 & 1) != (v95 & 1))
            {
              goto LABEL_106;
            }

            v89 = v94;
            v96 = v133;
            if (v93)
            {
LABEL_59:

              v73 = (v66[7] + 16 * v89);
              *v73 = v96;
              v73[1] = v84;

              goto LABEL_60;
            }
          }

          v66[(v89 >> 6) + 8] |= 1 << v89;
          v97 = (v66[6] + 16 * v89);
          *v97 = v86;
          v97[1] = v87;
          v98 = (v66[7] + 16 * v89);
          *v98 = v96;
          v98[1] = v84;
          v99 = v66[2];
          v48 = __OFADD__(v99, 1);
          v100 = v99 + 1;
          if (v48)
          {
            goto LABEL_105;
          }

          v66[2] = v100;
LABEL_60:
          v67 = v74;
          v72 = v127;
          v68 = v129;
        }

        while (1)
        {
          v74 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_99;
          }

          if (v74 >= v72)
          {
            break;
          }

          v71 = *(v68 + 8 * v74);
          ++v67;
          if (v71)
          {
            goto LABEL_66;
          }
        }

        v59 = AppleDiffusionAdapter.rawValue.getter(v121);
        v61 = v60;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        sub_19A33DFA8(v66, v59, v61, v62);

        v2 = v125;
        v58 = v119;
        v57 = v113;
        v52 = v115;
        v56 = v123;
      }
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
  }

  while (!v7);
  v124 = v2;
LABEL_12:
  v122 = (v7 - 1) & v7;
  v118 = v14;
  v15 = __clz(__rbit64(v7)) | (v14 << 6);
  v120 = *(*(v116 + 48) + v15);
  v16 = *(*(v116 + 56) + 8 * v15);

  v17 = sub_19A330D28(MEMORY[0x1E69E7CC0]);
  v18 = 0;
  v19 = v16 + 64;
  v126 = v16 + 64;
  v128 = v16;
  v20 = 1 << *(v16 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  while (2)
  {
    if (v22)
    {
      v25 = v18;
LABEL_23:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = v26 | (v25 << 6);
      v28 = *(*(v128 + 48) + v27);
      v29 = (*(v128 + 56) + 16 * v27);
      v30 = v29[1];
      v132 = *v29;
      v31 = 0x676E696E69617274;
      if (v28 != 1)
      {
        v31 = 0x6365705361726F6CLL;
      }

      v32 = 0xEB00000000676154;
      if (v28 != 1)
      {
        v32 = 0xE800000000000000;
      }

      if (v28)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0x676F6C61746163;
      }

      if (v28)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0xE700000000000000;
      }

      v130 = v30;

      v35 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v33;
      v38 = sub_19A31F6BC(v33, v34);
      v39 = v17[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_102;
      }

      v42 = v37;
      if (v17[3] >= v41)
      {
        if (v35)
        {
          if ((v37 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_19A32D67C();
          if ((v42 & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        sub_19A32B730(v41, v35);
        v43 = sub_19A31F6BC(v36, v34);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_106;
        }

        v38 = v43;
        if ((v42 & 1) == 0)
        {
LABEL_40:
          v17[(v38 >> 6) + 8] |= 1 << v38;
          v45 = (v17[6] + 16 * v38);
          *v45 = v36;
          v45[1] = v34;
          v46 = (v17[7] + 16 * v38);
          *v46 = v132;
          v46[1] = v130;
          v47 = v17[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_104;
          }

          v17[2] = v49;
          goto LABEL_17;
        }
      }

      v24 = (v17[7] + 16 * v38);
      *v24 = v132;
      v24[1] = v130;

LABEL_17:
      v18 = v25;
      v19 = v126;
      continue;
    }

    break;
  }

  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v10 = AppleDiffusionPipeline.ComponentModel.rawValue.getter(v120);
      v12 = v11;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_19A33DFA8(v17, v10, v12, v13);

      v2 = v124;
      v9 = v118;
      v8 = v112;
      v4 = v114;
      v7 = v122;
      goto LABEL_6;
    }

    v22 = *(v19 + 8 * v25);
    ++v18;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t AppleDiffusionResourceFactory.Versioner.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x676F6C61746163;
  }

  if (a1 == 1)
  {
    return 0x676E696E69617274;
  }

  return 0x6365705361726F6CLL;
}

uint64_t sub_19A5619A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x676E696E69617274;
  v4 = 0xEB00000000676154;
  if (v2 != 1)
  {
    v3 = 0x6365705361726F6CLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x676E696E69617274;
  v8 = 0xEB00000000676154;
  if (*a2 != 1)
  {
    v7 = 0x6365705361726F6CLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676F6C61746163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A561AB8()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A561B64()
{
  sub_19A572E4C();
}

uint64_t sub_19A561BFC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A561CA4@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase05AppleA15ResourceFactoryC9VersionerO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_19A561CD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000676154;
  v5 = 0x676E696E69617274;
  if (v2 != 1)
  {
    v5 = 0x6365705361726F6CLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676F6C61746163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppleDiffusionResourceFactory.catalogAssetLock()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A5714FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = sub_19A5714EC();
  if (!v1)
  {
    return (*(v4 + 32))(a1, v6, v3);
  }

  return result;
}

uint64_t sub_19A561E50()
{
  v2 = v1;
  v465 = *MEMORY[0x1E69E9840];
  v432 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v399 = &v374 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v407 = &v374 - v6;
  v392 = sub_19A5713DC();
  v395 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v391 = &v374 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3760);
  *&v394 = *(v390 - 8);
  MEMORY[0x1EEE9AC00](v390);
  v397 = &v374 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3740);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v412 = &v374 - v10;
  v416 = sub_19A5714BC();
  *&v393 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416);
  v427 = &v374 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3818);
  MEMORY[0x1EEE9AC00](v424);
  v423 = &v374 - v12;
  v13 = sub_19A5714FC();
  v400 = *(v13 - 8);
  v401 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v420 = (&v374 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v421 = &v374 - v16;
  v445 = sub_19A5713FC();
  v447 = *(v445 - 8);
  MEMORY[0x1EEE9AC00](v445);
  v436 = &v374 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = sub_19A570DCC();
  *&v434 = *(v437 - 8);
  MEMORY[0x1EEE9AC00](v437);
  v19 = &v374 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v425 = &v374 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v409 = &v374 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v411 = &v374 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v418 = &v374 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v438 = &v374 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v439 = &v374 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v440 = &v374 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v374 - v35;
  v37 = sub_19A570EAC();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v396 = &v374 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v428 = &v374 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v433 = &v374 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v415 = &v374 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v404 = &v374 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v403 = &v374 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v374 - v51;
  v398 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v53 = MEMORY[0x1EEE9AC00](v398);
  v417 = &v374 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v422 = &v374 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v374 - v57;
  v419 = v38;
  v59 = *(v38 + 56);
  v426 = v37;
  v442 = (v38 + 56);
  v441 = v59;
  (v59)(v36, 1, 1, v37);
  v60 = *(v434 + 104);
  v402 = *MEMORY[0x1E6968F70];
  v429 = v60;
  v430 = v434 + 104;
  v60(v19);
  v431 = v19;
  sub_19A570E6C();
  v435 = v58;
  v61 = v58;
  v62 = v436;
  v408 = v52;
  AppleDiffusionPipeline.ResourceURLs.init(resourcesAt:)(v52, v61);
  v63 = 0;
  v444 = (v447 + 1);
  v443 = MEMORY[0x1E69E7CC0];
  do
  {
    v64 = *(&unk_1F0DB5600 + v63 + 32);
    if (v64 <= 4)
    {
      if (*(&unk_1F0DB5600 + v63 + 32) <= 1u)
      {
        if (*(&unk_1F0DB5600 + v63 + 32))
        {
          sub_19A5712CC();
        }

        else
        {
          sub_19A57131C();
        }
      }

      else if (v64 == 2)
      {
        sub_19A5712EC();
      }

      else if (v64 == 3)
      {
        sub_19A57128C();
      }

      else
      {
        sub_19A57127C();
      }
    }

    else if (*(&unk_1F0DB5600 + v63 + 32) > 7u)
    {
      if (v64 == 8)
      {
        sub_19A57130C();
      }

      else if (v64 == 9)
      {
        sub_19A5712BC();
      }

      else
      {
        sub_19A5712AC();
      }
    }

    else if (v64 == 5)
    {
      sub_19A5712DC();
    }

    else if (v64 == 6)
    {
      sub_19A5712FC();
    }

    else
    {
      sub_19A57129C();
    }

    sub_19A2EA460(v458, v459);
    v65 = v459[3];
    v66 = __swift_project_boxed_opaque_existential_1(v459, v459[3]);
    v447 = &v374;
    v67 = *(v65 - 8);
    MEMORY[0x1EEE9AC00](v66);
    v69 = &v374 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v67 + 16))(v69);
    sub_19A5713BC();
    sub_19A5713EC();
    if (v2)
    {

      v2 = 0;
      (*(v67 + 8))(v69, v65);
      __swift_destroy_boxed_opaque_existential_0Tm(v459);
LABEL_26:
      memset(v460, 0, 40);
LABEL_27:
      sub_19A2F3FA0(v460, &qword_1EAFA3768);
      goto LABEL_28;
    }

    v446 = v63;
    v2 = 0;
    sub_19A57139C();
    swift_allocObject();
    *&v454 = sub_19A57138C();
    sub_19A57132C();

    (*v444)(v62, v445);
    v454 = v457[0];
    v455 = v457[1];
    v456 = *&v457[2];
    if (*(&v457[1] + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3778);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3338);
      v70 = swift_dynamicCast();
      v63 = v446;
      if ((v70 & 1) == 0)
      {
        memset(v458, 0, 40);
      }
    }

    else
    {
      sub_19A2F3FA0(&v454, &qword_1EAFA3710);
      memset(v458, 0, 40);
      v63 = v446;
    }

    (*(v67 + 8))(v69, v65);
    v454 = *v458;
    v455 = *&v458[16];
    v456 = *&v458[32];
    if (*&v458[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3338);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3770);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v457, 0, 40);
      }
    }

    else
    {
      sub_19A2F3FA0(&v454, &qword_1EAFA3768);
      memset(v457, 0, 40);
    }

    v461[0] = v457[0];
    v461[1] = v457[1];
    *&v461[2] = *&v457[2];
    __swift_destroy_boxed_opaque_existential_0Tm(v459);
    v71 = *(&v461[1] + 1);
    if (!*(&v461[1] + 1))
    {
      sub_19A2F3FA0(v461, &qword_1EAFA3718);
      goto LABEL_26;
    }

    v72 = *&v461[2];
    v73 = __swift_project_boxed_opaque_existential_1(v461, *(&v461[1] + 1));
    *(&v460[1] + 1) = v71;
    *&v460[2] = *(v72 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v460);
    (*(*(v71 - 8) + 16))(boxed_opaque_existential_1, v73, v71);
    __swift_destroy_boxed_opaque_existential_0Tm(v461);
    if (!*(&v460[1] + 1))
    {
      goto LABEL_27;
    }

    sub_19A2EA460(v460, v461);
    v75 = v443;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v452 = v75;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v443 = sub_19A514FA0(0, v443[2] + 1, 1, v443);
      v452 = v443;
    }

    v78 = v443[2];
    v77 = v443[3];
    if (v78 >= v77 >> 1)
    {
      v443 = sub_19A514FA0((v77 > 1), v78 + 1, 1, v443);
      v452 = v443;
    }

    v79 = *(&v461[1] + 1);
    v80 = *&v461[2];
    v81 = __swift_mutable_project_boxed_opaque_existential_1(v461, *(&v461[1] + 1));
    MEMORY[0x1EEE9AC00](v81);
    v83 = &v374 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v83);
    sub_19A565E30(v78, v83, &v452, v79, v80);
    __swift_destroy_boxed_opaque_existential_0Tm(v461);
    v62 = v436;
LABEL_28:
    v63 = (v63 + 1);
  }

  while (v63 != 10);
  sub_19A56E174(v461);
  v85 = *(&v461[1] + 1);
  v445 = *&v461[2];
  v86 = __swift_project_boxed_opaque_existential_1(v461, *(&v461[1] + 1));
  v446 = &v374;
  v87 = *(v85 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v374 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v87 + 16);
  v90(v89);
  v91 = v443;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v453 = v91;
  v447 = 0;
  if ((v92 & 1) == 0)
  {
    v92 = sub_19A514FA0(0, v443[2] + 1, 1, v443);
    v443 = v92;
    v453 = v92;
  }

  v94 = v443[2];
  v93 = v443[3];
  if (v94 >= v93 >> 1)
  {
    v92 = sub_19A514FA0((v93 > 1), v94 + 1, 1, v443);
    v443 = v92;
    v453 = v92;
  }

  MEMORY[0x1EEE9AC00](v92);
  v95 = &v374 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v90)(v95, v89, v85);
  sub_19A565E30(v94, v95, &v453, v85, *(v445 + 8));
  (*(v87 + 8))(v89, v85);
  __swift_destroy_boxed_opaque_existential_0Tm(v461);
  v96 = v413;
  *(v413 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_lockableAssetResources) = v443;
  swift_bridgeObjectRetain_n();
  v97 = v421;
  v98 = v447;
  sub_19A5714EC();
  if (v98)
  {
    v447 = v98;

    sub_19A340740(v435);

    swift_deallocPartialClassInstance();
    return v96;
  }

  v99 = v420;
  (*(v400 + 16))(v420, v97, v401);
  v100 = v417;
  sub_19A3406DC(v435, v417);
  sub_19A56E264(v99, v100, v422);
  v447 = 0;
  v420 = (v96 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs);
  sub_19A566280(v422, v96 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs);
  v102 = MEMORY[0x1E69E7CC0];
  v417 = sub_19A4E8474(MEMORY[0x1E69E7CC0]);
  v388 = sub_19A4E849C(v102);
  v103 = 0;
  v436 = *(v398 + 28);
  v422 = v419 + 48;
  v405 = v419 + 16;
  v406 = (v419 + 32);
  v444 = (v419 + 8);
  v410 = *MEMORY[0x1E6968F68];
  v414 = (v434 + 8);
  v389 = (v393 + 48);
  v386 = (v393 + 32);
  v387 = 0x800000019A59D910;
  v385 = (v393 + 8);
  v379 = (v395 + 8);
  v380 = (v394 + 8);
  v395 = 0x800000019A596540;
  v377 = 0x800000019A596580;
  v378 = 0x800000019A596560;
  v375 = 0x800000019A5965C0;
  v376 = 0x800000019A5965A0;
  v381 = 0x800000019A5965E0;
  *(&v104 + 1) = 2;
  v384 = xmmword_19A576E10;
  *&v104 = 136446210;
  v394 = v104;
  *&v104 = 136446466;
  v393 = v104;
  v105 = v426;
  v106 = v438;
  while (2)
  {
    v432 = v103;
    v121 = *(&unk_1F0DB5600 + v103 + 32);
    v445 = sub_19A4E89AC(MEMORY[0x1E69E7CC0]);
    v122 = *&v435[v436];
    if (*(v122 + 16) && (v123 = sub_19A31FBD4(v121), (v124 & 1) != 0))
    {
      v125 = *(v122 + 56) + *(v419 + 72) * v123;
      v126 = v439;
      (*(v419 + 16))(v439, v125, v105);
      v127 = v126;
      v128 = 0;
    }

    else
    {
      v128 = 1;
      v127 = v439;
    }

    v129 = 1;
    (v441)(v127, v128, 1, v105);
    v130 = *(v420 + v436);
    v131 = *(v130 + 16);
    LODWORD(v446) = v121;
    if (v131)
    {

      v132 = sub_19A31FBD4(v121);
      v134 = v105;
      if (v133)
      {
        (*(v419 + 16))(v106, *(v130 + 56) + *(v419 + 72) * v132, v105);
        v129 = 0;
      }
    }

    else
    {
      v134 = v105;
    }

    v135 = v134;
    (v441)(v106, v129, 1, v134);
    v136 = v423;
    v137 = *(v424 + 48);
    v138 = v439;
    sub_19A33546C(v439, v423, &qword_1EAFA02E8);
    sub_19A33546C(v106, v136 + v137, &qword_1EAFA02E8);
    v139 = *v422;
    v140 = (*v422)(v136, 1, v135);
    *&v434 = v139;
    if (v140 != 1)
    {
      v144 = v418;
      sub_19A33546C(v136, v418, &qword_1EAFA02E8);
      if (v139(v136 + v137, 1, v135) == 1)
      {
        sub_19A2F3FA0(v438, &qword_1EAFA02E8);
        sub_19A2F3FA0(v439, &qword_1EAFA02E8);
        (*v444)(v144, v135);
        v142 = v136;
        v143 = v427;
        v105 = v135;
        goto LABEL_72;
      }

      v147 = v136 + v137;
      v148 = v408;
      (*v406)(v408, v147, v135);
      sub_19A566458(&qword_1ED8252F0, MEMORY[0x1E6968FB0]);
      v149 = sub_19A572C2C();
      v150 = v136;
      v151 = *v444;
      (*v444)(v148, v135);
      sub_19A2F3FA0(v438, &qword_1EAFA02E8);
      sub_19A2F3FA0(v439, &qword_1EAFA02E8);
      v151(v418, v135);
      sub_19A2F3FA0(v150, &qword_1EAFA02E8);
      v143 = v427;
      v105 = v135;
      if (v149)
      {
        goto LABEL_76;
      }

LABEL_73:
      v145 = v411;
      v146 = v447;
      sub_19A55ECF4(v421, v446, v411);
      if (v146)
      {
      }

      else
      {
        if ((v434)(v145, 1, v105) != 1)
        {
          *&v461[0] = sub_19A55D694(v446);
          *(&v461[0] + 1) = v180;
          *&v460[0] = 0xD00000000000001BLL;
          *(&v460[0] + 1) = v387;
          *&v460[0] = sub_19A572F8C();
          *(&v460[0] + 1) = v181;
          sub_19A572ECC();

          v461[0] = v460[0];
          v182 = v431;
          v183 = v437;
          v429(v431, v410, v437);
          sub_19A2F4450();
          sub_19A570E8C();
          v184 = v182;
          v105 = v426;
          (*v414)(v184, v183);
          v143 = v427;

          (*v444)(v145, v105);
          v169 = 0;
LABEL_82:
          v170 = v412;
          v171 = v416;
          (v441)(v440, v169, 1, v105);
          sub_19A55EA80(v446, v170);
          v447 = 0;
          if ((*v389)(v170, 1, v171) == 1)
          {
            v172 = v170;
            v173 = &qword_1EAFA3740;
          }

          else
          {
            (*v386)(v143, v170, v171);
            sub_19A5714AC();
            if (*(&v460[1] + 1))
            {
              sub_19A2EA460(v460, v461);
              __swift_project_boxed_opaque_existential_1(v461, *(&v461[1] + 1));
              v185 = v397;
              v186 = v447;
              sub_19A57144C();
              if (!v186)
              {
                v259 = v390;
                v260 = v391;
                sub_19A57134C();
                (*v380)(v185, v259);
                v261 = sub_19A5713CC();
                v447 = 0;
                v263 = v262;
                (*v379)(v260, v392);
                (*v385)(v427, v416);
                __swift_destroy_boxed_opaque_existential_0Tm(v461);
                v264 = v445;
                v265 = swift_isUniquelyReferenced_nonNull_native();
                *&v461[0] = v264;
                sub_19A545CC8(v261, v263, 0, v265);
                v445 = *&v461[0];
                v179 = v425;
LABEL_98:
                v174 = v434;
                v178 = v440;
                goto LABEL_99;
              }

              (*v385)(v427, v416);
              __swift_destroy_boxed_opaque_existential_0Tm(v461);
              v447 = 0;
LABEL_93:
              v187 = v445;
              v188 = sub_19A31FDEC(0);
              if (v189)
              {
                v190 = v188;
                v191 = swift_isUniquelyReferenced_nonNull_native();
                *&v461[0] = v187;
                v179 = v425;
                if (!v191)
                {
                  sub_19A555938();
                  v179 = v425;
                  v187 = *&v461[0];
                }

                v445 = v187;
                sub_19A4F5308(v190, v187);
              }

              else
              {
                v179 = v425;
              }

              goto LABEL_98;
            }

            (*v385)(v143, v171);
            v172 = v460;
            v173 = &qword_1EAFA3718;
          }

          sub_19A2F3FA0(v172, v173);
          goto LABEL_93;
        }

        sub_19A2F3FA0(v145, &qword_1EAFA02E8);
      }

      v169 = 1;
      goto LABEL_82;
    }

    sub_19A2F3FA0(v106, &qword_1EAFA02E8);
    sub_19A2F3FA0(v138, &qword_1EAFA02E8);
    v141 = v139(v136 + v137, 1, v135) == 1;
    v142 = v136;
    v143 = v427;
    v105 = v135;
    if (!v141)
    {
LABEL_72:
      sub_19A2F3FA0(v142, &qword_1EAFA3818);
      goto LABEL_73;
    }

    sub_19A2F3FA0(v142, &qword_1EAFA02E8);
LABEL_76:
    v152 = *(v420 + v436);
    if (*(v152 + 16))
    {

      v153 = v446;
      v154 = sub_19A31FBD4(v446);
      if (v155)
      {
        v156 = v419;
        v157 = v404;
        (*(v419 + 16))(v404, *(v152 + 56) + *(v419 + 72) * v154, v105);

        v158 = v403;
        sub_19A570E0C();
        v159 = *(v156 + 8);
        v159(v157, v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
        v160 = swift_allocObject();
        *(v160 + 16) = v384;
        v161 = AppleDiffusionAdapter.rawValue.getter(v153);
        *&v461[0] = 0x736A2E6174656D2ELL;
        *(&v461[0] + 1) = 0xEA00000000006E6FLL;
        *&v460[0] = v161;
        *(&v460[0] + 1) = v162;
        *&v460[0] = sub_19A572F8C();
        *(&v460[0] + 1) = v163;
        sub_19A572ECC();
        v164 = *(&v460[0] + 1);
        *(v160 + 32) = *&v460[0];
        *(v160 + 40) = v164;
        v165 = v431;
        v166 = v437;
        v429(v431, v402, v437);
        sub_19A2F4450();
        sub_19A570E7C();

        v167 = v165;
        v105 = v426;
        (*v414)(v167, v166);
        v159(v158, v105);
        v168 = 0;
        goto LABEL_86;
      }
    }

    v168 = 1;
LABEL_86:
    v174 = v434;
    v175 = v409;
    (v441)(v409, v168, 1, v105);
    v176 = v175;
    v177 = v440;
    sub_19A5664A0(v176, v440);
    v178 = v177;
    v179 = v425;
LABEL_99:
    sub_19A33546C(v178, v179, &qword_1EAFA02E8);
    if (v174(v179, 1, v105) != 1)
    {
      v201 = v415;
      (*v406)(v415, v179, v105);
      v202 = v447;
      v203 = sub_19A570ECC();
      v106 = v438;
      if (v202)
      {

        type metadata accessor for AppleDiffusionMetadataError();
        sub_19A566458(&qword_1ED8252D0, type metadata accessor for AppleDiffusionMetadataError);
        v205 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*v444)(v201, v105);
        sub_19A2F3FA0(v440, &qword_1EAFA02E8);
        v447 = 0;
        v117 = v445;
        if (qword_1ED824D40 != -1)
        {
          swift_once();
        }

        v208 = sub_19A5723FC();
        __swift_project_value_buffer(v208, qword_1ED82BD48);
        v209 = v205;
        v210 = sub_19A5723DC();
        v211 = sub_19A57355C();

        if (os_log_type_enabled(v210, v211))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *&v461[0] = v109;
          *v107 = v393;
          v110 = AppleDiffusionAdapter.rawValue.getter(v446);
          v112 = sub_19A31F114(v110, v111, v461);
          v106 = v438;

          *(v107 + 4) = v112;
          *(v107 + 12) = 2112;
          v113 = v205;
          v114 = _swift_stdlib_bridgeErrorToNSError();
          *(v107 + 14) = v114;
          *v108 = v114;
          _os_log_impl(&dword_19A2DE000, v210, v211, "Failed to decode adapter metadata for %{public}s: %@", v107, 0x16u);
          sub_19A2F3FA0(v108, &qword_1EAF9FD28);
          v115 = v108;
          v116 = v446;
          MEMORY[0x19A902C50](v115, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v109);
          MEMORY[0x19A902C50](v109, -1, -1);
          v117 = v445;
          MEMORY[0x19A902C50](v107, -1, -1);

          v105 = v426;
          if (!*(v117 + 16))
          {
            goto LABEL_207;
          }

          goto LABEL_55;
        }

        v105 = v426;
LABEL_206:
        v116 = v446;
        if (!*(v117 + 16))
        {
          goto LABEL_207;
        }

        goto LABEL_55;
      }

      v206 = v203;
      v207 = v204;
      sub_19A5707EC();
      swift_allocObject();
      sub_19A5707DC();
      sub_19A53D438();
      sub_19A5707BC();
      v117 = v445;
      v382 = v206;
      v383 = v207;
      v447 = 0;

      memcpy(v460, v461, 0x168uLL);
      v212 = v388;
      v213 = swift_isUniquelyReferenced_nonNull_native();
      *v458 = v212;
      v214 = sub_19A31FBD4(v446);
      v216 = v212[2];
      v217 = (v215 & 1) == 0;
      v218 = __OFADD__(v216, v217);
      v219 = v216 + v217;
      if (v218)
      {
        goto LABEL_299;
      }

      v220 = v215;
      if (v212[3] >= v219)
      {
        if ((v213 & 1) == 0)
        {
          v272 = v214;
          sub_19A5557A0();
          v214 = v272;
          v106 = v438;
        }
      }

      else
      {
        sub_19A553B18(v219, v213);
        v214 = sub_19A31FBD4(v446);
        if ((v220 & 1) != (v221 & 1))
        {
LABEL_302:
          result = sub_19A57404C();
          __break(1u);
          return result;
        }
      }

      if (v220)
      {
        v222 = *v458;
        v223 = (*(*v458 + 56) + 360 * v214);
        memcpy(v459, v223, sizeof(v459));
        memcpy(v223, v460, 0x168uLL);
        sub_19A4B0CA8(v459);
        v224 = v222;
        v225 = v222[2];
        v388 = v222;
        if (!v225)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v224 = *v458;
        *(*v458 + 8 * (v214 >> 6) + 64) |= 1 << v214;
        *(v224[6] + v214) = v446;
        memcpy((v224[7] + 360 * v214), v460, 0x168uLL);
        v226 = v224[2];
        v218 = __OFADD__(v226, 1);
        v227 = v226 + 1;
        if (v218)
        {
          goto LABEL_300;
        }

        v224[2] = v227;
        v388 = v224;
        if (!v227)
        {
          goto LABEL_142;
        }
      }

      v228 = sub_19A31FBD4(v446);
      if (v229)
      {
        v230 = (v224[7] + 360 * v228);
        memcpy(v458, v230, sizeof(v458));
        memmove(v459, v230, 0x168uLL);
        nullsub_2(v459);
        sub_19A4895B4(v458, v457);
        goto LABEL_143;
      }

LABEL_142:
      sub_19A489428(v458);
      memcpy(v459, v458, sizeof(v459));
LABEL_143:
      memcpy(v458, v459, sizeof(v458));
      if (sub_19A489468(v458) == 1)
      {
        memcpy(v457, v459, 0x168uLL);
        sub_19A2F3FA0(v457, &qword_1EAFA2510);
      }

      else
      {
        v231 = v459[31];
        memcpy(v457, v459, 0x168uLL);

        sub_19A2F3FA0(v457, &qword_1EAFA2510);
        if (v231)
        {
          v232 = *(v231 + 16);
          if (v232)
          {
            v452 = MEMORY[0x1E69E7CC0];
            sub_19A322580(0, v232, 0);
            v233 = v452;
            v374 = v231;
            v234 = (v231 + 48);
            do
            {
              v235 = *(v234 - 16);
              v236 = *v234;
              *&v434 = *(v234 - 1);
              v234 += 4;
              v237 = 0xD000000000000014;
              if (v235 != 9)
              {
                v237 = 0x6E776F6E6B6E753CLL;
              }

              v238 = v395;
              if (v235 != 9)
              {
                v238 = 0xE90000000000003ELL;
              }

              if (v235 == 8)
              {
                v237 = 0x737265705F6D636CLL;
                v238 = 0xE800000000000000;
              }

              v239 = 0x63735F656C797473;
              if (v235 == 6)
              {
                v239 = 0x686374656B73;
              }

              v240 = 0xEE00656C62626972;
              if (v235 == 6)
              {
                v240 = 0xE600000000000000;
              }

              if (v235 == 5)
              {
                v239 = 0x61727473756C6C69;
                v240 = 0xEC0000006E6F6974;
              }

              if (v235 <= 7)
              {
                v237 = v239;
                v238 = v240;
              }

              v241 = 0x696A6F6D65;
              if (v235 != 3)
              {
                v241 = 7168876;
              }

              v242 = 0xE500000000000000;
              if (v235 != 3)
              {
                v242 = 0xE300000000000000;
              }

              if (v235 == 2)
              {
                v241 = 0x7472615F656E696CLL;
                v242 = 0xE800000000000000;
              }

              v243 = 0xE90000000000006ELL;
              v244 = 0x6F6974616D696E61;
              if (!v235)
              {
                v244 = 1936876912;
                v243 = 0xE400000000000000;
              }

              if (v235 <= 1)
              {
                v241 = v244;
                v242 = v243;
              }

              v245 = v235 <= 4;
              if (v235 <= 4)
              {
                v246 = v241;
              }

              else
              {
                v246 = v237;
              }

              if (v245)
              {
                v247 = v242;
              }

              else
              {
                v247 = v238;
              }

              *&v454 = v246;
              *(&v454 + 1) = v247;

              MEMORY[0x19A900A50](2112032, 0xE300000000000000);

              if (v236)
              {
                v248 = v434;
              }

              else
              {
                v248 = 0x6E776F6E6B6E753CLL;
              }

              if (v236)
              {
                v249 = v236;
              }

              else
              {
                v249 = 0xE90000000000003ELL;
              }

              MEMORY[0x19A900A50](v248, v249);

              v250 = v454;
              v452 = v233;
              v252 = *(v233 + 16);
              v251 = *(v233 + 24);
              if (v252 >= v251 >> 1)
              {
                sub_19A322580((v251 > 1), v252 + 1, 1);
                v233 = v452;
              }

              *(v233 + 16) = v252 + 1;
              *(v233 + 16 * v252 + 32) = v250;
              --v232;
            }

            while (v232);

            v105 = v426;
            v106 = v438;
          }

          else
          {

            v233 = MEMORY[0x1E69E7CC0];
          }

          *&v454 = v233;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
          sub_19A331C2C();
          v267 = sub_19A572BEC();
          v269 = v268;

          v270 = v445;
          v271 = swift_isUniquelyReferenced_nonNull_native();
          *&v454 = v270;
          sub_19A545CC8(v267, v269, 2u, v271);
          sub_19A33EFC4(v382, v383);
          v117 = v454;
          v258 = v415;
          goto LABEL_205;
        }
      }

      v253 = sub_19A31FDEC(2u);
      if (v254)
      {
        v255 = v253;
        v256 = swift_isUniquelyReferenced_nonNull_native();
        *&v457[0] = v117;
        v257 = v415;
        if ((v256 & 1) == 0)
        {
          sub_19A555938();
          v257 = v415;
          v117 = *&v457[0];
        }

        sub_19A4F5308(v255, v117);
        sub_19A33EFC4(v382, v383);
        v258 = v257;
      }

      else
      {
        sub_19A33EFC4(v382, v383);
        v258 = v415;
      }

LABEL_205:
      (*v444)(v258, v105);
      sub_19A2F3FA0(v440, &qword_1EAFA02E8);
      goto LABEL_206;
    }

    sub_19A2F3FA0(v179, &qword_1EAFA02E8);
    v106 = v438;
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v192 = sub_19A5723FC();
    __swift_project_value_buffer(v192, qword_1ED82BD48);
    v193 = sub_19A5723DC();
    v194 = sub_19A57356C();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v461[0] = v196;
      *v195 = v394;
      if (v446 <= 4)
      {
        if (v446 <= 1)
        {
          v197 = v447;
          v198 = v446;
          if (v446)
          {
            v200 = 0xD000000000000016;
          }

          else
          {
            v200 = 0x6F6974616D696E61;
          }

          if (v446)
          {
            v199 = v381;
          }

          else
          {
            v199 = 0xE90000000000006ELL;
          }
        }

        else if (v446 == 2)
        {
          v198 = 2;
          v197 = v447;
          v199 = 0xE500000000000000;
          v200 = 0x696A6F6D65;
        }

        else
        {
          v197 = v447;
          v198 = v446;
          if (v446 == 3)
          {
            v200 = 0xD000000000000012;
            v199 = v375;
          }

          else
          {
            v200 = 0x61727473756C6C69;
            v199 = 0xEC0000006E6F6974;
          }
        }
      }

      else if (v446 > 7)
      {
        if (v446 == 8)
        {
          v198 = 8;
          v197 = v447;
          v200 = 0x63735F656C797473;
          v199 = 0xEE00656C62626972;
        }

        else
        {
          v197 = v447;
          v198 = v446;
          if (v446 == 9)
          {
            v200 = 0xD00000000000001BLL;
            v199 = v378;
          }

          else
          {
            v200 = 0xD000000000000014;
            v199 = v395;
          }
        }
      }

      else if (v446 == 5)
      {
        v198 = 5;
        v197 = v447;
        v200 = 0xD000000000000019;
        v199 = v376;
      }

      else
      {
        v197 = v447;
        v198 = v446;
        if (v446 == 6)
        {
          v199 = 0xE600000000000000;
          v200 = 0x686374656B73;
        }

        else
        {
          v200 = 0xD000000000000013;
          v199 = v377;
        }
      }

      v447 = v197;
      v266 = sub_19A31F114(v200, v199, v461);

      *(v195 + 4) = v266;
      _os_log_impl(&dword_19A2DE000, v193, v194, "Known-to-framework adapter for %{public}s is not available on device.", v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v196);
      MEMORY[0x19A902C50](v196, -1, -1);
      MEMORY[0x19A902C50](v195, -1, -1);

      sub_19A2F3FA0(v440, &qword_1EAFA02E8);
      v105 = v426;
      v106 = v438;
      v116 = v198;
    }

    else
    {

      sub_19A2F3FA0(v440, &qword_1EAFA02E8);
      v116 = v446;
    }

    v117 = v445;
    if (*(v445 + 16))
    {
LABEL_55:
      v118 = v417;
      v119 = swift_isUniquelyReferenced_nonNull_native();
      *&v461[0] = v118;
      sub_19A545B00(v117, v116, v119);
      v417 = *&v461[0];
      goto LABEL_56;
    }

LABEL_207:

LABEL_56:
    v120 = v428;
    v103 = v432 + 1;
    if (v432 != 9)
    {
      continue;
    }

    break;
  }

  v273 = v413;
  *(v413 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata) = v388;
  *(v273 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterVersions) = v417;

  v274 = MEMORY[0x1E69E7CC0];
  v436 = sub_19A4E861C(MEMORY[0x1E69E7CC0]);
  *&v457[0] = sub_19A4E8710(v274);
  v432 = sub_19A4E8890(v274);
  v275 = 0;
  v445 = v420 + *(v398 + 24);
  v419 = *MEMORY[0x1E695FDB0];
  v427 = 0x800000019A5969A0;
  v424 = 0x800000019A5969E0;
  v425 = 0x800000019A5969C0;
  *&v276 = 136315394;
  v434 = v276;
  v422 = 0x7265646F636E65;
  v423 = 0xEA0000000000326BLL;
  while (2)
  {
    v278 = v105;
    v279 = v444;
    v446 = v275;
    v280 = *(&unk_1F0DB56B0 + v275 + 32);
    v281 = *v445;

    v282 = v433;
    v281(v280);

    *&v461[0] = 0x646C6D65726F632FLL;
    *(&v461[0] + 1) = 0xEF6E69622E617461;
    v283 = v431;
    v284 = v437;
    v429(v431, v410, v437);
    sub_19A2F4450();
    sub_19A570E8C();
    (*v414)(v283, v284);
    v285 = v447;
    v286 = sub_19A570ECC();
    if (v285)
    {
      v277 = *v279;
      v105 = v278;
      v277(v120, v278);
      v277(v282, v278);

      v447 = 0;
      goto LABEL_210;
    }

    LODWORD(v443) = v280;
    v288 = v286;
    v289 = *v279;
    v290 = v287;
    v105 = v278;
    v289(v120, v278);
    v291 = v290;
    v292 = v290 >> 62;
    v447 = 0;
    if ((v290 >> 62) > 1)
    {
      v294 = v288;
      if (v292 == 2)
      {
        v296 = *(v288 + 16);
        v295 = *(v288 + 24);
        sub_19A33EFC4(v294, v291);
        v218 = __OFSUB__(v295, v296);
        v297 = v295 - v296;
        v298 = v433;
        if (v218)
        {
          goto LABEL_298;
        }

        if (v297 <= 0)
        {
          goto LABEL_224;
        }

        goto LABEL_218;
      }

      sub_19A33EFC4(v288, v290);
      v315 = v433;
LABEL_226:
      v289(v315, v278);
      goto LABEL_210;
    }

    if (v292)
    {
      sub_19A33EFC4(v288, v290);
      LODWORD(v293) = HIDWORD(v288) - v288;
      if (__OFSUB__(HIDWORD(v288), v288))
      {
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
      }

      v293 = v293;
    }

    else
    {
      sub_19A33EFC4(v288, v290);
      v293 = BYTE6(v290);
    }

    v298 = v433;
    if (v293 <= 0)
    {
LABEL_224:
      v315 = v298;
      goto LABEL_226;
    }

LABEL_218:
    v442 = v289;
    v299 = sub_19A570DEC();
    v300 = objc_opt_self();
    *&v461[0] = 0;
    v301 = [v300 modelAssetWithURL:v299 error:v461];

    v302 = *&v461[0];
    if (!v301)
    {
      v316 = *&v461[0];
      v317 = sub_19A570D1C();

      swift_willThrow();
      v442(v298, v278);
LABEL_249:
      v314 = 0;
LABEL_250:
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      v447 = v314;
      v342 = sub_19A5723FC();
      __swift_project_value_buffer(v342, qword_1ED82BD48);
      v343 = v317;
      v344 = sub_19A5723DC();
      v345 = sub_19A57355C();

      if (os_log_type_enabled(v344, v345))
      {
        v346 = swift_slowAlloc();
        v347 = swift_slowAlloc();
        v348 = swift_slowAlloc();
        *&v461[0] = v348;
        *v346 = v434;
        if (v443 > 4)
        {
          v349 = 0xD000000000000010;
          if (v443 == 8)
          {
            v349 = 0xD000000000000011;
          }

          v350 = v427;
          if (v443 == 8)
          {
            v350 = v425;
          }

          if (v443 == 7)
          {
            v349 = 0xD000000000000011;
            v350 = v424;
          }

          v351 = 0x7265646F636564;
          if (v443 != 5)
          {
            v351 = 0x6365446168706C61;
          }

          v352 = 0xE700000000000000;
          if (v443 != 5)
          {
            v352 = 0xEC0000007265646FLL;
          }

          v353 = v443 <= 6;
        }

        else
        {
          v349 = 0x6F636E4570696C63;
          if (v443 != 3)
          {
            v349 = v422;
          }

          v350 = 0xEB00000000726564;
          if (v443 != 3)
          {
            v350 = 0xE700000000000000;
          }

          if (v443 == 2)
          {
            v349 = 0x6E75684374656E75;
            v350 = v423;
          }

          v351 = 1952804469;
          if (v443)
          {
            v351 = 0x6E75684374656E75;
          }

          v352 = 0xE400000000000000;
          if (v443)
          {
            v352 = 0xEA0000000000316BLL;
          }

          v353 = v443 <= 1;
        }

        if (v353)
        {
          v354 = v351;
        }

        else
        {
          v354 = v349;
        }

        if (v353)
        {
          v355 = v352;
        }

        else
        {
          v355 = v350;
        }

        v356 = sub_19A31F114(v354, v355, v461);

        *(v346 + 4) = v356;
        *(v346 + 12) = 2112;
        v357 = v317;
        v358 = _swift_stdlib_bridgeErrorToNSError();
        *(v346 + 14) = v358;
        *v347 = v358;
        _os_log_impl(&dword_19A2DE000, v344, v345, "Error decoding base model metadata for %s: %@", v346, 0x16u);
        sub_19A2F3FA0(v347, &qword_1EAF9FD28);
        MEMORY[0x19A902C50](v347, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v348);
        MEMORY[0x19A902C50](v348, -1, -1);
        MEMORY[0x19A902C50](v346, -1, -1);

        v105 = v426;
      }

      else
      {
      }

      v120 = v428;
      goto LABEL_210;
    }

    v303 = swift_allocObject();
    *(v303 + 16) = v301;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3820);
    v304 = swift_allocObject();
    *(v304 + 16) = 0;
    *(v304 + 24) = -1;
    v305 = v302;
    v439 = v301;

    v306 = dispatch_semaphore_create(0);
    v307 = sub_19A5731CC();
    v308 = *(v307 - 8);
    v309 = v407;
    (*(v308 + 56))(v407, 1, 1, v307);
    v310 = swift_allocObject();
    v310[2] = 0;
    v310[3] = 0;
    v310[4] = &unk_19A594F28;
    v310[5] = v303;
    v438 = v303;
    v310[6] = v304;
    v310[7] = v306;
    v311 = v309;
    v312 = v399;
    sub_19A33546C(v311, v399, &qword_1EAF9FD98);
    v313 = (*(v308 + 48))(v312, 1, v307);
    v440 = v304;

    v441 = v306;

    if (v313 == 1)
    {
      sub_19A2F3FA0(v312, &qword_1EAF9FD98);
    }

    else
    {
      sub_19A5731BC();
      (*(v308 + 8))(v312, v307);
    }

    v314 = v447;
    v318 = v442;
    v319 = v310[2];
    swift_unknownObjectRetain();

    if (v319)
    {
      swift_getObjectType();
      v320 = sub_19A57314C();
      v322 = v321;
      swift_unknownObjectRelease();
    }

    else
    {
      v320 = 0;
      v322 = 0;
    }

    sub_19A2F3FA0(v407, &qword_1EAF9FD98);
    v323 = swift_allocObject();
    *(v323 + 16) = &unk_19A594F38;
    *(v323 + 24) = v310;
    if (v322 | v320)
    {
      v449 = 0;
      v448 = 0;
      v450 = v320;
      v451 = v322;
    }

    v324 = v433;
    v325 = v440;
    swift_task_create();

    sub_19A57366C();
    v326 = *(v325 + 24);
    if (v326 == 255)
    {
      __break(1u);
      goto LABEL_302;
    }

    v317 = *(v325 + 16);
    v105 = v426;
    if (v326)
    {
      *&v461[0] = *(v325 + 16);
      v327 = v317;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();

      v318(v324, v105);

      goto LABEL_250;
    }

    v328 = v317;

    v329 = v436;
    v330 = swift_isUniquelyReferenced_nonNull_native();
    *&v461[0] = v329;
    v331 = v328;
    v332 = v443;
    sub_19A5459B8(v331, v443, v330);
    v333 = *&v461[0];
    v334 = *(*&v461[0] + 16);
    v436 = *&v461[0];
    if (!v334)
    {
      v341 = 0;
      v120 = v428;
      goto LABEL_247;
    }

    v335 = sub_19A31FCAC(v332);
    v120 = v428;
    if ((v336 & 1) == 0)
    {
LABEL_246:
      v341 = 0;
      goto LABEL_247;
    }

    v337 = [*(*(v333 + 56) + 8 * v335) metadata];
    type metadata accessor for MLModelMetadataKey(0);
    sub_19A566458(&qword_1ED823ED0, type metadata accessor for MLModelMetadataKey);
    v338 = sub_19A572AFC();

    if (!*(v338 + 16) || (v339 = sub_19A4F39EC(v419), (v340 & 1) == 0))
    {

      goto LABEL_246;
    }

    sub_19A334618(*(v338 + 56) + 32 * v339, v461);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290);
    if (swift_dynamicCast())
    {
      v341 = *&v460[0];
    }

    else
    {
      v341 = 0;
    }

LABEL_247:
    sub_19A52E514(v341, v462);
    if (v314)
    {
      v318(v324, v105);

      v317 = v314;
      goto LABEL_249;
    }

    *&v454 = sub_19A4E89AC(MEMORY[0x1E69E7CC0]);
    v359 = v463;
    if (v463)
    {
      v360 = v462[45];

      sub_19A549E7C(v360, v359, 1u);
    }

    memcpy(v460, v462, 0x168uLL);
    memcpy(v461, v462, 0x168uLL);
    v361 = sub_19A489468(v461);
    v447 = 0;
    if (v361 == 1)
    {
      v362 = v443;
      sub_19A565D74(v443, v458);
      sub_19A4F75E8(v462);
      memcpy(v459, v458, sizeof(v459));
      sub_19A2F3FA0(v459, &qword_1EAFA2510);
    }

    else
    {
      memcpy(v464, v460, sizeof(v464));
      memcpy(v459, v460, sizeof(v459));
      sub_19A4895B4(v459, v458);
      v363 = *&v457[0];
      v364 = swift_isUniquelyReferenced_nonNull_native();
      *v458 = v363;
      v362 = v443;
      sub_19A54585C(v464, v443, v364);
      sub_19A4F75E8(v462);
      *&v457[0] = *v458;
    }

    v365 = *v445;

    v365(v362);

    v366 = v362;
    v367 = v408;
    (*&v435[*(v398 + 24)])(v366);
    sub_19A566458(&qword_1ED8252F0, MEMORY[0x1E6968FB0]);
    v368 = sub_19A572C2C();
    v318(v367, v105);
    if ((v368 & 1) == 0)
    {
      v369 = v420[1];
      if (v369)
      {
        v370 = *v420;

        sub_19A549E7C(v370, v369, 0);
      }
    }

    v371 = v454;
    if (*(v454 + 16))
    {
      v372 = v432;
      v373 = swift_isUniquelyReferenced_nonNull_native();
      v459[0] = v372;
      sub_19A545814(v371, v443, v373);

      v432 = v459[0];
      v318(v396, v105);
      v318(v324, v105);
    }

    else
    {

      v318(v396, v105);
      v318(v324, v105);
    }

LABEL_210:
    v275 = (v446 + 1);
    if (v446 != 9)
    {
      continue;
    }

    break;
  }

  (*(v400 + 8))(v421, v401);
  sub_19A340740(v435);
  v96 = v413;
  *(v413 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_modelDescription) = v436;
  *(v96 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentVersions) = v432;
  *(v96 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentMetadata) = *&v457[0];

  return v96;
}

uint64_t sub_19A565700(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A565720, 0, 0);
}

uint64_t sub_19A565720()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19A56583C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19A354FC8;
  v0[13] = &block_descriptor_16;
  v0[14] = v2;
  [v1 modelDescriptionWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19A56583C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_19A511FA4;
  }

  else
  {
    v2 = sub_19A56594C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AppleDiffusionResourceFactory.imageClipEncoderVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentMetadata);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_19A31FCAC(0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  memmove(v5, (*(v1 + 56) + 360 * v2 + 32), 0x9DuLL);
  if (sub_19A4E7208(v5) == 1)
  {
    return 0;
  }

  if (v5[0] == 5)
  {
    return 0;
  }

  return v5[0];
}

uint64_t AppleDiffusionResourceFactory.textClipEncoderVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentMetadata);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_19A31FCAC(0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 56) + 360 * v2;
  if (*(v4 + 200) == 1)
  {
    return 0;
  }

  result = *(v4 + 208);
  if (result == 3)
  {
    return 0;
  }

  return result;
}

uint64_t AppleDiffusionResourceFactory.madPersonalizedEmbeddingRevision.getter()
{
  if (AppleDiffusionResourceFactory.imageClipEncoderVersion.getter() == 2)
  {

    goto LABEL_6;
  }

  v0 = sub_19A573F1C();

  if (v0)
  {
LABEL_6:
    if (AppleDiffusionResourceFactory.textClipEncoderVersion.getter() == 1)
    {

      return 8;
    }

    v3 = sub_19A573F1C();

    v4 = (v3 & 1) == 0;
    v5 = 7;
    goto LABEL_15;
  }

  v1 = AppleDiffusionResourceFactory.imageClipEncoderVersion.getter();
  if ((v1 > 1 || !v1) && (sub_19A573F1C() & 1) == 0)
  {
    return 3;
  }

  if (AppleDiffusionResourceFactory.textClipEncoderVersion.getter() == 1)
  {

    return 6;
  }

  v6 = sub_19A573F1C();

  v4 = (v6 & 1) == 0;
  v5 = 5;
LABEL_15:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t AppleDiffusionResourceFactory.deinit()
{
  sub_19A340740(v0 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs);

  return v0;
}

uint64_t AppleDiffusionResourceFactory.__deallocating_deinit()
{
  sub_19A340740(v0 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs);

  return swift_deallocClassInstance();
}

void *sub_19A565D74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = sub_19A31FCAC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    __src[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19A55561C();
      v9 = __src[0];
    }

    memmove(a2, (*(v9 + 56) + 360 * v7), 0x168uLL);
    sub_19A4F4FFC(v7, v9);
    *v3 = v9;
    return nullsub_2(a2);
  }

  else
  {
    sub_19A489428(__src);
    return memcpy(a2, __src, 0x168uLL);
  }
}

uint64_t sub_19A565E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_19A2EA460(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s13DiffusionBase05AppleA15ResourceFactoryC27areModelResourcesEquivalentySbSDySSSDyS2SGG_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v12 = v5;
    if (!v8)
    {
      break;
    }

    v13 = v8;
LABEL_10:
    v5 = 0;
    v8 = (v13 - 1) & v13;
    if (v12)
    {
      v15 = __clz(__rbit64(v13)) | (v11 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(a1 + 56) + 8 * v15);
      v20 = *(a2 + 16);

      if (v20 && (, v21 = sub_19A31F6BC(v18, v17), v23 = v22, , (v23 & 1) != 0))
      {
        v24 = *(*(a2 + 56) + 8 * v21);
      }

      else
      {
        v24 = 0;
      }

      v5 = sub_19A560F80(v24, v19);
    }
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return v5 & 1;
    }

    v13 = *(v4 + 8 * v14);
    ++v11;
    if (v13)
    {
      v11 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13DiffusionBase05AppleA15ResourceFactoryC9VersionerO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_19A566074()
{
  result = qword_1ED824F90;
  if (!qword_1ED824F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824F90);
  }

  return result;
}

uint64_t sub_19A5660F0()
{
  result = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A5661E0()
{
  result = sub_19A5714FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A566280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A5662E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return sub_19A565700(a1, v4);
}

uint64_t sub_19A566384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A2F759C;

  return sub_19A4F33B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19A566458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A5664A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A56653C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA26F0);
  sub_19A57414C();
  result = sub_19A57378C();
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

uint64_t sub_19A566600()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA26F0);
  sub_19A57414C();
  v2 = sub_19A57378C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_19A5666BC()
{
  sub_19A566600();

  return swift_deallocClassInstance();
}

uint64_t sub_19A566738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_19A566780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A5667D0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))();
  if (!v2)
  {
    return (*(a2 + 16))(a1, a2);
  }

  return result;
}

id sub_19A566830()
{
  v2 = v0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(v0);
  v4 = PixelFormatType;
  if (PixelFormatType != 1278226488 && PixelFormatType != 1111970369)
  {
    sub_19A567910();
    swift_allocError();
    *v8 = 0xD000000000000059;
    *(v8 + 8) = 0x800000019A59DDB0;
    *(v8 + 16) = 2;
    goto LABEL_6;
  }

  v5 = CVPixelBufferLockBaseAddress(v2, 1uLL);
  if (v5)
  {
    v6 = v5;
    sub_19A567910();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
LABEL_6:
    swift_willThrow();
    return v4;
  }

  CVPixelBufferGetHeight(v2);
  CVPixelBufferGetWidth(v2);
  if (v4 != 1278226488)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_19A590570;
    *(v14 + 32) = sub_19A5733BC();
    *(v14 + 40) = sub_19A5733BC();
    *(v14 + 48) = sub_19A5733BC();
    *(v14 + 56) = sub_19A5733BC();
    v15 = objc_allocWithZone(MEMORY[0x1E695FED0]);
    v16 = v14;
    v4 = v15;
    v17 = sub_19A52A8D8(v16, 65568);
    if (!v1)
    {
      v4 = v17;
      CVPixelBufferGetBaseAddress(v2);
      if ((CVPixelBufferGetHeight(v2) & 0x8000000000000000) != 0)
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      if ((CVPixelBufferGetWidth(v2) & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
      MEMORY[0x1EEE9AC00](BytesPerRow);
      sub_19A5734DC();
    }

LABEL_19:
    CVPixelBufferUnlockBaseAddress(v2, 1uLL);
    return v4;
  }

  result = CVPixelBufferGetBaseAddress(v2);
  if (result)
  {
    if ((CVPixelBufferGetHeight(v2) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if ((CVPixelBufferGetWidth(v2) & 0x8000000000000000) == 0)
    {
      CVPixelBufferGetBytesPerRow(v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_19A590570;
      *(v10 + 32) = sub_19A5733BC();
      *(v10 + 40) = sub_19A5733BC();
      *(v10 + 48) = sub_19A5733BC();
      *(v10 + 56) = sub_19A5733BC();
      v11 = objc_allocWithZone(MEMORY[0x1E695FED0]);
      v12 = v10;
      v4 = v11;
      v13 = sub_19A52A8D8(v12, 65568);
      if (!v1)
      {
        v4 = MEMORY[0x1EEE9AC00](v13);
        sub_19A5734DC();
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_19A566C70()
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetPixelFormatType(v0) != 1111970369)
  {
    sub_19A567910();
    swift_allocError();
    *v36 = 0xD000000000000035;
    *(v36 + 8) = 0x800000019A597C10;
    *(v36 + 16) = 2;
    swift_willThrow();
    return;
  }

  v2 = sub_19A566830();
  if (v1)
  {
    return;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19A590570;
  sub_19A2F1600(0, &qword_1ED823EA8);
  *(v4 + 32) = sub_19A57372C();
  *(v4 + 40) = sub_19A57372C();
  v5 = [v3 shape];
  v6 = sub_19A57308C();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x19A901520](2, v6);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(v6 + 48);
  }

  v8 = v7;

  *(v4 + 48) = v8;
  v9 = [v3 shape];
  v10 = sub_19A57308C();

  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v11 = *(v10 + 56);
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
  }

  v11 = MEMORY[0x19A901520](3, v10);
LABEL_9:
  v12 = v11;

  *(v4 + 56) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19A590570;
  *(v13 + 32) = sub_19A57372C();
  *(v13 + 40) = sub_19A57372C();
  *(v13 + 48) = sub_19A57372C();
  *(v13 + 56) = sub_19A57372C();
  v14 = sub_19A57307C();

  v15 = sub_19A57307C();
  v40[0] = 0;
  v16 = [v3 sliceAtOrigin:v14 shape:v15 squeeze:0 error:v40];

  v17 = v40[0];
  if (v16)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_19A590570;
    v19 = v17;
    *(v18 + 32) = sub_19A57372C();
    *(v18 + 40) = sub_19A57372C();
    *(v18 + 48) = sub_19A57372C();
    *(v18 + 56) = sub_19A57372C();
    v20 = sub_19A57307C();

    v21 = sub_19A57307C();
    v40[0] = 0;
    v22 = [v3 sliceAtOrigin:v20 shape:v21 squeeze:0 error:v40];

    v23 = v40[0];
    if (v22)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_19A590570;
      v25 = v23;
      *(v24 + 32) = sub_19A57372C();
      *(v24 + 40) = sub_19A57372C();
      *(v24 + 48) = sub_19A57372C();
      *(v24 + 56) = sub_19A57372C();
      v26 = sub_19A57307C();

      v27 = sub_19A57307C();

      v40[0] = 0;
      v28 = [v3 sliceAtOrigin:v26 shape:v27 squeeze:0 error:v40];

      v29 = v40[0];
      if (v28)
      {
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_19A590950;
        *(v30 + 32) = v16;
        *(v30 + 40) = v22;
        *(v30 + 48) = v28;
        sub_19A2F1600(0, &qword_1ED823EE0);
        v31 = v29;
        v32 = v16;
        v33 = v22;
        v34 = v28;
        v35 = sub_19A57307C();

        [objc_opt_self() multiArrayByConcatenatingMultiArrays:v35 alongAxis:1 dataType:65568];

        return;
      }

      v39 = v40[0];
      sub_19A570D1C();

      swift_willThrow();
    }

    else
    {
      v38 = v40[0];

      sub_19A570D1C();

      swift_willThrow();
    }
  }

  else
  {
    v37 = v40[0];

    sub_19A570D1C();

    swift_willThrow();
  }
}

vImage_Error sub_19A567260(void *a1, Pixel_F a2, Pixel_F a3, uint64_t a4, uint64_t a5, vImagePixelCount a6, vImagePixelCount a7, const vImage_Buffer *a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C78);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_19A57076C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_13:
    __break(1u);
  }

  if (((a7 | a6) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a5 + 16) < 3uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = *(a5 + 48);
  if ((v22 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  dest.data = a1;
  dest.height = a6;
  dest.width = a7;
  dest.rowBytes = 4 * v22;
  result = vImageConvert_Planar8toPlanarF(a8, &dest, a3, a2, 0);
  if (result)
  {
    v24 = result;
    sub_19A57075C();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_19A5679AC(v17);
      sub_19A567910();
      swift_allocError();
      *v25 = v24;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      return swift_willThrow();
    }

    else
    {
      (*(v19 + 32))(v21, v17, v18);
      sub_19A39690C(&qword_1EAFA0C80, MEMORY[0x1E69E5B48]);
      swift_allocError();
      (*(v19 + 16))(v26, v21, v18);
      swift_willThrow();
      return (*(v19 + 8))(v21, v18);
    }
  }

  return result;
}

uint64_t sub_19A56754C(char *a1, int32x2_t a2, int32x2_t a3, uint64_t a4, void *a5, vImagePixelCount a6, vImagePixelCount a7, const vImage_Buffer *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a5[2];
  if (v8 < 2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v8 == 2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a5[6];
  if ((v9 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_15;
  }

  v10 = a5[5];
  if (v10 + 0x4000000000000000 < 0)
  {
    goto LABEL_12;
  }

  if ((v10 * 3) >> 64 != (3 * v10) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (((a7 | a6) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  green.data = a1;
  green.height = a6;
  green.width = a7;
  green.rowBytes = 4 * v9;
  red.data = &a1[4 * v10];
  red.height = a6;
  red.width = a7;
  red.rowBytes = 4 * v9;
  alpha.data = &a1[8 * v10];
  alpha.height = a6;
  alpha.width = a7;
  alpha.rowBytes = 4 * v9;
  blue.data = &a1[12 * v10];
  blue.height = a6;
  blue.width = a7;
  blue.rowBytes = 4 * v9;
  v12 = sub_19A5730DC();
  v12[1].i64[0] = 4;
  v12[2] = vdupq_lane_s32(a3, 0);
  i32 = v12[2].i32;
  v14 = sub_19A5730DC();
  *(v14 + 16) = 4;
  *(v14 + 32) = vdupq_lane_s32(a2, 0);
  vImageConvert_ARGB8888toPlanarF(a8, &alpha, &red, &green, &blue, i32, (v14 + 32), 0);
}

CVPixelBufferRef sub_19A5676E4(size_t a1, size_t a2, OSType a3)
{
  v19[15] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  v7 = *MEMORY[0x1E69660E8];
  *(inited + 32) = *MEMORY[0x1E69660E8];
  v8 = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v9 = *MEMORY[0x1E69660D8];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_19A32F574(MEMORY[0x1E69E7CC0]);
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C68);
  *(inited + 80) = v12;
  sub_19A32F6B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E80);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_19A39690C(&qword_1ED823F10, type metadata accessor for CFString);
  v13 = sub_19A572ADC();

  v19[0] = 0;
  result = CVPixelBufferCreate(0, a1, a2, a3, v13, v19);
  v15 = v19[0];
  if (result)
  {
    v16 = result;
    sub_19A567910();
    swift_allocError();
    *v17 = v16;
    *(v17 + 8) = 0;
    *(v17 + 16) = 1;
    swift_willThrow();
LABEL_5:

    return v15;
  }

  if (v19[0])
  {
    v18 = v19[0];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_19A567910()
{
  result = qword_1EAFA3830;
  if (!qword_1EAFA3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3830);
  }

  return result;
}

uint64_t sub_19A567964(char *a1, uint64_t a2, void *a3, int32x2_t a4, int32x2_t a5)
{
  a4.i32[0] = *(v5 + 32);
  a5.i32[0] = *(v5 + 36);
  return sub_19A56754C(a1, a4, a5, a2, a3, *(v5 + 16), *(v5 + 24), *(v5 + 40));
}

uint64_t sub_19A5679AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LCMScheduler.__allocating_init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:predictionType:generator:)(unint64_t *a1, unint64_t a2, char a3, char a4, uint64_t a5, float a6, float a7)
{
  v14 = swift_allocObject();
  LCMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:predictionType:generator:)(a1, a2, a3 & 1, a4, a5, a6, a7);
  return v14;
}

char **LCMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:predictionType:generator:)(unint64_t *a1, unint64_t a2, char a3, char a4, uint64_t a5, float a6, float a7)
{
  v11 = a2;
  v12 = a1;
  v13 = MEMORY[0x1E69E7CC0];
  v7[15] = MEMORY[0x1E69E7CC0];
  *(v7 + 32) = 1092616192;
  v7[2] = a2;
  v7[3] = a1;
  *(v7 + 112) = a4;
  sub_19A2F3EF0(a5, (v7 + 9));
  if (a3)
  {
    v14 = fabsf(sqrtf(a6));
    if (a6 == -INFINITY)
    {
      v14 = INFINITY;
    }

    v15 = fabsf(sqrtf(a7));
    if (a7 == -INFINITY)
    {
      v16 = INFINITY;
    }

    else
    {
      v16 = v15;
    }

    v17 = sub_19A51B9CC(v11, v14, v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v71 = v13;
      v19 = v17;
      sub_19A4E44CC(0, v18, 0);
      v20 = v19;
      v21 = v71;
      v22 = *(v71 + 2);
      v23 = 32;
      do
      {
        v24 = *(v20 + v23);
        v71 = v21;
        v25 = *(v21 + 24);
        if (v22 >= v25 >> 1)
        {
          sub_19A4E44CC((v25 > 1), v22 + 1, 1);
          v20 = v19;
          v21 = v71;
        }

        *(v21 + 16) = v22 + 1;
        *(v21 + 4 * v22 + 32) = v24 * v24;
        v23 += 4;
        ++v22;
        --v18;
      }

      while (v18);
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v21 = sub_19A51B9CC(v11, a6, a7);
  }

  v7[4] = v21;
  v26 = *(v21 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v71 = MEMORY[0x1E69E7CC0];

    sub_19A4E44CC(0, v26, 0);
    v27 = v71;
    v28 = *(v71 + 2);
    v29 = 32;
    do
    {
      v30 = *(v21 + v29);
      v71 = v27;
      v31 = *(v27 + 3);
      if (v28 >= v31 >> 1)
      {
        sub_19A4E44CC((v31 > 1), v28 + 1, 1);
        v27 = v71;
      }

      *(v27 + 2) = v28 + 1;
      *&v27[4 * v28 + 32] = 1.0 - v30;
      v29 += 4;
      ++v28;
      --v26;
    }

    while (v26);
  }

  v7[5] = v27;
  v32 = *(v27 + 2);
  v33 = v32 - 1;
  if (v32 != 1)
  {
    if (!v32)
    {
      goto LABEL_83;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v34 = 0;
      while (v34 < *(v27 + 2))
      {
        *&v27[4 * v34 + 36] = *&v27[4 * v34 + 32] * *&v27[4 * v34 + 36];
        if (v33 == ++v34)
        {
          goto LABEL_29;
        }
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v27 = sub_19A4E52CC(v27);
    }
  }

LABEL_29:
  v7[6] = v27;
  v69 = v7;
  *(v7 + 14) = 1065353216;
  v35 = v11 / 50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
  v11 = swift_allocObject();
  v36 = _swift_stdlib_malloc_size(v11);
  v37 = v36 - 32;
  if (v36 < 32)
  {
    v37 = v36 - 25;
  }

  *(v11 + 16) = 50;
  *(v11 + 24) = 2 * (v37 >> 3);
  v38 = 1;
  v39 = 32;
  while (1)
  {
    if (v38 == 50)
    {
      v40 = 0;
    }

    else
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_82;
      }
    }

    *(v11 + v39) = v38;
    if (v39 == 424)
    {
      break;
    }

    v39 += 8;
    v41 = v38 == 50;
    v38 = v40;
    if (v41)
    {
      __break(1u);
      break;
    }
  }

  v42 = *(v11 + 16);
  if (v42)
  {
    v71 = MEMORY[0x1E69E7CC0];

    sub_19A4E44CC(0, v42, 0);
    v33 = 32;
    v7 = v71;
    while (1)
    {
      v43 = *(v11 + v33);
      v44 = v43 * v35;
      if ((v43 * v35) >> 64 != (v43 * v35) >> 63)
      {
        break;
      }

      v45 = v44 - 1;
      if (__OFSUB__(v44, 1))
      {
        goto LABEL_74;
      }

      v71 = v7;
      v47 = v7[2];
      v46 = v7[3];
      if (v47 >= v46 >> 1)
      {
        sub_19A4E44CC((v46 > 1), v47 + 1, 1);
        v7 = v71;
      }

      v7[2] = (v47 + 1);
      *(v7 + v47 + 8) = v45;
      v33 += 8;
      if (!--v42)
      {

        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v48 = sub_19A5577A8(v7);
  if (__OFADD__(v12, 1))
  {
    goto LABEL_84;
  }

  v49 = sub_19A51B9CC(v12 + 1, 0.0, *(v48 + 16));
  sub_19A5253A8(1uLL, v49);
  v33 = v52 >> 1;
  v53 = (v52 >> 1) - v51;
  if (__OFSUB__(v52 >> 1, v51))
  {
    goto LABEL_85;
  }

  if (v53)
  {
    v54 = v50;
    v55 = v51;
    v71 = MEMORY[0x1E69E7CC0];
    v7 = &v71;
    sub_19A3225A0(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
      goto LABEL_86;
    }

    v68 = v48;
    v12 = v71;
    if (v55 <= v33)
    {
      v56 = v33;
    }

    else
    {
      v56 = v55;
    }

    v57 = v56 - v55;
    v58 = (v54 + 4 * v55);
    v33 = 3741319169;
    while (v57)
    {
      v59 = floorf(*v58);
      if ((LODWORD(v59) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_76;
      }

      if (v59 <= -9.2234e18)
      {
        goto LABEL_77;
      }

      if (v59 >= 9.2234e18)
      {
        goto LABEL_78;
      }

      v71 = v12;
      v11 = v12[2];
      v60 = v12[3];
      if (v11 >= v60 >> 1)
      {
        v7 = &v71;
        sub_19A3225A0((v60 > 1), v11 + 1, 1);
        v12 = v71;
      }

      v12[2] = v11 + 1;
      v12[v11 + 4] = v59;
      --v57;
      ++v58;
      if (!--v53)
      {
        swift_unknownObjectRelease();
        v48 = v68;
        goto LABEL_65;
      }
    }

    goto LABEL_75;
  }

  swift_unknownObjectRelease();
  v12 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v61 = v12[2];
  v33 = MEMORY[0x1E69E7CC0];
  if (v61)
  {
    v71 = MEMORY[0x1E69E7CC0];
    v7 = &v71;
    sub_19A4E44CC(0, v61, 0);
    v33 = v71;
    v62 = v12 + 4;
    while (1)
    {
      v64 = *v62++;
      v63 = v64;
      if ((v64 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v63 >= *(v48 + 16))
      {
        goto LABEL_80;
      }

      v65 = *(v48 + 32 + 4 * v63);
      v71 = v33;
      v11 = *(v33 + 16);
      v66 = *(v33 + 24);
      if (v11 >= v66 >> 1)
      {
        v7 = &v71;
        sub_19A4E44CC((v66 > 1), v11 + 1, 1);
        v33 = v71;
      }

      *(v33 + 16) = v11 + 1;
      *(v33 + 4 * v11 + 32) = v65;
      if (!--v61)
      {
        goto LABEL_72;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_72:
  __swift_destroy_boxed_opaque_existential_0Tm(a5);

  v69[8] = v33;

  return v69;
}

void LCMScheduler.step(output:timeStep:sample:)(uint64_t a1@<X8>, float a2@<S0>)
{
  v66 = a1;
  v3 = v2;
  v67 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28);
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v59 - v17;
  v18 = v3[8];
  v19 = *(v18 + 16);
  v20 = v18 + 32;
  if (v19)
  {
    v21 = 0;
    while (*(v20 + 4 * v21) != a2)
    {
      if (v19 == ++v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v19 - 1;
  }

  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v23 = a2;
  if (v22 < v19)
  {
    if (v22 < 0)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v23 = *(v20 + 4 * v22);
  }

  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_33;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a2 >= 9.2234e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = a2;
  if (a2 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = v3[6];
  v26 = *(v25 + 16);
  if (v26 <= v24)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = v25 + 32;
  v28 = *(v27 + 4 * v24);
  v29 = 1.0;
  if (v23 >= 0.0)
  {
    if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v23 <= -9.2234e18)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v23 >= 9.2234e18)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v30 = v23;
    if (v23 < 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v26 <= v30)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v29 = *(v27 + 4 * v30);
  }

  v61 = v7;
  v62 = v10;
  v31 = sqrtf(v28);
  v32 = sqrtf(1.0 - v28);
  v33.f32[0] = fabsf(sqrtf(((a2 * 10.0) * (a2 * 10.0)) + 0.25));
  __asm { FMOV            V4.2S, #0.25 }

  _D4.f32[0] = a2 * 10.0;
  v33.f32[1] = ((a2 * 10.0) * (a2 * 10.0)) + 0.25;
  v39 = vdiv_f32(_D4, v33);
  v40 = *(v3 + 112);
  v65 = v16;
  if (v40)
  {
    v41 = v15;
    if (v40 == 1)
    {
      v42 = 0;
      v43 = sub_19A56885C;
      goto LABEL_28;
    }

    v43 = sub_19A5689EC;
    v44 = v31;
    v31 = v32;
  }

  else
  {
    v43 = sub_19A568A00;
    v41 = v15;
    v44 = v32;
  }

  v42 = swift_allocObject();
  *(v42 + 16) = v44;
  *(v42 + 20) = v31;

LABEL_28:
  MEMORY[0x1EEE9AC00](v15);
  *(&v59 - 4) = v43;
  *(&v59 - 3) = v42;
  *(&v59 - 2) = v39;
  sub_19A51ACBC();

  v45 = v3[3];
  _VF = __OFSUB__(v45, 1);
  v46 = v45 - 1;
  if (_VF)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v21 == v46)
  {

    (*(v65 + 32))(v66, v68, v41);
  }

  else
  {
    v47 = v41;
    v60 = v13;
    v48 = sub_19A57263C();
    swift_beginAccess();
    v49 = v3[12];
    v50 = v3[13];
    v52 = v63;
    v51 = v64;
    __swift_mutable_project_boxed_opaque_existential_1((v3 + 9), v49);
    v53 = v62;
    (*(v50 + 16))(v48, v49, v50, 0.0, 1.0);
    swift_endAccess();

    v54 = v51;
    (*(v52 + 16))(v61, v53, v51);
    sub_19A525F54(&qword_1ED823FD0, &qword_1EAFA2C30);
    sub_19A525F54(&qword_1EAF9E950, &unk_1EAFA2F28);
    v55 = v60;
    v56 = sub_19A5726BC();
    MEMORY[0x1EEE9AC00](v56);
    *(&v59 - 4) = sqrtf(v29);
    *(&v59 - 3) = sqrtf(1.0 - v29);
    v57 = v68;
    sub_19A51ACBC();

    v58 = *(v65 + 8);
    v58(v55, v47);
    (*(v52 + 8))(v53, v54);
    v58(v57, v47);
  }
}

uint64_t LCMScheduler.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 72);

  return v0;
}

uint64_t LCMScheduler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_19A568930(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    LODWORD(v6) = a4;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    LODWORD(v4) = HIDWORD(a4) - a4;
    if (HIDWORD(a4) >= a4)
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }

    if (a4 != HIDWORD(a4))
    {
      v5 = 0;
      while (HIDWORD(a4) >= a4)
      {
        if (v4 == v5)
        {
          goto LABEL_19;
        }

        *(a2 + 4 * v5) = a4 + v5;
        if (a3 - 1 == v5)
        {
          LODWORD(v6) = a4 + v5 + 1;
          goto LABEL_16;
        }

        if (!(a4 - HIDWORD(a4) + ++v5))
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_13:
    v6 = HIDWORD(a4);
    a3 = (HIDWORD(a4) - a4);
LABEL_16:
    *result = a4;
    *(result + 8) = v6;
    return a3;
  }

LABEL_20:
  __break(1u);
  return result;
}

float sub_19A5689CC@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = (*(v3 + 16) * *a1) + (*(v3 + 20) * *a2);
  *a3 = result;
  return result;
}

uint64_t ManagedMLModel.__allocating_init(modelAt:configuration:entryPoints:name:)(char *a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, __int16 a6)
{
  v12 = swift_allocObject();
  ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(a1, a2, a3, a4, a5, a6 & 0x1FF);
  return v12;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedMLModel.loadResources()()
{
  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v0 = sub_19A5723FC();
  __swift_project_value_buffer(v0, qword_1ED82BD48);

  v1 = sub_19A5723DC();
  v2 = sub_19A57354C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_19A57397C();
    v7 = sub_19A31F114(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_19A2DE000, v1, v2, "Loading resources for %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x19A902C50](v4, -1, -1);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  sub_19A5735DC();
}

Swift::Void __swiftcall ManagedMLModel.unloadResources()()
{
  v1 = v0;
  v2 = sub_19A57296C();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A57298C();
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v20 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v8 = sub_19A5723FC();
  __swift_project_value_buffer(v8, qword_1ED82BD48);

  v9 = sub_19A5723DC();
  v10 = sub_19A57354C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v13 = sub_19A57397C();
    v15 = sub_19A31F114(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_19A2DE000, v9, v10, "Unloading resources for %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x19A902C50](v12, -1, -1);
    MEMORY[0x19A902C50](v11, -1, -1);
  }

  aBlock[4] = sub_19A524C84;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A56A960;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);

  v17 = v20;
  sub_19A57297C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_19A56DAB4(&qword_1EAF9E928, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33A0);
  sub_19A56DAFC(&qword_1EAF9E888, &qword_1EAFA33A0);
  sub_19A57388C();
  MEMORY[0x19A901160](0, v17, v4, v16);
  _Block_release(v16);
  (*(v19 + 8))(v4, v2);
  (*(v22 + 8))(v17, v21);
}

uint64_t ManagedMLModel.perform<A>(_:_:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0);
  sub_19A5735DC();
  if (!v0)
  {
    v1 = sub_19A56D50C(v3);
  }

  return v1;
}

{
  return sub_19A5735DC();
}

uint64_t ManagedMLModel.perform<A>(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a2;
  v91 = a1;
  v77 = sub_19A57274C();
  v90 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v14 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  v87 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  v100 = a5;
  v101 = a3;
  v102 = a4;
  v103 = v5;
  v20 = *(v5 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
  v94 = v5;
  v95 = v91;
  v96 = v92;
  v97 = sub_19A56DA68;
  v98 = &v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3288);
  v21 = v20;
  v22 = v93;
  sub_19A5735DC();
  if (v22)
  {
    return v21;
  }

  v23 = v90;
  v92 = v16;
  v83 = v14;
  v89 = v13;
  v84 = v10;
  v80 = v19;
  v24 = v104;
  v25 = *(v104 + 16);
  if (!v25)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v82 = 0;
  v106 = MEMORY[0x1E69E7CC0];
  sub_19A4E43AC(0, v25, 0);
  v21 = v106;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3290);
  v73 = result;
  v27 = 0;
  v72 = v24 + 32;
  v76 = (v23 + 32);
  v75 = (v23 + 16);
  v74 = (v23 + 8);
  v28 = v84;
  v71 = v24;
  v70 = v25;
  while (v27 < *(v24 + 16))
  {
    v79 = v21;
    v78 = v27 + 1;
    v29 = *(v72 + 8 * v27);
    v30 = sub_19A573BBC();
    v31 = v89;
    v32 = v30;
    v33 = v29 + 64;
    v34 = 1 << *(v29 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v29 + 64);
    v37 = (v34 + 63) >> 6;
    v85 = v30 + 64;
    v88 = v29;

    v38 = 0;
    v39 = v80;
    v40 = v87;
    v86 = v32;
    if (v36)
    {
      while (1)
      {
        v41 = __clz(__rbit64(v36));
        v42 = (v36 - 1) & v36;
LABEL_15:
        v45 = v41 | (v38 << 6);
        v46 = *(v88 + 56);
        v47 = (*(v88 + 48) + 16 * v45);
        v49 = *v47;
        v48 = v47[1];
        v91 = v49;
        v93 = v48;
        sub_19A50B848(v46 + *(v40 + 72) * v45, v39);
        sub_19A50B848(v39, v92);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v90 = v42;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v51 = v77;
            (*v76)(v31, v92, v77);
            sub_19A2F1600(0, &unk_1EAF9E7B8);
            (*v75)(v28, v89, v51);
            v52 = v93;

            v53 = sub_19A57359C();
            v31 = v89;
            v54 = v53;
            (*v74)(v89, v51);
          }

          else
          {
            v62 = *v92;
            v63 = objc_opt_self();
            v52 = v93;

            v54 = [v63 featureValueWithPixelBuffer_];

            v31 = v89;
          }

          result = sub_19A50B8AC(v39);
          v32 = v86;
        }

        else
        {
          v55 = v92[1];
          v57 = v92[2];
          v56 = v92[3];
          v58 = v92[4];
          v104 = *v92;
          v21 = v104;
          v105 = v55;

          v81 = v55;
          sub_19A356EC8(v21, v55);
          v59 = v82;
          v60 = sub_19A56CFB0(&v104, v57, v56, v58);
          v82 = v59;
          if (v59)
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            sub_19A33EFC4(v21, v81);
            sub_19A33EFC4(v104, v105);
            sub_19A50B8AC(v80);

            return v21;
          }

          v61 = v60;
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v54 = [objc_opt_self() featureValueWithMultiArray_];

          sub_19A33EFC4(v21, v81);
          sub_19A33EFC4(v104, v105);
          v39 = v80;
          result = sub_19A50B8AC(v80);
          v31 = v89;
          v32 = v86;
          v52 = v93;
        }

        *(v85 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        v64 = (v32[6] + 16 * v45);
        *v64 = v91;
        v64[1] = v52;
        *(v32[7] + 8 * v45) = v54;
        v65 = v32[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        v40 = v87;
        if (v66)
        {
          break;
        }

        v32[2] = v67;
        v28 = v84;
        v36 = v90;
        if (!v90)
        {
          goto LABEL_10;
        }
      }

LABEL_33:
      __break(1u);
      break;
    }

LABEL_10:
    v43 = v38;
    while (1)
    {
      v38 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v38 >= v37)
      {
        break;
      }

      v44 = *(v33 + 8 * v38);
      ++v43;
      if (v44)
      {
        v41 = __clz(__rbit64(v44));
        v42 = (v44 - 1) & v44;
        goto LABEL_15;
      }
    }

    v21 = v79;
    v106 = v79;
    v69 = *(v79 + 16);
    v68 = *(v79 + 24);
    if (v69 >= v68 >> 1)
    {
      result = sub_19A4E43AC((v68 > 1), v69 + 1, 1);
      v21 = v106;
    }

    *(v21 + 16) = v69 + 1;
    *(v21 + 8 * v69 + 32) = v32;
    v27 = v78;
    v24 = v71;
    if (v78 == v70)
    {

      return v21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A569948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  if (!*(*a1 + 16))
  {
    if (qword_1ED824D40 != -1)
    {
LABEL_36:
      swift_once();
    }

    v5 = sub_19A5723FC();
    __swift_project_value_buffer(v5, qword_1ED82BD48);

    v6 = sub_19A5723DC();
    v7 = sub_19A57355C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v3;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v54 = v10;
      *v9 = 136315138;
      v11 = sub_19A57397C();
      v13 = sub_19A31F114(v11, v12, &v54);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_19A2DE000, v6, v7, "Attempting to read model descriptions before loading %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x19A902C50](v10, -1, -1);
      v14 = v9;
      v3 = v8;
      MEMORY[0x19A902C50](v14, -1, -1);
    }
  }

  v15 = sub_19A4E807C(MEMORY[0x1E69E7CC0]);
  v16 = 1 << *(v4 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v4 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v18)
        {
          while (1)
          {
            v21 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v21 >= v19)
            {

              *a2 = v15;
              return result;
            }

            v18 = *(v4 + 64 + 8 * v21);
            ++v20;
            if (v18)
            {
              v20 = v21;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_36;
        }

LABEL_14:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = (v20 << 10) | (16 * v22);
        v24 = *(v4 + 56) + v23;
      }

      while ((*(v24 + 8) & 1) != 0);
      v53 = *(*(v4 + 48) + v23);
      v25 = *v24;
      sub_19A2EA56C(*v24);

      v26 = [v25 modelDescription];
      if (v26)
      {
        break;
      }

      v27 = sub_19A4F38B8(v53, *(&v53 + 1));
      if ((v28 & 1) == 0)
      {

        goto LABEL_18;
      }

      v51 = v3;
      v38 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A555AA4();
        v15 = v54;
      }

      sub_19A4F550C(v38, v15);

      sub_19A2E8B10(v25);
      v3 = v51;
    }

    v49 = v26;
    v50 = v3;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v15;
    v29 = sub_19A4F38B8(v53, *(&v53 + 1));
    v31 = v15[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    if (v15[3] >= v34)
    {
      v36 = v49;
      v37 = v53;
      if (v48)
      {
        v15 = v54;
        if ((v30 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v42 = v29;
        v47 = v30;
        sub_19A555AA4();
        v37 = v53;
        v29 = v42;
        v36 = v49;
        v15 = v54;
        if ((v47 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v46 = v30;
      sub_19A55443C(v34, v48);
      v29 = sub_19A4F38B8(v53, *(&v53 + 1));
      if ((v46 & 1) != (v35 & 1))
      {
        goto LABEL_39;
      }

      v36 = v49;
      v37 = v53;
      v15 = v54;
      if ((v46 & 1) == 0)
      {
LABEL_31:
        v15[(v29 >> 6) + 8] |= 1 << v29;
        *(v15[6] + 16 * v29) = v37;
        *(v15[7] + 8 * v29) = v36;
        v43 = v15[2];
        v33 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v33)
        {
          goto LABEL_38;
        }

        v15[2] = v44;
        goto LABEL_33;
      }
    }

    v40 = v15[7];
    v41 = *(v40 + 8 * v29);
    *(v40 + 8 * v29) = v36;

LABEL_33:
    v3 = v50;
LABEL_18:
    sub_19A2E8B10(v25);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D40);
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(char *a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, int a6)
{
  v67 = a6;
  v68 = a5;
  v66 = a4;
  v64 = a3;
  v73 = a2;
  v8 = sub_19A570DCC();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19A570EAC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v56 - v14;
  v15 = sub_19A5735CC();
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19A5735BC();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_19A57298C();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = v6 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = sub_19A4E7D70(MEMORY[0x1E69E7CC0]);
  *v20 = 0;
  *(v20 + 8) = v22;
  v60 = v6;
  sub_19A57235C();
  v71 = v11;
  v72 = v10;
  v23 = *(v11 + 16);
  v75 = a1;
  v58 = v11 + 16;
  v57 = v23;
  v23((v6 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL), a1, v10);
  v61 = sub_19A2F1600(0, &unk_1EAF9E7A0);
  v77 = 0x2E646567616E616DLL;
  v78 = 0xE800000000000000;
  v24 = sub_19A570DDC();
  MEMORY[0x19A900A50](v24);

  sub_19A57297C();
  v77 = v21;
  sub_19A56DAB4(&qword_1EAF9E7B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C60);
  sub_19A56DAFC(&unk_1EAF9E840, &unk_1EAFA2C60);
  v25 = v60;
  sub_19A57388C();
  (*(v62 + 104))(v17, *MEMORY[0x1E69E8090], v63);
  v26 = v73;
  *(v25 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue) = sub_19A5735FC();
  *(v25 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_entryPoints) = v64;
  [v26 copy];
  sub_19A57384C();
  swift_unknownObjectRelease();
  sub_19A2F1600(0, &qword_1EAF9E798);
  swift_dynamicCast();
  v27 = v76;
  v28 = "ManagedMLModel";
  if ((v67 & 0x100) == 0)
  {
    v28 = v66;
  }

  v29 = 14;
  if ((v67 & 0x100) != 0)
  {
    v30 = 2;
  }

  else
  {
    v29 = v68;
    v30 = v67;
  }

  v31 = v25 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName;
  *v31 = v28;
  *(v31 + 8) = v29;
  *(v31 + 16) = v30;
  v77 = 0xD00000000000001BLL;
  v78 = 0x800000019A59DE60;
  v33 = v69;
  v32 = v70;
  v34 = v65;
  (*(v69 + 104))(v65, *MEMORY[0x1E6968F70], v70);
  sub_19A2F4450();
  v35 = v74;
  sub_19A570E8C();
  (*(v33 + 8))(v34, v32);
  v36 = [objc_opt_self() defaultManager];
  sub_19A570E5C();
  v37 = sub_19A572CCC();

  v38 = [v36 fileExistsAtPath_];

  if (v38)
  {
    v39 = v71;
    v40 = v72;
    v70 = v27;
    [v27 setUsePrecompiledE5Bundle_];
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v41 = sub_19A5723FC();
    __swift_project_value_buffer(v41, qword_1ED82BD48);
    v42 = v59;
    v57(v59, v35, v40);
    v43 = sub_19A5723DC();
    v44 = sub_19A57353C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315138;
      v47 = sub_19A570E5C();
      v49 = v48;
      v50 = *(v39 + 8);
      v50(v42, v40);
      v51 = sub_19A31F114(v47, v49, &v77);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_19A2DE000, v43, v44, "Will use specialized/pre-compiled: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x19A902C50](v46, -1, -1);
      MEMORY[0x19A902C50](v45, -1, -1);

      v50(v75, v40);
      v50(v74, v40);
    }

    else
    {

      v54 = *(v39 + 8);
      v54(v75, v40);
      v54(v42, v40);
      v54(v35, v40);
    }

    v27 = v70;
  }

  else
  {

    v52 = v72;
    v53 = *(v71 + 8);
    v53(v75, v72);
    v53(v35, v52);
  }

  *(v25 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_configuration) = v27;
  return v25;
}

void sub_19A56A60C(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56BF4C(&v3[2], a1);
  if (v1)
  {
    os_unfair_lock_unlock(v3);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v3);
    if (qword_1ED824D40 != -1)
    {
      swift_once();
    }

    v4 = sub_19A5723FC();
    __swift_project_value_buffer(v4, qword_1ED82BD48);

    v5 = sub_19A5723DC();
    v6 = sub_19A57354C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      v9 = sub_19A57397C();
      v11 = sub_19A31F114(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_19A2DE000, v5, v6, "Loaded resources for %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x19A902C50](v8, -1, -1);
      MEMORY[0x19A902C50](v7, -1, -1);
    }
  }
}

void sub_19A56A7B8(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));

  *(v1 + 8) = sub_19A4E7D70(MEMORY[0x1E69E7CC0]);
  os_unfair_lock_unlock(v1);
  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BD48);

  oslog = sub_19A5723DC();
  v3 = sub_19A57354C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_19A57397C();
    v8 = sub_19A31F114(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, oslog, v3, "Unloaded resources for %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }
}

uint64_t sub_19A56A960(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_19A56A9A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = MEMORY[0x19A902330]();
  sub_19A56AA4C(a1, a2, a3, a4, a5, a6, &v15, a7);
  objc_autoreleasePoolPop(v14);
}

void sub_19A56AA4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a8;
  v38 = a7;
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v36 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v12 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel);
  os_unfair_lock_lock((v12 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56BF4C(&v13[2], a1);
  v42 = v8;
  v14 = v13;
  if (v8)
  {
    goto LABEL_15;
  }

  os_unfair_lock_unlock(v13);
  v15 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v16 = sub_19A57236C();
  v44 = &v36;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v43 = v22;
  v21(v20, a1 + v15, v18);
  v23 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
  v24 = *(a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
  v40 = sub_19A57231C();
  v41 = &v36;
  v25 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_19A57232C();
  MEMORY[0x1EEE9AC00](v28);
  *(&v36 - 6) = a6;
  *(&v36 - 5) = a1;
  v29 = v46;
  *(&v36 - 4) = v45;
  *(&v36 - 3) = v29;
  v34 = v47;
  v35 = v48;
  v39 = v30;
  if ((v24 & 1) == 0)
  {
    v31 = v49;
    if (v23)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v31 = v49;
  if (v23 >> 32)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v23 & 0xFFFFF800) == 0xD800)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    os_unfair_lock_unlock(v14);
    __break(1u);
    return;
  }

  if (v23 >> 16 > 0x10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = &v50;
LABEL_9:
  v32 = swift_slowAlloc();
  *v32 = 0;
  v34 = a6;
  v33 = v42;
  sub_19A56CE48(v32, 2u, v20, v27, v23, "", sub_19A56DEC8);
  if (v33)
  {
    (*(v25 + 8))(v27, v40);
    (*(v17 + 8))(v20, v43);
    *v38 = v33;
  }

  else
  {
    MEMORY[0x19A902C50](v32, -1, -1);
    (*(v36 + 32))(v37, v31, a6);
    (*(v25 + 8))(v27, v40);
    (*(v17 + 8))(v20, v43);
  }
}

void sub_19A56AE48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v11 = a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel));
  sub_19A56AEF8((v11 + 8), a2, a3, a4, a5, a6, &v12);
  os_unfair_lock_unlock(v11);
}

void sub_19A56AEF8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v13 = sub_19A4F38B8(a2, a3), (v14 & 1) != 0))
  {
    v15 = *(v11 + 56) + 16 * v13;
    v16 = *v15;
    if (*(v15 + 8))
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
      swift_willThrowTypedImpl();
      *a7 = v16;
    }

    else
    {
      a4(v16);
      sub_19A2E8B10(v16);
      if (v7)
      {
        *a7 = v7;
      }
    }
  }

  else
  {
    sub_19A5498D4();
    v18 = swift_allocError();
    *v19 = a2;
    *(v19 + 8) = a3;
    *(v19 + 16) = 2;
    swift_willThrow();
    *a7 = v18;
  }
}

uint64_t sub_19A56B038@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  if ((a2 - 0x1000000000000000) >> 61 == 7)
  {
    v4 = 8 * a2;
    if (8 * a2)
    {
      if (v4 <= 14)
      {
        result = sub_19A356D60(result, (v4 + result));
        v7 = v8 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        sub_19A5709BC();
        swift_allocObject();
        v6 = sub_19A57095C();
        if (v4 >= 0x7FFFFFFF)
        {
          sub_19A570EDC();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v4;
          v7 = v6 | 0x8000000000000000;
        }

        else
        {
          result = a2 << 35;
          v7 = v6 | 0x4000000000000000;
        }
      }

      goto LABEL_11;
    }

    result = 0;
LABEL_8:
    v7 = 0xC000000000000000;
LABEL_11:
    *a3 = result;
    a3[1] = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A56B124@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  if ((a2 - 0x2000000000000000) >> 62 == 3)
  {
    v4 = 4 * a2;
    if (4 * a2)
    {
      if (v4 <= 14)
      {
        result = sub_19A356D60(result, (v4 + result));
        v7 = v8 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        sub_19A5709BC();
        swift_allocObject();
        v6 = sub_19A57095C();
        if (v4 >= 0x7FFFFFFF)
        {
          sub_19A570EDC();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v4;
          v7 = v6 | 0x8000000000000000;
        }

        else
        {
          result = a2 << 34;
          v7 = v6 | 0x4000000000000000;
        }
      }

      goto LABEL_11;
    }

    result = 0;
LABEL_8:
    v7 = 0xC000000000000000;
LABEL_11:
    *a3 = result;
    a3[1] = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A56B210@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_8;
  }

  if (a2 + 0x4000000000000000 >= 0)
  {
    v4 = 2 * a2;
    if (2 * a2)
    {
      if (v4 <= 14)
      {
        result = sub_19A356D60(result, (v4 + result));
        v7 = v8 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        sub_19A5709BC();
        swift_allocObject();
        v6 = sub_19A57095C();
        if (v4 >= 0x7FFFFFFF)
        {
          sub_19A570EDC();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v4;
          v7 = v6 | 0x8000000000000000;
        }

        else
        {
          result = a2 << 33;
          v7 = v6 | 0x4000000000000000;
        }
      }

      goto LABEL_11;
    }

    result = 0;
LABEL_8:
    v7 = 0xC000000000000000;
LABEL_11:
    *a3 = result;
    a3[1] = v7;
    return result;
  }

  __break(1u);
  return result;
}

void sub_19A56B2F4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_19A5498D4();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 3;
LABEL_13:
    swift_willThrow();
    return;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v9 = (a2 + 32);
    do
    {
      v10 = *v9++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      --v8;
    }

    while (v8);
  }

  v11 = *(a4 + 16);
  if (v11)
  {
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v12 = (a4 + 32);
    do
    {
      v13 = *v12++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      --v11;
    }

    while (v11);
  }

  v14 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  sub_19A2F1600(0, &qword_1ED823EA8);
  v15 = sub_19A57307C();

  v16 = sub_19A57307C();

  v30[0] = 0;
  v17 = [v14 initWithDataPointer:a1 shape:v15 dataType:a3 strides:v16 deallocator:0 error:v30];

  if (!v17)
  {
    v25 = v30[0];
    sub_19A570D1C();

    goto LABEL_13;
  }

  v18 = v30[0];
  v19 = [v17 shape];
  v20 = sub_19A57308C();

  v21 = [v17 dataType];
  v22 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v23 = sub_19A52A8D8(v20, v21);
  if (v28)
  {
  }

  else
  {
    v26 = v23;
    [v17 transferToMultiArray_];

    *a5 = v26;
  }
}

void sub_19A56B614(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3848);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_19A57274C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 multiArrayValue];
  if (!v13)
  {
LABEL_8:
    v16 = a1;
    sub_19A57275C();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_19A2F3FA0(v8, &qword_1EAFA3848);
      v17 = [v16 imageBufferValue];
      if (!v17)
      {
        v19 = [v16 type];
        sub_19A5498D4();
        swift_allocError();
        *v20 = v19;
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        swift_willThrow();
        return;
      }

      *a2 = v17;
      type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
    }

    else
    {
      v18 = *(v10 + 32);
      v18(v12, v8, v9);
      v18(a2, v12, v9);
      type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
    }

    goto LABEL_45;
  }

  v14 = v13;
  if ([v13 count] > 7)
  {

    goto LABEL_8;
  }

  v15 = [v14 dataType];
  if (v15 > 65599)
  {
    if (v15 == 65600 || v15 == 131104)
    {
      goto LABEL_17;
    }

LABEL_16:
    v21 = [v14 dataType];
    sub_19A5498D4();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    swift_willThrow();

    return;
  }

  if (v15 != 65552 && v15 != 65568)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_19A5734EC();
  v50 = v54;
  v23 = [v14 shape];
  v55 = sub_19A2F1600(0, &qword_1ED823EA8);
  v24 = sub_19A57308C();

  if (v24 >> 62)
  {
    v25 = sub_19A573B4C();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = a2;
  v52 = v14;
  if (v25)
  {
    v53 = v2;
    *&v54 = MEMORY[0x1E69E7CC0];
    sub_19A3225A0(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    v26 = 0;
    v27 = v54;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x19A901520](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 integerValue];

      *&v54 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_19A3225A0((v31 > 1), v32 + 1, 1);
        v27 = v54;
      }

      ++v26;
      *(v27 + 16) = v32 + 1;
      *(v27 + 8 * v32 + 32) = v30;
    }

    while (v25 != v26);

    v14 = v52;
    v3 = v53;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v33 = [v14 dataType];
  v34 = [v14 strides];
  v35 = sub_19A57308C();

  v49 = v33;
  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_32;
    }

LABEL_43:

    v38 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v46 = v51;
    *v51 = v50;
    v47 = v49;
    *(v46 + 2) = v27;
    *(v46 + 3) = v47;
    *(v46 + 4) = v38;
    type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
LABEL_45:
    swift_storeEnumTagMultiPayload();
    return;
  }

  v36 = sub_19A573B4C();
  if (!v36)
  {
    goto LABEL_43;
  }

LABEL_32:
  v53 = v3;
  *&v54 = MEMORY[0x1E69E7CC0];
  sub_19A3225A0(0, v36 & ~(v36 >> 63), 0);
  if ((v36 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v54;
    v39 = v35;
    v55 = v35 & 0xC000000000000001;
    v40 = v35;
    do
    {
      if (v55)
      {
        v41 = MEMORY[0x19A901520](v37, v39);
      }

      else
      {
        v41 = *(v39 + 8 * v37 + 32);
      }

      v42 = v41;
      v43 = [v41 integerValue];

      *&v54 = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_19A3225A0((v44 > 1), v45 + 1, 1);
        v38 = v54;
      }

      ++v37;
      *(v38 + 16) = v45 + 1;
      *(v38 + 8 * v45 + 32) = v43;
      v39 = v40;
    }

    while (v36 != v37);

    goto LABEL_44;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_19A56BD08@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  result = a1();
  if (!v3)
  {
    v7 = sub_19A5074CC();
    swift_unknownObjectRelease();
    v8 = *(v7 + 16);
    if (v8)
    {
      v14 = a3;
      v15 = MEMORY[0x1E69E7CC0];
      result = sub_19A4E442C(0, v8, 0);
      v9 = 0;
      while (v9 < *(v7 + 16))
      {

        v11 = sub_19A50B908(v10, a2);

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_19A4E442C((v12 > 1), v13 + 1, 1);
        }

        ++v9;
        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        if (v8 == v9)
        {

          *v14 = v15;
          return result;
        }
      }

      __break(1u);
    }

    else
    {

      *a3 = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_19A56BEAC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = a1();
  if (!v3)
  {
    v7 = sub_19A50ACC8();
    swift_unknownObjectRelease();

    v8 = sub_19A56DF20(v7, a2);

    *a3 = v8;
  }

  return result;
}

uint64_t sub_19A56BF4C(uint64_t result, uint64_t a2)
{
  if (!*(*result + 16))
  {
    v35 = *result;
    v36 = result;
    v3 = *(a2 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_entryPoints);
    v4 = *(v3 + 16);
    if (v4)
    {
      v38 = MEMORY[0x1E69E7CC0];
      sub_19A4E462C(0, v4, 0);
      v5 = v38;
      v6 = (v3 + 40);
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v38 = v5;
        v10 = v5[2];
        v9 = v5[3];

        if (v10 >= v9 >> 1)
        {
          sub_19A4E462C((v9 > 1), v10 + 1, 1);
          v5 = v38;
        }

        v5[2] = v10 + 1;
        v11 = &v5[2 * v10];
        *(v11 + 4) = v8;
        *(v11 + 5) = v7;
        v6 += 2;
        --v4;
      }

      while (v4);
    }

    else
    {
      v5 = &unk_1F0DB7288;
    }

    v12 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
    v13 = sub_19A57236C();
    v14 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16, a2 + v12, v13);
    v17 = *(a2 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
    LOBYTE(v12) = *(a2 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
    v30 = sub_19A57231C();
    v31 = &v29;
    v29 = *(v30 - 8);
    MEMORY[0x1EEE9AC00](v30);
    v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    result = sub_19A57232C();
    v33 = v13;
    v34 = &v29;
    v32 = v14;
    if (v12)
    {
      if (!(v17 >> 32))
      {
        if ((v17 & 0xFFFFF800) == 0xD800)
        {
LABEL_21:
          __break(1u);
          return result;
        }

        if (v17 >> 16 <= 0x10)
        {
          v20 = v16;
          v17 = &v37;
          goto LABEL_16;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      if (v17)
      {
        v20 = v16;
LABEL_16:
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = v20;
        v23 = sub_19A57234C();
        v24 = sub_19A57361C();
        v25 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v23, v24, v25, v17, "", v21, 2u);
        sub_19A56C300(v5, a2, &v38);
        v26 = sub_19A57360C();
        v27 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v23, v26, v27, v17, "", v21, 2u);

        v28 = v38;
        MEMORY[0x19A902C50](v21, -1, -1);

        (*(v29 + 8))(v19, v30);
        result = (*(v32 + 8))(v22, v33);
        *v36 = v28;
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A56C300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v66 = a3;
  v100[4] = *MEMORY[0x1E69E9840];
  result = sub_19A4E7D70(MEMORY[0x1E69E7CC0]);
  v6 = result;
  v7 = *(a1 + 16);
  if (v7)
  {
    v80 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
    v79 = *(a2 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_configuration);
    v8 = *(a2 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName);
    v78 = *(a2 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelName + 16);
    v75 = objc_opt_self();
    v72 = v8 & 0xFFFFF800;
    v10 = (v8 >> 18) + (((((v8 >> 6) & 0x3F | ((v8 & 0x3F) << 8)) << 8) | (v8 >> 12) & 0x3F) << 8) - 2122219023;
    HIDWORD(v65) = (v8 >> 6) + ((v8 & 0x3F) << 8) + 33217;
    v74 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL;
    v71 = v8 + 1;
    if (v8 < 0x10000)
    {
      v10 = (((v8 >> 6) & 0x3F | ((v8 & 0x3F) << 8)) << 8) + (v8 >> 12) + 8487393;
    }

    LODWORD(v65) = v10;
    v11 = (a1 + 40);
    *&v9 = 136446210;
    v73 = v9;
    *&v9 = 136446466;
    v67 = v9;
    v77 = a2;
    v76 = v8;
    do
    {
      v95 = v6;
      v23 = *(v11 - 1);
      v24 = *v11;

      [v79 copy];
      sub_19A57384C();
      swift_unknownObjectRelease();
      sub_19A2F1600(0, &qword_1EAF9E798);
      swift_dynamicCast();
      v25 = v99;
      v98 = v23;
      if (v24)
      {

        v26 = sub_19A572CCC();
      }

      else
      {
        v26 = 0;
      }

      [v25 setFunctionName_];

      v27 = sub_19A57236C();
      MEMORY[0x1EEE9AC00](v27);
      v93 = v29;
      v30 = *(v29 + 16);
      v97 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v94 = v31;
      v30();
      v91 = sub_19A57231C();
      v92 = &v65;
      v90 = *(v91 - 8);
      MEMORY[0x1EEE9AC00](v91);
      v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);

      v96 = v33;
      sub_19A57230C();
      if (v78)
      {
        if (HIDWORD(v8))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        if (v72 == 55296)
        {
          goto LABEL_36;
        }

        if (v8 >> 16 > 0x10)
        {
          goto LABEL_35;
        }

        v35 = v71;
        if (v8 >= 0x80)
        {
          v35 = HIDWORD(v65);
          if (v8 > 0x7FF)
          {
            v35 = v65;
          }
        }

        v100[0] = (v35 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v35) & 0x18)));

        v34 = v100;
      }

      else
      {

        v34 = v8;
        if (!v8)
        {
          goto LABEL_34;
        }
      }

      v87 = &v65;
      v88 = v11;
      v89 = v7;
      v36 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v100[0] = v85;
      *v36 = v73;
      if (v24)
      {
        v37 = v98;
      }

      else
      {
        v37 = 0x746C7561666564;
      }

      if (v24)
      {
        v38 = v24;
      }

      else
      {
        v38 = 0xE700000000000000;
      }

      v82 = v24;

      v81 = v37;
      v39 = sub_19A31F114(v37, v38, v100);

      *(v36 + 4) = v39;
      v40 = v25;
      v41 = sub_19A57234C();
      v42 = sub_19A57361C();
      v43 = sub_19A5722FC();
      v84 = v41;
      v86 = v34;
      v83 = v36;
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v41, v42, v43, v34, "Loading %{public}s", v36, 0xCu);
      v44 = v40;
      v45 = sub_19A570DEC();
      v99 = 0;
      v46 = [v75 modelWithContentsOfURL:v45 configuration:v44 error:&v99];

      if (v46)
      {
        v12 = v99;

        v13 = v46;
        v14 = v82;
      }

      else
      {
        v47 = v81;
        v48 = v38;
        v49 = v99;
        v13 = sub_19A570D1C();

        swift_willThrow();
        v50 = v13;
        if (qword_1ED824D40 != -1)
        {
          swift_once();
        }

        v70 = 0;
        v51 = sub_19A5723FC();
        __swift_project_value_buffer(v51, qword_1ED82BD48);
        v14 = v82;

        v52 = v13;
        v53 = sub_19A5723DC();
        v54 = sub_19A57355C();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = v47;
          v56 = swift_slowAlloc();
          v69 = v53;
          v57 = v56;
          v68 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v99 = v58;
          *v57 = v67;

          v59 = sub_19A31F114(v55, v48, &v99);
          LOBYTE(v55) = v54;
          v60 = v59;

          *(v57 + 4) = v60;
          *(v57 + 12) = 2112;
          v61 = v13;
          v62 = _swift_stdlib_bridgeErrorToNSError();
          *(v57 + 14) = v62;
          v63 = v68;
          *v68 = v62;
          v64 = v69;
          _os_log_impl(&dword_19A2DE000, v69, v55, "Failed to load %{public}s due to %@, error will be thrown for this entry point at inference time.", v57, 0x16u);
          sub_19A2F3FA0(v63, &qword_1EAF9FD28);
          MEMORY[0x19A902C50](v63, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v58);
          MEMORY[0x19A902C50](v58, -1, -1);
          MEMORY[0x19A902C50](v57, -1, -1);
        }

        else
        {
        }
      }

      v11 = v88 + 2;

      v15 = v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v15;
      sub_19A545E28(v13, v46 == 0, v98, v14, isUniquelyReferenced_nonNull_native);

      v6 = v99;
      v17 = sub_19A57360C();
      v18 = v96;
      v19 = sub_19A5722FC();
      v20 = v84;
      v21 = v83;
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v84, v17, v19, v86, "Loading %{public}s", v83, 0xCu);

      v22 = v85;
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      MEMORY[0x19A902C50](v22, -1, -1);
      MEMORY[0x19A902C50](v21, -1, -1);

      (*(v90 + 8))(v18, v91);
      result = (*(v93 + 8))(v97, v94);
      v7 = v89 - 1;
      v8 = v76;
    }

    while (v89 != 1);
  }

  *v66 = v6;
  return result;
}

uint64_t ManagedMLModel.deinit()
{
  v1 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL;
  v2 = sub_19A570EAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_19A2F3FA0(v0 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel + 8, &qword_1EAFA3838);
  v3 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v4 = sub_19A57236C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ManagedMLModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_modelURL;
  v2 = sub_19A570EAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_19A2F3FA0(v0 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel + 8, &qword_1EAFA3838);
  v3 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_signposter;
  v4 = sub_19A57236C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_19A56CE48(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, void (*a7)(void))
{
  v11 = sub_19A57234C();
  v12 = sub_19A57361C();
  v13 = sub_19A5722FC();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = sub_19A57360C();
    v15 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v11, v14, v15, a5, a6, v16, a2);
  }
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19A56CFB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v9 = a1[1];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      *(&v35 + 7) = 0;
      *&v35 = 0;

      sub_19A56B2F4(&v35, a2, a3, a4, &v34);

      if (!v4)
      {
        return v34;
      }

      return v5;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_19A356EC8(v10, v9);
    sub_19A33EFC4(v10, v9);
    *&v35 = v10;
    *(&v35 + 1) = v9 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_19A58E210;
    sub_19A33EFC4(0, 0xC000000000000000);
    sub_19A570EBC();
    v13 = v35;
    v14 = *(v35 + 16);
    v15 = *(v35 + 24);

    result = sub_19A57096C();
    if (!result)
    {
      __break(1u);
      goto LABEL_36;
    }

    v17 = result;
    v18 = sub_19A57099C();
    v19 = v14 - v18;
    if (!__OFSUB__(v14, v18))
    {
      v20 = __OFSUB__(v15, v14);
      v5 = v15 - v14;
      if (!v20)
      {
        sub_19A57098C();
        sub_19A56B2F4(v17 + v19, a2, a3, a4, &v34);
        v21 = *(&v13 + 1) | 0x8000000000000000;
        if (!v4)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v5 = v34;

          *a1 = v13;
          return v5;
        }

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        *a1 = v13;
LABEL_26:
        a1[1] = v21;
        return v5;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v11)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_19A33EFC4(v10, v9);
    *&v35 = v10;
    WORD4(v35) = v9;
    BYTE10(v35) = BYTE2(v9);
    BYTE11(v35) = BYTE3(v9);
    BYTE12(v35) = BYTE4(v9);
    BYTE13(v35) = BYTE5(v9);
    BYTE14(v35) = BYTE6(v9);
    sub_19A56B2F4(&v35, a2, a3, a4, &v34);
    if (v4)
    {
      v12 = v35;
      v5 = DWORD2(v35) | ((WORD6(v35) | (BYTE14(v35) << 16)) << 32);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *a1 = v12;
      a1[1] = v5;
    }

    else
    {
      v5 = v34;
      v25 = v35;
      v26 = DWORD2(v35) | ((WORD6(v35) | (BYTE14(v35) << 16)) << 32);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *a1 = v25;
      a1[1] = v26;
    }

    return v5;
  }

  v22 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_19A356EC8(v10, v9);
  sub_19A33EFC4(v10, v9);
  *a1 = xmmword_19A58E210;
  sub_19A33EFC4(0, 0xC000000000000000);
  v23 = v10 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v23 < v10)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (sub_19A57096C() && __OFSUB__(v10, sub_19A57099C()))
    {
LABEL_34:
      __break(1u);
    }

    sub_19A5709BC();
    swift_allocObject();
    v27 = sub_19A57094C();

    v22 = v27;
  }

  v28 = v23 < v10;
  v5 = v23 - v10;
  if (v28)
  {
    goto LABEL_30;
  }

  result = sub_19A57096C();
  if (result)
  {
    v29 = result;
    v30 = sub_19A57099C();
    v31 = v10 - v30;
    if (!__OFSUB__(v10, v30))
    {
      sub_19A57098C();
      sub_19A56B2F4(v29 + v31, a2, a3, a4, &v35);
      v21 = v22 | 0x4000000000000000;
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v5 = v35;

        *a1 = v10;
        a1[1] = v21;
        return v5;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      *a1 = v10;
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_19A56D50C(uint64_t a1)
{
  v56 = sub_19A57274C();
  v2 = *(v56 - 8);
  v3 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v50 - v5;
  v6 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3290);
  result = sub_19A573BBC();
  v13 = result;
  v14 = 0;
  v66 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v52 = (v2 + 16);
  v53 = (v2 + 32);
  v51 = (v2 + 8);
  v63 = result + 64;
  v60 = result;
  v61 = v11;
  v71 = v9;
  if (v20)
  {
    do
    {
      v22 = __clz(__rbit64(v20));
      v67 = (v20 - 1) & v20;
LABEL_10:
      v25 = v22 | (v14 << 6);
      v26 = (*(v66 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      sub_19A50B848(*(v66 + 56) + *(v64 + 72) * v25, v11);
      sub_19A50B848(v11, v71);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v68 = v27;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v30 = v54;
          v31 = v56;
          (*v53)(v54, v71, v56);
          sub_19A2F1600(0, &unk_1EAF9E7B8);
          (*v52)(v55, v30, v31);

          v32 = sub_19A57359C();
          v33 = v30;
          v13 = v60;
          v11 = v61;
          (*v51)(v33, v31);
        }

        else
        {
          v42 = *v71;
          v43 = objc_opt_self();

          v32 = [v43 featureValueWithPixelBuffer_];
        }

        result = sub_19A50B8AC(v11);
      }

      else
      {
        v34 = *v71;
        v35 = v71[1];
        v36 = v71[2];
        v57 = v71[3];
        v37 = v28;
        v38 = v71[4];
        v69 = v34;
        v70 = v35;

        v59 = v37;

        v58 = v35;
        sub_19A356EC8(v34, v35);
        v39 = v62;
        v40 = sub_19A56CFB0(&v69, v36, v57, v38);
        v62 = v39;
        if (v39)
        {
          v48 = v60;

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v49 = v34;
          v13 = v48;
          sub_19A33EFC4(v49, v58);
          sub_19A33EFC4(v69, v70);
          sub_19A50B8AC(v61);
          return v13;
        }

        v41 = v40;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v32 = [objc_opt_self() featureValueWithMultiArray_];

        sub_19A33EFC4(v34, v58);
        sub_19A33EFC4(v69, v70);
        v11 = v61;
        result = sub_19A50B8AC(v61);
        v28 = v59;
        v13 = v60;
      }

      *(v63 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v44 = (v13[6] + 16 * v25);
      *v44 = v68;
      v44[1] = v28;
      *(v13[7] + 8 * v25) = v32;
      v45 = v13[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_23;
      }

      v13[2] = v47;
      v20 = v67;
    }

    while (v67);
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return v13;
    }

    v24 = *(v16 + 8 * v14);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v67 = (v24 - 1) & v24;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_19A56DAB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A56DAFC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A56DB7C()
{
  result = sub_19A570EAC();
  if (v1 <= 0x3F)
  {
    result = sub_19A57236C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase14ManagedMLModelC10UsageErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_19A56DCB8()
{
  sub_19A56DD40(319);
  if (v0 <= 0x3F)
  {
    sub_19A57274C();
    if (v1 <= 0x3F)
    {
      sub_19A56DE70();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_19A56DD40(uint64_t a1)
{
  if (!qword_1EAF9F010)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2DD8);
    type metadata accessor for MLMultiArrayDataType(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EAF9F010);
    }
  }
}

void sub_19A56DE70()
{
  if (!qword_1EAF9EEA8[0])
  {
    type metadata accessor for CVBuffer(255);
    v0 = type metadata accessor for ManagedMLModel.Boxed();
    if (!v1)
    {
      atomic_store(v0, qword_1EAF9EEA8);
    }
  }
}

uint64_t sub_19A56DF20(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3298);
  result = sub_19A573BBC();
  v7 = result;
  v8 = 0;
  v33 = result;
  v34 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v31 = result + 64;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v36 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v34 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v34 + 56) + 8 * v19);

      v24 = v23;
      v25 = v37;
      sub_19A56B614(v24, v5);

      v37 = v25;
      if (v25)
      {
        break;
      }

      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v26 = v32;
      v7 = v33;
      v27 = (*(v33 + 48) + 16 * v19);
      *v27 = v21;
      v27[1] = v22;
      result = sub_19A50BB44(v5, *(v7 + 56) + *(v26 + 72) * v19);
      v28 = *(v7 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      *(v7 + 16) = v30;
      v14 = v36;
      if (!v36)
      {
        goto LABEL_5;
      }
    }

    v7 = v33;

    return v7;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A56E174@<X0>(uint64_t a1@<X8>)
{
  sub_19A57126C();
  sub_19A5603B8(v10, &v8);
  if (!v1)
  {
    if (v9)
    {
      sub_19A2EA460(&v8, a1);
    }

    else
    {
      sub_19A2F3FA0(&v8, &qword_1EAFA3868);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v3 = sub_19A5713BC();
      v5 = v4;
      sub_19A4E6F34();
      swift_allocError();
      *v6 = v3;
      *(v6 + 8) = v5;
      *(v6 + 16) = 3;
      swift_willThrow();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

uint64_t sub_19A56E264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v167 = a2;
  v165 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3850);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v168 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v170 = &v156 - v7;
  v192 = sub_19A570EAC();
  v171 = *(v192 - 8);
  v8 = MEMORY[0x1EEE9AC00](v192);
  v169 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v187 = &v156 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v186 = &v156 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v156 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v156 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v181 = &v156 - v20;
  v21 = sub_19A5714FC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v191 = *(v25 - 8);
  v26 = *(v191 + 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v185 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v182 = &v156 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v193 = (&v156 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v190 = (&v156 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = (&v156 - v35);
  *a3 = 0;
  *(a3 + 1) = 0;
  v37 = v34;
  v38 = *(v34 + 32);
  v166 = a3;
  *&a3[v38] = &unk_1F0DB5730;
  v39 = v165;
  (*(v22 + 16))(v24, v165, v21);
  v40 = v194;
  sub_19A56F618(v24, v36);
  if (v40)
  {
    sub_19A340740(v167);
    return (*(v22 + 8))(v39, v21);
  }

  else
  {
    v158 = 0;
    v156 = v22;
    v157 = v21;
    v161 = v37;
    v42 = *(v37 + 20);
    v43 = v171 + 16;
    v183 = *(v171 + 16);
    v183(&v166[v42], v36 + v42, v192);
    v44 = v190;
    sub_19A3406DC(v167, v190);
    v45 = v193;
    sub_19A3406DC(v36, v193);
    sub_19A3406DC(v44, v182);
    sub_19A3406DC(v45, v185);
    v46 = v191[80];
    v47 = (v46 + 16) & ~v46;
    v48 = (v26 + v46 + v47) & ~v46;
    v49 = swift_allocObject();
    sub_19A566280(v44, v49 + v47);
    sub_19A566280(v193, v49 + v48);
    v159 = 0;
    v50 = 0;
    v51 = v161;
    v52 = &v166[*(v161 + 24)];
    *v52 = sub_19A570408;
    v52[1] = v49;
    v53 = *(v51 + 24);
    v160 = v36;
    v54 = (v36 + v53);
    v55 = (v182 + v53);
    v56 = &v185[v53];
    v189 = (v43 - 8);
    v184 = v43;
    v194 = (v43 + 16);
    v57 = *v54;
    v177 = v54[1];
    v178 = v57;
    v58 = *v55;
    v175 = v55[1];
    v176 = v58;
    v60 = *v56;
    v59 = *(v56 + 1);
    v174 = v60;
    v173 = v59;
    v164 = 0x800000019A5969A0;
    v163 = 0x800000019A5969C0;
    v162 = 0x800000019A5969E0;
    v61 = MEMORY[0x1E69E7CC0];
    v62 = 10;
    v179 = v19;
LABEL_4:
    if (v50 > 0xA)
    {
      v62 = v50;
    }

    v180 = v62;
    do
    {
      if (v180 == v50)
      {
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v191 = v61;
      v63 = *(&unk_1F0DB56B0 + v50 + 32);
      v172 = v50;
      v190 = (v50 + 1);
      v176(v63);
      v174(v63);
      v64 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
      sub_19A570E4C();
      v65 = sub_19A572CCC();

      v66 = [v64 fileExistsAtPath:v65 isDirectory:0];

      v67 = v16;
      v68 = *v189;
      if (v66)
      {
        v69 = v67;
      }

      else
      {
        v69 = v19;
      }

      v70 = v67;
      if (v66)
      {
        v71 = v19;
      }

      else
      {
        v71 = v67;
      }

      v72 = v192;
      v68(v69, v192);
      v48 = v181;
      v193 = *v194;
      (v193)(v181, v71, v72);
      v73 = v186;
      v178(v63);
      sub_19A5704B4();
      v74 = sub_19A572C2C();
      v68(v73, v72);
      v188 = v68;
      v68(v48, v72);
      if (v74)
      {
        v159 = 1;
        v50 = v190;
        v61 = v191;
        v16 = v70;
        v19 = v179;
        v82 = v185;
        v62 = 10;
        if (v172 != 9)
        {
          goto LABEL_4;
        }

        sub_19A340740(v182);
        sub_19A340740(v82);
        v83 = v166;
        v61 = v160;
        goto LABEL_44;
      }

      v61 = v191;
      if (v63 > 4)
      {
        v16 = v70;
        v19 = v179;
        v75 = v190;
        if (v63 <= 6)
        {
          v76 = v185;
          if (v63 == 5)
          {
            v48 = 0xE700000000000000;
            v77 = 0x7265646F636564;
          }

          else
          {
            v77 = 0x6365446168706C61;
            v48 = 0xEC0000007265646FLL;
          }
        }

        else
        {
          v76 = v185;
          if (v63 == 7)
          {
            v77 = 0xD000000000000011;
            v78 = &v194;
          }

          else if (v63 == 8)
          {
            v77 = 0xD000000000000011;
            v78 = &v195;
          }

          else
          {
            v77 = 0xD000000000000010;
            v78 = &v196;
          }

          v48 = *(v78 - 32);
        }
      }

      else
      {
        v16 = v70;
        v19 = v179;
        v75 = v190;
        if (v63 <= 1)
        {
          v76 = v185;
          if (v63)
          {
            v77 = 0x6E75684374656E75;
            v48 = 0xEA0000000000316BLL;
          }

          else
          {
            v48 = 0xE400000000000000;
            v77 = 1952804469;
          }
        }

        else
        {
          v76 = v185;
          if (v63 == 2)
          {
            v48 = 0xEA0000000000326BLL;
            v77 = 0x6E75684374656E75;
          }

          else if (v63 == 3)
          {
            v77 = 0x6F636E4570696C63;
            v48 = 0xEB00000000726564;
          }

          else
          {
            v77 = 0x7265646F636E65;
            v48 = 0xE700000000000000;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_19A31CE20(0, *(v61 + 2) + 1, 1, v61);
      }

      v80 = *(v61 + 2);
      v79 = *(v61 + 3);
      if (v80 >= v79 >> 1)
      {
        v61 = sub_19A31CE20((v79 > 1), v80 + 1, 1, v61);
      }

      *(v61 + 2) = v80 + 1;
      v81 = &v61[16 * v80];
      *(v81 + 4) = v77;
      *(v81 + 5) = v48;
      v50 = v75;
    }

    while (v75 != 10);
    v191 = v61;
    sub_19A340740(v182);
    sub_19A340740(v76);
    v83 = v166;
    v61 = v160;
    if (v159)
    {
LABEL_44:
      v84 = *(v61 + 1);
      *v83 = *v61;
      *(v83 + 1) = v84;
    }

    v48 = v167;
    if (qword_1ED824D40 == -1)
    {
      goto LABEL_46;
    }

LABEL_110:
    swift_once();
LABEL_46:
    v85 = sub_19A5723FC();
    v86 = __swift_project_value_buffer(v85, qword_1ED82BD48);
    v87 = sub_19A5723DC();
    v88 = sub_19A57355C();
    v89 = os_log_type_enabled(v87, v88);
    v172 = v86;
    if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v197 = v91;
      *v90 = 136315138;

      v93 = MEMORY[0x19A900C10](v92, MEMORY[0x1E69E6158]);
      v95 = v94;

      v96 = sub_19A31F114(v93, v95, &v197);
      v61 = v160;

      *(v90 + 4) = v96;
      _os_log_impl(&dword_19A2DE000, v87, v88, "Overriding base model components: %s with side-loaded models", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x19A902C50](v91, -1, -1);
      MEMORY[0x19A902C50](v90, -1, -1);
    }

    v97 = v168;
    v98 = v192;
    v99 = v171;
    v100 = *(v161 + 28);
    v101 = *&v61[v100];
    v102 = *(v48 + v100);
    v103 = (v102 + 64);
    v104 = 1 << *(v102 + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v106 = v105 & *(v102 + 64);
    v180 = (v104 + 63) >> 6;
    v177 = 0x800000019A596560;
    v178 = 0x800000019A596540;
    v175 = 0x800000019A5965A0;
    v176 = 0x800000019A596580;
    v174 = 0x800000019A5965C0;
    v173 = 0x800000019A5965E0;
    v179 = (v171 + 40);
    v190 = v101;

    v182 = v102;

    v48 = 0;
    v185 = MEMORY[0x1E69E7CC0];
    v181 = (v102 + 64);
    while (1)
    {
      if (!v106)
      {
        if (v180 <= (v48 + 1))
        {
          v109 = v48 + 1;
        }

        else
        {
          v109 = v180;
        }

        v110 = v109 - 1;
        while (1)
        {
          v108 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v108 >= v180)
          {
            v61 = &unk_19A595350;
            v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3858);
            (*(*(v127 - 8) + 56))(v97, 1, 1, v127);
            v106 = 0;
            v48 = v110;
            goto LABEL_64;
          }

          v106 = *&v103[8 * v108];
          ++v48;
          if (v106)
          {
            v48 = v108;
            goto LABEL_63;
          }
        }

        __break(1u);
        goto LABEL_107;
      }

      v108 = v48;
LABEL_63:
      v111 = __clz(__rbit64(v106));
      v106 &= v106 - 1;
      v112 = v111 | (v108 << 6);
      v113 = *(*(v182 + 48) + v112);
      v114 = *(v182 + 56) + *(v99 + 72) * v112;
      v115 = v186;
      v183(v186, v114, v98);
      v61 = &unk_19A595350;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3858);
      v117 = *(v116 + 48);
      *v97 = v113;
      (v193)(&v97[v117], v115, v98);
      (*(*(v116 - 8) + 56))(v97, 0, 1, v116);
      v103 = v181;
LABEL_64:
      v118 = v170;
      sub_19A57050C(v97, v170);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3858);
      if ((*(*(v119 - 8) + 48))(v118, 1, v119) == 1)
      {
        break;
      }

      v120 = *v118;
      (v193)(v187, &v118[*(v119 + 48)], v98);
      v121 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
      sub_19A570E4C();
      v122 = sub_19A572CCC();

      v123 = [v121 fileExistsAtPath:v122 isDirectory:0];

      if (v123)
      {
        if (v120 <= 4)
        {
          v124 = v185;
          if (v120 <= 1)
          {
            if (v120)
            {
              v126 = 0xD000000000000016;
              v125 = v173;
            }

            else
            {
              v125 = 0xE90000000000006ELL;
              v126 = 0x6F6974616D696E61;
            }
          }

          else if (v120 == 2)
          {
            v125 = 0xE500000000000000;
            v126 = 0x696A6F6D65;
          }

          else if (v120 == 3)
          {
            v126 = 0xD000000000000012;
            v125 = v174;
          }

          else
          {
            v126 = 0x61727473756C6C69;
            v125 = 0xEC0000006E6F6974;
          }
        }

        else
        {
          v124 = v185;
          if (v120 > 7)
          {
            if (v120 == 8)
            {
              v126 = 0x63735F656C797473;
              v125 = 0xEE00656C62626972;
            }

            else if (v120 == 9)
            {
              v126 = 0xD00000000000001BLL;
              v125 = v177;
            }

            else
            {
              v126 = 0xD000000000000014;
              v125 = v178;
            }
          }

          else if (v120 == 5)
          {
            v126 = 0xD000000000000019;
            v125 = v175;
          }

          else if (v120 == 6)
          {
            v125 = 0xE600000000000000;
            v126 = 0x686374656B73;
          }

          else
          {
            v126 = 0xD000000000000013;
            v125 = v176;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_19A31CE20(0, *(v124 + 2) + 1, 1, v124);
        }

        v129 = *(v124 + 2);
        v128 = *(v124 + 3);
        v185 = v124;
        if (v129 >= v128 >> 1)
        {
          v185 = sub_19A31CE20((v128 > 1), v129 + 1, 1, v185);
        }

        v130 = v185;
        *(v185 + 2) = v129 + 1;
        v131 = &v130[16 * v129];
        *(v131 + 4) = v126;
        *(v131 + 5) = v125;
        v107 = v187;
        v183(v169, v187, v192);
        v132 = v190;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v197 = v132;
        v134 = sub_19A31FBD4(v120);
        v136 = v132[2];
        v137 = (v135 & 1) == 0;
        v138 = __OFADD__(v136, v137);
        v139 = v136 + v137;
        if (v138)
        {
          goto LABEL_108;
        }

        v140 = v135;
        if (v132[3] >= v139)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v144 = v134;
            sub_19A555218();
            v134 = v144;
            v107 = v187;
          }
        }

        else
        {
          sub_19A5519F8(v139, isUniquelyReferenced_nonNull_native);
          v134 = sub_19A31FBD4(v120);
          if ((v140 & 1) != (v141 & 1))
          {
            result = sub_19A57404C();
            __break(1u);
            return result;
          }
        }

        v98 = v192;
        v190 = v197;
        if (v140)
        {
          v99 = v171;
          (*(v171 + 40))(v197[7] + *(v171 + 72) * v134, v169, v192);
        }

        else
        {
          v197[(v134 >> 6) + 8] |= 1 << v134;
          *(v190[6] + v134) = v120;
          v99 = v171;
          (v193)(v190[7] + *(v171 + 72) * v134, v169, v98);
          v142 = v190[2];
          v138 = __OFADD__(v142, 1);
          v143 = v142 + 1;
          if (v138)
          {
            goto LABEL_109;
          }

          v190[2] = v143;
        }

        v97 = v168;
      }

      else
      {
        v98 = v192;
        v99 = v171;
        v107 = v187;
      }

      v188(v107, v98);
    }

    v145 = sub_19A5723DC();
    v146 = sub_19A57355C();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v197 = v148;
      *v147 = 136315138;

      v150 = MEMORY[0x19A900C10](v149, MEMORY[0x1E69E6158]);
      v152 = v151;

      v153 = sub_19A31F114(v150, v152, &v197);

      *(v147 + 4) = v153;
      _os_log_impl(&dword_19A2DE000, v145, v146, "Overriding adapters: %s with side-loaded weights", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v148);
      MEMORY[0x19A902C50](v148, -1, -1);
      MEMORY[0x19A902C50](v147, -1, -1);
    }

    sub_19A340740(v167);
    (*(v156 + 8))(v165, v157);
    v154 = v166;
    v155 = v161;
    sub_19A340740(v160);

    *(v154 + *(v155 + 28)) = v190;
  }

  return result;
}

uint64_t sub_19A56F618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a1;
  v89 = a2;
  v96 = sub_19A570DCC();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v87 = v78 - v4;
  v5 = sub_19A5713DC();
  v6 = *(v5 - 8);
  v92 = v5;
  v93 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v86 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_19A570EAC();
  v97 = *(v100 - 8);
  v8 = MEMORY[0x1EEE9AC00](v100);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v78 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v78 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v78 - v17;
  v19 = sub_19A57117C();
  v85 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3860);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v78 - v24;
  v26 = v111;
  sub_19A56E174(&v106);
  v111 = v26;
  if (v26)
  {
    v27 = sub_19A5714FC();
    return (*(*(v27 - 8) + 8))(v101, v27);
  }

  v83 = v19;
  v84 = v18;
  v90 = v22;
  v91 = v23;
  v98 = v16;
  v88 = v13;
  v99 = v10;
  __swift_project_boxed_opaque_existential_1(&v106, v109);
  v29 = v101;
  v30 = v111;
  sub_19A57144C();
  v111 = v30;
  if (v30)
  {
    v31 = sub_19A5714FC();
    (*(*(v31 - 8) + 8))(v29, v31);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v106);
  }

  v32 = v90;
  v33 = sub_19A57135C();
  v34 = v84;
  MEMORY[0x19A8FECE0](v33);
  (*(v85 + 8))(v21, v83);
  v35 = v89;
  AppleDiffusionPipeline.ResourceURLs.init(resourcesAt:)(v34, v89);
  v36 = v86;
  v79 = v25;
  sub_19A57134C();
  v37 = sub_19A5713CC();
  v39 = v38;
  (v93[1])(v36, v92);

  *v35 = v37;
  v35[1] = v39;
  v40 = sub_19A4E8180(MEMORY[0x1E69E7CC0]);
  v41 = 0;
  v42 = (v97 + 48);
  v78[6] = 0x800000019A596540;
  v78[5] = 0x800000019A596560;
  v78[4] = 0x800000019A596580;
  v78[3] = 0x800000019A5965A0;
  v78[2] = 0x800000019A5965C0;
  v78[1] = 0x800000019A5965E0;
  v86 = 0x800000019A59D910;
  LODWORD(v85) = *MEMORY[0x1E6968F68];
  v84 = (v94 + 13);
  v83 = (v94 + 1);
  v94 = (v97 + 8);
  v92 = (v97 + 32);
  v82 = (v97 + 16);
  v80 = v97 + 40;
  v43 = v111;
  v44 = v100;
  v45 = v91;
  v46 = v87;
  v81 = (v97 + 48);
  while (1)
  {
    v47 = *(&unk_1F0DB5600 + v41 + 32);
    sub_19A55ECF4(v29, *(&unk_1F0DB5600 + v41 + 32), v46);
    if (!v43)
    {
      break;
    }

    v43 = 0;
LABEL_7:
    if (++v41 == 10)
    {
      v111 = v43;
      v75 = sub_19A5714FC();
      (*(*(v75 - 8) + 8))(v29, v75);
      (*(v45 + 8))(v79, v32);
      v76 = *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 28);
      v77 = v89;

      *(v77 + v76) = v40;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v106);
    }
  }

  v111 = 0;
  if ((*v42)(v46, 1, v44) == 1)
  {
    sub_19A2F3FA0(v46, &qword_1EAFA02E8);
    v43 = v111;
    goto LABEL_7;
  }

  v93 = v40;
  if (v47 <= 4)
  {
    if (v47 <= 1)
    {
      if (v47)
      {
        v49 = 0xD000000000000016;
        v50 = &v105;
        goto LABEL_32;
      }

      v48 = 0xE90000000000006ELL;
      v49 = 0x6F6974616D696E61;
    }

    else if (v47 == 2)
    {
      v48 = 0xE500000000000000;
      v49 = 0x696A6F6D65;
    }

    else
    {
      if (v47 == 3)
      {
        v49 = 0xD000000000000012;
        v50 = &v106;
        goto LABEL_32;
      }

      v49 = 0x61727473756C6C69;
      v48 = 0xEC0000006E6F6974;
    }
  }

  else if (v47 > 7)
  {
    if (v47 != 8)
    {
      if (v47 == 9)
      {
        v49 = 0xD00000000000001BLL;
        v50 = &v109;
      }

      else
      {
        v49 = 0xD000000000000014;
        v50 = &v110;
      }

      goto LABEL_32;
    }

    v49 = 0x63735F656C797473;
    v48 = 0xEE00656C62626972;
  }

  else
  {
    if (v47 == 5)
    {
      v49 = 0xD000000000000019;
      v50 = &v107;
    }

    else
    {
      if (v47 == 6)
      {
        v48 = 0xE600000000000000;
        v49 = 0x686374656B73;
        goto LABEL_33;
      }

      v49 = 0xD000000000000013;
      v50 = &v108;
    }

LABEL_32:
    v48 = *(v50 - 32);
  }

LABEL_33:
  v103 = v48;
  v104 = 1852400174;
  v105 = 0xE400000000000000;
  v102 = v49;
  v102 = sub_19A572F8C();
  v103 = v51;
  sub_19A572ECC();
  v104 = v102;
  v105 = v103;
  v102 = 0x2F61726F6CLL;
  v103 = 0xE500000000000000;
  v102 = sub_19A572F8C();
  v103 = v52;
  sub_19A572ECC();

  v104 = v102;
  v105 = v103;
  v102 = 0xD00000000000001BLL;
  v103 = v86;
  v102 = sub_19A572F8C();
  v103 = v53;
  sub_19A572ECC();

  v104 = v102;
  v105 = v103;
  v55 = v95;
  v54 = v96;
  (*v84)(v95, v85, v96);
  sub_19A2F4450();
  v56 = v88;
  sub_19A570E8C();
  (*v83)(v55, v54);

  v57 = *v94;
  v58 = v100;
  (*v94)(v46, v100);
  v59 = *v92;
  v60 = v98;
  (*v92)(v98, v56, v58);
  (*v82)(v99, v60, v58);
  v61 = v93;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = v61;
  v63 = sub_19A31FBD4(v47);
  v65 = *(v61 + 16);
  v66 = (v64 & 1) == 0;
  v67 = __OFADD__(v65, v66);
  v68 = v65 + v66;
  if (!v67)
  {
    v69 = v64;
    if (*(v61 + 24) >= v68)
    {
      v45 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = v63;
        sub_19A555218();
        v45 = v91;
        v63 = v74;
      }

      v71 = v97;
      v32 = v90;
      v40 = v104;
      if ((v69 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_19A5519F8(v68, isUniquelyReferenced_nonNull_native);
      v63 = sub_19A31FBD4(v47);
      if ((v69 & 1) != (v70 & 1))
      {
        goto LABEL_48;
      }

      v71 = v97;
      v32 = v90;
      v45 = v91;
      v40 = v104;
      if ((v69 & 1) == 0)
      {
LABEL_37:
        v40[(v63 >> 6) + 8] |= 1 << v63;
        *(v40[6] + v63) = v47;
        v44 = v100;
        v59((v40[7] + *(v71 + 72) * v63), v99, v100);
        v57(v98, v44);
        v72 = v40[2];
        v67 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v67)
        {
          goto LABEL_47;
        }

        v40[2] = v73;
        goto LABEL_43;
      }
    }

    v44 = v100;
    (*(v71 + 40))(v40[7] + *(v71 + 72) * v63, v99, v100);
    v57(v98, v44);
LABEL_43:
    v43 = v111;
    v29 = v101;
    v42 = v81;
    goto LABEL_7;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_19A57404C();
  __break(1u);
  return result;
}

uint64_t sub_19A57023C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19A570EAC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  (*(a2 + *(v15 + 24)))(a1);
  (*(a3 + *(v15 + 24)))(a1);
  v16 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_19A570E4C();
  v17 = sub_19A572CCC();

  v18 = [v16 fileExistsAtPath:v17 isDirectory:0];

  if (v18)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  if (v18)
  {
    v20 = v14;
  }

  else
  {
    v20 = v12;
  }

  (*(v9 + 8))(v19, v8);
  return (*(v9 + 32))(a4, v20, v8);
}

uint64_t sub_19A570408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_19A57023C(a1, v2 + v7, v8, a2);
}

unint64_t sub_19A5704B4()
{
  result = qword_1ED8252F0;
  if (!qword_1ED8252F0)
  {
    sub_19A570EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8252F0);
  }

  return result;
}

uint64_t sub_19A57050C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DiffusionBaseCapabilitiesError()
{
  result = qword_1EAFA3870;
  if (!qword_1EAFA3870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A5705C8()
{
  result = sub_19A570EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

CGRect VNNormalizedRectForImageRect(CGRect imageRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x1EEDE7380](imageWidth, imageHeight, imageRect.origin, *&imageRect.origin.y, imageRect.size, *&imageRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}