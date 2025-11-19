uint64_t sub_222AD07BC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = sub_222B01748();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_222B016A8();
  v30 = 0;
  v11 = [v9 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:0 error:&v30];

  v12 = v30;
  if (!v11)
  {
    v21 = v30;
    v15 = sub_222B01628();

    swift_willThrow();
    sub_222AD0B08();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 3;
    swift_willThrow();
    goto LABEL_15;
  }

  v13 = sub_222B025F8();
  v14 = v12;

  v15 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v16 = *(v13 + 16);
  if (!v16)
  {
LABEL_13:

LABEL_15:
    v23 = *MEMORY[0x277D85DE8];
    return v15;
  }

  v17 = 0;
  v27 = *(v13 + 16);
  v28 = v4 + 16;
  v18 = (v4 + 8);
  v26 = v16 - 1;
  while (1)
  {
    if (v17 >= *(v13 + 16))
    {
      __break(1u);
    }

    (*(v4 + 16))(v8, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v3);
    sub_222ACF3DC(v8, v29, v31);
    if (v2)
    {
      break;
    }

    v19 = (*v18)(v8, v3);
    if (v31[0])
    {
      MEMORY[0x223DC6810](v19);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      v25 = v17 + 1;
      sub_222B02688();
      v15 = v30;
      v20 = v26 == v17;
      v17 = v25;
      if (v20)
      {
        goto LABEL_13;
      }
    }

    else if (v27 == ++v17)
    {
      goto LABEL_13;
    }
  }

  (*v18)(v8, v3);

  __break(1u);
  return result;
}

unint64_t sub_222AD0B08()
{
  result = qword_27D01E208;
  if (!qword_27D01E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E208);
  }

  return result;
}

uint64_t sub_222AD0B5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x534F63616DLL;
    }

    else
    {
      v4 = 5459817;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1397716596;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x534F6863746177;
  }

  else
  {
    v4 = 0x4F6E776F6E6B6E75;
    v3 = 0xE900000000000053;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x534F63616DLL;
    }

    else
    {
      v9 = 5459817;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x534F6863746177;
    if (a2 != 3)
    {
      v6 = 0x4F6E776F6E6B6E75;
      v5 = 0xE900000000000053;
    }

    if (a2 == 2)
    {
      v7 = 1397716596;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_222B02F78();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_222AD0CD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000004E574F4ELL;
  v3 = 0xD000000000000013;
  v4 = 0x4B4E552D56455250;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x4B4E552D56455250;
    }

    if (v5 == 2)
    {
      v7 = 0x8000000222B101A0;
    }

    else
    {
      v7 = 0xEC0000004E574F4ELL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5)
    {
      v7 = 0x8000000222B10180;
    }

    else
    {
      v7 = 0x8000000222B10160;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000013;
    v2 = 0x8000000222B101A0;
  }

  v8 = 0x8000000222B10180;
  if (!a2)
  {
    v3 = 0xD000000000000011;
    v8 = 0x8000000222B10160;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222B02F78();
  }

  return v11 & 1;
}

SiriPrivateLearningAnalytics::FeatureControl __swiftcall FeatureControl.init(defaultEnablement:)(Swift::OpaquePointer defaultEnablement)
{
  v1->_rawValue = MEMORY[0x277D84F90];
  v1[1]._rawValue = defaultEnablement._rawValue;
  result.localeControls = defaultEnablement;
  return result;
}

__n128 AnyFeature.__allocating_init(name:control:)(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = *a3;
  *(v6 + 32) = *a3;
  return result;
}

SiriPrivateLearningAnalytics::OSType_optional __swiftcall OSType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OSType.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 1397716596;
  v4 = 0x534F6863746177;
  if (v1 != 3)
  {
    v4 = 0x4F6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x534F63616DLL;
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

uint64_t sub_222AD0F4C()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AD1020()
{
  *v0;
  *v0;
  *v0;
  sub_222B02448();
}

uint64_t sub_222AD10E0()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222AD11BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE700000000000000;
  v8 = 0x534F6863746177;
  if (v2 != 3)
  {
    v8 = 0x4F6E776F6E6B6E75;
    v7 = 0xE900000000000053;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F63616DLL;
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

uint64_t FeatureResolver.init(featureFlagResolver:trialResolver:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_222A1E5A8(a1, a3);

  return sub_222A1E5A8(a2, a3 + 40);
}

uint64_t FeatureResolver.isTrialFactorEnabled(_:scope:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v2[8];
  v7 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v6);
  v9[0] = v5;
  v9[1] = v4;
  return (*(v7 + 8))(a1, v9, v6, v7) & 1;
}

double FeatureResolver.getTrialFactorValue(_:scope:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = v2[8];
  v7 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v6);
  v9[0] = v5;
  v9[1] = v4;
  (*(v7 + 16))(a1, v9, v6, v7);
  return result;
}

uint64_t FeatureResolver.isFeatureFlagEnabled(_:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 8))(a1, v3, v4) & 1;
}

Swift::Void __swiftcall FeatureResolver.refresh()()
{
  v1 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "FeatureResolver: refreshing trial resolver", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = v1[8];
  v7 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
  (*(v7 + 24))(v6, v7);
}

