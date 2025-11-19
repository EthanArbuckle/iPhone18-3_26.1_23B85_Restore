uint64_t sub_1E3CB00E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = sub_1E3CB008C(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36768);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 16);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = v8[3];

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  v12 = v8 + 4;
  v13 = v10 >> 1;
  v38 = v4;
  if (v7)
  {
    v14 = v4 - v5;
    if (v4 < v5)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    result = sub_1E32AE9B0(v3);
    v15 = result;
    v16 = 0;
    v41 = v3 & 0xC000000000000001;
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    v13 -= v7;
    while (v14 != v16)
    {
      if (v15 == v16)
      {
        goto LABEL_56;
      }

      if (v41)
      {
        result = MEMORY[0x1E6911E60](v16, v3);
      }

      else
      {
        if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }
      }

      v18 = v5 + v16++;
      *v12 = v18;
      v12[1] = result;
      v12 += 2;
      if (v7 == v16)
      {
        v19 = v5 + v16;
        v4 = v38;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v17 = v3 & 0xFFFFFFFFFFFFFF8;
  v41 = v3 & 0xC000000000000001;
  v19 = v5;
LABEL_20:
  v35 = v5;
  v39 = v19;
  v40 = v3 >> 62;
  v20 = v19;
  v36 = v17;
  v37 = v3;
  while (v4 != v20)
  {
    if (v4 < v5)
    {
      goto LABEL_57;
    }

    if (v19 < v5)
    {
      goto LABEL_58;
    }

    if (v20 >= v4)
    {
      goto LABEL_59;
    }

    result = v40 ? sub_1E4207384() : *(v17 + 16);
    if (v7 == result)
    {
      break;
    }

    if (v41)
    {
      result = MEMORY[0x1E6911E60](v7, v3);
      v21 = result;
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v7 >= *(v17 + 16))
      {
        goto LABEL_62;
      }

      v21 = *(v3 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_61;
    }

    if (!v13)
    {
      v22 = v8[3];
      if (((v22 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_65;
      }

      v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36768);
      v25 = swift_allocObject();
      v26 = (_swift_stdlib_malloc_size(v25) - 32) / 16;
      v25[2] = v24;
      v25[3] = 2 * v26;
      v27 = (v25 + 4);
      v28 = v8[3];
      v29 = v28 >> 1;
      if (v8[2])
      {
        if (v25 != v8 || v27 >= &v8[2 * v29 + 4])
        {
          memmove(v25 + 4, v8 + 4, 16 * v29);
        }

        v8[2] = 0;
        v5 = v35;
      }

      v12 = (v27 + 16 * v29);
      v13 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

      v8 = v25;
      v3 = v37;
      v4 = v38;
      v17 = v36;
    }

    v31 = __OFSUB__(v13--, 1);
    if (v31)
    {
      goto LABEL_63;
    }

    *v12 = v20;
    v12[1] = v21;
    v12 += 2;
    ++v7;
    ++v20;
    v19 = v39;
  }

  v32 = v8[3];
  if (v32 < 2)
  {
    return v8;
  }

  v33 = v32 >> 1;
  v31 = __OFSUB__(v33, v13);
  v34 = v33 - v13;
  if (!v31)
  {
    v8[2] = v34;
    return v8;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_32()
{
  v1 = type metadata accessor for ListLockup();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201D14();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3CB0654()
{
  v0 = type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3CAE604();
}

uint64_t sub_1E3CB06D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3CB0734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3CB0790(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3CB07D4(uint64_t a1)
{
  v2 = type metadata accessor for ScaledBaselineRelativeSpacer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_62_23()
{

  JUMPOUT(0x1E6911E60);
}

uint64_t OUTLINED_FUNCTION_77_15(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_79_15()
{
}

uint64_t sub_1E3CB0888(char a1)
{
  result = 0x756F726765726F66;
  switch(a1)
  {
    case 1:
      result = 0x5468736572666572;
      break;
    case 2:
      result = 0x5454657669746361;
      break;
    case 3:
      result = 0x6573616863727570;
      break;
    case 4:
      result = 0x6573616863727570;
      break;
    case 5:
      result = 0x6974634179616C70;
      break;
    case 6:
      result = 0x73676E6974746573;
      break;
    case 7:
      result = 0x7478654E7075;
      break;
    case 8:
      OUTLINED_FUNCTION_2_159();
      result = v6 | 0xC;
      break;
    case 9:
      result = 0x657469726F766166;
      break;
    case 10:
    case 12:
    case 26:
      OUTLINED_FUNCTION_2_159();
      result = v11 | 4;
      break;
    case 11:
      result = 0x43746E756F636361;
      break;
    case 13:
      result = 0x6D656C7469746E65;
      break;
    case 14:
      result = 1802728565;
      break;
    case 15:
      result = 0x7463697274736572;
      break;
    case 16:
      OUTLINED_FUNCTION_2_159();
      result = v3 + 3;
      break;
    case 17:
      result = 0x6B63616279616C70;
      break;
    case 18:
    case 19:
      OUTLINED_FUNCTION_2_159();
      result = v8 + 1;
      break;
    case 20:
      OUTLINED_FUNCTION_2_159();
      result = v5 - 1;
      break;
    case 21:
      result = 0x6572666552707061;
      break;
    case 22:
    case 27:
      OUTLINED_FUNCTION_2_159();
      result = v7 + 11;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      OUTLINED_FUNCTION_2_159();
      result = v4 + 18;
      break;
    case 28:
    case 30:
    case 31:
      OUTLINED_FUNCTION_2_159();
      result = v9 + 5;
      break;
    case 29:
      OUTLINED_FUNCTION_2_159();
      result = v10 + 21;
      break;
    case 32:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3CB0C34(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (!v3)
  {
    return 0;
  }

  if (!*(v3 + 16))
  {

    return 0;
  }

  v4 = sub_1E3CB0CBC(v3);

  return v4;
}

uint64_t sub_1E3CB0CBC(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v67 - v12;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_110;
  }

LABEL_2:
  for (result = MEMORY[0x1E69E7CD0]; ; result = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]))
  {
    v88 = result;
    if (!*(a1 + 16))
    {
      return result;
    }

    v67 = v11;
    v70 = v6;
    v14 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v11 = v16 & *(a1 + 64);
    v17 = (v15 + 63) >> 6;
    v75 = v3 + 1;
    v76 = v3 + 2;

    v6 = 0;
    *&v18 = 136315138;
    v69 = v18;
    v71 = a1;
    v77 = v2;
    v73 = a1 + 64;
    v74 = v17;
    if (v11)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v19 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v11 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        goto LABEL_13;
      }

      v11 = *(v14 + 8 * v19);
      ++v6;
      if (v11)
      {
        v6 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_110:
    if (!sub_1E4207384())
    {
      goto LABEL_2;
    }
  }

  while (1)
  {
    v19 = v6;
LABEL_12:
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v19 << 6);
    v22 = (*(a1 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_1E328438C(*(a1 + 56) + 32 * v21, &v78);
    *&v83 = v24;
    *(&v83 + 1) = v23;
    sub_1E329504C(&v78, &v84);

    v2 = v77;
LABEL_13:
    v86 = v83;
    v87[0] = v84;
    v87[1] = v85;
    v25 = *(&v83 + 1);
    if (!*(&v83 + 1))
    {
      break;
    }

    v26 = v86;
    sub_1E329504C(v87, v82);

    v27 = sub_1E3CB1984();
    if (v27 == 33)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_206();
      v28 = v70;
      v29(v70);

      v3 = sub_1E41FFC94();
      v30 = sub_1E42067F4();

      if (os_log_type_enabled(v3, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v83 = v32;
        *v31 = v69;
        v33 = sub_1E3270FC8(v26, v25, &v83);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_1E323F000, v3, v30, "ViewModelEventDescriptor::invalid event descriptor: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        a1 = v71;
        OUTLINED_FUNCTION_6_0();
        v2 = v77;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (v75->isa)(v28, v2);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v14 = v73;
      goto LABEL_105;
    }

    v34 = v27;
    sub_1E328438C(v82, &v80);
    sub_1E37C5830(&v80, &v78, &unk_1ECF296E0);
    if (!*(&v79 + 1))
    {
      sub_1E325F748(&v78, &unk_1ECF296E0);
      goto LABEL_31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_1E37C5830(&v80, &v78, &unk_1ECF296E0);
    if (!*(&v79 + 1))
    {
      sub_1E325F748(&v78, &unk_1ECF296E0);
LABEL_30:
      v2 = v77;
LABEL_31:
      sub_1E37C5830(&v80, &v78, &unk_1ECF296E0);
      if (*(&v79 + 1))
      {
        if (swift_dynamicCast())
        {
          v37 = v90;
LABEL_36:
          v38 = 0uLL;
          v39 = 0uLL;
          goto LABEL_37;
        }
      }

      else
      {
        sub_1E325F748(&v78, &unk_1ECF296E0);
      }

      v37 = 0;
      goto LABEL_36;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_30;
    }

    v35 = v90;
    sub_1E3277E60(0x65756C6176, 0xE500000000000000, v90, &v78);
    sub_1E3277E60(0x646574616D696E61, 0xE800000000000000, v35, &v90);

    if (*(&v91 + 1))
    {
      v36 = swift_dynamicCast();
      v2 = v77;
      if (v36)
      {
        v37 = v89;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v90, &unk_1ECF296E0);
      v37 = 0;
      v2 = v77;
    }

    v38 = v78;
    v39 = v79;
LABEL_37:
    v83 = v38;
    v84 = v39;
    sub_1E325F748(&v80, &unk_1ECF296E0);
    LOBYTE(v85) = v37;
    if (v34 >= 3u)
    {
      if (sub_1E3CB0888(v34) == 0x6573616863727570 && v43 == 0xE800000000000000)
      {
      }

      else
      {
        v45 = sub_1E42079A4();

        if ((v45 & 1) == 0)
        {
          v46 = v34;
          v47 = &selRef_purchases;
          v2 = v77;
          switch(v46)
          {
            case 4:
              goto LABEL_68;
            case 5:
              v47 = &selRef_playActivity;
              break;
            case 6:
              v47 = &selRef_settings;
              break;
            case 7:
              v47 = &selRef_upNext;
              break;
            case 8:
              v47 = &selRef_upNextLockupArtSettingChanged;
              break;
            case 9:
              v47 = &selRef_favorites;
              break;
            case 10:
              v47 = &selRef_favoritesInBackground;
              break;
            case 11:
              v47 = &selRef_accountChanged;
              break;
            case 12:
              v47 = &selRef_removeFromPlayHistory;
              break;
            case 13:
              v47 = &selRef_entitlements;
              break;
            case 14:
              v47 = &selRef_utsk;
              break;
            case 15:
              v47 = &selRef_restrictions;
              break;
            case 16:
              v47 = &selRef_preferredVideoFormat;
              break;
            case 17:
              v47 = &selRef_postPlay;
              break;
            case 18:
              v47 = &selRef_appDidBecomeActive;
              break;
            case 19:
              v47 = &selRef_playHistoryUpdated;
              break;
            case 20:
              v47 = &selRef_clearPlayHistory;
              break;
            case 21:
              v47 = &selRef_appRefresh;
              break;
            case 22:
              v47 = &selRef_locationAuthorizationChanged;
              break;
            case 23:
              v47 = &selRef_locationRetrieved;
              break;
            case 24:
              v47 = &selRef_highlightsChanged;
              break;
            case 25:
              v47 = &selRef_groupRecoCollectionVisiblityChanged;
              break;
            case 26:
              v47 = &selRef_groupRecoUsersChanged;
              break;
            case 27:
              v47 = &selRef_deviceDiscoveryDataAvailable;
              break;
            case 28:
              v47 = &selRef_favoritesSyncCompleted;
              break;
            case 29:
              v47 = &selRef_preferredPlaybackDimensionalityChanged;
              break;
            case 30:
              v47 = &selRef_brandVisibilityChanged;
              break;
            case 31:
              v47 = &selRef_federatedAppDidInstall;
              break;
            case 32:
              v47 = &selRef_pinnedTabsChanged;
              break;
            default:
              break;
          }

          v42 = [objc_opt_self() *v47];
          if (!v42)
          {
            goto LABEL_68;
          }

          goto LABEL_103;
        }
      }

      sub_1E37C5830(&v83, &v78, &qword_1ECF36838);
      v90 = v78;
      v91 = v79;
      if (!*(&v79 + 1))
      {
        sub_1E325F748(&v90, &unk_1ECF296E0);
        v2 = v77;
        goto LABEL_62;
      }

      v48 = swift_dynamicCast();
      v2 = v77;
      if ((v48 & 1) == 0)
      {
        goto LABEL_62;
      }

      v49 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v49 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (!v49)
      {

LABEL_62:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_206();
        v59 = v67;
        v60(v67);
        v52 = sub_1E41FFC94();
        v61 = sub_1E42067F4();
        if (os_log_type_enabled(v52, v61))
        {
          v50 = v59;
          v54 = swift_slowAlloc();
          *v54 = 0;
          v55 = v61;
          v56 = v52;
          v57 = "ViewModelEventDescriptor::purchase event must have a valid canonical ID";
LABEL_64:
          _os_log_impl(&dword_1E323F000, v56, v55, v57, v54, 2u);
          v58 = v50;
          OUTLINED_FUNCTION_6_0();
          goto LABEL_65;
        }

        v58 = v59;
LABEL_67:

        (v75->isa)(v58, v2);
LABEL_68:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_206();
        v62(v72);

        v3 = sub_1E41FFC94();
        v63 = sub_1E42067F4();

        if (os_log_type_enabled(v3, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v78 = v65;
          *v64 = v69;
          v66 = sub_1E3270FC8(v26, v25, &v78);

          *(v64 + 4) = v66;
          _os_log_impl(&dword_1E323F000, v3, v63, "ViewModelEventDescriptor::failed to create event descriptor for type:%s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          OUTLINED_FUNCTION_6_0();
          v2 = v77;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        (v75->isa)(v72, v2);
        goto LABEL_104;
      }

      sub_1E3280A90(0, &qword_1EE23AED8);
      v42 = sub_1E3A60798();
    }

    else
    {
      sub_1E37C5830(&v83, &v78, &qword_1ECF36838);
      v90 = v78;
      v91 = v79;
      if (!*(&v79 + 1))
      {
        sub_1E325F748(&v90, &unk_1ECF296E0);
LABEL_57:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_206();
        v50 = v68;
        v51(v68);
        v52 = sub_1E41FFC94();
        v53 = sub_1E42067F4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          v55 = v53;
          v56 = v52;
          v57 = "ViewModelEventDescriptor::refresh event must specify a non zero delay in seconds";
          goto LABEL_64;
        }

        v58 = v50;
LABEL_65:
        v14 = v73;
        goto LABEL_67;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_57;
      }

      v40 = v80;
      if (!v80)
      {
        goto LABEL_57;
      }

      v41 = objc_allocWithZone(VUIAppDocumentRefreshEventDescriptor);
      v42 = sub_1E3CB1DB8(v34, v40, 0, 0);
      v14 = v73;
    }

LABEL_103:

    [v42 setAnimated_];
    v3 = &v88;
    sub_1E3B0C60C(&v78, v42);

LABEL_104:
    sub_1E325F748(&v83, &qword_1ECF36838);
    __swift_destroy_boxed_opaque_existential_1(v82);
    a1 = v71;
LABEL_105:
    v17 = v74;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  return v88;
}

id sub_1E3CB1908(void *a1)
{
  result = [a1 type];
  if (result >= 0x21)
  {
    result = sub_1E42076B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3CB1984()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3CB19E8()
{
  result = qword_1ECF36830;
  if (!qword_1ECF36830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36830);
  }

  return result;
}

uint64_t sub_1E3CB1A3C(char a1, char a2)
{
  v3 = sub_1E3CB0888(a1);
  v5 = v4;
  if (v3 == sub_1E3CB0888(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3CB1AC8(char a1)
{
  sub_1E4207B44();
  sub_1E3CB0888(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3CB1B34(uint64_t a1, char a2)
{
  sub_1E3CB0888(a2);
  sub_1E4206014();
}

uint64_t sub_1E3CB1B90(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3CB0888(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3CB1BF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3CB1984();
  *a1 = result;
  return result;
}

uint64_t sub_1E3CB1C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3CB0888(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewModelEventDescriptor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewModelEventDescriptor(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

id sub_1E3CB1DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithEventType:a1 delayInSeconds:a2 name:v7];

  return v8;
}

uint64_t static PlayerTipKitManagerObjC.multiviewTipID.getter()
{
  v0 = *sub_1E3794C7C();
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 16);

  return v1;
}

id sub_1E3CB1EB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1E4205ED4();

  return v3;
}

uint64_t static PlayerTipKitManagerObjC.radioBroadcastTipID.getter()
{
  v0 = *sub_1E3794C7C();
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t *static PlayerTipKitManagerObjC.multiviewTip.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E3794C7C();
  *(a1 + 24) = &type metadata for MultiviewTip;
  return result;
}

id sub_1E3CB1FA8(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1E4207994();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

uint64_t static PlayerTipKitManagerObjC.radioBroadcastTip.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *sub_1E3794C7C();
  OUTLINED_FUNCTION_15_0();
  return sub_1E328438C(v2 + 48, a1);
}

uint64_t static PlayerTipKitManagerObjC.addMultiviewTip(for:)(uint64_t a1)
{
  sub_1E328438C(a1, v3);
  sub_1E3CB20D4();
  result = swift_dynamicCast();
  if (result)
  {
    sub_1E3794C7C();

    sub_1E3794414(v2);
  }

  return result;
}

unint64_t sub_1E3CB20D4()
{
  result = qword_1ECF36840;
  if (!qword_1ECF36840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF36840);
  }

  return result;
}

uint64_t static PlayerTipKitManagerObjC.addTipsToConfiguration(_:isRadioBroadcastEnabled:)(uint64_t a1, char a2)
{
  sub_1E3794C7C();

  sub_1E3794CBC(a1, a2);
}

void *static PlayerTipKitManagerObjC.scheduleTips(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1E3794C7C();

    sub_1E3795038(v1);
  }

  return result;
}

uint64_t sub_1E3CB2354(void (*a1)(uint64_t))
{
  sub_1E3794C7C();

  a1(v2);
}

id PlayerTipKitManagerObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlayerTipKitManagerObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerTipKitManagerObjC();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlayerTipKitManagerObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerTipKitManagerObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3CB249C()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_21_1();
  sub_1E328FCF4(v1, v2);
  return sub_1E42006B4();
}

void sub_1E3CB2520()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  v43 = sub_1E4200544();
  LOBYTE(v46[0]) = 1;
  sub_1E42038E4();
  LOBYTE(v13) = v47;
  v44 = v48;
  type metadata accessor for ViewInteractionStates();
  OUTLINED_FUNCTION_2_160();
  sub_1E3CB5A68(v14, v15);
  OUTLINED_FUNCTION_20_2();
  v16 = sub_1E4201754();
  v41 = v17;
  v42 = v16;
  type metadata accessor for ContextMenuModel();
  swift_retain_n();
  v18 = sub_1E3E6CDBC();
  v20 = *v18;
  v19 = v18[1];
  v47 = v20;
  v48 = v19;

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  v40 = sub_1E4188148(v3, v12);
  v21 = memcpy(v63, v1, sizeof(v63));
  v22 = (*(*v3 + 488))(v21);
  if (v22)
  {
    v1 = sub_1E373E010(41, v22);

    if (v1)
    {
LABEL_22:
      v23 = sub_1E39C1F18();
      if (sub_1E32AE9B0(v23))
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          goto LABEL_44;
        }

        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

LABEL_25:
        v29 = *(v23 + 32);

        goto LABEL_26;
      }

      if (v1)
      {
        v23 = sub_1E39C1F18();
        if (sub_1E32AE9B0(v23))
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            goto LABEL_44;
          }

          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          __break(1u);
        }
      }

      v29 = 0;
      goto LABEL_34;
    }
  }

  v23 = v3;
  v24 = (*(*v3 + 464))();
  if (!v24)
  {
    v1 = 0;
    goto LABEL_22;
  }

  v25 = v24;
  v38 = v13;
  v39 = v3;
  v26 = sub_1E32AE9B0(v24);
  v3 = 0;
  v13 = &qword_1F5D5CE68;
  while (1)
  {
    if (v26 == v3)
    {

      v1 = 0;
      goto LABEL_21;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x1E6911E60](v3, v25);
    }

    else
    {
      if (v3 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v1 = *(v25 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v45 = v1[49];
    strcpy(v60, ")");
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    v23 = v46[1];
    if (v47 == v46[0] && v48 == v46[1])
    {

LABEL_20:

LABEL_21:
      v3 = v39;
      LOBYTE(v13) = v38;
      goto LABEL_22;
    }

    v28 = sub_1E42079A4();

    if (v28)
    {
      goto LABEL_20;
    }

    ++v3;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  v29 = MEMORY[0x1E6911E60](0, v23);
LABEL_26:

LABEL_34:
  v30 = sub_1E39C2CD0();
  v32 = v3;
  if (v31)
  {
    v33 = v31;
    if (v29)
    {
      v34 = v30;
      LOWORD(v47) = *(v29 + 98);
      LOWORD(v46[0]) = 165;
      sub_1E3741534();
      if (sub_1E4205E84())
      {
        *&v49[8] = &unk_1F5D5D528;
        *&v49[16] = &off_1F5D5C858;
        LOBYTE(v47) = 0;
        v35 = *(**sub_1E3CFEA54() + 376);

        v36 = v35(v34, v33);

        LOBYTE(v13) = sub_1E39C29F0(&v47, v36 & 1);

        __swift_destroy_boxed_opaque_existential_1(&v47);

        v37 = 0;
        goto LABEL_41;
      }
    }
  }

  else
  {
  }

  v37 = v44;
LABEL_41:
  v46[0] = v43;
  v46[1] = v32;
  memcpy(&v46[2], v63, 0xC3uLL);
  *(&v46[26] + 3) = v61;
  HIBYTE(v46[26]) = v62;
  v46[27] = v40;
  v46[28] = v1;
  v46[29] = v29;
  LOBYTE(v46[30]) = v13 & 1;
  *(&v46[30] + 1) = *v60;
  HIDWORD(v46[30]) = *&v60[3];
  v46[31] = v37;
  v46[32] = v42;
  v46[33] = v41;
  v47 = v43;
  v48 = v32;
  memcpy(v49, v63, sizeof(v49));
  v50 = v61;
  v51 = v62;
  v52 = v40;
  v53 = v1;
  v54 = v29;
  v55 = v13 & 1;
  *v56 = *v60;
  *&v56[3] = *&v60[3];
  v57 = v37;
  v58 = v42;
  v59 = v41;
  sub_1E3CB4EEC(v46, &v45);
  sub_1E3CB4F24(&v47);
  memcpy(v5, v46, 0x110uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CB2BA8()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v1;
  sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v33 = v3;
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v32 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36848);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36850);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v37 = v0;
  v16 = v0[1];
  if ((*(*v16 + 392))(v13))
  {
    type metadata accessor for MonogramLockupCellLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30();
      v18 = *(v17 + 1728);
      v31 = v8;

      v35 = v16;
      v20 = v18(v19);
      v8 = v31;
      v21 = v20;
    }

    else
    {
      v21 = 0;
      v35 = 0;
    }
  }

  else
  {
    v21 = 0;
    v35 = 0;
  }

  v22 = v37;
  sub_1E3CB2F64(v15);
  if (v21)
  {
    v23 = 1;
  }

  else
  {
    v24 = v32;
    sub_1E4200AE4();
    OUTLINED_FUNCTION_15_104();
    v25 = swift_allocObject();
    memcpy((v25 + 16), v22, 0x110uLL);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1E3CB5C04;
    *(v26 + 24) = v25;
    sub_1E3CB4EEC(v22, v38);
    v27 = v34;
    sub_1E4203B64();

    (*(v33 + 8))(v24, v27);
    v23 = 0;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);
  __swift_storeEnumTagSinglePayload(v8, v23, 1, v28);
  sub_1E4200BA4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36858);
  v30 = sub_1E3CB4F54();
  v38[0] = v29;
  v38[1] = v30;
  OUTLINED_FUNCTION_6_135();
  swift_getOpaqueTypeConformance2();
  sub_1E3CB533C();
  sub_1E42034B4();

  sub_1E325F6F0(v8, &qword_1ECF36848);
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CB2F64@<X0>(uint64_t a1@<X8>)
{
  v138 = a1;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v143 = v3;
  v144 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v142 = v5 - v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v126 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v114 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v115 = v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36898);
  OUTLINED_FUNCTION_0_10();
  v117 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v116 = v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368D8);
  OUTLINED_FUNCTION_0_10();
  v119 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v118 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36890);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v128 = v23;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36878);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v129 = v25;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36870);
  OUTLINED_FUNCTION_0_10();
  v134 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v133 = v28;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36868);
  OUTLINED_FUNCTION_0_10();
  v137 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v135 = v31;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36858);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v141 = v33;
  v145 = v1;
  v34 = v1[1];
  v35 = (*v34 + 488);
  v36 = *v35;
  v37 = (*v35)();
  if (!v37)
  {
    goto LABEL_5;
  }

  v38 = sub_1E373E010(23, v37);

  if (v38 && *v38 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v38 = 0;
  }

  v123 = v35;
  v39 = (v36)(v37);
  v121 = v36;
  if (!v39)
  {
LABEL_10:
    v40 = 0;
    goto LABEL_11;
  }

  v40 = sub_1E373E010(15, v39);

  if (v40 && *v40 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  v41 = (*v34 + 392);
  v42 = *v41;
  v43 = v41;
  if ((*v41)(v39) && (OUTLINED_FUNCTION_30(), (*(v44 + 152))(v150), v45 = v150[0], v46 = v150[1], v47 = v150[2], v48 = v150[3], , (v151 & 1) == 0))
  {
    v49.n128_u64[0] = v45;
    v50.n128_u64[0] = v46;
    v51.n128_u64[0] = v47;
    v52.n128_u64[0] = v48;
    v53 = j_nullsub_1(v49, v50, v51, v52);
  }

  else
  {
    v53 = OUTLINED_FUNCTION_5_8();
  }

  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v146 = v40;
  v124 = v43;
  v125 = v42;
  v61 = v42();
  v147 = v34;
  if (v61)
  {
    v62 = v38;
    type metadata accessor for MonogramLockupCellLayout();
    v63 = swift_dynamicCastClass();
    v64 = v63;
    if (v63)
    {
      v65 = *(*v63 + 1728);

      v67 = v65(v66);
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    v62 = v38;
    v67 = 0;
    v64 = 0;
  }

  v68 = v121(v61);
  if (v68)
  {
    v69 = sub_1E373E010(31, v68);

    if (v69)
    {
      type metadata accessor for ImageViewModel();
      OUTLINED_FUNCTION_20_2();
      v68 = swift_dynamicCastClass();
      if (!v68)
      {
      }
    }

    else
    {
      v68 = 0;
    }
  }

  v122 = v64;
  v123 = v68;
  if (v67)
  {
    v70 = sub_1E4201B84();
    v71 = v115;
    *v115 = v70;
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368E8);
    v72 = v145;
    v73 = v62;
    v74 = v146;
    sub_1E3CB3B84();
    *(v71 + *(v12 + 36)) = 0;
    OUTLINED_FUNCTION_15_104();
    v75 = swift_allocObject();
    memcpy((v75 + 16), v72, 0x110uLL);
    sub_1E3CB4EEC(v72, &v148);
    v76 = sub_1E3CB5258();
    v121 = v8;
    v77 = v76;
    v78 = v116;
    sub_1E3A9D80C(1, sub_1E3CB5930, v75, v12, v76);

    sub_1E325F6F0(v71, &qword_1ECF368A0);
    v148 = v12;
    v149 = v77;
    v79 = OUTLINED_FUNCTION_9_111();
    v80 = v118;
    v81 = v127;
    sub_1E3A9D920(v64, v127, v79);
    (*(v117 + 8))(v78, v81);
    v82 = v119;
    v83 = v131;
    (*(v119 + 16))(v126, v80, v131);
    swift_storeEnumTagMultiPayload();
    v148 = v81;
    v149 = v79;
    OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v84, v85);
    v86 = v128;
    sub_1E4201F44();
    (*(v82 + 8))(v80, v83);
  }

  else
  {
    *v11 = sub_1E4201D44();
    *(v11 + 1) = 0;
    v11[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368E0);
    v73 = v62;
    v74 = v146;
    sub_1E3CB41E8();
    sub_1E3743538(v11, v126, &qword_1ECF368C8);
    swift_storeEnumTagMultiPayload();
    v87 = sub_1E3CB5258();
    v148 = v12;
    v149 = v87;
    v88 = OUTLINED_FUNCTION_9_111();
    v148 = v127;
    v149 = v88;
    OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v89, &qword_1ECF368C8);
    v86 = v128;
    sub_1E4201F44();
    sub_1E325F6F0(v11, &qword_1ECF368C8);
  }

  v120 = v73;
  v90 = (v73 | v74) == 0;
  v91 = (v73 | v74) != 0;
  v92 = v129;
  sub_1E3741EA0(v86, v129, &qword_1ECF36890);
  v93 = v145;
  v94 = v145[27];
  v95 = sub_1E3CB509C();
  v96 = v133;
  v97 = v94;
  v98 = v132;
  sub_1E4187EA8(v97, v132, v95);
  v99 = sub_1E325F6F0(v92, &qword_1ECF36878);
  v100 = (v125)(v99);
  v148 = v98;
  v149 = v95;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = v136;
  OUTLINED_FUNCTION_45_1();
  LOBYTE(v92) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  v103 = OUTLINED_FUNCTION_51_1();
  v104 = v135;
  sub_1E383F6D4(v100, v90, v92 & 1, v91, v103 & 1, v102, OpaqueTypeConformance2);

  (*(v134 + 8))(v96, v102);
  v105 = v142;
  sub_1E4202474();
  v148 = v102;
  v149 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v106 = v141;
  v107 = v139;
  sub_1E4203224();
  (*(v143 + 8))(v105, v144);
  (*(v137 + 8))(v104, v107);
  v108 = sub_1E4202734();
  v109 = v140;
  v110 = v106 + *(v140 + 36);
  *v110 = v108;
  *(v110 + 8) = v57;
  *(v110 + 16) = v58;
  *(v110 + 24) = v59;
  *(v110 + 32) = v60;
  *(v110 + 40) = 0;
  OUTLINED_FUNCTION_15_104();
  v111 = swift_allocObject();
  memcpy((v111 + 16), v93, 0x110uLL);
  sub_1E3CB4EEC(v93, &v148);
  v112 = sub_1E3CB4F54();
  sub_1E3D54698(v147, sub_1E3CB54E4, v111, v109, v112, v138);

  return sub_1E325F6F0(v106, &qword_1ECF36858);
}

void sub_1E3CB3B84()
{
  OUTLINED_FUNCTION_31_1();
  v68 = v0;
  v76 = v1;
  v75 = v2;
  v74 = v3;
  v5 = v4;
  v79 = v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v71 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v70 = v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34968);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v73 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32370);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368F0);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  v77 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v67 - v36;
  sub_1E3CB4464(*(v5 + 8), v5 + 16, v80);
  sub_1E3CB4640();
  sub_1E375C31C(v80);
  v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368F8) + 36)] = 0;
  v38 = sub_1E4202784();
  sub_1E38EF970();
  sub_1E4200A54();
  v39 = v37;
  v40 = &v37[*(v32 + 44)];
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1E4299720;
  *(v45 + 32) = v74;
  *(v45 + 40) = v75;

  v46 = sub_1E4201D44();
  v47 = j__OUTLINED_FUNCTION_18();
  sub_1E403E654(v45, v46, v47 & 1, v30);
  v48 = v30;
  *&v30[*(v24 + 44)] = 256;
  v49 = v76;
  if (v76)
  {

    sub_1E3EB9BB4(v81);
    if (v68)
    {
      v50 = (*(*v68 + 1824))();
    }

    else
    {
      v50 = 0;
    }

    v52 = v22;
    v54 = OUTLINED_FUNCTION_18();
    v55 = v70;
    sub_1E37E8BE8(v49, v81, v50, v54 & 1, 0, 0, v70);

    sub_1E375C31C(v81);
    (*(v71 + 32))(v13, v55, v72);
    v53 = v78;
    *(v13 + *(v78 + 36)) = 257;
    v56 = v13;
    v57 = v69;
    sub_1E3741EA0(v56, v69, &qword_1ECF2FEC0);
    sub_1E3741EA0(v57, v52, &qword_1ECF2FEC0);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v52 = v22;
    v53 = v78;
  }

  __swift_storeEnumTagSinglePayload(v52, v51, 1, v53);
  v58 = v77;
  sub_1E3743538(v39, v77, &qword_1ECF368F0);
  v59 = v27;
  sub_1E3743538(v48, v27, &qword_1ECF32370);
  v60 = v73;
  sub_1E3743538(v52, v73, &qword_1ECF34968);
  v61 = v79;
  sub_1E3743538(v58, v79, &qword_1ECF368F0);
  v62 = v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36900);
  sub_1E3743538(v59, v62 + v63[12], &qword_1ECF32370);
  v64 = v62 + v63[16];
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_1E3743538(v60, v62 + v63[20], &qword_1ECF34968);
  sub_1E325F6F0(v52, &qword_1ECF34968);
  sub_1E325F6F0(v48, &qword_1ECF32370);
  sub_1E325F6F0(v39, &qword_1ECF368F0);
  sub_1E325F6F0(v60, &qword_1ECF34968);
  sub_1E325F6F0(v59, &qword_1ECF32370);
  v65 = OUTLINED_FUNCTION_45_1();
  sub_1E325F6F0(v65, v66);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CB41E8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v33 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32370);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF368F8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  sub_1E3CB4464(*(v5 + 8), v5 + 16, v34);
  sub_1E3CB4640();
  sub_1E375C31C(v34);
  v22[*(v16 + 44)] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E4299720;
  *(v23 + 32) = v3;
  *(v23 + 40) = v1;

  v24 = sub_1E4201D44();
  v25 = j__OUTLINED_FUNCTION_18();
  sub_1E403E654(v23, v24, v25 & 1, v14);
  *&v14[*(v8 + 44)] = 256;
  sub_1E3743538(v22, v19, &qword_1ECF368F8);
  sub_1E3743538(v14, v11, &qword_1ECF32370);
  v26 = v33;
  sub_1E3743538(v19, v33, &qword_1ECF368F8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36928);
  sub_1E3743538(v11, v26 + *(v27 + 48), &qword_1ECF32370);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v28, v29);
  sub_1E325F6F0(v22, &qword_1ECF368F8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v30, v31);
  sub_1E325F6F0(v19, &qword_1ECF368F8);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3CB4464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, a2, 0x5BuLL);
  v6 = __dst[0];
  v7 = __dst[1];
  v8 = __dst[2];
  v20 = __dst[2];
  v9 = *(*a1 + 392);
  v10 = sub_1E375C2C0(__dst, v19);
  if (v9(v10))
  {
    type metadata accessor for MonogramLockupCellLayout();
    if (swift_dynamicCastClass() && (OUTLINED_FUNCTION_30(), ((*(v11 + 1728))() & 1) != 0))
    {
      (*(*a1 + 1800))();
      OUTLINED_FUNCTION_30();
      v13 = (*(v12 + 1744))();

      v6 = (*(*v13 + 1696))(v14);
      v7 = v15;
      v17 = v16;

      v8 = v17 & 1;
      v20 = v17 & 1;
    }

    else
    {
    }
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  return memcpy((a3 + 17), (a2 + 17), 0x4AuLL);
}

