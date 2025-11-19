BOOL sub_20C506A40()
{
  v1 = sub_20C59E4BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v27 = v0;
  v7 = sub_20C506E58();
  v24 = sub_20C507044(&qword_27C7C5458, sub_20C506E58);
  v25 = v7;
  v8 = sub_20C5A0F1C();
  v10 = v9;
  v11 = *(v2 + 104);
  v23 = *MEMORY[0x277D51F00];
  v22 = v11;
  v11(v6);
  sub_20C507044(&qword_27C7C5468, MEMORY[0x277D51F70]);
  v12 = sub_20C5A0F1C();
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v6, v1);
  if (v8 == v12 && v10 == v14)
  {
  }

  else
  {
    v17 = sub_20C5A0E9C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = sub_20C5A0F0C();
  v19 = v26;
  v22(v26, v23, v1);
  v20 = sub_20C5A0F0C();
  v15(v19, v1);
  return v18 == v20;
}

uint64_t sub_20C506CD4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  v1 = OBJC_IVAR____TtC12SeymourMedia32StreamingKeyFailureEventReporter_contentKeySessionIdentifier;
  v2 = sub_20C59D4CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for StreamingKeyFailureEventReporter()
{
  result = qword_27C7C5430;
  if (!qword_27C7C5430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C506DB0()
{
  result = sub_20C59D4CC();
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

unint64_t sub_20C506E58()
{
  result = qword_27C7C5450;
  if (!qword_27C7C5450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C5450);
  }

  return result;
}

uint64_t sub_20C506EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingKeyFailureAnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C506F08(uint64_t a1)
{
  v2 = type metadata accessor for StreamingKeyFailureAnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C506F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C506FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C507044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C50708C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x5573656E755469;
    if (a1 != 2)
    {
      v13 = 0x6F6F626F69647561;
      v12 = 0xE90000000000006BLL;
    }

    v14 = 0x74736163646F70;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x636973756DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x776F68537674;
    v5 = 0x646956636973756DLL;
    v6 = 0xEA00000000006F65;
    if (a1 != 7)
    {
      v5 = 0x65646956656D6F68;
      v6 = 0xE90000000000006FLL;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x6D654D6563696F76;
    v8 = 0xE90000000000006FLL;
    if (a1 != 4)
    {
      v7 = 0x6569766F6DLL;
      v8 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x5573656E755469)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE90000000000006BLL;
        if (v9 != 0x6F6F626F69647561)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x74736163646F70)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x636973756DLL)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x776F68537674)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (a2 == 7)
    {
      v15 = 0xEA00000000006F65;
      if (v9 != 0x646956636973756DLL)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x65646956656D6F68;
LABEL_47:
    v15 = 0xE90000000000006FLL;
    if (v9 != v16)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = 0x6D654D6563696F76;
    goto LABEL_47;
  }

  v15 = 0xE500000000000000;
  if (v9 != 0x6569766F6DLL)
  {
LABEL_52:
    v17 = sub_20C5A0E9C();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_20C507350()
{
  sub_20C5A049C();
}

id sub_20C5074A8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 <= 5u)
    {
      goto LABEL_14;
    }

    if (v1 == 6)
    {
      goto LABEL_17;
    }

    if (v1 != 7)
    {
      goto LABEL_23;
    }

    result = SMMAudioToolBoxMediaKindMusicVideo();
    if (result)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (v1 > 1)
  {
    goto LABEL_11;
  }

  if (v1)
  {
    goto LABEL_19;
  }

  result = SMMAudioToolBoxMediaKindMusic();
  if (result)
  {
LABEL_26:
    v3 = result;
    v4 = sub_20C5A039C();

    return v4;
  }

  __break(1u);
LABEL_11:
  if (v1 != 2)
  {
    goto LABEL_21;
  }

  result = SMMAudioToolBoxMediaKindiTunesU();
  if (result)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_14:
  if (v1 != 4)
  {
    goto LABEL_25;
  }

  result = SMMAudioToolBoxMediaKindVoiceMemo();
  if (result)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_17:
  result = SMMAudioToolBoxMediaKindTVShow();
  if (result)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_19:
  result = SMMAudioToolBoxMediaKindPodcast();
  if (result)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_21:
  result = SMMAudioToolBoxMediaKindAudiobook();
  if (result)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_23:
  result = SMMAudioToolBoxMediaKindHomeVideo();
  if (result)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_25:
  result = SMMAudioToolBoxMediaKindMovie();
  if (result)
  {
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_20C5075E8()
{
  sub_20C5A0FBC();
  sub_20C507350();
  return sub_20C5A0FFC();
}

uint64_t sub_20C507638()
{
  sub_20C5A0FBC();
  sub_20C507350();
  return sub_20C5A0FFC();
}

uint64_t sub_20C50767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C507AD0();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA18](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t sub_20C507700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C507AD0();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA20](a1, a2, a3, a4, a5, v10, v11);
}

SeymourMedia::PlayerItemMediaKind_optional __swiftcall PlayerItemMediaKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C5A0D9C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlayerItemMediaKind.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x636973756DLL;
    v7 = 0x5573656E755469;
    if (v1 != 2)
    {
      v7 = 0x6F6F626F69647561;
    }

    if (*v0)
    {
      v6 = 0x74736163646F70;
    }

    if (*v0 <= 1u)
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
    v2 = 0x776F68537674;
    v3 = 0x646956636973756DLL;
    if (v1 != 7)
    {
      v3 = 0x65646956656D6F68;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6D654D6563696F76;
    if (v1 != 4)
    {
      v4 = 0x6569766F6DLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_20C5078F8()
{
  result = qword_27C7C5480;
  if (!qword_27C7C5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5480);
  }

  return result;
}

uint64_t sub_20C507958@<X0>(uint64_t *a1@<X8>)
{
  result = PlayerItemMediaKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PlayerItemMediaKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlayerItemMediaKind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C507AD0()
{
  result = qword_27C7C5488;
  if (!qword_27C7C5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5488);
  }

  return result;
}

unint64_t sub_20C507B24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AD8);
    v2 = sub_20C5A0D6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_20C483FD8(*(a1 + 48) + 40 * v12, v33);
        sub_20C479AA8(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_20C483FD8(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_20C477B50(v30, &unk_27C7C5590);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_20C479AA8(v31 + 8, v23);
        sub_20C477B50(v30, &unk_27C7C5590);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_20C4820C8(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_20C4949E4(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_20C477B50(&v24, &qword_27C7C55A0);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20C507E50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5588);
    v1 = sub_20C5A0D6C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
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
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    sub_20C483FD8(*(a1 + 48) + 40 * v11, v31);
    sub_20C479AA8(*(a1 + 56) + 32 * v11, v32 + 8);
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v28[0] = v31[0];
    v28[1] = v31[1];
    sub_20C483FD8(v28, v25);
    type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v24;
    sub_20C479AA8(v29 + 8, v26 + 8);
    sub_20C477B50(v28, &unk_27C7C5590);
    sub_20C4947E4((v26 + 8), v23);
    v13 = v12;
    sub_20C4947E4(v23, v27);
    sub_20C4947E4(v27, v26);
    sub_20C5A039C();
    sub_20C5A0FBC();
    sub_20C5A049C();
    v14 = sub_20C5A0FFC();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_20C4947E4(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  sub_20C477B50(v28, &unk_27C7C5590);

  return 0;
}

uint64_t sub_20C50817C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v33 = *(*(a1 + 56) + 8 * v11);

    sub_20C50C4BC(&v31);
    if (v1)
    {
      break;
    }

    v6 &= v6 - 1;

    v15 = v32;
    if (v32 >> 60 == 15)
    {

      result = sub_20C4BFD68(v31, v15);
      v1 = 0;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v29 = v31;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        sub_20C4B9214(v16 + 1, 1);
        v2 = v34;
      }

      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        while (++v20 != v23 || (v22 & 1) == 0)
        {
          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_25;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = 16 * v21;
      v27 = (*(v2 + 48) + v26);
      *v27 = v14;
      v27[1] = v13;
      v28 = (*(v2 + 56) + v26);
      *v28 = v29;
      v28[1] = v15;
      ++*(v2 + 16);
      v1 = 0;
      if (!v6)
      {
LABEL_7:
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v10 >= v7)
          {

            return v2;
          }

          v6 = *(v3 + 8 * v10);
          ++v9;
          if (v6)
          {
            v9 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }
  }

  return v2;
}

uint64_t sub_20C508428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C50C910(a1, a2, a3);
  }

  return result;
}

uint64_t sub_20C5084A4()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C59FE7C();
    v5 = sub_20C5A01BC();
    v6 = sub_20C5A08AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C472000, v5, v6, "PlaybackSync: Handling server-side catchup request", v7, 2u);
      MEMORY[0x20F2FFF90](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    sub_20C50A3EC();
  }

  return result;
}

uint64_t sub_20C50861C(uint64_t a1)
{
  v2 = sub_20C59D4CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v24 = v7;
    v25 = v6;
    sub_20C59FE7C();
    (*(v3 + 16))(v5, a1, v2);
    v12 = sub_20C5A01BC();
    v13 = sub_20C5A08AC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v14 = 136315138;
      sub_20C50EAB4(&unk_27C7C5520, MEMORY[0x277CC95F0]);
      v15 = sub_20C5A0E6C();
      v23 = a1;
      v17 = v16;
      (*(v3 + 8))(v5, v2);
      v18 = sub_20C479640(v15, v17, &v26);
      a1 = v23;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20C472000, v12, v13, "PlaybackSync: Cleaning up after participant left: %s", v14, 0xCu);
      v19 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x20F2FFF90](v19, -1, -1);
      MEMORY[0x20F2FFF90](v14, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v20 = (*(v24 + 8))(v9, v25);
    MEMORY[0x28223BE20](v20);
    *(&v21 - 2) = v11;
    *(&v21 - 1) = a1;

    sub_20C59F34C();
  }

  return result;
}

void sub_20C508988()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v55[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v55[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55[-v8];
  v10 = sub_20C59D1CC();
  if (!v10)
  {
    return;
  }

  v11 = sub_20C507E50(v10);

  if (!v11)
  {
    return;
  }

  if (!*(v11 + 16) || (v12 = sub_20C4969C0(*MEMORY[0x277CE6040]), (v13 & 1) == 0) || (sub_20C479AA8(*(v11 + 56) + 32 * v12, v61), type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand(0), (swift_dynamicCast() & 1) == 0))
  {

    return;
  }

  v60 = v65;
  if (*(v11 + 16) && (v14 = sub_20C4969C0(*MEMORY[0x277CE6048]), (v15 & 1) != 0))
  {
    sub_20C479AA8(*(v11 + 56) + 32 * v14, v61);
    v16 = sub_20C59D4CC();
    v17 = swift_dynamicCast();
    v18 = *(v16 - 8);
    (*(v18 + 56))(v9, v17 ^ 1u, 1, v16);
    if ((*(v18 + 48))(v9, 1, v16) != 1)
    {
      v59 = sub_20C59D48C();
      v20 = v19;
      (*(v18 + 8))(v9, v16);
      v21 = v20;
      goto LABEL_14;
    }
  }

  else
  {
    v22 = sub_20C59D4CC();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  }

  sub_20C477B50(v9, &qword_27C7C4588);
  v59 = 0;
  v21 = 0;
LABEL_14:
  if (*(v11 + 16) && (v23 = sub_20C4969C0(*MEMORY[0x277CE6050]), (v24 & 1) != 0) && (sub_20C479AA8(*(v11 + 56) + 32 * v23, v61), sub_20C50EAFC(), (swift_dynamicCast() & 1) != 0))
  {
    v25 = v65;
    [v65 floatValue];
    v27 = v26;
  }

  else
  {
    v27 = 0.0;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = *(Strong + 168);

    v30 = (v27 == 1.0) & ~v29;
  }

  else
  {
    v30 = 0;
  }

  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (v31)
  {
    *(v31 + 168) = 1;
  }

  if (v30)
  {

    sub_20C59FE7C();
    v32 = sub_20C5A01BC();
    v33 = sub_20C5A08AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20C472000, v32, v33, "PlaybackSync: Ignoring playback banner because it's the first time we're playing", v34, 2u);
      MEMORY[0x20F2FFF90](v34, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    sub_20C59FE7C();

    v35 = sub_20C5A01BC();
    v36 = sub_20C5A08AC();

    v37 = os_log_type_enabled(v35, v36);
    v58 = v21;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64[0] = v57;
      *v38 = 136315394;
      type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey(0);
      v56 = v36;
      sub_20C50EAB4(&unk_27C7C5570, type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey);
      v39 = sub_20C5A02CC();
      v41 = v40;

      v42 = sub_20C479640(v39, v41, v64);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = v59;
      v61[0] = v59;
      v61[1] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44F0);
      v44 = sub_20C5A0A3C();
      v46 = sub_20C479640(v44, v45, v64);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_20C472000, v35, v56, "PlaybackSync: Presenting playback banner for userinfo: %s, participantIdentifier: %s", v38, 0x16u);
      v47 = v57;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v47, -1, -1);
      MEMORY[0x20F2FFF90](v38, -1, -1);

      (*(v1 + 8))(v6, v0);
    }

    else
    {

      (*(v1 + 8))(v6, v0);
      v43 = v59;
    }

    swift_beginAccess();
    v48 = swift_weakLoadStrong();
    if (v48)
    {
      v49 = v48;
      swift_beginAccess();
      sub_20C477580(v49 + 64, v61);

      v50 = v62;
      v51 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v52 = v60;
      v53 = sub_20C5A039C();
      (*(v51 + 16))(v43, v58, v53, v54, v50, v51, v27);

      __swift_destroy_boxed_opaque_existential_1Tm(v61);
    }

    else
    {
    }
  }
}

uint64_t sub_20C509140(_BYTE *a1, uint64_t a2)
{
  v82[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20C5A03FC();
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C59D4CC();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20C5A01CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v78 = &v67[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v67[-v14];
  sub_20C59FE7C();

  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v79[0] = v76;
    *v18 = 136315138;
    type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
    LODWORD(v71) = v17;
    sub_20C50EAB4(&qword_27C7C4358, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
    v19 = sub_20C5A02CC();
    v21 = a1;
    v22 = a2;
    v23 = v9;
    v24 = v8;
    v25 = sub_20C479640(v19, v20, v79);

    *(v18 + 4) = v25;
    v8 = v24;
    v9 = v23;
    a2 = v22;
    a1 = v21;
    _os_log_impl(&dword_20C472000, v16, v71, "PlaybackSync: Broadcasting participant state %s", v18, 0xCu);
    v26 = v76;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    MEMORY[0x20F2FFF90](v26, -1, -1);
    MEMORY[0x20F2FFF90](v18, -1, -1);
  }

  v27 = v9[1];
  v27(v15, v8);
  v28 = objc_opt_self();
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  sub_20C50EAB4(&qword_27C7C4358, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  v29 = sub_20C5A02AC();
  v79[0] = 0;
  v30 = [v28 dataWithJSONObject:v29 options:0 error:v79];

  v31 = v79[0];
  if (v30)
  {
    v71 = v27;
    v77 = a1;
    v32 = sub_20C59D3CC();
    v34 = v33;

    v35 = v78;
    sub_20C59FE7C();

    sub_20C4BFD7C(v32, v34);
    v36 = sub_20C5A01BC();
    v37 = sub_20C5A08AC();

    sub_20C4A7C7C(v32, v34);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v68 = v37;
      v39 = v38;
      v69 = swift_slowAlloc();
      v82[0] = v69;
      *v39 = 136315394;
      swift_beginAccess();
      sub_20C477580(a2 + 64, v79);
      v70 = v8;
      v76 = v9;
      v41 = v80;
      v40 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v42 = v72;
      (*(v40 + 128))(v41, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      sub_20C50EAB4(&unk_27C7C5520, MEMORY[0x277CC95F0]);
      v43 = v74;
      v44 = sub_20C5A0E6C();
      v46 = v45;
      (*(v73 + 8))(v42, v43);
      v47 = sub_20C479640(v44, v46, v82);

      *(v39 + 4) = v47;
      *(v39 + 12) = 2080;
      sub_20C5A03EC();
      v48 = sub_20C5A03BC();
      if (v49)
      {
        v50 = v49;
      }

      else
      {
        v48 = 0x64696C61766E693CLL;
        v50 = 0xE90000000000003ELL;
      }

      v51 = sub_20C479640(v48, v50, v82);

      *(v39 + 14) = v51;
      _os_log_impl(&dword_20C472000, v36, v68, "PlaybackSync: Participant state value for group session %s: %s", v39, 0x16u);
      v52 = v69;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v52, -1, -1);
      MEMORY[0x20F2FFF90](v39, -1, -1);

      v71(v78, v70);
    }

    else
    {

      v71(v35, v8);
    }

    *(a2 + 16) = v77;

    sub_20C4BFD7C(v32, v34);
    sub_20C50CE1C(0, v32, v34, 0);
    sub_20C4A7C7C(v32, v34);
    return sub_20C4A7C7C(v32, v34);
  }

  else
  {
    v76 = v9;
    v53 = v31;
    v54 = sub_20C59D29C();

    swift_willThrow();
    v55 = v77;
    sub_20C59FE7C();
    v56 = v54;
    v57 = sub_20C5A01BC();
    v58 = sub_20C5A089C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v8;
      v61 = v60;
      v79[0] = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v62 = sub_20C5A0EEC();
      v64 = v27;
      v65 = sub_20C479640(v62, v63, v79);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_20C472000, v57, v58, "PlaybackSync: shareLocalParticipantState Error:%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x20F2FFF90](v61, -1, -1);
      MEMORY[0x20F2FFF90](v59, -1, -1);

      return v64(v77, v70);
    }

    else
    {

      return (v27)(v55, v8);
    }
  }
}

uint64_t sub_20C509A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v77 = a3;
  v91[1] = *MEMORY[0x277D85DE8];
  v7 = sub_20C5A03FC();
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_20C59D4CC();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v10 = &v71[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_20C5A01CC();
  v11 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v75 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v83 = &v71[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v71[-v16];
  sub_20C59FE7C();

  v18 = sub_20C5A01BC();
  v19 = sub_20C5A08AC();

  v20 = os_log_type_enabled(v18, v19);
  v80 = v4;
  v85 = v11;
  v79 = a1;
  v84 = a2;
  v73 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v87[0] = v76;
    *v21 = 136315138;
    swift_beginAccess();
    sub_20C477580(a1 + 64, v88);
    v23 = v89;
    v22 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    (*(v22 + 128))(v23, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    sub_20C50EAB4(&unk_27C7C5520, MEMORY[0x277CC95F0]);
    v24 = v82;
    v25 = sub_20C5A0E6C();
    v27 = v26;
    (*(v81 + 8))(v10, v24);
    v28 = sub_20C479640(v25, v27, v87);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_20C472000, v18, v19, "PlaybackSync: Broadcasting transport control state for group session %s", v21, 0xCu);
    v29 = v76;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v21, -1, -1);

    v30 = *(v85 + 8);
  }

  else
  {

    v30 = *(v11 + 8);
  }

  v30(v17, v86);
  v31 = objc_opt_self();
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  sub_20C50EAB4(&qword_27C7C4348, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  v32 = sub_20C5A02AC();
  v88[0] = 0;
  v33 = [v31 dataWithJSONObject:v32 options:0 error:v88];

  v34 = v88[0];
  if (v33)
  {
    v35 = sub_20C59D3CC();
    v37 = v36;

    v38 = v83;
    sub_20C59FE7C();
    v39 = v79;

    sub_20C4BFD7C(v35, v37);
    v40 = sub_20C5A01BC();
    v41 = sub_20C5A08AC();

    sub_20C4A7C7C(v35, v37);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v91[0] = v75;
      *v42 = 136315394;
      swift_beginAccess();
      sub_20C477580(v39 + 64, v88);
      v76 = v30;
      v72 = v41;
      v44 = v89;
      v43 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      v45 = v73;
      (*(v43 + 128))(v44, v43);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      sub_20C50EAB4(&unk_27C7C5520, MEMORY[0x277CC95F0]);
      v46 = v82;
      v47 = sub_20C5A0E6C();
      v49 = v48;
      (*(v81 + 8))(v45, v46);
      v50 = sub_20C479640(v47, v49, v91);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      sub_20C5A03EC();
      v51 = sub_20C5A03BC();
      if (v52)
      {
        v53 = v52;
      }

      else
      {
        v51 = 0x64696C61766E693CLL;
        v53 = 0xE90000000000003ELL;
      }

      v54 = sub_20C479640(v51, v53, v91);

      *(v42 + 14) = v54;
      _os_log_impl(&dword_20C472000, v40, v72, "PlaybackSync: Transport control state value for group session %s: %s", v42, 0x16u);
      v55 = v75;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v55, -1, -1);
      MEMORY[0x20F2FFF90](v42, -1, -1);

      v76(v83, v86);
    }

    else
    {

      v30(v38, v86);
    }

    swift_beginAccess();
    v67 = v78;

    v68 = v84;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = *(v39 + 24);
    *(v39 + 24) = 0x8000000000000000;
    sub_20C493DDC(v68, v77, v67, isUniquelyReferenced_nonNull_native);

    *(v39 + 24) = v91[0];
    swift_endAccess();
    sub_20C4BFD7C(v35, v37);
    sub_20C50CE1C(1, v35, v37, 0);
    sub_20C4A7C7C(v35, v37);
    return sub_20C4A7C7C(v35, v37);
  }

  else
  {
    v76 = v30;
    v56 = v34;
    v57 = sub_20C59D29C();

    swift_willThrow();
    v58 = v75;
    sub_20C59FE7C();
    v59 = v57;
    v60 = sub_20C5A01BC();
    v61 = sub_20C5A089C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v88[0] = v63;
      *v62 = 136315138;
      swift_getErrorValue();
      v64 = sub_20C5A0EEC();
      v66 = sub_20C479640(v64, v65, v88);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_20C472000, v60, v61, "PlaybackSync: shareTransportControlState Error:%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x20F2FFF90](v63, -1, -1);
      MEMORY[0x20F2FFF90](v62, -1, -1);
    }

    else
    {
    }

    return (v76)(v58, v86);
  }
}