uint64_t sub_222AD18A0(uint64_t *a1)
{
  v2 = *a1;
  if ((a1[1] & 1) == 0)
  {
    result = sub_222AD322C(v1, v25);
    v10 = *(v2 + 16);
    if (!v10)
    {
LABEL_26:
      v16 = 0;
      goto LABEL_27;
    }

    v11 = 0;
    v12 = v2 + 32;
    while (1)
    {
      if (v11 >= *(v2 + 16))
      {
        goto LABEL_30;
      }

      sub_222AD3264(v12, v24);
      sub_222AD3264(v24, &v19);
      if (!v23)
      {
        break;
      }

      if (v23 == 1)
      {
        sub_222A1E5A8(&v19, &v17);
        v14 = v26;
        v15 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v13 = (*(v15 + 8))(&v17, v14, v15);
        __swift_destroy_boxed_opaque_existential_0(&v17);
LABEL_16:
        result = sub_222AD329C(v24);
        if (v13)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      if (!(*(&v19 + 1) | v19 | v22 | v21 | v20))
      {
        sub_222AD329C(v24);
        v16 = 1;
        goto LABEL_27;
      }

      result = sub_222AD329C(v24);
LABEL_17:
      ++v11;
      v12 += 48;
      if (v10 == v11)
      {
        goto LABEL_26;
      }
    }

    v17 = *(&v19 + 1);
    v18 = v20;
    v13 = FeatureResolver.isTrialFactorEnabled(_:scope:)(v19, &v17);

    goto LABEL_16;
  }

  result = sub_222AD322C(v1, v25);
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_24:
    v16 = 1;
LABEL_27:
    sub_222A35F58(v25);
    return v16;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (v5 < *(v2 + 16))
  {
    sub_222AD3264(v6, v24);
    sub_222AD3264(v24, &v19);
    if (!v23)
    {
      v17 = *(&v19 + 1);
      v18 = v20;
      v7 = FeatureResolver.isTrialFactorEnabled(_:scope:)(v19, &v17);

      goto LABEL_5;
    }

    if (v23 == 1)
    {
      sub_222A1E5A8(&v19, &v17);
      v8 = v26;
      v9 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v7 = (*(v9 + 8))(&v17, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(&v17);
LABEL_5:
      result = sub_222AD329C(v24);
      if ((v7 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (*(&v19 + 1) | v19 | v22 | v21 | v20)
    {
      sub_222AD329C(v24);
      goto LABEL_26;
    }

    result = sub_222AD329C(v24);
LABEL_6:
    ++v5;
    v6 += 48;
    if (v4 == v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t FeatureResolver.getDoubleFeatureParameterValue(parameter:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v6[0] = a1[1];
  v6[1] = v2;

  FeatureResolver.getTrialFactorValue(_:scope:)(v1, v6);
  v4 = v3;

  return v4;
}

uint64_t LocaleControl.init(locales:enablement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static FeatureControlError.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return _s28SiriPrivateLearningAnalytics6LocaleV2eeoiySbAC_ACtFZ_0(&v11, &v8) & 1;
}

uint64_t sub_222AD1C08(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return _s28SiriPrivateLearningAnalytics6LocaleV2eeoiySbAC_ACtFZ_0(&v11, &v8) & 1;
}

double FeatureControl.init(localeControl:defaultEnablement:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E210, &qword_222B0D3D8);
  v6 = swift_allocObject();
  *&result = 1;
  v8 = *a1;
  *(v6 + 16) = xmmword_222B05250;
  *(v6 + 32) = v8;
  *a3 = v6;
  a3[1] = a2;
  return result;
}

double FeatureControl.init(localeControl:)@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_222A395C8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E210, &qword_222B0D3D8);
  v5 = swift_allocObject();
  *&result = 1;
  v7 = *a1;
  *(v5 + 16) = xmmword_222B05250;
  *(v5 + 32) = v7;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

SiriPrivateLearningAnalytics::FeatureControl __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeatureControl.init(localeControls:defaultEnablement:)(Swift::OpaquePointer localeControls, Swift::OpaquePointer defaultEnablement)
{
  v6 = v2;

  sub_222AD2A40(v7);
  if (v3)
  {

    v8 = swift_bridgeObjectRelease_n();
  }

  else
  {

    v6->_rawValue = localeControls._rawValue;
    v6[1]._rawValue = defaultEnablement._rawValue;
  }

  result.defaultEnablement._rawValue = v9;
  result.localeControls._rawValue = v8;
  return result;
}

uint64_t sub_222AD1D90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v7 = a2;
  v8 = *a4;
  v9 = a4[1];
  v10 = a4[3];
  v74 = *a4;
  v75 = a4[2];
  v69 = *a5;
  v11 = *v5;
  v67 = v5[1];
  v12 = *(*v5 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 32;
    v72 = a4[1];
    v73 = a4[3];
    v65 = *(*v5 + 16);
    v66 = *v5;
    v64 = v11 + 32;
    while (v13 < *(v11 + 16))
    {
      v15 = (v14 + 16 * v13);
      v16 = *v15;
      if (*(*v15 + 16))
      {
        v17 = v15[1];
        v18 = *(v16 + 40);
        sub_222B03128();
        v76[0] = v74;
        v76[1] = v9;

        MEMORY[0x223DC66E0](95, 0xE100000000000000);
        MEMORY[0x223DC66E0](v75, v10);
        sub_222B02448();

        v19 = sub_222B03168();
        v20 = -1 << *(v16 + 32);
        v21 = v19 & ~v20;
        if ((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            v23 = (*(v16 + 48) + 32 * v21);
            v24 = v23[1];
            v25 = v23[2];
            v6 = v23[3];
            v77 = *v23;
            swift_bridgeObjectRetain_n();

            MEMORY[0x223DC66E0](95, 0xE100000000000000);
            MEMORY[0x223DC66E0](v25, v6);
            v26 = v77;
            v77 = v74;
            v78 = v72;

            MEMORY[0x223DC66E0](95, 0xE100000000000000);
            MEMORY[0x223DC66E0](v75, v73);
            if (v26 == v74 && v24 == v78)
            {
              break;
            }

            v27 = sub_222B02F78();

            if (v27)
            {
              goto LABEL_35;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

LABEL_35:
          if (*(v17 + 16))
          {
            LODWORD(v10) = v69;
            v49 = sub_222A26FC4(v69);
            v9 = v72;
            v13 = v73;
            v7 = a2;
            if (v50)
            {
              v51 = *(v17 + 56) + 16 * v49;
              v52 = *v51;
              LOBYTE(v51) = *(v51 + 8);
              v77 = v52;
              LOBYTE(v78) = v51;
              LOBYTE(v6) = sub_222AD18A0(&v77);
            }

            else
            {

              LOBYTE(v6) = 0;
            }
          }

          else
          {

            LOBYTE(v6) = 0;
            v9 = v72;
            v13 = v73;
            LODWORD(v10) = v69;
            v7 = a2;
          }

          if (qword_280CBA628 == -1)
          {
LABEL_41:
            v53 = sub_222B02148();
            __swift_project_value_buffer(v53, qword_280CBC458);

            v33 = sub_222B02128();
            v34 = sub_222B028D8();

            if (!os_log_type_enabled(v33, v34))
            {
              goto LABEL_60;
            }

            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v76[0] = v36;
            *v35 = 136315906;
            *(v35 + 4) = sub_222A230FC(a1, v7, v76);
            *(v35 + 12) = 2080;
            v71 = v6;
            if (v6)
            {
              v54 = 0x64656C62616E65;
            }

            else
            {
              v54 = 0x64656C6261736964;
            }

            if (v6)
            {
              v55 = 0xE700000000000000;
            }

            else
            {
              v55 = 0xE800000000000000;
            }

            v56 = sub_222A230FC(v54, v55, v76);

            *(v35 + 14) = v56;
            *(v35 + 22) = 2080;
            v77 = v74;
            v78 = v9;

            MEMORY[0x223DC66E0](95, 0xE100000000000000);
            MEMORY[0x223DC66E0](v75, v13);
            v57 = sub_222A230FC(v77, v78, v76);

            *(v35 + 24) = v57;
            *(v35 + 32) = 2080;
            if (v10 <= 1)
            {
              if (v10)
              {
                v58 = 0xE500000000000000;
                v59 = 0x534F63616DLL;
              }

              else
              {
                v59 = 5459817;
                v58 = 0xE300000000000000;
              }
            }

            else
            {
              if (v10 != 2)
              {
                LOBYTE(v6) = v71;
                if (v10 == 3)
                {
                  v58 = 0xE700000000000000;
                  v59 = 0x534F6863746177;
                }

                else
                {
                  v59 = 0x4F6E776F6E6B6E75;
                  v58 = 0xE900000000000053;
                }

LABEL_58:
                v60 = sub_222A230FC(v59, v58, v76);

                *(v35 + 34) = v60;
                v61 = "Feature %s is %s in locale: %s for %s";
LABEL_59:
                _os_log_impl(&dword_222A1C000, v33, v34, v61, v35, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x223DC7E30](v36, -1, -1);
                MEMORY[0x223DC7E30](v35, -1, -1);
                goto LABEL_60;
              }

              v58 = 0xE400000000000000;
              v59 = 1397716596;
            }

            LOBYTE(v6) = v71;
            goto LABEL_58;
          }

LABEL_72:
          swift_once();
          goto LABEL_41;
        }

LABEL_3:

        v9 = v72;
        v10 = v73;
        v7 = a2;
        v12 = v65;
        v11 = v66;
        v14 = v64;
      }

      if (++v13 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_72;
  }

LABEL_14:
  if (*(v67 + 16) && (v28 = sub_222A26FC4(v69), (v29 & 1) != 0))
  {
    v30 = *(v67 + 56) + 16 * v28;
    v31 = *v30;
    LOBYTE(v30) = *(v30 + 8);
    v77 = v31;
    LOBYTE(v78) = v30;
    LOBYTE(v6) = sub_222AD18A0(&v77);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v32 = sub_222B02148();
    __swift_project_value_buffer(v32, qword_280CBC458);

    v33 = sub_222B02128();
    v34 = sub_222B028D8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76[0] = v36;
      *v35 = 136315906;
      *(v35 + 4) = sub_222A230FC(a1, v7, v76);
      *(v35 + 12) = 2080;
      v77 = v74;
      v78 = v9;

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v75, v10);
      v37 = sub_222A230FC(v77, v78, v76);

      *(v35 + 14) = v37;
      *(v35 + 22) = 2080;
      if (v6)
      {
        v38 = 0x64656C62616E65;
      }

      else
      {
        v38 = 0x64656C6261736964;
      }

      if (v6)
      {
        v39 = 0xE700000000000000;
      }

      else
      {
        v39 = 0xE800000000000000;
      }

      v40 = sub_222A230FC(v38, v39, v76);

      *(v35 + 24) = v40;
      *(v35 + 32) = 2080;
      if (v69 <= 1)
      {
        if (v69)
        {
          v42 = 0x534F63616DLL;
        }

        else
        {
          v42 = 5459817;
        }

        if (v69)
        {
          v41 = 0xE500000000000000;
        }

        else
        {
          v41 = 0xE300000000000000;
        }
      }

      else if (v69 == 2)
      {
        v41 = 0xE400000000000000;
        v42 = 1397716596;
      }

      else if (v69 == 3)
      {
        v41 = 0xE700000000000000;
        v42 = 0x534F6863746177;
      }

      else
      {
        v42 = 0x4F6E776F6E6B6E75;
        v41 = 0xE900000000000053;
      }

      v63 = sub_222A230FC(v42, v41, v76);

      *(v35 + 34) = v63;
      v61 = "Feature %s in %s is not in a controlled locale and is %s for %s";
      goto LABEL_59;
    }

LABEL_60:
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v43 = sub_222B02148();
    __swift_project_value_buffer(v43, qword_280CBC458);

    v44 = sub_222B02128();
    v45 = sub_222B028D8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v76[0] = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_222A230FC(a1, v7, v76);
      *(v46 + 12) = 2080;
      v77 = v74;
      v78 = v9;

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v75, v10);
      v48 = sub_222A230FC(v77, v78, v76);

      *(v46 + 14) = v48;
      _os_log_impl(&dword_222A1C000, v44, v45, "Feature %s in locale: %s is disabled", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v47, -1, -1);
      MEMORY[0x223DC7E30](v46, -1, -1);
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t AnyFeature.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AnyFeature.control.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t AnyFeature.init(name:control:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  return v3;
}

uint64_t sub_222AD27E8(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *a3;
  v9 = v3[5];
  v17 = v3[4];
  v18 = v9;
  v10 = v3[2];
  v11 = v3[3];
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v13 = v8;

  LOBYTE(a1) = sub_222AD1D90(v10, v11, a1, &v14, &v13);

  return a1 & 1;
}

void *AnyFeature.deinit()
{
  v1 = v0[3];

  v3 = v0[4];
  v2 = v0[5];

  return v0;
}

uint64_t AnyFeature.__deallocating_deinit()
{
  v1 = v0[3];

  v3 = v0[4];
  v2 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_222AD2910(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v5 = *v3;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *a3;
  v10 = *(*v3 + 40);
  v18 = *(*v3 + 32);
  v19 = v10;
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v14 = v9;

  LOBYTE(a1) = sub_222AD1D90(v11, v12, a1, &v15, &v14);

  return a1 & 1;
}

uint64_t DoubleFeatureParameter.init(factor:scope:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  return result;
}

uint64_t DoubleFeatureParameter.getValue(resolver:)()
{
  v1 = *v0;
  v2 = v0[2];
  v6[0] = v0[1];
  v6[1] = v2;

  FeatureResolver.getTrialFactorValue(_:scope:)(v1, v6);
  v4 = v3;

  return v4;
}

uint64_t sub_222AD2A40(uint64_t a1)
{
  v43 = MEMORY[0x277D84FA0];
  v30 = *(a1 + 16);
  if (!v30)
  {
  }

  v1 = 0;
  v2 = a1 + 32;
  v29 = a1 + 32;
  while (2)
  {
    v3 = *(v2 + 16 * v1);
    v31 = v1 + 1;
    v4 = v3 + 56;
    v5 = 1 << *(v3 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    v32 = v8;
    v33 = v4;
    v34 = result;
    if (!v7)
    {
      while (1)
      {
LABEL_7:
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return result;
        }

        if (v11 >= v8)
        {
          break;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      v1 = v31;
      v2 = v29;
      if (v31 != v30)
      {
        continue;
      }
    }

    break;
  }

  while (1)
  {
LABEL_11:
    v12 = (*(result + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v7)))));
    v14 = v12[2];
    v13 = v12[3];
    v15 = v43;
    v37 = v12[1];
    v38 = *v12;
    v39 = v14;
    v40 = v13;
    if (!*(v43 + 16))
    {

      goto LABEL_20;
    }

    v16 = *(v43 + 40);
    sub_222B03128();
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v14, v13);
    sub_222B02448();

    v17 = sub_222B03168();
    v18 = -1 << *(v15 + 32);
    v19 = v17 & ~v18;
    v36 = v15 + 56;
    if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      break;
    }

LABEL_20:
    v7 &= v7 - 1;
    sub_222AE43CC(&v41, v38, v37, v39, v40);

    v4 = v33;
    result = v34;
    v8 = v32;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v35 = ~v18;
  while (1)
  {
    v20 = v15;
    v21 = (*(v15 + 48) + 32 * v19);
    v22 = v21[1];
    v24 = v21[2];
    v23 = v21[3];
    v41 = *v21;
    v42 = v22;
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v24, v23);
    v26 = v41;
    v25 = v42;
    v41 = v38;
    v42 = v37;

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v39, v40);
    if (v26 == v41 && v25 == v42)
    {
      break;
    }

    v27 = sub_222B02F78();

    if (v27)
    {
      goto LABEL_25;
    }

    v19 = (v19 + 1) & v35;
    v15 = v20;
    if (((*(v36 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_25:

  sub_222AD32CC();
  swift_allocError();
  *v28 = v38;
  v28[1] = v37;
  v28[2] = v39;
  v28[3] = v40;
  swift_willThrow();
}

unint64_t sub_222AD2DD4()
{
  result = qword_280CBA2C8[0];
  if (!qword_280CBA2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBA2C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics23FeatureEnablementPolicyO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_222AD2E58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222AD2E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_222AD2EE0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_222AD2F34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222AD2F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
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

uint64_t sub_222AD2FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_222AD3040(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_222AD3194(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_222AD31DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_222AD32CC()
{
  result = qword_27D01E218;
  if (!qword_27D01E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E218);
  }

  return result;
}

uint64_t sub_222AD3348()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - v4;
  sub_222A35464();
  sub_222B01A38();
  v6 = type metadata accessor for BiomePLSELFStoreReader();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = (*(v1 + 32))(v9 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics22BiomePLSELFStoreReader_stream, v5, v0);
  qword_280CBC430 = v9;
  return result;
}

uint64_t sub_222AD3460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E240, &unk_222B0D8C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - v14;
  if (qword_27D01C560 != -1)
  {
    swift_once();
  }

  v16 = sub_222B02148();
  __swift_project_value_buffer(v16, qword_27D01E220);
  v17 = sub_222B02128();
  v18 = sub_222B028D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_222A1C000, v17, v18, "Registering a closure to read SELF events from Biome", v19, 2u);
    MEMORY[0x223DC7E30](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  sub_222A352E8(&qword_27D01E248, &qword_27D01CE90, qword_222B05200);
  sub_222B01A58();
  sub_222A352E8(&qword_27D01E250, &qword_27D01E238, &qword_222B0D8B8);
  sub_222B019D8();
  (*(v5 + 8))(v9, v4);
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 16) = v25;
  *(v20 + 24) = v21;
  sub_222A352E8(&qword_27D01E258, &qword_27D01E240, &unk_222B0D8C0);

  v22 = sub_222B019A8();

  (*(v11 + 8))(v15, v10);
  return v22;
}

uint64_t sub_222AD37EC()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics22BiomePLSELFStoreReader_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BiomePLSELFStoreReader()
{
  result = qword_280CB8F48;
  if (!qword_280CB8F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222AD38E8()
{
  sub_222AD3978();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_222AD3978()
{
  if (!qword_280CBA1D8)
  {
    sub_222A35464();
    v0 = sub_222B01A18();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBA1D8);
    }
  }
}

uint64_t sub_222AD39D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v23 - v10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E240, &unk_222B0D8C0);
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23, v14);
  v16 = &v23 - v15;
  v17 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE90, qword_222B05200);
  sub_222A352E8(&qword_27D01E248, &qword_27D01CE90, qword_222B05200);
  sub_222B01A58();
  sub_222A352E8(&qword_27D01E250, &qword_27D01E238, &qword_222B0D8B8);
  sub_222B019D8();
  (*(v7 + 8))(v11, v6);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = v24;
  *(v18 + 24) = v19;
  sub_222A352E8(&qword_27D01E258, &qword_27D01E240, &unk_222B0D8C0);

  v20 = v23;
  v21 = sub_222B019E8();

  (*(v12 + 8))(v16, v20);
  return v21;
}

uint64_t sub_222AD3CA0()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01E220);
  v1 = __swift_project_value_buffer(v0, qword_27D01E220);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AD3D68(uint64_t a1, void (*a2)(void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA70, &unk_222B0AB20);
  sub_222B025E8();
  if (qword_27D01C560 != -1)
  {
    swift_once();
  }

  v2 = MEMORY[0x277D84F90];
  v3 = sub_222B02148();
  __swift_project_value_buffer(v3, qword_27D01E220);
  v4 = sub_222B02128();
  v5 = sub_222B028E8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_222A1C000, v4, v5, "Failed to convert sink input into StreamReadResult", v6, 2u);
    MEMORY[0x223DC7E30](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE18, &qword_222B0BD80);
  v7 = swift_allocObject();
  v7[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v8 = swift_allocObject();
  v9 = 0;
  *(v8 + 16) = 0;
  if (v2 >> 62)
  {
    v9 = sub_222B02DC8();
  }

  v10 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v7[2] = v8;
  v7[3] = v10;
  v7[4] = v11;
  v7[5] = v10;
  a2(v7);
}

void sub_222AD4A3C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_222AD4AA8()
{
  result = qword_27D01E278;
  if (!qword_27D01E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E278);
  }

  return result;
}

void SiriUserFeedbackLearningPlatformResult.init(mlrTaskResult:error:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_222B023C8();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B01558();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v14 = sub_222B02148();
  v15 = __swift_project_value_buffer(v14, qword_280CBC458);
  v16 = a1;
  v17 = a2;
  v18 = sub_222B02128();
  v19 = sub_222B028D8();

  if (os_log_type_enabled(v18, v19))
  {
    v53 = v15;
    v20 = a3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62[0] = v23;
    *v21 = 136315650;
    *(v21 + 4) = sub_222A230FC(0xD00000000000001ALL, 0x8000000222B10790, v62);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v16;
    *v22 = a1;
    *(v21 + 22) = 2112;
    v24 = v16;
    if (a2)
    {
      v25 = a2;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    *(v21 + 24) = v27;
    v22[1] = v28;
    _os_log_impl(&dword_222A1C000, v18, v19, "SiriUserFeedbackLearningPlatformResult.%s mlrTaskResult: %@, error: %@", v21, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4B0, &qword_222B0A530);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223DC7E30](v23, -1, -1);
    MEMORY[0x223DC7E30](v21, -1, -1);

    a2 = v26;
    a3 = v20;
    if (!a1)
    {
LABEL_19:
      v49 = sub_222B02128();
      v50 = sub_222B028E8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_222A1C000, v49, v50, "SiriUserFeedbackLearningPlatformResult: MLR task result is nil", v51, 2u);
        MEMORY[0x223DC7E30](v51, -1, -1);
      }

      v29 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
LABEL_22:

      v52 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_19;
    }
  }

  v29 = v16;
  v30 = [v29 JSONResult];
  if (!v30)
  {
LABEL_14:
    v16 = v29;
    v43 = sub_222B02128();
    v44 = sub_222B028E8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v62[0] = v47;
      *v45 = 138412546;
      *(v45 + 4) = v16;
      *v46 = a1;
      *(v45 + 12) = 2080;
      v48 = v16;
      *(v45 + 14) = sub_222A230FC(0x746C75736572, 0xE600000000000000, v62);
      _os_log_impl(&dword_222A1C000, v43, v44, "SiriUserFeedbackLearningPlatformResult: Unable to get json result value from %@ for parameter: %s", v45, 0x16u);
      sub_222A34F20(v46, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223DC7E30](v47, -1, -1);
      MEMORY[0x223DC7E30](v45, -1, -1);
    }

    v29 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
    goto LABEL_22;
  }

  v31 = v30;
  v32 = sub_222B022B8();

  if (!*(v32 + 16) || (v33 = sub_222A26EC8(0x746C75736572, 0xE600000000000000), (v34 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_222A25344(*(v32 + 56) + 32 * v33, v62);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v62[0] = v60;
  v62[1] = v61;
  v35 = v54;
  sub_222B01538();
  sub_222A397FC();
  sub_222B02B88();
  (*(v55 + 8))(v35, v56);

  v36 = v57;
  sub_222B023B8();
  v37 = sub_222B02398();
  v39 = v38;

  (*(v58 + 8))(v36, v59);
  if (v39 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v40 = sub_222B014C8();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_222B014B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
  sub_222AD5B68(&qword_280CB4BD0, sub_222AD5B14);
  sub_222B014A8();

  sub_222A398A4(v37, v39);
  v52 = v62[0];
LABEL_23:
  *a3 = v52;
  a3[1] = v29;
  a3[2] = a2;
}

uint64_t SiriUserFeedbackLearningPlatformResult.toSchedulerResult()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_222A23D30(0, v2, 0);
    v3 = v16;
    v4 = (v1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v4 >= 2)
      {
        v9 = *(v4 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (*v4 >= 2)
      {
        v10 = *v4;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v4 - 2);

      sub_222A39234(v7, v8);
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_222A23D30((v12 > 1), v13 + 1, 1);
      }

      v4 += 4;
      *(v16 + 16) = v13 + 1;
      v14 = (v16 + 32 * v13);
      v14[4] = v6;
      v14[5] = v5;
      v14[6] = v9;
      v14[7] = v10;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *SiriUserFeedbackLearningPlatformResult.error.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t SiriUserFeedbackLearningPlatformResult.description.getter()
{
  v1 = MEMORY[0x223DC6850](*v0, &type metadata for SiriUserFeedbackLearningPluginRunResult);
  MEMORY[0x223DC66E0](v1);

  return 0x203A746C75736572;
}

uint64_t SiriUserFeedbackLearningPlatformResult.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_222B023C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);

  v8 = sub_222B02128();
  v9 = sub_222B028D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_222A230FC(0x7365722874696E69, 0xED0000293A746C75, &v39);
    *(v10 + 12) = 2080;
    v12 = MEMORY[0x223DC6850](a1, &type metadata for SiriUserFeedbackLearningPluginRunResult);
    v14 = sub_222A230FC(v12, v13, &v39);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_222A1C000, v8, v9, "SiriUserFeedbackLearningPlatformResult.%s status: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v11, -1, -1);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  v15 = sub_222B01528();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  sub_222B01518();
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D738, &qword_222B08D40);
  sub_222AD5B68(&qword_280CB4BD8, sub_222AD5BE0);
  v18 = sub_222B01508();
  v20 = v19;
  sub_222B023B8();
  v21 = sub_222B023A8();
  if (v22)
  {
    v23 = v21;
    v24 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B05250;
    *(inited + 32) = 0x746C75736572;
    v26 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v23;
    *(inited + 56) = v24;
    sub_222A396CC(inited);
    swift_setDeallocating();
    sub_222A34F20(v26, &qword_27D01CF40, &unk_222B055D0);
    v27 = objc_allocWithZone(MEMORY[0x277D25408]);
    v28 = sub_222B022A8();

    v29 = [v27 initWithJSONResult:v28 unprivatizedVector:0];
  }

  else
  {

    v30 = sub_222B02128();
    v31 = sub_222B028E8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v32 = 136315138;
      v33 = MEMORY[0x223DC6850](a1, &type metadata for SiriUserFeedbackLearningPluginRunResult);
      v35 = v34;

      v36 = sub_222A230FC(v33, v35, &v39);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_222A1C000, v30, v31, "SiriUserFeedbackLearningPlatformResult: Unable to encode %s to string", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223DC7E30](v38, -1, -1);
      MEMORY[0x223DC7E30](v32, -1, -1);
    }

    else
    {
    }

    v29 = [objc_allocWithZone(MEMORY[0x277D25408]) initWithJSONResult:0 unprivatizedVector:0];
  }

  sub_222A26530(v18, v20);

  *a2 = a1;
  a2[1] = v29;
  a2[2] = 0;
  return result;
}

unint64_t sub_222AD5B14()
{
  result = qword_280CB7AE0;
  if (!qword_280CB7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7AE0);
  }

  return result;
}

uint64_t sub_222AD5B68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D738, &qword_222B08D40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222AD5BE0()
{
  result = qword_280CB7AE8[0];
  if (!qword_280CB7AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB7AE8);
  }

  return result;
}