void sub_1E3CB4640()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v49 = v1;
  v2 = type metadata accessor for Monogram();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v45 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36908);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36910);
  OUTLINED_FUNCTION_0_10();
  v48 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v47 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36918);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  OUTLINED_FUNCTION_5_7();
  v23 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v42 - v25;
  v27 = *(v22 + 224);
  if (v27)
  {
    v42 = v14;
    v43 = v10;
    v44 = v18;
    v50[0] = *(v22 + 240);
    v28 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    sub_1E42038F4();
    if (v51)
    {
      v29 = v28[29];
    }

    else
    {
      v29 = 0;
    }

    v31 = v6;
    v32 = v17;

    v33 = v46;
    sub_1E375C2C0(v46, v50);
    sub_1E3BD63E4(v27, v29, v33, 0, 0, 0, 0, 0, v45);
    v34 = OUTLINED_FUNCTION_45_1();
    sub_1E38F856C(v34, v35);
    *&v9[*(v6 + 36)] = 256;
    OUTLINED_FUNCTION_15_104();
    v36 = swift_allocObject();
    memcpy((v36 + 16), v28, 0x110uLL);
    sub_1E3CB4EEC(v28, v50);
    v37 = sub_1E3CB59AC();
    v38 = j__OUTLINED_FUNCTION_18();
    v39 = v47;
    sub_1E383F5C4(v38 & 1, sub_1E3CB5B20, v36, 0, 0, v31, v37);

    sub_1E325F6F0(v9, &qword_1ECF36908);
    v40 = v48;
    v41 = v43;
    (*(v48 + 16))(v32, v39, v43);
    swift_storeEnumTagMultiPayload();
    *&v50[0] = v31;
    *(&v50[0] + 1) = v37;
    OUTLINED_FUNCTION_10_106();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();

    (*(v40 + 8))(v39, v41);
  }

  else
  {
    nullsub_1(v23, v24);
    (*(v20 + 16))(v17, v26, v18);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1E3CB59AC();
    *&v50[0] = v6;
    *(&v50[0] + 1) = v30;
    OUTLINED_FUNCTION_10_106();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    (*(v20 + 8))(v26, v18);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3CB4B04(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v33 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v32 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = *(*a1 + 488);
  v23 = v22();
  if (v23)
  {
    v24 = sub_1E373E010(15, v23);

    if (v24)
    {
      if (*v24 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_8;
      }
    }
  }

  v25 = (v22)(v23);
  if (!v25)
  {
    return a3;
  }

  v26 = sub_1E373E010(23, v25);

  if (!v26)
  {
    return a3;
  }

  if (*v26 != _TtC8VideosUI13TextViewModel)
  {
LABEL_14:

    return a3;
  }

LABEL_8:

  v27 = sub_1E3C27528();

  if (!v27)
  {
    goto LABEL_14;
  }

  type metadata accessor for TextLayout();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    goto LABEL_14;
  }

  v29 = (*(*v28 + 1688))();
  if (v29 == 27)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  }

  else
  {
    sub_1E3E3B33C(v29, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      v30 = v32;
      (*(v32 + 32))(v21, v15, v16);
      (*(v30 + 16))(v12, v21, v16);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v16);
      sub_1E405EA04(a5, v12, v33);

      sub_1E325F6F0(v12, &qword_1ECF2DEE8);
      (*(v30 + 8))(v21, v16);
      return a3;
    }
  }

  sub_1E325F6F0(v15, &qword_1ECF2DEE8);
  return a3;
}

unint64_t sub_1E3CB4F54()
{
  result = qword_1ECF36860;
  if (!qword_1ECF36860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36878);
    sub_1E3CB509C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36860);
  }

  return result;
}

unint64_t sub_1E3CB509C()
{
  result = qword_1ECF36880;
  if (!qword_1ECF36880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36878);
    sub_1E3CB5120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36880);
  }

  return result;
}

unint64_t sub_1E3CB5120()
{
  result = qword_1ECF36888;
  if (!qword_1ECF36888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF368A0);
    sub_1E3CB5258();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1ECF368C0, &qword_1ECF368C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36888);
  }

  return result;
}

unint64_t sub_1E3CB5258()
{
  result = qword_1ECF368A8;
  if (!qword_1ECF368A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF368A0);
    sub_1E328FCF4(&qword_1ECF368B0, &qword_1ECF368B8);
    sub_1E328FCF4(&qword_1EE2889E0, &qword_1ECF2C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF368A8);
  }

  return result;
}

unint64_t sub_1E3CB533C()
{
  result = qword_1EE289DA8;
  if (!qword_1EE289DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36848);
    sub_1E328FCF4(&qword_1EE289DB0, &qword_1ECF2D3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289DA8);
  }

  return result;
}