uint64_t sub_20C50A3EC()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE7C();
  v4 = sub_20C5A01BC();
  v5 = sub_20C5A08AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20C472000, v4, v5, "PlaybackSync: Catchup needed. Broadcasting catchup request.", v6, 2u);
    MEMORY[0x20F2FFF90](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_20C50CE1C(2, 0, 0xC000000000000000, 0);
}

uint64_t sub_20C50A544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *MEMORY[0x277D85DE8];
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  sub_20C59FE7C();
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43[0] = v9;
    v19 = v7;
    v20 = v12;
    v21 = v6;
    v22 = a1;
    v23 = a2;
    v24 = v3;
    v25 = v18;
    *v18 = 0;
    _os_log_impl(&dword_20C472000, v16, v17, "PlaybackSync: Receiving ParticipantState", v18, 2u);
    v26 = v25;
    v3 = v24;
    a2 = v23;
    a1 = v22;
    v6 = v21;
    v12 = v20;
    v7 = v19;
    v9 = v43[0];
    MEMORY[0x20F2FFF90](v26, -1, -1);
  }

  v27 = *(v7 + 8);
  v27(v15, v6);
  v28 = objc_opt_self();
  v29 = sub_20C59D3BC();
  v44 = 0;
  v30 = [v28 JSONObjectWithData:v29 options:0 error:&v44];

  v31 = v44;
  if (v30)
  {
    sub_20C5A0ABC();
    swift_unknownObjectRelease();
    sub_20C4947E4(v45, v46);
    sub_20C479AA8(v46, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5560);
    v32 = swift_dynamicCast();
    if (v32)
    {
      v33 = v44;
      MEMORY[0x28223BE20](v32);
      v43[-4] = v3;
      v43[-3] = v33;
      v43[-2] = a1;
      v43[-1] = a2;
      sub_20C59F34C();
    }

    else
    {
      sub_20C59FE7C();
      v40 = sub_20C5A01BC();
      v41 = sub_20C5A089C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_20C472000, v40, v41, "PlaybackSync: Could not cast participant state to dictionary.", v42, 2u);
        MEMORY[0x20F2FFF90](v42, -1, -1);
      }

      v27(v12, v6);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    v34 = v31;
    v35 = sub_20C59D29C();

    swift_willThrow();
    sub_20C59FE7C();
    v36 = sub_20C5A01BC();
    v37 = sub_20C5A089C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20C472000, v36, v37, "PlaybackSync: Could not deserialize participant state.", v38, 2u);
      MEMORY[0x20F2FFF90](v38, -1, -1);
    }

    return (v27)(v9, v6);
  }
}

uint64_t sub_20C50A9AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_20C59D4CC();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_20C5A01CC();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(a2, ObjectType, v14);
  sub_20C59FE7C();

  sub_20C4BFD7C(a3, a4);
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();

  sub_20C4A7C7C(a3, a4);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v33;
    *v18 = 136315394;
    swift_beginAccess();
    sub_20C477580(a1 + 64, v38);
    v32 = v17;
    v20 = v39;
    v19 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v19 + 128))(v20, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    sub_20C50EAB4(&unk_27C7C5520, MEMORY[0x277CC95F0]);
    v21 = v35;
    v22 = sub_20C5A0E6C();
    v24 = v23;
    (*(v34 + 8))(v10, v21);
    v25 = sub_20C479640(v22, v24, &v41);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = sub_20C59D39C();
    v28 = sub_20C479640(v26, v27, &v41);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_20C472000, v16, v32, "PlaybackSync: Received new participant state for group session %s: %s", v18, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v18, -1, -1);
  }

  return (*(v36 + 8))(v13, v37);
}

uint64_t sub_20C50AD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *MEMORY[0x277D85DE8];
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  sub_20C59FE7C();
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43[0] = v9;
    v19 = v7;
    v20 = v12;
    v21 = v6;
    v22 = a1;
    v23 = a2;
    v24 = v3;
    v25 = v18;
    *v18 = 0;
    _os_log_impl(&dword_20C472000, v16, v17, "PlaybackSync: Receiving TransportControlState", v18, 2u);
    v26 = v25;
    v3 = v24;
    a2 = v23;
    a1 = v22;
    v6 = v21;
    v12 = v20;
    v7 = v19;
    v9 = v43[0];
    MEMORY[0x20F2FFF90](v26, -1, -1);
  }

  v27 = *(v7 + 8);
  v27(v15, v6);
  v28 = objc_opt_self();
  v29 = sub_20C59D3BC();
  v44 = 0;
  v30 = [v28 JSONObjectWithData:v29 options:0 error:&v44];

  v31 = v44;
  if (v30)
  {
    sub_20C5A0ABC();
    swift_unknownObjectRelease();
    sub_20C4947E4(v45, v46);
    sub_20C479AA8(v46, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5548);
    v32 = swift_dynamicCast();
    if (v32)
    {
      v33 = v44;
      MEMORY[0x28223BE20](v32);
      v43[-4] = v3;
      v43[-3] = v33;
      v43[-2] = a1;
      v43[-1] = a2;
      sub_20C59F34C();
    }

    else
    {
      sub_20C59FE7C();
      v40 = sub_20C5A01BC();
      v41 = sub_20C5A089C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_20C472000, v40, v41, "PlaybackSync: Could not cast transport control state to dictionary.", v42, 2u);
        MEMORY[0x20F2FFF90](v42, -1, -1);
      }

      v27(v12, v6);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    v34 = v31;
    v35 = sub_20C59D29C();

    swift_willThrow();
    sub_20C59FE7C();
    v36 = sub_20C5A01BC();
    v37 = sub_20C5A089C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20C472000, v36, v37, "PlaybackSync: Could not deserialize transport control state.", v38, 2u);
      MEMORY[0x20F2FFF90](v38, -1, -1);
    }

    return (v27)(v9, v6);
  }
}

uint64_t sub_20C50B1A4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = sub_20C59D4CC();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20C5A01CC();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = a1[13];
  if (v15)
  {

    v15(a2);
    sub_20C47E6BC(v15);
  }

  v16 = a1[5];
  ObjectType = swift_getObjectType();
  (*(v16 + 8))(a2, ObjectType, v16);
  if (*(a2 + 16) && (v18 = sub_20C4969C0(*MEMORY[0x277CE6030]), (v19 & 1) != 0) && (sub_20C479AA8(*(a2 + 56) + 32 * v18, v52), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v50;
    v21 = v51;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = a1[3];
    a1[3] = 0x8000000000000000;
    sub_20C493DDC(a2, v20, v21, isUniquelyReferenced_nonNull_native);

    a1[3] = v50;
    swift_endAccess();
    sub_20C59FE7C();

    v24 = v47;
    v23 = v48;
    sub_20C4BFD7C(v47, v48);
    v25 = sub_20C5A01BC();
    v26 = sub_20C5A08AC();

    sub_20C4A7C7C(v24, v23);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v27 = 136315394;
      swift_beginAccess();
      sub_20C477580((a1 + 8), v52);
      v28 = v53;
      v29 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v30 = *(v29 + 128);
      v44 = v25;
      v30(v28, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      sub_20C50EAB4(&unk_27C7C5520, MEMORY[0x277CC95F0]);
      v31 = sub_20C5A0E6C();
      v33 = v32;
      (*(v46 + 8))(v8, v6);
      v34 = sub_20C479640(v31, v33, &v55);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2080;
      v35 = sub_20C59D39C();
      v37 = sub_20C479640(v35, v36, &v55);

      *(v27 + 14) = v37;
      v25 = v44;
      _os_log_impl(&dword_20C472000, v44, v26, "PlaybackSync: Received new transport control state for group session %s: %s", v27, 0x16u);
      v38 = v45;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v38, -1, -1);
      MEMORY[0x20F2FFF90](v27, -1, -1);
    }

    return (*(v9 + 8))(v11, v49);
  }

  else
  {
    sub_20C59FE7C();
    v40 = sub_20C5A01BC();
    v41 = sub_20C5A089C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20C472000, v40, v41, "PlaybackSync: Could not decode item identifier in receiveTransportControlMessage.", v42, 2u);
      MEMORY[0x20F2FFF90](v42, -1, -1);
    }

    return (*(v9 + 8))(v14, v49);
  }
}

uint64_t sub_20C50B6C4(uint64_t a1)
{
  v2 = sub_20C59D4CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  sub_20C59FE7C();
  v15 = *(v3 + 16);
  v51 = a1;
  v47 = v15;
  v48 = v3 + 16;
  v15(v5, a1, v2);
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();
  v18 = os_log_type_enabled(v16, v17);
  v49 = v3;
  v50 = v2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v45 = v9;
    v20 = v19;
    v44 = swift_slowAlloc();
    v52 = v44;
    *v20 = 136315138;
    sub_20C50EAB4(&unk_27C7C5520, MEMORY[0x277CC95F0]);
    v21 = sub_20C5A0E6C();
    v22 = v2;
    v23 = v7;
    v24 = v6;
    v26 = v25;
    (*(v3 + 8))(v5, v22);
    v27 = sub_20C479640(v21, v26, &v52);
    v6 = v24;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_20C472000, v16, v17, "PlaybackSync: Catchup requested by %s", v20, 0xCu);
    v28 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x20F2FFF90](v28, -1, -1);
    MEMORY[0x20F2FFF90](v20, -1, -1);

    v29 = v23;
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    v29 = v7;
  }

  v30 = *(v29 + 8);
  v30(v14, v6);
  v31 = sub_20C50C04C();
  v33 = v32;
  v35 = v34;
  v36 = v46;
  sub_20C59FE7C();
  v37 = sub_20C5A01BC();
  v38 = sub_20C5A08AC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20C472000, v37, v38, "PlaybackSync: Sending catchup response!", v39, 2u);
    MEMORY[0x20F2FFF90](v39, -1, -1);
  }

  v30(v36, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51A8);
  v40 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C5A4FE0;
  v47(v41 + v40, v51, v50);
  sub_20C50CE1C(v31, v33, v35, v41);

  return sub_20C4A7C7C(v33, v35);
}

uint64_t sub_20C50BBD4()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  sub_20C59FE7C();
  v9 = sub_20C5A01BC();
  v10 = sub_20C5A08AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20C472000, v9, v10, "PlaybackSync: Receiving catchup response", v11, 2u);
    MEMORY[0x20F2FFF90](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  sub_20C50EA20();
  sub_20C59D22C();
  v35 = v12;
  v36 = v2;
  v13 = v40;
  v14 = v41;
  v15 = v42;
  if (v41 >> 60 != 15)
  {
    sub_20C4BFD7C(v40, v41);
    sub_20C50A544(v13, v14);
    sub_20C4BFD68(v13, v14);
  }

  v37 = v14;
  v38 = v13;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_13:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = (*(v15 + 56) + ((v22 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];
      sub_20C4BFD7C(*v24, v26);
      sub_20C50AD3C(v25, v26);
      result = sub_20C4A7C7C(v25, v26);
      if (!v18)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_13;
    }
  }

  v27 = *(v1 + 136);
  if (v27)
  {

    v28 = v39;
    sub_20C59FE7C();
    v29 = sub_20C5A01BC();
    v30 = sub_20C5A08AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20C472000, v29, v30, "PlaybackSync: calling deferred reloadTransportControlStateForItem completion", v31, 2u);
      MEMORY[0x20F2FFF90](v31, -1, -1);
    }

    v32 = v35(v28, v36);
    v27(v32);
    sub_20C4BFD68(v38, v37);

    sub_20C47E6BC(v27);
    v33 = *(v1 + 136);
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    result = sub_20C47E6BC(v33);
  }

  else
  {
    sub_20C4BFD68(v38, v37);
  }

  *(v1 + 152) = 1;
  return result;
}

uint64_t sub_20C50C04C()
{
  v2 = v1;
  v3 = v0;
  v38[3] = *MEMORY[0x277D85DE8];
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  sub_20C59FE7C();
  v11 = sub_20C5A01BC();
  v12 = sub_20C5A08AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20C472000, v11, v12, "PlaybackSync: Generating catchup", v13, 2u);
    v14 = v13;
    v2 = v1;
    MEMORY[0x20F2FFF90](v14, -1, -1);
  }

  v15 = *(v5 + 8);
  v15(v10, v4);
  if (*(v3 + 16))
  {
    v16 = objc_opt_self();
    type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
    sub_20C50EAB4(&qword_27C7C4358, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);

    v17 = sub_20C5A02AC();

    v38[0] = 0;
    v18 = [v16 dataWithJSONObject:v17 options:0 error:v38];

    v19 = v38[0];
    if (v18)
    {
      v20 = sub_20C59D3CC();
      v22 = v21;

      goto LABEL_10;
    }

    v23 = v19;
    v24 = sub_20C59D29C();

    swift_willThrow();
    v2 = 0;
    sub_20C59FE7C();
    v25 = sub_20C5A01BC();
    v26 = sub_20C5A089C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v37 = 0;
      v28 = v27;
      *v27 = 0;
      _os_log_impl(&dword_20C472000, v25, v26, "PlaybackSync: Could not serialize participant state.", v27, 2u);
      v29 = v28;
      v2 = v37;
      MEMORY[0x20F2FFF90](v29, -1, -1);
    }

    v15(v7, v4);
  }

  v20 = 0;
  v22 = 0xF000000000000000;
LABEL_10:
  v30 = sub_20C58995C(MEMORY[0x277D84F90]);
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    swift_unknownObjectRetain();

    v33 = [v32 trackedTransportControlStateDictionaries];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5548);
    v34 = sub_20C5A02BC();

    v30 = sub_20C50817C(v34);
    swift_unknownObjectRelease();
  }

  v38[0] = v20;
  v38[1] = v22;
  v38[2] = v30;
  sub_20C50E9CC();
  sub_20C59D25C();
  sub_20C4BFD68(v20, v22);
  if (v2)
  {
  }

  return 3;
}

uint64_t sub_20C50C4BC@<X0>(uint64_t *a1@<X8>)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = sub_20C5A03FC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = objc_opt_self();
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  sub_20C50EAB4(&qword_27C7C4348, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  v11 = sub_20C5A02AC();
  v38[0] = 0;
  v12 = [v10 dataWithJSONObject:v11 options:0 error:v38];

  v13 = v38[0];
  if (v12)
  {
    v37 = v3;
    v14 = sub_20C59D3CC();
    v16 = v15;

    sub_20C59FE7C();
    sub_20C4BFD7C(v14, v16);
    v17 = sub_20C5A01BC();
    v18 = sub_20C5A08AC();
    sub_20C4A7C7C(v14, v16);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v18;
      v20 = v19;
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v20 = 136315138;
      sub_20C5A03EC();
      v21 = sub_20C5A03BC();
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v21 = 0x64696C61766E693CLL;
        v23 = 0xE90000000000003ELL;
      }

      v24 = v4;
      v25 = a1;
      v26 = sub_20C479640(v21, v23, v38);

      *(v20 + 4) = v26;
      a1 = v25;
      _os_log_impl(&dword_20C472000, v17, v36, "PlaybackSync: Attaching transport control state to catchup: %s", v20, 0xCu);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x20F2FFF90](v27, -1, -1);
      MEMORY[0x20F2FFF90](v20, -1, -1);

      result = (*(v24 + 8))(v9, v37);
    }

    else
    {

      result = (*(v4 + 8))(v9, v37);
    }
  }

  else
  {
    v29 = v4;
    v30 = v13;
    v31 = sub_20C59D29C();

    swift_willThrow();
    sub_20C59FE7C();
    v32 = sub_20C5A01BC();
    v33 = sub_20C5A089C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20C472000, v32, v33, "PlaybackSync: Could not serialize transport control state.", v34, 2u);
      MEMORY[0x20F2FFF90](v34, -1, -1);
    }

    result = (*(v29 + 8))(v6, v3);
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  *a1 = v14;
  a1[1] = v16;
  return result;
}