char *static EntityExtractor.extract(from:)(unint64_t a1)
{
  v1 = static NlxSELFUtils.getTopNlxUsoGraph(from:)(a1);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v4 = sub_222B02148();
  __swift_project_value_buffer(v4, qword_280CBC458);

  v5 = sub_222B02128();
  v6 = sub_222B028D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    sub_222B01E38();
    sub_222A92564();
    v9 = sub_222B02F38();
    v11 = sub_222A230FC(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_222A1C000, v5, v6, "[EntityExtractor] The constructed graph: \n%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DC7E30](v8, -1, -1);
    MEMORY[0x223DC7E30](v7, -1, -1);
  }

  v12 = MEMORY[0x223DC5EC0](v3);
  v13 = sub_222AD77F8(v12);

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:

    return v2;
  }

  v14 = sub_222B02DC8();
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
  v20 = v2;
  result = sub_222A23E14(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v2 = v20;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x223DC6F00](v16, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      v20 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_222A23E14((v18 > 1), v19 + 1, 1);
        v2 = v20;
      }

      ++v16;
      *(v2 + 16) = v19 + 1;
      *(v2 + 8 * v19 + 32) = v17;
    }

    while (v14 != v16);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_222AD5EEC()
{
  sub_222B01CB8();
  sub_222A2552C(v112, v110);
  if (v111)
  {
    sub_222A2552C(v110, v109);
    sub_222B01CF8();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01D98();

      if (v0)
      {
        v108 = MEMORY[0x277D84F90];
        v1 = v0 & 0xFFFFFFFFFFFFFF8;
        if (v0 >> 62)
        {
LABEL_261:
          v2 = sub_222B02DC8();
          if (v2)
          {
LABEL_6:
            v3 = 0;
            v4 = MEMORY[0x277D84F90];
            do
            {
              v5 = v3;
              while (1)
              {
                if ((v0 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x223DC6F00](v5, v0);
                  v3 = v5 + 1;
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_175;
                  }
                }

                else
                {
                  if (v5 >= *(v1 + 16))
                  {
                    goto LABEL_176;
                  }

                  v6 = *(v0 + 8 * v5 + 32);

                  v3 = v5 + 1;
                  if (__OFADD__(v5, 1))
                  {
LABEL_175:
                    __break(1u);
LABEL_176:
                    __break(1u);
                    goto LABEL_177;
                  }
                }

                sub_222B01C58();

                if (v107)
                {
                  break;
                }

                ++v5;
                if (v3 == v2)
                {
                  goto LABEL_401;
                }
              }

              MEMORY[0x223DC6810](v7);
              if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v8 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_222B02648();
              }

              sub_222B02688();
              v4 = v108;
            }

            while (v3 != v2);
            goto LABEL_401;
          }
        }

        else
        {
          v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v2)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_400;
      }

LABEL_354:
      sub_222A254C4(v112);

      v4 = 0;
LABEL_404:
      __swift_destroy_boxed_opaque_existential_0(v109);
      goto LABEL_405;
    }

    sub_222B01D18();
    if (swift_dynamicCast())
    {

      v9 = sub_222B01D98();

      if (!v9)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
LABEL_284:
        v11 = sub_222B02DC8();
        if (v11)
        {
LABEL_27:
          v12 = 0;
          v4 = MEMORY[0x277D84F90];
          do
          {
            v13 = v12;
            while (1)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DC6F00](v13, v9);
                v12 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  goto LABEL_196;
                }
              }

              else
              {
                if (v13 >= *(v10 + 16))
                {
                  goto LABEL_197;
                }

                v14 = *(v9 + 8 * v13 + 32);

                v12 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
LABEL_196:
                  __break(1u);
LABEL_197:
                  __break(1u);
                  goto LABEL_198;
                }
              }

              sub_222B01C58();

              if (v107)
              {
                break;
              }

              ++v13;
              if (v12 == v11)
              {
                goto LABEL_401;
              }
            }

            MEMORY[0x223DC6810](v15);
            if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v16 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_222B02648();
            }

            sub_222B02688();
            v4 = v108;
          }

          while (v12 != v11);
          goto LABEL_401;
        }
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
          goto LABEL_27;
        }
      }

LABEL_400:
      v4 = MEMORY[0x277D84F90];
LABEL_401:

      goto LABEL_402;
    }

    sub_222B01D08();
    if (swift_dynamicCast())
    {

      v17 = sub_222B01D98();

      if (!v17)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      if (v17 >> 62)
      {
        v18 = sub_222B02DC8();
        if (!v18)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_400;
        }
      }

      v19 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v20 = v19;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v20, v17);
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_218;
            }

            v21 = *(v17 + 8 * v20 + 32);

            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
              goto LABEL_219;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v20;
          if (v19 == v18)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v22);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v19 != v18);
      goto LABEL_401;
    }

    sub_222B01CD8();
    if (swift_dynamicCast())
    {

      v24 = sub_222B01D98();

      if (!v24)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v25 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
LABEL_332:
        v26 = sub_222B02DC8();
        if (!v26)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_400;
        }
      }

      v27 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v28 = v27;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v28, v24);
            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_238;
            }
          }

          else
          {
            if (v28 >= *(v25 + 16))
            {
              goto LABEL_239;
            }

            v29 = *(v24 + 8 * v28 + 32);

            v27 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
              goto LABEL_240;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v28;
          if (v27 == v26)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v30);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v27 != v26);
      goto LABEL_401;
    }

    sub_222B01D38();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01DE8();

      if (!v0)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
LABEL_357:
        v32 = sub_222B02DC8();
        if (!v32)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v32 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
          goto LABEL_400;
        }
      }

      v33 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v34 = v33;
        while (1)
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v34, v0);
            v33 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_259;
            }
          }

          else
          {
            if (v34 >= *(v1 + 16))
            {
              goto LABEL_260;
            }

            v35 = *(v0 + 8 * v34 + 32);

            v33 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
LABEL_259:
              __break(1u);
LABEL_260:
              __break(1u);
              goto LABEL_261;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v34;
          if (v33 == v32)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v36);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v33 != v32);
      goto LABEL_401;
    }

    sub_222B01D78();
    if (swift_dynamicCast())
    {

      v9 = sub_222B01DE8();

      if (!v9)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
LABEL_362:
        v38 = sub_222B02DC8();
        if (!v38)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          goto LABEL_400;
        }
      }

      v39 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v40 = v39;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v40, v9);
            v39 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_282;
            }
          }

          else
          {
            if (v40 >= *(v10 + 16))
            {
              goto LABEL_283;
            }

            v41 = *(v9 + 8 * v40 + 32);

            v39 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_282:
              __break(1u);
LABEL_283:
              __break(1u);
              goto LABEL_284;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v40;
          if (v39 == v38)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v42);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v39 != v38);
      goto LABEL_401;
    }

    sub_222B01D68();
    if (swift_dynamicCast())
    {

      v44 = sub_222B01DE8();

      if (!v44)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v45 = v44 & 0xFFFFFFFFFFFFFF8;
      if (v44 >> 62)
      {
LABEL_366:
        v46 = sub_222B02DC8();
        if (!v46)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v46)
        {
          goto LABEL_400;
        }
      }

      v47 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v48 = v47;
        while (1)
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v48, v44);
            v47 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_305;
            }
          }

          else
          {
            if (v48 >= *(v45 + 16))
            {
              goto LABEL_306;
            }

            v49 = *(v44 + 8 * v48 + 32);

            v47 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
              goto LABEL_307;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v48;
          if (v47 == v46)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v50);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v47 != v46);
      goto LABEL_401;
    }

    sub_222B01DD8();
    if (swift_dynamicCast())
    {

      v24 = sub_222B01E28();

      if (!v24)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v25 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
LABEL_370:
        v52 = sub_222B02DC8();
        if (!v52)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v52 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v52)
        {
          goto LABEL_400;
        }
      }

      v53 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v54 = v53;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v54, v24);
            v53 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_330;
            }
          }

          else
          {
            if (v54 >= *(v25 + 16))
            {
              goto LABEL_331;
            }

            v55 = *(v24 + 8 * v54 + 32);

            v53 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
LABEL_330:
              __break(1u);
LABEL_331:
              __break(1u);
              goto LABEL_332;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v54;
          if (v53 == v52)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v56);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v57 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v53 != v52);
      goto LABEL_401;
    }

    sub_222B01E18();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01E28();

      if (!v0)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
LABEL_374:
        v58 = sub_222B02DC8();
        if (!v58)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v58 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v58)
        {
          goto LABEL_400;
        }
      }

      v59 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v60 = v59;
        while (1)
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v60, v0);
            v59 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              goto LABEL_355;
            }
          }

          else
          {
            if (v60 >= *(v1 + 16))
            {
              goto LABEL_356;
            }

            v61 = *(v0 + 8 * v60 + 32);

            v59 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
              goto LABEL_357;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v60;
          if (v59 == v58)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v62);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v63 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v59 != v58);
      goto LABEL_401;
    }

LABEL_177:
    sub_222B01E08();
    if (swift_dynamicCast())
    {

      v9 = sub_222B01E28();

      if (!v9)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
LABEL_378:
        v64 = sub_222B02DC8();
        if (!v64)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v64 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v64)
        {
          goto LABEL_400;
        }
      }

      v65 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v66 = v65;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v66, v9);
            v65 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              goto LABEL_360;
            }
          }

          else
          {
            if (v66 >= *(v10 + 16))
            {
              goto LABEL_361;
            }

            v67 = *(v9 + 8 * v66 + 32);

            v65 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
              goto LABEL_362;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v66;
          if (v65 == v64)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v68);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v69 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v65 != v64);
      goto LABEL_401;
    }

LABEL_198:
    sub_222B01D48();
    if (swift_dynamicCast())
    {

      v44 = sub_222B01CE8();

      if (!v44)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v45 = v44 & 0xFFFFFFFFFFFFFF8;
      if (v44 >> 62)
      {
LABEL_382:
        v70 = sub_222B02DC8();
        if (!v70)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v70 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v70)
        {
          goto LABEL_400;
        }
      }

      v71 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v72 = v71;
        while (1)
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v72, v44);
            v71 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_364;
            }
          }

          else
          {
            if (v72 >= *(v45 + 16))
            {
              goto LABEL_365;
            }

            v73 = *(v44 + 8 * v72 + 32);

            v71 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
              goto LABEL_366;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v72;
          if (v71 == v70)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v74);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v75 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v71 != v70);
      goto LABEL_401;
    }

LABEL_219:
    sub_222B01DB8();
    if (swift_dynamicCast())
    {

      v24 = sub_222B01CE8();

      if (!v24)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v25 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
LABEL_386:
        v76 = sub_222B02DC8();
        if (!v76)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v76 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v76)
        {
          goto LABEL_400;
        }
      }

      v77 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v78 = v77;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v78, v24);
            v77 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              goto LABEL_368;
            }
          }

          else
          {
            if (v78 >= *(v25 + 16))
            {
              goto LABEL_369;
            }

            v79 = *(v24 + 8 * v78 + 32);

            v77 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
              goto LABEL_370;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v78;
          if (v77 == v76)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v80);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v77 != v76);
      goto LABEL_401;
    }

LABEL_240:
    sub_222B01D28();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01BD8();

      if (!v0)
      {
LABEL_307:
        sub_222B01BE8();
        if (v108)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_222B06DF0;
          *(v4 + 32) = v108;
LABEL_402:

          goto LABEL_403;
        }

        v4 = 0;
LABEL_403:
        sub_222A254C4(v112);
        goto LABEL_404;
      }

      v108 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
LABEL_390:
        v81 = sub_222B02DC8();
        if (v81)
        {
LABEL_244:
          v82 = 0;
          v4 = MEMORY[0x277D84F90];
          do
          {
            v83 = v82;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DC6F00](v83, v0);
                v82 = v83 + 1;
                if (__OFADD__(v83, 1))
                {
                  goto LABEL_372;
                }
              }

              else
              {
                if (v83 >= *(v1 + 16))
                {
                  goto LABEL_373;
                }

                v84 = *(v0 + 8 * v83 + 32);

                v82 = v83 + 1;
                if (__OFADD__(v83, 1))
                {
LABEL_372:
                  __break(1u);
LABEL_373:
                  __break(1u);
                  goto LABEL_374;
                }
              }

              sub_222B01C58();

              if (v107)
              {
                break;
              }

              ++v83;
              if (v82 == v81)
              {
                goto LABEL_392;
              }
            }

            MEMORY[0x223DC6810](v85);
            if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_222B02648();
            }

            sub_222B02688();
            v4 = v108;
          }

          while (v82 != v81);
          goto LABEL_392;
        }
      }

      else
      {
        v81 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v81)
        {
          goto LABEL_244;
        }
      }

      v4 = MEMORY[0x277D84F90];