uint64_t sub_1E3CB5410(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CB5450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3CB54E4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_1E39C2CD0();
  if (v5)
  {
    v6 = *(v1 + 248);
    if (v6)
    {
      LOWORD(v32) = *(v6 + 98);
      LOWORD(v31) = 165;
      sub_1E3741534();
      if (sub_1E4205E84())
      {
        if (a1)
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            v8 = v7;
            v9 = a1;
            v10 = [v8 addedEntityIDs];
            v11 = sub_1E4206624();

            v12 = OUTLINED_FUNCTION_53();
            LOBYTE(v10) = sub_1E3862230(v12, v13, v11);

            if (v10 & 1) != 0 || (v14 = [v8 removedEntityIDs], v15 = sub_1E4206624(), v14, v16 = OUTLINED_FUNCTION_53(), LOBYTE(v14) = sub_1E3862230(v16, v17, v15), , (v14))
            {
              v18 = [v8 addedEntityIDs];
              v19 = sub_1E4206624();

              v20 = OUTLINED_FUNCTION_53();
              LOBYTE(v18) = sub_1E3862230(v20, v21, v19);

              LOBYTE(v31) = 0;
              v33 = MEMORY[0x1E69E6370];
              LOBYTE(v32) = v18 & 1;
              (*(*v4 + 784))(&v31, &v32, &unk_1F5D5D528, &off_1F5D5C858);
              sub_1E325F6F0(&v32, &unk_1ECF296E0);
              v31 = *(v2 + 256);
              v32 = v31;
              v30[15] = v18 & 1;
              v34 = *(&v31 + 1);
              sub_1E3743538(&v34, v30, &qword_1ECF31088);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
              sub_1E4203904();

              sub_1E325F6F0(&v32, &qword_1ECF294E0);
              return 0;
            }
          }
        }

        v22 = [objc_opt_self() favoritesSyncCompleted];
        v23 = v22;
        if (a1)
        {
          if (v22)
          {
            sub_1E3CB5BC0();
            v24 = a1;
            v25 = sub_1E4206F64();

            if (v25)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          if (!v22)
          {
LABEL_19:
            v27 = *(**sub_1E3CFEA54() + 376);

            v28 = OUTLINED_FUNCTION_53();
            v29 = v27(v28);

            LOBYTE(v31) = 0;
            v33 = MEMORY[0x1E69E6370];
            LOBYTE(v32) = v29 & 1;
            (*(*v4 + 784))(&v31, &v32, &unk_1F5D5D528, &off_1F5D5C858);
            sub_1E325F6F0(&v32, &unk_1ECF296E0);
            v32 = *(v2 + 256);
            LOBYTE(v31) = v29 & 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
            sub_1E4203904();
            return 0;
          }
        }
      }
    }
  }

  return 2;
}

uint64_t sub_1E3CB5934()
{
  memset(v2, 0, sizeof(v2));
  v3 = 1;
  sub_1E40421AC(2, 0, v2, &v1);
  sub_1E4200524();
  return sub_1E38E5014(&v1);
}

unint64_t sub_1E3CB59AC()
{
  result = qword_1ECF36920;
  if (!qword_1ECF36920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36908);
    sub_1E3CB5A68(&qword_1EE23BF18, type metadata accessor for Monogram);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36920);
  }

  return result;
}

uint64_t sub_1E3CB5A68(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_33()
{

  OUTLINED_FUNCTION_15_104();

  return swift_deallocObject();
}

uint64_t sub_1E3CB5B20()
{
  if (*(v0 + 272))
  {

    sub_1E3B1E260();
  }

  else
  {
    type metadata accessor for ViewInteractionStates();
    OUTLINED_FUNCTION_2_160();
    sub_1E3CB5A68(v2, v3);
    OUTLINED_FUNCTION_21_1();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3CB5BC0()
{
  result = qword_1EE23AFD8;
  if (!qword_1EE23AFD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AFD8);
  }

  return result;
}

uint64_t sub_1E3CB5C0C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  result = (v6 | v7) == 0;
  if (v6 && v7)
  {
    if (a1[4] == a2[4] && v6 == v7)
    {
      return 1;
    }

    else
    {

      return sub_1E42079A4();
    }
  }

  return result;
}

uint64_t sub_1E3CB5CD4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  switch(*(a1 + 48))
  {
    case 1:
      if (*(a2 + 48) != 1)
      {
        return 0;
      }

      goto LABEL_27;
    case 2:
      if (*(a2 + 48) != 2)
      {
        return 0;
      }

      goto LABEL_27;
    case 3:
      if (*(a2 + 48) != 3)
      {
        return 0;
      }

      type metadata accessor for ViewModel();
      v17 = OUTLINED_FUNCTION_32_0();
      return static ViewModel.== infix(_:_:)(v17, v18) & 1;
    case 4:
      if (*(a2 + 48) != 4)
      {
        return 0;
      }

      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *a2 == v4 && v3 == *(a2 + 8);
      if (!v13 && (sub_1E42079A4() & 1) == 0)
      {
        return 0;
      }

      v14 = v5 == v9 && v6 == v10;
      if (!v14 && (sub_1E42079A4() & 1) == 0)
      {
        return 0;
      }

      result = (v8 | v12) == 0;
      if (!v8 || !v12)
      {
        return result;
      }

      if (v7 != v11 || v8 != v12)
      {
        goto LABEL_31;
      }

      return 1;
    default:
      if (*(a2 + 48))
      {
        return 0;
      }

LABEL_27:
      if (*a2 == v4 && v3 == *(a2 + 8))
      {
        return 1;
      }

LABEL_31:

      return sub_1E42079A4();
  }
}

void sub_1E3CB5E80()
{
  sub_1E4207B44();
    ;
  }
}

void sub_1E3CB5EC4()
{
  v1 = *(v0 + 16);
  v2[0] = *v0;
  v2[1] = v1;
  v2[2] = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_1E4207B44();
  sub_1E3CB5E7C(v2);
}

uint64_t sub_1E3CB5F1C()
{
  v3 = v0;
  v4 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  switch(*(v0 + 264))
  {
    case 0:

      v7 = OUTLINED_FUNCTION_283();
      v10 = sub_1E3CB6544(v7, v8, v9);
      if (v73)
      {
        v68 = v73;
        v2 = aBlock;
        v1 = v74;
        v66 = v75;
        v13 = OUTLINED_FUNCTION_283();
        sub_1E37AE010(v13, v14, 0);
        v4 = OUTLINED_FUNCTION_4_162(v15, v16, v17, MEMORY[0x1E69E7CC0]);
        v5 = *(v4 + 2);
        v18 = *(v4 + 3);
        v0 = v5 + 1;
        if (v5 >= v18 >> 1)
        {
          goto LABEL_54;
        }

        goto LABEL_4;
      }

      v4 = OUTLINED_FUNCTION_4_162(v10, v11, v12, MEMORY[0x1E69E7CC0]);
      v1 = *(v4 + 2);
      v28 = *(v4 + 3);
      v0 = v1 + 1;
      if (v1 >= v28 >> 1)
      {
        goto LABEL_57;
      }

      goto LABEL_44;
    case 1:
      v46 = sub_1E32AE9B0(*(v0 + 248));
      if (!v46)
      {
        goto LABEL_47;
      }

      v36 = v46;
      v65 = v0;
      v67 = v6;
      if (v46 < 1)
      {
        __break(1u);
        goto LABEL_56;
      }

      v41 = v5 & 0xC000000000000001;
      sub_1E3C27104(v5, v6, 1);
      v42 = 0;
      v3 = _TtC8VideosUI13TextViewModel;
      v69 = v36;
      while (2)
      {
        if (v41)
        {
          v34 = MEMORY[0x1E6911E60](v42, v5);
        }

        else
        {
          v34 = *(v5 + 8 * v42 + 32);
        }

        if (*v34 != v3)
        {
          type metadata accessor for ImageViewModel();
          v56 = swift_dynamicCastClass();
          if (!v56)
          {

            goto LABEL_41;
          }

          v57 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_27();
            v4 = sub_1E3CB6CE8(v61, v62, v63, v4);
          }

          v59 = *(v4 + 2);
          v58 = *(v4 + 3);
          if (v59 >= v58 >> 1)
          {
            v4 = OUTLINED_FUNCTION_0_207(v58);
          }

          *(v4 + 2) = v59 + 1;
          v60 = &v4[56 * v59];
          *(v60 + 4) = v57;
          *(v60 + 40) = 0u;
          *(v60 + 56) = 0u;
          *(v60 + 9) = 0;
          v60[80] = 3;
LABEL_40:
          v71 = v4;
LABEL_41:
          if (v36 == ++v42)
          {
            sub_1E37AE010(v5, v67, 1);
            v3 = v65;
            goto LABEL_47;
          }

          continue;
        }

        break;
      }

      v36 = v41;
      v47 = v5;
      v48 = v3;
      sub_1E3CB5F1C();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v49 = v34[36];
      cache = v49->cache;
      v41 = *(v4 + 2);
      v3 = (v41 + cache);
      if (__OFADD__(v41, cache))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v52 = *(v4 + 3) >> 1, v52 < v3))
      {
        if (v41 <= v3)
        {
          v53 = v41 + cache;
        }

        else
        {
          v53 = v41;
        }

        v4 = sub_1E3CB6CE8(isUniquelyReferenced_nonNull_native, v53, 1, v4);
        v52 = *(v4 + 3) >> 1;
      }

      v3 = v48;
      v41 = v36;
      v5 = v47;
      v36 = v69;
      if (!v49->cache)
      {

        if (!cache)
        {
          goto LABEL_39;
        }

        goto LABEL_49;
      }

      v40 = v52 - *(v4 + 2);
      if (v40 < cache)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      swift_arrayInitWithCopy();

      if (!cache)
      {
LABEL_39:

        goto LABEL_40;
      }

      v54 = *(v4 + 2);
      v55 = __OFADD__(v54, cache);
      v40 = v54 + cache;
      if (!v55)
      {
        *(v4 + 2) = v40;
        goto LABEL_39;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      v4 = sub_1E3CB6CE8((v40 > 1), v42, 1, v4);
LABEL_11:
      v43 = OUTLINED_FUNCTION_283();
      sub_1E37AE010(v43, v44, 3);
      *(v4 + 2) = v42;
      v45 = &v4[56 * v41];
      *(v45 + 32) = v34;
      *(v45 + 40) = v36;
LABEL_45:
      OUTLINED_FUNCTION_3_157(v45);
LABEL_46:
      v19[80] = v20;
LABEL_47:
      swift_beginAccess();
      v3[7].superclass = v4;

    case 2:
      v21 = OUTLINED_FUNCTION_283();
      sub_1E3C27104(v21, v22, 2);
      if (!v5)
      {
        goto LABEL_9;
      }

      v70 = v4;
      v23 = v5;
      v24 = [v23 length];
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_54:
        v4 = OUTLINED_FUNCTION_0_207(v18);
LABEL_4:
        *(v4 + 2) = v0;
        v19 = &v4[56 * v5];
        *(v19 + 4) = v2;
        *(v19 + 40) = v68;
        *(v19 + 7) = v1;
        *(v19 + 4) = v66;
        v20 = 4;
        goto LABEL_46;
      }

      v25 = v24;
      v0 = swift_allocObject();
      *(v0 + 16) = v23;
      *(v0 + 24) = &v70;
      *(v0 + 32) = v3;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_1E3CB6FA8;
      *(v26 + 24) = v0;
      *&v75 = sub_1E3C2A654;
      *(&v75 + 1) = v26;
      aBlock = MEMORY[0x1E69E9820];
      *&v73 = 1107296256;
      *(&v73 + 1) = sub_1E3C29F74;
      v74 = &block_descriptor_88;
      v6 = _Block_copy(&aBlock);
      v27 = v23;
      v1 = v3;

      [v27 enumerateAttributesInRange:0 options:v25 usingBlock:{0, v6}];

      _Block_release(v6);
      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if (v25)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        v4 = OUTLINED_FUNCTION_0_207(v28);
LABEL_44:
        *(v4 + 2) = v0;
        v45 = &v4[56 * v1];
        *(v45 + 32) = v5;
        *(v45 + 40) = v6;
        goto LABEL_45;
      }

      v4 = v70;

LABEL_9:
      sub_1E3CB68B0(v4);
      v29 = OUTLINED_FUNCTION_283();
      sub_1E37AE010(v29, v30, 2);
      v4 = v71;
      goto LABEL_47;
    case 3:
      v31 = OUTLINED_FUNCTION_283();
      sub_1E3C27104(v31, v32, 3);
      v33 = [v5 string];
      v34 = sub_1E4205F14();
      v36 = v35;

      v4 = OUTLINED_FUNCTION_4_162(v37, v38, v39, MEMORY[0x1E69E7CC0]);
      v41 = *(v4 + 2);
      v40 = *(v4 + 3);
      v42 = v41 + 1;
      if (v41 < v40 >> 1)
      {
        goto LABEL_11;
      }

      goto LABEL_52;
    default:
      goto LABEL_47;
  }
}

uint64_t sub_1E3CB6544@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E4206124();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  result = sub_1E4206134();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v44 = 124;
  v45 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](result);
  v38 = &v44;

  v8 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, v37, a1, a2, v7);
  v9 = v8;
  v10 = v8[2];
  if (v10 != 3)
  {
    if (v10 == 2)
    {
      v11 = v8[4];
      v12 = v8[5];

      OUTLINED_FUNCTION_9_112();
      OUTLINED_FUNCTION_9_9();

      v13 = sub_1E39F9F40(1uLL, v11, v12);
      MEMORY[0x1E6910920](v13);
      OUTLINED_FUNCTION_9_9();

      if (v9[2] >= 2uLL)
      {

        OUTLINED_FUNCTION_8_113();

        v14 = sub_1E39FA014(1);
        v15 = MEMORY[0x1E6910920](v14);
        v17 = v16;

LABEL_12:
        v34 = 0;
        v36 = 0;
        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_11:
    v11 = 0;
    v12 = 0;
    v15 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v11 = v8[4];
  v12 = v8[5];

  OUTLINED_FUNCTION_9_112();
  OUTLINED_FUNCTION_9_9();

  v18 = sub_1E39F9F40(1uLL, v11, v12);
  MEMORY[0x1E6910920](v18);
  OUTLINED_FUNCTION_9_9();

  if (v9[2] < 2uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_113();
  v20 = v19;
  v22 = v21;

  v44 = v20;
  v45 = v22;
  result = sub_1E4206174();
  if (v9[2] >= 3uLL)
  {
    v15 = result;
    v17 = v23;
    v24 = v9[12];
    v25 = v9[13];
    v27 = v9[14];
    v26 = v9[15];

    MEMORY[0x1E6910920](v24, v25, v27, v26);

    v28 = sub_1E39FA014(1);
    v29 = MEMORY[0x1E6910920](v28);
    v31 = v30;

    v44 = v29;
    v45 = v31;
    v32 = sub_1E3F52F38();
    v33 = *(v32 + 1);
    v42 = *v32;
    v43 = v33;
    v40 = 0;
    v41 = 0xE000000000000000;
    v38 = sub_1E32822E0();
    v39 = v38;
    v37[1] = v38;
    v37[0] = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_25();
    v34 = sub_1E42071F4();
    v36 = v35;

LABEL_13:
    *a3 = v11;
    a3[1] = v12;
    a3[2] = v15;
    a3[3] = v17;
    a3[4] = v34;
    a3[5] = v36;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

int64_t sub_1E3CB68B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3CB6C80(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E3CB6974(void *a1)
{
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (*(v1 + 264) != 1)
  {
    goto LABEL_24;
  }

  v5 = *(v1 + 248);
  v4 = *(v1 + 256);
  if (v5 >> 62)
  {
    result = sub_1E4207384();
    v6 = result;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_24:

    return a1;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = v5 & 0xC000000000000001;
    sub_1E3C270F0(v5, v4, 1);

    v8 = 0;
    v10 = v5;
    v11 = a1;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x1E6911E60](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      if (*v9 == _TtC8VideosUI13TextViewModel && sub_1E3C27528())
      {
        break;
      }

LABEL_21:
      if (v6 == ++v8)
      {
        sub_1E37AE010(v5, v4, 1);
        return v11;
      }
    }

    type metadata accessor for TextLayout();
    if (swift_dynamicCastClass())
    {
      if (a1)
      {
        [a1 copyWithZone_];
        sub_1E4207264();
        swift_unknownObjectRelease();

        if (swift_dynamicCast())
        {
          v11 = v12;
          sub_1E3C37FB4();

LABEL_20:
          v5 = v10;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v11 = 0;
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

char *sub_1E3CB6BF4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3CB6CE8(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3CB6C40(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3CB6CE8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E3CB6C80(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1E3CB6CE8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

char *sub_1E3CB6CE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3CB6E00()
{
  result = qword_1ECF36930;
  if (!qword_1ECF36930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36930);
  }

  return result;
}

uint64_t sub_1E3CB6E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CB6E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3CB6EFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CB6F3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_1E3CB6FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = [v5 attributedSubstringFromRange_];
  v8 = [v7 string];

  v9 = sub_1E4205F14();
  v11 = v10;

  if (!*(a1 + 16))
  {
    sub_1E3CB6BF4();
    v55 = *(*v6 + 2);
    sub_1E3CB6C40(v55);
    v56 = *v6;
    *(v56 + 2) = v55 + 1;
    v57 = &v56[56 * v55];
    *(v57 + 32) = v9;
    *(v57 + 40) = v11;
    OUTLINED_FUNCTION_3_157(v57);
    *(v58 + 80) = v59;
    return;
  }

  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v62 = a1;

  v17 = 0;
  v18 = v6;
  v60 = v6;
  v63 = v9;
  while (v15)
  {
    v19 = v17;
LABEL_11:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v19 << 6);
    v22 = *(*(v62 + 48) + 8 * v21);
    sub_1E328438C(*(v62 + 56) + 32 * v21, v65);
    *&v66 = v22;
    sub_1E329504C(v65, (&v66 + 8));
    v23 = v22;
LABEL_12:
    v69[0] = v66;
    v69[1] = v67;
    v70 = v68;
    v24 = v66;
    if (!v66)
    {

      return;
    }

    v25 = v11;
    sub_1E329504C((v69 + 8), &v66);
    v26 = sub_1E4205F14();
    v28 = v27;
    if (v26 == sub_1E4205F14() && v28 == v29)
    {

LABEL_20:
      sub_1E328438C(&v66, v65);
      sub_1E3CB73F8();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v32 = [v64 fontDescriptor];
      v33 = [v32 symbolicTraits];

      if ((*sub_1E3E932F8() & ~v33) != 0)
      {
        if ((*sub_1E3E93304() & ~v33) != 0)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        v61 = v42;
      }

      else
      {
        v61 = 0;
      }

      v43 = *v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = OUTLINED_FUNCTION_27();
        v43 = sub_1E3CB6CE8(v52, v53, v54, v43);
        *v18 = v43;
      }

      v46 = *(v43 + 2);
      v45 = *(v43 + 3);
      if (v46 >= v45 >> 1)
      {
        *v60 = sub_1E3CB6CE8((v45 > 1), v46 + 1, 1, v43);
      }

      __swift_destroy_boxed_opaque_existential_1(&v66);
      v47 = *v60;
      *(v47 + 2) = v46 + 1;
      v48 = &v47[56 * v46];
      v18 = v60;
      *(v48 + 4) = v63;
      *(v48 + 5) = v25;
      v11 = v25;
      *(v48 + 3) = 0u;
      *(v48 + 4) = 0u;
      v48[80] = v61;
    }

    else
    {
      v31 = sub_1E42079A4();

      if (v31)
      {
        goto LABEL_20;
      }

LABEL_23:
      v34 = *v18;
      v11 = v25;

      v35 = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v34;
      if ((v35 & 1) == 0)
      {
        v49 = OUTLINED_FUNCTION_27();
        v34 = sub_1E3CB6CE8(v49, v50, v51, v34);
        *v18 = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      if (v37 >= v36 >> 1)
      {
        *v18 = sub_1E3CB6CE8((v36 > 1), v37 + 1, 1, v34);
      }

      __swift_destroy_boxed_opaque_existential_1(&v66);
      v38 = *v18;
      *(v38 + 2) = v37 + 1;
      v39 = &v38[56 * v37];
      *(v39 + 32) = v63;
      *(v39 + 40) = v11;
      OUTLINED_FUNCTION_3_157(v39);
      *(v40 + 80) = v41;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      v15 = 0;
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      goto LABEL_12;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1E3CB73F8()
{
  result = qword_1ECF29388;
  if (!qword_1ECF29388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF29388);
  }

  return result;
}

void sub_1E3CB743C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a5;
  sub_1E4201F64();
  OUTLINED_FUNCTION_0_10();
  v61 = v11;
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v59 = v13 - v12;
  sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v55 = v15;
  v56 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_103();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36950);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36958);
  OUTLINED_FUNCTION_0_10();
  v57 = v28;
  v58 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v54 = &v52 - v30;
  v31 = a1;
  v32 = a1;
  v33 = a2;
  sub_1E3CB79A0(v32, a2, a3, a4);
  v34 = [objc_opt_self() sharedInstance];
  if (!v34)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v34;
  v36 = OUTLINED_FUNCTION_28_51();
  v38 = sub_1E3741090(v36, v37, v35);
  v40 = v39;

  if (!v40)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v64 = v38;
  v65 = v40;
  sub_1E3CB9CF8();
  sub_1E32822E0();
  sub_1E4203114();

  sub_1E325F69C(v5, &qword_1ECF36948);
  v64 = v31;
  v65 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36940);
  sub_1E42038F4();
  v41 = v55;
  if (v63)
  {
    sub_1E4201C94();
    v42 = v56;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1E4299720;
    sub_1E4201C54();
    sub_1E4201C94();
    v64 = v43;
    sub_1E3CBA2F4(&qword_1EE289298, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278);
    sub_1E374AD40(&qword_1EE23B5D8, &qword_1ECF35278);
    v42 = v56;
    sub_1E42072E4();
  }

  v44 = v53;
  sub_1E4201374();
  (*(v41 + 8))(v18, v42);
  sub_1E325F69C(v23, &qword_1ECF36950);
  v45 = sub_1E3CB9E60();
  v46 = v54;
  sub_1E4203594();
  sub_1E325F69C(v26, &qword_1ECF36950);
  v47 = v59;
  sub_1E4201724();
  v64 = v44;
  v65 = v45;
  OUTLINED_FUNCTION_1_190();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_208();
  sub_1E3CBA2F4(v48, v49);
  v50 = v58;
  v51 = v62;
  sub_1E4202DF4();
  (*(v61 + 8))(v47, v51);
  (*(v57 + 8))(v46, v50);
}

uint64_t sub_1E3CB79A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36980);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  if (sub_1E39DFFC8())
  {
    v14 = [objc_opt_self() sharedInstance];
    v15 = [v14 multiviewPlayerCount];

    v16 = v15 == 4;
    if (v15 == 4)
    {
      v17 = 0xD000000000000014;
    }

    else
    {
      v17 = 0xD000000000000018;
    }

    if (v16)
    {
      v18 = "rectangle.split.2x1.fill";
    }

    else
    {
      v18 = "Invalid view model type";
    }

    if (sub_1E39DFFC8())
    {
      v19 = 24.0;
    }

    else
    {
      v19 = 20.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36940);
    sub_1E42038F4();
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = a4;

    v21 = sub_1E3B1F324();
    sub_1E3B1F350(v17, v18 | 0x8000000000000000, v21, v31 == 0, sub_1E3CBA918, v20, __src, v19);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_29_60();
    memcpy(v5, __src, 0x68uLL);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FE10);
    OUTLINED_FUNCTION_3_158();
    OUTLINED_FUNCTION_82();
    sub_1E3CBA340(v22, v23, v24, v25);
    OUTLINED_FUNCTION_21_10(&qword_1ECF36978, &qword_1ECF36980);
    OUTLINED_FUNCTION_75();
    return sub_1E4201F44();
  }

  else
  {
    v27 = swift_allocObject();
    v27[2] = a1;
    v27[3] = a2;
    v27[4] = a3;
    v27[5] = a4;
    MEMORY[0x1EEE9AC00](v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A38);
    sub_1E3CBA570();
    sub_1E4203964();
    (*(v11 + 16))(v5, v4, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FE10);
    OUTLINED_FUNCTION_3_158();
    sub_1E3CBA340(v28, &unk_1ECF2FE10, &unk_1E42AF898, v29);
    OUTLINED_FUNCTION_21_10(&qword_1ECF36978, &qword_1ECF36980);
    sub_1E4201F44();
    return (*(v11 + 8))(v4, v30);
  }
}

uint64_t sub_1E3CB7DE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36940);
  sub_1E42038F4();
  if (!v5)
  {
    a3(1);
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    a3(0);
LABEL_5:
    sub_1E4203904();
  }
}

uint64_t sub_1E3CB7EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A98);
  OUTLINED_FUNCTION_0_10();
  v35 = v7;
  v36 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v32 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = sub_1E4201B84();
  LOBYTE(v39) = 0;
  sub_1E3CB8318(v40);
  memcpy(v46, v40, sizeof(v46));
  memcpy(v47, v40, sizeof(v47));
  sub_1E3743538(v46, v38, &qword_1ECF36AA0);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v12, v13);
  memcpy(&v45[7], v46, 0x1F8uLL);
  v14 = v39;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_6_136();
  OUTLINED_FUNCTION_30_8();
  *&v40[0] = a1;
  *(&v40[0] + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36940);
  sub_1E42038F4();
  if (v38[0] == 1)
  {
    v15 = sub_1E4203704();
  }

  else
  {
    v15 = sub_1E42036C4();
  }

  v16 = v15;
  KeyPath = swift_getKeyPath();
  v40[0] = v11;
  LOBYTE(v40[1]) = v14;
  memcpy(&v40[1] + 1, v45, 0x1FFuLL);
  v40[33] = v42;
  v40[34] = v43;
  v40[35] = v44;
  memcpy(&v40[36], v41, 0x70uLL);
  *&v40[43] = KeyPath;
  *(&v40[43] + 1) = v16;
  v38[0] = a1;
  v38[1] = a2;
  sub_1E42038F4();
  if (v39 == 1)
  {
    v18 = *sub_1E3E605D4();
  }

  else
  {
    v18 = [objc_opt_self() whiteColor];
  }

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A58);
  sub_1E3CBA71C();
  v20 = v34;
  sub_1E39B87A4(v19);

  memcpy(v38, v40, sizeof(v38));
  sub_1E325F69C(v38, &qword_1ECF36A58);
  v21 = v3 + *(v33 + 36);
  v22 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v23 + 104))(v21, v22);
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F20) + 36)) = 256;
  (*(v35 + 32))(v3, v20, v36);
  v24 = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A38);
  v26 = v37;
  v27 = (v37 + *(v25 + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v29 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v30 + 104))(v27 + v28, v29);
  *v27 = v24;
  return sub_1E3741EA0(v3, v26, &qword_1ECF36A50);
}