uint64_t sub_20C50C910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v40 = a1;
  v4 = sub_20C59D4CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  sub_20C59FE7C();
  v15 = *(v5 + 16);
  v39 = a3;
  v34 = v15;
  v35 = v5 + 16;
  v15(v9, a3, v4);
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();
  v18 = os_log_type_enabled(v16, v17);
  v37 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v33 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v11;
    v22 = v21;
    v43 = v21;
    *v20 = 136315138;
    v23 = sub_20C59D48C();
    v25 = v24;
    v36 = *(v5 + 8);
    v36(v9, v4);
    v26 = sub_20C479640(v23, v25, &v43);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_20C472000, v16, v17, "PlaybackSync: Received message from %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    v11 = v38;
    MEMORY[0x20F2FFF90](v27, -1, -1);
    v28 = v20;
    v10 = v33;
    MEMORY[0x20F2FFF90](v28, -1, -1);
  }

  else
  {

    v36 = *(v5 + 8);
    v36(v9, v4);
  }

  (*(v11 + 8))(v14, v10);
  sub_20C50E978();
  sub_20C59D22C();
  v30 = v44;
  v29 = v45;
  if (v43 > 1u)
  {
    if (v43 == 2)
    {
      sub_20C50B6C4(v39);
    }

    else
    {
      sub_20C50BBD4();
    }
  }

  else if (v43)
  {
    sub_20C50AD3C(v44, v45);
  }

  else
  {
    sub_20C50A544(v44, v45);
  }

  return sub_20C4A7C7C(v30, v29);
}

uint64_t sub_20C50CE1C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_20C59FE7C();
  v14 = sub_20C5A01BC();
  v15 = sub_20C5A08AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v5;
    v17 = a1;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_20C472000, v14, v15, "PlaybackSync: Sending message.", v16, 2u);
    v22 = v21;
    a4 = v20;
    a3 = v19;
    a2 = v18;
    a1 = v17;
    v5 = v31;
    MEMORY[0x20F2FFF90](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  LOBYTE(v32[0]) = a1;
  v32[1] = a2;
  v32[2] = a3;
  sub_20C50E924();
  v23 = sub_20C59D25C();
  v25 = v24;
  swift_beginAccess();
  sub_20C477580(v5 + 64, v32);
  v26 = v33;
  v27 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  if (a4)
  {
    v28 = a4;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v27 + 8);

  v29(v23, v25, v28, v26, v27);
  sub_20C4A7C7C(v23, v25);

  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

uint64_t sub_20C50D070()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  sub_20C47E6BC(*(v0 + 104));

  sub_20C47E6BC(*(v0 + 136));

  return v0;
}

uint64_t sub_20C50D0E0()
{
  sub_20C50D070();

  return MEMORY[0x2821FE8D8](v0, 169, 7);
}

id sub_20C50D5FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPlayerSyncCoordinator.AVCoordinatorDelegateBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C50D6B0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C55E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C50F340();
  sub_20C5A104C();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_20C4E6460(a2, a3);
  sub_20C50EDC4();
  sub_20C5A0E1C();
  sub_20C4BFD68(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C55F0);
    sub_20C50F394(&qword_27C7C55F8, sub_20C50EDC4);
    sub_20C5A0E3C();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_20C50D8B0()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_20C50D8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000020C5ACDC0 == a2 || (sub_20C5A0E9C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C5ACDE0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C5A0E9C();

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

uint64_t sub_20C50D9CC(uint64_t a1)
{
  v2 = sub_20C50F340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C50DA08(uint64_t a1)
{
  v2 = sub_20C50F340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C50DA44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20C50EE18(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_20C50DA94@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C50F0AC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_20C50DB7C(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C55A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C50ED1C();
  sub_20C5A104C();
  LOBYTE(v15) = a2;
  v17 = 0;
  sub_20C50ED70();
  sub_20C5A0E3C();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_20C4BFD7C(a3, v14);
    sub_20C50EDC4();
    sub_20C5A0E3C();
    sub_20C4A7C7C(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_20C50DD2C()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_20C50DD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_20C5A0E9C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C5A0E9C();

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

uint64_t sub_20C50DE3C(uint64_t a1)
{
  v2 = sub_20C50ED1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C50DE78(uint64_t a1)
{
  v2 = sub_20C50ED1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C50DEB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20C50F0BC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_20C50DF04()
{
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  sub_20C50EAB4(&qword_27C7C4348, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  v1 = sub_20C5A02AC();
  [v0 handleNewTransportControlStateDictionary_];
}

void sub_20C50DFBC()
{
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  sub_20C50EAB4(&qword_27C7C4358, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  v1 = sub_20C5A02AC();
  [v0 handleNewParticipantStateDictionary_];
}

void sub_20C50E074()
{
  v1 = sub_20C59D49C();
  [v0 handleRemovalOfParticipant_];
}

uint64_t type metadata accessor for MediaPlayerSyncCoordinator.AVCoordinatorDelegateBridge()
{
  result = qword_27C7C5508;
  if (!qword_27C7C5508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C50E148()
{
  result = sub_20C59D4CC();
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

uint64_t sub_20C50E21C(uint64_t a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE7C();
  v6 = sub_20C5A01BC();
  v7 = sub_20C5A08AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C472000, v6, v7, "PlaybackSync: reloadTransportControlStateForItem finished", v8, 2u);
    MEMORY[0x20F2FFF90](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return (*(a1 + 16))(a1);
}

void sub_20C50E36C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v49 = a1;
  v50 = a2;
  v6 = sub_20C5A01CC();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v54 = swift_allocObject();
  *(v54 + 16) = a4;
  _Block_copy(a4);
  _Block_copy(a4);
  sub_20C59FE7C();

  v12 = sub_20C5A01BC();
  v13 = sub_20C5A08AC();
  v14 = os_log_type_enabled(v12, v13);
  v51 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    swift_beginAccess();
    v16 = *(a3 + 88);
    v17 = *(a3 + 96);
    v18 = __swift_project_boxed_opaque_existential_1((a3 + 64), v16);
    v48 = a4;
    v19 = *(v16 - 8);
    v20 = MEMORY[0x28223BE20](v18);
    v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    LOBYTE(v17) = (*(v17 + 96))(v16, v17);
    (*(v19 + 8))(v22, v16);
    a4 = v48;
    *(v15 + 4) = v17 & 1;
    *(v15 + 8) = 1024;
    *(v15 + 10) = *(a3 + 152);

    _os_log_impl(&dword_20C472000, v12, v13, "PlaybackSync: reloadTransportControlStateForItem. isLocallyInitiated:%{BOOL}d hasReceivedCatchup:%{BOOL}d", v15, 0xEu);
    MEMORY[0x20F2FFF90](v15, -1, -1);
  }

  else
  {
  }

  v23 = *(v52 + 8);
  v24 = v11;
  v25 = v53;
  v23(v24, v53);
  swift_beginAccess();
  v26 = *(a3 + 88);
  v27 = *(a3 + 96);
  v28 = __swift_project_boxed_opaque_existential_1((a3 + 64), v26);
  v29 = *(v26 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32, v30);
  LOBYTE(v27) = (*(v27 + 96))(v26, v27);
  (*(v29 + 8))(v32, v26);
  if ((v27 & 1) != 0 || *(a3 + 152) == 1)
  {
    swift_beginAccess();
    v33 = *(a3 + 24);
    v34 = v51;
    if (*(v33 + 16))
    {

      v35 = sub_20C4820C8(v49, v50);
      if (v36)
      {
        v37 = a4;
        v38 = *(*(v33 + 56) + 8 * v35);

        v39 = *(a3 + 104);
        if (v39)
        {

          v39(v38);
          sub_20C47E6BC(v39);
        }

        v40 = *(a3 + 40);
        ObjectType = swift_getObjectType();
        (*(v40 + 8))(v38, ObjectType, v40);

        a4 = v37;
        _Block_copy(v37);
        sub_20C50E21C(v37);
        v42 = v37;
LABEL_16:
        _Block_release(v42);
        goto LABEL_17;
      }
    }

    sub_20C59FE7C();
    v45 = sub_20C5A01BC();
    v46 = sub_20C5A08AC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20C472000, v45, v46, "PlaybackSync: Could not find state for this item identifier", v47, 2u);
      MEMORY[0x20F2FFF90](v47, -1, -1);
    }

    v23(v34, v25);
    _Block_copy(a4);
    sub_20C50E21C(a4);
    v42 = a4;
    goto LABEL_16;
  }

  v43 = *(a3 + 136);
  v44 = v54;
  *(a3 + 136) = sub_20C50E91C;
  *(a3 + 144) = v44;

  sub_20C47E6BC(v43);
LABEL_17:

  _Block_release(a4);
}

unint64_t sub_20C50E924()
{
  result = qword_27C7C5530;
  if (!qword_27C7C5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5530);
  }

  return result;
}

unint64_t sub_20C50E978()
{
  result = qword_27C7C5538;
  if (!qword_27C7C5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5538);
  }

  return result;
}

unint64_t sub_20C50E9CC()
{
  result = qword_27C7C5540;
  if (!qword_27C7C5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5540);
  }

  return result;
}

unint64_t sub_20C50EA20()
{
  result = qword_27C7C5550;
  if (!qword_27C7C5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5550);
  }

  return result;
}

uint64_t sub_20C50EAB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C50EAFC()
{
  result = qword_27C7C5580;
  if (!qword_27C7C5580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C5580);
  }

  return result;
}

uint64_t sub_20C50EB48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(v2, ObjectType, v3);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C50EBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_20C50EC34(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_20C50EC84(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20C50ECC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_20C50ED1C()
{
  result = qword_27C7C55B0;
  if (!qword_27C7C55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C55B0);
  }

  return result;
}

unint64_t sub_20C50ED70()
{
  result = qword_27C7C55B8;
  if (!qword_27C7C55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C55B8);
  }

  return result;
}

unint64_t sub_20C50EDC4()
{
  result = qword_27C7C55C0;
  if (!qword_27C7C55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C55C0);
  }

  return result;
}

uint64_t sub_20C50EE18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5600);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  sub_20C58995C(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C50F340();
  sub_20C5A103C();
  if (v1)
  {
    v8 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_20C4BFD68(0, 0xF000000000000000);
  }

  else
  {
    v11 = 0;
    sub_20C50F2EC();
    sub_20C5A0DCC();
    v8 = v10[0];
    v9 = v10[1];
    sub_20C4BFD68(0, 0xF000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C55F0);
    v11 = 1;
    sub_20C50F394(&qword_27C7C5608, sub_20C50F2EC);
    sub_20C5A0DEC();
    (*(v4 + 8))(v6, v3);

    sub_20C4E6460(v8, v9);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_20C4BFD68(v8, v9);
  }

  return v8;
}

unint64_t sub_20C50F0AC(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_20C50F0BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C55C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C50ED1C();
  sub_20C5A103C();
  v9 = 0;
  sub_20C50F298();
  sub_20C5A0DEC();
  v6 = v8[8];
  v9 = 1;
  sub_20C50F2EC();
  sub_20C5A0DEC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_20C50F298()
{
  result = qword_27C7C55D0;
  if (!qword_27C7C55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C55D0);
  }

  return result;
}

unint64_t sub_20C50F2EC()
{
  result = qword_27C7C55D8;
  if (!qword_27C7C55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C55D8);
  }

  return result;
}

unint64_t sub_20C50F340()
{
  result = qword_27C7C55E8;
  if (!qword_27C7C55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C55E8);
  }

  return result;
}

uint64_t sub_20C50F394(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C55F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C50F44C()
{
  result = qword_27C7C5610;
  if (!qword_27C7C5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5610);
  }

  return result;
}

unint64_t sub_20C50F4A4()
{
  result = qword_27C7C5618;
  if (!qword_27C7C5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5618);
  }

  return result;
}

unint64_t sub_20C50F4FC()
{
  result = qword_27C7C5620;
  if (!qword_27C7C5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5620);
  }

  return result;
}

unint64_t sub_20C50F554()
{
  result = qword_27C7C5628;
  if (!qword_27C7C5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5628);
  }

  return result;
}

unint64_t sub_20C50F5AC()
{
  result = qword_27C7C5630;
  if (!qword_27C7C5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5630);
  }

  return result;
}

unint64_t sub_20C50F604()
{
  result = qword_27C7C5638;
  if (!qword_27C7C5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5638);
  }

  return result;
}

unint64_t sub_20C50F65C()
{
  result = qword_27C7C5640;
  if (!qword_27C7C5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5640);
  }

  return result;
}

unint64_t sub_20C50F6B0()
{
  result = qword_27C7C5648;
  if (!qword_27C7C5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5648);
  }

  return result;
}

uint64_t sub_20C50F728(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20C472000, v10, v11, a3, v12, 2u);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 48) = a4;
  }

  return result;
}

uint64_t sub_20C50F8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_20C59E26C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C5A01CC();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C59FEBC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C59EC3C();
  (*(v12 + 104))(v14, *MEMORY[0x277D4F8B8], v11);
  v16 = sub_20C510018(v14, v15);

  (*(v12 + 8))(v14, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_20C59E22C();
  v17 = sub_20C59E8CC();
  v19 = v18;
  if (v17 == sub_20C59E8CC() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_20C5A0E9C();

    if ((v21 & 1) == 0)
    {
LABEL_9:
      v31 = v38;
      (*(v6 + 16))(v38, a1, v5);
      v32 = 0;
      return (*(v6 + 56))(v31, v32, 1, v5);
    }
  }

  if ((*(v3 + 48) & 1) == 0)
  {
    goto LABEL_9;
  }

  v22 = v35;
  sub_20C59FE3C();
  (*(v6 + 16))(v8, a1, v5);
  v23 = sub_20C5A01BC();
  v24 = sub_20C5A08AC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136446210;
    sub_20C50FCEC();
    v27 = sub_20C5A0E6C();
    v29 = v28;
    (*(v6 + 8))(v8, v5);
    v30 = sub_20C479640(v27, v29, &v39);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_20C472000, v23, v24, "[TrainerTipsQuarantineMetricTransformer] suppressing click stream event: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x20F2FFF90](v26, -1, -1);
    MEMORY[0x20F2FFF90](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  (*(v36 + 8))(v22, v37);
  v32 = 1;
  v31 = v38;
  return (*(v6 + 56))(v31, v32, 1, v5);
}

unint64_t sub_20C50FCEC()
{
  result = qword_2810F5A28;
  if (!qword_2810F5A28)
  {
    sub_20C59E26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F5A28);
  }

  return result;
}

double static MediaTagStringBuilderOptions.default.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 whiteColor];
  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = xmmword_20C5A8050;
  *(a1 + 32) = v5;
  *&result = 4;
  *(a1 + 40) = xmmword_20C5A51F0;
  return result;
}

void static MediaTagStringBuilderOptions.defaultWithOverrides(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)(void *a1@<X0>, void *a2@<X1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12)
{
  v15 = objc_opt_self();
  v16 = [v15 whiteColor];
  v17 = [v16 colorWithAlphaComponent_];

  v18 = [v15 whiteColor];
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = v17;
  }

  v20 = a7;
  if (!a7)
  {
    v20 = v18;
  }

  if (a6)
  {
    v21 = 3.0;
  }

  else
  {
    v21 = a5;
  }

  if (a4)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = a3;
  }

  v23 = a2;
  v24 = a7;
  v25 = a1;

  v26 = 4;
  if ((a10 & 1) == 0)
  {
    v26 = a8;
  }

  *a9 = a1;
  *(a9 + 8) = v19;
  if (a12)
  {
    v27 = 0;
  }

  else
  {
    v27 = a11;
  }

  *(a9 + 16) = v22;
  *(a9 + 24) = v21;
  *(a9 + 32) = v20;
  *(a9 + 40) = v26;
  *(a9 + 48) = v27;
}

void sub_20C50FFCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_20C510018(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C59FEBC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20C515544(&qword_2810F3E30, MEMORY[0x277D4F998]), v7 = sub_20C5A02EC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20C515544(&qword_2810F3E28, MEMORY[0x277D4F998]);
      v15 = sub_20C5A033C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20C510230(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_20C5A0FBC();
  sub_20C5A0B8C();
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_20C4FACE0(v4, v5);
  v6 = sub_20C5A0FFC();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      sub_20C494788(*(a2 + 48) + 56 * v8, v14);
      if (MEMORY[0x20F2FF020](v14, a1))
      {
        v10 = v15;
        v11 = v16;
        sub_20C496894(v14);
        if (v10 == v4 && v11 == v5)
        {
          return 1;
        }
      }

      else
      {
        sub_20C496894(v14);
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_20C510360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_20C5A0FBC();
  sub_20C5A049C();
  v6 = sub_20C5A0FFC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20C5A0E9C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_20C510458(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_20C5A0FBC(), sub_20C59DD3C(), sub_20C5A049C(), , v3 = sub_20C5A0FFC(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_20C59DD3C();
      v9 = v8;
      if (v7 == sub_20C59DD3C() && v9 == v10)
      {
        break;
      }

      v12 = sub_20C5A0E9C();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_20C5105A8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 80);
  sub_20C5A0FBC();
  if (v3)
  {
    MEMORY[0x20F2FF470](1);
    ArtworkImageCacheKey.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2FF470](0);
    sub_20C4FACE0(v2, v1);
  }

  return sub_20C5A0FFC();
}

uint64_t sub_20C51064C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 80))
  {
    MEMORY[0x20F2FF470](1);
    return ArtworkImageCacheKey.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2FF470](0);

    return sub_20C4FACE0(v2, v1);
  }
}

uint64_t sub_20C510700()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 80);
  sub_20C5A0FBC();
  if (v3)
  {
    MEMORY[0x20F2FF470](1);
    ArtworkImageCacheKey.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2FF470](0);
    sub_20C4FACE0(v2, v1);
  }

  return sub_20C5A0FFC();
}

uint64_t ArtworkImageLoader.__allocating_init(artworkImageCache:assetClient:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_20C59F36C();
  swift_allocObject();
  *(v4 + 96) = sub_20C59F35C();
  *(v4 + 112) = sub_20C47818C(MEMORY[0x277D84F90]);
  sub_20C477580(a1, v4 + 56);
  sub_20C477580(a2, v4 + 16);
  v5 = sub_20C59EC4C();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v4 + 104) = v5;
  return v4;
}

uint64_t ArtworkImageLoader.__allocating_init(artworkImageCache:assetClient:platform:)(__int128 *a1, __int128 *a2, char a3)
{
  v6 = swift_allocObject();
  sub_20C59F36C();
  swift_allocObject();
  *(v6 + 96) = sub_20C59F35C();
  *(v6 + 112) = sub_20C47818C(MEMORY[0x277D84F90]);
  sub_20C4780E8(a1, v6 + 56);
  sub_20C4780E8(a2, v6 + 16);
  *(v6 + 104) = a3;
  return v6;
}

uint64_t ArtworkImageLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return v0;
}

uint64_t ArtworkImageLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t ArtworkImageLoader.fetchArtwork(_:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_20C59EA6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C59EBFC();
  v14 = v13;
  (*(v9 + 16))(v11, a1, v8);
  v15 = sub_20C59EC0C();
  v17 = v16;
  v18 = sub_20C59EA5C();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  *&v25 = v18;
  *(&v25 + 1) = v20;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  *&v27 = v12;
  *(&v27 + 1) = v14;
  *v28 = v15;
  *&v28[8] = v17;
  *&v28[16] = MEMORY[0x277D84F90];
  v28[24] = 1;
  v23[2] = v27;
  v24[0] = *v28;
  *(v24 + 9) = *&v28[9];
  v23[1] = v26;
  v23[0] = v25;
  ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(v23, 33, 1, 1, a2);
  return sub_20C514F70(&v25);
}

