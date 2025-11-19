SiriEmergencyIntents::EmergencySituation_optional __swiftcall inferUsableSituation(situation:organization:)(SiriEmergencyIntents::EmergencySituation_optional situation, SiriEmergencyIntents::EmergencyOrganization_optional organization)
{
  v4 = sub_266AEEAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v40[-v13];
  if (situation.value > SiriEmergencyIntents_EmergencySituation_unknownDefault)
  {
LABEL_12:
    if (situation.value == SiriEmergencyIntents_EmergencySituation_abuse)
    {
      v24 = sub_266AEEAA8();
      swift_beginAccess();
      (*(v5 + 16))(v14, v24, v4);
      v25 = sub_266AEEAB8();
      v26 = sub_266AEEBB8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        value = SiriEmergencyIntents_EmergencySituation_abuse;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
        v29 = sub_266AEEBD8();
        v31 = sub_266ADDBA0(v29, v30, &v42);

        *(v27 + 4) = v31;
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x26D5EA2D0](v28, -1, -1);
        MEMORY[0x26D5EA2D0](v27, -1, -1);
      }

      (*(v5 + 8))(v14, v4);
      return 3;
    }

    return situation;
  }

  if (((1 << situation.value) & 0xD8000000) != 0)
  {
    v15 = sub_266AEEAA8();
    swift_beginAccess();
    (*(v5 + 16))(v9, v15, v4);
    v16 = sub_266AEEAB8();
    v17 = sub_266AEEBB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v18 = 136315138;
      value = situation.value;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
      v20 = sub_266AEEBD8();
      v22 = sub_266ADDBA0(v20, v21, &v42);

      *(v18 + 4) = v22;
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D5EA2D0](v19, -1, -1);
      MEMORY[0x26D5EA2D0](v18, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  if (situation.value != SiriEmergencyIntents_EmergencySituation_assault)
  {
    if (situation.value == SiriEmergencyIntents_EmergencySituation_unknownDefault)
    {
      if (organization.value == SiriEmergencyIntents_EmergencyOrganization_unknownDefault)
      {
        return 35;
      }

      else
      {
        return organization.value;
      }
    }

    goto LABEL_12;
  }

  v32 = sub_266AEEAA8();
  swift_beginAccess();
  (*(v5 + 16))(v12, v32, v4);
  v33 = sub_266AEEAB8();
  v34 = sub_266AEEBB8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315138;
    value = SiriEmergencyIntents_EmergencySituation_assault;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD5E0, &qword_266AEF880);
    v37 = sub_266AEEBD8();
    v39 = sub_266ADDBA0(v37, v38, &v42);

    *(v35 + 4) = v39;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D5EA2D0](v36, -1, -1);
    MEMORY[0x26D5EA2D0](v35, -1, -1);
  }

  (*(v5 + 8))(v12, v4);
  return 1;
}

uint64_t EmergencyOrganizationInfoProvider.EmergencyPropertyListReaderError.hashValue.getter(char a1)
{
  sub_266AEED18();
  MEMORY[0x26D5E9F70](a1 & 1);
  return sub_266AEED38();
}

uint64_t sub_266AEAFC0(uint64_t a1, char a2, char a3)
{
  *(v3 + 152) = a1;
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_266AEB070;

  return EmergencyOrganizationInfoProvider.getOrganizationInfo(situation:organization:)(v3 + 16, a2, a3);
}

uint64_t sub_266AEB070()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v12 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 80);
  *(v3 + 48) = *(v1 + 64);
  *(v3 + 64) = v6;
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  v7 = *(v1 + 96);
  v8 = *(v1 + 112);
  v9 = *(v1 + 128);
  *(v3 + 128) = *(v1 + 144);
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  *(v3 + 80) = v7;
  v10 = *(v12 + 8);

  return v10();
}

unint64_t sub_266AEB1A8()
{
  result = qword_2800BD6D0;
  if (!qword_2800BD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6D0);
  }

  return result;
}