void sub_1E3CB8318(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - v4;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_6_136();
  sub_1E4200D94();
  v56 = v108;
  v57 = v110;
  v58 = v113;
  v59 = v112;
  v131 = 1;
  v129 = v109;
  v127 = v111;
  v6 = [objc_opt_self() sharedInstance];
  [v6 multiviewPlayerCount];

  v7 = sub_1E42037C4();
  v8 = sub_1E42028E4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  OUTLINED_FUNCTION_36_0();
  v9 = sub_1E42029B4();
  sub_1E325F69C(v5, &qword_1ECF335F8);
  KeyPath = swift_getKeyPath();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  sub_1E4200D94();
  v11 = sub_1E4202734();
  sub_1E4200A54();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v107 = 0;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_6_136();
  sub_1E4200D94();
  v52 = v114;
  v53 = v116;
  v54 = v119;
  v55 = v118;
  v106 = 1;
  v104 = v115;
  v102 = v117;
  v20 = [objc_opt_self() sharedInstance];
  if (v20)
  {
    v21 = v20;
    v47 = v11;
    v48 = KeyPath;
    v49 = v9;
    v50 = v7;
    v51 = a1;
    v22 = OUTLINED_FUNCTION_28_51();
    v24 = sub_1E3741090(v22, v23, v21);
    v26 = v25;

    if (v26)
    {
      v95[0] = v24;
      v95[1] = v26;
      sub_1E32822E0();
      v27 = sub_1E4202C44();
      v29 = v28;
      v31 = v30;
      sub_1E42027D4();
      v32 = sub_1E4202C04();
      v34 = v33;
      v36 = v35;
      v46 = v37;

      sub_1E37434B8(v27, v29, v31 & 1);

      LOBYTE(v27) = sub_1E4202734();
      sub_1E4200A54();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v96[136] = v36 & 1;
      v96[128] = 0;
      sub_1E4203DB4();
      OUTLINED_FUNCTION_6_136();
      OUTLINED_FUNCTION_30_8();
      memcpy(&v97[7], v120, 0x70uLL);
      sub_1E4203DA4();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_6_136();
      sub_1E4200D94();
      *&v79[3] = v98;
      v94 = 1;
      v93 = v122;
      v92 = v124;
      v80 = 0;
      v81 = v131;
      *v82 = *v130;
      *&v82[3] = *&v130[3];
      v83 = v56;
      v84 = v129;
      *v85 = *v128;
      *&v85[3] = *&v128[3];
      v86 = v57;
      v87 = v127;
      *&v88[3] = *&v126[3];
      *v88 = *v126;
      v89 = v59;
      v90 = v58;
      v79[0] = v50;
      v79[1] = v48;
      v79[2] = v49;
      *&v79[5] = v99;
      *&v79[7] = v100;
      LOBYTE(v79[9]) = v47;
      v79[10] = v13;
      v79[11] = v15;
      v79[12] = v17;
      v79[13] = v19;
      LOBYTE(v79[14]) = 0;
      v91[0] = &v80;
      v91[1] = v79;
      v68 = 0;
      v69 = v106;
      *v70 = *v105;
      *&v70[3] = *&v105[3];
      v71 = v52;
      v72 = v104;
      *v73 = *v103;
      *&v73[3] = *&v103[3];
      v74 = v53;
      v75 = v102;
      *&v76[3] = *&v101[3];
      *v76 = *v101;
      v77 = v55;
      v78 = v54;
      v91[2] = &v68;
      v67[0] = v32;
      v67[1] = v34;
      LOBYTE(v67[2]) = v36 & 1;
      v67[3] = v46;
      LOBYTE(v67[4]) = v27;
      v67[5] = v39;
      v67[6] = v41;
      v67[7] = v43;
      v67[8] = v45;
      LOBYTE(v67[9]) = 0;
      memcpy(&v67[9] + 1, v97, 0x77uLL);
      v60 = 0;
      v61 = 1;
      v62 = v121;
      v63 = v122;
      v64 = v123;
      v65 = v124;
      v66 = v125;
      v91[3] = v67;
      v91[4] = &v60;
      sub_1E3CB88E8(v91, v51);
      memcpy(v95, v67, sizeof(v95));
      sub_1E325F69C(v95, &qword_1ECF36AA8);
      memcpy(v96, v79, 0x71uLL);
      sub_1E325F69C(v96, &qword_1ECF36AB0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3CB88E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(*a1 + 16);
  *__src = **a1;
  *&__src[16] = v6;
  v7 = *(v4 + 48);
  *&__src[32] = *(v4 + 32);
  *&__src[48] = v7;
  memcpy(__dst, v5, 0x71uLL);
  memcpy(&__src[64], v5, 0x71uLL);
  v8 = a1[2];
  v9 = a1[3];
  v10 = v8[1];
  *&__src[184] = *v8;
  *&__src[200] = v10;
  v11 = v8[3];
  *&__src[216] = v8[2];
  *&__src[232] = v11;
  memcpy(v19, v9, sizeof(v19));
  memcpy(&__src[248], v9, 0xC0uLL);
  v12 = a1[4];
  v13 = v12[1];
  *&__src[440] = *v12;
  *&__src[456] = v13;
  v14 = v12[3];
  *&__src[472] = v12[2];
  *&__src[488] = v14;
  memcpy(a2, __src, 0x1F8uLL);
  sub_1E3743538(__dst, v16, &qword_1ECF36AB0);
  return sub_1E3743538(v19, v16, &qword_1ECF36AA8);
}

uint64_t sub_1E3CB8A04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3CB8A78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3CB8A04();
  *a1 = result;
  return result;
}

uint64_t sub_1E3CB8ACC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t sub_1E3CB8B54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3CB8BC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3CB8B54();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3CB8C20()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t sub_1E3CB8C8C()
{
  v0 = swift_allocObject();
  sub_1E3CB8CDC();
  return v0;
}

uint64_t sub_1E3CB8CDC()
{
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_33_47();
  sub_1E4200634();
  swift_endAccess();
  OUTLINED_FUNCTION_11_3();
  sub_1E4200634();
  swift_endAccess();
  return v0;
}

uint64_t sub_1E3CB8D80()
{
  v1 = OBJC_IVAR____TtC8VideosUI26MultiPlayerHeaderPresenter__distribution;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B80);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI26MultiPlayerHeaderPresenter__isDistributionAllowed;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void *sub_1E3CB8E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36990);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &__src[-v5];
  *v6 = sub_1E4201B84();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36998);
  sub_1E3CB8FA8(v1, &v6[*(v7 + 44)]);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_36_0();
  sub_1E42015C4();
  sub_1E3741EA0(v6, a1, &qword_1ECF36990);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369A0);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3CB8FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v57 = v5;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v55 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v56 = v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369B8);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v64 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v51 - v15;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_6_136();
  sub_1E4200D94();
  v61 = v76;
  v62 = v74[20];
  v59 = v79;
  v60 = v78;
  v89 = 1;
  v88 = v75;
  v87 = v77;
  v17 = a1[3];
  v18 = a1[4];
  v63 = v16;
  v54 = v18;
  sub_1E3CB95C4(v17, v18, v16);
  v20 = *a1;
  v19 = a1[1];
  type metadata accessor for MultiPlayerHeaderPresenter();
  OUTLINED_FUNCTION_8_114();
  sub_1E3CBA2F4(v21, v22);
  sub_1E4200BC4();
  v23 = sub_1E3CB8B54();

  if (v23)
  {
    v51[0] = v20;
    v51[1] = v19;
    sub_1E4200BC4();
    v24 = sub_1E3CB8A04();

    v25 = swift_allocObject();
    v53 = v25;
    v26 = *(a1 + 1);
    *(v25 + 16) = *a1;
    *(v25 + 32) = v26;
    *(v25 + 48) = a1[4];
    v74[0] = v24;
    sub_1E380E99C();
    type metadata accessor for MultiPlayerViewControllerPlayerDistribution(0);

    sub_1E42038E4();
    v54 = v86[0];
    v52 = v86[1];
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    v27 = v56;
    sub_1E4201AF4();
    v29 = v57;
    v28 = v58;
    (*(v57 + 16))(v55, v27, v58);
    sub_1E3CBA2F4(&qword_1ECF29D80, MEMORY[0x1E697F260]);
    v30 = sub_1E4200E14();
    (*(v29 + 8))(v27, v28);
    sub_1E4200BC4();
    v31 = sub_1E3CB8A04();

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_6_136();
    sub_1E4200D94();
    v32 = v81;
    v57 = v82;
    v58 = v80;
    LOBYTE(v29) = v83;
    v55 = v85;
    v56 = v84;
    v70 = 1;
    v69 = v81;
    v68 = v83;
    *&v71[0] = v54;
    *(&v71[0] + 1) = v52;
    *&v71[1] = sub_1E3CBA254;
    *(&v71[1] + 1) = v53;
    v71[4] = v67;
    v71[2] = v65;
    v71[3] = v66;
    *&v71[5] = v30;
    *(&v71[5] + 1) = v31;
    memcpy(v72, v71, 0x60uLL);
    *&v73[0] = v54;
    *(&v73[0] + 1) = v52;
    *&v73[1] = sub_1E3CBA254;
    *(&v73[1] + 1) = v53;
    v73[2] = v65;
    v73[3] = v66;
    v73[4] = v67;
    *&v73[5] = v30;
    *(&v73[5] + 1) = v31;
    sub_1E3743538(v71, v86, &qword_1ECF369D8);
    sub_1E325F69C(v73, &qword_1ECF369D8);
    memcpy(v74, v72, 0x60uLL);
    v74[12] = 0;
    LOBYTE(v74[13]) = 1;
    v74[14] = v58;
    LOBYTE(v74[15]) = v32;
    v74[16] = v57;
    LOBYTE(v74[17]) = v29;
    v74[18] = v56;
    v74[19] = v55;
    nullsub_1(v33, v34);
    memcpy(v86, v74, sizeof(v86));
  }

  else
  {
    sub_1E3CBA24C(v86);
  }

  v35 = v89;
  v36 = v88;
  v37 = v87;
  v38 = v64;
  sub_1E32CEE18(v63, v64);
  memcpy(v72, v86, sizeof(v72));
  *a2 = 0;
  *(a2 + 8) = v35;
  v39 = v61;
  *(a2 + 16) = v62;
  *(a2 + 24) = v36;
  *(a2 + 32) = v39;
  *(a2 + 40) = v37;
  v40 = v59;
  *(a2 + 48) = v60;
  *(a2 + 56) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369C8);
  sub_1E32CEE18(v38, a2 + v41[12]);
  v42 = a2 + v41[16];
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v41[20];
  memcpy(v73, v72, sizeof(v73));
  memcpy((a2 + v43), v72, 0xA0uLL);
  sub_1E3743538(v73, v74, &qword_1ECF369D0);
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v44, v45);
  memcpy(v74, v72, 0xA0uLL);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v46, v47);
  OUTLINED_FUNCTION_90();
  return sub_1E325F69C(v48, v49);
}

uint64_t sub_1E3CB95C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v6 = sub_1E4201F64();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v60 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369E8);
  OUTLINED_FUNCTION_0_10();
  v59 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369F0);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF369F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  if (sub_1E39DFFC8())
  {
    if (sub_1E39DFFC8())
    {
      v24 = 24.0;
    }

    else
    {
      v24 = 20.0;
    }

    v25 = sub_1E3B1F324();
    v26 = OUTLINED_FUNCTION_18();
    sub_1E3B1F350(0xD000000000000010, 0x80000001E4274470, v25, v26 & 1, v61, a2, __src, v24);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_29_60();
    memcpy(v23, __src, 0x68uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FE10);
    OUTLINED_FUNCTION_3_158();
    OUTLINED_FUNCTION_82();
    sub_1E3CBA340(v27, v28, v29, v30);
    v31 = sub_1E3CBA478();
    v66 = v10;
    v67 = v31;
    OUTLINED_FUNCTION_1_190();
    v32 = OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_0_208();
    v35 = sub_1E3CBA2F4(v33, v34);
    v66 = v63;
    v67 = v6;
    v68 = v32;
    v69 = v35;
    OUTLINED_FUNCTION_5_146();
    OUTLINED_FUNCTION_32_14();
    return sub_1E4201F44();
  }

  else
  {

    v56 = v17;
    v57 = a3;
    v37 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37);
    v58 = v6;
    OUTLINED_FUNCTION_90();
    sub_1E3CBA340(v38, v39, v40, v41);
    sub_1E4203964();
    *(v3 + *(v10 + 36)) = 0;
    v42 = sub_1E3CBA478();
    sub_1E4203594();
    sub_1E325F69C(v3, &qword_1ECF369E0);
    sub_1E4201724();
    v66 = v10;
    v67 = v42;
    OUTLINED_FUNCTION_1_190();
    v43 = OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_0_208();
    v46 = sub_1E3CBA2F4(v44, v45);
    v47 = v63;
    sub_1E4202DF4();
    v48 = OUTLINED_FUNCTION_75();
    v49(v48);
    (*(v59 + 8))(v15, v47);
    v50 = v56;
    v51 = v64;
    (*(v56 + 16))(v23, v20, v64);
    swift_storeEnumTagMultiPayload();
    v52 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52);
    OUTLINED_FUNCTION_3_158();
    sub_1E3CBA340(v53, &unk_1ECF2FE10, &unk_1E42AF898, v54);
    v66 = v47;
    v67 = v58;
    v68 = v43;
    v69 = v46;
    OUTLINED_FUNCTION_5_146();
    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_90();
    sub_1E4201F44();
    return (*(v50 + 8))(v20, v51);
  }
}

uint64_t sub_1E3CB9B88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1E38074D0;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

double sub_1E3CB9BA8@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v6 = sub_1E42037C4();
  v7 = sub_1E42028E4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  OUTLINED_FUNCTION_36_0();
  v8 = sub_1E42029B4();
  sub_1E325F69C(v5, &qword_1ECF335F8);
  KeyPath = swift_getKeyPath();
  v10 = sub_1E4203704();
  v11 = swift_getKeyPath();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  sub_1E4200D94();
  *a1 = v6;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v8;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  v12 = v14[1];
  *(a1 + 40) = v14[0];
  *(a1 + 56) = v12;
  result = *&v15;
  *(a1 + 72) = v15;
  return result;
}