uint64_t ArtworkImageLoader.fetchArtwork(_:size:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v23 = a2;
  v9 = sub_20C59EA6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C59EBFC();
  v15 = v14;
  (*(v10 + 16))(v12, a1, v9);
  v16 = sub_20C59EC0C();
  v18 = v17;
  v19 = sub_20C59EA5C();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  *&v26 = v19;
  *(&v26 + 1) = v21;
  *&v27 = a4;
  *(&v27 + 1) = a5;
  *&v28 = v13;
  *(&v28 + 1) = v15;
  *v29 = v16;
  *&v29[8] = v18;
  *&v29[16] = MEMORY[0x277D84F90];
  v29[24] = 1;
  v24[2] = v28;
  v25[0] = *v29;
  *(v25 + 9) = *&v29[9];
  v24[1] = v27;
  v24[0] = v26;
  ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(v24, v23, 1, 1, a3);
  return sub_20C514F70(&v26);
}

uint64_t ArtworkImageLoader.fetchArtwork(_:size:priority:cropCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v25 = a2;
  v13 = sub_20C59EA6C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v15);
  v18 = sub_20C59EC0C();
  v20 = v19;
  v21 = sub_20C59EA5C();
  v23 = v22;
  (*(v14 + 8))(v17, v13);
  *&v28 = v21;
  *(&v28 + 1) = v23;
  *&v29 = a6;
  *(&v29 + 1) = a7;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  *v31 = v18;
  *&v31[8] = v20;
  *&v31[16] = MEMORY[0x277D84F90];
  v31[24] = 1;
  v26[2] = v30;
  v27[0] = *v31;
  *(v27 + 9) = *&v31[9];
  v26[1] = v29;
  v26[0] = v28;

  ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(v26, v25, 1, 1, a5);
  return sub_20C514F70(&v28);
}

uint64_t ArtworkImageLoader.fetchArtwork(_:size:cropCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_20C59EA6C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v14);
  v17 = sub_20C59EC0C();
  v19 = v18;
  v20 = sub_20C59EA5C();
  v22 = v21;
  (*(v13 + 8))(v16, v12);
  *&v27 = v20;
  *(&v27 + 1) = v22;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  *&v29 = a2;
  *(&v29 + 1) = a3;
  *v30 = v17;
  *&v30[8] = v19;
  *&v30[16] = MEMORY[0x277D84F90];
  v30[24] = 1;
  v25[2] = v29;
  v26[0] = *v30;
  *(v26 + 9) = *&v30[9];
  v25[1] = v28;
  v25[0] = v27;

  ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(v25, 33, 1, 1, a4);
  return sub_20C514F70(&v27);
}

uint64_t ArtworkImageLoader.fetchArtwork(_:size:priority:cropCode:cacheBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v29 = a2;
  v28 = a6;
  v14 = sub_20C59EA6C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a5;
  (*(v15 + 16))(v18, a1, v14, v16);
  v20 = sub_20C59EC0C();
  v22 = v21;
  v23 = sub_20C59EA5C();
  v25 = v24;
  (*(v15 + 8))(v18, v14);
  *&v32 = v23;
  *(&v32 + 1) = v25;
  *&v33 = a7;
  *(&v33 + 1) = a8;
  *&v34 = a3;
  *(&v34 + 1) = a4;
  *v35 = v20;
  *&v35[8] = v22;
  *&v35[16] = MEMORY[0x277D84F90];
  v35[24] = v19;
  v30[2] = v34;
  v31[0] = *v35;
  *(v31 + 9) = *&v35[9];
  v30[1] = v33;
  v30[0] = v32;

  ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(v30, v29, 1, 1, v28);
  return sub_20C514F70(&v32);
}

uint64_t ArtworkImageLoader.fetchArtwork(_:thatFits:preservingPreferredDimension:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v30 = a3;
  v9 = sub_20C59EA6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = sub_20C59EA3C();
  v15 = sub_20C59EA4C();
  LOBYTE(v33) = v13;
  v16 = sub_20C51162C(&v33, a4, a5, v14 / v15);
  v18 = v17;
  v19 = sub_20C59EBFC();
  v21 = v20;
  (*(v10 + 16))(v12, a1, v9);
  v22 = sub_20C59EC0C();
  v24 = v23;
  v25 = sub_20C59EA5C();
  v27 = v26;
  (*(v10 + 8))(v12, v9);
  *&v33 = v25;
  *(&v33 + 1) = v27;
  *&v34 = v16;
  *(&v34 + 1) = v18;
  *&v35 = v19;
  *(&v35 + 1) = v21;
  *v36 = v22;
  *&v36[8] = v24;
  *&v36[16] = MEMORY[0x277D84F90];
  v36[24] = 1;
  v31[2] = v35;
  v32[0] = *v36;
  *(v32 + 9) = *&v36[9];
  v31[1] = v34;
  v31[0] = v33;
  ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(v31, 33, 1, 1, v30);
  return sub_20C514F70(&v33);
}

uint64_t ArtworkImageLoader.fetchArtwork(_:thatFits:preservingPreferredDimension:priority:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v31 = a3;
  v30 = a4;
  v10 = sub_20C59EA6C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = sub_20C59EA3C();
  v16 = sub_20C59EA4C();
  LOBYTE(v34) = v14;
  v17 = sub_20C51162C(&v34, a5, a6, v15 / v16);
  v19 = v18;
  v20 = sub_20C59EBFC();
  v22 = v21;
  (*(v11 + 16))(v13, a1, v10);
  v23 = sub_20C59EC0C();
  v25 = v24;
  v26 = sub_20C59EA5C();
  v28 = v27;
  (*(v11 + 8))(v13, v10);
  *&v34 = v26;
  *(&v34 + 1) = v28;
  *&v35 = v17;
  *(&v35 + 1) = v19;
  *&v36 = v20;
  *(&v36 + 1) = v22;
  *v37 = v23;
  *&v37[8] = v25;
  *&v37[16] = MEMORY[0x277D84F90];
  v37[24] = 1;
  v32[2] = v36;
  v33[0] = *v37;
  *(v33 + 9) = *&v37[9];
  v32[1] = v35;
  v32[0] = v34;
  ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(v32, v31, 1, 1, v30);
  return sub_20C514F70(&v34);
}

double sub_20C51162C(_BYTE *a1, double a2, double a3, double a4)
{
  v4 = a3 * a4;
  v5 = a2 / a4;
  if (*a1)
  {
    v5 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (v4 > a2 || v5 > a3)
  {
    v7 = *a1 ^ 1;
    return sub_20C51162C(&v7);
  }

  return v4;
}

void ArtworkImageLoader.fetchRequest(_:priority:expirationPolicy:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v84 = a2;
  v85 = a3;
  v91 = a5;
  v7 = sub_20C59FEBC();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x28223BE20](v7);
  v88 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5650);
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5658);
  v92 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  *(v117 + 9) = *(a1 + 57);
  v14 = a1[3];
  v116 = a1[2];
  v117[0] = v14;
  v15 = a1[1];
  v114 = *a1;
  v115 = v15;
  v120 = v116;
  v16 = *&v117[1];
  v17 = *(*&v117[1] + 16);
  v96 = v5;
  if (v17)
  {
    v87 = &v83 - v12;
    *&v110[0] = MEMORY[0x277D84F90];

    sub_20C4C47CC(0, v17, 0);
    v18 = *&v110[0];
    v19 = v16 + 32;
    do
    {
      sub_20C477580(v19, &v98);
      v20 = v100;
      v21 = v101;
      __swift_project_boxed_opaque_existential_1(&v98, v100);
      v22 = (*(v21 + 8))(v20, v21);
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1Tm(&v98);
      *&v110[0] = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_20C4C47CC((v25 > 1), v26 + 1, 1);
        v18 = *&v110[0];
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 += 40;
      --v17;
    }

    while (v17);
    v13 = v87;
  }

  else
  {
    sub_20C514FC4(&v120, &v98);
    v18 = MEMORY[0x277D84F90];
  }

  v121 = BYTE8(v117[1]);
  v28 = v115;
  v118 = v114;
  v119 = v117[0];
  v29 = objc_opt_self();
  sub_20C514FC4(&v119, &v98);
  sub_20C514FC4(&v118, &v98);
  v30 = [v29 mainScreen];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v122.origin.x = v32;
  v122.origin.y = v34;
  v122.size.width = v36;
  v122.size.height = v38;
  Width = CGRectGetWidth(v122);
  v40 = v92;
  if (qword_2810F5250 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v11, qword_2810F5258);
  v42 = *(v40 + 16);
  v42(v13, v41, v11);
  v43 = v13;
  sub_20C59F3BC();
  v44 = *(v40 + 8);
  v44(v13, v11);
  v45 = *&v98;
  if (qword_2810F5298 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v11, qword_2810F52A0);
  v42(v43, v46, v11);
  sub_20C59F3BC();
  v44(v43, v11);
  v47 = *&v98;
  if (qword_2810F5270 != -1)
  {
    swift_once();
  }

  v48 = v95;
  v49 = __swift_project_value_buffer(v95, qword_2810F5278);
  v50 = v93;
  v51 = v94;
  (*(v94 + 16))(v93, v49, v48);
  sub_20C59F3BC();
  (*(v51 + 8))(v50, v48);
  if (LOBYTE(v98) == 1)
  {
    v52 = sub_20C59EC3C();
    v54 = v88;
    v53 = v89;
    v55 = v90;
    (*(v89 + 104))(v88, *MEMORY[0x277D4F918], v90);
    v56 = sub_20C510018(v54, v52);

    (*(v53 + 8))(v54, v55);
  }

  else
  {
    v56 = 0;
  }

  v57 = ceil(*&v28);
  v58 = MEMORY[0x277D4FCD0];
  if (v57 <= 0.0 || ceil(*(&v28 + 1)) <= 0.0)
  {
    goto LABEL_36;
  }

  v59 = __exp10(v45);
  if (*&v57 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v57 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v60 = v57;
  v61 = v57;
  if ((v121 & v56 & 1) == 0)
  {
LABEL_32:
    v108 = v119;
    v109 = v120;
    v67 = trunc(*&v28 / *(&v28 + 1) * v59) / v59;
    v107 = v118;
    *v110 = v67;
    *(v110 + 8) = v120;
    *(&v110[1] + 1) = v18;
    v111 = v119;
    v112 = v118;
    *&v113 = v60;
    *(&v113 + 1) = v61;
    v106 = 1;
    v68 = v96;
    v69 = v96[10];
    v70 = v96[11];
    __swift_project_boxed_opaque_existential_1(v96 + 7, v69);
    v98 = v67;
    v99 = v109;
    v100 = v18;
    v101 = v108;
    v102 = v107;
    v103 = v60;
    v104 = v61;
    v105 = v106;
    v71 = *(v70 + 8);
    sub_20C4A3784(v110, &v97);
    v72 = sub_20C51503C();
    v73 = v71(&v98, &type metadata for ArtworkImageLoader.CacheKey, v72, v69, v70);
    sub_20C4A37BC(v110);
    if (!v73)
    {
      v74 = swift_allocObject();
      v75 = v110[0];
      *(v74 + 40) = v110[1];
      v76 = v112;
      *(v74 + 56) = v111;
      *(v74 + 72) = v76;
      *(v74 + 88) = v113;
      *(v74 + 24) = v75;
      v77 = v114;
      *(v74 + 120) = v115;
      v78 = v117[0];
      *(v74 + 136) = v116;
      *(v74 + 152) = v78;
      *(v74 + 161) = *(v117 + 9);
      *(v74 + 16) = v68;
      *(v74 + 104) = v77;
      v79 = v85;
      *(v74 + 184) = v84;
      *(v74 + 192) = v79;
      *(v74 + 200) = v86 & 1;

      sub_20C49508C(&v114, &v98);
      sub_20C479154(0, &qword_2810F3D80);
      sub_20C59EA9C();
      return;
    }

    sub_20C4A37BC(v110);
    *(swift_allocObject() + 16) = v73;
    sub_20C479154(0, &qword_2810F3D80);
    goto LABEL_37;
  }

  v62 = ceil(Width / v47);
  if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v62 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v62 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v63 = v62;
  if (v62 < 1)
  {
    v58 = MEMORY[0x277D4FD18];
LABEL_36:
    sub_20C4E1910(&v118);
    sub_20C4E1910(&v119);

    sub_20C4E1910(&v120);
    v80 = sub_20C59D6EC();
    sub_20C515544(&qword_27C7C5418, MEMORY[0x277D4FDC8]);
    v81 = swift_allocError();
    (*(*(v80 - 8) + 104))(v82, *v58, v80);
    swift_willThrow();
    *(swift_allocObject() + 16) = v81;
    sub_20C479154(0, &qword_2810F3D80);
LABEL_37:
    sub_20C59EAAC();
    return;
  }

  v64 = v60 / v63 * v63;
  if ((v60 / v63 * v63) >> 64 != v64 >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v60 = v64 + 1;
  if (__OFADD__(v64, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v65 = __OFADD__(v60, v63);
  v66 = v60 + v63;
  if (v65)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v61 = v66 - 1;
  if (__OFSUB__(v66, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v61 >= v60)
  {
    goto LABEL_32;
  }

LABEL_48:
  __break(1u);
}

uint64_t ArtworkImageLoader.fetchFallbackArtwork(for:)(double a1, double a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  sub_20C479154(0, &qword_2810F3D80);

  return sub_20C59EA9C();
}

void sub_20C512124(void (*a1)(__int128 *), uint64_t a2, void *a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v22 = 0;
  v11 = a3[10];
  v12 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, v11);
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = 0;
  v13 = *(v12 + 8);
  v14 = sub_20C51503C();

  v15 = v13(v20, &type metadata for ArtworkImageLoader.CacheKey, v14, v11, v12);
  if (v15)
  {
    v16 = v15;

    *&v20[0] = v16;
    BYTE8(v20[0]) = 0;
    v17 = v16;
    a1(v20);
  }

  else
  {
    *v20 = a4;
    *(v20 + 1) = a5;
    v21 = 0;
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a4;
    *(v19 + 32) = a5;
    *(v19 + 40) = a4;
    *(v19 + 48) = a5;
    *(v19 + 120) = 0;

    sub_20C512C34(v20, sub_20C49B62C, v10, sub_20C5153C0, v19);
  }
}

uint64_t sub_20C5122E8(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20C5A021C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-v13 - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20C479154(0, &qword_2810F3D90);
    (*(v8 + 104))(v10, *MEMORY[0x277D851C0], v7);
    v16 = sub_20C5A090C();
    (*(v8 + 8))(v10, v7);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    *(v17 + 32) = a2;
    sub_20C479154(0, &qword_2810F3D80);
    sub_20C59EA9C();
    v18 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = *(a4 + 48);
    *(v19 + 56) = *(a4 + 32);
    *(v19 + 72) = v20;
    *(v19 + 88) = *(a4 + 64);
    *(v19 + 104) = *(a4 + 80);
    v21 = *(a4 + 16);
    *(v19 + 24) = *a4;
    *(v19 + 40) = v21;
    sub_20C494988(a4, v25);
    v22 = sub_20C59EABC();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20C51547C;
    *(v23 + 24) = v19;

    v22(sub_20C4907D4, v23);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_20C512658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(a3 + 48);
    v9[2] = *(a3 + 32);
    v9[3] = v7;
    v9[4] = *(a3 + 64);
    v10 = *(a3 + 80);
    v8 = *(a3 + 16);
    v9[0] = *a3;
    v9[1] = v8;
    sub_20C5126F4(v4, v5, v9);
  }

  return result;
}

uint64_t sub_20C5126F4(void *a1, int a2, __int128 *a3)
{
  v4 = v3;
  v43 = a1;
  v7 = sub_20C5A020C();
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C5A023C();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A021C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3[3];
  v49 = a3[2];
  v50 = v15;
  v51 = a3[4];
  v52 = *(a3 + 80);
  v16 = a3[1];
  v47 = *a3;
  v48 = v16;
  if ((a2 & 1) == 0)
  {
    v38 = v7;
    v18 = v4[10];
    v17 = v4[11];
    v35[1] = __swift_project_boxed_opaque_existential_1(v4 + 7, v18);
    v19 = a3[3];
    v44[2] = a3[2];
    v44[3] = v19;
    v44[4] = a3[4];
    v45 = *(a3 + 80);
    v20 = a3[1];
    v44[0] = *a3;
    v44[1] = v20;
    v37 = v9;
    v36 = a2;
    v21 = *(v17 + 16);
    v22 = sub_20C51503C();
    v23 = v43;
    v24 = v43;
    v25 = v17;
    v7 = v38;
    v21(v24, v44, &type metadata for ArtworkImageLoader.CacheKey, v22, v18, v25);
    LOBYTE(a2) = v36;
    v9 = v37;
    sub_20C48D05C(v23);
  }

  sub_20C479154(0, &qword_2810F3D90);
  (*(v12 + 104))(v14, *MEMORY[0x277D851C0], v11);
  v26 = sub_20C5A090C();
  (*(v12 + 8))(v14, v11);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v29 = v50;
  *(v28 + 56) = v49;
  *(v28 + 72) = v29;
  *(v28 + 88) = v51;
  v30 = v48;
  *(v28 + 24) = v47;
  *(v28 + 16) = v27;
  *(v28 + 104) = v52;
  *(v28 + 40) = v30;
  v31 = v43;
  *(v28 + 112) = v43;
  *(v28 + 120) = a2 & 1;
  aBlock[4] = sub_20C515488;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_48_0;
  v32 = _Block_copy(aBlock);
  sub_20C4B4DF8(v31);

  sub_20C494988(&v47, v44);
  v33 = v41;
  sub_20C5A022C();
  *&v44[0] = MEMORY[0x277D84F90];
  sub_20C515544(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v33, v9, v32);
  _Block_release(v32);

  (*(v39 + 8))(v9, v7);
  (*(v42 + 8))(v33, v40);
}

uint64_t sub_20C512C34(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v29 = a4;
  v28 = a3;
  v27 = a2;
  v6 = sub_20C5A020C();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C5A023C();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A021C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v37 = a1[2];
  v38 = v16;
  v39 = a1[4];
  v40 = *(a1 + 80);
  v17 = a1[1];
  v35 = *a1;
  v36 = v17;
  sub_20C479154(0, &qword_2810F3D90);
  (*(v13 + 104))(v15, *MEMORY[0x277D851C0], v12);
  v18 = sub_20C5A090C();
  (*(v13 + 8))(v15, v12);
  v19 = swift_allocObject();
  v20 = v38;
  *(v19 + 56) = v37;
  *(v19 + 72) = v20;
  *(v19 + 88) = v39;
  v21 = v36;
  *(v19 + 24) = v35;
  *(v19 + 16) = v26;
  *(v19 + 104) = v40;
  *(v19 + 40) = v21;
  v22 = v28;
  *(v19 + 112) = v27;
  *(v19 + 120) = v22;
  v23 = v30;
  *(v19 + 128) = v29;
  *(v19 + 136) = v23;
  aBlock[4] = sub_20C5153D0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_13;
  v24 = _Block_copy(aBlock);

  sub_20C494988(&v35, v33);

  sub_20C5A022C();
  v33[0] = MEMORY[0x277D84F90];
  sub_20C515544(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v11, v8, v24);
  _Block_release(v24);

  (*(v32 + 8))(v8, v6);
  (*(v9 + 8))(v11, v31);
}

uint64_t sub_20C513188(double a1, double a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v5;
  sub_20C479154(0, &qword_2810F3D80);

  return sub_20C59EA9C();
}

void sub_20C5132BC(void **a1)
{
  v1 = *a1;
  sub_20C479154(0, &qword_2810F3D90);
  v2 = sub_20C5A08EC();
  sub_20C4B3DC8(v1, v2);
}

uint64_t sub_20C513354(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3[3];
  v10 = a3[2];
  v11 = v3;
  v12 = a3[4];
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  v5 = *a1;
  v6 = *(a1 + 8);
  v14 = 1;
  v13 = 1;
  sub_20C4A3784(a3, v15);
  sub_20C5126F4(v5, v6, &v8);
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v16 = v13;
  v15[0] = v8;
  v15[1] = v9;
  return sub_20C515440(v15);
}

uint64_t sub_20C5133F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = sub_20C59F34C();
  if (!v7)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_20C513474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 112);
  if (*(v10 + 16) && (v11 = sub_20C495E94(a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = *(v13 + 16);
  }

  else
  {
    swift_endAccess();
    v14 = 0;
  }

  v15 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v15;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v16 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v16;
  result = sub_20C513554(v18, a3, a4);
  *a5 = v14;
  return result;
}

uint64_t sub_20C513554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v7;
  v20[4] = *(a1 + 64);
  v21 = *(a1 + 80);
  v8 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v8;
  sub_20C59F33C();
  swift_beginAccess();
  v9 = *(v3 + 112);
  if (*(v9 + 16) && (v10 = sub_20C495E94(v20), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v12 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A4FE0;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(inited + 32) = sub_20C51540C;
  *(inited + 40) = v14;
  v19 = v12;
  sub_20C494988(v20, &v18);

  sub_20C4A7394(inited);
  v15 = v19;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_20C493F24(v15, v20, isUniquelyReferenced_nonNull_native);
  sub_20C515440(v20);
  *(v4 + 112) = v19;
  return swift_endAccess();
}

uint64_t sub_20C5136EC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v33 = a3;
  v32 = sub_20C5A020C();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C5A023C();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  MEMORY[0x28223BE20](result);
  v23[-2] = v13;
  v23[-1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5660);
  sub_20C59F34C();

  result = aBlock[0];
  if (!aBlock[0])
  {
  }

  v23[1] = v12;
  v29 = *(aBlock[0] + 16);
  if (!v29)
  {
LABEL_7:
  }

  v14 = 0;
  v28 = aBlock[0] + 32;
  v27 = v36;
  v26 = (v6 + 8);
  v25 = (v8 + 8);
  v24 = a4 & 1;
  while (v14 < *(result + 16))
  {
    v15 = result;
    v16 = swift_allocObject();
    v34 = *(v28 + 16 * v14);
    *(v16 + 16) = v34;
    sub_20C479154(0, &qword_2810F3D90);
    swift_retain_n();
    v17 = sub_20C5A08EC();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20C5154B8;
    *(v18 + 24) = v16;
    v19 = v33;
    *(v18 + 32) = v33;
    *(v18 + 40) = v24;
    v36[2] = sub_20C4B4DC4;
    v36[3] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v36[0] = sub_20C4F8F74;
    v36[1] = &block_descriptor_57;
    v20 = _Block_copy(aBlock);
    sub_20C4B4DF8(v19);

    sub_20C5A022C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20C515544(&qword_2810F3E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    v21 = v31;
    v22 = v32;
    sub_20C5A0AEC();
    MEMORY[0x20F2FEDA0](0, v10, v21, v20);
    _Block_release(v20);

    (*v26)(v21, v22);
    (*v25)(v10, v30);
    result = v15;
    if (v29 == ++v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C513B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 112);
  if (*(v6 + 16) && (v7 = sub_20C495E94(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  swift_beginAccess();
  sub_20C494988(a2, &v11);
  sub_20C5266DC(0, a2);
  result = swift_endAccess();
  *a3 = v9;
  return result;
}

uint64_t sub_20C513C60(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = a4[3];
  v27 = a4[2];
  v28 = v15;
  v29 = a4[4];
  v16 = a4[1];
  v25 = *a4;
  v26 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v31 = 1;
  v30 = 1;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = *a4;
  *(v19 + 40) = a4[1];
  v21 = a4[3];
  *(v19 + 56) = a4[2];
  *(v19 + 72) = v21;
  *(v19 + 88) = a4[4];
  *(v19 + 24) = v20;
  v22 = *a5;
  *(v19 + 120) = a5[1];
  v23 = a5[3];
  *(v19 + 136) = a5[2];
  *(v19 + 152) = v23;
  *(v19 + 161) = *(a5 + 57);
  *(v19 + 16) = v18;
  *(v19 + 104) = v22;
  *(v19 + 184) = a6;
  *(v19 + 192) = a7;
  *(v19 + 200) = a8 & 1;
  sub_20C4A3784(a4, v32);
  sub_20C4A3784(a4, v32);

  sub_20C49508C(a5, v32);
  sub_20C512C34(&v25, sub_20C49B7B8, v17, sub_20C515604, v19);

  v32[2] = v27;
  v32[3] = v28;
  v32[4] = v29;
  v33 = v30;
  v32[0] = v25;
  v32[1] = v26;
  sub_20C515440(v32);
}

void *sub_20C513E3C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(unint64_t, char *, uint64_t), char a6)
{
  v63 = a4;
  v64 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v15);
  v62 = &v54 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(a2 + 72);
    v22 = *a2;
    v60 = result;
    v61 = v19;
    v23 = result[5];
    v24 = result[6];
    v25 = v21 / v22;
    __swift_project_boxed_opaque_existential_1(result + 2, v23);
    AssetClientProtocol.fetchArtwork(_:size:priority:cropCode:fileType:expirationPolicy:)(*a3, *(a3 + 8), v63, *(a3 + 32), *(a3 + 40), *(a3 + 48), *(a3 + 56), v64, v14, v21, v25, a6 & 1, v23, v24);
    v26 = swift_allocObject();
    v27 = *(a3 + 48);
    v26[3] = *(a3 + 32);
    v26[4] = v27;
    *(v26 + 73) = *(a3 + 57);
    v28 = *(a3 + 16);
    v26[1] = *a3;
    v26[2] = v28;
    v29 = v65;
    v30 = *(v65 + 16);
    v63 = (v65 + 16);
    v64 = v30;
    v30(v11, v14, v9);
    v31 = v9;
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v59 = *(v29 + 80);
    v55 = v32;
    v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v54 = v14;
    v58 = *(v29 + 32);
    v35 = v34 + v32;
    v36 = v31;
    v58(v35, v11, v31);
    v37 = (v34 + v33);
    *v37 = sub_20C51561C;
    v37[1] = v26;
    sub_20C49508C(a3, v66);
    v57 = sub_20C479154(0, &qword_2810F3D80);
    v38 = v62;
    sub_20C59EA9C();
    v39 = *(v29 + 8);
    v65 = v29 + 8;
    v56 = v39;
    v40 = v54;
    v41 = v36;
    v39(v54, v36);
    v42 = swift_allocObject();
    *(v42 + 16) = v60;
    v43 = *a2;
    *(v42 + 40) = *(a2 + 16);
    v44 = *(a2 + 48);
    *(v42 + 56) = *(a2 + 32);
    *(v42 + 72) = v44;
    *(v42 + 88) = *(a2 + 64);
    *(v42 + 24) = v43;
    v45 = v38;
    v46 = v38;
    v47 = v41;
    v64(v40, v45, v41);
    v48 = swift_allocObject();
    v58(v48 + v55, v40, v47);
    v49 = (v48 + v33);
    *v49 = sub_20C51563C;
    v49[1] = v42;

    sub_20C4A3784(a2, v66);
    v50 = v61;
    sub_20C59EA9C();
    v51 = v56;
    v56(v46, v47);
    v52 = sub_20C59EABC();
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    v52(sub_20C490920, v53);

    return v51(v50, v47);
  }

  return result;
}

uint64_t sub_20C514318(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_20C5A020C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A023C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = sub_20C49B7B8;
  *(v17 + 40) = v16;
  aBlock[4] = sub_20C5154F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_67_0;
  v18 = _Block_copy(aBlock);

  sub_20C5A022C();
  v20[1] = MEMORY[0x277D84F90];
  sub_20C515544(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

void sub_20C5145FC(void (*a1)(id, void), uint64_t a2, double a3, double a4)
{
  v8 = sub_20C5A020C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A023C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() configurationWithPointSize_];
  v16 = sub_20C5A036C();
  v17 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v17 && (v18 = [objc_opt_self() whiteColor], v43 = v13, v19 = v11, v20 = v8, v21 = v15, v22 = v12, v23 = a2, v24 = a1, v25 = v9, v26 = v18, v27 = objc_msgSend(v17, sel_imageWithTintColor_renderingMode_, v18, 1), v17, v26, v9 = v25, a1 = v24, a2 = v23, v12 = v22, v15 = v21, v8 = v20, v11 = v19, v13 = v43, v27))
  {
    v28 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    [v27 size];
    v30 = (a3 - v29) * 0.5;
    [v27 size];
    v32 = (a4 - v31) * 0.5;
    v33 = swift_allocObject();
    *(v33 + 16) = a3;
    *(v33 + 24) = a4;
    *(v33 + 32) = v30;
    *(v33 + 40) = v32;
    *(v33 + 48) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20C51550C;
    *(v34 + 24) = v33;
    v49 = sub_20C51551C;
    v50 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_20C50FFCC;
    v48 = &block_descriptor_82_0;
    v35 = _Block_copy(&aBlock);
    v36 = v27;

    v37 = [v28 imageWithActions_];
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
    }

    else
    {
      v38 = v37;
      a1(v37, 0);
    }
  }

  else
  {
    sub_20C479154(0, &qword_2810F3D90);
    v43 = sub_20C5A08EC();
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    *(v39 + 24) = a2;
    v49 = sub_20C515504;
    v50 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_20C4F8F74;
    v48 = &block_descriptor_73;
    v40 = _Block_copy(&aBlock);

    v41 = v44;
    sub_20C5A022C();
    aBlock = MEMORY[0x277D84F90];
    sub_20C515544(&qword_2810F3E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    sub_20C5A0AEC();
    v42 = v43;
    MEMORY[0x20F2FEDA0](0, v41, v11, v40);
    _Block_release(v40);

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v41, v12);
  }
}

void sub_20C514BD4(void (*a1)(void *, uint64_t))
{
  v2 = sub_20C59D9DC();
  sub_20C515544(&qword_27C7C5668, MEMORY[0x277D50230]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D50200], v2);
  a1(v3, 1);
}

id sub_20C514CB8(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  [v12 setFill];

  [a1 fillRect_];
  [a2 size];

  return [a2 drawInRect:0 blendMode:a5 alpha:{a6, v13, v14, 0.1}];
}

id sub_20C514DA0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

BOOL sub_20C514DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v23 = *(a1 + 32);
  v24 = v2;
  v4 = *(a1 + 48);
  v25 = *(a1 + 64);
  v5 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v28 = *(a2 + 32);
  v29 = v6;
  v8 = *(a2 + 48);
  v30 = *(a2 + 64);
  v9 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v9;
  v32[2] = v23;
  v32[3] = v4;
  v32[4] = *(a1 + 64);
  v32[0] = v22[0];
  v32[1] = v3;
  v38 = *(a2 + 64);
  v37 = v8;
  v36 = v28;
  v26 = *(a1 + 80);
  v31 = *(a2 + 80);
  v33 = *(a1 + 80);
  v39 = *(a2 + 80);
  v34 = v27[0];
  v35 = v7;
  if (v26)
  {
    if (v31)
    {
      v19[0] = v22[0];
      v10 = *(a1 + 32);
      v19[1] = *(a1 + 16);
      v19[2] = v10;
      v11 = *(a1 + 64);
      v19[3] = *(a1 + 48);
      v19[4] = v11;
      v12 = *(a2 + 48);
      v18[2] = *(a2 + 32);
      v18[3] = v12;
      v18[4] = *(a2 + 64);
      v13 = *(a2 + 16);
      v18[0] = *a2;
      v18[1] = v13;
      v14 = _s12SeymourMedia20ArtworkImageCacheKeyV2eeoiySbAC_ACtFZ_0(v19, v18);
      sub_20C494988(v27, v20);
      sub_20C494988(v22, v20);
      sub_20C496958(v32);
      return v14;
    }

    v15 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v15;
    v20[4] = *(a1 + 64);
    v21 = *(a1 + 80);
    v16 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v16;
    sub_20C4968E8(v20, v19);
LABEL_9:
    sub_20C494988(v27, v20);
    sub_20C496958(v32);
    return 0;
  }

  if (v31)
  {
    goto LABEL_9;
  }

  sub_20C496958(v32);
  return *(v22 + 1) == *(v27 + 1) && *v22 == *v27;
}

unint64_t sub_20C51503C()
{
  result = qword_2810F55E0;
  if (!qword_2810F55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F55E0);
  }

  return result;
}