uint64_t sub_266AEB208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyOrganizationInfoProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266AEB26C()
{
  v1 = (type metadata accessor for EmergencyOrganizationInfoProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_266AEE718();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  v6 = (v0 + v3 + v1[8]);
  if (*v6)
  {
    v7 = v6[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_266AEB36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyOrganizationInfoProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266AEB3D0(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for EmergencyOrganizationInfoProvider() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_266AE72E4(a1, a2);
}

uint64_t sub_266AEB448()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_266AEB484()
{
  result = qword_2800BD6D8;
  if (!qword_2800BD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6D8);
  }

  return result;
}

char *sub_266AEB4D8(char *a1, int64_t a2, char a3)
{
  result = sub_266AEB940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266AEB4F8(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x26D5EA1E0);
  }
}

double sub_266AEB50C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_266AEB524@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

unint64_t sub_266AEB568()
{
  result = qword_2800BD6E0;
  if (!qword_2800BD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD6E0);
  }

  return result;
}

uint64_t sub_266AEB5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266AEE718();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_266AEB6C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266AEE718();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_266AEB784()
{
  sub_266AEE718();
  if (v0 <= 0x3F)
  {
    sub_266AEB820();
    if (v1 <= 0x3F)
    {
      sub_266AEB884();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_266AEB820()
{
  result = qword_2800BD6F8;
  if (!qword_2800BD6F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2800BD6F8);
  }

  return result;
}

void sub_266AEB884()
{
  if (!qword_2800BD700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800BD708, &qword_266AF0398);
    v0 = sub_266AEEBE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2800BD700);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_266AEB940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD710, &qword_266AF03C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_266AEBA4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD718, &qword_266AF03D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266AEBAB4()
{
  result = qword_2800BD720;
  if (!qword_2800BD720)
  {
    sub_266AEE6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD720);
  }

  return result;
}

unint64_t sub_266AEBB0C()
{
  result = qword_2800BD738;
  if (!qword_2800BD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800BD730, &unk_266AF03E0);
    sub_266AEBB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD738);
  }

  return result;
}

unint64_t sub_266AEBB90()
{
  result = qword_2800BD740;
  if (!qword_2800BD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD740);
  }

  return result;
}