unint64_t sub_1E3CB9CF8()
{
  result = qword_1ECF36960;
  if (!qword_1ECF36960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36948);
    sub_1E3CB9D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36960);
  }

  return result;
}

unint64_t sub_1E3CB9D7C()
{
  result = qword_1ECF36968;
  if (!qword_1ECF36968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36970);
    sub_1E3CBA340(&qword_1EE289B58, &unk_1ECF2FE10, &unk_1E42AF898, sub_1E38CA3A4);
    sub_1E374AD40(&qword_1ECF36978, &unk_1ECF36980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36968);
  }

  return result;
}

unint64_t sub_1E3CB9E60()
{
  result = qword_1ECF36988;
  if (!qword_1ECF36988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36950);
    sub_1E3CB9CF8();
    sub_1E3CBA2F4(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36988);
  }

  return result;
}

uint64_t type metadata accessor for MultiPlayerHeaderPresenter()
{
  result = qword_1ECF5E100;
  if (!qword_1ECF5E100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3CB9FB0()
{
  sub_1E3BE3EE0();
  if (v0 <= 0x3F)
  {
    sub_1E3CBA0A0(319, &qword_1EE289F50, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3CBA0A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3CBA0FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CBA13C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1E3CBA194()
{
  result = qword_1ECF369A8;
  if (!qword_1ECF369A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF369A0);
    sub_1E374AD40(&qword_1ECF369B0, &qword_1ECF36990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF369A8);
  }

  return result;
}

uint64_t sub_1E3CBA254()
{
  type metadata accessor for MultiPlayerHeaderPresenter();
  OUTLINED_FUNCTION_8_114();
  sub_1E3CBA2F4(v0, v1);
  sub_1E4200BC4();
  sub_1E3CB8ACC();
}

uint64_t sub_1E3CBA2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3CBA340(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3CBA3C0()
{
  result = qword_1EE289560;
  if (!qword_1EE289560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36A10);
    sub_1E3B1FF74();
    sub_1E374AD40(&qword_1EE288788, &qword_1ECF28998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289560);
  }

  return result;
}

unint64_t sub_1E3CBA478()
{
  result = qword_1ECF36A18;
  if (!qword_1ECF36A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF369E0);
    sub_1E374AD40(&qword_1ECF36A20, &unk_1ECF36A28);
    sub_1E374AD40(&qword_1EE2889E0, &qword_1ECF2C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36A18);
  }

  return result;
}

unint64_t sub_1E3CBA570()
{
  result = qword_1ECF36A40;
  if (!qword_1ECF36A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36A38);
    sub_1E3CBA628();
    sub_1E374AD40(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36A40);
  }

  return result;
}

unint64_t sub_1E3CBA628()
{
  result = qword_1ECF36A48;
  if (!qword_1ECF36A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36A58);
    sub_1E3CBA71C();
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE289DF8, &qword_1ECF28F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36A48);
  }

  return result;
}

unint64_t sub_1E3CBA71C()
{
  result = qword_1ECF36A60;
  if (!qword_1ECF36A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36A58);
    sub_1E3CBA7D4();
    sub_1E374AD40(&qword_1EE288788, &qword_1ECF28998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36A60);
  }

  return result;
}

unint64_t sub_1E3CBA7D4()
{
  result = qword_1ECF36A68;
  if (!qword_1ECF36A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36A70);
    sub_1E3CBA860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36A68);
  }

  return result;
}

unint64_t sub_1E3CBA860()
{
  result = qword_1ECF36A78;
  if (!qword_1ECF36A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36A80);
    sub_1E374AD40(&qword_1ECF36A88, &unk_1ECF36A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36A78);
  }

  return result;
}

uint64_t sub_1E3CBA948(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = a1;
}

uint64_t sub_1E3CBA984(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 24) = a1;
}

uint64_t sub_1E3CBA9C0(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 32) = a1;
}

uint64_t sub_1E3CBAA24(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1E3CBAA80(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1E3CBAAB4()
{
  OUTLINED_FUNCTION_15_0();
  v0 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3CBAAF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3CBAB38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_4();
  v4 = swift_allocObject();
  sub_1E3CBAB80(a1, a2);
  return v4;
}

void *sub_1E3CBAB80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[4] = 0;
  v6 = v2 + 4;
  v2[3] = 0;
  v7 = v2 + 3;
  v2[2] = 0;
  v8 = v2 + 2;
  v2[8] = 0;
  v2[7] = 0;
  v20 = (v2 + 7);
  OUTLINED_FUNCTION_26_0();
  v25 = (*(v9 + 1352))();
  v27 = a2;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F858);
  sub_1E32752B0(&qword_1EE23B5A8, &qword_1ECF2F858);
  sub_1E38D2054(&v27, &v22);

  v10 = v22;
  OUTLINED_FUNCTION_3_0();
  *v8 = v10;

  v22 = (*(*a1 + 1376))(v11);
  v25 = a2;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
  sub_1E32752B0(&qword_1EE23B5B0, &qword_1ECF2B6E8);
  sub_1E38D2054(&v25, v21);

  v12 = v21[0];
  OUTLINED_FUNCTION_3_0();
  *v7 = v12;

  v21[0] = (*(*a1 + 1400))(v13);
  v22 = a2;
  v23 = 0;
  sub_1E38D2054(&v22, &v24);

  v14 = v24;
  OUTLINED_FUNCTION_3_0();
  *v6 = v14;

  *(v3 + 40) = (*(*a1 + 1808))(v15) & 1;
  v3[6] = a2;
  OUTLINED_FUNCTION_3_0();
  v16 = *v20;
  v17 = v3[8];
  *v20 = sub_1E3CBAE8C;
  v3[8] = a1;
  sub_1E37FAED8(v16, v17);
  return v3;
}

uint64_t sub_1E3CBAEC4()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_20_4();
  v0 = swift_allocObject();
  sub_1E3CBAF18();
  return v0;
}

uint64_t sub_1E3CBAF18()
{
  OUTLINED_FUNCTION_48_1();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  OUTLINED_FUNCTION_3_0();
  *(v1 + 16) = v4;
  OUTLINED_FUNCTION_3_0();
  *(v1 + 24) = v3;
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return v1;
}

uint64_t sub_1E3CBAF9C()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 200))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 128);

  return v3();
}

uint64_t sub_1E3CBB00C()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 224))())
  {
    return 4;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_1E3CBB058()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 128))())
  {
    OUTLINED_FUNCTION_34_50();
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_5_147();
    sub_1E3CBCCBC(v1, 255, v2);
    OUTLINED_FUNCTION_33_48();
  }

  else
  {
    sub_1E4207B64();
  }

  OUTLINED_FUNCTION_47_0();
  if ((*(v3 + 152))())
  {
    OUTLINED_FUNCTION_34_50();
    type metadata accessor for TextViewModel();
    OUTLINED_FUNCTION_4_163();
    sub_1E3CBCCBC(v4, 255, v5);
    OUTLINED_FUNCTION_33_48();
  }

  else
  {
    sub_1E4207B64();
  }

  OUTLINED_FUNCTION_47_0();
  (*(v6 + 200))();
  sub_1E4207B64();
  OUTLINED_FUNCTION_47_0();
  v8 = (*(v7 + 224))();
  return MEMORY[0x1E69124B0](v8);
}

BOOL sub_1E3CBB1DC()
{
  OUTLINED_FUNCTION_26_0();
  v1 = (*(v0 + 128))();
  OUTLINED_FUNCTION_111();
  v3 = (*(v2 + 128))();
  if (v1)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_5_147();
    sub_1E3CBCCBC(v4, 255, v5);
    v6 = OUTLINED_FUNCTION_32_54();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_47_0();
  v9 = (*(v7 + 152))(v8);
  OUTLINED_FUNCTION_111();
  v12 = (*(v10 + 152))(v11);
  if (!v9)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!v12)
  {
LABEL_12:

    return 0;
  }

  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_4_163();
  sub_1E3CBCCBC(v13, 255, v14);
  v15 = OUTLINED_FUNCTION_32_54();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  OUTLINED_FUNCTION_47_0();
  v19 = (*(v17 + 200))(v18);
  OUTLINED_FUNCTION_111();
  if ((v19 ^ (*(v20 + 200))(v21)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_47_0();
  v24 = (*(v22 + 224))(v23);
  OUTLINED_FUNCTION_111();
  return v24 == (*(v25 + 224))(v26);
}

uint64_t sub_1E3CBB448()
{

  sub_1E37FAED8(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_1E3CBB480()
{
  sub_1E3CBB448();
  v0 = OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3CBB4AC()
{
  sub_1E4207B44();
  OUTLINED_FUNCTION_8();
  (*(v0 + 304))(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3CBB510@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SportsBannerLogoViewModel();
  result = sub_1E42074D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3CBB5E0()
{
  sub_1E4207B44();
  OUTLINED_FUNCTION_8();
  (*(v0 + 304))(v2);
  return sub_1E4207BA4();
}

uint64_t type metadata accessor for SportsBannerLogoView()
{
  result = qword_1ECF5E240;
  if (!qword_1ECF5E240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3CBB6B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36AB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v14 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36AC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  *v7 = sub_1E4203DA4();
  v7[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36AC8);
  sub_1E3CBB8B0();
  *(v7 + *(v4 + 36)) = 1;
  sub_1E3CBC12C();
  sub_1E4202ED4();
  sub_1E325F6F0(v7, &qword_1ECF36AB8);
  v10 = *(v2 + *(type metadata accessor for SportsBannerLogoView() + 20));
  (*(*v10 + 296))();
  sub_1E3CBC1E4();
  View.accessibilityIdentifier(key:location:)();
  OUTLINED_FUNCTION_55_0();
  sub_1E325F6F0(v11, v12);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36AF0) + 52)) = v10;
}

void sub_1E3CBB8B0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v79 - v5;
  v6 = type metadata accessor for SportsBannerLogoView();
  OUTLINED_FUNCTION_0_10();
  v83 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v87 = (&v79 - v12);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  v16 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79 - v23;
  v88 = v1;
  OUTLINED_FUNCTION_8();
  v26 = (*(v25 + 128))();
  if (v26)
  {
    v89 = v26;
    OUTLINED_FUNCTION_8();
    if (((*(v27 + 200))() & 1) == 0)
    {
      v81 = v15;
      v82 = v3;
      v39 = v88;
      sub_1E3746E10(v21);
      v40 = sub_1E42012B4();
      (*(v18 + 8))(v21, v16);
      v41 = *(v39 + *(v6 + 24));
      if (v40)
      {
        v42 = v81;
        v80 = v24;
        if (v41)
        {
          sub_1E3756C24();
          OUTLINED_FUNCTION_26_0();
          v44 = COERCE_DOUBLE((*(v43 + 1696))());
          v46 = v45;

          if (v46)
          {
            v47 = 0.0;
          }

          else
          {
            v47 = v44;
          }
        }

        else
        {
          v47 = 0.0;
        }

        *v42 = sub_1E4203DA4();
        v42[1] = v60;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36AF8);
        sub_1E3CBC8D0(v89, v42 + *(v61 + 44), *&v47);
        OUTLINED_FUNCTION_97_3(v42, v87);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B20);
        OUTLINED_FUNCTION_17_5();
        OUTLINED_FUNCTION_82();
        sub_1E32752B0(v62, v63);
        OUTLINED_FUNCTION_9_0();
        sub_1E32752B0(v64, &qword_1ECF36B20);
        v53 = v80;
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v65, v66);
        v59 = v82;
      }

      else
      {
        v53 = v24;
        if (v41)
        {
          sub_1E3756C24();
          OUTLINED_FUNCTION_26_0();
          v41 = (*(v54 + 1696))();
          v56 = v55;
          v58 = v57;

          v59 = v82;
          if (v58)
          {
            v41 = 0;
            v56 = 0;
          }
        }

        else
        {
          v56 = 0;
          v59 = v82;
        }

        v67 = sub_1E4201B84();
        v68 = v84;
        sub_1E3CBC988(v88, v84);
        v69 = (*(v83 + 80) + 40) & ~*(v83 + 80);
        v70 = swift_allocObject();
        v70[2] = v41;
        v70[3] = v56;
        v70[4] = v89;
        sub_1E3CBC9EC(v68, v70 + v69);
        v71 = v87;
        *v87 = v67;
        v71[1] = 0;
        *(v71 + 16) = 1;
        v71[3] = sub_1E3CBD200;
        v71[4] = v70;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B20);
        OUTLINED_FUNCTION_17_5();
        sub_1E32752B0(v72, v73);
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_82();
        sub_1E32752B0(v74, v75);
        sub_1E4201F44();
      }

      OUTLINED_FUNCTION_97_3(v53, v92);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B40);
      sub_1E3CBCF78();
      OUTLINED_FUNCTION_9_0();
      sub_1E32752B0(v76, &qword_1ECF36B40);
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v77, v78);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B90);
      v38 = v59;
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_8();
  if ((*(v28 + 152))())
  {
    v29 = sub_1E4201B84();
    v96 = 1;
    v30 = sub_1E4201D44();
    v95 = 1;
    sub_1E3CBCA54(v99);
    memcpy(v97, v99, 0x61uLL);
    memcpy(v98, v99, 0x61uLL);
    sub_1E3743538(v97, &v93, &qword_1ECF36B00);
    sub_1E325F6F0(v98, &qword_1ECF36B00);
    memcpy(&v94[7], v97, 0x61uLL);
    v99[0] = v29;
    v99[1] = 0;
    LOBYTE(v99[2]) = v96;
    v99[3] = v30;
    v99[4] = 0;
    LOBYTE(v99[5]) = v95;
    memcpy(&v99[5] + 1, v94, 0x68uLL);
    memcpy(v92, v99, 0x91uLL);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_53();
    OUTLINED_FUNCTION_30_53();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B40);
    sub_1E3CBCF78();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_55_0();
    sub_1E32752B0(v31, v32);
    sub_1E4201F44();

    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v33, v34);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v35, v36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B90);
    v38 = v3;
LABEL_22:
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v37);
    OUTLINED_FUNCTION_54_0();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B90);
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
}

unint64_t sub_1E3CBC12C()
{
  result = qword_1ECF36AD0;
  if (!qword_1ECF36AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36AB8);
    sub_1E32752B0(&qword_1ECF36AD8, &qword_1ECF36AE0);
    sub_1E38680BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36AD0);
  }

  return result;
}

unint64_t sub_1E3CBC1E4()
{
  result = qword_1ECF36AE8;
  if (!qword_1ECF36AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36AC0);
    sub_1E3CBC12C();
    sub_1E3CBCCBC(&qword_1EE288768, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36AE8);
  }

  return result;
}

void sub_1E3CBC2A4(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1E4200E64();
  if (v4 < a2)
  {
    sub_1E4200E64();
    if (v5 > 0.0)
    {
      sub_1E4200E64();
    }
  }

  *a1 = sub_1E4201D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B50);
  sub_1E3CBC344();
}

void sub_1E3CBC344()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_16();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B58);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-1] - v6;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v15[2]) = 1;
  v15[1] = 0;
  LOBYTE(v15[0]) = 1;
  OUTLINED_FUNCTION_2_161();
  v17[120] = 1;
  memcpy(&v17[7], v18, 0x70uLL);
  *v7 = sub_1E4201B84();
  *(v7 + 1) = 0;
  v7[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B60);
  sub_1E3CBC540();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v15[8]) = 1;
  v15[7] = 0;
  LOBYTE(v15[6]) = 1;
  OUTLINED_FUNCTION_2_161();
  v16 = 1;
  memcpy(v15 + 7, v19, 0x70uLL);
  OUTLINED_FUNCTION_97_3(v7, v4);
  *v1 = 0;
  *(v1 + 8) = 1;
  memcpy((v1 + 9), v17, 0x77uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B68);
  OUTLINED_FUNCTION_97_3(v4, v1 + *(v8 + 48));
  v9 = v1 + *(v8 + 64);
  *v9 = 0;
  *(v9 + 8) = 1;
  memcpy((v9 + 9), v15, 0x77uLL);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v10, v11);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v12, v13);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3CBC540()
{
  OUTLINED_FUNCTION_93();
  v25 = v1;
  OUTLINED_FUNCTION_5_16();
  v28 = v2;
  v30 = v3;
  v4 = type metadata accessor for SportsBannerLogoView();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  v26 = 1;
  v25 = 0;
  LOBYTE(v24) = 1;
  OUTLINED_FUNCTION_2_161();
  v33[120] = 1;
  memcpy(&v33[7], v34, 0x70uLL);
  v27 = 1;
  v12 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  BYTE2(v29) = j__OUTLINED_FUNCTION_18() & 1;
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_16_102(v0, v12 & 1, v35, 0, 1, 0, 1, v28, v29, SBYTE1(v29), SBYTE2(v29));
  sub_1E3CBC988(v25, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v14 = swift_allocObject();
  sub_1E3CBC9EC(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v28, v35, 0, v15 & 1, sub_1E3CBCEC4, v14, v11);
  sub_1E375C31C(v35);

  sub_1E4203DA4();
  sub_1E4200D94();
  v16 = &v11[*(v7 + 44)];
  v17 = v37;
  *v16 = v36;
  *(v16 + 1) = v17;
  *(v16 + 2) = v38;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v31[2]) = 1;
  v31[1] = 0;
  LOBYTE(v31[0]) = 1;
  OUTLINED_FUNCTION_2_161();
  v32 = 1;
  memcpy(v31 + 7, v39, 0x70uLL);
  v18 = v29;
  sub_1E3743538(v11, v29, &qword_1ECF2C1A8);
  v19 = v30;
  *v30 = 0;
  *(v19 + 8) = v27;
  v20 = v19;
  memcpy(v19 + 9, v33, 0x77uLL);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36B70);
  sub_1E3743538(v18, v20 + *(v21 + 48), &qword_1ECF2C1A8);
  v22 = v20 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  memcpy((v22 + 9), v31, 0x77uLL);
  sub_1E325F6F0(v11, &qword_1ECF2C1A8);
  sub_1E325F6F0(v18, &qword_1ECF2C1A8);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3CBC8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<D0>)
{
  v6 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  v11 = j__OUTLINED_FUNCTION_18() & 1;
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_16_102(a3, v6 & 1, v12, 0, 1, 0, 1, v9, v10, SHIBYTE(v10), v11);
  v7 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(a1, v12, 0, v7 & 1, 0, 0, a2);
  return sub_1E375C31C(v12);
}

uint64_t sub_1E3CBC988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBannerLogoView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CBC9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBannerLogoView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CBCA54@<X0>(uint64_t a1@<X8>)
{
  sub_1E3C27024();
  sub_1E32822E0();
  v2 = sub_1E4202C44();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  sub_1E37588FC();
  v10 = sub_1E4202AB4();
  v11 = swift_getKeyPath();
  v6 &= 1u;
  v25 = v6;
  v24 = 0;
  v14[80] = 1;
  __src[0] = v2;
  __src[1] = v4;
  LOBYTE(__src[2]) = v6;
  __src[3] = v8;
  __src[4] = KeyPath;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  __src[7] = v11;
  __src[8] = v10;
  memcpy(&v14[7], __src, 0x48uLL);
  v13[72] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  memcpy((a1 + 9), v14, 0x4FuLL);
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v16[0] = v2;
  v16[1] = v4;
  v17 = v6;
  v18 = v8;
  v19 = KeyPath;
  v20 = 1;
  v21 = 0;
  v22 = v11;
  v23 = v10;
  sub_1E3743538(__src, v13, &qword_1ECF36B48);
  return sub_1E325F6F0(v16, &qword_1ECF36B48);
}