id sub_20C5150A8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_20C515234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_20C51527C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

unint64_t sub_20C5152F8()
{
  result = qword_2810F55D8;
  if (!qword_2810F55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F55D8);
  }

  return result;
}

uint64_t sub_20C51534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
  }

  return result;
}

uint64_t sub_20C5154B8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_20C515544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_2Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t objectdestroy_95Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20C51570C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

id sub_20C51581C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v1 = sub_20C5A036C();
  v2 = [v0 initWithString_];

  [v2 setCharactersToBeSkipped_];
  v3 = [v2 string];
  sub_20C5A039C();

  v4 = sub_20C5A04AC();

  if (v4 < 7)
  {
    goto LABEL_8;
  }

  v5 = [v2 string];
  sub_20C5A039C();

  v6 = sub_20C5A04EC();

  sub_20C5A09DC();
  if (!v7)
  {
    goto LABEL_8;
  }

  if ((sub_20C5A09EC() ^ v6) >> 14)
  {
    goto LABEL_8;
  }

  sub_20C5A09EC();
  v8 = sub_20C5A0A0C();
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  if (qword_27C7C4118 != -1)
  {
    swift_once();
  }

  v12 = sub_20C59D19C();
  v13 = __swift_project_value_buffer(v12, qword_27C7CDF50);
  v20[2] = MEMORY[0x28223BE20](v13);

  v14 = sub_20C4E7710(sub_20C4E78E0, v20, v10, v11);
  v16 = v15;
  swift_bridgeObjectRelease_n();
  v17 = sub_20C4E73D0(v14, v16);

  if (!v17)
  {
    sub_20C5A09FC();
  }

  else
  {
LABEL_8:
    sub_20C4E760C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_20C515ABC(void *a1)
{
  if (qword_27C7C4100 != -1)
  {
    swift_once();
  }

  v2 = sub_20C59D19C();
  v3 = __swift_project_value_buffer(v2, qword_27C7CDF08);
  v4 = sub_20C5A0A0C();
  if (!v5)
  {
    return sub_20C5A0A2C();
  }

  v6 = v5;
  MEMORY[0x28223BE20](v4);
  v13[2] = v3;
  v8 = sub_20C4E7710(sub_20C4E76F0, v13, v7, v6);
  v10 = v9;

  LOBYTE(v6) = sub_20C4E73D0(v8, v10);

  if (v6)
  {
    return sub_20C5A0A2C();
  }

  v12 = [a1 string];
  sub_20C5A039C();

  sub_20C5A09EC();
  sub_20C5A04EC();

  sub_20C5A09FC();
  return 0;
}

void sub_20C515C3C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5698);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v94 - v10;
  if (sub_20C5A056C())
  {

    v12 = sub_20C5A04AC();
    sub_20C4BF9C8(v12, a1, a2);
    v14 = v13;

    v15 = sub_20C5A0A5C();
    if (v16)
    {
      v15 = v14;
    }

    if (v14 >> 14 >= v15 >> 14)
    {
      v17 = sub_20C5A0A7C();
      v19 = v18;
      v21 = v20;
      v22 = a3;
      v24 = v23;

      v25 = MEMORY[0x20F2FE910](v17, v19, v21, v24);
      v27 = v26;
      a3 = v22;

      v28 = 0;
      v29 = 0;
      v30 = 0uLL;
      v31 = 2;
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if ((sub_20C5A056C() & 1) == 0)
    {
      v111 = a1;
      v112 = a2;
      v109 = 0x203E2D2D20;
      v110 = 0xE500000000000000;
      v113 = sub_20C5173F4();
      if ((sub_20C5A0AAC() & 1) == 0)
      {
        sub_20C4E760C();
        swift_allocError();
        *v81 = 1;
        swift_willThrow();
        return;
      }

      v46 = objc_allocWithZone(MEMORY[0x277CCAC80]);
      v98 = a1;
      v99 = a2;
      v47 = sub_20C5A036C();
      v4 = [v46 initWithString_];

      if (qword_27C7C4100 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_46;
    }

    v32 = sub_20C5A04AC();
    sub_20C4BF9C8(v32, a1, a2);
    v34 = v33;

    v35 = sub_20C5A0A5C();
    if (v36)
    {
      v35 = v34;
    }

    if (v34 >> 14 >= v35 >> 14)
    {
      v37 = sub_20C5A0A7C();
      v39 = v38;
      v41 = v40;
      v42 = a3;
      v44 = v43;

      v25 = MEMORY[0x20F2FE910](v37, v39, v41, v44);
      v27 = v45;
      a3 = v42;

      v28 = 0;
      v29 = 0;
      v30 = 0uLL;
      v31 = 1;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_14:
  v104 = sub_20C59D19C();
  v48 = __swift_project_value_buffer(v104, qword_27C7CDF08);
  v49 = sub_20C59D16C();
  [v4 setCharactersToBeSkipped_];

  v50 = sub_20C5A0A2C();
  v96 = 0u;
  v52 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
  if (!v51)
  {
    v25 = 0;
    v82 = 1;
    v101 = 0xE000000000000000;
    goto LABEL_38;
  }

  v53 = v50;
  v54 = v51;
  v95 = a3;
  v55 = sub_20C59D63C();
  v56 = 0;
  v107 = v55;
  v57 = *(v55 - 8);
  v58 = *(v57 + 56);
  v105 = v57 + 56;
  v106 = v58;
  v59 = 0xE000000000000000;
  v102 = v48;
  v103 = v4;
  do
  {
    v60 = HIBYTE(v59) & 0xF;
    v97 = v56;
    v61 = v56 & 0xFFFFFFFFFFFFLL;
    v101 = v59;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v60 = v61;
    }

    v108 = v60;
    v62 = v54;
    v63 = v53;
    while (1)
    {
      v111 = v63;
      v112 = v62;
      v109 = 0x203E2D2D20;
      v110 = 0xE500000000000000;
      v106(v11, 1, 1, v107);
      sub_20C5A0A9C();
      v65 = v64;
      sub_20C517448(v11);
      if (v65)
      {
        goto LABEL_28;
      }

      v66 = v5;
      v67 = objc_allocWithZone(MEMORY[0x277CCAC80]);
      v68 = sub_20C5A036C();
      v69 = [v67 initWithString_];

      v70 = sub_20C5A0A1C();
      v72 = v71;
      sub_20C5A04CC();
      sub_20C5A09FC();
      if (qword_27C7C4108 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v104, qword_27C7CDF20);
      v73 = sub_20C5A0A2C();
      v75 = v74;
      if (!v72 || !v74)
      {

        goto LABEL_27;
      }

      v76 = v73;
      sub_20C4E6AFC(v70, v72);
      if (v66)
      {

        v5 = 0;
LABEL_27:
        v4 = v103;
        goto LABEL_28;
      }

      v100 = v77;
      sub_20C4E6AFC(v76, v75);
      v5 = 0;
      v4 = v103;
      v94 = v79;

      if (*&v100 <= *&v94)
      {

        *&v92 = v100;
        *(&v92 + 1) = v94;
        v100 = v92;
        v93 = [v4 string];
        sub_20C5A039C();

        sub_20C5A09EC();
        sub_20C5A04BC();

        v52 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
        sub_20C5A09FC();
        v82 = 0;
        v96 = v100;
        a3 = v95;
        v25 = v97;
        goto LABEL_38;
      }

LABEL_28:
      if (!v108)
      {
        break;
      }

      v63 = sub_20C5A0A2C();
      v62 = v78;
      if (!v78)
      {
        v82 = 1;
        a3 = v95;
        v25 = v97;
        goto LABEL_36;
      }
    }

    v53 = sub_20C5A0A2C();
    v54 = v80;
    v59 = v62;
    v56 = v63;
  }

  while (v80);
  v82 = 1;
  v25 = v63;
  v101 = v62;
  a3 = v95;
LABEL_36:
  v52 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
LABEL_38:
  v83 = sub_20C5A09EC();
  v84 = [v4 v52[219]];
  v85 = sub_20C5A039C();
  v87 = v86;

  v88 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v88 >= v83 >> 14)
  {
    v89 = sub_20C5A059C();
    v28 = MEMORY[0x20F2FE910](v89);
    v29 = v90;

    if (v82)
    {

      sub_20C4E760C();
      swift_allocError();
      *v91 = 2;
      swift_willThrow();

      return;
    }

    v31 = 0;
    v27 = v101;
    v30 = v96;
LABEL_11:
    *a3 = v25;
    *(a3 + 8) = v27;
    *(a3 + 16) = v30;
    *(a3 + 32) = v28;
    *(a3 + 40) = v29;
    *(a3 + 48) = v31;
    return;
  }

  __break(1u);
}

uint64_t sub_20C5164DC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v5 = sub_20C5A0A0C();
  if (!v6)
  {
    v10 = v4;
    goto LABEL_73;
  }

  v7 = v5;
  v8 = v6;
  v9 = v4;
  v10 = v4;
  while (2)
  {
    v88 = v10;
    v81 = v2;
    v11 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
    while (1)
    {
      v12 = sub_20C5A09EC();
      v13 = [a1 v11[219]];
      v14 = sub_20C5A039C();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v12 >> 14 == 4 * v17)
      {
        swift_beginAccess();
        MEMORY[0x20F2FE9A0](v7, v8);
        swift_endAccess();

        swift_beginAccess();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_20C4EC62C(0, *(v9 + 2) + 1, 1, v9);
        }

        v10 = v88;
        v69 = *(v9 + 2);
        v68 = *(v9 + 3);
        if (v69 >= v68 >> 1)
        {
          v9 = sub_20C4EC62C((v68 > 1), v69 + 1, 1, v9);
        }

        *(v9 + 2) = v69 + 1;
        v70 = &v9[16 * v69];
        *(v70 + 4) = 0;
        *(v70 + 5) = 0xE000000000000000;
        swift_endAccess();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46D8);
        sub_20C47C934(&qword_27C7C5690, &qword_27C7C46D8);
        v71 = sub_20C5A030C();
        v73 = v72;

        sub_20C515C3C(v71, v73, v86);
        if (!v81)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_20C4ECA94(0, *(v10 + 2) + 1, 1, v10);
          }

          v75 = *(v10 + 2);
          v74 = *(v10 + 3);
          if (v75 >= v74 >> 1)
          {
            v10 = sub_20C4ECA94((v74 > 1), v75 + 1, 1, v10);
          }

          *(v10 + 2) = v75 + 1;
          v76 = &v10[56 * v75];
          v77 = v86[0];
          v78 = v86[1];
          v79 = v86[2];
          v76[80] = v87;
          *(v76 + 3) = v78;
          *(v76 + 4) = v79;
          *(v76 + 2) = v77;

          goto LABEL_73;
        }

        goto LABEL_67;
      }

      if (v7 == 10 && v8 == 0xE100000000000000 || (sub_20C5A0E9C() & 1) != 0)
      {
        break;
      }

      swift_beginAccess();
      MEMORY[0x20F2FE9A0](v7, v8);
      swift_endAccess();