uint64_t sub_266AEBBE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t EmergencySituation.rawValue.getter(char a1)
{
  result = 0x61206C6175786573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x63206E6F73696F70;
    case 3:
    case 9:
      return 0xD000000000000011;
    case 4:
      v3 = 11;
      goto LABEL_36;
    case 5:
      v3 = 10;
      goto LABEL_36;
    case 6:
      return 0x7078655F6D617363;
    case 7:
      return 0xD000000000000013;
    case 8:
      return 0xD000000000000010;
    case 10:
      return 0x6E65726973;
    case 11:
      return 0x6573756261;
    case 12:
      return 0x6853657669746361;
    case 13:
      return 0x746C7561737361;
    case 14:
      return 0x676E69796C6C7562;
    case 15:
      return 0x6469636341726163;
    case 16:
      return 0x7553736973697263;
    case 17:
      return 0x7265676E6164;
    case 18:
      return 0x676E697964;
    case 19:
      return 0x6944676E69746165;
    case 20:
      return 1701996902;
    case 21:
      return 0x75617373416E7567;
    case 22:
      return 0xD000000000000010;
    case 23:
      return 1886152040;
    case 24:
      return 0x697070616E64696BLL;
    case 25:
      return 0xD000000000000010;
    case 26:
      v3 = 5;
LABEL_36:
      result = v3 | 0xD000000000000010;
      break;
    case 27:
      result = 0x65736F647265766FLL;
      break;
    case 28:
      result = 0x6D726148666C6573;
      break;
    case 29:
      result = 0x676E696B6C617473;
      break;
    case 30:
      result = 0x636E617473627573;
      break;
    case 31:
      result = 0x65646963697573;
      break;
    case 32:
      result = 0x7369726F72726574;
      break;
    case 33:
      result = 0x65636E656C6F6976;
      break;
    case 34:
      result = 0x636E656772656D65;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t static EmergencySituation.fromValueWithCleanup(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_266AEE678();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(a1, a2);
  if (result == 35)
  {
    v72 = a1;
    v73 = a2;
    sub_266AEE668();
    sub_266AEB484();
    v10 = sub_266AEEC08();
    v12 = v11;
    v13 = *(v5 + 8);
    v13(v8, v4);
    v67 = v13;
    v74 = v10;
    v75 = v12;
    v72 = a1;
    v73 = a2;
    sub_266AEE668();
    v14 = sub_266AEEC08();
    v16 = v15;
    v13(v8, v4);
    v72 = v14;
    v73 = v16;
    v70 = 32;
    v71 = 0xE100000000000000;
    v68 = 0;
    v69 = 0xE000000000000000;
    v17 = sub_266AEEC18();
    v19 = v18;

    v76 = v17;
    v77 = v19;
    v78 = sub_266AEEB38();
    v79 = v20;
    v72 = a1;
    v73 = a2;
    sub_266AEE668();
    sub_266AEEC08();
    v21 = v67;
    v67(v8, v4);
    v22 = sub_266AEEB38();
    v24 = v23;

    v80 = v22;
    v81 = v24;
    v82 = sub_266AEEB48();
    v83 = v25;
    v72 = a1;
    v73 = a2;
    v66 = v4;
    sub_266AEEBF8();
    v26 = sub_266AEEB48();
    v28 = v27;

    v84 = v26;
    v85 = v28;
    v72 = a1;
    v73 = a2;
    sub_266AEEBF8();
    v29 = sub_266AEEB48();
    v31 = v30;

    v72 = v29;
    v73 = v31;
    sub_266AEE668();
    v32 = sub_266AEEC08();
    v34 = v33;
    v35 = v66;
    v21(v8, v66);

    v72 = v32;
    v73 = v34;
    v70 = 32;
    v71 = 0xE100000000000000;
    v68 = 0;
    v69 = 0xE000000000000000;
    v36 = sub_266AEEC18();
    v38 = v37;

    v86 = v36;
    v87 = v38;
    v72 = a1;
    v73 = a2;
    sub_266AEE668();
    v39 = sub_266AEEC08();
    v41 = v40;
    v21(v8, v35);
    v72 = v39;
    v73 = v41;
    v70 = 32;
    v71 = 0xE100000000000000;
    v68 = 0;
    v69 = 0xE000000000000000;
    v42 = sub_266AEEC18();
    v44 = v43;

    v72 = v42;
    v73 = v44;
    sub_266AEEBF8();

    v45 = sub_266AEEB48();
    v47 = v46;

    v88 = v45;
    v89 = v47;
    v49 = v74;
    v48 = v75;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v49, v48);

    if (v50 != 35)
    {
      goto LABEL_11;
    }

    v52 = v76;
    v51 = v77;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v52, v51);

    if (v50 != 35)
    {
      goto LABEL_11;
    }

    v54 = v78;
    v53 = v79;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v54, v53);

    if (v50 != 35)
    {
      goto LABEL_11;
    }

    v56 = v80;
    v55 = v81;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v56, v55);

    if (v50 != 35)
    {
      goto LABEL_11;
    }

    v58 = v82;
    v57 = v83;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v58, v57);

    if (v50 != 35)
    {
      goto LABEL_11;
    }

    v60 = v84;
    v59 = v85;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v60, v59);

    if (v50 != 35)
    {
      goto LABEL_11;
    }

    v62 = v86;
    v61 = v87;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v62, v61);

    if (v50 != 35)
    {
      goto LABEL_11;
    }

    v64 = v88;
    v63 = v89;

    v50 = _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(v64, v63);

    if (v50 == 35)
    {
      swift_arrayDestroy();
      return 35;
    }

    else
    {
LABEL_11:
      swift_arrayDestroy();
      return v50;
    }
  }

  return result;
}

uint64_t sub_266AEC788(char *a1, char *a2)
{
  v2 = *a2;
  v3 = EmergencySituation.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == EmergencySituation.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266AEECB8();
  }

  return v8 & 1;
}