LABEL_392:

      goto LABEL_403;
    }

    sub_222B01DF8();
    if (swift_dynamicCast())
    {

      v9 = sub_222B01CE8();

      if (!v9)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
        v86 = sub_222B02DC8();
        if (!v86)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v86 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v86)
        {
          goto LABEL_400;
        }
      }

      v87 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v88 = v87;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v88, v9);
            v87 = v88 + 1;
            if (__OFADD__(v88, 1))
            {
              goto LABEL_376;
            }
          }

          else
          {
            if (v88 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_377;
            }

            v89 = *(v9 + 8 * v88 + 32);

            v87 = v88 + 1;
            if (__OFADD__(v88, 1))
            {
LABEL_376:
              __break(1u);
LABEL_377:
              __break(1u);
              goto LABEL_378;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v88;
          if (v87 == v86)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v90);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v87 != v86);
      goto LABEL_401;
    }

    sub_222B01DC8();
    if (swift_dynamicCast())
    {

      v44 = sub_222B01CE8();

      if (!v44)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v45 = v44 & 0xFFFFFFFFFFFFFF8;
      if (v44 >> 62)
      {
        v91 = sub_222B02DC8();
        if (!v91)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v91 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v91)
        {
          goto LABEL_400;
        }
      }

      v92 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v93 = v92;
        while (1)
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v93, v44);
            v92 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_380;
            }
          }

          else
          {
            if (v93 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_381;
            }

            v94 = *(v44 + 8 * v93 + 32);

            v92 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
LABEL_380:
              __break(1u);
LABEL_381:
              __break(1u);
              goto LABEL_382;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v93;
          if (v92 == v91)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v95);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v92 != v91);
      goto LABEL_401;
    }

    sub_222B01D88();
    if (swift_dynamicCast())
    {

      v24 = sub_222B01D58();

      if (!v24)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v25 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
        v96 = sub_222B02DC8();
        if (!v96)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v96 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v96)
        {
          goto LABEL_400;
        }
      }

      v97 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v98 = v97;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v98, v24);
            v97 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              goto LABEL_384;
            }
          }

          else
          {
            if (v98 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_385;
            }

            v99 = *(v24 + 8 * v98 + 32);

            v97 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
              goto LABEL_386;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v98;
          if (v97 == v96)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v100);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v97 != v96);
      goto LABEL_401;
    }

    sub_222B01DA8();
    if (swift_dynamicCast())
    {

      v0 = sub_222B01CE8();

      if (!v0)
      {
        goto LABEL_354;
      }

      v108 = MEMORY[0x277D84F90];
      v1 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
        v101 = sub_222B02DC8();
        if (!v101)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v101 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v101)
        {
          goto LABEL_400;
        }
      }

      v102 = 0;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v103 = v102;
        while (1)
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v103, v0);
            v102 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              goto LABEL_388;
            }
          }

          else
          {
            if (v103 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_389;
            }

            v104 = *(v0 + 8 * v103 + 32);

            v102 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
              goto LABEL_390;
            }
          }

          sub_222B01C58();

          if (v107)
          {
            break;
          }

          ++v103;
          if (v102 == v101)
          {
            goto LABEL_401;
          }
        }

        MEMORY[0x223DC6810](v105);
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222B02648();
        }

        sub_222B02688();
        v4 = v108;
      }

      while (v102 != v101);
      goto LABEL_401;
    }

    sub_222A254C4(v112);
    __swift_destroy_boxed_opaque_existential_0(v109);
  }

  else
  {
    sub_222A254C4(v112);
  }

  v4 = 0;
LABEL_405:
  sub_222A254C4(v110);
  return v4;
}

unint64_t sub_222AD77F8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_54;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x277D84F90];
    v30 = v1;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DC6F00](v3, v29);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v3 >= *(v33 + 16))
        {
          goto LABEL_49;
        }

        v5 = *(v32 + 8 * v3);

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v28 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_222B02DC8();
          isUniquelyReferenced_nonNull_bridgeObject = v28;
          goto LABEL_3;
        }
      }

      v7 = sub_222AD5EEC();

      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v2;
      }

      v2 = v8 >> 62;
      if (v8 >> 62)
      {
        v9 = sub_222B02DC8();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        v26 = sub_222B02DC8();
        v12 = v26 + v9;
        if (__OFADD__(v26, v9))
        {
LABEL_45:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_45;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_24;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10)
        {
LABEL_24:
          sub_222B02DC8();
          goto LABEL_25;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_222B02CC8();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v2)
      {
        v18 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_222B02DC8();
        v13 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          if (v9 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      if (((v16 >> 1) - v15) < v9)
      {
        goto LABEL_51;
      }

      v36 = v3;
      v19 = v13 + 8 * v15 + 32;
      v31 = v13;
      if (v2)
      {
        if (v17 < 1)
        {
          goto LABEL_53;
        }

        sub_222AD7B84();
        for (i = 0; i != v17; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E280, &unk_222B0DAB0);
          v21 = sub_222A6E094(v35, i, v8);
          v23 = *v22;

          (v21)(v35, 0);
          *(v19 + 8 * i) = v23;
        }
      }

      else
      {
        sub_222B01C18();
        swift_arrayInitWithCopy();
      }

      v1 = v30;
      v3 = v36;
      if (v9 >= 1)
      {
        v24 = *(v31 + 16);
        v6 = __OFADD__(v24, v9);
        v25 = v24 + v9;
        if (v6)
        {
          goto LABEL_52;
        }

        *(v31 + 16) = v25;
      }

LABEL_6:
      v2 = MEMORY[0x277D84F90];
      if (v3 == v1)
      {
        return v4;
      }
    }
  }

  return v2;
}

unint64_t sub_222AD7B84()
{
  result = qword_27D01E288;
  if (!qword_27D01E288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01E280, &unk_222B0DAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E288);
  }

  return result;
}

void *DebugModeFlagUserDefaultsStore.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 0xD000000000000038;
  result[3] = 0x8000000222B15640;
  result[4] = 0xD000000000000012;
  result[5] = 0x8000000222B15680;
  return result;
}

void *DebugModeFlagUserDefaultsStore.init()()
{
  result = v0;
  v0[2] = 0xD000000000000038;
  v0[3] = 0x8000000222B15640;
  v0[4] = 0xD000000000000012;
  v0[5] = 0x8000000222B15680;
  return result;
}

void sub_222AD7C7C(uint64_t *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    v11 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v12 = [v8 BOOLForKey_];
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
}

id sub_222AD7D2C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    return 0;
  }

  v6 = v0[4];
  v7 = v0[5];
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v9 = [v5 BOOLForKey_];

  return v9;
}

void sub_222AD7DCC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = sub_222B026D8();
    v7 = v0[4];
    v8 = v0[5];
    v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    [v5 setValue:v6 forKey:v9];
  }
}

void (*sub_222AD7EAC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = v1[4];
    v9 = v1[5];
    v10 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    v11 = [v7 BOOLForKey_];
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 8) = v11;
  return sub_222AD7F7C;
}

void sub_222AD7F7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_222AD7DCC();
}

uint64_t DebugModeFlagUserDefaultsStore.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DebugModeFlagUserDefaultsStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_222AD800C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    return 0;
  }

  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v10 = [v6 BOOLForKey_];

  return v10;
}

void (*sub_222AD80D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_222AD7EAC(v3);
  return sub_222AD8148;
}

void sub_222AD8148(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_222AD8298()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_280CBC438);
  __swift_project_value_buffer(v0, qword_280CBC438);
  v7 = MEMORY[0x223DC7490]();
  sub_222B02388();

  sub_222B01678();

  sub_222B016D8();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_222AD83E0()
{
  v0 = sub_222B021B8();
  __swift_allocate_value_buffer(v0, qword_280CB7BB0);
  *__swift_project_value_buffer(v0, qword_280CB7BB0) = 60;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id SiriUserFeedbackLearningPluginBase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriUserFeedbackLearningPluginBase.init()()
{
  v1 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger];
  *(v1 + 3) = &type metadata for UsageLogger;
  *(v1 + 4) = &protocol witness table for UsageLogger;
  if (qword_280CB7BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_222B021B8();
  v3 = __swift_project_value_buffer(v2, qword_280CB7BB0);
  (*(*(v2 - 8) + 16))(&v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout], v3, v2);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SiriUserFeedbackLearningPluginBase();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for SiriUserFeedbackLearningPluginBase()
{
  result = qword_280CBA1C8;
  if (!qword_280CBA1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SiriUserFeedbackLearningPluginBase.__allocating_init(usageLogger:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_222A42E40(a1, v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger);
  if (qword_280CB7BA0 != -1)
  {
    swift_once();
  }

  v4 = sub_222B021B8();
  v5 = __swift_project_value_buffer(v4, qword_280CB7BB0);
  (*(*(v4 - 8) + 16))(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout, v5, v4);
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id SiriUserFeedbackLearningPluginBase.init(usageLogger:)(uint64_t *a1)
{
  sub_222A42E40(a1, v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger);
  if (qword_280CB7BA0 != -1)
  {
    swift_once();
  }

  v3 = sub_222B021B8();
  v4 = __swift_project_value_buffer(v3, qword_280CB7BB0);
  (*(*(v3 - 8) + 16))(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout, v4, v3);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SiriUserFeedbackLearningPluginBase();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

char *sub_222AD88A4(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  v7 = a1;
  v8 = sub_222B02128();
  v9 = sub_222B028D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_222A230FC(0x286D726F66726570, 0xEB00000000293A5FLL, v25);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_222A1C000, v8, v9, "SiriUserFeedbackLearningPluginBase.%s task:%@", v10, 0x16u);
    sub_222A8DF88(v11);
    MEMORY[0x223DC7E30](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DC7E30](v12, -1, -1);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  sub_222A42E40(&v3[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger], v22);
  SiriUserFeedbackLearningTask.init(mlrTask:usageLogger:)(v7, v22, v25);
  if (!v2)
  {
    v14 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout;
    sub_222A4DE5C(v25, v22);
    v15 = swift_allocObject();
    *(v15 + 16) = v3;
    v16 = v22[1];
    *(v15 + 24) = v22[0];
    *(v15 + 40) = v16;
    *(v15 + 56) = v22[2];
    *(v15 + 72) = v23;
    *(v15 + 80) = ObjectType;
    v17 = v3;
    sub_222A4D05C(&v3[v14], &unk_222B0DB98, v15, v24);
    sub_222A4DEB8(v25);

    v19 = v24[0];
    v20 = v24[1];
    v21 = v24[3];
    v3 = v24[2];
    sub_222A39248(v19, v20);
  }

  return v3;
}

uint64_t sub_222AD8B58(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 48) = a1;
  v5 = *((*MEMORY[0x277D85000] & *a2) + 0x78);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_222AD8C9C;

  return v9(v3 + 16, a3);
}

uint64_t sub_222AD8C9C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222AD8D98, 0, 0);
}

uint64_t sub_222AD8D98()
{
  *(v0 + 64) = *(v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 88) = v1;
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_222AD8E7C;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000016, 0x8000000222B15800, sub_222AD9338, 0, v4);
}

uint64_t sub_222AD8E7C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222AD8F78, 0, 0);
}

uint64_t sub_222AD8F78()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_222AD9004;

  return sub_222AD9B20();
}

uint64_t sub_222AD9004()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222AD9100, 0, 0);
}

uint64_t sub_222AD9100()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 64);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_222AD9128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222A35344;

  return sub_222AD8B58(a1, v4, v1 + 24);
}

uint64_t sub_222AD92B8()
{
  v5 = v0;
  v1 = *(v0 + 16);
  v4[0] = 0xD000000000000036;
  v4[1] = 0x8000000222B15750;
  SiriUserFeedbackLearningTaskResult.init(status:)(v4, v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_222AD9338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - v6;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_280CBC458);
  v9 = sub_222B02128();
  v10 = sub_222B028D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_222A1C000, v9, v10, "Waiting for all-clear from outgoing SELF logging queue...", v11, 2u);
    MEMORY[0x223DC7E30](v11, -1, -1);
  }

  v12 = [objc_opt_self() sharedAnalytics];
  v13 = [v12 defaultMessageStream];

  (*(v3 + 16))(v7, a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v7, v2);
  aBlock[4] = sub_222AD9F30;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_11;
  v16 = _Block_copy(aBlock);

  [v13 barrierWithCompletion_];
  _Block_release(v16);
}

uint64_t sub_222AD95DC()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v0 = sub_222B02148();
  __swift_project_value_buffer(v0, qword_280CBC458);
  v1 = sub_222B02128();
  v2 = sub_222B028D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_222A1C000, v1, v2, "The outgoing SELF logging queue is now empty/completed", v3, 2u);
    MEMORY[0x223DC7E30](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50);
  return sub_222B02708();
}

id SiriUserFeedbackLearningPluginBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUserFeedbackLearningPluginBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222AD978C(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & **v2) + 0x78);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222A34620;

  return v10(a1, a2);
}

uint64_t sub_222AD98D4()
{
  result = sub_222B021B8();
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

uint64_t dispatch thunk of SiriUserFeedbackLearningPluginBase.run(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222A34620;

  return v10(a1, a2);
}

uint64_t sub_222AD9B3C()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = sub_222B02148();
  v0[7] = __swift_project_value_buffer(v1, qword_280CBC458);
  v2 = sub_222B02128();
  v3 = sub_222B028D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222A1C000, v2, v3, "Waiting for all-clear from bookmarks write queue...", v4, 2u);
    MEMORY[0x223DC7E30](v4, -1, -1);
  }

  if (qword_280CB9D48 != -1)
  {
    swift_once();
  }

  sub_222A42E40(qword_280CB9D50 + 96, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_222AD9D5C;

  return v11(v5, v6);
}

uint64_t sub_222AD9D5C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222AD9E58, 0, 0);
}

uint64_t sub_222AD9E58()
{
  v1 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_222B02128();
  v3 = sub_222B028D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222A1C000, v2, v3, "The bookmarks write queue is now empty/completed", v4, 2u);
    MEMORY[0x223DC7E30](v4, -1, -1);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_222AD9F30()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50) - 8) + 80);

  return sub_222AD95DC();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222AD9FB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

SiriPrivateLearningAnalytics::PluginEventsSchedulerStatus_optional __swiftcall PluginEventsSchedulerStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PluginEventsSchedulerStatus.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646570706F7473;
  }
}

uint64_t sub_222ADA0B4()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222ADA15C()
{
  *v0;
  *v0;
  sub_222B02448();
}