LABEL_11:
      v7 = sub_20C5A0A0C();
      v8 = v18;
      if (!v18)
      {
        v10 = v88;
        goto LABEL_73;
      }
    }

    v19 = (v9 + 16);
    if (!*(v9 + 2))
    {
      swift_beginAccess();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_20C4EC62C(0, 1, 1, v9);
      }

      v11 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
      v25 = *(v9 + 2);
      v24 = *(v9 + 3);
      if (v25 >= v24 >> 1)
      {
        v9 = sub_20C4EC62C((v24 > 1), v25 + 1, 1, v9);
      }

      goto LABEL_34;
    }

    sub_20C5173F4();

    v80 = sub_20C5A0AAC();
    v20 = sub_20C5A0AAC();
    v10 = 0xE000000000000000;
    v21 = sub_20C5A0AAC();

    v22 = *v19;
    if (!*v19)
    {
      if ((v80 | v20))
      {
        goto LABEL_35;
      }

      v11 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
LABEL_30:
      swift_beginAccess();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_20C4EC62C(0, v22 + 1, 1, v9);
      }

      v25 = *(v9 + 2);
      v27 = *(v9 + 3);
      if (v25 >= v27 >> 1)
      {
        v9 = sub_20C4EC62C((v27 > 1), v25 + 1, 1, v9);
      }

LABEL_34:
      *(v9 + 2) = v25 + 1;
      v28 = &v9[16 * v25];
      *(v28 + 4) = 0;
      *(v28 + 5) = 0xE000000000000000;
      swift_endAccess();

      goto LABEL_11;
    }

    v23 = &v19[2 * v22];
    if (!*v23 && v23[1] == 0xE000000000000000)
    {
      v11 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
      if ((v80 | v20 | v21))
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    v26 = sub_20C5A0E9C();
    v11 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
    if ((v80 | v20))
    {
      goto LABEL_35;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v26)
    {
LABEL_35:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5680);
      sub_20C47C934(&qword_27C7C5688, &qword_27C7C5680);
      v29 = sub_20C5A030C();
      v31 = v30;

      sub_20C515C3C(v29, v31, v82);
      v2 = v81;
      if (!v81)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_20C4ECA94(0, *(v88 + 2) + 1, 1, v88);
        }

        v33 = *(v88 + 2);
        v32 = *(v88 + 3);
        if (v33 >= v32 >> 1)
        {
          v88 = sub_20C4ECA94((v32 > 1), v33 + 1, 1, v88);
        }

        v34 = v88;
        *(v88 + 2) = v33 + 1;
        v35 = &v34[56 * v33];
        v36 = v82[0];
        v37 = v82[1];
        v38 = v82[2];
        v35[80] = v83;
        *(v35 + 3) = v37;
        *(v35 + 4) = v38;
        *(v35 + 2) = v36;
        swift_beginAccess();

        v39 = MEMORY[0x277D84F90];

        v9 = sub_20C4EC62C(0, 1, 1, v39);
        v41 = *(v9 + 2);
        v40 = *(v9 + 3);
        if (v41 >= v40 >> 1)
        {
          v9 = sub_20C4EC62C((v40 > 1), v41 + 1, 1, v9);
        }

        *(v9 + 2) = v41 + 1;
        v42 = &v9[16 * v41];
        goto LABEL_43;
      }

LABEL_67:

      return v10;
    }

    if (v22 == 1)
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20C515808(v9);
      v9 = result;
      v45 = *(result + 16);
      if (!v45)
      {
        goto LABEL_77;
      }

LABEL_47:
      v46 = &v9[16 * v45 + 16];
      v47 = *v46;
      v48 = *(v46 + 1);
      *(v9 + 2) = v45 - 1;
      swift_endAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5680);
      sub_20C47C934(&qword_27C7C5688, &qword_27C7C5680);
      v49 = sub_20C5A030C();
      v51 = v50;

      sub_20C515C3C(v49, v51, v84);
      v2 = v81;
      if (!v81)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_20C4ECA94(0, *(v88 + 2) + 1, 1, v88);
        }

        v53 = *(v88 + 2);
        v52 = *(v88 + 3);
        if (v53 >= v52 >> 1)
        {
          v88 = sub_20C4ECA94((v52 > 1), v53 + 1, 1, v88);
        }

        v54 = v88;
        *(v88 + 2) = v53 + 1;
        v55 = &v54[56 * v53];
        v56 = v84[0];
        v57 = v84[1];
        v58 = v84[2];
        v55[80] = v85;
        *(v55 + 3) = v57;
        *(v55 + 4) = v58;
        *(v55 + 2) = v56;
        swift_beginAccess();

        v9 = sub_20C4EC62C(0, 1, 1, MEMORY[0x277D84F90]);
        v60 = *(v9 + 2);
        v59 = *(v9 + 3);
        v61 = v59 >> 1;
        v62 = v60 + 1;
        if (v59 >> 1 <= v60)
        {
          v9 = sub_20C4EC62C((v59 > 1), v60 + 1, 1, v9);
          v59 = *(v9 + 3);
          v61 = v59 >> 1;
        }

        *(v9 + 2) = v62;
        v63 = &v9[16 * v60];
        *(v63 + 4) = v47;
        *(v63 + 5) = v48;
        v64 = v48;
        v65 = v60 + 2;
        if (v61 < (v60 + 2))
        {
          v9 = sub_20C4EC62C((v59 > 1), v60 + 2, 1, v9);
        }

        *(v9 + 2) = v65;
        v66 = &v9[16 * v62];
        *(v66 + 4) = v47;
        *(v66 + 5) = v64;
        v67 = *(v9 + 3);

        if ((v60 + 3) > (v67 >> 1))
        {
          v9 = sub_20C4EC62C((v67 > 1), v60 + 3, 1, v9);
        }

        *(v9 + 2) = v60 + 3;
        v42 = &v9[16 * v65];
LABEL_43:
        *(v42 + 4) = 0;
        *(v42 + 5) = 0xE000000000000000;
        swift_endAccess();

        v7 = sub_20C5A0A0C();
        v8 = v43;
        v10 = v88;
        if (v43)
        {
          continue;
        }

LABEL_73:

        return v10;
      }

      v10 = v48;
      goto LABEL_67;
    }

    break;
  }

  v45 = *(v9 + 2);
  if (v45)
  {
    goto LABEL_47;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_20C517048(uint64_t a1)
{
  v3 = sub_20C5A03FC();
  MEMORY[0x28223BE20](v3 - 8);
  sub_20C5A03EC();
  sub_20C5A03BC();
  if (v4)
  {
    sub_20C5173F4();
    sub_20C5A0A8C();

    v5 = sub_20C5A0A8C();
    v7 = v6;

    v29[7] = v5;
    v29[8] = v7;
    v29[5] = 13;
    v29[6] = 0xE100000000000000;
    v29[3] = 10;
    v29[4] = 0xE100000000000000;
    sub_20C5A0A8C();
    a1 = v8;

    v9 = sub_20C51581C();
    if (v1)
    {
    }

    else
    {
      v11 = v9;

      a1 = sub_20C515ABC(v11);
      v13 = v29;
      sub_20C5A0A0C();
      v29[0] = v14;
      v15 = 0;
      v29[1] = sub_20C5A0A0C();
      v29[2] = v16;
      v17 = MEMORY[0x277D84F90];
LABEL_7:
      v18 = &v13[2 * v15];
      while (++v15 != 3)
      {
        v19 = v18 + 2;
        v20 = *v18;
        v18 += 2;
        if (v20)
        {
          v21 = *(v19 - 3);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = sub_20C4ECBB8(0, *(v17 + 2) + 1, 1, v17);
          }

          v24 = *(v17 + 2);
          v23 = *(v17 + 3);
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            v27 = sub_20C4ECBB8((v23 > 1), v24 + 1, 1, v17);
            v25 = v24 + 1;
            v17 = v27;
          }

          *(v17 + 2) = v25;
          v26 = &v17[16 * v24];
          *(v26 + 4) = v21;
          *(v26 + 5) = v20;
          v13 = v30;
          goto LABEL_7;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5678);
      swift_arrayDestroy();
      v28 = *(v17 + 2);

      if (v28 == 2)
      {
        sub_20C5164DC(v11);
      }
    }
  }

  else
  {
    sub_20C4E760C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_20C5173F4()
{
  result = qword_27C7C5670;
  if (!qword_27C7C5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5670);
  }

  return result;
}

uint64_t sub_20C517448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContentRating.init(label:)(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 2;
  }

  else
  {
    return 0x10002u >> (8 * a1);
  }
}

void CMTime.elapsedTime.getter(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v7 = sub_20C5A01CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  time.value = a1;
  time.timescale = v4;
  time.flags = v6;
  time.epoch = a3;
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds < 0.0)
  {
    v12 = Seconds;
    sub_20C59FE5C();
    v13 = sub_20C5A01BC();
    v14 = sub_20C5A089C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = v12;
      _os_log_impl(&dword_20C472000, v13, v14, "Received negative elapsed time from player with value: %{public}f", v15, 0xCu);
      MEMORY[0x20F2FFF90](v15, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t static ModalViewControllerDismissed.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C5176D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_20C51771C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MetricClickPublishing.publishClick(actionType:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:impressions:topicRoutingBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v32 = a6;
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C56A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v28 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C7C56A8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v28 - v22;
  v24 = sub_20C59E77C();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = sub_20C59D37C();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = sub_20C59E8AC();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  MetricClickPublishing.publishClick(actionType:actionContext:actionURL:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:offerType:impressions:marketingFields:marketingMessageIdentifier:marketingPlacement:topicRoutingBehavior:)(a1, v23, v20, a2, v29, v30, v31, v32, a7, 0, 0, a8, v17, 0, 0, 0, 0, a9, a10, a11);
  sub_20C477B50(v17, &qword_27C7C56A0);
  sub_20C477B50(v20, &qword_27C7C4AC0);
  return sub_20C477B50(v23, qword_27C7C56A8);
}

uint64_t MetricClickPublishing.publishClick(actionType:actionContext:actionURL:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:offerType:impressions:marketingFields:marketingMessageIdentifier:marketingPlacement:topicRoutingBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20)
{
  v25 = sub_20C589164(MEMORY[0x277D84F90]);
  MetricClickPublishing.publishClick(actionType:actionContext:actionURL:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:offerType:impressions:marketingFields:marketingMessageIdentifier:marketingPlacement:metadata:topicRoutingBehavior:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v25, a18, a19, a20);
}

uint64_t MetricClickPublishing.publishClick(actionType:actionContext:actionURL:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:offerType:impressions:marketingFields:marketingMessageIdentifier:marketingPlacement:metadata:topicRoutingBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, uint64_t a21)
{
  v103 = a8;
  v86 = a7;
  v94 = a6;
  v102 = a5;
  v89 = a4;
  v84 = a3;
  v81 = a2;
  v83 = a1;
  v110 = a21;
  v111 = a20;
  v108 = a19;
  v98 = a16;
  v96 = a15;
  v100 = a10;
  v91 = a9;
  v93 = a11;
  v90 = a12;
  v107 = a18;
  v87 = a17;
  v97 = a14;
  v85 = a13;
  v109 = type metadata accessor for MetricClickStreamOccurred();
  MEMORY[0x28223BE20](v109);
  v106 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C59E13C();
  MEMORY[0x28223BE20](v22 - 8);
  v105 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v24 - 8);
  v104 = v72 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v26 - 8);
  v101 = v72 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v28 - 8);
  v92 = v72 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E0);
  MEMORY[0x28223BE20](v30 - 8);
  v82 = v72 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4760);
  MEMORY[0x28223BE20](v32 - 8);
  v80 = v72 - v33;
  v79 = sub_20C59E58C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_20C59E26C();
  v95 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v88 = v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C56A0);
  MEMORY[0x28223BE20](v36 - 8);
  v76 = v72 - v37;
  v75 = sub_20C59E36C();
  v38 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v40 = v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5318);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = v72 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = v72 - v45;
  v72[1] = v72 - v45;
  v47 = sub_20C59E21C();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = v72 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C7C56A8);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v72 - v52;
  v74 = sub_20C59D88C();
  v112 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = v72 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C4775E4(v81, v53, qword_27C7C56A8);
  (*(v48 + 16))(v50, v83, v47);
  sub_20C4775E4(v84, v46, &qword_27C7C4AC0);
  sub_20C4775E4(v86, v43, &qword_27C7C5318);
  (*(v38 + 16))(v40, v89, v75);
  sub_20C4775E4(v85, v76, &qword_27C7C56A0);

  v55 = v73;
  sub_20C59D87C();
  v56 = v77;
  v57 = v74;
  (*(v112 + 16))(v77, v55, v74);
  (*(v78 + 104))(v56, *MEMORY[0x277D52120], v79);
  v58 = sub_20C59D79C();
  v59 = *(v58 - 8);
  v60 = v80;
  (*(v59 + 16))(v80, v103, v58);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = sub_20C59E3EC();
  (*(*(v61 - 8) + 56))(v82, 1, 1, v61);
  v62 = sub_20C59E40C();
  (*(*(v62 - 8) + 56))(v92, 1, 1, v62);
  v63 = v101;
  static MetricEnvironment.current()();
  v64 = sub_20C59E2AC();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
  (*(*(v65 - 8) + 56))(v104, 1, 1, v65);
  v66 = sub_20C59E5EC();
  (*(*(v66 - 8) + 56))(v105, 1, 1, v66);

  v67 = v88;
  sub_20C59E23C();
  v68 = v95;
  v69 = v106;
  v70 = v99;
  (*(v95 + 16))(v106, v67, v99);
  (*(v110 + 8))(v111);
  swift_getObjectType();
  sub_20C4A5D58();
  sub_20C59F5FC();
  swift_unknownObjectRelease();
  sub_20C4A5DB0(v69);
  (*(v68 + 8))(v67, v70);
  return (*(v112 + 8))(v55, v57);
}

uint64_t getEnumTagSinglePayload for RemoteCommand(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for RemoteCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_20C518728(uint64_t a1)
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

uint64_t sub_20C518740(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t SiriBeginSessionRequested.criteria.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t SiriBeginSessionRequested.init(criteria:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t static SiriBeginSessionRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static PlaybackTimelineEventStarted.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MarketingLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarketingLink() + 20);
  v4 = sub_20C59D37C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MarketingLink()
{
  result = qword_2810F5848;
  if (!qword_2810F5848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MarketingLink.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for MarketingLink();

  return sub_20C59D31C();
}

uint64_t MarketingLink.hash(into:)()
{
  MEMORY[0x20F2FF470](*v0);
  type metadata accessor for MarketingLink();
  sub_20C59D37C();
  sub_20C518DC8(&qword_27C7C4560, MEMORY[0x277CC9260]);
  return sub_20C5A02FC();
}

uint64_t MarketingLink.hashValue.getter()
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](*v0);
  type metadata accessor for MarketingLink();
  sub_20C59D37C();
  sub_20C518DC8(&qword_27C7C4560, MEMORY[0x277CC9260]);
  sub_20C5A02FC();
  return sub_20C5A0FFC();
}

uint64_t sub_20C518B70()
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](*v0);
  sub_20C59D37C();
  sub_20C518DC8(&qword_27C7C4560, MEMORY[0x277CC9260]);
  sub_20C5A02FC();
  return sub_20C5A0FFC();
}