uint64_t sub_1E3CBCBC4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3CBCC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E3B4994C(a1, a4);
  result = type metadata accessor for SportsBannerLogoView();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1E3CBCCBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1E3CBCD70()
{
  sub_1E3CBCE60(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsBannerLogoViewModel();
    sub_1E3CBCE60(319, &qword_1ECF36B08, _s20ScoreboardViewLayoutCMa, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3CBCE60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void (*sub_1E3CBCEC4())(void)
{
  result = OUTLINED_FUNCTION_21_72();
  if (!v0)
  {
    OUTLINED_FUNCTION_8();
    result = (*(v2 + 248))();
    if (result)
    {
      result();
      v3 = OUTLINED_FUNCTION_32_0();

      return sub_1E37FAED8(v3, v4);
    }
  }

  return result;
}

unint64_t sub_1E3CBCF78()
{
  result = qword_1ECF36B98;
  if (!qword_1ECF36B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36B88);
    sub_1E32752B0(&qword_1ECF36B28, &qword_1ECF36B30);
    sub_1E32752B0(&qword_1ECF36B18, &qword_1ECF36B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36B98);
  }

  return result;
}

uint64_t objectdestroyTm_34()
{
  type metadata accessor for SportsBannerLogoView();
  OUTLINED_FUNCTION_144();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3CBD178(uint64_t a1@<X8>)
{
  type metadata accessor for SportsBannerLogoView();
  v3 = *(v1 + 16);

  sub_1E3CBC2A4(a1, v3);
}

uint64_t OUTLINED_FUNCTION_32_54()
{

  return sub_1E4205E84();
}

uint64_t sub_1E3CBD260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E42038E4();
  return v1;
}

uint64_t sub_1E3CBD2BC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, uint64_t a16)
{
  v30 = type metadata accessor for EqualHeightLazyHStack();
  v31 = (a7 + v30[17]);
  v32 = sub_1E3CBD224();
  *v31 = v33;
  v31[1] = v32;
  v34 = a7 + v30[18];
  *v34 = sub_1E3CBD260();
  *(v34 + 8) = v35 & 1;
  *(v34 + 16) = v36;
  *a7 = a1;
  *(a7 + 8) = a8;
  *(a7 + 16) = a2;
  *(a7 + v30[15]) = a3;
  *(a7 + v30[16]) = a4;
  memcpy((a7 + 24), a5, 0x150uLL);
  *(a7 + 360) = a9;
  *(a7 + 368) = a10;
  *(a7 + 376) = a11;
  *(a7 + 384) = a12;
  *(a7 + 392) = a13;
  *(a7 + 400) = a14;
  *(a7 + 408) = a15;
  *(a7 + 416) = a16;

  v37 = sub_1E37E6E1C(a5, v40);
  a6(v37);
  sub_1E375B760(a5);
}

void sub_1E3CBD450()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36BA0);
  OUTLINED_FUNCTION_4_164();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_11_108();
  OUTLINED_FUNCTION_13_10();
  v2 = sub_1E4200A94();
  sub_1E42013A4();
  OUTLINED_FUNCTION_1_191();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_10();
  sub_1E4200AC4();
  sub_1E4202694();
  OUTLINED_FUNCTION_13_113();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_118();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_102();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_30_54();
  swift_getOpaqueTypeMetadata2();
  sub_1E4200AC4();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_34_51();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_30_54();
  OUTLINED_FUNCTION_34_51();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_13_10();
  sub_1E4201F54();
  OUTLINED_FUNCTION_12_22();
  sub_1E4201F54();
  OUTLINED_FUNCTION_13_10();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  OUTLINED_FUNCTION_16_103();
  OUTLINED_FUNCTION_21_17();
  v4 = sub_1E4203A64();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  v6 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_49();
  v8 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v27 = v10;
  v11 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v16);
  sub_1E4203DA4();
  sub_1E4203A54();
  if (*(v0 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BA8);
    sub_1E42038F4();
  }

  swift_getWitnessTable();
  sub_1E4203DA4();
  sub_1E4203464();
  OUTLINED_FUNCTION_15_5();
  v17(WitnessTable, v4);
  v18 = sub_1E4202744();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v18)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  sub_1E42034E4();
  OUTLINED_FUNCTION_15_5();
  v19(v2, v6);
  v20 = sub_1E4202754();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v20)
  {
    sub_1E4202774();
  }

  swift_getWitnessTable();
  sub_1E42034E4();
  OUTLINED_FUNCTION_15_5();
  v21(v27, v8);
  swift_getWitnessTable();
  v22 = *(v13 + 16);
  v22(v25, v24, v11);
  v23 = *(v13 + 8);
  v23(v24, v11);
  v22(v26, v25, v11);
  v23(v25, v11);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CBDBC4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v60 = v4;
  v61 = v3;
  v69 = v5;
  v73[0] = v1;
  v73[1] = v4;
  v6 = v4;
  OUTLINED_FUNCTION_7_152();
  swift_getOpaqueTypeMetadata2();
  v70 = v2;
  v73[0] = v2;
  v73[1] = v6;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_10();
  v65 = sub_1E4200A94();
  v7 = sub_1E42013A4();
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  v73[49] = WitnessTable;
  v73[50] = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_1();
  v8 = swift_getWitnessTable();
  v73[0] = v7;
  v73[1] = v8;
  swift_getOpaqueTypeMetadata2();
  v73[0] = v7;
  v73[1] = v8;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_10();
  v9 = sub_1E4200AC4();
  sub_1E4202694();
  OUTLINED_FUNCTION_13_113();
  v10 = swift_getWitnessTable();
  v73[0] = v9;
  v73[1] = v0;
  v11 = MEMORY[0x1E697CC08];
  v73[2] = v10;
  v73[3] = MEMORY[0x1E697CC08];
  OUTLINED_FUNCTION_14_118();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73[0] = v9;
  v73[1] = v0;
  v73[2] = v10;
  v73[3] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73[0] = OpaqueTypeMetadata2;
  v73[1] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_12_102();
  v14 = swift_getOpaqueTypeMetadata2();
  v73[0] = OpaqueTypeMetadata2;
  v73[1] = OpaqueTypeConformance2;
  v15 = OUTLINED_FUNCTION_30_54();
  v59 = v14;
  v73[0] = v14;
  v67 = v15;
  v73[1] = v15;
  OUTLINED_FUNCTION_6_137();
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1E4200AC4();
  v17 = swift_getWitnessTable();
  v73[0] = v16;
  v73[1] = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v73[0] = v16;
  v73[1] = v17;
  v19 = v61;
  v20 = OUTLINED_FUNCTION_30_54();
  v66 = v18;
  v73[0] = v18;
  v63 = v20;
  v73[1] = v20;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_13_10();
  v64 = sub_1E4201F54();
  v21 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v58 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v57 = v32;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v65 = v34 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v54 - v37;
  if ((*(v19 + 16) & 1) == 0 && (v56 = &v54 - v37, v39 = type metadata accessor for EqualHeightLazyHStack(), v38 = v56, (v40 = *(v19 + *(v39 + 60))) != 0) && (v41 = *(v19 + *(v39 + 64))) != 0)
  {
    type metadata accessor for CollectionViewModel();

    v70 = v41;
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v55 = *(*v42 + 1016);
      v60 = v21;

      v44 = v55(v43);
      v21 = v60;
      v45 = v44;

      if (!v45)
      {
        v45 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1E4298880;
      *(v45 + 32) = v40;
    }

    memcpy(v72, (v19 + 24), sizeof(v72));
    memcpy(&v71[1], (v19 + 24), 0x150uLL);
    v71[0] = v70;
    v71[43] = v45;
    v71[44] = 0;

    sub_1E37E6E1C(v72, v73);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BD0);
    sub_1E3CC0820();
    sub_1E4202ED4();

    memcpy(v73, v71, 0x168uLL);
    sub_1E325F6F0(v73, &qword_1ECF36BD0);
    v53 = v56;
    sub_1E3CC0900(v57, v56);
    v46 = v53;
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v30);
  }

  else
  {
    v46 = v38;
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v30);
    type metadata accessor for EqualHeightLazyHStack();
  }

  sub_1E3CBE380();
  v73[0] = v59;
  v73[1] = v67;
  OUTLINED_FUNCTION_6_137();
  v47 = swift_getOpaqueTypeConformance2();
  v73[0] = v66;
  v73[1] = v63;
  v48 = swift_getOpaqueTypeConformance2();
  v73[47] = v47;
  v73[48] = v48;
  v73[45] = swift_getWitnessTable();
  v73[46] = WitnessTable;
  v70 = swift_getWitnessTable();
  v49 = v58;
  v50 = *(v58 + 16);
  v50(v29, v26, v21);
  v51 = *(v49 + 8);
  v51(v26, v21);
  v52 = v65;
  sub_1E37E93E8(v46, v65, &qword_1ECF36BA0);
  v73[0] = v52;
  v50(v26, v29, v21);
  v73[1] = v26;
  v71[0] = v62;
  v71[1] = v21;
  v72[0] = sub_1E3CC06E0();
  v72[1] = v70;
  sub_1E3910324(v73, 2, v71);
  v51(v29, v21);
  sub_1E325F6F0(v46, &qword_1ECF36BA0);
  v51(v26, v21);
  sub_1E325F6F0(v52, &qword_1ECF36BA0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CBE380()
{
  OUTLINED_FUNCTION_31_1();
  v152 = v0;
  v159 = v1;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v141 = v2;
  OUTLINED_FUNCTION_4_164();
  swift_getOpaqueTypeMetadata2();
  v150 = v3;
  v149 = v4;
  OUTLINED_FUNCTION_11_108();
  OUTLINED_FUNCTION_21_17();
  v5 = sub_1E4200A94();
  OUTLINED_FUNCTION_0_10();
  v144 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = sub_1E42013A4();
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  v178 = WitnessTable;
  v179 = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_1();
  v11 = swift_getWitnessTable();
  v12 = sub_1E4200AC4();
  OUTLINED_FUNCTION_0_10();
  v136 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x1E697D188];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v133 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v137 = v12;
  v132 = v16;
  v156 = OpaqueTypeMetadata2;
  v163 = OUTLINED_FUNCTION_11_108();
  v22 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v140 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = swift_getOpaqueTypeMetadata2();
  v139 = v10;
  v135 = v11;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_10();
  v128 = v27;
  v129 = v28;
  sub_1E4200AC4();
  sub_1E4202694();
  v29 = swift_getWitnessTable();
  v30 = MEMORY[0x1E697CC08];
  v31 = swift_getOpaqueTypeMetadata2();
  v130 = v29;
  v176 = v29;
  v177 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_34_51();
  v127 = OpaqueTypeConformance2;
  v174 = swift_getOpaqueTypeMetadata2();
  v175 = OUTLINED_FUNCTION_11_108();
  v162 = v175;
  OUTLINED_FUNCTION_34_51();
  v33 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_17_96();
  v151 = v22;
  v34 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v148 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = sub_1E4202674();
  MEMORY[0x1EEE9AC00](v38 - 8);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v39);
  v125 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v124 = v40;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_21_17();
  v123 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v122[2] = v42;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v122 - v44;
  v46 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v122[1] = v47;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_31_49();
  v160 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v122[0] = v49;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_19_2();
  v147 = v33;
  v51 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4_6();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v57);
  v155 = v34;
  v157 = v5;
  v58 = v152;
  v154 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v153 = v59;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  v62 = v122 - v61;
  v63 = v58[242];
  v161 = v62;
  if (v63)
  {
    if (v63 == 1)
    {
      v64 = sub_1E42026E4();
      MEMORY[0x1EEE9AC00](v64);
      OUTLINED_FUNCTION_19_86(v122);
      v65 = v134;
      sub_1E4200AD4();
      v66 = v131;
      v67 = v137;
      sub_1E4203194();
      OUTLINED_FUNCTION_15_5();
      v68(v65, v67);
      sub_1E42026E4();
      v69 = v138;
      v70 = v156;
      v71 = v163;
      sub_1E3E3665C(v156, v138);
      OUTLINED_FUNCTION_15_5();
      v72(v66, v70);
      v174 = v70;
      v175 = v71;
      OUTLINED_FUNCTION_3_159();
      v73 = swift_getOpaqueTypeConformance2();
      v74 = v140;
      v51 = *(v140 + 16);
      v75 = v145;
      v76 = v151;
      v51(v145, v69, v151);
      v152 = *(v74 + 8);
      (v152)(v69, v76);
      v51(v69, v75, v76);
      v77 = v160;
      v174 = v160;
      v175 = v162;
      v78 = OUTLINED_FUNCTION_11_108();
      sub_1E37B8E90(v69, v147, v76);
      v166 = v78;
      v167 = v73;
      OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_28_53();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_24_70();
      sub_1E37B8D98(v79, v80);
      OUTLINED_FUNCTION_15_5();
      v81 = OUTLINED_FUNCTION_39_0();
      v82(v81);
      v83 = v152;
      (v152)(v69, v76);
      (v83)(v145, v76);
    }

    else
    {
      v105 = v143;
      sub_1E3CBF588();
      v106 = v144;
      v107 = *(v144 + 16);
      v108 = v142;
      v109 = v157;
      v107(v142, v105, v157);
      v110 = *(v106 + 8);
      v110(v105, v109);
      v107(v105, v108, v109);
      v174 = v160;
      v175 = v162;
      OUTLINED_FUNCTION_3_159();
      v111 = swift_getOpaqueTypeConformance2();
      v70 = v156;
      v174 = v156;
      v175 = v163;
      v112 = OUTLINED_FUNCTION_11_108();
      v172 = v111;
      v173 = v112;
      OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_28_53();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_24_70();
      sub_1E37B8E90(v113, v114, v115);
      v110(v105, v109);
      v116 = v109;
      v77 = v160;
      v110(v108, v116);
    }
  }

  else
  {
    v84 = sub_1E42026E4();
    v145 = v51;
    MEMORY[0x1EEE9AC00](v84);
    OUTLINED_FUNCTION_19_86(v122);
    swift_checkMetadataState();
    sub_1E4200AD4();
    sub_1E4202664();
    sub_1E4202684();
    v85 = v123;
    sub_1E4203254();
    OUTLINED_FUNCTION_15_5();
    v86 = OUTLINED_FUNCTION_168();
    v87(v86);
    OUTLINED_FUNCTION_15_5();
    v88(v45, v85);
    sub_1E4203194();
    OUTLINED_FUNCTION_15_5();
    v89(v17, v46);
    sub_1E42026E4();
    v90 = v160;
    v91 = v162;
    sub_1E3E3665C(v160, v55);
    OUTLINED_FUNCTION_15_5();
    v92(v31, v90);
    v174 = v90;
    v175 = v91;
    OUTLINED_FUNCTION_3_159();
    v93 = swift_getOpaqueTypeConformance2();
    v94 = v145;
    v51 = (v145 + 16);
    v95 = *(v145 + 2);
    v96 = v126;
    v97 = v147;
    v95(v126, v55, v147);
    v98 = *(v94 + 1);
    v94 = (v94 + 8);
    v145 = v94;
    v98(v55, v97);
    v95(v55, v96, v97);
    v70 = v156;
    v174 = v156;
    v175 = v163;
    v99 = OUTLINED_FUNCTION_11_108();
    v100 = v146;
    sub_1E37B8D98(v55, v97);
    v164 = v93;
    v165 = v99;
    OUTLINED_FUNCTION_2_25();
    OUTLINED_FUNCTION_28_53();
    OUTLINED_FUNCTION_24_70();
    sub_1E37B8D98(v101, v102);
    OUTLINED_FUNCTION_15_5();
    v103(v100, v94);
    v104 = v55;
    v77 = v160;
    v98(v104, v97);
    v98(v96, v97);
  }

  v174 = v77;
  v175 = v162;
  OUTLINED_FUNCTION_3_159();
  v117 = swift_getOpaqueTypeConformance2();
  v174 = v70;
  v175 = v163;
  v118 = OUTLINED_FUNCTION_11_108();
  v170 = v117;
  v171 = v118;
  v168 = swift_getWitnessTable();
  v169 = v51;
  v119 = v154;
  swift_getWitnessTable();
  v120 = v153;
  v121 = v161;
  (*(v153 + 16))(v159, v161, v119);
  (*(v120 + 8))(v121, v119);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CBF284()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v5 = v4;
  v31 = v4;
  OUTLINED_FUNCTION_4_164();
  swift_getOpaqueTypeMetadata2();
  v37 = v1;
  v38 = v5;
  swift_getOpaqueTypeConformance2();
  sub_1E4200A94();
  OUTLINED_FUNCTION_0_10();
  v32 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_96();
  v8 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v30 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_1();
  v28 = swift_getWitnessTable();
  v37 = v8;
  v38 = v28;
  v13 = OUTLINED_FUNCTION_39_43();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  OUTLINED_FUNCTION_21_17();
  type metadata accessor for EqualHeightLazyHStack();
  sub_1E3CBF588();
  sub_1E42034D4();
  v23 = OUTLINED_FUNCTION_168();
  v24(v23);
  sub_1E42031A4();
  (*(v30 + 8))(v12, v8);
  v25 = *(v15 + 16);
  v25(v22, v19, v13);
  v26 = *(v15 + 8);
  v26(v19, v13);
  v25(v34, v22, v13);
  v26(v22, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CBF588()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v19 = v4;
  v5 = sub_1E4202084();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_9_3();
  v18 = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  OUTLINED_FUNCTION_7_152();
  swift_getOpaqueTypeMetadata2();
  v23 = v7;
  v24 = v8;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17_96();
  v9 = sub_1E4200A94();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  v20 = v7;
  v21 = v8;
  v22 = v0;
  sub_1E3CBFC48();
  sub_1E4200A84();
  OUTLINED_FUNCTION_1_191();
  swift_getWitnessTable();
  v16 = *(v11 + 16);
  v16(v15, v1, v9);
  v17 = *(v11 + 8);
  v17(v1, v9);
  v16(v19, v15, v9);
  v17(v15, v9);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CBF78C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a3;
  OUTLINED_FUNCTION_7_152();
  swift_getOpaqueTypeMetadata2();
  v28 = a1;
  v29 = a2;
  swift_getOpaqueTypeConformance2();
  v6 = sub_1E4200A94();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  OUTLINED_FUNCTION_17_96();
  type metadata accessor for EqualHeightLazyHStack();
  sub_1E3CBF588();
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  sub_1E42034D4();
  (*(v8 + 8))(v11, v6);
  v26 = WitnessTable;
  v27 = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v20 = *(v14 + 16);
  v21 = OUTLINED_FUNCTION_39_0();
  v20(v21);
  v22 = *(v14 + 8);
  v22(v3, v12);
  (v20)(v25, v18, v12);
  return (v22)(v18, v12);
}

void sub_1E3CBF9F4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v6 = v5;
  v7 = v3;
  v8 = type metadata accessor for EqualHeightLazyHStack();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v33 = v6;
  v34 = v7;
  v29[0] = v6;
  v14 = OUTLINED_FUNCTION_39_43();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - v20;
  v22 = *(v8 + 56);
  v29[1] = v2;
  v29[2] = v22;
  v30 = *(v2 + 16);
  (*(v10 + 16))(v13, v2, v8, v19);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  *(v24 + 24) = v31;
  (*(v10 + 32))(v24 + v23, v13, v8);
  sub_1E40AB6EC(v30);

  v25 = *(v16 + 16);
  v26 = OUTLINED_FUNCTION_39_0();
  v25(v26);
  v27 = *(v16 + 8);
  v27(v0, v14);
  (v25)(v32, v21, v14);
  v28 = OUTLINED_FUNCTION_168();
  (v27)(v28);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CBFC48()
{
  sub_1E4202084();
  sub_1E3CC0994(&qword_1EE2889E8, MEMORY[0x1E697FCB0]);
  return sub_1E4207CD4();
}