uint64_t sub_222ADA1F0()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222ADA2A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000222B10310;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v5 = 0x8000000222B10330;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x646570706F7473;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_222ADA304(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x8000000222B10310;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000222B10310;
  }

  else
  {
    v6 = 0x8000000222B10330;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646570706F7473;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000015;
    v4 = 0x8000000222B10330;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x646570706F7473;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222B02F78();
  }

  return v11 & 1;
}

uint64_t PluginEventsScheduler.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PluginEventsScheduler.init()();
  return v3;
}

uint64_t PluginEventsScheduler.init()()
{
  v1 = v0;
  v27 = sub_222B02988();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B02968();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_222B02238();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  *(v0 + 16) = 0;
  v13 = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  v26[0] = "drainSELFOutputQueue()";
  v26[1] = v13;
  sub_222B02228();
  v28 = MEMORY[0x277D84F90];
  sub_222ADD3F4(&unk_280CBA210, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v27);
  *(v0 + 24) = sub_222B029A8();
  *(v0 + 56) = &type metadata for EnvironmentFeatureFlags;
  *(v0 + 64) = &protocol witness table for EnvironmentFeatureFlags;
  v14 = type metadata accessor for TrialStatusResolver();
  swift_allocObject();
  v15 = TrialStatusResolver.init()();
  *(v0 + 96) = v14;
  *(v0 + 104) = &protocol witness table for TrialStatusResolver;
  *(v0 + 72) = v15;
  v16 = type metadata accessor for TrialPrivateLearningSuggestionsStatusResolver();
  swift_allocObject();
  v17 = TrialPrivateLearningSuggestionsStatusResolver.init()();
  *(v0 + 136) = v16;
  *(v0 + 144) = &protocol witness table for TrialPrivateLearningSuggestionsStatusResolver;
  *(v0 + 112) = v17;
  if (qword_280CB9568 != -1)
  {
    swift_once();
  }

  v18 = sub_222B01748();
  v19 = __swift_project_value_buffer(v18, qword_280CBC438);
  (*(*(v18 - 8) + 16))(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginPath, v19, v18);
  *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler) = _s28SiriPrivateLearningAnalytics15PluginSchedulerCACycfC_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD80, &unk_222B0BCC8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_222B05250;
  v21 = type metadata accessor for BiomeFilterUserCallAfterHangupSiriCall();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_222B0DC60;
  *(v22 + 32) = 0;
  *(v22 + 40) = 1;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  *(v20 + 56) = v21;
  *(v20 + 64) = &off_2835F5D48;
  *(v20 + 32) = v22;
  v23 = sub_222A8B0BC(v20);
  v24 = (v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor);
  v24[3] = type metadata accessor for BiomeSiriEventScenarioProcessor();
  v24[4] = &off_2835F5D30;
  *v24 = v23;
  *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginRunDelay) = 0x4024000000000000;
  return v1;
}

void sub_222ADA854(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B021D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222B02238();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *__swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler) + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration), *(*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler) + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics15PluginScheduler_deviceConfiguration + 24));
  if ((sub_222ADD258() & 1) != 0 || !AFDeviceSupportsSiriUOD())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CBC458);
    v23 = sub_222B02128();
    v24 = sub_222B028D8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_222A1C000, v23, v24, "PluginEventsScheduler is skipping starting events and trial subscriptions, incompatible device configuration", v25, 2u);
      MEMORY[0x223DC7E30](v25, -1, -1);
    }

    if (a1)
    {
      a1(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v19 = swift_allocObject();
    swift_weakInit();
    v26[2] = *(v3 + 24);
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v26[1] = v19;
    v20[4] = a2;
    aBlock[4] = sub_222ADD704;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222AD9FB4;
    aBlock[3] = &block_descriptor_47_0;
    v26[0] = _Block_copy(aBlock);

    sub_222ADD6EC(a1);
    sub_222B02208();
    v26[3] = MEMORY[0x277D84F90];
    sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
    sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
    sub_222B02BB8();
    v21 = v26[0];
    MEMORY[0x223DC6BE0](0, v17, v11, v26[0]);
    _Block_release(v21);
    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v17, v12);
  }
}

void sub_222ADAC68(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CBC458);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "PluginEventsScheduler is starting events and trial subscriptions", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (*(Strong + 16))
    {
      v12 = sub_222B02F78();

      if ((v12 & 1) == 0)
      {
        v13 = sub_222B02128();
        v14 = sub_222B028E8();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_222A1C000, v13, v14, "PluginEventsScheduler cannot start event / status subscriptions - the scheduler is already subscribed", v15, 2u);
          MEMORY[0x223DC7E30](v15, -1, -1);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    v19 = *(v11 + 96);
    v20 = *(v11 + 104);
    __swift_project_boxed_opaque_existential_1((v11 + 72), v19);
    v21 = *(v20 + 16);
    v22 = *(v21 + 8);

    sub_222ADD6EC(a2);
    v22(v19, v21);
    v24 = *(v11 + 136);
    v23 = *(v11 + 144);
    __swift_project_boxed_opaque_existential_1((v11 + 112), v24);
    (*(*(v23 + 8) + 8))(v24);
    sub_222ADB4D8(a2, a3);
    v25 = *(v11 + 104);
    __swift_project_boxed_opaque_existential_1((v11 + 72), *(v11 + 96));
    v26 = *(*(v25 + 16) + 16);
    v27 = *(v11 + 24);
    v26();

    v28 = *(v11 + 144);
    __swift_project_boxed_opaque_existential_1((v11 + 112), *(v11 + 136));
    v29 = *(*(v28 + 8) + 16);
    v13 = *(v11 + 24);
    v29();

LABEL_15:

    goto LABEL_16;
  }

  v13 = sub_222B02128();
  v16 = sub_222B028E8();
  if (os_log_type_enabled(v13, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_222A1C000, v13, v16, "PluginEventsScheduler cannot start event / status subscriptions - the scheduler was deallocated", v17, 2u);
    MEMORY[0x223DC7E30](v17, -1, -1);
  }

LABEL_16:
}

void sub_222ADB040(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  sub_222ADD770(a1, v41);
  v8 = sub_222B02128();
  v9 = sub_222B028C8();
  if (os_log_type_enabled(v8, v9))
  {
    v38 = a3;
    v10 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315138;
    v14 = v42;
    v13 = v43;

    sub_222ADD7CC(v41);
    v15 = sub_222A230FC(v14, v13, &v40);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_222A1C000, v8, v9, "PluginEventsScheduler received a Trial experiment update for namespace %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DC7E30](v12, -1, -1);
    v16 = v11;
    a4 = v10;
    a3 = v38;
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  else
  {

    sub_222ADD7CC(v41);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (*(Strong + 16))
    {
      v19 = sub_222B02F78();

      if ((v19 & 1) == 0)
      {
        v20 = v18[12];
        v21 = v18[13];
        __swift_project_boxed_opaque_existential_1(v18 + 9, v20);
        (*(*(v21 + 16) + 8))(v20);
        v22 = v18[17];
        v23 = v18[18];
        __swift_project_boxed_opaque_existential_1(v18 + 14, v22);
        (*(*(v23 + 8) + 8))(v22);
        sub_222ADB4D8(a3, a4);

        return;
      }
    }

    else
    {
    }

    sub_222ADD770(a1, v41);
    v31 = sub_222B02128();
    v32 = sub_222B028D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 136315138;
      v35 = v42;
      v36 = v43;

      sub_222ADD7CC(v41);
      v37 = sub_222A230FC(v35, v36, &v39);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_222A1C000, v31, v32, "PluginEventsScheduler is ignoring a Trial experiment update for namespace %s after halting", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DC7E30](v34, -1, -1);
      MEMORY[0x223DC7E30](v33, -1, -1);

      return;
    }
  }

  else
  {
    sub_222ADD770(a1, v41);
    v24 = sub_222B02128();
    v25 = sub_222B028E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v28 = v42;
      v29 = v43;

      sub_222ADD7CC(v41);
      v30 = sub_222A230FC(v28, v29, &v39);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_222A1C000, v24, v25, "PluginEventsScheduler received a Trial experiment update after deallocation for namespace %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v26, -1, -1);

      return;
    }
  }

  sub_222ADD7CC(v41);
}

void sub_222ADB4D8(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  v8 = sub_222B02128();
  v9 = sub_222B028D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222A1C000, v8, v9, "PluginEventsScheduler received a subscribe request", v10, 2u);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  v11 = v3[7];
  v12 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v11);
  v37[3] = &type metadata for SiriPrivateLearningFeatureFlag;
  v37[4] = sub_222A36228();
  LOBYTE(v37[0]) = 0;
  v13 = (*(v12 + 8))(v37, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v37);
  if (v13 & 1) != 0 || (v14 = v3[17], v15 = v3[18], __swift_project_boxed_opaque_existential_1(v3 + 14, v14), ((*(v15 + 16))(v14, v15)))
  {
    if (*(v3 + 16) && *(v3 + 16) == 1)
    {

LABEL_16:
      v20 = sub_222B02128();
      v21 = sub_222B028D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_222A1C000, v20, v21, "Skipping PluginEventsScheduler subscription - the scheduler is already subscribed", v22, 2u);
        MEMORY[0x223DC7E30](v22, -1, -1);
      }

      return;
    }

    v19 = sub_222B02F78();

    if (v19)
    {
      goto LABEL_16;
    }

    v23 = sub_222B02128();
    v24 = sub_222B028D8();

    if (os_log_type_enabled(v23, v24))
    {
      v36 = v6;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136315138;
      v27 = 0x8000000222B10330;
      v28 = 0xD000000000000015;
      if (*(v3 + 16) == 1)
      {
        v28 = 0xD000000000000012;
        v27 = 0x8000000222B10310;
      }

      if (*(v3 + 16))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x646570706F7473;
      }

      if (*(v3 + 16))
      {
        v30 = v27;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      v31 = sub_222A230FC(v29, v30, v37);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v23, v24, "PluginEventsScheduler subscription started; previous state was %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DC7E30](v26, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);

      v6 = v36;
    }

    else
    {
    }

    *(v3 + 16) = 1;
    v32 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor), *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor + 24));
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = a1;
    v34[4] = a2;
    v34[5] = v6;
    v35 = *v32;

    sub_222ADD6EC(a1);
    sub_222A86E7C(sub_222ADD6E0, v34);
  }

  else
  {
    v16 = sub_222B02128();
    v17 = sub_222B028D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222A1C000, v16, v17, "Skipping PluginEventsScheduler subscription - the feature flags are disabled", v18, 2u);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    LOBYTE(v37[0]) = 2;
    sub_222ADC55C(v37);
    if (a1)
    {
      a1(MEMORY[0x277D84F90]);
    }
  }
}

void sub_222ADBA08(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_222B021D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v95 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222B02238();
  v94 = *(v12 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v93 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_222B01748();
  v90 = *(v16 - 8);
  v91 = v16;
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v88 = v19;
  v89 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_222B02268();
  v92 = *(v98 - 8);
  v20 = *(v92 + 64);
  v22 = MEMORY[0x28223BE20](v98, v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v97 = &v82 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v84 = v12;
    v85 = v8;
    v86 = v7;
    v96 = Strong;
    v87 = a4;
    v28 = 0;
    v29 = *(a1 + 16);
    v30 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29 == v28)
      {
        v29 = v30[2];
        if (v29)
        {
          if (qword_280CBA628 != -1)
          {
            goto LABEL_46;
          }

          goto LABEL_14;
        }

        if (!a3)
        {
          goto LABEL_41;
        }

        v53 = MEMORY[0x277D84F90];
        goto LABEL_40;
      }

      if (v28 >= v29)
      {
        break;
      }

      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_44;
      }

      v32 = *(a1 + 32 + 8 * v28++);
      if (v32)
      {
        sub_222A8B7EC(v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222A23DB4(0, v30[2] + 1, 1);
          v30 = aBlock[0];
        }

        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          sub_222A23DB4((v34 > 1), v35 + 1, 1);
          v30 = aBlock[0];
        }

        v30[2] = v35 + 1;
        v30[v35 + 4] = v32;
        v28 = v31;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
LABEL_14:
    v36 = sub_222B02148();
    __swift_project_value_buffer(v36, qword_280CBC458);

    v37 = sub_222B02128();
    v38 = sub_222B028D8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v83 = a3;
      v41 = v40;
      aBlock[0] = v40;
      *v39 = 136315138;
      v42 = MEMORY[0x223DC6850](v30, &type metadata for BiomeSiriEventScenario);
      v44 = sub_222A230FC(v42, v43, aBlock);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_222A1C000, v37, v38, "PluginEventsScheduler is preparing to run plugins, discovered Biome scenarios=%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v45 = v41;
      a3 = v83;
      MEMORY[0x223DC7E30](v45, -1, -1);
      MEMORY[0x223DC7E30](v39, -1, -1);
    }

    v46 = v30[2];
    if (v46)
    {
      v47 = v30[4];
      if ((v47 - 1) < 2)
      {
        v48 = 1;
        goto LABEL_32;
      }

      if ((v47 - 3) < 2)
      {
        v48 = 2;
LABEL_32:
        v63 = 4;
        do
        {
          if (!v29)
          {
            break;
          }

          if (!v46)
          {
            goto LABEL_45;
          }

          v64 = v30[v63] - 1;
          --v46;
          ++v63;
          --v29;
        }

        while (v64 > 3);

        v65 = *(v96 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler);
        v66 = v96;
        v67 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginPath;
        v68 = swift_allocObject();
        v69 = v87;
        *(v68 + 16) = a3;
        *(v68 + 24) = v69;
        v83 = *(v65 + 16);
        sub_222ADD6EC(a3);
        sub_222B02248();
        sub_222B02288();
        v92 = *(v92 + 8);
        (v92)(v24, v98);
        v70 = swift_allocObject();
        swift_weakInit();
        v71 = v90;
        v72 = v66 + v67;
        v73 = v89;
        v74 = v91;
        (*(v90 + 16))(v89, v72, v91);
        v75 = (*(v71 + 80) + 41) & ~*(v71 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = v70;
        *(v76 + 24) = sub_222ADD6FC;
        *(v76 + 32) = v68;
        *(v76 + 40) = v48;
        (*(v71 + 32))(v76 + v75, v73, v74);
        aBlock[4] = sub_222A77CC8;
        aBlock[5] = v76;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_222AD9FB4;
        aBlock[3] = &block_descriptor_40;
        v77 = _Block_copy(aBlock);

        v78 = v93;
        sub_222B02208();
        v99 = MEMORY[0x277D84F90];
        sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
        sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
        v79 = v95;
        v80 = v86;
        sub_222B02BB8();
        v81 = v97;
        MEMORY[0x223DC6BC0](v97, v78, v79, v77);
        _Block_release(v77);

        (*(v85 + 8))(v79, v80);
        (*(v94 + 8))(v78, v84);
        (v92)(v81, v98);

LABEL_41:

        return;
      }

      if (v47)
      {
        v48 = 0;
        goto LABEL_32;
      }

      v54 = sub_222B02128();
      v55 = sub_222B028E8();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock[0] = v57;
        *v56 = 136315138;
        v58 = v30[4];
        sub_222A8B7EC(v58);

        v59 = sub_222A866C0(v58);
        v61 = v60;
        sub_222A8B7FC(v58);
        v62 = sub_222A230FC(v59, v61, aBlock);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_222A1C000, v54, v55, "PluginEventsScheduler cannot convert a Biome scenario (%s) to a plugin run scenario", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x223DC7E30](v57, -1, -1);
        MEMORY[0x223DC7E30](v56, -1, -1);
      }

      else
      {
      }

      if (!a3)
      {
        goto LABEL_41;
      }

      v53 = MEMORY[0x277D84F90];