uint64_t sub_20C518C1C()
{
  MEMORY[0x20F2FF470](*v0);
  sub_20C59D37C();
  sub_20C518DC8(&qword_27C7C4560, MEMORY[0x277CC9260]);
  return sub_20C5A02FC();
}

uint64_t sub_20C518CB0()
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](*v0);
  sub_20C59D37C();
  sub_20C518DC8(&qword_27C7C4560, MEMORY[0x277CC9260]);
  sub_20C5A02FC();
  return sub_20C5A0FFC();
}

uint64_t sub_20C518D58(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_20C59D31C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C518DC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C518E38()
{
  type metadata accessor for AMSParserURLType(319);
  if (v0 <= 0x3F)
  {
    sub_20C59D37C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20C518EBC(uint64_t a1)
{
  v2 = sub_20C59E1EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v10 = *(v3 + 16);
  v43 = a1;
  v10(v5, a1, v2);
  v11 = sub_20C5A01BC();
  v12 = sub_20C5A08AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v6;
    v15 = v14;
    v46 = v14;
    *v13 = 136446210;
    v16 = sub_20C59E19C();
    v41 = v7;
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_20C479640(v16, v18, &v46);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_20C472000, v11, v12, "MultiUser Session Updated: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F2FFF90](v15, -1, -1);
    MEMORY[0x20F2FFF90](v13, -1, -1);

    (*(v41 + 8))(v9, v42);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  v20 = sub_20C59E1CC();
  v22 = v21;
  v46 = v20;
  v47 = v21;
  v24 = v23 & 1;
  v48 = v23 & 1;
  v45 = 1;
  sub_20C4E1F78();
  sub_20C4E1FCC();
  v25 = sub_20C59DA7C();
  sub_20C481884(v20, v22, v24);
  v26 = sub_20C59E1CC();
  v28 = v27;
  v46 = v26;
  v47 = v27;
  v30 = v29 & 1;
  v48 = v29 & 1;
  v45 = 0;
  v31 = sub_20C59DA7C();
  sub_20C481884(v26, v28, v30);
  v32 = v44;
  v34 = v44[13];
  v33 = v44[14];

  v35 = sub_20C59E19C();
  if (!v33)
  {

    goto LABEL_13;
  }

  if (v34 == v35 && v33 == v36)
  {

    goto LABEL_10;
  }

  v37 = sub_20C5A0E9C();

  if ((v37 & 1) == 0)
  {
LABEL_13:
    v32[17] = 0;
    v32[18] = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v38 = sub_20C59E19C();
    goto LABEL_16;
  }

LABEL_10:
  if (v25)
  {
    goto LABEL_14;
  }

  if (v31)
  {
LABEL_15:
    v38 = 0;
    v39 = 0;
    goto LABEL_16;
  }

  v38 = 0;
  v39 = 0;
  v32[17] = 0;
  v32[18] = 0;
LABEL_16:
  v32[13] = v38;
  v32[14] = v39;
}

uint64_t sub_20C5192D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C59E8FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C5A01CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v12 = *(v5 + 16);
  v21[1] = a1;
  v12(v7, a1, v4);
  v13 = sub_20C5A01BC();
  v14 = sub_20C5A08AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21[0] = v2;
    v16 = v15;
    *v15 = 134349056;
    v17 = *(sub_20C59E8DC() + 16);

    (*(v5 + 8))(v7, v4);
    *(v16 + 1) = v17;
    _os_log_impl(&dword_20C472000, v13, v14, "MultiUser Session Identities Updated: %{public}ld", v16, 0xCu);
    v18 = v16;
    v2 = v21[0];
    MEMORY[0x20F2FFF90](v18, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  (*(v9 + 8))(v11, v8);
  v19 = *(sub_20C59E8DC() + 16);

  *(v2 + 136) = v19;
  if (*(v2 + 144) < v19)
  {
    *(v2 + 144) = v19;
  }

  return result;
}

uint64_t sub_20C519540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20C519664()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_20C59ECFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59DD0C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20C477B50(v7, &qword_27C7C5E20);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_20C59ECDC();
  v28 = v13;
  v29 = BYTE4(v13) & 1;
  v26 = 3;
  v27 = 1;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA6C())
  {
    sub_20C59FE3C();
    v14 = sub_20C5A01BC();
    v15 = sub_20C5A08AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20C472000, v14, v15, "Workout Session ended due to playback.", v16, 2u);
      MEMORY[0x20F2FFF90](v16, -1, -1);
    }

    (*(v25 + 8))(v4, v2);
    (*(v9 + 8))(v11, v8);
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
  }

  v17 = sub_20C59DC6C();
  v19 = *(v0 + 128);
  if (v19)
  {
    if (v17 == *(v0 + 120) && v19 == v18)
    {

      return (*(v9 + 8))(v11, v8);
    }

    v20 = sub_20C5A0E9C();

    if (v20)
    {
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
  }

  v21 = sub_20C59DC6C();
  v23 = v22;
  (*(v9 + 8))(v11, v8);
  *(v1 + 120) = v21;
  *(v1 + 128) = v23;
}

uint64_t sub_20C519A14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_20C59F88C();
    sub_20C59F89C();
    sub_20C59E3CC();
    v5 = sub_20C59E3EC();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC12SeymourMedia23MetricMetadataDecorator_badgingCounts;
    swift_beginAccess();
    sub_20C481748(v2, v4 + v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20C519B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37[1] = a4;
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5740);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4760);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C57A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v37 - v21;
  v23 = *a1;
  v24 = sub_20C59E25C();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v24;
  v26 = v37[0];
  sub_20C52101C(v23, sub_20C51CFC8, 0, isUniquelyReferenced_nonNull_native, &v40);
  if (v26)
  {

    __break(1u);
  }

  else
  {

    v27 = *(a2 + 112);
    v37[0] = 0;
    if (v27 && *(a2 + 128))
    {
      sub_20C59E3FC();
      v28 = sub_20C59E40C();
      (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
    }

    else
    {
      v29 = sub_20C59E40C();
      (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
    }

    v30 = sub_20C59E58C();
    (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
    v31 = sub_20C59D79C();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    v32 = sub_20C59E13C();
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    v33 = sub_20C59E2AC();
    (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
    v35 = v38;
    (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
    sub_20C59E24C();

    sub_20C477B50(v35, &qword_27C7C4748);
    sub_20C477B50(v10, &qword_27C7C4750);
    sub_20C477B50(v13, &qword_27C7C5740);
    sub_20C477B50(v16, &qword_27C7C4760);
    sub_20C477B50(v19, &unk_27C7C57A0);
    return sub_20C477B50(v22, &qword_27C7C4758);
  }

  return result;
}

uint64_t sub_20C51A094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v44 = a2;
  v50 = sub_20C59E18C();
  v42 = *(v50 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A20);
  v5 = *(v38 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A10);
  v47 = *(v40 - 8);
  v11 = v47[8];
  MEMORY[0x28223BE20](v40);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v37 - v13;
  MEMORY[0x28223BE20](v14);
  v45 = &v37 - v15;
  v41 = v2;
  sub_20C51A594(a1, &v37 - v15);
  sub_20C51C700(v10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20C51CABC;
  *(v16 + 24) = 0;
  v17 = v38;
  (*(v5 + 16))(v7, v10, v38);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v18, v7, v17);
  v21 = (v20 + v19);
  *v21 = sub_20C520C68;
  v21[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5738);
  sub_20C59EA9C();
  (*(v5 + 8))(v10, v17);
  v22 = v47;
  v38 = v47[2];
  v23 = v40;
  (v38)(v48, v45, v40);
  v24 = v42;
  (*(v42 + 16))(v49, v39, v50);
  v25 = *(v22 + 80);
  v26 = (v25 + 16) & ~v25;
  v39 = v26 + v11;
  v37 = v25 | 7;
  v27 = (v26 + v11 + *(v24 + 80)) & ~*(v24 + 80);
  v28 = (v43 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v22[4];
  v31 = v48;
  v30(v29 + v26, v48, v23);
  (*(v24 + 32))(v29 + v27, v49, v50);
  *(v29 + v28) = v41;
  (v38)(v31, v46, v23);
  v32 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v30(v33 + v26, v31, v23);
  v34 = (v33 + v32);
  *v34 = sub_20C520CD8;
  v34[1] = v29;

  sub_20C59EA9C();
  v35 = v47[1];
  v35(v46, v23);
  return (v35)(v45, v23);
}

uint64_t sub_20C51A594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23[1] = a2;
  v5 = sub_20C59E18C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_20C59DEBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59E17C();
  sub_20C59DE7C();
  (*(v9 + 8))(v11, v8);
  v12 = sub_20C59E96C();
  v14 = v13;
  if (v12 == sub_20C59E96C() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_20C5A0E9C();

    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_20C4775E4(v3 + 64, &v24, &qword_27C7C5760);
  if (v25)
  {
    sub_20C4780E8(&v24, v26);
    sub_20C477580(v26, &v24);
    (*(v6 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    v18 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v19 = swift_allocObject();
    sub_20C4780E8(&v24, v19 + 16);
    (*(v6 + 32))(v19 + v18, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v20 = swift_allocObject();
    *(v20 + 16) = "SeymourMedia/MetricMetadataDecorator.swift";
    *(v20 + 24) = 42;
    *(v20 + 32) = 2;
    *(v20 + 40) = 149;
    *(v20 + 48) = &unk_20C5A85B8;
    *(v20 + 56) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5738);
    sub_20C59EA9C();
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  sub_20C477B50(&v24, &qword_27C7C5760);
LABEL_11:
  v22 = sub_20C589164(MEMORY[0x277D84F90]);
  *(swift_allocObject() + 16) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5738);
  return sub_20C59EAAC();
}

uint64_t sub_20C51A924@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v30 = a2;
  v31 = a5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A10);
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = &v26 - v9;
  v10 = sub_20C59E18C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  (*(v11 + 16))(v14, a3, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v14, v10);
  *(v18 + v17) = v15;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20C520E1C;
  *(v19 + 24) = v18;
  v20 = v27;
  v21 = v29;
  (*(v7 + 16))(v27, v30, v29);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v20, v21);
  v24 = (v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20C521008;
  v24[1] = v19;

  return sub_20C59EA9C();
}

uint64_t sub_20C51ABE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5740);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v35 - v19;
  v21 = *a1;
  v22 = sub_20C59E15C();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v22;
  v24 = v35[1];
  sub_20C52101C(a2, sub_20C51CFC8, 0, isUniquelyReferenced_nonNull_native, &v38);
  if (v24)
  {

    __break(1u);
  }

  else
  {

    v25 = v38;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v25;
    sub_20C52101C(v21, sub_20C51CFC8, 0, v26, &v38);

    if (*(a3 + 112) && *(a3 + 128))
    {
      sub_20C59E3FC();
      v27 = sub_20C59E40C();
      (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
    }

    else
    {
      v28 = sub_20C59E40C();
      (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
    }

    v29 = sub_20C59DEBC();
    (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
    v30 = sub_20C59E13C();
    (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
    v31 = sub_20C59E2AC();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768);
    v33 = v36;
    (*(*(v32 - 8) + 56))(v36, 1, 1, v32);
    sub_20C59E14C();

    sub_20C477B50(v33, &qword_27C7C4748);
    sub_20C477B50(v11, &qword_27C7C4750);
    sub_20C477B50(v14, &qword_27C7C5740);
    sub_20C477B50(v17, &qword_27C7C4F68);
    return sub_20C477B50(v20, &qword_27C7C4758);
  }

  return result;
}

uint64_t sub_20C51B0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[62] = a2;
  v3[63] = a3;
  v3[61] = a1;
  v4 = sub_20C59E20C();
  v3[64] = v4;
  v3[65] = *(v4 - 8);
  v3[66] = swift_task_alloc();
  v5 = sub_20C5A01CC();
  v3[67] = v5;
  v3[68] = *(v5 - 8);
  v3[69] = swift_task_alloc();
  v6 = sub_20C59D4CC();
  v3[70] = v6;
  v3[71] = *(v6 - 8);
  v3[72] = swift_task_alloc();
  v7 = sub_20C59E32C();
  v3[73] = v7;
  v3[74] = *(v7 - 8);
  v3[75] = swift_task_alloc();
  v8 = sub_20C59E4DC();
  v3[76] = v8;
  v3[77] = *(v8 - 8);
  v3[78] = swift_task_alloc();
  v9 = sub_20C59DEBC();
  v3[79] = v9;
  v3[80] = *(v9 - 8);
  v3[81] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8);
  v3[82] = v10;
  v3[83] = *(v10 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5768);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5770);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5778);
  v3[92] = swift_task_alloc();
  v11 = sub_20C59D6AC();
  v3[93] = v11;
  v3[94] = *(v11 - 8);
  v3[95] = swift_task_alloc();
  v12 = sub_20C59D83C();
  v3[96] = v12;
  v3[97] = *(v12 - 8);
  v3[98] = swift_task_alloc();
  v13 = sub_20C59D46C();
  v3[99] = v13;
  v3[100] = *(v13 - 8);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v14 = sub_20C59D9CC();
  v3[104] = v14;
  v3[105] = *(v14 - 8);
  v3[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C51B62C, 0, 0);
}

uint64_t sub_20C51B62C()
{
  v1 = v0[62];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[107] = v4;
  *v4 = v0;
  v4[1] = sub_20C51B6E8;
  v5 = v0[106];

  return MEMORY[0x2821ADE88](v5, v2, v3);
}

uint64_t sub_20C51B6E8()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_20C51C30C;
  }

  else
  {
    v2 = sub_20C51B7FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C51B7FC()
{
  v100 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  sub_20C59D9BC();
  sub_20C59D65C();
  sub_20C59D82C();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_20C59D44C();
  sub_20C521814(&qword_27C7C5788, MEMORY[0x277CC9578]);
  if (sub_20C5A031C())
  {
    v7 = *(v0 + 848);
    v8 = *(v0 + 840);
    v9 = *(v0 + 832);
    v10 = *(v0 + 824);
    v11 = *(v0 + 816);
    v12 = *(v0 + 800);
    v13 = *(v0 + 792);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5748);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C5A4FE0;
    *(inited + 32) = 8;
    *(v0 + 875) = 0;
    sub_20C5A0B9C();
    v96 = sub_20C589164(inited);
    swift_setDeallocating();
    sub_20C477B50(inited + 32, &qword_27C7C5758);
    v15 = *(v12 + 8);
    v15(v11, v13);
    v15(v10, v13);
    (*(v8 + 8))(v7, v9);
LABEL_28:
    **(v0 + 488) = v96;

    v81 = *(v0 + 8);

    return v81();
  }

  result = sub_20C5A032C();
  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

  v17 = *(v0 + 816);
  v18 = *(v0 + 800);
  v19 = *(v0 + 792);
  v20 = *(v0 + 736);
  v94 = *(v0 + 728);
  v21 = *(v0 + 720);
  v22 = *(v0 + 712);
  v23 = *(v0 + 704);
  v24 = v18[2];
  v24(v21, *(v0 + 824), v19);
  v24(v21 + *(v23 + 48), v17, v19);
  sub_20C4775E4(v21, v22, &qword_27C7C5770);
  v25 = *(v23 + 48);
  v26 = v18[4];
  v26(v20, v22, v19);
  v27 = v18[1];
  v27(v22 + v25, v19);
  sub_20C4E1800(v21, v22, &qword_27C7C5770);
  v26(v20 + *(v94 + 36), v22 + *(v23 + 48), v19);
  v87 = v27;
  v27(v22, v19);
  sub_20C5217B0();
  v28 = sub_20C59D98C();
  v29 = v28;
  v30 = *(v28 + 16);
  if (v30)
  {
    v31 = *(v0 + 664);
    v32 = sub_20C4AB564(*(v28 + 16), 0);
    sub_20C4AE6CC(&v99, v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v30, v29);
    v34 = v33;

    result = sub_20C483B94();
    if (v34 != v30)
    {
LABEL_33:
      __break(1u);
      return result;
    }
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v35 = *(v0 + 864);
  v99 = v32;
  sub_20C51D2F4(&v99);
  if (!v35)
  {
    result = v99;
    v88 = v99[2];
    if (!v88)
    {
LABEL_21:

      v51 = 1;
LABEL_24:
      v56 = *(v0 + 696);
      v57 = *(v0 + 688);
      v58 = *(v0 + 616);
      v59 = *(v0 + 608);
      (*(v58 + 56))(v56, v51, 1, v59);
      sub_20C4775E4(v56, v57, &qword_27C7C5768);
      v60 = (*(v58 + 48))(v57, 1, v59);
      v61 = *(v0 + 848);
      v93 = *(v0 + 832);
      v95 = *(v0 + 840);
      v91 = *(v0 + 824);
      v62 = *(v0 + 816);
      if (v60 == 1)
      {
        v63 = *(v0 + 792);
        v64 = *(v0 + 736);
        v65 = *(v0 + 696);
        sub_20C477B50(*(v0 + 688), &qword_27C7C5768);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5748);
        v66 = swift_initStackObject();
        *(v66 + 16) = xmmword_20C5A4FE0;
        *(v66 + 32) = 8;
        *(v0 + 873) = 0;
        sub_20C5A0B9C();
        v96 = sub_20C589164(v66);
        swift_setDeallocating();
        sub_20C477B50(v66 + 32, &qword_27C7C5758);
        sub_20C477B50(v65, &qword_27C7C5768);
        sub_20C477B50(v64, &qword_27C7C5778);
        v67 = v62;
        v68 = v87;
        v87(v67, v63);
      }

      else
      {
        v69 = *(v0 + 808);
        v89 = *(v0 + 736);
        v84 = *(v0 + 792);
        v85 = *(v0 + 696);
        v70 = *(v0 + 616);
        v82 = *(v0 + 624);
        v83 = *(v0 + 608);
        v71 = *(v0 + 600);
        v86 = *(v0 + 816);
        v72 = *(v0 + 592);
        v73 = *(v0 + 584);
        v74 = *(v0 + 576);
        v75 = *(v0 + 568);
        v98 = *(v0 + 560);
        (*(v70 + 32))();
        sub_20C59E4CC();
        sub_20C59D99C();
        (*(v72 + 8))(v71, v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5748);
        v76 = swift_initStackObject();
        *(v76 + 16) = xmmword_20C5A68E0;
        *(v76 + 32) = 9;
        sub_20C59D97C();
        v77 = sub_20C59D48C();
        v79 = v78;
        (*(v75 + 8))(v74, v98);
        *(v0 + 456) = v77;
        *(v0 + 464) = v79;
        sub_20C5A0B9C();
        *(v76 + 80) = 8;
        *(v0 + 874) = 1;
        sub_20C5A0B9C();
        *(v76 + 128) = 11;
        sub_20C59D43C();
        sub_20C5A071C();
        *(v0 + 480) = v80;
        sub_20C5A0B9C();
        v96 = sub_20C589164(v76);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5758);
        swift_arrayDestroy();
        v63 = v84;
        v68 = v87;
        v87(v69, v84);
        (*(v70 + 8))(v82, v83);
        sub_20C477B50(v85, &qword_27C7C5768);
        sub_20C477B50(v89, &qword_27C7C5778);
        v87(v86, v84);
      }

      v68(v91, v63);
      (*(v95 + 8))(v61, v93);
      goto LABEL_28;
    }

    v36 = 0;
    v92 = *(v0 + 664);
    v90 = (*(v0 + 640) + 8);
    v37 = &qword_27C7C47E8;
    v38 = &unk_20C5A85F0;
    while (v36 < *(result + 16))
    {
      v39 = *(v0 + 648);
      v97 = *(v0 + 632);
      v40 = result;
      v41 = v37;
      v42 = v38;
      sub_20C4775E4(result + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v36, *(v0 + 672), v37);
      v43 = sub_20C59E7BC();
      v45 = v44;
      sub_20C59E17C();
      v46 = sub_20C59DE5C();
      v48 = v47;
      (*v90)(v39, v97);
      if (v43 == v46 && v45 == v48)
      {

LABEL_23:

        v52 = *(v0 + 696);
        v53 = *(v0 + 680);
        v54 = *(v0 + 616);
        v55 = *(v0 + 608);
        sub_20C4E1800(*(v0 + 672), v53, &qword_27C7C47E8);

        (*(v54 + 32))(v52, v53, v55);
        v51 = 0;
        goto LABEL_24;
      }

      v50 = sub_20C5A0E9C();

      if (v50)
      {
        goto LABEL_23;
      }

      ++v36;
      v37 = v41;
      v38 = v42;
      sub_20C477B50(*(v0 + 672), v41);
      result = v40;
      if (v88 == v36)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

uint64_t sub_20C51C30C()
{
  v26 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  (*(v2 + 104))(v1, *MEMORY[0x277D51188], v3);
  sub_20C521814(&qword_27C7C5780, MEMORY[0x277D51210]);
  v4 = sub_20C59E4EC();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    v5 = *(v0 + 864);
    sub_20C59FE3C();
    v6 = v5;
    v7 = sub_20C5A01BC();
    v8 = sub_20C5A089C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 552);
      v10 = *(v0 + 544);
      v11 = *(v0 + 536);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = MEMORY[0x20F2FF3F0](*(v0 + 440), *(v0 + 448));
      v16 = sub_20C479640(v14, v15, &v25);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20C472000, v7, v8, "MetricRouter::makeWorkoutPlansMetadata unknown error querying activeWorkoutPlan: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F2FFF90](v13, -1, -1);
      MEMORY[0x20F2FFF90](v12, -1, -1);

      (*(v10 + 8))(v9, v11);
    }

    else
    {
      v17 = *(v0 + 552);
      v18 = *(v0 + 544);
      v19 = *(v0 + 536);

      (*(v18 + 8))(v17, v19);
    }
  }

  v20 = *(v0 + 864);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A4FE0;
  *(inited + 32) = 8;
  *(v0 + 872) = 0;
  sub_20C5A0B9C();
  v22 = sub_20C589164(inited);
  swift_setDeallocating();
  sub_20C477B50(inited + 32, &qword_27C7C5758);

  **(v0 + 488) = v22;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20C51C700@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A20);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v25 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_20C59EEAC();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20C51CBF8;
  *(v13 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v2);
  v16 = (v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_20C521388;
  v16[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46D8);
  v17 = v25;
  sub_20C59EA9C();
  (*(v3 + 8))(v8, v2);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20C51CDCC;
  *(v18 + 24) = 0;
  v20 = v26;
  v19 = v27;
  (*(v9 + 16))(v26, v17, v27);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v20, v19);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20C5213F8;
  v23[1] = v18;
  sub_20C59EA9C();
  return (*(v9 + 8))(v17, v19);
}