uint64_t sub_266AEC810()
{
  v1 = *v0;
  sub_266AEED18();
  EmergencySituation.rawValue.getter(v1);
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AEC874()
{
  EmergencySituation.rawValue.getter(*v0);
  sub_266AEEB78();
}

uint64_t sub_266AEC8C8()
{
  v1 = *v0;
  sub_266AEED18();
  EmergencySituation.rawValue.getter(v1);
  sub_266AEEB78();

  return sub_266AEED38();
}

uint64_t sub_266AEC928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s20SiriEmergencyIntents0B9SituationO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_266AEC958@<X0>(unint64_t *a1@<X8>)
{
  result = EmergencySituation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s20SiriEmergencyIntents0B9SituationO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_266AEECC8();

  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t _s20SiriEmergencyIntents0B9SituationO4from15identifierValueACSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000266AF0EC0 == a2;
  if (v3 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000011 && 0x8000000266AF1260 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x61206C6175786573 && a2 == 0xEE00746C75617373 || (sub_266AEECB8() & 1) != 0 || a1 == 0x73416C6175786573 && a2 == 0xED0000746C756173 || (sub_266AEECB8() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x63206E6F73696F70 && a2 == 0xEE006C6F72746E6FLL || (sub_266AEECB8() & 1) != 0 || a1 == 0x6F436E6F73696F70 && a2 == 0xED00006C6F72746ELL || (sub_266AEECB8() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000011 && 0x8000000266AF0F00 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000010 && 0x8000000266AF1280 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD00000000000001BLL && 0x8000000266AF0F20 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000018 && 0x8000000266AF12A0 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0xD00000000000001ALL && 0x8000000266AF0F40 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000017 && 0x8000000266AF12C0 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x7078655F6D617363 && a2 == 0xED0000746963696CLL || (sub_266AEECB8() & 1) != 0 || a1 == 0x6C7078456D617363 && a2 == 0xEC00000074696369 || (sub_266AEECB8() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0xD000000000000013 && 0x8000000266AF0F70 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000010 && 0x8000000266AF12E0 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000010 && 0x8000000266AF0F90 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0x706C65486D617363 && a2 == 0xEE006D6974636956 || (sub_266AEECB8() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0xD000000000000011 && 0x8000000266AF0FB0 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000266AF1300 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0x6E65726973 && a2 == 0xE500000000000000 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000266AF1320 == a2 || (sub_266AEECB8() & 1) != 0 || a1 == 0xD000000000000013 && 0x8000000266AF1340 == a2 || (sub_266AEECB8() & 1) != 0)
  {
    return 10;
  }

  return _s20SiriEmergencyIntents0B9SituationO8rawValueACSgSS_tcfC_0();
}

uint64_t _s20SiriEmergencyIntents0B9SituationO14catiIntentNameACSgAA010CATIIntentG0O_tcfC_0(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 35;
  }

  else
  {
    return result;
  }
}

unint64_t sub_266AED028()
{
  result = qword_2800BD748;
  if (!qword_2800BD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800BD748);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.toConvertedUsoTask()()
{
  Siri_Nlu_External_UserParse.usoTask.getter();
  sub_266AEE8D8();
}

uint64_t Siri_Nlu_External_UserParse.identifierValue(entity:attributeName:namespaces:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_266AEE8A8();

  v5 = sub_266AEDD98(v4, a3);

  return v5;
}

unint64_t Siri_Nlu_External_UserParse.usoTask.getter()
{
  v0 = sub_266AEE7C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = sub_266AEE748();
  if (!*(v8 + 16))
  {

    return 0;
  }

  (*(v1 + 16))(v5, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

  (*(v1 + 32))(v7, v5, v0);
  result = sub_266AEE838();
  if (result >> 62)
  {
    v11 = result;
    v12 = sub_266AEEC68();
    result = v11;
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_11:

    v10 = 0;
    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x26D5E9E90](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(result + 32);
  }

LABEL_12:
  (*(v1 + 8))(v7, v0);
  return v10;
}

Swift::String_optional __swiftcall Siri_Nlu_External_UserParse.identifierValue(for:)(Swift::OpaquePointer a1)
{
  v62 = sub_266AEEA98();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266AEE818();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = Siri_Nlu_External_UserParse.identifiers.getter();
  v60 = *(v13 + 16);
  if (v60)
  {
    v49 = v12;
    v15 = 0;
    v16 = *(a1._rawValue + 2);
    v54 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v53 = v6 + 16;
    v50 = a1._rawValue + 32;
    v67 = 0x8000000266AF05C0;
    v68 = 0x8000000266AF05E0;
    v65 = 0x8000000266AF0580;
    v66 = 0x8000000266AF05A0;
    v64 = 0x8000000266AF0500;
    v51 = v16;
    v52 = (v2 + 8);
    v55 = v10;
    v56 = (v6 + 8);
    v58 = v6;
    v59 = v5;
    v57 = v13;
    while (v15 < *(v13 + 16))
    {
      (*(v6 + 16))(v10, v54 + *(v6 + 72) * v15, v5);
      v63 = v15;
      if (v16)
      {
        v17 = v50;
        v18 = v16;
        v19 = MEMORY[0x277D84F90];
        do
        {
          v21 = *v17++;
          v20 = v21;
          v22 = v21 == 7;
          v23 = 0x707954656E6F6870;
          if (v21 != 7)
          {
            v23 = 0x614E746E65746E69;
          }

          v24 = 0xE900000000000065;
          if (!v22)
          {
            v24 = 0xEA0000000000656DLL;
          }

          if (v20 == 6)
          {
            v23 = 0x54746361746E6F63;
            v24 = 0xEB00000000657079;
          }

          v25 = 0xD000000000000015;
          if (v20 == 4)
          {
            v26 = 0xD000000000000015;
          }

          else
          {
            v26 = 0xD000000000000012;
          }

          v27 = v68;
          if (v20 == 4)
          {
            v27 = v67;
          }

          if (v20 <= 5)
          {
            v23 = v26;
            v24 = v27;
          }

          if (v20 == 2)
          {
            v28 = 0xD000000000000012;
          }

          else
          {
            v28 = 0xD000000000000013;
          }

          v29 = v66;
          if (v20 == 2)
          {
            v29 = v65;
          }

          if (v20)
          {
            v25 = 0xD000000000000012;
          }

          v30 = v64;
          if (!v20)
          {
            v30 = 0x8000000266AF0540;
          }

          if (v20 <= 1)
          {
            v31 = v30;
          }

          else
          {
            v25 = v28;
            v31 = v29;
          }

          if (v20 <= 3)
          {
            v32 = v25;
          }

          else
          {
            v32 = v23;
          }

          if (v20 <= 3)
          {
            v33 = v31;
          }

          else
          {
            v33 = v24;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_266AEE1E0(0, *(v19 + 2) + 1, 1, v19);
          }

          v35 = *(v19 + 2);
          v34 = *(v19 + 3);
          if (v35 >= v34 >> 1)
          {
            v19 = sub_266AEE1E0((v34 > 1), v35 + 1, 1, v19);
          }

          *(v19 + 2) = v35 + 1;
          v36 = &v19[16 * v35];
          *(v36 + 4) = v32;
          *(v36 + 5) = v33;
          --v18;
        }

        while (v18);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      v37 = v61;
      v10 = v55;
      sub_266AEE808();
      v38 = sub_266AEEA88();
      v40 = v39;
      v41 = (*v52)(v37, v62);
      v69[0] = v38;
      v69[1] = v40;
      MEMORY[0x28223BE20](v41);
      *(&v49 - 2) = v69;
      LOBYTE(v38) = sub_266AEE4C4(sub_266AEE570, (&v49 - 4), v19);

      if (v38)
      {

        v42 = v59;
        v43 = v58 + 32;
        v44 = v49;
        (*(v58 + 32))(v49, v10, v59);
        v45 = sub_266AEE7F8();
        v47 = v46;
        (*(v43 - 24))(v44, v42);
        v14 = v47;
        v13 = v45;
        goto LABEL_49;
      }

      v15 = v63 + 1;
      v5 = v59;
      (*v56)(v10, v59);
      v13 = v57;
      v6 = v58;
      v16 = v51;
      if (v15 == v60)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_46:

    v13 = 0;
    v14 = 0;
  }

LABEL_49:
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t Siri_Nlu_External_UserParse.userDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266AEE748();
  if (*(v2 + 16))
  {
    v3 = v2;
    v4 = sub_266AEE7C8();
    v11 = *(v4 - 8);
    (*(v11 + 16))(a1, v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v4);

    v5 = *(v11 + 56);
    v6 = a1;
    v7 = 0;
    v8 = v4;
  }

  else
  {

    v9 = sub_266AEE7C8();
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a1;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

uint64_t Siri_Nlu_External_UserParse.init(userDialogAct:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD750, &qword_266AF04D8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_266AEE768();
  sub_266AEE828();
  v4 = sub_266AEE778();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_266AEE58C(v3);
  }

  else
  {
    sub_266AEE748();
    (*(v5 + 8))(v3, v4);
  }

  sub_266AEE758();
  return swift_unknownObjectRelease();
}

uint64_t Siri_Nlu_External_UserParse.identifiers.getter()
{
  v0 = sub_266AEE738();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266AEE7E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266AEE7C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_266AEE748();
  if (*(v15 + 16))
  {
    (*(v11 + 16))(v14, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

    sub_266AEE7B8();
    (*(v11 + 8))(v14, v10);
    sub_266AEE7D8();
    (*(v6 + 8))(v9, v5);
    v16 = sub_266AEE728();
    (*(v1 + 8))(v4, v0);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v16;
}

uint64_t sub_266AEDD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_266AEE898();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  if (!a1)
  {
    return 0;
  }

  v56 = *(a1 + 16);
  if (!v56)
  {
    return 0;
  }

  v45 = &v45 - v9;
  v46 = v10;
  v11 = 0;
  v13 = *(v10 + 16);
  v12 = v10 + 16;
  v14 = *(a2 + 16);
  v51 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v52 = v13;
  v47 = (a2 + 32);
  v61 = 0x8000000266AF05C0;
  v62 = 0x8000000266AF05E0;
  v59 = 0x8000000266AF0580;
  v60 = 0x8000000266AF05A0;
  v58 = 0x8000000266AF0500;
  v53 = v12;
  v54 = v8;
  v49 = *(v12 + 56);
  v50 = (v12 - 8);
  v48 = v14;
  v55 = v4;
  while (1)
  {
    v57 = v11;
    v52(v8, v51 + v49 * v11, v4);
    if (v14)
    {
      v15 = v47;
      v16 = v14;
      v17 = MEMORY[0x277D84F90];
      do
      {
        v19 = *v15++;
        v18 = v19;
        v20 = v19 == 7;
        v21 = 0x707954656E6F6870;
        if (v19 != 7)
        {
          v21 = 0x614E746E65746E69;
        }

        v22 = 0xE900000000000065;
        if (!v20)
        {
          v22 = 0xEA0000000000656DLL;
        }

        if (v18 == 6)
        {
          v21 = 0x54746361746E6F63;
          v22 = 0xEB00000000657079;
        }

        v23 = 0xD000000000000015;
        if (v18 == 4)
        {
          v24 = 0xD000000000000015;
        }

        else
        {
          v24 = 0xD000000000000012;
        }

        v25 = v62;
        if (v18 == 4)
        {
          v25 = v61;
        }

        if (v18 <= 5)
        {
          v21 = v24;
          v22 = v25;
        }

        if (v18 == 2)
        {
          v26 = 0xD000000000000012;
        }

        else
        {
          v26 = 0xD000000000000013;
        }

        v27 = v60;
        if (v18 == 2)
        {
          v27 = v59;
        }

        if (v18)
        {
          v23 = 0xD000000000000012;
        }

        v28 = v58;
        if (!v18)
        {
          v28 = 0x8000000266AF0540;
        }

        if (v18 <= 1)
        {
          v29 = v28;
        }

        else
        {
          v23 = v26;
          v29 = v27;
        }

        if (v18 <= 3)
        {
          v30 = v23;
        }

        else
        {
          v30 = v21;
        }

        if (v18 <= 3)
        {
          v31 = v29;
        }

        else
        {
          v31 = v22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_266AEE1E0(0, *(v17 + 2) + 1, 1, v17);
        }

        v33 = *(v17 + 2);
        v32 = *(v17 + 3);
        if (v33 >= v32 >> 1)
        {
          v17 = sub_266AEE1E0((v32 > 1), v33 + 1, 1, v17);
        }

        *(v17 + 2) = v33 + 1;
        v34 = &v17[16 * v33];
        *(v34 + 4) = v30;
        *(v34 + 5) = v31;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v8 = v54;
    v35 = sub_266AEE888();
    v37 = v36 ? v35 : 0;
    v38 = v36 ? v36 : 0xE000000000000000;
    v63[0] = v37;
    v63[1] = v38;
    MEMORY[0x28223BE20](v35);
    *(&v45 - 2) = v63;
    v39 = sub_266AEE4C4(sub_266AEE64C, (&v45 - 4), v17);

    if (v39)
    {
      break;
    }

    v11 = v57 + 1;
    v4 = v55;
    (*v50)(v8, v55);
    v14 = v48;
    if (v11 == v56)
    {
      return 0;
    }
  }

  v41 = v45;
  v42 = v46 + 32;
  v43 = v55;
  (*(v46 + 32))(v45, v8, v55);
  v44 = sub_266AEE878();
  (*(v42 - 24))(v41, v43);
  return v44;
}

char *sub_266AEE1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800BD760, &unk_266AF04F0);
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

size_t sub_266AEE2EC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD758, &qword_266AF04E8);
  v10 = *(sub_266AEEAF8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266AEEAF8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_266AEE4C4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_266AEE58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800BD750, &qword_266AF04D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266AEE5F4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_266AEECB8() & 1;
  }
}