LABEL_40:
      a3(v53);
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_48;
  }

  if (qword_280CBA628 != -1)
  {
LABEL_48:
    swift_once();
  }

  v49 = sub_222B02148();
  __swift_project_value_buffer(v49, qword_280CBC458);
  v50 = sub_222B02128();
  v51 = sub_222B028E8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_222A1C000, v50, v51, "PluginEventsScheduler was deallocated while subscribed", v52, 2u);
    MEMORY[0x223DC7E30](v52, -1, -1);
  }

  if (a3)
  {
    a3(MEMORY[0x277D84F90]);
  }
}

void sub_222ADC45C(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v4 = sub_222B02148();
  __swift_project_value_buffer(v4, qword_280CBC458);
  v5 = sub_222B02128();
  v6 = sub_222B028D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_222A1C000, v5, v6, "PluginEventsScheduler finished running plugins", v7, 2u);
    MEMORY[0x223DC7E30](v7, -1, -1);
  }

  if (a2)
  {
    a2(a1);
  }
}

uint64_t sub_222ADC55C(char *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v4 = sub_222B02148();
  __swift_project_value_buffer(v4, qword_280CBC458);

  v5 = sub_222B02128();
  v6 = sub_222B028D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = 0x8000000222B10310;
    v10 = 0xD000000000000015;
    if (*(v2 + 16) == 1)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x8000000222B10330;
    }

    if (*(v2 + 16))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x646570706F7473;
    }

    if (*(v2 + 16))
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_222A230FC(v11, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_222A1C000, v5, v6, "PluginEventsScheduler unsubscribing from Biome streams; previous state was %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DC7E30](v8, -1, -1);
    MEMORY[0x223DC7E30](v7, -1, -1);
  }

  if (*(v2 + 16) && *(v2 + 16) == 1)
  {

LABEL_18:
    v16 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor), *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor + 24));
    result = sub_222A87D2C();
    goto LABEL_19;
  }

  v14 = sub_222B02F78();

  if (v14)
  {
    goto LABEL_18;
  }

LABEL_19:
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_222ADC7B4()
{
  v1 = sub_222B021D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222B02238();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v15, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v0 + 24);
  aBlock[4] = sub_222ADD3D4;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_12;
  v12 = _Block_copy(aBlock);

  sub_222B02208();
  v16 = MEMORY[0x277D84F90];
  sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v11, v6, v12);
  _Block_release(v12);
  (*(v2 + 8))(v6, v1);
  (*(v7 + 8))(v11, v15);
}

uint64_t sub_222ADCA54(void *a1)
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "PluginEventsScheduler received an unsubscribe request", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v7 = a1[12];
  v6 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v7);
  (*(*(v6 + 16) + 24))(v7);
  v9 = a1[17];
  v8 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v9);
  (*(*(v8 + 8) + 24))(v9);
  v11 = 0;
  return sub_222ADC55C(&v11);
}

uint64_t PluginEventsScheduler.deinit()
{
  v1 = v0;
  v2 = sub_222B021D8();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B02238();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor;
  sub_222A42E40(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_siriEventProcessor, v38);
  sub_222A42E40(v0 + 72, aBlock);
  v13 = v34;
  v12 = v35;
  __swift_project_boxed_opaque_existential_1(aBlock, v34);
  (*(*(v12 + 2) + 24))(v13);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  sub_222A42E40(v1 + 112, aBlock);
  v15 = v34;
  v14 = v35;
  __swift_project_boxed_opaque_existential_1(aBlock, v34);
  (*(*(v14 + 1) + 24))(v15);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v16 = *(v1 + 24);
  sub_222A42E40(v38, v37);
  v17 = swift_allocObject();
  sub_222A1E5A8(v37, v17 + 16);
  v35 = sub_222ADD43C;
  v36 = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  v34 = &block_descriptor_3;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  sub_222B02208();
  v32 = MEMORY[0x277D84F90];
  sub_222ADD3F4(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v11, v6, v18);
  _Block_release(v18);

  (*(v30 + 8))(v6, v2);
  (*(v28 + 8))(v11, v29);

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v20 = sub_222B02148();
  __swift_project_value_buffer(v20, qword_280CBC458);
  v21 = sub_222B02128();
  v22 = sub_222B028D8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_222A1C000, v21, v22, "PluginEventsScheduler will be deallocated", v23, 2u);
    MEMORY[0x223DC7E30](v23, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  __swift_destroy_boxed_opaque_existential_0((v1 + 72));
  __swift_destroy_boxed_opaque_existential_0((v1 + 112));
  v24 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginPath;
  v25 = sub_222B01748();
  (*(*(v25 - 8) + 8))(v1 + v24, v25);
  v26 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics21PluginEventsScheduler_pluginScheduler);

  __swift_destroy_boxed_opaque_existential_0((v1 + v31));
  return v1;
}

uint64_t PluginEventsScheduler.__deallocating_deinit()
{
  PluginEventsScheduler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222ADD0B0()
{
  v1 = v0;
  if ([objc_opt_self() sharedMGWrapper])
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_222A250BC(0, &qword_280CB83E0, off_2784B85F8);
    if (swift_dynamicCast())
    {
      v2 = [v8 isDeviceIPad];

      *(v0 + 16) = v2;
      return v1;
    }
  }

  else
  {
    sub_222A254C4(v11);
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v3 = sub_222B02148();
  __swift_project_value_buffer(v3, qword_280CBC458);
  v4 = sub_222B02128();
  v5 = sub_222B028E8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_222A1C000, v4, v5, "DeviceConfiguration cannot initialise MobileGestalt instance", v6, 2u);
    MEMORY[0x223DC7E30](v6, -1, -1);
  }

  *(v1 + 16) = 0;
  return v1;
}

id sub_222ADD258()
{
  v1 = v0;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = [result isSharedIPad];

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CBC458);

    v6 = sub_222B02128();
    v7 = sub_222B028D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109376;
      *(v8 + 4) = *(v1 + 16);

      *(v8 + 8) = 1024;
      *(v8 + 10) = v4;
      _os_log_impl(&dword_222A1C000, v6, v7, "DeviceConfiguration fetched device parameters: isIPad=%{BOOL}d, isSharedIPad=%{BOOL}d", v8, 0xEu);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 16) & v4 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222ADD3F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_222ADD470()
{
  result = qword_27D01E310;
  if (!qword_27D01E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E310);
  }

  return result;
}

uint64_t type metadata accessor for PluginEventsScheduler()
{
  result = qword_280CB6570;
  if (!qword_280CB6570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222ADD528()
{
  result = sub_222B01748();
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

uint64_t sub_222ADD6EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{
  v3 = v1[2];

  if (v1[3])
  {
    v4 = v1[4];
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_222ADD854()
{
  v1 = *v0;
  v2 = v0[1];
  return _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
}

NSObject __swiftcall Int.toNSObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

id sub_222ADD8A4()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

NSObject __swiftcall Double.toNSObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithDouble_];
}

id sub_222ADD934()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithDouble_];
}

NSObject __swiftcall Bool.toNSObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

id sub_222ADD9C4()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

uint64_t sub_222ADDA20(void (*a1)(unint64_t *__return_ptr, int *))
{
  v2 = v1;
  v3 = sub_222B02D68();
  sub_222B02E18();
  if (v38)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_38:

    return v4;
  }

  v4 = MEMORY[0x277D84F90];
  v5 = v37;
  v32 = v3;
  while (1)
  {
    v40 = v5;
    v7 = v2;
    a1(&v39, &v40);
    if (v2)
    {
      goto LABEL_37;
    }

    v8 = v39;
    v9 = v39 >> 62;
    v10 = v39 >> 62 ? sub_222B02DC8() : *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v31 = sub_222B02DC8();
      v13 = v31 + v10;
      if (__OFADD__(v31, v10))
      {
LABEL_36:
        __break(1u);
LABEL_37:

        goto LABEL_38;
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v36 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_18;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v3;
        goto LABEL_20;
      }
    }

    else
    {
      if (v11)
      {
LABEL_18:
        sub_222B02DC8();
        goto LABEL_19;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v14 + 16);
LABEL_19:
    v15 = v3;
    result = sub_222B02CC8();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = v8;
    if (v9)
    {
      v21 = v14;
      result = sub_222B02DC8();
      v14 = v21;
      v20 = result;
    }

    else
    {
      v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v20)
    {
      break;
    }

    if (((v18 >> 1) - v17) < v36)
    {
      goto LABEL_40;
    }

    v35 = v4;
    v22 = v14 + 8 * v17 + 32;
    v33 = v14;
    if (v9)
    {
      if (v20 < 1)
      {
        goto LABEL_42;
      }

      sub_222A352E8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0);
      v23 = 0;
      v24 = v19;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
        v25 = sub_222A6E00C(&v37, v23, v24);
        v27 = *v26;
        (v25)(&v37, 0);
        *(v22 + 8 * v23++) = v27;
      }

      while (v20 != v23);
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v2 = v7;
    v3 = v32;
    v4 = v35;
    if (v36 > 0)
    {
      v28 = *(v33 + 16);
      v29 = __OFADD__(v28, v36);
      v30 = v28 + v36;
      if (v29)
      {
        goto LABEL_41;
      }

      *(v33 + 16) = v30;
    }

LABEL_5:
    sub_222B02E18();
    v5 = v37;
    if (v38)
    {
      goto LABEL_38;
    }
  }

  v2 = v7;
  v3 = v15;
  if (v36 <= 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_222ADDD74(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v30 = a3 + 32;
  while (1)
  {
    v37 = *(v30 + 8 * v5);
    a1(&v36, &v37);
    if (v4)
    {

      return v6;
    }

    v8 = v36;
    v9 = v36 >> 62;
    v10 = v36 >> 62 ? sub_222B02DC8() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_222B02DC8();
      v13 = v28 + v10;
      if (__OFADD__(v28, v10))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_17;
      }

      v14 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = v6;
        goto LABEL_19;
      }
    }

    else
    {
      if (v11)
      {
LABEL_17:
        sub_222B02DC8();
        goto LABEL_18;
      }

      v14 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_18:
    result = sub_222B02CC8();
    v33 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_40;
    }

    v20 = v14 + 8 * v16 + 32;
    v29 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_42;
      }

      sub_222A352E8(&qword_27D01E338, &qword_27D01E330, &unk_222B0E0D0);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E330, &unk_222B0E0D0);
        v22 = sub_222A6E11C(v35, i, v8);
        v24 = *v23;
        swift_unknownObjectRetain();
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E328, &qword_222B0E0C8);
      swift_arrayInitWithCopy();
    }

    v6 = v33;
    v4 = 0;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_41;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return v6;
    }
  }

  v19 = v14;
  result = sub_222B02DC8();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  v6 = v33;
  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_222ADE08C(void *a1@<X8>)
{
  v3 = sub_222ADE468();
  if (!v1)
  {
    v4 = v3;
    sub_222B017C8();
    v5 = [v4 publisherFromStartTime_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA70, &unk_222B0AB20);
    v8 = nullsub_1(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E318, &unk_222B0E048);
    WitnessTable = swift_getWitnessTable();
    sub_222ACCD28(v6, WitnessTable, a1);
  }
}

uint64_t static DefaultBiomeReader.shared.getter()
{
  type metadata accessor for DefaultBiomeReader();

  return swift_initStaticObject();
}

void *sub_222ADE1AC(uint64_t a1, uint64_t a2)
{
  v11[3] = a1;
  v4 = sub_222ADDD74(sub_222ADE794, v11, a2);
  if (!v3)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E320, &unk_222B0E058);
    v2 = swift_allocObject();
    v2[6] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    if (v5 >> 62)
    {
      v7 = sub_222B02DC8();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v2[2] = v6;
    v2[3] = v8;
    v2[4] = v9;
    v2[5] = v8;
  }

  return v2;
}

uint64_t sub_222ADE2E4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x223DC6810]();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_222B02648();
  }

  sub_222B02688();
  return swift_endAccess();
}

id sub_222ADE3E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

uint64_t sub_222ADE468()
{
  sub_222A250BC(0, &qword_27D01E350, 0x277CF1A10);
  if (!swift_dynamicCastMetatype())
  {
    sub_222B02C88();

    v19 = 0xD000000000000019;
    v20 = 0x8000000222B159E0;
    swift_getMetatypeMetadata();
    v16 = sub_222B023D8();
    MEMORY[0x223DC66E0](v16);

    MEMORY[0x223DC66E0](41, 0xE100000000000000);
LABEL_9:
    sub_222ADECBC();
    swift_allocError();
    *v18 = v19;
    v18[1] = v20;
    return swift_willThrow();
  }

  v0 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v1 = [v0 NowPlaying];
  swift_unknownObjectRelease();
  v2 = [v1 configuration];

  if (!v2)
  {
    sub_222B02C88();

    v19 = 0xD00000000000002CLL;
    v20 = 0x8000000222B15A00;
    swift_getMetatypeMetadata();
    v17 = sub_222B023D8();
    MEMORY[0x223DC66E0](v17);

    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v3 storeConfig];
  if ([objc_opt_self() isTestPathOverridden])
  {
    v5 = [v4 pruningPolicy];
    if (v5)
    {
      v6 = v5;
      [v5 setFilterByAgeOnRead_];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E358, &qword_222B0E0E8);
  v7 = [v3 streamIdentifier];
  v8 = sub_222B02388();
  v10 = v9;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = v4;
  v13 = objc_allocWithZone(ObjCClassFromMetadata);
  v14 = sub_222ADE3E0(v8, v10, v4, 0);

  return v14;
}

unint64_t sub_222ADE794@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_222ADEC48(*(v2 + 24), *a1, *a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_222ADE858(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v31 = a1;
  v3 = sub_222B01848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B01588();
  sub_222B017C8();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v8, v3);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_222B01578();
  sub_222B017C8();
  v14 = v13;
  v11(v8, v3);
  v15 = v31;
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v17 = [v15 publisherWithStartTime:v12 endTime:v16 maxEvents:0 reversed:0];

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = MEMORY[0x277D84F90];
    v36 = nullsub_1;
    v37 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_222A30CA0;
    v35 = &block_descriptor_13;
    v21 = _Block_copy(&aBlock);
    v22 = swift_allocObject();
    *(v22 + 16) = v30;
    *(v22 + 24) = v20;
    v36 = sub_222ADED28;
    v37 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_222A30CA0;
    v35 = &block_descriptor_11;
    v23 = _Block_copy(&aBlock);

    v24 = [v19 sinkWithCompletion:v21 receiveInput:v23];
    swift_unknownObjectRelease();
    _Block_release(v23);
    _Block_release(v21);

    swift_beginAccess();
    v25 = *(v20 + 16);
  }

  else
  {
    swift_unknownObjectRelease();
    aBlock = 0;
    v33 = 0xE000000000000000;
    sub_222B02C88();

    aBlock = 0xD00000000000002BLL;
    v33 = 0x8000000222B159B0;
    v38 = v15;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E340, &qword_222B0E0E0);
    v26 = sub_222B023D8();
    MEMORY[0x223DC66E0](v26);

    v27 = aBlock;
    v25 = v33;
    sub_222ADECBC();
    swift_allocError();
    *v28 = v27;
    v28[1] = v25;
    swift_willThrow();
  }

  return v25;
}