void sub_1E3CBFCD4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E3C5FDE0();
    if (v1 <= 0x3F)
    {
      sub_1E3A99200();
      if (v2 <= 0x3F)
      {
        sub_1E3CC01AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_DWORD *sub_1E3CBFDC8(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFE)
  {
    v6 = 2147483646;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 < a2)
  {
    v7 = ((((((((*(*(*(a3 + 16) - 8) + 64) + ((*(v4 + 80) + 424) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
    v8 = a2 - v6;
    v9 = v7 & 0xFFFFFFF8;
    if ((v7 & 0xFFFFFFF8) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8 + 1;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v7);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v7);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v7);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = v13 - 1;
        if (v9)
        {
          v14 = 0;
          LODWORD(v9) = *result;
        }

        v15 = v6 + (v9 | v14);
        break;
      default:
        goto LABEL_26;
    }

    return (v15 + 1);
  }

LABEL_26:
  v16 = (result + 31) & 0xFFFFFFFFFFFFFFF8;
  if (v5 <= 0x7FFFFFFE)
  {
    v17 = *(v16 + 80);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v15 = v17 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  v18 = OUTLINED_FUNCTION_29_61(v16);
  return __swift_getEnumTagSinglePayload(v18, v19, v20);
}

void sub_1E3CBFF48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = ((((((((*(*(*(a4 + 16) - 8) + 64) + ((*(v6 + 80) + 424) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 >= a3)
  {
    v13 = 0;
  }

  else
  {
    v10 = a3 - v8;
    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((*(v6 + 80) + 424) & ~*(v6 + 80)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
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
  }

  if (a2 <= v8)
  {
    switch(v13)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v16 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
          if (v7 > 0x7FFFFFFE)
          {
            v17 = OUTLINED_FUNCTION_29_61(v16);

            __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(v16 + 328) = 0;
            *(v16 + 248) = 0u;
            *(v16 + 232) = 0u;
            *(v16 + 216) = 0u;
            *(v16 + 200) = 0u;
            *(v16 + 184) = 0u;
            *(v16 + 168) = 0u;
            *(v16 + 152) = 0u;
            *(v16 + 136) = 0u;
            *(v16 + 120) = 0u;
            *(v16 + 104) = 0u;
            *(v16 + 88) = 0u;
            *(v16 + 72) = 0u;
            *(v16 + 56) = 0u;
            *(v16 + 40) = 0u;
            *(v16 + 24) = 0u;
            *(v16 + 8) = 0u;
            *(v16 + 312) = 0u;
            *(v16 + 296) = 0u;
            *(v16 + 280) = 0u;
            *(v16 + 264) = 0u;
            *v16 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(v16 + 80) = a2;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((*(v6 + 80) + 424) & ~*(v6 + 80)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v8;
    }

    else
    {
      v14 = 1;
    }

    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((*(v6 + 80) + 424) & ~*(v6 + 80)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v8 + a2;
      bzero(a1, v9);
      *a1 = v15;
    }

    switch(v13)
    {
      case 1:
        a1[v9] = v14;
        break;
      case 2:
        *&a1[v9] = v14;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v9] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_1E3CC01AC()
{
  if (!qword_1EE288678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA40);
    v0 = sub_1E4203924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE288678);
    }
  }
}

uint64_t sub_1E3CC0218(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CC0258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3CC0320@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E4203D84();
  a1[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BB0);
  v7 = v1[43];
  v8 = v7;
  v4 = swift_allocObject();
  memcpy((v4 + 16), v1, 0x160uLL);
  sub_1E37E93E8(&v8, v6, &unk_1ECF2C790);
  sub_1E3CC06A8(v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BB8);
  sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790);
  sub_1E32752B0(&qword_1EE288518, &qword_1ECF36BB8);
  sub_1E3CC0994(&qword_1EE23BA50, type metadata accessor for ViewModel);
  return sub_1E4203B44();
}

void sub_1E3CC04E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  v11 = *v4;
  *v6 = sub_1E4201D44();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BC0);
  memcpy(v15, v2 + 1, 0xC3uLL);
  sub_1E40EA03C(v11, v15, 0, 0, v0);
  v12 = *v2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = OUTLINED_FUNCTION_51_1();
  sub_1E3C6184C(v12, v11, v14 & 1, 0, 0, v7, OpaqueTypeConformance2);
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3CC06E0()
{
  result = qword_1EE2896C0;
  if (!qword_1EE2896C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36BA0);
    sub_1E3CC0764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896C0);
  }

  return result;
}

unint64_t sub_1E3CC0764()
{
  result = qword_1EE2896C8;
  if (!qword_1EE2896C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36BC8);
    sub_1E3CC0820();
    sub_1E3CC0994(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896C8);
  }

  return result;
}

unint64_t sub_1E3CC0820()
{
  result = qword_1EE289BB8;
  if (!qword_1EE289BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36BD0);
    sub_1E3CC08AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BB8);
  }

  return result;
}

unint64_t sub_1E3CC08AC()
{
  result = qword_1EE29F2A0[0];
  if (!qword_1EE29F2A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29F2A0);
  }

  return result;
}

uint64_t sub_1E3CC0900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CC0994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3CC09DC()
{
  type metadata accessor for EqualHeightLazyHStack();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BA8);
  sub_1E42038F4();
  sub_1E3793CAC();
  max<A>(_:_:)();
  return sub_1E4203904();
}

uint64_t type metadata accessor for ShowcaseLockup()
{
  result = qword_1ECF5E2E0;
  if (!qword_1ECF5E2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3CC0B48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShowcaseLockup();
  v28 = *(v4 - 8);
  v27 = *(v28 + 64);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  nullsub_1(v5, v8);
  type metadata accessor for LockupUpdating();
  sub_1E3CC15A8(&qword_1ECF36BE0, type metadata accessor for LockupUpdating);
  v9 = sub_1E4200BC4();
  v10 = sub_1E4200504();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BE8) + 36));
  *v11 = v10;
  v11[1] = v9;
  v12 = *(v2 + 216);
  v25 = *(v2 + 224);
  v26 = v12;
  v24[3] = *(v2 + 232);
  type metadata accessor for BackgroundPlaybackModel(0);
  sub_1E3CC15A8(&qword_1ECF34CF0, type metadata accessor for BackgroundPlaybackModel);
  v13 = *sub_1E4200BC4();
  (*(v13 + 384))();

  v14 = sub_1E3B501F8();

  sub_1E3CC0EE0(v2, v7);
  v15 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v16 = swift_allocObject();
  sub_1E3CC0F44(v7, v16 + v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BF0);
  *(a1 + *(v17 + 52)) = v14;
  v18 = (a1 + *(v17 + 56));
  *v18 = sub_1E3CC0FA8;
  v18[1] = v16;
  v19 = *sub_1E4200BC4();
  v20 = (*(v19 + 392))();

  sub_1E3CC0EE0(v2, v7);
  v21 = swift_allocObject();
  sub_1E3CC0F44(v7, v21 + v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BF8);
  *(a1 + *(result + 52)) = v20;
  v23 = (a1 + *(result + 56));
  *v23 = sub_1E3CC11C0;
  v23[1] = v21;
  return result;
}

uint64_t sub_1E3CC0EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowcaseLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CC0F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowcaseLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CC0FA8()
{
  type metadata accessor for ShowcaseLockup();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return sub_1E4203904();
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for ShowcaseLockup();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1E3264CE0();
  sub_1E3264CE0();

  sub_1E3264CE0();
  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E4200B44();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3CC11C0()
{
  v1 = type metadata accessor for ShowcaseLockup();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = *(v4 + *(result + 56));
  if (v5)
  {
    v6 = *v4;
    if (*(v6 + 24))
    {
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = *(*v5 + 272);

    v9(v7, v8);
  }

  return result;
}

void sub_1E3CC12F8()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3CC1684(319, &qword_1ECF36C00, type metadata accessor for FlowcaseCellLayout, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3CC1514();
      if (v2 <= 0x3F)
      {
        sub_1E3CC15F0(319, &qword_1ECF36C10, type metadata accessor for BackgroundMediaImageModel, &qword_1ECF36C18, type metadata accessor for BackgroundMediaImageModel);
        if (v3 <= 0x3F)
        {
          sub_1E3AB40E8();
          if (v4 <= 0x3F)
          {
            sub_1E3CC15F0(319, &qword_1ECF36C20, type metadata accessor for LockupUpdating, &qword_1ECF36BE0, type metadata accessor for LockupUpdating);
            if (v5 <= 0x3F)
            {
              sub_1E3CC1684(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1E3CC1684(319, &qword_1ECF36C28, type metadata accessor for EpicShowcasePlaybackManager, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
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

void sub_1E3CC1514()
{
  if (!qword_1ECF36C08)
  {
    type metadata accessor for BackgroundPlaybackModel(255);
    sub_1E3CC15A8(&qword_1ECF34CF0, type metadata accessor for BackgroundPlaybackModel);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF36C08);
    }
  }
}

uint64_t sub_1E3CC15A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3CC15F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1E3CC15A8(a4, a5);
    v8 = sub_1E4200BE4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3CC1684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3CC16E8()
{
  result = qword_1ECF36C30;
  if (!qword_1ECF36C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36C30);
  }

  return result;
}

uint64_t sub_1E3CC1788(char a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();

  v3 = objc_opt_self();
  v4 = [v3 isTV];
  v5 = [v3 isMac];
  v6 = *(*v2 + 1712);
  v6();
  OUTLINED_FUNCTION_2_1();
  if (v5)
  {
    v8 = 14;
  }

  else
  {
    v8 = 21;
  }

  if (v4)
  {
    v9 = 22;
  }

  else
  {
    v9 = v8;
  }

  if (v4)
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  (*(v7 + 1696))(v9);

  (v6)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1792))(v10);

  v14 = *(*v2 + 1712);
  v15 = (v14)(v13);
  if (v4)
  {
    sub_1E3755B54();
    v16 = objc_opt_self();
    v17 = [v16 blackColor];
    v18 = [v17 colorWithAlphaComponent_];

    v19 = [v16 whiteColor];
    v20 = [v19 colorWithAlphaComponent_];

    v21 = sub_1E3E5F2F8(v18, v20);
  }

  else
  {
    v21 = *sub_1E3E5FDEC();
  }

  (*(*v15 + 680))(v21);

  [objc_opt_self() isSUIEnabled];
  v22 = v14();
  sub_1E3952C88();
  (*(*v22 + 160))();

  v24 = (v14)(v23);
  if (v4 && (v25 = *(v2 + 98), sub_1E374E8E4(v25, 1)))
  {
    v26 = 0;
  }

  else
  {
    v25 = *(v2 + 98);
    if (sub_1E374E8E4(v25, 2))
    {
      v26 = 0;
    }

    else
    {
      v26 = 3;
    }
  }

  (*(*v24 + 2056))(v26, 0);

  v28 = (v14)(v27);
  if (sub_1E374E8E4(v25, 2))
  {
    v29 = 0;
  }

  else
  {
    v29 = 3;
  }

  (*(*v28 + 2080))(v29, 0);

  (v14)(v30);
  OUTLINED_FUNCTION_2_1();
  (*(v31 + 968))(0);

  (v14)(v32);
  OUTLINED_FUNCTION_2_1();
  (*(v33 + 2008))(1);

  [(v14)(v34) copyWithZone_];

  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for TextLayout();
  if (swift_dynamicCast())
  {
    v35 = v41;
  }

  else
  {
    v35 = sub_1E383BCC0();
  }

  *(v2 + 112) = v35;

  v37 = (v14)(v36);
  sub_1E3C37CBC(v37, 9);

  v39 = (*(*v2 + 1736))(v38);
  sub_1E3C37CBC(v39, 4);

  return v2;
}

id sub_1E3CC1DBC(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(type metadata accessor for ASCListItem());
  v4 = a2;
  return sub_1E3CC2090();
}

id sub_1E3CC1DF0()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_50();
  return sub_1E3CC2090();
}

uint64_t sub_1E3CC1E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3CC3898();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3CC1E98()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3CC3898();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3CC1F6C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3CC37DC();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3CC1FC0()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3CC37DC();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3CC2014()
{
  sub_1E3CC37DC();
  sub_1E4201F04();
  __break(1u);
}

id sub_1E3CC203C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698B3D0]);
  result = sub_1E38A6730(0x497473694C435341, 0xEB000000006D6574);
  qword_1EE28B138 = result;
  return result;
}

id sub_1E3CC2090()
{
  OUTLINED_FUNCTION_50();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState] = 0;
  v2 = &v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_actionPunchout] = v0;
  type metadata accessor for AppInstallerHelper();
  v3 = v0;
  AppInstallerHelper.__allocating_init(punchoutAction:)();
  *&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper] = v4;
  v5 = OUTLINED_FUNCTION_5_8();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, ObjectType);
  sub_1E3CC2174();

  return v8;
}

void sub_1E3CC2174()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup;
  v3 = *&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup];
  if (v3)
  {
    [v3 vui_removeFromSuperView];
  }

  v4 = objc_allocWithZone(MEMORY[0x1E698B3C8]);
  v5 = OUTLINED_FUNCTION_5_8();
  v8 = [v6 v7];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAutomaticallyPresentsProductDetails_];
  [v8 setDelegate_];
  v9 = sub_1E3CC3BC8([*&v0[OBJC_IVAR____TtC8VideosUI11ASCListItem_actionPunchout] channelDetails]);
  if (v9)
  {
    if (*(v9 + 16))
    {
    }

    sub_1E3280A90(0, &qword_1ECF33FE8);
    v10 = sub_1E3B66B3C();
    if (_MergedGlobals_139 != -1)
    {
      swift_once();
    }

    [v8 setGroup_];
    sub_1E3280A90(0, &qword_1ECF33FF0);
    v11 = *MEMORY[0x1E698B360];
    v12 = *MEMORY[0x1E698B348];
    v13 = v10;
    v14 = sub_1E3B66BB0(v13, v11, v12);
    [v8 setRequest_];

    v15 = *&v1[v2];
    *&v1[v2] = v8;
    v16 = v8;

    [v1 vui:v16 addSubview:0 oldView:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3CC23C4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3CC2474(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI11ASCListItem_actionPunchout);
  *(v1 + OBJC_IVAR____TtC8VideosUI11ASCListItem_actionPunchout) = a1;
  v4 = a1;

  type metadata accessor for AppInstallerHelper();
  v5 = v4;
  AppInstallerHelper.__allocating_init(punchoutAction:)();
  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper);
  *(v2 + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper) = v7;

  sub_1E3CC2174();
}

double sub_1E3CC2538()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup);
  if (!v1)
  {
    return 0.0;
  }

  [v1 intrinsicContentSize];
  return result;
}

double sub_1E3CC2574(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup];
  if (!v3)
  {
    return 0.0;
  }

  v5 = v3;
  [v2 bounds];
  [v5 sizeThatFits_];
  [v2 bounds];
  CGRectGetMinX(v13);
  [v2 bounds];
  CGRectGetMinY(v14);
  if ((a1 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_2_162();
    [v9 v10];
  }

  v15.origin.x = OUTLINED_FUNCTION_2_162();
  Width = CGRectGetWidth(v15);
  v16.origin.x = OUTLINED_FUNCTION_2_162();
  CGRectGetHeight(v16);

  return Width;
}

void sub_1E3CC26BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = [objc_opt_self() topMostVisibleViewController];
  if (v4)
  {
    v21 = v4;
    v5 = sub_1E3CC2834();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1E4206474();
      OUTLINED_FUNCTION_20_73(v3, v8, v9, v7);
      swift_unknownObjectRetain();
      v10 = v0;
      v11 = v21;
      v12 = sub_1E4206424();
      v13 = swift_allocObject();
      v14 = MEMORY[0x1E69E85E0];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v6;
      v13[5] = v10;
      v13[6] = v11;
      v15 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v15, v16, v3, v17, v18);

      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v21;
    }
  }
}

id sub_1E3CC2834()
{
  v0 = [objc_opt_self() currentNavigationController];

  return v0;
}

uint64_t sub_1E3CC2874()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3CC2900()
{
  v1 = v0[10];
  v2 = v0[8];

  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_1E3CC39E8;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_209(COERCE_DOUBLE(1107296256));
  v0[4] = v5;
  v0[5] = &block_descriptor_33_0;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  [v2 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v8();
}

void sub_1E3CC2A28(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-v5];
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v8 = Strong, v9 = OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration, OUTLINED_FUNCTION_5_0(), v10 = *&v8[v9], v11 = v10, v8, !v10))
  {
    v11 = [objc_allocWithZone(VUIDocumentUIConfigurationFormSheet) init];
    [v11 setType_];
    [v11 setAnimated_];
  }

  v12 = [objc_opt_self() currentNavigationController];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1E4206474();
    OUTLINED_FUNCTION_20_73(v6, v15, v16, v14);
    v17 = a2;
    v18 = v13;
    v19 = v11;

    v20 = sub_1E4206424();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = a1;
    v23 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v23, v24, v6, v25, v26);
  }
}

uint64_t sub_1E3CC2C08()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  sub_1E4206434();
  v0[15] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v5 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3CC2C94()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  v4 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v0[6] = sub_1E3CC3B44;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E37EB82C;
  v0[5] = &block_descriptor_44;
  v7 = _Block_copy(v0 + 2);

  [v4 presentViewController:v3 fromViewController:v1 WithConfiguration:v2 completion:v7];
  _Block_release(v7);
  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_1E3CC2F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
  v7 = *&v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
  *v6 = a4;
  *(v6 + 1) = a5;
  sub_1E34AF594(v7);
  v8 = sub_1E4205F14();
  v10 = v9;
  if (v8 == sub_1E4205F14() && v10 == v11)
  {

    goto LABEL_11;
  }

  v13 = sub_1E42079A4();

  if (v13)
  {
LABEL_11:
    v16 = *&v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper];
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v16;
    OUTLINED_FUNCTION_50();

    sub_1E3C88C3C();
  }

  v15 = *v6;
  if (*v6)
  {

    v15(0);

    return sub_1E34AF594(v15);
  }

  return result;
}

id sub_1E3CC3164(uint64_t a1, void *a2)
{
  v4 = v2;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState])
  {
    v12 = v45;
    *&v2[OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState] = v45;
    goto LABEL_37;
  }

  v9 = OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration;
  OUTLINED_FUNCTION_5_0();
  v10 = *&v4[v9];
  if (v10)
  {
    v11 = [v10 type] == 7;
  }

  else
  {
    v11 = 0;
  }

  sub_1E4205F14();
  if (v3 != OUTLINED_FUNCTION_19_87() || v9 != v13)
  {
    v15 = OUTLINED_FUNCTION_3_10();

    if (v15)
    {
      goto LABEL_23;
    }

    sub_1E4205F14();
    if (v15 != OUTLINED_FUNCTION_19_87() || v9 != v16)
    {
      v18 = OUTLINED_FUNCTION_3_10();

      if (v18)
      {
        goto LABEL_23;
      }

      sub_1E4205F14();
      if (v18 != OUTLINED_FUNCTION_19_87() || v9 != v19)
      {
        v21 = OUTLINED_FUNCTION_3_10();

        if ((v21 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_23:
  if (*&v4[v8])
  {
    v22 = *MEMORY[0x1E698B2B0];
    v23 = sub_1E4205F14();
    v25 = v24;
    if (v23 == sub_1E4205F14() && v25 == v26)
    {
    }

    else
    {
      v28 = sub_1E42079A4();

      if ((v28 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v29 = sub_1E3CC2834();
    if (v29)
    {
      v30 = v29;
      if (v11)
      {
        v31 = sub_1E4206474();
        OUTLINED_FUNCTION_20_73(v7, v32, v33, v31);
        swift_unknownObjectRetain();
        v34 = v4;
        v35 = sub_1E4206424();
        v36 = swift_allocObject();
        v37 = MEMORY[0x1E69E85E0];
        v36[2] = v35;
        v36[3] = v37;
        v36[4] = v30;
        v36[5] = v34;
        v38 = OUTLINED_FUNCTION_23_7();
        sub_1E376FE58(v38, v39, v7, v40, v41);
      }

      else
      {
        v42 = *&v4[OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper];
        sub_1E3C893A0();
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_36:
  v43 = *&v4[v8];
  *&v4[v8] = v45;

  v12 = v45;
LABEL_37:

  return v12;
}

uint64_t sub_1E3CC3484()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  v0[9] = v2;
  sub_1E4206434();
  v0[10] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC350C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[8];

  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1E3CC38EC;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_209(COERCE_DOUBLE(1107296256));
  v0[4] = v3;
  v0[5] = &block_descriptor_89;
  v4 = _Block_copy(v0 + 2);

  [v1 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
  OUTLINED_FUNCTION_54();

  return v5();
}

void sub_1E3CC3680(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_15_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1E3CC26BC();
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *&v3[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
      if (v5)
      {
        v6 = OUTLINED_FUNCTION_67_0();
        sub_1E34AF604(v6);

        v5(0);
        v7 = OUTLINED_FUNCTION_67_0();
        sub_1E34AF594(v7);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1E3CC372C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E3CC3484();
}

unint64_t sub_1E3CC37B4(uint64_t a1)
{
  result = sub_1E3CC37DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3CC37DC()
{
  result = qword_1ECF36CB8;
  if (!qword_1ECF36CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36CB8);
  }

  return result;
}

unint64_t sub_1E3CC3834()
{
  result = qword_1ECF36CC0;
  if (!qword_1ECF36CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36CC0);
  }

  return result;
}

unint64_t sub_1E3CC3898()
{
  result = qword_1ECF36D60;
  if (!qword_1ECF36D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36D60);
  }

  return result;
}

void sub_1E3CC38EC()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper);

    sub_1E3C893A0();
  }
}

uint64_t sub_1E3CC3950()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E3CC2874();
}

void sub_1E3CC39E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper);

    OUTLINED_FUNCTION_2_4();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;

    v7 = v2;
    sub_1E3C88978(sub_1E3CC3AA0, v6);
  }
}

uint64_t sub_1E3CC3AA8()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E3CC2C08();
}

void sub_1E3CC3B44()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
    if (v2)
    {
      v3 = OUTLINED_FUNCTION_67_0();
      sub_1E34AF604(v3);

      v2(0);
      v4 = OUTLINED_FUNCTION_67_0();
      sub_1E34AF594(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1E3CC3BC8(void *a1)
{
  v2 = [a1 appAdamIDs];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3CC3C3C()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[2] = v2;
  v3 = sub_1E41FF224();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3CC3CE4()
{
  OUTLINED_FUNCTION_24();
  v1 = MEMORY[0x1E69D5918];
  if (v0[2] != 1)
  {
    v1 = MEMORY[0x1E69D5910];
  }

  (*(v0[5] + 104))(v0[6], *v1, v0[4]);
  sub_1E41FEE44();
  v0[7] = sub_1E41FEE24();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1E3CC3DCC;
  v3 = v0[6];
  v4.n128_u64[0] = v0[3];

  return MEMORY[0x1EEE43600](v3, v4);
}

uint64_t sub_1E3CC3DCC()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1E3CC3F64;
  }

  else
  {

    v9 = sub_1E3CC3EF8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3CC3EF8()
{
  OUTLINED_FUNCTION_24();
  v0 = OUTLINED_FUNCTION_48_32();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3CC3F64()
{
  OUTLINED_FUNCTION_24();
  v0 = OUTLINED_FUNCTION_48_32();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3CC3FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v11);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1E3CC4254()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_115();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  v7 = sub_1E324FBDC();
  (*(v5 + 16))(v0, v7, v3);
  v8 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v1, "prewarmJetpack: end", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v0, v3);
  sub_1E4206B94();
  v11 = VUISignpostLogObject();
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_35_11();

  v12 = OUTLINED_FUNCTION_13_8();
  v13(v12);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CC4448()
{
  OUTLINED_FUNCTION_24();
  v0[2] = sub_1E4206434();
  v0[3] = sub_1E4206424();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3CC460C();
}

uint64_t sub_1E3CC44EC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC460C()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFBF4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[6] = sub_1E4206424();
  v5 = sub_1E42063B4();
  v1[7] = v5;
  v1[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3CC46EC, v5, v4);
}

uint64_t sub_1E3CC46EC()
{
  OUTLINED_FUNCTION_134();
  v2 = v0[4];
  sub_1E4206BA4();
  v3 = VUISignpostLogObject();
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_25_69();

  v0[9] = *(v2 + 8);
  v0[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_16_0();
  v5(v4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_56_1(v6);

  return MEMORY[0x1EEE6DA78](v7);
}

uint64_t sub_1E3CC47E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 96) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC4DF8();
}

uint64_t sub_1E3CC48F8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC5168();
}

uint64_t sub_1E3CC4A08()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 112) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC54D8();
}

uint64_t sub_1E3CC4B18()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 120) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC557C();
}