unint64_t sub_20C51CABC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(*a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5748);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C5A84B0;
    *(inited + 32) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46D8);
    sub_20C52130C();
    sub_20C5A0B9C();
    *(inited + 80) = 2;
    sub_20C5A0B9C();
    v4 = sub_20C589164(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5758);
    result = swift_arrayDestroy();
  }

  else
  {
    result = sub_20C589164(MEMORY[0x277D84F90]);
    v4 = result;
  }

  *a2 = v4;
  return result;
}

void sub_20C51CBF8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v29 = sub_20C59E0FC();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v23 = a2;
    v24 = v2;
    v30 = MEMORY[0x277D84F90];
    sub_20C4C47CC(0, v8, 0);
    v9 = v30;
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v26 = *(v10 + 56);
    v27 = v11;
    v25 = (v10 - 8);
    do
    {
      v14 = v28;
      v13 = v29;
      v15 = v10;
      v27(v28, v12, v29);
      v16 = sub_20C59E0EC();
      v18 = v17;
      (*v25)(v14, v13);
      v30 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_20C4C47CC((v19 > 1), v20 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v12 += v26;
      --v8;
      v10 = v15;
    }

    while (v8);
    a2 = v23;
  }

  *a2 = v9;
}

uint64_t sub_20C51CDCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE3C();
  v9 = a1;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A089C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[1] = v2;
    v15 = v14;
    v22 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2FF3F0](v21[3], v21[4]);
    v18 = sub_20C479640(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20C472000, v10, v11, "Failed to fetch upNext items for metrics, error: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F2FFF90](v15, -1, -1);
    v19 = v13;
    a2 = v21[0];
    MEMORY[0x20F2FFF90](v19, -1, -1);
  }

  result = (*(v6 + 8))(v8, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20C51CFC8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_20C483FD8((a1 + 8), (a2 + 8));
  *a2 = v3;
  return result;
}

uint64_t sub_20C51CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_20C4775E4(a3, v23 - v10, &unk_27C7C5980);
  v12 = sub_20C5A06FC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20C477B50(v11, &unk_27C7C5980);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_20C5A06EC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_20C5A069C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_20C5A045C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_20C477B50(a3, &unk_27C7C5980);

    return v21;
  }

LABEL_8:
  sub_20C477B50(a3, &unk_27C7C5980);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void sub_20C51D2F4(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20C557EAC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20C51D3A8(v5);
  *a1 = v3;
}

void sub_20C51D3A8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C5A0E4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8);
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C51D78C(v8, v9, a1, v4);
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
    sub_20C51D4EC(0, v2, 1, a1);
  }
}

void sub_20C51D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    sub_20C59E4DC();
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v32 = -v17;
    v33 = v16;
    v19 = a1 - a3;
    v26 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v30 = v18;
    v31 = a3;
    v28 = v20;
    v29 = v19;
    v21 = v18;
    while (1)
    {
      sub_20C4775E4(v20, v15, &qword_27C7C47E8);
      sub_20C4775E4(v21, v12, &qword_27C7C47E8);
      sub_20C521814(&qword_27C7C5798, MEMORY[0x277D51FE0]);
      v22 = sub_20C5A031C();
      sub_20C477B50(v12, &qword_27C7C47E8);
      sub_20C477B50(v15, &qword_27C7C47E8);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v18 = v30 + v26;
        v19 = v29 - 1;
        v20 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_20C4E1800(v20, v34, &qword_27C7C47E8);
      swift_arrayInitWithTakeFrontToBack();
      sub_20C4E1800(v23, v21, &qword_27C7C47E8);
      v21 += v32;
      v20 += v32;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20C51D78C(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v104 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8);
  v8 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v100 - v11;
  MEMORY[0x28223BE20](v12);
  v119 = &v100 - v13;
  MEMORY[0x28223BE20](v14);
  v118 = &v100 - v15;
  v113 = a3;
  v16 = *(a3 + 8);
  v108 = v8;
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_95:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a3 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a3;
    }

    else
    {
LABEL_128:
      v95 = sub_20C553FB0(a3);
    }

    v120 = v95;
    a3 = *(v95 + 2);
    if (a3 >= 2)
    {
      while (*v113)
      {
        v96 = *&v95[16 * a3];
        v97 = v95;
        v98 = *&v95[16 * a3 + 24];
        sub_20C51E16C(*v113 + *(v108 + 72) * v96, *v113 + *(v108 + 72) * *&v95[16 * a3 + 16], *v113 + *(v108 + 72) * v98, a4);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_20C553FB0(v97);
        }

        if (a3 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a3];
        *v99 = v96;
        *(v99 + 1) = v98;
        v120 = v97;
        sub_20C553F24(a3 - 1);
        v95 = v120;
        a3 = *(v120 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v103 = a4;
  while (1)
  {
    v107 = v18;
    if (v17 + 1 >= v16)
    {
      v26 = v17 + 1;
    }

    else
    {
      v102 = v5;
      v114 = v16;
      v19 = *v113;
      v111 = v19;
      v20 = *(v8 + 72);
      v21 = v19 + v20 * (v17 + 1);
      v22 = v118;
      sub_20C4775E4(v21, v118, &qword_27C7C47E8);
      v23 = v119;
      sub_20C4775E4(v19 + v20 * v17, v119, &qword_27C7C47E8);
      a3 = sub_20C59E4DC();
      sub_20C521814(&qword_27C7C5798, MEMORY[0x277D51FE0]);
      LODWORD(v112) = sub_20C5A031C();
      sub_20C477B50(v23, &qword_27C7C47E8);
      sub_20C477B50(v22, &qword_27C7C47E8);
      v101 = v17;
      v24 = v17 + 2;
      v115 = v20;
      v25 = v111 + v20 * (v17 + 2);
      while (1)
      {
        v26 = v114;
        if (v114 == v24)
        {
          break;
        }

        v27 = v118;
        sub_20C4775E4(v25, v118, &qword_27C7C47E8);
        v28 = v119;
        sub_20C4775E4(v21, v119, &qword_27C7C47E8);
        v29 = sub_20C5A031C() & 1;
        sub_20C477B50(v28, &qword_27C7C47E8);
        sub_20C477B50(v27, &qword_27C7C47E8);
        ++v24;
        v25 += v115;
        v21 += v115;
        if ((v112 & 1) != v29)
        {
          v26 = v24 - 1;
          break;
        }
      }

      v8 = v108;
      v5 = v102;
      a4 = v103;
      v17 = v101;
      if (v112)
      {
        if (v26 < v101)
        {
          goto LABEL_125;
        }

        if (v101 < v26)
        {
          a3 = v115 * (v26 - 1);
          v30 = v26 * v115;
          v114 = v26;
          v31 = v101;
          v32 = v101 * v115;
          do
          {
            if (v31 != --v26)
            {
              v33 = *v113;
              if (!*v113)
              {
                goto LABEL_131;
              }

              sub_20C4E1800(v33 + v32, v106, &qword_27C7C47E8);
              if (v32 < a3 || v33 + v32 >= (v33 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v32 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_20C4E1800(v106, v33 + a3, &qword_27C7C47E8);
              v8 = v108;
            }

            ++v31;
            a3 -= v115;
            v30 -= v115;
            v32 += v115;
          }

          while (v31 < v26);
          v5 = v102;
          a4 = v103;
          v17 = v101;
          v26 = v114;
        }
      }
    }

    v34 = v113[1];
    if (v26 < v34)
    {
      if (__OFSUB__(v26, v17))
      {
        goto LABEL_124;
      }

      if (v26 - v17 < a4)
      {
        if (__OFADD__(v17, a4))
        {
          goto LABEL_126;
        }

        if (v17 + a4 < v34)
        {
          v34 = v17 + a4;
        }

        if (v34 < v17)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v26 != v34)
        {
          break;
        }
      }
    }

    a4 = v26;
    if (v26 < v17)
    {
      goto LABEL_123;
    }

LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v107;
    }

    else
    {
      v18 = sub_20C4EC940(0, *(v107 + 2) + 1, 1, v107);
    }

    v37 = *(v18 + 2);
    v36 = *(v18 + 3);
    a3 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v18 = sub_20C4EC940((v36 > 1), v37 + 1, 1, v18);
    }

    *(v18 + 2) = a3;
    v38 = &v18[16 * v37];
    v39 = v109;
    *(v38 + 4) = v17;
    *(v38 + 5) = v39;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (v37)
    {
      v40 = *v104;
      while (1)
      {
        a4 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v41 = *(v18 + 4);
          v42 = *(v18 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_52:
          if (v44)
          {
            goto LABEL_112;
          }

          v57 = &v18[16 * a3];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_115;
          }

          v63 = &v18[16 * a4 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_119;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              a4 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v67 = &v18[16 * a3];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_66:
        if (v62)
        {
          goto LABEL_114;
        }

        v70 = &v18[16 * a4];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_117;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_73:
        v78 = a4 - 1;
        if (a4 - 1 >= a3)
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

        if (!*v113)
        {
          goto LABEL_130;
        }

        v79 = v18;
        a3 = *&v18[16 * v78 + 32];
        v80 = *&v18[16 * a4 + 40];
        sub_20C51E16C(*v113 + *(v8 + 72) * a3, *v113 + *(v8 + 72) * *&v18[16 * a4 + 32], *v113 + *(v8 + 72) * v80, v40);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v80 < a3)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_20C553FB0(v79);
        }

        if (v78 >= *(v79 + 2))
        {
          goto LABEL_109;
        }

        v81 = &v79[16 * v78];
        *(v81 + 4) = a3;
        *(v81 + 5) = v80;
        v120 = v79;
        sub_20C553F24(a4);
        v18 = v120;
        a3 = *(v120 + 2);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v18[16 * a3 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_110;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_111;
      }

      v52 = &v18[16 * a3];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_113;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_116;
      }

      if (v56 >= v48)
      {
        v74 = &v18[16 * a4 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_120;
        }

        if (v43 < v77)
        {
          a4 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = v113[1];
    v17 = v109;
    a4 = v103;
    if (v109 >= v16)
    {
      goto LABEL_95;
    }
  }

  v109 = v34;
  v102 = v5;
  v82 = *v113;
  a3 = sub_20C59E4DC();
  v83 = *(v8 + 72);
  v84 = v82 + v83 * (v26 - 1);
  v85 = v26;
  v86 = -v83;
  v101 = v17;
  v87 = v17 - v85;
  v114 = v85;
  v115 = v82;
  v105 = v83;
  v88 = v82 + v85 * v83;
LABEL_85:
  v110 = v88;
  v111 = v87;
  v112 = v84;
  v89 = v84;
  while (1)
  {
    v90 = v118;
    sub_20C4775E4(v88, v118, &qword_27C7C47E8);
    v91 = v119;
    sub_20C4775E4(v89, v119, &qword_27C7C47E8);
    sub_20C521814(&qword_27C7C5798, MEMORY[0x277D51FE0]);
    v92 = sub_20C5A031C();
    sub_20C477B50(v91, &qword_27C7C47E8);
    sub_20C477B50(v90, &qword_27C7C47E8);
    if ((v92 & 1) == 0)
    {
LABEL_84:
      v84 = v112 + v105;
      v87 = v111 - 1;
      v88 = v110 + v105;
      if (++v114 != v109)
      {
        goto LABEL_85;
      }

      v17 = v101;
      v5 = v102;
      v8 = v108;
      a4 = v109;
      if (v109 < v101)
      {
        goto LABEL_123;
      }

      goto LABEL_32;
    }

    if (!v115)
    {
      break;
    }

    v93 = v116;
    sub_20C4E1800(v88, v116, &qword_27C7C47E8);
    swift_arrayInitWithTakeFrontToBack();
    sub_20C4E1800(v93, v89, &qword_27C7C47E8);
    v89 += v86;
    v88 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_84;
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
}

void sub_20C51E16C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8);
  MEMORY[0x28223BE20](v8);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v37 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = v23;
      v39 = v24;
      v40 = a4;
      v43 = v8;
      v38 = a1;
      do
      {
        v37 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v42 = v26;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v37;
            goto LABEL_58;
          }

          v29 = a3;
          v41 = v23;
          v30 = a3 + v24;
          v31 = v25 + v24;
          v32 = v44;
          sub_20C4775E4(v31, v44, &qword_27C7C47E8);
          v33 = v27;
          v34 = v27;
          v35 = v45;
          sub_20C4775E4(v34, v45, &qword_27C7C47E8);
          sub_20C59E4DC();
          sub_20C521814(&qword_27C7C5798, MEMORY[0x277D51FE0]);
          v36 = sub_20C5A031C();
          sub_20C477B50(v35, &qword_27C7C47E8);
          sub_20C477B50(v32, &qword_27C7C47E8);
          if (v36)
          {
            break;
          }

          v23 = v31;
          a3 = v30;
          if (v29 < v25 || v30 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v33;
            a1 = v38;
          }

          else
          {
            v27 = v33;
            a1 = v38;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v28 = v31 > v40;
          v24 = v39;
          v26 = v42;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        a3 = v30;
        if (v29 < v42 || v30 >= v42)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v41;
          a1 = v38;
          v24 = v39;
        }

        else
        {
          a2 = v33;
          v23 = v41;
          a1 = v38;
          v24 = v39;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v43 = v8;
      v41 = a3;
      v19 = v45;
      do
      {
        v20 = v44;
        v21 = a2;
        sub_20C4775E4(a2, v44, &qword_27C7C47E8);
        sub_20C4775E4(a4, v19, &qword_27C7C47E8);
        sub_20C59E4DC();
        sub_20C521814(&qword_27C7C5798, MEMORY[0x277D51FE0]);
        v22 = sub_20C5A031C();
        sub_20C477B50(v19, &qword_27C7C47E8);
        sub_20C477B50(v20, &qword_27C7C47E8);
        if (v22)
        {
          a2 += v13;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_20C51E8A8(&v48, &v47, &v46);
}

uint64_t sub_20C51E7C0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20C51E8A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8);
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

uint64_t sub_20C51E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_20C5A01CC();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v22 = sub_20C5A01BC();
  v23 = sub_20C5A08AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_20C5A0C1C();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = a5;
    v30 = a2;
    v31 = sub_20C479640(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    a5 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_20C472000, v22, v23, "Converting from Async-Await to Promise: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x20F2FFF90](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x20F2FFF90](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_20C5A06FC();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = a5;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_20C51CFF8(0, 0, v18, v49, v37);
}

uint64_t sub_20C51ED70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C5A01CC();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20C51EEF8;

  return v13(v8 + 16);
}

uint64_t sub_20C51EEF8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20C51F200;
  }

  else
  {
    v2 = sub_20C51F00C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C51F00C()
{
  v21 = v0;
  sub_20C59FE1C();
  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  if (v3)
  {
    v16 = v0[6];
    v18 = v0[12];
    v7 = v0[3];
    v17 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C5A0C1C();
    v12 = sub_20C479640(v10, v11, &v19);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v16;
    _os_log_impl(&dword_20C472000, v1, v2, "Finished A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v5 + 8))(v18, v17);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[7];
  v19 = v0[2];
  v20 = 0;

  v13(&v19);
  swift_bridgeObjectRelease_n();

  v14 = v0[1];

  return v14();
}