unint64_t sub_222ADEC48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_222ADE468();
  if (!v3)
  {
    v7 = v6;
    a3 = sub_222ADE858(v7, a1, a3);
  }

  return a3;
}

unint64_t sub_222ADECBC()
{
  result = qword_27D01E348;
  if (!qword_27D01E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E348);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222ADED68(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = *v2;
  v6 = sub_222A26F40(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  v9 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  v16 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = sub_222B018D8();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
  v14 = *(*(v11 + 56) + 8 * v8);
  sub_222ADF894(v8, v11);
  *v4 = v11;
  return v14;
}

uint64_t sub_222ADEE38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_222A26F40(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222A2C4C0();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_222B018D8();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_222ADF894(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_222ADEF00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_222A26F40(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v23 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222A2D4D8();
    v9 = v23;
  }

  v10 = *(v9 + 48);
  v11 = sub_222B018D8();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = *(v12 + 1);
  sub_222ADFE18(v6, v9);
  *v2 = v9;
  v18 = 256;
  if (!v14)
  {
    v18 = 0;
  }

  v19 = v18 | v13;
  v20 = 0x10000;
  if (!v15)
  {
    v20 = 0;
  }

  v21 = 0x1000000;
  if (!v16)
  {
    v21 = 0;
  }

  return v19 | v20 | v21;
}

uint64_t sub_222ADF020(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_222A2E3A4(a1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = sub_222A3A264(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B8, &unk_222B09100);
    v11 = swift_allocObject();
    *(v11 + 16) = v12;
  }

  sub_222ADF440(a2, a3);
  swift_beginAccess();

  v13 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_222AE9600(v11, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v16;
  swift_endAccess();
}

uint64_t sub_222ADF14C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_222A2E3A4(a1);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v9 = *(*(v5 + 56) + 8 * v6);
    v10 = MEMORY[0x277D84F90];
    swift_beginAccess();

    v11 = sub_222ADEE38(a2);
    swift_endAccess();

    if (v11)
    {
      return v11;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_222ADF238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (*(v12 + 16) && (v13 = sub_222A2E3A4(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  (*(v7 + 16))(v11, a2, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_222AA8E90(0, v15[2] + 1, 1, v15);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_222AA8E90(v16 > 1, v17 + 1, 1, v15);
  }

  v15[2] = v17 + 1;
  (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v11, v6);
  swift_beginAccess();
  v18 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_222AE8EA8(v15, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v22;
  return swift_endAccess();
}

uint64_t sub_222ADF440(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_222A26F40(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v16 = v9;
  v10 = a2;
  MEMORY[0x223DC6810]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_222B02648();
  }

  sub_222B02688();
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_222AE974C(v16, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v15;
  return swift_endAccess();
}

unint64_t sub_222ADF594(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_222B02BD8();
    v16 = v14;
    v44 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v45 = *(v17 + 56);
    v42 = (v17 - 8);
    v43 = v18;
    do
    {
      v19 = v11;
      v20 = v45 * v13;
      v21 = v16;
      v22 = v17;
      v43(v10, *(a2 + 48) + v45 * v13, v4);
      v23 = *(a2 + 40);
      sub_222AE00D0();
      v24 = sub_222B022E8();
      result = (*v42)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v44)
      {
        if (v25 >= v44 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          v29 = v28 + v45 * a1;
          v30 = v28 + v20 + v45;
          v31 = v45 * a1 < v20 || v29 >= v30;
          v17 = v22;
          if (v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v45 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 = *(a2 + 56);
          v33 = *(*(type metadata accessor for LogicalClockTable.DeviceFixedContextTime() - 8) + 72);
          v34 = v33 * a1;
          result = v32 + v33 * a1;
          v35 = v33 * v13;
          v36 = v32 + v33 * v13 + v33;
          if (v34 < v35 || result >= v36)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v19;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v38 = v34 == v35;
            v11 = v19;
            v16 = v21;
            if (!v38)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v44 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222ADF894(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_222B02BD8();
    v16 = v14;
    v40 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = *(v17 + 56);
    v38 = (v17 - 8);
    v39 = v18;
    do
    {
      v19 = v11;
      v20 = v41 * v13;
      v21 = v16;
      v22 = v17;
      v39(v10, *(a2 + 48) + v41 * v13, v4);
      v23 = *(a2 + 40);
      sub_222AE00D0();
      v24 = sub_222B022E8();
      result = (*v38)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v41 * a1;
          v29 = v28 + v20 + v41;
          v30 = v41 * a1 < v20 || result >= v29;
          v17 = v22;
          if (v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v16 = v21;
            v11 = v19;
          }

          else
          {
            v31 = v41 * a1 == v20;
            v11 = v19;
            if (!v31)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
            }
          }

          v32 = *(a2 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v13);
          if (a1 != v13 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v13;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222ADFB4C(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_222B02BD8();
    v16 = v14;
    v40 = (v15 + 1) & v14;
    v41 = a2 + 64;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v19 = *(v17 + 56);
    v38 = (v17 - 8);
    v39 = v18;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v39(v10, *(a2 + 48) + v19 * v13, v4);
      v23 = *(a2 + 40);
      sub_222AE00D0();
      v24 = sub_222B022E8();
      result = (*v38)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          v29 = v19 * a1;
          v30 = v28 + v19 * a1;
          v31 = v28 + v20 + v19;
          if (v19 * a1 < v20 || v30 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v29 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v33 = *(a2 + 56);
          result = v33 + v29;
          if (v29 < v20 || result >= v33 + v20 + v19)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v17 = v22;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v34 = v29 == v20;
            v17 = v22;
            v16 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v11 = v41;
    }

    while (((*(v41 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222ADFE18(int64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_222B02BD8();
    v16 = v14;
    v40 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = *(v17 + 56);
    v38 = (v17 - 8);
    v39 = v18;
    do
    {
      v19 = v11;
      v20 = v41 * v13;
      v21 = v16;
      v22 = v17;
      v39(v10, *(a2 + 48) + v41 * v13, v4);
      v23 = *(a2 + 40);
      sub_222AE00D0();
      v24 = sub_222B022E8();
      result = (*v38)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v41 * a1;
          v29 = v28 + v20 + v41;
          v30 = v41 * a1 < v20 || result >= v29;
          v17 = v22;
          if (v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v16 = v21;
            v11 = v19;
          }

          else
          {
            v31 = v41 * a1 == v20;
            v11 = v19;
            if (!v31)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
            }
          }

          v32 = *(a2 + 56);
          v33 = (v32 + 16 * a1);
          v34 = (v32 + 16 * v13);
          if (a1 != v13 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v13;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_222AE00D0()
{
  result = qword_280CBA1F0;
  if (!qword_280CBA1F0)
  {
    sub_222B018D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1F0);
  }

  return result;
}

uint64_t PLUSSuggestionRedundancyState.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1);
  return sub_222B03168();
}

uint64_t PLUSSuggestionMetadata.__allocating_init(suggestionSurfaced:suggestionNoveltyState:)(_BYTE *a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = *a1;
  *(result + 17) = v5;
  return result;
}

uint64_t PLUSSuggestionMetadata.init(suggestionSurfaced:suggestionNoveltyState:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = *a1;
  *(v2 + 17) = v3;
  return v2;
}

unint64_t sub_222AE02E8()
{
  result = qword_27D01E370;
  if (!qword_27D01E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E370);
  }

  return result;
}

unint64_t sub_222AE0370()
{
  result = qword_27D01E388;
  if (!qword_27D01E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E388);
  }

  return result;
}

unint64_t sub_222AE03F8()
{
  result = qword_27D01E3A0;
  if (!qword_27D01E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E3A0);
  }

  return result;
}

void *Queue.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_222AE0550(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_222AE0560(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void *Queue.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

uint64_t sub_222AE05A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = *(v2 + 80);
    v11 = *(v4 - 8);
    (*(v11 + 16))(a1, v3 + *(*v3 + 88), v4);
    v6 = *(v11 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = *(v2 + 80);
    v6 = *(*(v9 - 8) + 56);
    v7 = a1;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t sub_222AE06D0(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Queue.QueueNode();
  (*(v5 + 16))(v8, a1, v4);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = *v12;
  *(v12 + *(*v12 + 96)) = 0;
  result = (*(*(*(v13 + 80) - 8) + 32))(v12 + *(*v12 + 88), v8);
  *(v12 + *(*v12 + 96)) = 0;
  v15 = v2[4];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v2[4] = v17;
    v18 = v2[3];
    if (v18)
    {
      v19 = *(*v18 + 96);
      v20 = *(v18 + v19);
      *(v18 + v19) = v12;

      v21 = v2[3];
    }

    v2[3] = v12;

    if (!v2[2])
    {
      v2[2] = v2[3];
    }
  }

  return result;
}

uint64_t *sub_222AE08D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_222AE0BDC(a1, a2);
}

uint64_t sub_222AE0924@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = *(v2 + 80);
    v5 = *(v4 - 8);
    (*(v5 + 16))(a1, v3 + *(*v3 + 88), v4);
    (*(v5 + 56))(a1, 0, 1, v4);
  }

  else
  {
    (*(*(*(v2 + 80) - 8) + 56))(a1, 1, 1);
  }

  return sub_222A95844(v1);
}

uint64_t sub_222AE0A64(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v13 - v6;
  v14 = sub_222B02658();
  v8 = v2[4];
  sub_222B026C8();
  sub_222B02638();
  v9 = v2[2];

  if (v9)
  {
    v10 = (v4 + 16);
    do
    {
      (*v10)(v7, v9 + *(*v9 + 88), v3);
      sub_222B026A8();
      v11 = *(v9 + *(*v9 + 96));

      v9 = v11;
    }

    while (v11);
  }

  return v14;
}

uint64_t *sub_222AE0BDC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + *(*v2 + 96)) = 0;
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = a2;
  return v2;
}

uint64_t sub_222AE0C8C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 96));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_222AE0D84()
{
  v0 = *sub_222AE0C8C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Queue.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t Queue.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Queue.pop(if:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v4 = *(*v2 + 80);
  v5 = sub_222B02B28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v18 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v18 - v15;
  sub_222AE05A0(v11);
  if ((*(v12 + 48))(v11, 1, v4) == 1)
  {
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    (*(v12 + 32))(v16, v11, v4);
    if (v19(v16))
    {
      sub_222AE0924(a2);
      return (*(v12 + 8))(v16, v4);
    }

    (*(v12 + 8))(v16, v4);
  }

  return (*(v12 + 56))(a2, 1, 1, v4);
}

uint64_t Queue.pop(while:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_222B02B28();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v24 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v9, v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v24 - v19;
  v21 = sub_222B02658();
  v30 = v2;
  v31 = v21;
  v28 = a1;
  v29 = a2;
  Queue.pop(if:)(a1, v11);
  v22 = *(v12 + 48);
  if (v22(v11, 1, v5) != 1)
  {
    v27 = *(v12 + 32);
    do
    {
      v27(v20, v11, v5);
      (*(v12 + 16))(v17, v20, v5);
      sub_222B026C8();
      sub_222B026A8();
      (*(v12 + 8))(v20, v5);
      Queue.pop(if:)(v28, v11);
    }

    while (v22(v11, 1, v5) != 1);
  }

  (*(v25 + 8))(v11, v26);
  return v31;
}

uint64_t Queue.popAll()()
{
  v1 = *(*v0 + 80);
  v2 = sub_222B02B28();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v20 - v6;
  v8 = *(v1 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v5, v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v20 - v15;
  v17 = sub_222B02658();
  v24 = v0;
  v25 = v17;
  sub_222AE0924(v7);
  v18 = *(v8 + 48);
  if (v18(v7, 1, v1) != 1)
  {
    v23 = *(v8 + 32);
    do
    {
      v23(v16, v7, v1);
      (*(v8 + 16))(v13, v16, v1);
      sub_222B026C8();
      sub_222B026A8();
      (*(v8 + 8))(v16, v1);
      sub_222AE0924(v7);
    }

    while (v18(v7, 1, v1) != 1);
  }

  (*(v21 + 8))(v7, v22);
  return v25;
}

uint64_t sub_222AE16C4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FeatureManager.init(trialStatus:featureFlags:currentLocales:osResolver:)(uint64_t *a1, uint64_t *a2, _OWORD *a3, uint64_t *a4)
{
  v30 = a3;
  v7 = a1[3];
  v29 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v28 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v20 = a4[3];
  v19 = a4[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a4, v20);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21, v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = sub_222AE2324(v11, v17, v30, v24, v31, v7, v13, v20, v29, v28, v19);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v26;
}

void *FeatureManager.deinit()
{
  sub_222A35F58((v0 + 2));
  v1 = v0[13];
  v2 = v0[15];
  v3 = v0[17];
  v4 = v0[19];
  v5 = v0[21];
  v6 = v0[23];
  v7 = v0[25];

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  return v0;
}

uint64_t sub_222AE1A74(void *a1)
{
  v2 = v1;
  v10 = *(v1 + 128);
  v3 = *(v1 + 144);
  v4 = v2[19];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v12 = v10;
  v13 = v3;
  v14 = v4;
  v7 = v2[29];
  v8 = v2[30];
  __swift_project_boxed_opaque_existential_1(v2 + 26, v7);
  (*(v8 + 8))(&v11, v7, v8);
  return (*(v6 + 8))(v2 + 2, &v12, &v11, v5, v6) & 1;
}

uint64_t sub_222AE1B44(void *a1, __int128 *a2)
{
  v3 = v2;
  v11 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v13 = v11;
  v14 = v4;
  v15 = v5;
  v8 = v3[29];
  v9 = v3[30];
  __swift_project_boxed_opaque_existential_1(v3 + 26, v8);
  (*(v9 + 8))(&v12, v8, v9);
  return (*(v7 + 8))(v3 + 2, &v13, &v12, v6, v7) & 1;
}

uint64_t sub_222AE1C10@<X0>(void *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  *a1 = v1[16];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_222AE1C54(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v7[0] = v1;
  v7[1] = v3;

  FeatureResolver.getTrialFactorValue(_:scope:)(v2, v7);
  v5 = v4;

  return v5;
}

uint64_t FeatureManager.__allocating_init(trialStatus:featureFlags:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_222B01988();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_222A42E40(a1, v20);
  sub_222A42E40(a2, v19);
  v10 = [objc_opt_self() currentLocale];
  sub_222B01918();

  v11 = [objc_opt_self() sharedPreferences];
  CurrentLocales.init(deviceLocale:siriPreferences:)(v9, v11, v18);
  v16 = &type metadata for OSTypeResolver;
  v17 = &protocol witness table for OSTypeResolver;
  v12 = (*(v2 + 104))(v20, v19, v18, v15);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t FeatureManager.__allocating_init(trialStatus:featureFlags:currentLocales:osResolver:)(uint64_t *a1, uint64_t *a2, _OWORD *a3, uint64_t *a4)
{
  v32 = a3;
  v7 = swift_allocObject();
  v8 = a1[3];
  v30 = a1[4];
  v31 = v7;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9, v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a2[3];
  v29 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15, v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v21 = a4[3];
  v20 = a4[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22, v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = sub_222AE2324(v12, v18, v32, v25, v31, v8, v14, v21, v30, v29, v20);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v27;
}

uint64_t FeatureManager.__deallocating_deinit()
{
  sub_222A35F58((v0 + 2));
  v1 = v0[13];
  v2 = v0[15];
  v3 = v0[17];
  v4 = v0[19];
  v5 = v0[21];
  v6 = v0[23];
  v7 = v0[25];

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_222AE2188(void *a1, __int128 *a2)
{
  v3 = *v2;
  v11 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v13 = v11;
  v14 = v4;
  v15 = v5;
  v8 = v3[29];
  v9 = v3[30];
  __swift_project_boxed_opaque_existential_1(v3 + 26, v8);
  (*(v9 + 8))(&v12, v8, v9);
  return (*(v7 + 8))(v3 + 2, &v13, &v12, v6, v7) & 1;
}

uint64_t sub_222AE2254@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 152);
  *a1 = *(*v1 + 128);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_222AE229C(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v9[0] = v3;
  v9[1] = v5;

  FeatureResolver.getTrialFactorValue(_:scope:)(v4, v9);
  v7 = v6;

  return v7;
}

uint64_t sub_222AE2324(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a5 + 80) = a6;
  *(a5 + 88) = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 56));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  *(a5 + 40) = a7;
  *(a5 + 48) = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1((a5 + 16));
  (*(*(a7 - 8) + 32))(v20, a2, a7);
  *(a5 + 232) = a8;
  *(a5 + 240) = a11;
  v21 = __swift_allocate_boxed_opaque_existential_1((a5 + 208));
  (*(*(a8 - 8) + 32))(v21, a4, a8);
  v22 = a3[5];
  *(a5 + 160) = a3[4];
  *(a5 + 176) = v22;
  *(a5 + 192) = a3[6];
  v23 = a3[1];
  *(a5 + 96) = *a3;
  *(a5 + 112) = v23;
  v24 = a3[3];
  *(a5 + 128) = a3[2];
  *(a5 + 144) = v24;
  return a5;
}

uint64_t FindDeviceAndFriendsIntentFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = &unk_2835F1F38;
  return result;
}

uint64_t FindDeviceAndFriendsIntentFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = &unk_2835F1F38;
  return result;
}

uint64_t sub_222AE264C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  v3 = sub_222A816E4();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v3;
  v6 = v4;
  v7 = [v2 parametersByName];
  if (!v7)
  {

LABEL_19:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222B05260;
  DeviceAndFriends = type metadata accessor for FindDeviceAndFriendsFeature.EventType(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v10 + 56) = DeviceAndFriends;
  *(v10 + 64) = sub_222AE2EF0(&qword_27D01E3B8, type metadata accessor for FindDeviceAndFriendsFeature.EventType);
  *(v10 + 32) = v12;

  v13 = [v1 _donatedBySiri];
  v14 = type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = sub_222AE2EF0(&qword_27D01E3C0, type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri);
  *(v10 + 72) = v15;
  if (v5 == 0xD000000000000012 && v6 == 0x8000000222B10350 || (sub_222B02F78() & 1) != 0)
  {

    if (*(v9 + 16))
    {
      v16 = sub_222A26EC8(0x656369766564, 0xE600000000000000);
      if (v17)
      {
        sub_222A25344(*(v9 + 56) + 32 * v16, &v55);
        sub_222A250BC(0, &qword_27D01E3E0, 0x277CD3B58);
        if (swift_dynamicCast())
        {
          v18 = v58;
          v19 = [v58 displayString];
          v20 = sub_222B02388();
          v22 = v21;

          v23 = type metadata accessor for FindDeviceAndFriendsFeature.Name(0);
          v24 = swift_allocObject();
          *(v24 + 16) = v20;
          *(v24 + 24) = v22;
          v10 = sub_222AA8FDC(1, 3, 1, v10);

          v56 = v23;
          v57 = sub_222AE2EF0(&qword_27D01E3D0, type metadata accessor for FindDeviceAndFriendsFeature.Name);
          *&v55 = v24;
          *(v10 + 16) = 3;
          sub_222A2577C(&v55, v10 + 112);
        }
      }
    }

    if (!*(v9 + 16))
    {
      goto LABEL_38;
    }

    v25 = "playSoundDeviceClass";
    v26 = 0xD000000000000011;
    goto LABEL_12;
  }

  if (v5 == 0x6E756F5379616C50 && v6 == 0xEF746E65746E4964 || (sub_222B02F78() & 1) != 0)
  {

    if (*(v9 + 16))
    {
      v35 = sub_222A26EC8(0x656369766564, 0xE600000000000000);
      if (v36)
      {
        sub_222A25344(*(v9 + 56) + 32 * v35, &v55);
        sub_222A250BC(0, &qword_27D01E3E0, 0x277CD3B58);
        if (swift_dynamicCast())
        {
          v37 = v58;
          v38 = [v58 displayString];
          v39 = sub_222B02388();
          v41 = v40;

          v42 = type metadata accessor for FindDeviceAndFriendsFeature.Name(0);
          v43 = swift_allocObject();
          *(v43 + 16) = v39;
          *(v43 + 24) = v41;
          v10 = sub_222AA8FDC(1, 3, 1, v10);

          v56 = v42;
          v57 = sub_222AE2EF0(&qword_27D01E3D0, type metadata accessor for FindDeviceAndFriendsFeature.Name);
          *&v55 = v43;
          *(v10 + 16) = 3;
          sub_222A2577C(&v55, v10 + 112);
        }
      }
    }

    if (!*(v9 + 16))
    {
      goto LABEL_38;
    }

    v25 = "er";
    v26 = 0xD000000000000014;
LABEL_12:
    v27 = sub_222A26EC8(v26, v25 | 0x8000000000000000);
    if (v28)
    {
      sub_222A25344(*(v9 + 56) + 32 * v27, &v55);

      if (swift_dynamicCast())
      {
        v29 = v58;
        v30 = type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass(0);
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        v33 = *(v10 + 16);
        v32 = *(v10 + 24);
        if (v33 >= v32 >> 1)
        {
          v10 = sub_222AA8FDC((v32 > 1), v33 + 1, 1, v10);
        }

        v56 = v30;
        v57 = sub_222AE2EF0(&qword_27D01E3D8, type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass);
        *&v55 = v31;
        *(v10 + 16) = v33 + 1;
        v34 = v10 + 40 * v33 + 32;
        goto LABEL_17;
      }

LABEL_39:

      return v10;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v5 != 0x6E49657461636F4CLL || v6 != 0xEC000000746E6574)
  {
    v44 = sub_222B02F78();

    if (v44)
    {
      goto LABEL_34;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_34:
  if (!*(v9 + 16))
  {
    goto LABEL_38;
  }

  v45 = sub_222A26EC8(0x6E6F73726570, 0xE600000000000000);
  if ((v46 & 1) == 0)
  {
    goto LABEL_38;
  }

  sub_222A25344(*(v9 + 56) + 32 * v45, &v55);

  sub_222A250BC(0, &qword_27D01E3C8, 0x277CD3E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v47 = v58;
  v48 = [v58 displayName];
  v49 = sub_222B02388();
  v51 = v50;

  v52 = type metadata accessor for FindDeviceAndFriendsFeature.Name(0);
  v53 = swift_allocObject();
  *(v53 + 16) = v49;
  *(v53 + 24) = v51;
  v10 = sub_222AA8FDC(1, 3, 1, v10);

  v56 = v52;
  v57 = sub_222AE2EF0(&qword_27D01E3D0, type metadata accessor for FindDeviceAndFriendsFeature.Name);
  *&v55 = v53;
  *(v10 + 16) = 3;
  v34 = v10 + 112;
LABEL_17:
  sub_222A2577C(&v55, v34);
  return v10;
}

uint64_t FindDeviceAndFriendsFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FindDeviceAndFriendsFeature.Name.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FindDeviceAndFriendsFeature.DeviceClass.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FindDeviceAndFriendsIntentFeatureExtractor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FindDeviceAndFriendsIntentFeatureExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t FindDeviceAndFriendsFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222AE2EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FindDeviceAndFriendsFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222AE3044(char *a1)
{
  v1 = *a1;
  type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AE307C(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t FindDeviceAndFriendsFeature.Name.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FindDeviceAndFriendsFeature.Name.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FindDeviceAndFriendsFeature.Name.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222AE317C(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222AE31D0(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t FindDeviceAndFriendsFeature.DeviceClass.__allocating_init(value:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E3E8, &qword_222B0E568);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t FindDeviceAndFriendsFeature.DeviceClass.init(value:)(uint64_t a1, char a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E3E8, &qword_222B0E568);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v2 + 16) = a1;
  }

  return v2;
}

uint64_t sub_222AE3340(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AE3378(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for FindDeviceAndFriendsFeature.DeviceClass(0);
  result = swift_allocObject();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E3E8, &qword_222B0E568);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1;
  }

  return result;
}

Swift::Void __swiftcall UsageLogger.register(disabled:)(Swift::Bool disabled)
{
  v2 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05250;
  *(inited + 32) = 0xD000000000000014;
  v4 = inited + 32;
  *(inited + 40) = 0x8000000222B11DA0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = disabled;
  sub_222A396CC(inited);
  swift_setDeallocating();
  sub_222AE3850(v4);
  v5 = sub_222B022A8();

  [v2 registerDefaults_];
}

Swift::Bool __swiftcall UsageLogger.isDisabled()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_222AE36AC(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05250;
  *(inited + 32) = 0xD000000000000014;
  v4 = inited + 32;
  *(inited + 40) = 0x8000000222B11DA0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = a1;
  sub_222A396CC(inited);
  swift_setDeallocating();
  sub_222AE3850(v4);
  v5 = sub_222B022A8();

  [v2 registerDefaults_];
}

id sub_222AE37C4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_222AE3850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF40, &unk_222B055D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AE3904(uint64_t a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E430, &qword_222B0E728);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + *(*v12 + 96)) = 0;
  result = (*(v4 + 32))(v12 + *(*v12 + 88), v8, v3);
  *(v12 + *(*v12 + 96)) = 0;
  v14 = v1[4];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v16;
    v17 = v1[3];
    if (v17)
    {
      v18 = *(*v17 + 96);
      v19 = *(v17 + v18);
      *(v17 + v18) = v12;

      v20 = v1[3];
    }

    v1[3] = v12;

    if (!v1[2])
    {
      v1[2] = v1[3];
    }
  }

  return result;
}

uint64_t sub_222AE3AFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  v6 = result;
  *(result + 16) = a1;
  *(result + 24) = 0;
  v7 = v3[4];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v3[4] = v9;
    v10 = v3[3];
    if (v10)
    {
      v11 = *(v10 + 24);
      *(v10 + 24) = result;

      v12 = v3[3];
    }

    else
    {
    }

    v3[3] = v6;

    if (!v3[2])
    {
      v3[2] = v3[3];
    }
  }

  return result;
}

uint64_t sub_222AE3BD8(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v21 - v14;
  swift_beginAccess();
  v16 = *(v2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_222AE9778(a1, isUniquelyReferenced_nonNull_native, a2);
  *(v2 + 40) = v21;
  swift_endAccess();
  (*(v7 + 16))(v12, a1, v6);
  swift_beginAccess();
  v18 = sub_222AE4114(v15, v12);
  (*(v7 + 8))(v15, v6);
  result = swift_endAccess();
  if (v18)
  {
    v20 = *(v3 + 32);
    return sub_222AE3904(a1);
  }

  return result;
}

BOOL sub_222AE3D88(double a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v19 - v11;
  v13 = *(*(v1 + 32) + 16);
  if (v13)
  {
    (*(v4 + 16))(v9, v13 + *(*v13 + 88), v3);
    (*(v4 + 32))(v12, v9, v3);
    swift_beginAccess();
    v14 = *(v1 + 40);
    if (*(v14 + 16))
    {

      v15 = sub_222A26F40(v12);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        (*(v4 + 8))(v12, v3);

        return a1 - v17 > 60.0;
      }
    }

    (*(v4 + 8))(v12, v3);
  }

  return 0;
}

uint64_t sub_222AE3F58()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_222AE3FC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_222B03128();
  sub_222B02448();
  v9 = sub_222B03168();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_222B02F78() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_222AE4EBC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_222AE4114(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_222A2DB64(&qword_280CBA1F0);
  v37 = a2;
  v14 = sub_222B022E8();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_222A2DB64(&qword_280CB8300);
      v24 = sub_222B02338();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_222AE503C(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_222AE43CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_222B03128();
  v29 = a2;

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  v30 = a4;
  v31 = a5;
  MEMORY[0x223DC66E0](a4, a5);
  sub_222B02448();

  v12 = sub_222B03168();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v10 + 48) + 32 * v14);
      v17 = v16[2];
      v18 = v16[3];
      v32 = *v16;
      v34 = v16[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v17, v18);

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v30, v31);
      if (v32 == v29 && v34 == a3)
      {
        break;
      }

      v19 = sub_222B02F78();

      if (v19)
      {
        goto LABEL_9;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:

    v23 = (*(v10 + 48) + 32 * v14);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_7:
    v20 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v27;

    sub_222AE52B8(v29, a3, v30, v31, v14, isUniquelyReferenced_nonNull_native);
    *v27 = v33;
    *a1 = v29;
    a1[1] = a3;
    a1[2] = v30;
    a1[3] = v31;
    return 1;
  }
}

uint64_t sub_222AE466C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
  result = sub_222B02C28();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_222B03128();
      sub_222B02448();
      result = sub_222B03168();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222AE48CC(uint64_t a1)
{
  v2 = v1;
  v42 = sub_222B018D8();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E438, &qword_222B0E730);
  result = sub_222B02C28();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_222A2DB64(&qword_280CBA1F0);
      result = sub_222B022E8();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}