uint64_t sub_1E3CC4C28()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3CC4D3C, v5, v4);
}

uint64_t sub_1E3CC4D3C()
{
  OUTLINED_FUNCTION_134();
  v2 = *(v0 + 72);

  sub_1E4206B94();
  v3 = VUISignpostLogObject();
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_25_69();

  v4 = OUTLINED_FUNCTION_16_0();
  v2(v4);

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E3CC4DF8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for GraphicsUtilities();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E418A7D0();
}

uint64_t sub_1E3CC4E9C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC4FBC()
{
  OUTLINED_FUNCTION_24();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_30(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_56_1(v1);

  return MEMORY[0x1EEE6DA78](v3);
}

uint64_t sub_1E3CC5048()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC5168()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for MediaShowcasingToolbarPrewarm();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E3FC1E70();
}

uint64_t sub_1E3CC520C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC532C()
{
  OUTLINED_FUNCTION_24();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_30(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_56_1(v1);

  return MEMORY[0x1EEE6DA78](v3);
}

uint64_t sub_1E3CC53B8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC54D8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for ContextMenuButtonPrewarm();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E3982D1C();
}

uint64_t sub_1E3CC557C()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for LocalizationPrewarm();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E3A0525C();
}

uint64_t sub_1E3CC5620()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3CC4448();
}

uint64_t block_copy_helper_57_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E3CC56C0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3CC3C3C();
}

void type metadata accessor for WLKFetchConfigurationCachePolicy()
{
  if (!qword_1ECF36D68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF36D68);
    }
  }
}

uint64_t OUTLINED_FUNCTION_56_26()
{

  return sub_1E41FFBE4();
}

void sub_1E3CC57D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23[-1] - v8;
  v10 = *(*a1 + 488);
  v11 = v10(v7);
  if (v11)
  {
    v12 = sub_1E373E010(23, v11);

    if (!v12 || *v12 == _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = (v10)(v11);
  if (v13)
  {
    v14 = sub_1E373E010(60, v13);
  }

  else
  {
    v14 = 0;
  }

  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D78);
  v16 = sub_1E3CC5A20(v12, v14, &v9[*(v15 + 44)]);
  (*(*a2 + 152))(v23, v16);
  if (v24)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v19.n128_u64[0] = v23[2];
    v20.n128_u64[0] = v23[3];
    v17.n128_u64[0] = v23[0];
    v18.n128_u64[0] = v23[1];
    j_nullsub_1(v17, v18, v19, v20);
  }

  OUTLINED_FUNCTION_41_8();

  sub_1E329E454(v9, a3, &qword_1ECF36D70);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D80);
  OUTLINED_FUNCTION_7_3(a3 + *(v21 + 36));
}

uint64_t sub_1E3CC5A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v49 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v47 - v23;
  if (a1)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v24 = sub_1E3C27528();
    if (v24 && ((*(*v24 + 152))(v57), v3 = v57[0], v4 = v57[1], v5 = v57[2], v6 = v57[3], , (v58 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v25, v26, v27, v28);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_41_8();

    (*(v10 + 32))(v16, v12, v9);
    OUTLINED_FUNCTION_7_3(&v16[*(v13 + 36)]);
    sub_1E329E454(v16, v19, &qword_1ECF28CC0);
    v30 = v48;
    sub_1E329E454(v19, v48, &qword_1ECF28CC0);
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v30 = v48;
  }

  __swift_storeEnumTagSinglePayload(v30, v29, 1, v13);
  if (a2)
  {

    v31 = sub_1E4201D44();
    v52 = 1;

    v32 = sub_1E3D5CAB8(v53);
    v33 = (*(*a2 + 392))(v32);
    if (v33 && ((*(*v33 + 152))(v60), v3 = v60[0], v4 = v60[1], v5 = v60[2], v6 = v60[3], , (v61 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v34, v35, v36, v37);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    v38 = OUTLINED_FUNCTION_41_8();
    v59[208] = 0;
    v59[200] = 1;
    memcpy(v55, v53, 0x98uLL);
    LOBYTE(v55[19]) = v38;
    v55[20] = v3;
    v55[21] = v4;
    v55[22] = v5;
    v55[23] = v6;
    LOBYTE(v55[24]) = 0;
    memcpy(&v59[7], v55, 0xC1uLL);
    memcpy(v56, v53, 0x98uLL);
    LOBYTE(v56[19]) = v38;
    v56[20] = v3;
    v56[21] = v4;
    v56[22] = v5;
    v56[23] = v6;
    LOBYTE(v56[24]) = 0;
    sub_1E3294EE4(v55, v54, &qword_1ECF36DB0);
    sub_1E325F6F0(v56, &qword_1ECF36DB0);
    v53[0] = 0;
    LOBYTE(v53[1]) = 1;
    memcpy(&v53[1] + 1, v59, 0xC8uLL);
    v54[0] = 0;
    LOBYTE(v54[1]) = 1;
    memcpy(&v54[1] + 1, v59, 0xC8uLL);
    sub_1E3294EE4(v53, v56, &qword_1ECF36DA8);
    sub_1E325F6F0(v54, &qword_1ECF36DA8);

    memcpy(&v51[7], v53, 0xD1uLL);
    v55[0] = v31;
    v55[1] = 0;
    LOBYTE(v55[2]) = v52;
    memcpy(&v55[2] + 1, v51, 0xD8uLL);
    nullsub_1(v39, v40);
    memcpy(v56, v55, 0xE9uLL);
  }

  else
  {
    sub_1E3CC6170(v56);
  }

  v41 = v49;
  sub_1E32CF9F8(v30, v49);
  memcpy(v53, v56, 0xE9uLL);
  v42 = v50;
  sub_1E32CF9F8(v41, v50);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D98);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = *(v43 + 64);
  memcpy(v54, v53, 0xE9uLL);
  memcpy((v42 + v45), v53, 0xE9uLL);
  sub_1E3294EE4(v54, v55, &qword_1ECF36DA0);
  sub_1E32CFA60(v30);
  memcpy(v55, v53, 0xE9uLL);
  sub_1E325F6F0(v55, &qword_1ECF36DA0);
  return sub_1E32CFA60(v41);
}

uint64_t sub_1E3CC6014(uint64_t a1)
{
  type metadata accessor for SearchHistoryListHeaderLayout();
  sub_1E3CDAC44();
  return a1;
}

unint64_t sub_1E3CC6080()
{
  result = qword_1ECF36D88;
  if (!qword_1ECF36D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36D80);
    sub_1E3CC610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36D88);
  }

  return result;
}

unint64_t sub_1E3CC610C()
{
  result = qword_1ECF36D90;
  if (!qword_1ECF36D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36D90);
  }

  return result;
}

uint64_t sub_1E3CC617C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1E41FDE24();
  swift_allocObject();
  sub_1E41FDE14();
  v6 = sub_1E4204254();
  v8 = v7;
  sub_1E3CC82E8();
  sub_1E41FDE04();
  sub_1E38DCCB0(v6, v8);

  v9 = v16;
  if (v16)
  {
    v10 = v15;

    v11 = 0;
  }

  else
  {
    v10 = v13;

    v11 = 1;
    v9 = v14;
  }

  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v11;
}

uint64_t static AppStoreWrapper.presentOffer(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[48] = a3;
  v4[49] = a4;
  v4[46] = a1;
  v4[47] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DB8);
  v4[50] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v4[51] = v6;
  v4[52] = OUTLINED_FUNCTION_107_1();
  v4[53] = swift_task_alloc();
  v7 = sub_1E42042A4();
  v4[54] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v4[55] = v8;
  v4[56] = swift_task_alloc();
  v9 = sub_1E41FFCB4();
  v4[57] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v4[58] = v10;
  v4[59] = OUTLINED_FUNCTION_107_1();
  v4[60] = swift_task_alloc();
  v11 = sub_1E4204284();
  v4[61] = v11;
  OUTLINED_FUNCTION_8_0(v11);
  v4[62] = v12;
  v4[63] = OUTLINED_FUNCTION_107_1();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v13 = sub_1E4204244();
  v4[67] = v13;
  OUTLINED_FUNCTION_8_0(v13);
  v4[68] = v14;
  v4[69] = swift_task_alloc();
  v15 = sub_1E4204224();
  v4[70] = v15;
  OUTLINED_FUNCTION_8_0(v15);
  v4[71] = v16;
  v4[72] = OUTLINED_FUNCTION_107_1();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  sub_1E4206434();
  v4[75] = sub_1E4206424();
  v18 = sub_1E42063B4();
  v4[76] = v18;
  v4[77] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1E3CC65A8, v18, v17);
}

uint64_t sub_1E3CC65A8()
{
  v2 = v0[47];
  v1 = v0[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v0[41] = sub_1E4205F14();
  v0[42] = v4;
  v5 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  *(inited + 96) = v5;
  *(inited + 72) = v2;
  *(inited + 80) = v1;

  v0[78] = sub_1E4205CB4();
  sub_1E4204234();
  v6 = swift_task_alloc();
  v0[79] = v6;
  *v6 = v0;
  v6[1] = sub_1E3CC6708;
  v7 = v0[74];
  v8 = v0[69];
  v9 = v0[49];

  return MEMORY[0x1EEDD8F60](v7, v8, v9);
}

uint64_t sub_1E3CC6708()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  (*(v2[68] + 8))(v2[69], v2[67]);
  v3 = v2[77];
  v4 = v2[76];
  if (v0)
  {
    v5 = sub_1E3CC7A0C;
  }

  else
  {
    v5 = sub_1E3CC6890;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E3CC6890()
{
  v125 = v0;
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v3 + 16);
  (v5)(v2, *(v0 + 592), v4);
  v7 = *(v3 + 88);
  v6 = v3 + 88;
  v8 = v7(v2, v4);
  if (v8 != *MEMORY[0x1E697BA28])
  {
    v13 = v8;

    goto LABEL_7;
  }

  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  (v5)(v9, *(v0 + 584), v11);
  v12 = *(v10 + 96);
  v6 = v10 + 96;
  v12(v9, v11);
  v13 = sub_1E42042B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 88))(v9, v13);
  if (v15 != *MEMORY[0x1E697BA58])
  {
    v48 = v15;
    if (v15 == *MEMORY[0x1E697BA48])
    {
      OUTLINED_FUNCTION_1_192();

      sub_1E3CC80F8();
      OUTLINED_FUNCTION_206();
      v50 = 2;
LABEL_14:
      *v49 = v50;
LABEL_15:
      swift_willThrow();
      v82 = *(v1 + 8);
      v82(v13, v6);
      v82(v5, v6);
      OUTLINED_FUNCTION_2_163();
      *(v0 + 344) = sub_1E4205F14();
      *(v0 + 352) = v83;
      sub_1E4207414();
      swift_getErrorValue();
      v84 = *(v0 + 304);
      v85 = *(v0 + 312);
      *(v0 + 264) = v85;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
      (*(*(v85 - 8) + 16))(boxed_opaque_existential_1, v84, v85);
      sub_1E329504C((v0 + 240), (v0 + 272));
      swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v13;
      sub_1E377DF14((v0 + 272), v0 + 120);
      sub_1E375D84C(v0 + 120);
      v87 = [objc_opt_self() defaultCenter];
      v88 = OUTLINED_FUNCTION_11_109();

      [v87 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v88];

      swift_willThrow();

      OUTLINED_FUNCTION_8_116();

      __asm { BRAA            X1, X16 }
    }

    v5 = *MEMORY[0x1E697BA50];

    if (v48 == v5)
    {
      OUTLINED_FUNCTION_1_192();
      sub_1E3CC80F8();
      OUTLINED_FUNCTION_206();
      v50 = 1;
      goto LABEL_14;
    }

    (*(v14 + 8))(*(v0 + 576), v13);
LABEL_7:
    OUTLINED_FUNCTION_1_192();
    sub_1E3CC80F8();
    OUTLINED_FUNCTION_206();
    *v47 = 0;
    goto LABEL_15;
  }

  (*(v14 + 96))(*(v0 + 576), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DC8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v0 + 576);
  v18 = *(v0 + 488);
  v19 = *(v0 + 496);
  v20 = *(v0 + 456);
  v21 = *(v0 + 464);
  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(v0 + 528);
    v23 = *(v0 + 520);
    v24 = *(v0 + 480);
    (*(v19 + 32))(v22, *(v0 + 576), *(v0 + 488));
    v25 = sub_1E324FBDC();
    (*(v21 + 16))(v24, v25, v20);
    (*(v19 + 16))(v23, v22, v18);

    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 520);
    v30 = *(v0 + 488);
    v31 = *(v0 + 496);
    v32 = *(v0 + 480);
    v33 = *(v0 + 456);
    v34 = *(v0 + 464);
    if (v28)
    {
      v117 = v27;
      log = *(v0 + 488);
      v36 = *(v0 + 440);
      v35 = *(v0 + 448);
      v110 = *(v0 + 432);
      v119 = *(v0 + 456);
      v122 = *(v0 + 480);
      v38 = *(v0 + 376);
      v37 = *(v0 + 384);
      v39 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_1E3270FC8(v38, v37, v124);
      *(v39 + 12) = 2080;
      sub_1E4204274();
      v40 = sub_1E4204294();
      v42 = v41;
      (*(v36 + 8))(v35, v110);
      v45 = *(v31 + 8);
      v44 = v31 + 8;
      v43 = v45;
      v45(v29, log);
      v46 = sub_1E3270FC8(v40, v42, v124);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_1E323F000, v26, v117, "AppStore: offer %s purchased: %s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v34 + 8))(v122, v119);
    }

    else
    {

      v91 = *(v31 + 8);
      v44 = v31 + 8;
      v43 = v91;
      v91(v29, v30);
      (*(v34 + 8))(v32, v33);
    }

    *(v0 + 656) = v43;
    *(v0 + 648) = v44;
    v92 = [objc_opt_self() defaultCenter];
    v93 = OUTLINED_FUNCTION_11_109();

    [v92 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v93];

    v94 = swift_task_alloc();
    *(v0 + 664) = v94;
    *v94 = v0;
    v94[1] = sub_1E3CC7460;
  }

  else
  {
    v51 = *(v0 + 512);
    v115 = *(v0 + 472);
    v118 = *(v0 + 504);
    loga = *(v0 + 424);
    v52 = *(v0 + 400);
    v53 = *(v0 + 408);
    v120 = *(v0 + 416);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DD0) + 48);
    (*(v19 + 32))(v51, v17, v18);
    (*(v53 + 32))(loga, v17 + v54, v52);
    v55 = sub_1E324FBDC();
    (*(v21 + 16))(v115, v55, v20);
    (*(v19 + 16))(v118, v51, v18);
    v56 = *(v53 + 16);
    v56(v120, loga, v52);

    v57 = sub_1E41FFC94();
    v58 = sub_1E4206814();

    v59 = os_log_type_enabled(v57, v58);
    v61 = *(v0 + 496);
    v60 = *(v0 + 504);
    v63 = *(v0 + 464);
    v62 = *(v0 + 472);
    v121 = *(v0 + 488);
    v123 = *(v0 + 456);
    if (v59)
    {
      v109 = v56;
      v64 = *(v0 + 440);
      v65 = *(v0 + 448);
      v66 = *(v0 + 408);
      v108 = *(v0 + 416);
      v105 = *(v0 + 432);
      v106 = *(v0 + 400);
      v111 = v58;
      logb = v57;
      v68 = *(v0 + 376);
      v67 = *(v0 + 384);
      v116 = *(v0 + 472);
      v69 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v69 = 136315650;
      *(v69 + 4) = sub_1E3270FC8(v68, v67, v124);
      *(v69 + 12) = 2080;
      sub_1E4204274();
      v70 = sub_1E4204294();
      v72 = v71;
      (*(v64 + 8))(v65, v105);
      v75 = *(v61 + 8);
      v74 = v61 + 8;
      v73 = v75;
      v75(v60, v121);
      v76 = sub_1E3270FC8(v70, v72, v124);

      *(v69 + 14) = v76;
      *(v69 + 22) = 2112;
      sub_1E3CC814C();
      OUTLINED_FUNCTION_206();
      v109(v77, v108, v106);
      v78 = _swift_stdlib_bridgeErrorToNSError();
      v81 = *(v66 + 8);
      v79 = v66 + 8;
      v80 = v81;
      v81(v108, v106);
      *(v69 + 24) = v78;
      *v107 = v78;
      _os_log_impl(&dword_1E323F000, logb, v111, "AppStore: offer %s purchased: %s, verification error: %@", v69, 0x20u);
      sub_1E3A66B00(v107);
      OUTLINED_FUNCTION_6_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v63 + 8))(v116, v123);
    }

    else
    {
      v96 = *(v0 + 408);
      v95 = *(v0 + 416);
      v97 = *(v0 + 400);

      v98 = *(v96 + 8);
      v79 = v96 + 8;
      v80 = v98;
      v98(v95, v97);
      v99 = *(v61 + 8);
      v74 = v61 + 8;
      v73 = v99;
      v99(v60, v121);
      (*(v63 + 8))(v62, v123);
    }

    *(v0 + 696) = v80;
    *(v0 + 688) = v73;
    *(v0 + 680) = v79;
    *(v0 + 672) = v74;
    v100 = [objc_opt_self() defaultCenter];
    v101 = OUTLINED_FUNCTION_11_109();

    [v100 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v101];

    v102 = swift_task_alloc();
    *(v0 + 704) = v102;
    *v102 = v0;
    v102[1] = sub_1E3CC7728;
  }

  OUTLINED_FUNCTION_8_116();

  return MEMORY[0x1EEDD8F88]();
}