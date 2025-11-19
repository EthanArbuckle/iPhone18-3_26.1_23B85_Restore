uint64_t NLRoutingDecisionMessage.trpCandidateId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId + 8);

  return OUTLINED_FUNCTION_2_1();
}

void *NLRoutingDecisionMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return NLRoutingDecisionMessage.init(build:)(v1);
}

void *NLRoutingDecisionMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  v4 = type metadata accessor for NLRoutingDecisionMessage.Builder(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0x1FFFFFFFELL;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  v8[64] = 0;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  v8[88] = 15;
  *(v8 + 12) = 0;
  *(v8 + 13) = 0;
  v9 = *(v5 + 40);
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[*(v5 + 44)];
  *v11 = 0;
  v11[1] = 0;
  a1(v8);
  v12 = memcpy(__dst, v8, 0x41uLL);
  v13 = __dst[5];
  if ((__dst[5] & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL || (v14 = *(v8 + 10)) == 0)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v20 = sub_223200014();
    __swift_project_value_buffer(v20, qword_280FCE830);
    v21 = sub_223200004();
    v22 = sub_223200254();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_72();
      *v23 = 0;
      _os_log_impl(&dword_2230CE000, v21, v22, "NLRoutingDecisionMessage: Unable to create NLRoutingDecisionMessage, missing required fields", v23, 2u);
      MEMORY[0x223DD6780](v23, -1, -1);
    }

    sub_22315DFC8(v8);
    type metadata accessor for NLRoutingDecisionMessage(0);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v15 = *(v8 + 9);
    v16 = v2 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision;
    v17 = *(v8 + 1);
    *v16 = *v8;
    *(v16 + 1) = v17;
    *(v16 + 4) = *(v8 + 4);
    *(v16 + 5) = v13;
    *(v16 + 3) = *(v8 + 3);
    v16[64] = v8[64];
    v18 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId);
    *v18 = v15;
    v18[1] = v14;
    MEMORY[0x28223BE20](v12);
    v27[-2] = v8;
    sub_2230E3D68(__dst, v27, &qword_27D057DC8, &qword_22320E730);

    v19 = RequestMessageBase.init(build:)(sub_223164D4C);
    sub_22315DFC8(v8);
  }

  return v19;
}

uint64_t sub_22315DFC8(uint64_t a1)
{
  v2 = type metadata accessor for NLRoutingDecisionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22315E044(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 88);
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for NLRoutingDecisionMessage.Builder(0);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 36));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

uint64_t NLRoutingDecisionMessage.RoutingDecision.routingDecisionDebugString.getter()
{
  v1 = *v0;
  v2 = v0[5];
  result = 0x5869726973;
  switch((v2 >> 60) & 7)
  {
    case 1uLL:
      v4 = 0x525869726973;
      goto LABEL_11;
    case 2uLL:
      v4 = 0x527972657571;
LABEL_11:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7765000000000000;
      break;
    case 3uLL:
      result = 2019650145;
      break;
    case 4uLL:
      v5 = v0[4];
      v6 = v0[6] | v0[7];
      v7 = v0[3] | v0[2] | v0[1];
      if (!*(v0 + 64) && (v2 == 0x4000000000000000 ? (v8 = (v6 | v1 | v5 | v7) == 0) : (v8 = 0), v8))
      {
        result = 0x6C61465869726973;
      }

      else
      {
        v11 = v1 == 1 && (v6 | v5 | v7) == 0 && v2 == 0x4000000000000000;
        if (*(v0 + 64) == 0 && v11)
        {
          result = 0x72656E6E616C70;
        }

        else
        {
          result = 0x686372616573;
        }
      }

      break;
    default:
      return result;
  }

  return result;
}

BOOL NLRoutingDecisionMessage.RoutingDecision.shouldBeHandledBySiriX.getter()
{
  memcpy(__dst, v0, 0x41uLL);
  v1 = __dst[0];
  result = 1;
  switch((__dst[5] >> 60) & 7)
  {
    case 2:
      v3 = *(__dst[0] + 16);
      if (v3 >= 2)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v4 = sub_223200014();
        __swift_project_value_buffer(v4, qword_280FCE830);

        v5 = sub_223200004();
        v6 = sub_223200254();
        sub_2230E6410(__dst);
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v22 = v8;
          *v7 = 136315138;
          v9 = MEMORY[0x223DD5B40](v1, &type metadata for NLRoutingDecisionMessage.QueryRewrite);
          v11 = sub_2231A5D38(v9, v10, &v22);

          *(v7 + 4) = v11;
          OUTLINED_FUNCTION_38_0();
          _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v8);
          MEMORY[0x223DD6780](v8, -1, -1);
          OUTLINED_FUNCTION_51_0();
        }

        v3 = *(v1 + 16);
      }

      if (v3)
      {
        result = *(v1 + 64) < 0x40u;
      }

      else
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v18 = sub_223200014();
        __swift_project_value_buffer(v18, qword_280FCE830);
        v19 = sub_223200004();
        v20 = sub_223200254();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = OUTLINED_FUNCTION_72();
          *v21 = 0;
          _os_log_impl(&dword_2230CE000, v19, v20, ".queryRewrite case without any QueryRewrite subcomponent.", v21, 2u);
          MEMORY[0x223DD6780](v21, -1, -1);
        }

        result = 1;
      }

      break;
    case 3:
      goto LABEL_15;
    case 4:
      if (LOBYTE(__dst[8]) || (__dst[5] == 0x4000000000000000 ? (v17 = (__dst[6] | __dst[7] | __dst[0] | __dst[4] | __dst[3] | __dst[2] | __dst[1]) == 0) : (v17 = 0), !v17))
      {
LABEL_15:
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.redactedUtterance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.init(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *a1 = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a1 + 16) = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a1 + 32) = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a1 + 33) = v3;
  return result;
}

uint64_t static NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 33);
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_2232006B4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v10)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    return 0;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 == v11)
    {
LABEL_22:
      if (v7 == 2)
      {
        if (v12 != 2)
        {
          return 0;
        }
      }

      else if (v12 == 2 || ((v12 ^ v7) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v15 = OUTLINED_FUNCTION_33_0();
  result = 0;
  if ((v15 & 1) == 0)
  {
    return result;
  }

LABEL_19:
  if (((v6 ^ v11) & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22315E6C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000223224190 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001BLL && 0x80000002232241D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22315E824(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22315E8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22315E6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22315E8D0(uint64_t a1)
{
  v2 = sub_223164D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315E90C(uint64_t a1)
{
  v2 = sub_223164D54();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CB8, &qword_22320E7B8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_12();
  v12 = *(v0 + 33);
  v13 = *(v0 + 32);
  v11 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_223164D54();
  OUTLINED_FUNCTION_55();
  sub_2232007A4();
  OUTLINED_FUNCTION_37_1();
  sub_2232005C4();
  if (!v1)
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_77();
    sub_223164DA8();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
    sub_223164DFC();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_8_1();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CD0, &qword_22320E7C0);
  OUTLINED_FUNCTION_9(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v23 = v16[4];
  OUTLINED_FUNCTION_29(v16, v16[3]);
  sub_223164D54();
  sub_223200794();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v24 = sub_223200494();
    v31 = v25;
    OUTLINED_FUNCTION_54();
    v29 = sub_223200494();
    v30 = v26;
    OUTLINED_FUNCTION_77();
    sub_223164E50();
    OUTLINED_FUNCTION_22_4();
    sub_2232004C4();
    sub_223164EA4();
    OUTLINED_FUNCTION_22_4();
    sub_2232004C4();
    v27 = OUTLINED_FUNCTION_29_3();
    v28(v27);
    *v18 = v24;
    *(v18 + 8) = v31;
    *(v18 + 16) = v29;
    *(v18 + 24) = v30;
    *(v18 + 32) = a14;
    *(v18 + 33) = a12;

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

uint64_t static NLRoutingDecisionMessage.RoutingDecision.== infix(_:_:)(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_71(&v35);
  memcpy(__dst, a2, 0x41uLL);
  OUTLINED_FUNCTION_71(v45);
  memcpy(v46, a2, sizeof(v46));
  v3 = v38 | (v39 << 32);
  switch((v40 >> 60) & 7)
  {
    case 1uLL:
      if ((*(&__dst[2] + 1) & 0x7000000000000000) != 0x1000000000000000)
      {
        goto LABEL_48;
      }

      v4 = sub_22315F340(v35, *&__dst[0]);
      goto LABEL_19;
    case 2uLL:
      if ((*(&__dst[2] + 1) & 0x7000000000000000) != 0x2000000000000000)
      {
        goto LABEL_48;
      }

      sub_2230E6EA8(__dst, v27);
      sub_2230E6EA8(&v35, v27);
      v9 = OUTLINED_FUNCTION_2_1();
      v11 = sub_22315F3CC(v9, v10);
      goto LABEL_20;
    case 3uLL:
      if ((*(&__dst[2] + 1) & 0x7000000000000000) != 0x3000000000000000)
      {
        goto LABEL_48;
      }

      v27[0] = v35;
      v27[1] = v36;
      v28 = v37;
      v29 = v38;
      v30 = WORD2(v3);
      v31 = v40 & 0x8FFFFFFFFFFFFFFFLL;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v21 = __dst[0];
      v22 = __dst[1];
      v23 = *&__dst[2];
      v24 = *(&__dst[2] + 1) & 0x8FFFFFFFFFFFFFFFLL;
      v25 = __dst[3];
      v26 = __dst[4];
      sub_2230E6EA8(__dst, v19);
      sub_2230E6EA8(&v35, v19);
      sub_2230E6EA8(__dst, v19);
      sub_2230E6EA8(&v35, v19);
      v11 = static AjaxMetadata.== infix(_:_:)(v27, &v21);
      sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
      sub_2230E6410(__dst);
      sub_2230E6410(&v35);
      return v11 & 1;
    case 4uLL:
      v5 = v37 | (HIBYTE(v37) << 8) | (v3 << 16);
      v6 = v36 | *(&v35 + 1);
      if (!v43 && v40 == 0x4000000000000000 && !(v6 | v35 | *(&v36 + 1) | v41 | v42 | v5))
      {
        OUTLINED_FUNCTION_35_2();
        if (!v12)
        {
          goto LABEL_48;
        }

        if (LOBYTE(__dst[4]))
        {
          goto LABEL_48;
        }

        if (v7 != 0x4000000000000000)
        {
          goto LABEL_48;
        }

        v8 = vorrq_s8(*(__dst + 8), *(&__dst[1] + 8));
        if (*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *&__dst[3] | *(&__dst[3] + 1) | *&__dst[0])
        {
          goto LABEL_48;
        }

LABEL_47:
        sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
        v11 = 1;
        return v11 & 1;
      }

      if (v43 || (v40 == 0x4000000000000000 ? (v12 = v35 == 1) : (v12 = 0), !v12 || v6 | *(&v36 + 1) | v41 | v42 | v5))
      {
        OUTLINED_FUNCTION_35_2();
        if (!v12 || LOBYTE(__dst[4]) || __dst[3] != 0)
        {
          goto LABEL_48;
        }

        if (v15 != 0x4000000000000000 || *&__dst[0] != 2)
        {
          goto LABEL_48;
        }
      }

      else
      {
        OUTLINED_FUNCTION_35_2();
        if (!v12 || LOBYTE(__dst[4]) || __dst[3] != 0)
        {
          goto LABEL_48;
        }

        if (v13 != 0x4000000000000000 || *&__dst[0] != 1)
        {
          goto LABEL_48;
        }
      }

      v17 = vorrq_s8(*(__dst + 8), *(&__dst[1] + 8));
      if (!*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
      {
        goto LABEL_47;
      }

LABEL_48:
      sub_2230E6EA8(__dst, v27);
      sub_2230E6EA8(&v35, v27);
      sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
      v11 = 0;
      return v11 & 1;
    default:
      if ((HIBYTE(__dst[2]) & 0x70) != 0)
      {
        goto LABEL_48;
      }

      v21 = v35;
      v22 = v36;
      LOWORD(v23) = v37 & 0xFF01;
      v19[0] = __dst[0];
      v19[1] = __dst[1];
      v20 = __dst[2] & 0xFF01;
      v4 = static NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.== infix(_:_:)(&v21, v19);
LABEL_19:
      v11 = v4;
      sub_2230E6EA8(__dst, v27);
      sub_2230E6EA8(&v35, v27);
LABEL_20:
      sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
      return v11 & 1;
  }
}

uint64_t sub_22315F180(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_223200414())
  {
    if (a2 >> 62)
    {
      result = sub_223200414();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_223167B64();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223DD5CE0](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x223DD5CE0](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_2232002B4();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_22315F340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2232006B4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_22315F3CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    v13 = 0;
    return v13 & 1;
  }

  if (!v2 || result == a2)
  {
    v13 = 1;
    return v13 & 1;
  }

  v3 = (a2 + 64);
  v4 = (result + 64);
  while (1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v20[0] = v5;
    v20[1] = v6;
    v20[2] = v7;
    v20[3] = v8;
    v21 = v9;
    if (!v2)
    {
      break;
    }

    v14 = v2;
    v11 = *(v3 - 2);
    v15 = *(v3 - 1);
    v16 = *(v3 - 3);
    v18[0] = *(v3 - 4);
    v10 = v18[0];
    v18[1] = v16;
    v18[2] = v11;
    v18[3] = v15;
    v19 = *v3;
    v12 = v19;
    sub_2231654C8(v5, v6, v7, v8, v9);
    sub_2231654C8(v10, v16, v11, v15, v12);
    v17 = static NLRoutingDecisionMessage.QueryRewrite.== infix(_:_:)(v20, v18);
    sub_223167BA8(v10, v16, v11, v15, v12);
    result = sub_223167BA8(v5, v6, v7, v8, v9);
    v13 = v17;
    if (v17)
    {
      v4 += 40;
      v3 += 40;
      v2 = v14 - 1;
      if (v14 != 1)
      {
        continue;
      }
    }

    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22315F524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5869726973 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61465869726973 && a2 == 0xED00006B6361626CLL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7765525869726973 && a2 == 0xEC00000065746972;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7765527972657571 && a2 == 0xEC00000065746972;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 2019650145 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_2232006B4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22315F768(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22315F804(uint64_t a1)
{
  v2 = sub_223164EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F840(uint64_t a1)
{
  v2 = sub_223164EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315F87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22315F524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22315F8A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22315F760();
  *a1 = result;
  return result;
}

uint64_t sub_22315F8CC(uint64_t a1)
{
  v2 = sub_2230E702C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F908(uint64_t a1)
{
  v2 = sub_2230E702C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315F944(uint64_t a1)
{
  v2 = sub_223165048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F980(uint64_t a1)
{
  v2 = sub_223165048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315F9BC(uint64_t a1)
{
  v2 = sub_223164F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F9F8(uint64_t a1)
{
  v2 = sub_223164F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FA34(uint64_t a1)
{
  v2 = sub_223164FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FA70(uint64_t a1)
{
  v2 = sub_223164FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FAAC(uint64_t a1)
{
  v2 = sub_2231650F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FAE8(uint64_t a1)
{
  v2 = sub_2231650F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FB24(uint64_t a1)
{
  v2 = sub_2230E7228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FB60(uint64_t a1)
{
  v2 = sub_2230E7228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22315F768(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22315FBCC(uint64_t a1)
{
  v2 = sub_22316509C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FC08(uint64_t a1)
{
  v2 = sub_22316509C();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.RoutingDecision.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  a19 = v23;
  a20 = v24;
  v163 = v20;
  v26 = v25;
  v158 = v27;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D68, &qword_22320E820);
  OUTLINED_FUNCTION_9(v148);
  v154 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_3();
  v161 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D70, &qword_22320E828);
  v152 = OUTLINED_FUNCTION_9(v33);
  v153 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_3();
  v157 = v38;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D78, &qword_22320E830);
  OUTLINED_FUNCTION_9(v160);
  v150 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_3();
  v156 = v43;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D80, &qword_22320E838);
  OUTLINED_FUNCTION_9(v147);
  v146 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_3();
  v155 = v48;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D88, &qword_22320E840);
  OUTLINED_FUNCTION_9(v151);
  v149 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4_3();
  v159 = v53;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D90, &qword_22320E848);
  OUTLINED_FUNCTION_9(v145);
  v144 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v57);
  v59 = v139 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D98, &qword_22320E850);
  OUTLINED_FUNCTION_9(v60);
  v143 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_4_11();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DA0, &unk_22320E858);
  OUTLINED_FUNCTION_9(v65);
  v67 = v66;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1();
  v71 = v26[3];
  v72 = v26[4];
  v162 = v26;
  OUTLINED_FUNCTION_29(v26, v71);
  sub_2230E702C();
  OUTLINED_FUNCTION_50_0();
  v73 = v163;
  sub_223200794();
  if (v73)
  {
    goto LABEL_9;
  }

  v140 = v59;
  v141 = v21;
  v139[1] = v60;
  v74 = v160;
  v163 = v67;
  v75 = sub_223200594();
  sub_2230E0B80(v75, 0);
  v79 = v65;
  if (v77 == v78 >> 1)
  {
LABEL_8:
    v88 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v90 = v89;
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v90 = &type metadata for NLRoutingDecisionMessage.RoutingDecision;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v92 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v88);
    (*(v93 + 104))(v90);
    swift_willThrow();
    swift_unknownObjectRelease();
    v94 = OUTLINED_FUNCTION_26_1();
    v95(v94, v79);
LABEL_9:
    v96 = v162;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v96);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v142 = v22;
  v139[0] = 0;
  if (v77 < (v78 >> 1))
  {
    v80 = *(v76 + v77);
    sub_2230E0B40(v77 + 1);
    v82 = v81;
    v84 = v83;
    swift_unknownObjectRelease();
    if (v82 == v84 >> 1)
    {
      v85 = v158;
      switch(v80)
      {
        case 1:
          LOBYTE(v164) = 1;
          sub_2230E7228();
          v105 = v140;
          OUTLINED_FUNCTION_2_25();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1(&a11);
          v106(v105, v145);
          v107 = OUTLINED_FUNCTION_10_9();
          v108(v107);
          OUTLINED_FUNCTION_33_2();
          v125 = 0uLL;
          goto LABEL_15;
        case 2:
          LOBYTE(v164) = 2;
          sub_22316509C();
          OUTLINED_FUNCTION_2_25();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
          sub_223165264(&qword_27D058DB8);
          OUTLINED_FUNCTION_80();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1(&a16);
          v111 = OUTLINED_FUNCTION_47_2();
          v112(v111);
          v113 = OUTLINED_FUNCTION_16_5();
          v114(v113);
          LOBYTE(v128) = 0;
          v124 = 0;
          *&v125 = v164;
          v123 = 0x1000000000000000;
          break;
        case 3:
          LOBYTE(v164) = 3;
          sub_223165048();
          v101 = v155;
          OUTLINED_FUNCTION_2_25();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1(&a13);
          v102(v101, v147);
          v103 = OUTLINED_FUNCTION_10_9();
          v104(v103);
          OUTLINED_FUNCTION_33_2();
          v125 = xmmword_22320E720;
          goto LABEL_15;
        case 4:
          LOBYTE(v164) = 4;
          sub_223164FF4();
          v97 = v156;
          OUTLINED_FUNCTION_2_25();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1(&a17);
          v98(v97, v74);
          v99 = OUTLINED_FUNCTION_10_9();
          v100(v99);
          OUTLINED_FUNCTION_33_2();
          v125 = xmmword_22320E710;
LABEL_15:
          v126 = 0uLL;
          v123 = 0x4000000000000000;
          v122 = 0uLL;
          break;
        case 5:
          LOBYTE(v164) = 5;
          sub_223164F4C();
          OUTLINED_FUNCTION_2_25();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D38, &unk_22320E810);
          sub_223165198(&qword_27D058DA8, sub_223165210);
          OUTLINED_FUNCTION_80();
          swift_unknownObjectRelease();
          v129 = *(v153 + 8);
          v130 = OUTLINED_FUNCTION_47_2();
          v131(v130);
          v132 = OUTLINED_FUNCTION_16_5();
          v133(v132);
          LOBYTE(v128) = 0;
          v124 = 0;
          *&v125 = v164;
          v123 = 0x2000000000000000;
          break;
        case 6:
          LOBYTE(v164) = 6;
          sub_223164EF8();
          OUTLINED_FUNCTION_2_25();
          sub_223129A24();
          v109 = v148;
          OUTLINED_FUNCTION_22_4();
          sub_223200554();
          v110 = v163;
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_42_2();
          v135(v134, v109);
          v136 = *(v110 + 8);
          v137 = OUTLINED_FUNCTION_52_0();
          v138(v137);
          v125 = v164;
          v126 = v165;
          v127 = v166;
          v122 = v168;
          v121 = v169;
          v123 = v167 & 0x8000000000000001 | 0x3000000000000000;
          v128 = v166 >> 8;
          v124 = v166 & 0xFFFFFFFFFFFF0000;
          break;
        default:
          LOBYTE(v164) = 0;
          sub_2231650F0();
          OUTLINED_FUNCTION_2_25();
          sub_2231652D0();
          OUTLINED_FUNCTION_44_2();
          sub_223200554();
          v86 = (v143 + 8);
          v87 = (v163 + 8);
          swift_unknownObjectRelease();
          v115 = *v86;
          v116 = OUTLINED_FUNCTION_47_2();
          v117(v116);
          v118 = *v87;
          v119 = OUTLINED_FUNCTION_52_0();
          v120(v119);
          v123 = 0;
          v124 = 0;
          v125 = v164;
          v126 = v165;
          v127 = v166;
          LOBYTE(v128) = BYTE1(v166);
          break;
      }

      v96 = v162;
      *v85 = v125;
      *(v85 + 16) = v126;
      *(v85 + 32) = v124 | (v128 << 8) | v127;
      *(v85 + 40) = v123;
      *(v85 + 48) = v122;
      *(v85 + 64) = v121;
      goto LABEL_10;
    }

    v79 = v65;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_2231607B0(uint64_t a1)
{
  v2 = sub_223165324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231607EC(uint64_t a1)
{
  v2 = sub_223165324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223160828(uint64_t a1)
{
  v2 = sub_223165378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160864(uint64_t a1)
{
  v2 = sub_223165378();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.CorrectionOutcome.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DC8, &qword_22320E868);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_35_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DD0, &qword_22320E870);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = v1[3];
  v11 = v1[4];
  OUTLINED_FUNCTION_5_3(v1);
  sub_223165324();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_223165378();
  OUTLINED_FUNCTION_9_16();
  sub_2232005B4();
  v12 = OUTLINED_FUNCTION_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_1_10();
  v15(v14);
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.CorrectionOutcome.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DE8, &qword_22320E878);
  OUTLINED_FUNCTION_9(v3);
  v32 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DF0, &qword_22320E880);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  v12 = v2[3];
  v13 = v2[4];
  OUTLINED_FUNCTION_5_3(v2);
  sub_223165324();
  OUTLINED_FUNCTION_65();
  if (v0)
  {
    goto LABEL_8;
  }

  v14 = sub_223200594();
  sub_2230E0B80(v14, 0);
  if (v16 == v15 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_53();
  if (v18 == v19)
  {
    __break(1u);
    return;
  }

  v20 = OUTLINED_FUNCTION_75(v17);
  sub_2230E0B40(v20);
  OUTLINED_FUNCTION_81();
  if (v13 != v12 >> 1)
  {
LABEL_7:
    v21 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v23 = v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v23 = &type metadata for NLRoutingDecisionMessage.CorrectionOutcome;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v25 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v21);
    (*(v26 + 104))(v23);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = OUTLINED_FUNCTION_28();
    v28(v27);
LABEL_8:
    v31 = v2;
    goto LABEL_9;
  }

  sub_223165378();
  OUTLINED_FUNCTION_57();
  swift_unknownObjectRelease();
  (*(v32 + 8))(v13, v3);
  v29 = OUTLINED_FUNCTION_39_1();
  v30(v29);
  v31 = v2;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v31);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223160D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002232241F0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223224210 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_223160E0C(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_223160E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223160D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223160E74(uint64_t a1)
{
  v2 = sub_2231653CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160EB0(uint64_t a1)
{
  v2 = sub_2231653CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223160EEC(uint64_t a1)
{
  v2 = sub_223165474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160F28(uint64_t a1)
{
  v2 = sub_223165474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223160F64(uint64_t a1)
{
  v2 = sub_223165420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160FA0(uint64_t a1)
{
  v2 = sub_223165420();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.GenAIFallbackSuppressReason.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DF8, &qword_22320E888);
  v4 = OUTLINED_FUNCTION_9(v3);
  v29[3] = v5;
  v29[4] = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v29[2] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E00, &qword_22320E890);
  v11 = OUTLINED_FUNCTION_9(v10);
  v29[0] = v12;
  v29[1] = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_16();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E08, &qword_22320E898);
  OUTLINED_FUNCTION_9(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v23 = v29 - v22;
  v24 = *v0;
  v25 = v2[4];
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_2231653CC();
  sub_2232007A4();
  v26 = (v18 + 8);
  if (v24)
  {
    sub_223165420();
    sub_2232005B4();
    v27 = OUTLINED_FUNCTION_42_2();
  }

  else
  {
    sub_223165474();
    sub_2232005B4();
    v27 = OUTLINED_FUNCTION_25();
  }

  v28(v27);
  (*v26)(v23, v16);
  OUTLINED_FUNCTION_9_0();
}

uint64_t NLRoutingDecisionMessage.GenAIFallbackSuppressReason.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void NLRoutingDecisionMessage.GenAIFallbackSuppressReason.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v42 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E28, &qword_22320E8A0);
  OUTLINED_FUNCTION_9(v44);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E30, &qword_22320E8A8);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E38, &qword_22320E8B0);
  OUTLINED_FUNCTION_9(v12);
  v43 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_11();
  v18 = v3[3];
  v17 = v3[4];
  OUTLINED_FUNCTION_5_3(v3);
  sub_2231653CC();
  sub_223200794();
  if (v0)
  {
    goto LABEL_8;
  }

  v45 = v3;
  v19 = sub_223200594();
  sub_2230E0B80(v19, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v33 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v35 = &type metadata for NLRoutingDecisionMessage.GenAIFallbackSuppressReason;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v37 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v33);
    (*(v38 + 104))(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v1, v12);
    v3 = v45;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_9:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    sub_2230E0B40(v21 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    if (v25 == v27 >> 1)
    {
      if (v23)
      {
        sub_223165420();
        OUTLINED_FUNCTION_3();
        v28 = v42;
        v29 = v43;
        swift_unknownObjectRelease();
        v30 = OUTLINED_FUNCTION_26_1();
        v32 = v44;
      }

      else
      {
        sub_223165474();
        OUTLINED_FUNCTION_3();
        v28 = v42;
        v29 = v43;
        swift_unknownObjectRelease();
        v30 = OUTLINED_FUNCTION_26_1();
        v32 = v8;
      }

      v31(v30, v32);
      v39 = *(v29 + 8);
      v40 = OUTLINED_FUNCTION_47_2();
      v41(v40);
      *v28 = v23;
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static NLRoutingDecisionMessage.QueryRewrite.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  v46[0] = *a1;
  v46[1] = v2;
  v46[2] = v4;
  v46[3] = v5;
  v47 = v6;
  v48 = v8;
  v49 = v7;
  v50 = v9;
  v51 = v10;
  v52 = v11;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      if ((v11 & 0xC0) == 0x40)
      {
        v12 = v3;
        v13 = v2;
        if (v3 != v8 || v2 != v7)
        {
          v39 = sub_2232006B4();
          OUTLINED_FUNCTION_13_4();
          v15 = OUTLINED_FUNCTION_11_7();
          sub_2231654C8(v15, v16, v17, v18, v6);
          sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
          v19 = 0;
          if ((v39 & 1) == 0)
          {
            return v19 & 1;
          }

          goto LABEL_33;
        }

        v26 = v9;
        v27 = v10;
        goto LABEL_31;
      }
    }

    else if ((v11 & 0xC0) == 0x80)
    {
      v20 = v3 == v8 && v2 == v7;
      if (v20 || (sub_2232006B4() & 1) != 0)
      {
        if (v5)
        {
          if (v10)
          {
            if (v4 == v9 && v5 == v10)
            {
              v12 = OUTLINED_FUNCTION_21();
              v26 = v4;
              v27 = v5;
LABEL_31:
              sub_2231654C8(v12, v13, v26, v27, v11);
              v32 = OUTLINED_FUNCTION_11_7();
LABEL_32:
              sub_2231654C8(v32, v33, v34, v35, v6);
              sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
LABEL_33:
              v19 = 1;
              return v19 & 1;
            }

            v41 = sub_2232006B4();
            OUTLINED_FUNCTION_13_4();
            v22 = OUTLINED_FUNCTION_11_7();
            sub_2231654C8(v22, v23, v24, v25, v6);
            sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
            if (v41)
            {
              goto LABEL_33;
            }

            goto LABEL_29;
          }
        }

        else if (!v10)
        {
          v37 = OUTLINED_FUNCTION_21();
          sub_2231654C8(v37, v38, v9, 0, v11);
          v32 = v3;
          v33 = v2;
          v34 = v4;
          v35 = 0;
          goto LABEL_32;
        }
      }
    }

LABEL_28:
    OUTLINED_FUNCTION_13_4();
    v28 = OUTLINED_FUNCTION_11_7();
    sub_2231654C8(v28, v29, v30, v31, v6);
    sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
LABEL_29:
    v19 = 0;
    return v19 & 1;
  }

  if (v11 >= 0x40)
  {
    goto LABEL_28;
  }

  v44[0] = v3;
  v44[1] = v2;
  v44[2] = v4;
  v44[3] = v5;
  v45 = v6 & 1;
  v42[0] = v8;
  v42[1] = v7;
  v42[2] = v9;
  v42[3] = v10;
  v43 = v11 & 1;
  v40 = v4;
  v19 = static NLRoutingDecisionMessage.SiriXQueryRewrite.== infix(_:_:)(v44, v42);
  OUTLINED_FUNCTION_13_4();
  sub_2231654C8(v3, v2, v40, v5, v6);
  sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
  return v19 & 1;
}

uint64_t static NLRoutingDecisionMessage.SiriXQueryRewrite.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_2232006B4() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        if (v2 == v6 && v3 == v5)
        {
          return v4 ^ v7 ^ 1u;
        }

        OUTLINED_FUNCTION_2_1();
        if (OUTLINED_FUNCTION_33_0())
        {
          return v4 ^ v7 ^ 1u;
        }
      }
    }

    else if (!v5)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t static NLRoutingDecisionMessage.PlannerQueryRewrite.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_62();
  }

  else
  {
    return sub_2232006B4();
  }
}

uint64_t static NLRoutingDecisionMessage.SearchQueryRewrite.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2232006B4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        if (v2 == v5 && v3 == v4)
        {
          return 1;
        }

        OUTLINED_FUNCTION_79();
        if (OUTLINED_FUNCTION_33_0())
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_223161AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5869726973 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_223161BF8(char a1)
{
  if (!a1)
  {
    return 0x5869726973;
  }

  if (a1 == 1)
  {
    return 0x72656E6E616C70;
  }

  return 0x686372616573;
}

uint64_t sub_223161C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223161AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223161C78(uint64_t a1)
{
  v2 = sub_223165534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161CB4(uint64_t a1)
{
  v2 = sub_223165534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223161CF0(uint64_t a1)
{
  v2 = sub_223165630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161D2C(uint64_t a1)
{
  v2 = sub_223165630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223161D68(uint64_t a1)
{
  v2 = sub_223165588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161DA4(uint64_t a1)
{
  v2 = sub_223165588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223161DE0(uint64_t a1)
{
  v2 = sub_2231656D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161E1C(uint64_t a1)
{
  v2 = sub_2231656D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.QueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E48, &qword_22320E8C0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v35 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E50, &qword_22320E8C8);
  v34 = OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_16();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E58, &qword_22320E8D0);
  OUTLINED_FUNCTION_9(v16);
  v33 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E60, &qword_22320E8D8);
  v22 = OUTLINED_FUNCTION_9(v21);
  v42 = v23;
  v43 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_35_0();
  v40 = *v1;
  v41 = v1[1];
  v38 = v1[2];
  v39 = v1[3];
  v27 = *(v1 + 32);
  v29 = v4[3];
  v28 = v4[4];
  OUTLINED_FUNCTION_5_3(v4);
  sub_223165534();
  sub_2232007A4();
  if (v27 >> 6)
  {
    if (v27 >> 6 == 1)
    {
      sub_223165630();
      OUTLINED_FUNCTION_82();
      sub_223165684();
      v30 = v34;
      sub_223200654();
      v31 = OUTLINED_FUNCTION_25();
    }

    else
    {
      sub_223165588();
      OUTLINED_FUNCTION_82();
      OUTLINED_FUNCTION_76();
      sub_2231655DC();
      v30 = v37;
      sub_223200654();
      v32 = *(v36 + 8);
      v31 = v35;
    }

    v32(v31, v30);
    (*(v42 + 8))(v2, v0);
  }

  else
  {
    sub_2231656D8();
    OUTLINED_FUNCTION_22_4();
    sub_2232005B4();
    OUTLINED_FUNCTION_76();
    sub_22316572C();
    sub_223200654();
    (*(v33 + 8))(v0, v16);
    (*(v42 + 8))(v2, v43);
  }

  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.QueryRewrite.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v70 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E88, &qword_22320E8E0);
  OUTLINED_FUNCTION_9(v4);
  v69 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E90, &qword_22320E8E8);
  v68 = OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E98, &qword_22320E8F0);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_16();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EA0, &qword_22320E8F8);
  OUTLINED_FUNCTION_9(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_35_0();
  v23 = v2[3];
  v24 = v2[4];
  v71 = v2;
  v25 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_29(v25, v26);
  sub_223165534();
  sub_223200794();
  if (!v0)
  {
    v27 = sub_223200594();
    sub_2230E0B80(v27, 0);
    v29 = v17;
    if (v30 != v28 >> 1)
    {
      OUTLINED_FUNCTION_53();
      if (v33 == v34)
      {
        __break(1u);
        return;
      }

      v35 = *(v32 + v31);
      sub_2230E0B40(v31 + 1);
      v37 = v36;
      v39 = v38;
      swift_unknownObjectRelease();
      if (v37 == v39 >> 1)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            LOBYTE(v72) = 1;
            sub_223165630();
            OUTLINED_FUNCTION_9_16();
            sub_223200474();
            v40 = v70;
            sub_2231657D4();
            sub_223200554();
            swift_unknownObjectRelease();
            v49 = OUTLINED_FUNCTION_25();
            v50(v49, v68);
            v51 = *(v19 + 8);
            v52 = OUTLINED_FUNCTION_9_5();
            v53(v52);
            v54 = v72;
            v55 = v73;
            v56 = 0uLL;
            v57 = 64;
          }

          else
          {
            LOBYTE(v72) = 2;
            sub_223165588();
            OUTLINED_FUNCTION_9_16();
            sub_223200474();
            v40 = v70;
            sub_223165780();
            sub_223200554();
            swift_unknownObjectRelease();
            v63 = *(v69 + 8);
            v64 = OUTLINED_FUNCTION_21();
            v65(v64);
            v66 = OUTLINED_FUNCTION_1_10();
            v67(v66);
            v54 = v72;
            v55 = v73;
            v57 = 0x80;
            v56 = v74;
          }

          v62 = v71;
        }

        else
        {
          LOBYTE(v72) = 0;
          sub_2231656D8();
          OUTLINED_FUNCTION_9_16();
          sub_223200474();
          sub_223165828();
          OUTLINED_FUNCTION_44_2();
          sub_223200554();
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_25();
          v59(v58, v13);
          v60 = OUTLINED_FUNCTION_1_10();
          v61(v60);
          v54 = v72;
          v55 = v73;
          v56 = v74;
          v57 = v75;
          v62 = v71;
          v40 = v70;
        }

        *v40 = v54;
        *(v40 + 8) = v55;
        *(v40 + 16) = v56;
        *(v40 + 32) = v57;
        __swift_destroy_boxed_opaque_existential_1(v62);
        goto LABEL_12;
      }

      v29 = v17;
    }

    v41 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v43 = &type metadata for NLRoutingDecisionMessage.QueryRewrite;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v45 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v41);
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_26_1();
    v48(v47, v29);
  }

  __swift_destroy_boxed_opaque_existential_1(v71);
LABEL_12:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2231628B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1868852853 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22316292C(uint64_t a1)
{
  v2 = sub_22316587C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223162968(uint64_t a1)
{
  v2 = sub_22316587C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231629A4(uint64_t a1)
{
  v2 = sub_2231658D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231629E0(uint64_t a1)
{
  v2 = sub_2231658D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EC0, &qword_22320E900);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_35_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EC8, &qword_22320E908);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = v1[3];
  v11 = v1[4];
  OUTLINED_FUNCTION_5_3(v1);
  sub_22316587C();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_2231658D0();
  OUTLINED_FUNCTION_9_16();
  sub_2232005B4();
  v12 = OUTLINED_FUNCTION_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_1_10();
  v15(v14);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223162BB8()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EE0, &qword_22320E910);
  OUTLINED_FUNCTION_9(v3);
  v32 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EE8, &qword_22320E918);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  v12 = v2[3];
  v13 = v2[4];
  OUTLINED_FUNCTION_5_3(v2);
  sub_22316587C();
  OUTLINED_FUNCTION_65();
  if (v0)
  {
    goto LABEL_8;
  }

  v14 = sub_223200594();
  sub_2230E0B80(v14, 0);
  if (v16 == v15 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_53();
  if (v18 == v19)
  {
    __break(1u);
    return;
  }

  v20 = OUTLINED_FUNCTION_75(v17);
  sub_2230E0B40(v20);
  OUTLINED_FUNCTION_81();
  if (v13 != v12 >> 1)
  {
LABEL_7:
    v21 = sub_2232003A4();
    OUTLINED_FUNCTION_26();
    v23 = v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v23 = &type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v25 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v21);
    (*(v26 + 104))(v23);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = OUTLINED_FUNCTION_28();
    v28(v27);
LABEL_8:
    v31 = v2;
    goto LABEL_9;
  }

  sub_2231658D0();
  OUTLINED_FUNCTION_57();
  swift_unknownObjectRelease();
  (*(v32 + 8))(v13, v3);
  v29 = OUTLINED_FUNCTION_39_1();
  v30(v29);
  v31 = v2;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v31);
  OUTLINED_FUNCTION_9_0();
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.redactedUtterance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.Builder.redactedUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_223163018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000223224190 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000002232241B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_223163134(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](a1);
  return sub_223200764();
}

unint64_t sub_223163174(char a1)
{
  result = 0xD000000000000011;
  if (!a1)
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_2231631CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223163018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231631F4(uint64_t a1)
{
  v2 = sub_223165924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223163230(uint64_t a1)
{
  v2 = sub_223165924();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EF0, &qword_22320E920);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_12();
  v12 = *(v0 + 32);
  v11 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_223165924();
  OUTLINED_FUNCTION_55();
  sub_2232007A4();
  OUTLINED_FUNCTION_37_1();
  sub_2232005F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_77();
    sub_223165978();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  OUTLINED_FUNCTION_8_1();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EF8, &qword_22320E928);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v21 = v14[3];
  v22 = v14[4];
  OUTLINED_FUNCTION_5_3(v14);
  sub_223165924();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v23 = sub_2232004F4();
    v30 = v24;
    OUTLINED_FUNCTION_54();
    v28 = sub_223200494();
    v29 = v25;
    OUTLINED_FUNCTION_77();
    sub_2231659CC();
    OUTLINED_FUNCTION_44_2();
    sub_2232004C4();
    v26 = OUTLINED_FUNCTION_21_5();
    v27(v26, v17);
    *v16 = v23;
    *(v16 + 8) = v30;
    *(v16 + 16) = v28;
    *(v16 + 24) = v29;
    *(v16 + 32) = a12;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.PlannerQueryRewrite.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  a1(&v12);
  v3 = v13;
  if (v13)
  {
    *a2 = v12;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v6))
    {
      *OUTLINED_FUNCTION_72() = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_51_0();
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t NLRoutingDecisionMessage.PlannerQueryRewrite.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_223163798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000223220F70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223163838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223163798(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223163864(uint64_t a1)
{
  v2 = sub_223165A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231638A0(uint64_t a1)
{
  v2 = sub_223165A20();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.PlannerQueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F08, &qword_22320E930);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_223165A20();
  sub_2232007A4();
  sub_2232005F4();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.PlannerQueryRewrite.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F18, &qword_22320E938);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_11();
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_5_3(v3);
  sub_223165A20();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (!v0)
  {
    v14 = sub_2232004F4();
    v16 = v15;
    (*(v8 + 8))(v1, v6);
    *v5 = v14;
    v5[1] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

uint64_t NLRoutingDecisionMessage.SearchQueryRewrite.redactedUtterance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

double NLRoutingDecisionMessage.SearchQueryRewrite.init(build:)()
{
  v1 = OUTLINED_FUNCTION_74();
  v2(&v14, v1);
  v3 = v15;
  if (v15)
  {
    v4 = v16;
    *v0 = v14;
    *(v0 + 8) = v3;
    *(v0 + 16) = v4;
  }

  else
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_223200014();
    __swift_project_value_buffer(v5, qword_280FCE830);
    v6 = sub_223200004();
    v7 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v7))
    {
      *OUTLINED_FUNCTION_72() = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_51_0();
    }

    *&v4 = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  return *&v4;
}

uint64_t NLRoutingDecisionMessage.SearchQueryRewrite.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLRoutingDecisionMessage.SearchQueryRewrite.Builder.redactedUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_223163D68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000223224190 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_223163E3C(char a1)
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](a1 & 1);
  return sub_223200764();
}

unint64_t sub_223163E7C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_223163EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223163D68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223163EE0(uint64_t a1)
{
  v2 = sub_223165A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223163F1C(uint64_t a1)
{
  v2 = sub_223165A74();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.SearchQueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F20, &qword_22320E940);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_12();
  v7 = v2[4];
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_223165A74();
  OUTLINED_FUNCTION_55();
  sub_2232007A4();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
  }

  v8 = OUTLINED_FUNCTION_42_2();
  v9(v8, v3);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.SearchQueryRewrite.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F30, &qword_22320E948);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = v2[3];
  v12 = v2[4];
  OUTLINED_FUNCTION_5_3(v2);
  sub_223165A74();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_56();
    v13 = sub_2232004F4();
    v15 = v14;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_56();
    v16 = sub_223200494();
    v18 = v17;
    v19 = *(v7 + 8);
    v22 = v16;
    v20 = OUTLINED_FUNCTION_9_5();
    v21(v20);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v22;
    v4[3] = v18;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F38, &qword_22320E950);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = v3[3];
  v9 = v3[4];
  OUTLINED_FUNCTION_5_3(v3);
  sub_223165AC8();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for NLRoutingDecisionMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22311D8D0();
    OUTLINED_FUNCTION_9_16();
    sub_223200554();
    memcpy(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision, v18, 0x41uLL);
    LOBYTE(v17[0]) = 1;
    OUTLINED_FUNCTION_56();
    v12 = sub_2232004F4();
    v13 = (v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId);
    *v13 = v12;
    v13[1] = v14;
    sub_2230F7158(v3, v17);
    RequestMessageBase.init(from:)(v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_2231644EC()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058F40, &unk_22320E958);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_5_3(v3);
  sub_223165AC8();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  memcpy(v18, (v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), 0x41uLL);
  memcpy(v17, (v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), sizeof(v17));
  sub_2230E6EA8(v18, v16);
  sub_2230E6F8C();
  sub_223200654();
  if (v1)
  {
    memcpy(v16, v17, 0x41uLL);
    sub_2230E6410(v16);
  }

  else
  {
    memcpy(v16, v17, 0x41uLL);
    sub_2230E6410(v16);
    v14 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId);
    v15 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId + 8);
    OUTLINED_FUNCTION_36_2();
    sub_2232005F4();
    sub_2230D77A8(v3);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2231646B4()
{
  v0 = sub_223200464();

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

uint64_t sub_223164708(char a1)
{
  if (a1)
  {
    return 0x69646E6143707274;
  }

  else
  {
    return 0x44676E6974756F72;
  }
}

uint64_t sub_22316477C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2231646B4();
  *a2 = result;
  return result;
}

uint64_t sub_2231647AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223164708(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231647E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2231646B4();
  *a1 = result;
  return result;
}

uint64_t sub_223164808(uint64_t a1)
{
  v2 = sub_223165AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223164844(uint64_t a1)
{
  v2 = sub_223165AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLRoutingDecisionMessage.Builder.routingDecision.getter()
{
  OUTLINED_FUNCTION_71(v4);
  v0 = OUTLINED_FUNCTION_2_1();
  memcpy(v0, v1, 0x41uLL);
  return sub_2230E3D68(v4, &v3, &qword_27D057DC8, &qword_22320E730);
}

void *NLRoutingDecisionMessage.Builder.routingDecision.setter()
{
  OUTLINED_FUNCTION_71(v3);
  sub_2230E3C4C(v3, &qword_27D057DC8, &qword_22320E730);
  v0 = OUTLINED_FUNCTION_79();
  return memcpy(v0, v1, 0x41uLL);
}

uint64_t NLRoutingDecisionMessage.Builder.trpCandidateId.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLRoutingDecisionMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t NLRoutingDecisionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLRoutingDecisionMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t NLRoutingDecisionMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NLRoutingDecisionMessage.Builder(0) + 32);

  return sub_2230D4E04(a1, v3);
}

uint64_t NLRoutingDecisionMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for NLRoutingDecisionMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLRoutingDecisionMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLRoutingDecisionMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_223164C4C()
{
  OUTLINED_FUNCTION_2_3(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId + 8);
}

id NLRoutingDecisionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRoutingDecisionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223164D54()
{
  result = qword_27D058CC0;
  if (!qword_27D058CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CC0);
  }

  return result;
}

unint64_t sub_223164DA8()
{
  result = qword_280FCD540;
  if (!qword_280FCD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD540);
  }

  return result;
}

unint64_t sub_223164DFC()
{
  result = qword_27D058CC8;
  if (!qword_27D058CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CC8);
  }

  return result;
}

unint64_t sub_223164E50()
{
  result = qword_27D058CD8;
  if (!qword_27D058CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CD8);
  }

  return result;
}

unint64_t sub_223164EA4()
{
  result = qword_27D058CE0;
  if (!qword_27D058CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058CE0);
  }

  return result;
}

unint64_t sub_223164EF8()
{
  result = qword_27D058D30;
  if (!qword_27D058D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D30);
  }

  return result;
}

unint64_t sub_223164F4C()
{
  result = qword_280FCD608;
  if (!qword_280FCD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD608);
  }

  return result;
}

unint64_t sub_223164FA0()
{
  result = qword_280FCD548;
  if (!qword_280FCD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD548);
  }

  return result;
}

unint64_t sub_223164FF4()
{
  result = qword_27D058D40;
  if (!qword_27D058D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D40);
  }

  return result;
}

unint64_t sub_223165048()
{
  result = qword_27D058D48;
  if (!qword_27D058D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D48);
  }

  return result;
}

unint64_t sub_22316509C()
{
  result = qword_27D058D50;
  if (!qword_27D058D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D50);
  }

  return result;
}

unint64_t sub_2231650F0()
{
  result = qword_27D058D58;
  if (!qword_27D058D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D58);
  }

  return result;
}

unint64_t sub_223165144()
{
  result = qword_27D058D60;
  if (!qword_27D058D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058D60);
  }

  return result;
}

uint64_t sub_223165198(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058D38, &unk_22320E810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223165210()
{
  result = qword_27D058DB0;
  if (!qword_27D058DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DB0);
  }

  return result;
}

uint64_t sub_223165264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059880, &unk_223214380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231652D0()
{
  result = qword_27D058DC0;
  if (!qword_27D058DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DC0);
  }

  return result;
}

unint64_t sub_223165324()
{
  result = qword_27D058DD8;
  if (!qword_27D058DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DD8);
  }

  return result;
}

unint64_t sub_223165378()
{
  result = qword_27D058DE0;
  if (!qword_27D058DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058DE0);
  }

  return result;
}

unint64_t sub_2231653CC()
{
  result = qword_27D058E10;
  if (!qword_27D058E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E10);
  }

  return result;
}

unint64_t sub_223165420()
{
  result = qword_27D058E18;
  if (!qword_27D058E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E18);
  }

  return result;
}

unint64_t sub_223165474()
{
  result = qword_27D058E20;
  if (!qword_27D058E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E20);
  }

  return result;
}

uint64_t sub_2231654C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 6)
  {
    case 1:
      goto LABEL_3;
    case 3:
      return result;
    default:

LABEL_3:

      break;
  }

  return result;
}

unint64_t sub_223165534()
{
  result = qword_280FCD580;
  if (!qword_280FCD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD580);
  }

  return result;
}

unint64_t sub_223165588()
{
  result = qword_27D058E68;
  if (!qword_27D058E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E68);
  }

  return result;
}

unint64_t sub_2231655DC()
{
  result = qword_27D058E70;
  if (!qword_27D058E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E70);
  }

  return result;
}

unint64_t sub_223165630()
{
  result = qword_27D058E78;
  if (!qword_27D058E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E78);
  }

  return result;
}

unint64_t sub_223165684()
{
  result = qword_27D058E80;
  if (!qword_27D058E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058E80);
  }

  return result;
}

unint64_t sub_2231656D8()
{
  result = qword_280FCD588;
  if (!qword_280FCD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD588);
  }

  return result;
}

unint64_t sub_22316572C()
{
  result = qword_280FCD5B8;
  if (!qword_280FCD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5B8);
  }

  return result;
}

unint64_t sub_223165780()
{
  result = qword_27D058EA8;
  if (!qword_27D058EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058EA8);
  }

  return result;
}

unint64_t sub_2231657D4()
{
  result = qword_27D058EB0;
  if (!qword_27D058EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058EB0);
  }

  return result;
}

unint64_t sub_223165828()
{
  result = qword_27D058EB8;
  if (!qword_27D058EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058EB8);
  }

  return result;
}

unint64_t sub_22316587C()
{
  result = qword_27D058ED0;
  if (!qword_27D058ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058ED0);
  }

  return result;
}

unint64_t sub_2231658D0()
{
  result = qword_27D058ED8;
  if (!qword_27D058ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058ED8);
  }

  return result;
}

unint64_t sub_223165924()
{
  result = qword_280FCD5E0;
  if (!qword_280FCD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5E0);
  }

  return result;
}

unint64_t sub_223165978()
{
  result = qword_280FCD5C8;
  if (!qword_280FCD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5C8);
  }

  return result;
}

unint64_t sub_2231659CC()
{
  result = qword_27D058F00;
  if (!qword_27D058F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F00);
  }

  return result;
}

unint64_t sub_223165A20()
{
  result = qword_27D058F10;
  if (!qword_27D058F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F10);
  }

  return result;
}

unint64_t sub_223165A74()
{
  result = qword_27D058F28;
  if (!qword_27D058F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F28);
  }

  return result;
}

unint64_t sub_223165AC8()
{
  result = qword_280FCD5B0;
  if (!qword_280FCD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5B0);
  }

  return result;
}

unint64_t sub_223165B20()
{
  result = qword_27D058F48;
  if (!qword_27D058F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F48);
  }

  return result;
}

unint64_t sub_223165B78()
{
  result = qword_27D058F50;
  if (!qword_27D058F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F50);
  }

  return result;
}

unint64_t sub_223165BD0()
{
  result = qword_27D058F58;
  if (!qword_27D058F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F58);
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

uint64_t sub_223165CC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 34))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223165D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_223165D94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 33))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_223165DE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_223165E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223165EB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223165F04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_223165F8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_223165FCC(uint64_t result, int a2, int a3)
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

uint64_t sub_22316601C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223166070(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2231660FC()
{
  sub_2230D525C(319, &qword_280FCD5E8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCB0A8);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230F6D30();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *sub_223166258(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_68(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_223166510()
{
  result = qword_27D058F60;
  if (!qword_27D058F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F60);
  }

  return result;
}

unint64_t sub_223166568()
{
  result = qword_27D058F68;
  if (!qword_27D058F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F68);
  }

  return result;
}

unint64_t sub_2231665C0()
{
  result = qword_27D058F70;
  if (!qword_27D058F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F70);
  }

  return result;
}

unint64_t sub_223166618()
{
  result = qword_27D058F78;
  if (!qword_27D058F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F78);
  }

  return result;
}

unint64_t sub_223166670()
{
  result = qword_27D058F80;
  if (!qword_27D058F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F80);
  }

  return result;
}

unint64_t sub_2231666C8()
{
  result = qword_27D058F88;
  if (!qword_27D058F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F88);
  }

  return result;
}

unint64_t sub_223166720()
{
  result = qword_27D058F90;
  if (!qword_27D058F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F90);
  }

  return result;
}

unint64_t sub_223166778()
{
  result = qword_27D058F98;
  if (!qword_27D058F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058F98);
  }

  return result;
}

unint64_t sub_2231667D0()
{
  result = qword_27D058FA0;
  if (!qword_27D058FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FA0);
  }

  return result;
}

unint64_t sub_223166828()
{
  result = qword_27D058FA8;
  if (!qword_27D058FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FA8);
  }

  return result;
}

unint64_t sub_223166880()
{
  result = qword_27D058FB0;
  if (!qword_27D058FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FB0);
  }

  return result;
}

unint64_t sub_2231668D8()
{
  result = qword_27D058FB8;
  if (!qword_27D058FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FB8);
  }

  return result;
}

unint64_t sub_223166930()
{
  result = qword_27D058FC0;
  if (!qword_27D058FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FC0);
  }

  return result;
}

unint64_t sub_223166988()
{
  result = qword_27D058FC8;
  if (!qword_27D058FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FC8);
  }

  return result;
}

unint64_t sub_2231669E0()
{
  result = qword_27D058FD0;
  if (!qword_27D058FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FD0);
  }

  return result;
}

unint64_t sub_223166A38()
{
  result = qword_27D058FD8;
  if (!qword_27D058FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FD8);
  }

  return result;
}

unint64_t sub_223166A90()
{
  result = qword_27D058FE0;
  if (!qword_27D058FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FE0);
  }

  return result;
}

unint64_t sub_223166AE8()
{
  result = qword_280FCD5A0;
  if (!qword_280FCD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5A0);
  }

  return result;
}

unint64_t sub_223166B40()
{
  result = qword_280FCD5A8;
  if (!qword_280FCD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5A8);
  }

  return result;
}

unint64_t sub_223166B98()
{
  result = qword_27D058FE8;
  if (!qword_27D058FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FE8);
  }

  return result;
}

unint64_t sub_223166BF0()
{
  result = qword_27D058FF0;
  if (!qword_27D058FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FF0);
  }

  return result;
}

unint64_t sub_223166C48()
{
  result = qword_27D058FF8;
  if (!qword_27D058FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058FF8);
  }

  return result;
}

unint64_t sub_223166CA0()
{
  result = qword_27D059000;
  if (!qword_27D059000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059000);
  }

  return result;
}

unint64_t sub_223166CF8()
{
  result = qword_280FCD5D0;
  if (!qword_280FCD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5D0);
  }

  return result;
}

unint64_t sub_223166D50()
{
  result = qword_280FCD5D8;
  if (!qword_280FCD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5D8);
  }

  return result;
}

unint64_t sub_223166DA8()
{
  result = qword_27D059008;
  if (!qword_27D059008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059008);
  }

  return result;
}

unint64_t sub_223166E00()
{
  result = qword_27D059010;
  if (!qword_27D059010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059010);
  }

  return result;
}

unint64_t sub_223166E58()
{
  result = qword_27D059018;
  if (!qword_27D059018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059018);
  }

  return result;
}

unint64_t sub_223166EB0()
{
  result = qword_27D059020;
  if (!qword_27D059020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059020);
  }

  return result;
}

unint64_t sub_223166F08()
{
  result = qword_280FCD590;
  if (!qword_280FCD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD590);
  }

  return result;
}

unint64_t sub_223166F60()
{
  result = qword_280FCD598;
  if (!qword_280FCD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD598);
  }

  return result;
}

unint64_t sub_223166FB8()
{
  result = qword_280FCD550;
  if (!qword_280FCD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD550);
  }

  return result;
}

unint64_t sub_223167010()
{
  result = qword_280FCD558;
  if (!qword_280FCD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD558);
  }

  return result;
}

unint64_t sub_223167068()
{
  result = qword_280FCD560;
  if (!qword_280FCD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD560);
  }

  return result;
}

unint64_t sub_2231670C0()
{
  result = qword_280FCD568;
  if (!qword_280FCD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD568);
  }

  return result;
}

unint64_t sub_223167118()
{
  result = qword_280FCD570;
  if (!qword_280FCD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD570);
  }

  return result;
}

unint64_t sub_223167170()
{
  result = qword_280FCD578;
  if (!qword_280FCD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD578);
  }

  return result;
}

unint64_t sub_2231671C8()
{
  result = qword_27D059028;
  if (!qword_27D059028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059028);
  }

  return result;
}

unint64_t sub_223167220()
{
  result = qword_27D059030;
  if (!qword_27D059030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059030);
  }

  return result;
}

unint64_t sub_223167278()
{
  result = qword_27D059038;
  if (!qword_27D059038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059038);
  }

  return result;
}

unint64_t sub_2231672D0()
{
  result = qword_27D059040;
  if (!qword_27D059040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059040);
  }

  return result;
}

unint64_t sub_223167328()
{
  result = qword_27D059048;
  if (!qword_27D059048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059048);
  }

  return result;
}

unint64_t sub_223167380()
{
  result = qword_27D059050;
  if (!qword_27D059050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059050);
  }

  return result;
}

unint64_t sub_2231673D8()
{
  result = qword_27D059058;
  if (!qword_27D059058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059058);
  }

  return result;
}

unint64_t sub_223167430()
{
  result = qword_27D059060;
  if (!qword_27D059060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059060);
  }

  return result;
}

unint64_t sub_223167488()
{
  result = qword_27D059068;
  if (!qword_27D059068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059068);
  }

  return result;
}

unint64_t sub_2231674E0()
{
  result = qword_27D059070;
  if (!qword_27D059070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059070);
  }

  return result;
}

unint64_t sub_223167538()
{
  result = qword_280FCD678;
  if (!qword_280FCD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD678);
  }

  return result;
}

unint64_t sub_223167590()
{
  result = qword_280FCD680;
  if (!qword_280FCD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD680);
  }

  return result;
}

unint64_t sub_2231675E8()
{
  result = qword_280FCD650;
  if (!qword_280FCD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD650);
  }

  return result;
}

unint64_t sub_223167640()
{
  result = qword_280FCD658;
  if (!qword_280FCD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD658);
  }

  return result;
}

unint64_t sub_223167698()
{
  result = qword_280FCD668;
  if (!qword_280FCD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD668);
  }

  return result;
}

unint64_t sub_2231676F0()
{
  result = qword_280FCD670;
  if (!qword_280FCD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD670);
  }

  return result;
}

unint64_t sub_223167748()
{
  result = qword_280FCD610;
  if (!qword_280FCD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD610);
  }

  return result;
}

unint64_t sub_2231677A0()
{
  result = qword_280FCD618;
  if (!qword_280FCD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD618);
  }

  return result;
}

unint64_t sub_2231677F8()
{
  result = qword_280FCD620;
  if (!qword_280FCD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD620);
  }

  return result;
}

unint64_t sub_223167850()
{
  result = qword_280FCD628;
  if (!qword_280FCD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD628);
  }

  return result;
}

unint64_t sub_2231678A8()
{
  result = qword_280FCD5F8;
  if (!qword_280FCD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD5F8);
  }

  return result;
}

unint64_t sub_223167900()
{
  result = qword_280FCD600;
  if (!qword_280FCD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD600);
  }

  return result;
}

unint64_t sub_223167958()
{
  result = qword_280FCE820;
  if (!qword_280FCE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE820);
  }

  return result;
}

unint64_t sub_2231679B0()
{
  result = qword_280FCD630;
  if (!qword_280FCD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD630);
  }

  return result;
}

unint64_t sub_223167A08()
{
  result = qword_280FCD638;
  if (!qword_280FCD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD638);
  }

  return result;
}

unint64_t sub_223167A60()
{
  result = qword_280FCD640;
  if (!qword_280FCD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD640);
  }

  return result;
}

unint64_t sub_223167AB8()
{
  result = qword_27D059078;
  if (!qword_27D059078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059078);
  }

  return result;
}

unint64_t sub_223167B10()
{
  result = qword_27D059080;
  if (!qword_27D059080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059080);
  }

  return result;
}

unint64_t sub_223167B64()
{
  result = qword_27D059088;
  if (!qword_27D059088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D059088);
  }

  return result;
}

uint64_t sub_223167BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  switch(a5 >> 6)
  {
    case 1:
      goto LABEL_3;
    case 3:
      return result;
    default:

LABEL_3:

      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 176);
  v5 = *(v1 - 192);

  return sub_2232005B4();
}

void OUTLINED_FUNCTION_51_0()
{

  JUMPOUT(0x223DD6780);
}

uint64_t OUTLINED_FUNCTION_57()
{
  v2 = *(v0 - 104);

  return sub_223200474();
}

void OUTLINED_FUNCTION_59()
{
  v2 = *(v0 - 208);
  v1 = *(v0 - 200);
  *(v0 - 160) = *(v0 - 72);
  *(v0 - 152) = v1;
  v3 = *(v0 - 232);
  *(v0 - 144) = v2;
  *(v0 - 136) = v3;
}

BOOL OUTLINED_FUNCTION_61(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65()
{

  return sub_223200794();
}

void *OUTLINED_FUNCTION_71(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

void OUTLINED_FUNCTION_76()
{
  v1 = *(v0 - 144);
  *(v0 - 120) = *(v0 - 152);
  *(v0 - 112) = v1;
  v2 = *(v0 - 160);
  *(v0 - 104) = *(v0 - 168);
  *(v0 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_80()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_82()
{
  v2 = *(v0 - 128);

  return sub_2232005B4();
}

uint64_t sub_223167E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_223167EC0(v4);
}

uint64_t (*sub_223167ECC())()
{
  OUTLINED_FUNCTION_11();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_223167F28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_223167F60(v4);
}

uint64_t (*sub_223167F6C())()
{
  OUTLINED_FUNCTION_11();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

__n128 NLTRPCandidateMessage.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 16);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 20);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes);
  *a1 = result;
  a1[1].n128_u16[2] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t sub_223168014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230ED5A8();
  *a2 = result;
  return result;
}

unint64_t sub_223168044@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230ED5F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223168078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230ED5A8();
  *a1 = result;
  return result;
}

uint64_t sub_2231680A0(uint64_t a1)
{
  v2 = sub_22316A760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231680DC(uint64_t a1)
{
  v2 = sub_22316A760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLTRPCandidateMessage.NLTRPCandidateMessage.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

uint64_t NLTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return NLTRPCandidateMessage.init(build:)(v1);
}

uint64_t NLTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v171 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v155 - v4;
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v167 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v168 = v12 - v11;
  v13 = type metadata accessor for NLTRPCandidateMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v18 = (v17 - v16);
  v19 = MEMORY[0x277D84F98];
  v172 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse) = MEMORY[0x277D84F98];
  v173 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions;
  v174 = v1;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions) = v19;
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v20 = v14[8];
  v169 = v6;
  __swift_storeEnumTagSinglePayload(&v18[v20], 1, 1, v6);
  v21 = &v18[v14[9]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v18[v14[10]];
  *v22 = 0;
  v22[1] = 0;
  v23 = v14[11];
  *&v18[v23] = 0;
  v24 = v14[12];
  *&v18[v24] = 0;
  v25 = &v18[v14[13]];
  *v25 = 0;
  v25[1] = 0;
  v26 = v14[14];
  v27 = v18;
  v28 = &v18[v26];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 20) = 2;
  *(v28 + 16) = 0;
  v171(v27);
  p_cache = (&OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage + 16);
  if (*v27 == 15)
  {
    goto LABEL_15;
  }

  v30 = *(v27 + 2);
  if (!v30)
  {
    goto LABEL_15;
  }

  LODWORD(v171) = *v27;
  v165 = *(v27 + 1);
  v166 = v30;
  sub_2230D1480(&v27[v20], v5);
  v31 = v169;
  if (__swift_getEnumTagSinglePayload(v5, 1, v169) == 1)
  {
    sub_2230D69D4(v5);
LABEL_15:
    if (p_cache[239] != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    v41 = OUTLINED_FUNCTION_13_0();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v172;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v177 = v46;
      *v45 = 136446210;
      v47 = sub_2230F7898();
      v49 = sub_2231A5D38(v47, v48, &v177);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    sub_223168DCC(v27);
    v50 = v174;
    v51 = *(v174 + v44);

    v52 = *(v50 + v173);

    type metadata accessor for NLTRPCandidateMessage(0);
    v53 = *((*MEMORY[0x277D85000] & *v50) + 0x30);
    v54 = *((*MEMORY[0x277D85000] & *v50) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v32 = v167;
  (*(v167 + 32))(v168, v5, v31);
  v33 = v21[1];
  if (!v33)
  {
    (*(v32 + 8))(v168, v31);
LABEL_14:
    p_cache = &OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage.cache;
    goto LABEL_15;
  }

  v34 = v22[1];
  if (!v34)
  {
    (*(v167 + 8))(v168, v31);
    goto LABEL_14;
  }

  v35 = *&v27[v23];
  p_cache = &OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage.cache;
  if (!v35 || (v164 = *&v27[v24]) == 0)
  {
    (*(v167 + 8))(v168, v31);
    goto LABEL_15;
  }

  v160 = v33;
  v157 = *v21;
  v158 = *v22;
  v36 = v25[1];
  ObjectType = v27;
  v159 = v34;
  if (!v36)
  {
    isUniquelyReferenced_nonNull_native = v174;
    if (qword_280FCA778 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_78;
  }

  v155 = *v25;
  v156 = v36;

  isUniquelyReferenced_nonNull_native = v174;
LABEL_25:
  v63 = *(v28 + 16);
  v64 = *(v28 + 20);
  v65 = isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes;
  *v65 = *v28;
  *(v65 + 20) = v64;
  *(v65 + 16) = v63;
  v28 = v35 + 64;
  v66 = *(v35 + 64);
  v67 = *(v35 + 32);
  OUTLINED_FUNCTION_2_5();
  v70 = v69 & v68;
  isUniquelyReferenced_nonNull_native = (v71 + 63) >> 6;

  v72 = 0;
  v161 = v35 + 64;
  v162 = v35;
  v163 = isUniquelyReferenced_nonNull_native;
  if (v70)
  {
    goto LABEL_30;
  }

  while (1)
  {
LABEL_26:
    v73 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_73:
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
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_22:
      v57 = sub_223200014();
      __swift_project_value_buffer(v57, qword_280FCE830);
      v58 = sub_223200004();
      v59 = sub_223200254();
      v60 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2230CE000, v58, v59, "Warning: NLTRPCandidateMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v62, 2u);
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780]();
      }

      v156 = 0x80000002232216F0;
      v155 = 0xD000000000000024;
      goto LABEL_25;
    }

    if (v73 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v70 = *(v28 + 8 * v73);
    ++v72;
    if (v70)
    {
      v72 = v73;
      while (1)
      {
LABEL_30:
        v74 = *(v35 + 48);
        OUTLINED_FUNCTION_15_3();
        v77 = *v75;
        v76 = v75[1];
        v78 = *(v35 + 16);

        if (v78)
        {
          v79 = sub_22314C358(v77, v76);
          v80 = v77;
          v82 = v35;
          if (v81)
          {
            v83 = *(*(v35 + 56) + 8 * v79);
            v84 = v83;
          }

          else
          {
            v83 = 1;
          }
        }

        else
        {
          v82 = v35;
          v83 = 1;
          v80 = v77;
        }

        v85 = v172;
        v35 = v174;
        OUTLINED_FUNCTION_11();
        swift_beginAccess();
        if (v83 == 1)
        {
          v86 = sub_22314C358(v80, v76);
          v88 = v87;

          v35 = v82;
          if (v88)
          {
            v89 = v174;
            v90 = *(v174 + v85);
            swift_isUniquelyReferenced_nonNull_native();
            v176 = *(v89 + v85);
            v91 = v176;
            *(v89 + v85) = 0x8000000000000000;
            v92 = v91[3];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589A8, &qword_22320D028);
            v28 = v161;
            v35 = v162;
            sub_2232003D4();
            v93 = v176;
            v94 = *(v176[6] + 16 * v86 + 8);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B0, &qword_22320D030);
            sub_2232003F4();
            *(v89 + v85) = v93;
          }

          goto LABEL_47;
        }

        v95 = *(v35 + v85);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176 = *(v35 + v85);
        *(v35 + v85) = 0x8000000000000000;
        v96 = v80;
        sub_22314C358(v80, v76);
        OUTLINED_FUNCTION_5_16();
        if (__OFADD__(v99, v100))
        {
          goto LABEL_75;
        }

        v28 = v97;
        v101 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589A8, &qword_22320D028);
        if (sub_2232003D4())
        {
          v102 = sub_22314C358(v80, v76);
          v104 = v101;
          v105 = v101 & 1;
          v35 = v162;
          if (v105 != (v103 & 1))
          {
            goto LABEL_79;
          }

          v28 = v102;
          if ((v104 & 1) == 0)
          {
LABEL_42:
            v106 = v176;
            OUTLINED_FUNCTION_4_18(&v176[v28 >> 6]);
            v107 = (v106[6] + 16 * v28);
            *v107 = v96;
            v107[1] = v76;
            *(v106[7] + 8 * v28) = v83;
            v108 = v106[2];
            v109 = __OFADD__(v108, 1);
            v110 = v108 + 1;
            if (v109)
            {
              goto LABEL_77;
            }

            v106[2] = v110;
            goto LABEL_46;
          }
        }

        else
        {
          v111 = v101;
          v35 = v162;
          if ((v111 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v106 = v176;
        v112 = v176[7];
        v113 = *(v112 + 8 * v28);
        *(v112 + 8 * v28) = v83;

LABEL_46:
        v28 = v161;
        *(v174 + v172) = v106;
LABEL_47:
        v70 &= v70 - 1;
        swift_endAccess();
        isUniquelyReferenced_nonNull_native = v163;
        if (!v70)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v114 = v164;
  v115 = *(v164 + 64);
  isUniquelyReferenced_nonNull_native = v164 + 64;
  v116 = *(v164 + 32);
  OUTLINED_FUNCTION_2_5();
  v119 = v118 & v117;
  v121 = (v120 + 63) >> 6;

  v28 = 0;
  v122 = MEMORY[0x277D84F90];
  v123 = ObjectType;
  v162 = v121;
  v163 = isUniquelyReferenced_nonNull_native;
  if (v119)
  {
    goto LABEL_54;
  }

  do
  {
LABEL_50:
    v124 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_73;
    }

    if (v124 >= v121)
    {

      MEMORY[0x28223BE20](v148);
      *(&v155 - 80) = v171;
      v149 = v166;
      *(&v155 - 9) = v165;
      *(&v155 - 8) = v149;
      v150 = v168;
      v151 = v157;
      *(&v155 - 7) = v168;
      *(&v155 - 6) = v151;
      v152 = v158;
      *(&v155 - 5) = v160;
      *(&v155 - 4) = v152;
      v153 = v155;
      *(&v155 - 3) = v159;
      *(&v155 - 2) = v153;
      *(&v155 - 1) = v156;
      v55 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
      v154 = v55;

      sub_223168DCC(v123);
      if (v55)
      {
      }

      (*(v167 + 8))(v150, v169);
      return v55;
    }

    v119 = *(isUniquelyReferenced_nonNull_native + 8 * v124);
    ++v28;
  }

  while (!v119);
  v28 = v124;
  while (1)
  {
LABEL_54:
    v125 = v114[6];
    OUTLINED_FUNCTION_15_3();
    v127 = *v126;
    v35 = v126[1];
    v176 = v122;
    if (v114[2])
    {

      v128 = sub_22314C358(v127, v35);
      v129 = v122;
      if ((v130 & 1) == 0)
      {
        goto LABEL_59;
      }

      v129 = *(v114[7] + 8 * v128);
    }

    else
    {
      v129 = v122;
    }

LABEL_59:
    sub_22314AB34(v129);
    v172 = v176;
    v131 = v173;
    v132 = v174;
    OUTLINED_FUNCTION_11();
    swift_beginAccess();
    v133 = *(v132 + v131);
    swift_isUniquelyReferenced_nonNull_native();
    v175 = *(v132 + v131);
    *(v132 + v131) = 0x8000000000000000;
    v134 = v127;
    isUniquelyReferenced_nonNull_native = v35;
    sub_22314C358(v127, v35);
    OUTLINED_FUNCTION_5_16();
    if (__OFADD__(v137, v138))
    {
      goto LABEL_74;
    }

    v35 = v135;
    v139 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
    if ((sub_2232003D4() & 1) == 0)
    {
      goto LABEL_63;
    }

    v140 = sub_22314C358(v134, isUniquelyReferenced_nonNull_native);
    if ((v139 & 1) != (v141 & 1))
    {
      break;
    }

    v35 = v140;
LABEL_63:
    v142 = v175;
    if (v139)
    {
      v143 = v175[7];
      v144 = *(v143 + 8 * v35);
      *(v143 + 8 * v35) = v172;
    }

    else
    {
      OUTLINED_FUNCTION_4_18(&v175[v35 >> 6]);
      v145 = (v142[6] + 16 * v35);
      *v145 = v134;
      v145[1] = isUniquelyReferenced_nonNull_native;
      *(v142[7] + 8 * v35) = v172;
      v146 = v142[2];
      v109 = __OFADD__(v146, 1);
      v147 = v146 + 1;
      if (v109)
      {
        goto LABEL_76;
      }

      v142[2] = v147;
    }

    v123 = ObjectType;
    isUniquelyReferenced_nonNull_native = v163;
    v114 = v164;
    v121 = v162;
    v122 = MEMORY[0x277D84F90];
    v119 &= v119 - 1;
    *(v174 + v173) = v142;
    swift_endAccess();
    if (!v119)
    {
      goto LABEL_50;
    }
  }

LABEL_79:
  result = sub_2232006E4();
  __break(1u);
  return result;
}

uint64_t sub_223168DCC(uint64_t a1)
{
  v2 = type metadata accessor for NLTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NLTRPCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059090, &qword_223210A50);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v85 - v11;
  v13 = MEMORY[0x277D84F98];
  v95 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse) = MEMORY[0x277D84F98];
  v94 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions) = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316A760();
  sub_223200794();
  if (!v2)
  {
    v93 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589D0, &qword_22320D048);
    v99 = 0;
    sub_22314C9D0();
    OUTLINED_FUNCTION_11_8();
    v15 = v96;
    v16 = v93;
    if (!v96)
    {
      if (qword_280FCA778 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    v17 = v95;
    swift_beginAccess();
    v18 = *(v3 + v17);
    *(v3 + v17) = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589F8, &unk_22320D050);
    LOBYTE(v100) = 1;
    sub_22314CAE8();
    OUTLINED_FUNCTION_11_8();
    v92 = v96;
    if (v96)
    {
      LOBYTE(v100) = 2;
      sub_22316A808();
      sub_2232004C4();
      v35 = v97;
      v36 = v98;
      v37 = v3 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes;
      *v37 = v96;
      *(v37 + 10) = v36;
      *(v37 + 4) = v35;
      v39 = *(v92 + 64);
      v38 = v92 + 64;
      v40 = *(v92 + 32);
      OUTLINED_FUNCTION_2_5();
      v16 = v42 & v41;
      v88 = (v43 + 63) >> 6;

      v44 = 0;
      for (v85[0] = v38; ; v38 = v85[0])
      {
        if (!v16)
        {
          while (1)
          {
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v45 >= v88)
            {

              sub_2230F7158(a1, &v96);
              v26 = TRPCandidateRequestMessageBase.init(from:)(&v96);
              v83 = OUTLINED_FUNCTION_3_20();
              v84(v83);
              __swift_destroy_boxed_opaque_existential_1(a1);
              return v26;
            }

            v16 = *(v38 + 8 * v45);
            ++v44;
            if (v16)
            {
              v44 = v45;
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_39:
          OUTLINED_FUNCTION_0_0();
          swift_once();
LABEL_6:
          v19 = sub_223200014();
          __swift_project_value_buffer(v19, qword_280FCE830);
          v20 = sub_223200004();
          v21 = sub_223200254();
          v22 = OUTLINED_FUNCTION_13_0();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            v25 = "Failed to decode the tcu mapped NL response";
            goto LABEL_8;
          }

          goto LABEL_9;
        }

LABEL_20:
        v46 = v92;
        v47 = *(v92 + 48);
        OUTLINED_FUNCTION_15_3();
        v49 = *v48;
        v50 = v48[1];
        v89 = *(v46 + 16);

        v90 = v49;
        v91 = v50;
        if (v89 && (v51 = sub_22314C358(v49, v50), (v52 & 1) != 0))
        {
          v53 = *(*(v92 + 56) + 8 * v51);

          sub_22315B74C();
          v55 = v54;
        }

        else
        {
          v55 = 0;
        }

        v56 = v94;
        OUTLINED_FUNCTION_11();
        swift_beginAccess();
        v57 = *(v3 + v56);
        if (v55)
        {
          v87 = v55;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = *(v3 + v56);
          v58 = v100;
          *(v3 + v56) = 0x8000000000000000;
          v89 = sub_22314C358(v90, v91);
          v60 = v58[2];
          v61 = (v59 & 1) == 0;
          v85[1] = v60 + v61;
          if (__OFADD__(v60, v61))
          {
            __break(1u);
            goto LABEL_41;
          }

          v62 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
          if (sub_2232003D4())
          {
            v63 = sub_22314C358(v90, v91);
            if ((v62 & 1) != (v64 & 1))
            {
              goto LABEL_43;
            }

            v89 = v63;
          }

          if (v62)
          {

            v65 = v100;
            v66 = v100[7];
            v67 = *(v66 + 8 * v89);
            *(v66 + 8 * v89) = v87;
          }

          else
          {
            v65 = v100;
            v76 = v89;
            OUTLINED_FUNCTION_4_18(&v100[v89 >> 6]);
            v77 = (v65[6] + 16 * v76);
            *v77 = v79;
            v77[1] = v78;
            *(v65[7] + 8 * v76) = v87;
            v80 = v65[2];
            v81 = __OFADD__(v80, 1);
            v82 = v80 + 1;
            if (v81)
            {
              __break(1u);
LABEL_43:
              result = sub_2232006E4();
              __break(1u);
              return result;
            }

            v65[2] = v82;
          }
        }

        else
        {
          v68 = *(v3 + v56);
          v90 = sub_22314C358(v90, v91);
          LOBYTE(v68) = v69;

          if ((v68 & 1) == 0)
          {
            goto LABEL_36;
          }

          v70 = v94;
          v71 = *(v3 + v94);
          swift_isUniquelyReferenced_nonNull_native();
          v100 = *(v3 + v70);
          v72 = v100;
          *(v3 + v70) = 0x8000000000000000;
          v91 = v72[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
          sub_2232003D4();
          v65 = v100;
          v73 = v90;
          v74 = *(v100[6] + 16 * v90 + 8);

          v75 = *(v65[7] + 8 * v73);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A08, &qword_22320D060);
          sub_2232003F4();
        }

        *(v3 + v94) = v65;
LABEL_36:
        v16 &= v16 - 1;
        swift_endAccess();
      }
    }

    if (qword_280FCA778 != -1)
    {
LABEL_41:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v20 = sub_223200004();
    v21 = sub_223200254();
    v33 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v33, v34))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Failed to decode the tcu mapped NL repetitions";
LABEL_8:
      _os_log_impl(&dword_2230CE000, v20, v21, v25, v24, 2u);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

LABEL_9:

    sub_22316A7B4();
    swift_allocError();
    swift_willThrow();
    (*(v16 + 8))(v12, v5);
  }

  v26 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = *(v3 + v95);

  v28 = *(v3 + v94);

  type metadata accessor for NLTRPCandidateMessage(0);
  v29 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v30 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v26;
}

uint64_t sub_223169654(void *a1)
{
  v2 = v1;
  v102 = sub_2231FFE74();
  v4 = OUTLINED_FUNCTION_9(v102);
  v96 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590A8, &unk_223210A58);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v85 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316A760();
  sub_2232007A4();
  v20 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v112 = *(v2 + v20);
  LOBYTE(v107) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589D0, &qword_22320D048);
  sub_22314CC1C();
  v21 = v106;
  sub_223200654();
  if (v21)
  {
    return (*(v14 + 8))(v18, v11);
  }

  v101 = v10;
  v89 = v18;
  v88 = v14;
  v86 = a1;
  v87 = v11;
  v23 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v93 = v23;
  v24 = *(v2 + v23);
  v26 = *(v24 + 64);
  v25 = v24 + 64;
  v27 = *(*(v2 + v23) + 32);
  OUTLINED_FUNCTION_2_5();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v103 = v96 + 8;
  v104 = v96 + 16;
  v95 = v33;

  v34 = 0;
  v99 = MEMORY[0x277D84F98];
  v35 = v102;
  v91 = v25;
  v36 = v2;
  v92 = v2;
  v90 = v32;
  if (!v30)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    v38 = *(v95 + 48);
    OUTLINED_FUNCTION_15_3();
    v40 = *v39;
    v41 = v39[1];
    v43 = *(v42 + v93);
    v44 = *(v43 + 16);

    v98 = v41;
    v100 = v40;
    if (v44 && (v45 = sub_22314C358(v40, v41), (v46 & 1) != 0))
    {
      v47 = *(*(v43 + 56) + 8 * v45);
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }

    v97 = v30;

    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v94 = v47;
      v50 = v47 + v49;
      v51 = *(v96 + 72);
      v105 = *(v96 + 16);
      v106 = v51;
      v52 = MEMORY[0x277D84F90];
      v53 = v101;
      do
      {
        v105(v53, v50, v35);
        sub_22314CD7C(&qword_280FCE5F0, MEMORY[0x277D5DCA0]);
        v54 = sub_2231FFFE4();
        v56 = v55;
        v57 = OUTLINED_FUNCTION_14_4();
        v58(v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_22314C6A8(0, v52[2] + 1, 1, v52);
        }

        v60 = v52[2];
        v59 = v52[3];
        if (v60 >= v59 >> 1)
        {
          v52 = sub_22314C6A8(v59 > 1, v60 + 1, 1, v52);
        }

        v52[2] = v60 + 1;
        v61 = &v52[2 * v60];
        v61[4] = v54;
        v61[5] = v56;
        v53 = v101;
        v35 = v102;
        v50 += v106;
        --v48;
      }

      while (v48);
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
    }

    v62 = v99;
    swift_isUniquelyReferenced_nonNull_native();
    v107 = v62;
    v63 = v98;
    sub_22314C358(v100, v98);
    OUTLINED_FUNCTION_5_16();
    if (__OFADD__(v66, v67))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = sub_2232006E4();
      __break(1u);
      return result;
    }

    v68 = v64;
    LODWORD(v106) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A18, &qword_22320D070);
    if (sub_2232003D4())
    {
      v69 = v100;
      v70 = sub_22314C358(v100, v63);
      if ((v106 & 1) != (v71 & 1))
      {
        goto LABEL_37;
      }

      v68 = v70;
      if (v106)
      {
LABEL_28:

        v99 = v107;
        v77 = v107[7];
        v78 = *(v77 + 8 * v68);
        *(v77 + 8 * v68) = v52;

        goto LABEL_29;
      }
    }

    else
    {
      v69 = v100;
      if (v106)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_4_18(&v107[v68 >> 6]);
    v73 = (v72[6] + 16 * v68);
    *v73 = v69;
    v73[1] = v63;
    *(v72[7] + 8 * v68) = v52;
    v74 = v72[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_36;
    }

    v99 = v72;
    v72[2] = v76;
LABEL_29:
    v30 = (v97 - 1) & v97;
    v36 = v92;
    v25 = v91;
    v32 = v90;
  }

  while (v30);
  while (1)
  {
LABEL_4:
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v37 >= v32)
    {
      break;
    }

    v30 = *(v25 + 8 * v37);
    ++v34;
    if (v30)
    {
      v34 = v37;
      goto LABEL_8;
    }
  }

  v79 = v36;

  v107 = v99;
  v113 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589F8, &unk_22320D050);
  sub_22314CDC4();
  v80 = v87;
  sub_223200654();

  v81 = (v79 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes);
  v82 = *(v79 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 16) | (*(v79 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 20) << 32);
  v83 = v88;
  if ((v82 & 0xFF00000000) != 0x200000000)
  {
    v84 = v81[1];
    LODWORD(v107) = *v81;
    v108 = v84;
    v109 = v82;
    v110 = BYTE4(v82) & 1;
    v111 = BYTE5(v82) & 1;
    v113 = 2;
    sub_22316A85C();
    sub_223200654();
  }

  sub_2231E5494(v86);
  return (*(v83 + 8))(v89, v80);
}

uint64_t sub_223169E3C()
{
  v1 = v0;
  sub_223200374();
  v22 = 0;
  v23 = 0xE000000000000000;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for NLTRPCandidateMessage(0);
  v2 = objc_msgSendSuper2(&v21, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0xD000000000000018, 0x8000000223223B00);
  v6 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v7 = *&v1[v6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B0, &qword_22320D030);
  OUTLINED_FUNCTION_4_8();
  v8 = sub_223200054();
  v10 = v9;

  MEMORY[0x223DD5AA0](v8, v10);

  MEMORY[0x223DD5AA0](0xD00000000000001CLL, 0x8000000223223B20);
  v11 = OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v12 = *&v1[v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A08, &qword_22320D060);
  OUTLINED_FUNCTION_4_8();
  v13 = sub_223200054();
  v15 = v14;

  MEMORY[0x223DD5AA0](v13, v15);

  MEMORY[0x223DD5AA0](0xD00000000000001ELL, 0x8000000223224230);
  v18 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes];
  v20 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 20];
  v19 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_selectedUserAttributes + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590B8, &qword_223210A68);
  v16 = sub_223200104();
  MEMORY[0x223DD5AA0](v16);

  return v22;
}

uint64_t NLTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NLTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t NLTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_14() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t NLTRPCandidateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NLTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NLTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 36));
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLResponse.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_14() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLRepetitions.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 40));
}

uint64_t NLTRPCandidateMessage.Builder.tcuMappedNLRepetitions.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_14() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NLTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 44));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

__n128 NLTRPCandidateMessage.Builder.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NLTRPCandidateMessage.Builder(0) + 48));
  v4 = v3[1].n128_u32[0];
  v5 = v3[1].n128_u16[2];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u16[2] = v5;
  a1[1].n128_u32[0] = v4;
  return result;
}

uint64_t NLTRPCandidateMessage.Builder.selectedUserAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  result = type metadata accessor for NLTRPCandidateMessage.Builder(0);
  v7 = v1 + *(result + 48);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 20) = v5;
  *(v7 + 16) = v4;
  return result;
}

uint64_t sub_22316A69C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLResponse);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21NLTRPCandidateMessage_tcuMappedNLRepetitions);
}

id NLTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22316A760()
{
  result = qword_280FCDF78;
  if (!qword_280FCDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDF78);
  }

  return result;
}

unint64_t sub_22316A7B4()
{
  result = qword_27D059098;
  if (!qword_27D059098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059098);
  }

  return result;
}

unint64_t sub_22316A808()
{
  result = qword_27D0590A0;
  if (!qword_27D0590A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590A0);
  }

  return result;
}

unint64_t sub_22316A85C()
{
  result = qword_27D0590B0;
  if (!qword_27D0590B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590B0);
  }

  return result;
}

unint64_t sub_22316A8B4()
{
  result = qword_27D0590C0;
  if (!qword_27D0590C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLTRPCandidateMessage.NLTRPCandidateMessage(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22316ABCC()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223110900(319, &qword_280FCA500, &qword_27D0589D0, &qword_22320D048);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_223110900(319, &qword_280FCA4F0, &qword_27D058A38, &qword_22320D1C0);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_2230D525C(319, &unk_280FCA7A8);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for NLTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22316AE48()
{
  result = qword_27D0590C8;
  if (!qword_27D0590C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590C8);
  }

  return result;
}

unint64_t sub_22316AEA0()
{
  result = qword_280FCDF68;
  if (!qword_280FCDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDF68);
  }

  return result;
}

unint64_t sub_22316AEF8()
{
  result = qword_280FCDF70;
  if (!qword_280FCDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDF70);
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_14_5(a1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_19_1();
  v4 = sub_2231FFE64();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590D0, &qword_223210D10);
  OUTLINED_FUNCTION_9(v18);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_8();
  sub_22316B15C();
  OUTLINED_FUNCTION_8_13();
  if (!v1)
  {
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_6_15();
    sub_22316BA40(v11, v12);
    OUTLINED_FUNCTION_1_19();
    v13 = OUTLINED_FUNCTION_3_21();
    v14(v13);
    v15 = OUTLINED_FUNCTION_11_9();
    v16(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

unint64_t sub_22316B15C()
{
  result = qword_280FCE618;
  if (!qword_280FCE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE618);
  }

  return result;
}

uint64_t Siri_Nlu_External_SystemDialogAct.encode(to:)()
{
  OUTLINED_FUNCTION_17_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590D8, &qword_223210D18);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_7();
  sub_22316B15C();
  OUTLINED_FUNCTION_13_5();
  sub_2231FFE64();
  OUTLINED_FUNCTION_6_15();
  sub_22316BA40(v5, v6);
  v7 = OUTLINED_FUNCTION_9_17();
  if (!v0)
  {
    v12 = v7;
    v13 = v8;
    sub_2230D7754();
    OUTLINED_FUNCTION_15_6();
    sub_2230D94DC(v12, v13);
  }

  v9 = OUTLINED_FUNCTION_18_8();
  return v10(v9);
}

uint64_t sub_22316B30C(uint64_t a1)
{
  v2 = sub_22316B15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316B348(uint64_t a1)
{
  v2 = sub_22316B15C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Siri_Nlu_External_Task.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_14_5(a1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_19_1();
  v4 = sub_2231FFDC4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590E0, &qword_223210D20);
  OUTLINED_FUNCTION_9(v18);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_8();
  sub_22316B5B4();
  OUTLINED_FUNCTION_8_13();
  if (!v1)
  {
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_5_17();
    sub_22316BA40(v11, v12);
    OUTLINED_FUNCTION_1_19();
    v13 = OUTLINED_FUNCTION_3_21();
    v14(v13);
    v15 = OUTLINED_FUNCTION_11_9();
    v16(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

unint64_t sub_22316B5B4()
{
  result = qword_27D0590E8;
  if (!qword_27D0590E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0590E8);
  }

  return result;
}

uint64_t Siri_Nlu_External_Task.encode(to:)()
{
  OUTLINED_FUNCTION_17_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590F8, &qword_223210D28);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_7();
  sub_22316B5B4();
  OUTLINED_FUNCTION_13_5();
  sub_2231FFDC4();
  OUTLINED_FUNCTION_5_17();
  sub_22316BA40(v5, v6);
  v7 = OUTLINED_FUNCTION_9_17();
  if (!v0)
  {
    v12 = v7;
    v13 = v8;
    sub_2230D7754();
    OUTLINED_FUNCTION_15_6();
    sub_2230D94DC(v12, v13);
  }

  v9 = OUTLINED_FUNCTION_18_8();
  return v10(v9);
}

uint64_t sub_22316B744(uint64_t a1)
{
  v2 = sub_22316B5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316B780(uint64_t a1)
{
  v2 = sub_22316B5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Siri_Nlu_External_LegacyNLContext.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_14_5(a1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_19_1();
  v4 = sub_2231FFE54();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059100, &qword_223210D30);
  OUTLINED_FUNCTION_9(v18);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_8();
  sub_22316B9EC();
  OUTLINED_FUNCTION_8_13();
  if (!v1)
  {
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_7_17();
    sub_22316BA40(v11, v12);
    OUTLINED_FUNCTION_1_19();
    v13 = OUTLINED_FUNCTION_3_21();
    v14(v13);
    v15 = OUTLINED_FUNCTION_11_9();
    v16(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

unint64_t sub_22316B9EC()
{
  result = qword_280FCE648;
  if (!qword_280FCE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE648);
  }

  return result;
}

uint64_t sub_22316BA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_External_LegacyNLContext.encode(to:)()
{
  OUTLINED_FUNCTION_17_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059108, &qword_223210D38);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_7();
  sub_22316B9EC();
  OUTLINED_FUNCTION_13_5();
  sub_2231FFE54();
  OUTLINED_FUNCTION_7_17();
  sub_22316BA40(v5, v6);
  v7 = OUTLINED_FUNCTION_9_17();
  if (!v0)
  {
    v12 = v7;
    v13 = v8;
    sub_2230D7754();
    OUTLINED_FUNCTION_15_6();
    sub_2230D94DC(v12, v13);
  }

  v9 = OUTLINED_FUNCTION_18_8();
  return v10(v9);
}

uint64_t sub_22316BBC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461446F746F7270 && a2 == 0xE900000000000061)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22316BC44(uint64_t a1)
{
  v2 = sub_22316B9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316BC80(uint64_t a1)
{
  v2 = sub_22316B9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *sub_22316BD0C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22316BDBC()
{
  result = qword_27D059110;
  if (!qword_27D059110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059110);
  }

  return result;
}

unint64_t sub_22316BE14()
{
  result = qword_27D059118;
  if (!qword_27D059118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059118);
  }

  return result;
}

unint64_t sub_22316BE6C()
{
  result = qword_27D059120;
  if (!qword_27D059120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059120);
  }

  return result;
}

unint64_t sub_22316BEC4()
{
  result = qword_280FCE638;
  if (!qword_280FCE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE638);
  }

  return result;
}

unint64_t sub_22316BF1C()
{
  result = qword_280FCE640;
  if (!qword_280FCE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE640);
  }

  return result;
}

unint64_t sub_22316BF74()
{
  result = qword_27D059128;
  if (!qword_27D059128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059128);
  }

  return result;
}

unint64_t sub_22316BFCC()
{
  result = qword_27D059130;
  if (!qword_27D059130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059130);
  }

  return result;
}

unint64_t sub_22316C024()
{
  result = qword_280FCE608;
  if (!qword_280FCE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE608);
  }

  return result;
}

unint64_t sub_22316C07C()
{
  result = qword_280FCE610;
  if (!qword_280FCE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE610);
  }

  return result;
}

void *OUTLINED_FUNCTION_12_8()
{
  v2 = v0[3];
  v3 = v0[4];
  *(v1 - 72) = v0;
  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OrchestrationTaskCompletedMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void *OrchestrationTaskCompletedMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v16 = v15 - v14;
  v17 = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v22 = v21 - v20;
  __swift_storeEnumTagSinglePayload(v21 - v20, 1, 1, v8);
  *(v22 + v18[7]) = 15;
  v23 = (v22 + v18[8]);
  *v23 = 0;
  v23[1] = 0;
  __swift_storeEnumTagSinglePayload(v22 + v18[9], 1, 1, v8);
  a1(v22);
  sub_2230D1480(v22, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v24 = sub_223200014();
    __swift_project_value_buffer(v24, qword_280FCE830);
    v25 = sub_223200004();
    v26 = sub_223200254();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136446210;
      v29 = sub_2230F7898();
      v31 = sub_2231A5D38(v29, v30, &v38);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2230CE000, v25, v26, "Could not build %{public}s: Builder has missing required fields", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DD6780](v28, -1, -1);
      MEMORY[0x223DD6780](v27, -1, -1);
    }

    sub_22316C5F4(v22);
    type metadata accessor for OrchestrationTaskCompletedMessage(0);
    v32 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v33 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    v35 = (*(v11 + 16))(v1 + OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId, v16, v8);
    MEMORY[0x28223BE20](v35);
    *(&v37 - 2) = v22;
    v34 = SessionMessageBase.init(build:)(sub_22316D058);
    (*(v11 + 8))(v16, v8);
    sub_22316C5F4(v22);
  }

  return v34;
}

uint64_t sub_22316C5F4(uint64_t a1)
{
  v2 = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22316C670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  *a1 = *(a2 + v4[5]);
  v5 = (a2 + v4[6]);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(a1 + 16);

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v9 = v4[7];
  v10 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v9, a1 + v10);
}

uint64_t OrchestrationTaskCompletedMessage.Builder.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.assistantId.getter()
{
  v1 = (v0 + *(type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t OrchestrationTaskCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t OrchestrationTaskCompletedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_24() + 28);

  return sub_2230D4E04(v0, v2);
}

uint64_t sub_22316C968(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002232216A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22316CA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22316C968(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22316CA34(uint64_t a1)
{
  v2 = sub_22316D060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316CA70(uint64_t a1)
{
  v2 = sub_22316D060();

  return MEMORY[0x2821FE720](a1, v2);
}

void *OrchestrationTaskCompletedMessage.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_9(v3);
  v21 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v22 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059138, &qword_223211178);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316D060();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for OrchestrationTaskCompletedMessage(0);
    v16 = *((*MEMORY[0x277D85000] & *v24) + 0x30);
    v17 = *((*MEMORY[0x277D85000] & *v24) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2230D45E8(&qword_27D057ED0);
    sub_223200554();
    (*(v21 + 32))(v24 + OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId, v22, v3);
    sub_2230F7158(a1, v23);
    v15 = SessionMessageBase.init(from:)(v23);
    v19 = OUTLINED_FUNCTION_3_3();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_22316CDAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059140, &qword_223211180);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316D060();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688);
  sub_223200654();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_22316CF5C()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes33OrchestrationTaskCompletedMessage_orchestrationTaskId;
  v2 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

id OrchestrationTaskCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrchestrationTaskCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22316D060()
{
  result = qword_280FCC220;
  if (!qword_280FCC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC220);
  }

  return result;
}

uint64_t sub_22316D110()
{
  sub_2230F6D30();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCA4D8);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for OrchestrationTaskCompletedMessage.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22316D290()
{
  result = qword_27D059148;
  if (!qword_27D059148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059148);
  }

  return result;
}

unint64_t sub_22316D2E8()
{
  result = qword_280FCC210;
  if (!qword_280FCC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC210);
  }

  return result;
}

unint64_t sub_22316D340()
{
  result = qword_280FCC218;
  if (!qword_280FCC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC218);
  }

  return result;
}

void *OrchestrationTasksCreatedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35[-v12];
  *v13 = 0;
  v13[8] = 15;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v14 = *(v11 + 28);
  v15 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v15);
  a1(v13);
  v16 = *v13;
  if (*v13)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32OrchestrationTasksCreatedMessage_orchestrationTasks) = v16;
    MEMORY[0x28223BE20](v16);
    *&v35[-16] = v13;

    v17 = SessionMessageBase.init(build:)(sub_22316E898);
    OUTLINED_FUNCTION_3_22();
    sub_22316EA18(v13, v18);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v19 = sub_223200014();
    __swift_project_value_buffer(v19, qword_280FCE830);
    v20 = sub_223200004();
    v21 = sub_223200254();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v22 = 136446466;
      v23 = sub_2230F7898();
      sub_2231A5D38(v23, v24, &v36);

      OUTLINED_FUNCTION_11_10();
      swift_beginAccess();
      sub_22316EA70(v13, v10, type metadata accessor for OrchestrationTasksCreatedMessage.Builder);
      v25 = sub_223200104();
      v27 = sub_2231A5D38(v25, v26, &v36);

      *(v22 + 14) = v27;
      OUTLINED_FUNCTION_13_6(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder %s has missing required fields");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();

      v30 = v13;
      v31 = type metadata accessor for OrchestrationTasksCreatedMessage.Builder;
    }

    else
    {

      OUTLINED_FUNCTION_3_22();
      v30 = v13;
    }

    sub_22316EA18(v30, v31);
    type metadata accessor for OrchestrationTasksCreatedMessage(0);
    v32 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v33 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v17;
}

uint64_t sub_22316D728(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = *(type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0) + 28);
  v8 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v7, a1 + v8);
}

uint64_t sub_22316D7B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002232243B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22316D850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22316D7B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22316D87C(uint64_t a1)
{
  v2 = sub_22316E8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316D8B8(uint64_t a1)
{
  v2 = sub_22316E8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *OrchestrationTasksCreatedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059150, &qword_223211310);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316E8A0();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for OrchestrationTasksCreatedMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059158, &qword_223211318);
    sub_22316E914(&qword_27D059160, &qword_27D059168);
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32OrchestrationTasksCreatedMessage_orchestrationTasks) = v16[0];
    sub_2230F7158(a1, v16);
    v13 = SessionMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_22316DB94(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059170, &unk_223211320);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316E8A0();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32OrchestrationTasksCreatedMessage_orchestrationTasks);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059158, &qword_223211318);
  sub_22316E914(&qword_280FCA470, qword_280FCAA98);
  sub_223200654();
  if (!v2)
  {
    sub_2230D46B0(a1);
  }

  return (*(v7 + 8))(v3, v5);
}

uint64_t OrchestrationTasksCreatedMessage.Builder.orchestrationTasks.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t OrchestrationTasksCreatedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t OrchestrationTasksCreatedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OrchestrationTasksCreatedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t OrchestrationTasksCreatedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OrchestrationTasksCreatedMessage.Builder(0) + 28);

  return sub_2230D4E04(a1, v3);
}

id OrchestrationTasksCreatedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrchestrationTasksCreatedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OrchestrationTask.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t OrchestrationTask.init(build:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v15 = v14 - v13;
  v47 = type metadata accessor for OrchestrationTask.Builder(0);
  v16 = OUTLINED_FUNCTION_4(v47);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v48 = type metadata accessor for OrchestrationTask(0);
  v24 = OUTLINED_FUNCTION_4(v48);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  v29 = v28 - v27;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v7);
  a1(v23);
  sub_2230D1480(v23, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v33 = 136446466;
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059178, &qword_223211330);
      v34 = sub_223200104();
      sub_2231A5D38(v34, v35, &v50);

      OUTLINED_FUNCTION_11_10();
      swift_beginAccess();
      sub_22316EA70(v23, v21, type metadata accessor for OrchestrationTask.Builder);
      v36 = sub_223200104();
      v38 = sub_2231A5D38(v36, v37, &v50);

      *(v33 + 14) = v38;
      OUTLINED_FUNCTION_13_6(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder %s has missing required fields");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();

      v41 = v23;
      v42 = type metadata accessor for OrchestrationTask.Builder;
    }

    else
    {

      OUTLINED_FUNCTION_4_25();
      v41 = v23;
    }

    sub_22316EA18(v41, v42);
    v45 = 1;
  }

  else
  {
    v43 = *(v10 + 32);
    v43(v15, v2, v7);
    v43(v29, v15, v7);
    OUTLINED_FUNCTION_4_25();
    sub_22316EA18(v23, v44);
    sub_22316EAD0(v29, a2);
    v45 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v45, 1, v48);
}

uint64_t sub_22316E408(uint64_t a1)
{
  v2 = sub_22316EB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316E444(uint64_t a1)
{
  v2 = sub_22316EB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrchestrationTask.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059180, &qword_223211338);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316EB34();
  sub_2232007A4();
  sub_2231FFDA4();
  OUTLINED_FUNCTION_2_26();
  sub_22316E9B0(v11, v12);
  sub_223200654();
  return (*(v4 + 8))(v9, v2);
}

uint64_t OrchestrationTask.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v33 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059188, &qword_223211340);
  OUTLINED_FUNCTION_9(v11);
  v31 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = type metadata accessor for OrchestrationTask(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_2_2();
  v22 = v21 - v20;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22316EB34();
  sub_223200794();
  if (!v2)
  {
    v24 = v30;
    v25 = v32;
    OUTLINED_FUNCTION_2_26();
    sub_22316E9B0(v26, v27);
    sub_223200554();
    (*(v31 + 8))(v17, v11);
    (*(v24 + 32))(v22, v33, v4);
    sub_22316EAD0(v22, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_22316E8A0()
{
  result = qword_280FCC2F0;
  if (!qword_280FCC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC2F0);
  }

  return result;
}

uint64_t sub_22316E914(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059158, &qword_223211318);
    sub_22316E9B0(a2, type metadata accessor for OrchestrationTask);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22316E9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22316EA18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22316EA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22316EAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrchestrationTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22316EB34()
{
  result = qword_280FCAB40;
  if (!qword_280FCAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB40);
  }

  return result;
}

void sub_22316EC2C()
{
  sub_22316ED00();
  if (v0 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8);
    if (v1 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8);
      if (v2 <= 0x3F)
      {
        sub_2230F6D30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22316ED00()
{
  if (!qword_280FCA468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059158, &qword_223211318);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA468);
    }
  }
}

uint64_t sub_22316EDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_22316EE64(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22316EF14()
{
  result = qword_27D059190;
  if (!qword_27D059190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059190);
  }

  return result;
}

unint64_t sub_22316EF6C()
{
  result = qword_27D059198;
  if (!qword_27D059198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059198);
  }

  return result;
}

unint64_t sub_22316EFC4()
{
  result = qword_280FCAB30;
  if (!qword_280FCAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB30);
  }

  return result;
}

unint64_t sub_22316F01C()
{
  result = qword_280FCAB38;
  if (!qword_280FCAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB38);
  }

  return result;
}

unint64_t sub_22316F074()
{
  result = qword_280FCC2E0;
  if (!qword_280FCC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC2E0);
  }

  return result;
}

unint64_t sub_22316F0CC()
{
  result = qword_280FCC2E8;
  if (!qword_280FCC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC2E8);
  }

  return result;
}

void *PauseDictationRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id PauseDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PauseDictationRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PauseDictationRequestMessage()
{
  result = qword_280FCCBD8;
  if (!qword_280FCCBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SiriMessageTypes::PommesError_optional __swiftcall PommesError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PommesError.rawValue.getter()
{
  result = 0x6167656C65446F6ELL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x74754F64656D6974;
      break;
    case 3:
      result = 0x746C757365526F6ELL;
      break;
    case 4:
      result = 0x4573757361676570;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x79726575516F6ELL;
      break;
    case 7:
      result = 0x6F54656C62616E75;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_22316F460()
{
  result = qword_27D0591A0;
  if (!qword_27D0591A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591A0);
  }

  return result;
}

unint64_t sub_22316F4D8@<X0>(unint64_t *a1@<X8>)
{
  result = PommesError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PommesError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22316F68C()
{
  result = qword_280FCACB0;
  if (!qword_280FCACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACB0);
  }

  return result;
}

void *PommesResultCandidateMessage.pommesResponse.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse);
  v2 = v1;
  return v1;
}

uint64_t sub_22316F764@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 16);

  return v9(a3, v3 + v5, v7);
}

uint64_t sub_22316F7F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230EDCE4();
  *a2 = result;
  return result;
}

uint64_t sub_22316F828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EDD30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22316F85C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230EDCE4();
  *a1 = result;
  return result;
}

uint64_t sub_22316F884(uint64_t a1)
{
  v2 = sub_2231716CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22316F8C0(uint64_t a1)
{
  v2 = sub_2231716CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PommesResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return PommesResultCandidateMessage.init(build:)(v2, v0);
}

void *PommesResultCandidateMessage.init(build:)(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v120 = a1;
  ObjectType = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v110 = &v103[-v4];
  v5 = sub_2231FFF44();
  v6 = OUTLINED_FUNCTION_9(v5);
  v112 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v111 = v10;
  MEMORY[0x28223BE20](v11);
  v114 = &v103[-v12];
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v103[-v15];
  v17 = sub_2231FFDA4();
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  v115 = v23;
  MEMORY[0x28223BE20](v24);
  v116 = &v103[-v25];
  v26 = type metadata accessor for PommesResultCandidateMessage.Builder(0);
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v31 = (v30 - v29);
  *v31 = 15;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  v32 = v27[8];
  __swift_storeEnumTagSinglePayload(v30 - v29 + v32, 1, 1, v17);
  v33 = &v31[v27[9]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v31[v27[10]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v31[v27[11]];
  v117 = v17;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v17);
  v36 = v27[12];
  *&v31[v36] = 0;
  v37 = v27[13];
  v31[v37] = 10;
  v38 = v27[14];
  v113 = v5;
  __swift_storeEnumTagSinglePayload(&v31[v38], 1, 1, v5);
  (v120)(v31);
  v39 = *v31;
  if (v39 == 15 || !*(v31 + 2))
  {
    goto LABEL_16;
  }

  v119 = *(v31 + 2);
  v120 = v20;
  v109 = *(v31 + 1);
  sub_2230D3008(&v31[v32], v16, &qword_27D0575C0, &qword_2232035E0);
  v40 = v117;
  if (__swift_getEnumTagSinglePayload(v16, 1, v117) == 1)
  {
    sub_2230D4198(v16, &qword_27D0575C0, &qword_2232035E0);
LABEL_16:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v60 = sub_223200014();
    __swift_project_value_buffer(v60, qword_280FCE830);
    v61 = sub_223200004();
    v62 = sub_223200254();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v122[0] = v64;
      *v63 = 136446210;
      v65 = sub_2230F7898();
      v67 = sub_2231A5D38(v65, v66, v122);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_2230CE000, v61, v62, "Could not build %{public}s: Builder has missing required fields", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    v49 = v121;
    sub_223170310(v31);
LABEL_21:
    type metadata accessor for PommesResultCandidateMessage(0);
    v68 = *((*MEMORY[0x277D85000] & *v49) + 0x30);
    v69 = *((*MEMORY[0x277D85000] & *v49) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v108 = v39;
  v41 = v120;
  v42 = v16;
  v43 = *(v120 + 32);
  v43(v116, v42, v40);
  if (!*(v33 + 1))
  {
    (*(v41 + 8))(v116, v40);
    goto LABEL_16;
  }

  v44 = *(v34 + 1);
  if (!v44)
  {
    (*(v120 + 8))(v116, v40);
    goto LABEL_16;
  }

  ObjectType = *(v33 + 1);
  v45 = *v33;
  v106 = *v34;
  v107 = v45;
  v46 = v115;
  sub_2231FFD94();
  v47 = v40;
  v48 = OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId;
  v49 = v121;
  v43(v121 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId, v46, v47);
  v50 = v31[v37];
  v51 = *&v31[v36];
  if (v50 == 10 && !v51)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v52 = sub_223200014();
    __swift_project_value_buffer(v52, qword_280FCE830);
    v53 = sub_223200004();
    v54 = sub_223200254();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v116;
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2230CE000, v53, v54, "PommesResultCandidateMessage invalid init with nil error and nil pommesResponse", v57, 2u);
      v49 = v121;
      OUTLINED_FUNCTION_14();
    }

    v58 = *(v120 + 8);
    v59 = v117;
    v58(v56, v117);
    sub_223170310(v31);
    v58(v49 + v48, v59);
    goto LABEL_21;
  }

  v115 = v44;
  *(v49 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse) = v51;
  *(v49 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error) = v50;
  v72 = &v31[v38];
  v73 = v110;
  sub_2230D3008(v72, v110, &qword_27D0591A8, &unk_223211810);
  v74 = v113;
  if (__swift_getEnumTagSinglePayload(v73, 1, v113) == 1)
  {
    v75 = v112;
    v76 = v114;
    (*(v112 + 104))(v114, *MEMORY[0x277D56670], v74);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v74);
    v78 = v51;
    if (EnumTagSinglePayload != 1)
    {
      sub_2230D4198(v73, &qword_27D0591A8, &unk_223211810);
    }
  }

  else
  {
    v75 = v112;
    v76 = v114;
    (*(v112 + 32))(v114, v73, v74);
    v79 = v51;
  }

  v80 = v111;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v81 = sub_223200014();
  __swift_project_value_buffer(v81, qword_280FCE830);
  v112 = *(v75 + 16);
  (v112)(v80, v76, v74);
  v82 = sub_223200004();
  v83 = sub_223200244();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v122[0] = v110;
    *v84 = 136315138;
    v105 = v82;
    v85 = sub_2231FFF34();
    v87 = v86;
    v104 = v83;
    v88 = *(v75 + 8);
    v89 = OUTLINED_FUNCTION_16_6();
    v88(v89);
    v90 = sub_2231A5D38(v85, v87, v122);
    v91 = v88;

    v92 = v84;
    v76 = v114;
    *(v92 + 1) = v90;
    v93 = v105;
    _os_log_impl(&dword_2230CE000, v105, v104, "Creating PommesResultCandidateMessage with search reason: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  else
  {

    v91 = *(v75 + 8);
    v94 = OUTLINED_FUNCTION_16_6();
    v91(v94);
  }

  v95 = v108;
  v96 = v116;
  v97 = (v112)(v49 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason, v76, v74);
  MEMORY[0x28223BE20](v97);
  v103[-64] = v95;
  v98 = v119;
  *&v103[-56] = v109;
  *&v103[-48] = v98;
  v99 = v107;
  *&v103[-40] = v96;
  *&v103[-32] = v99;
  v100 = v106;
  *&v103[-24] = ObjectType;
  *&v103[-16] = v100;
  *&v103[-8] = v115;
  v70 = ResultCandidateRequestMessageBase.init(build:)(sub_223171694);
  (v91)(v76, v74);
  if (v70)
  {
    v101 = *(v120 + 8);
    v102 = v70;
    v101(v96, v117);
    sub_223170310(v31);
  }

  else
  {
    (*(v120 + 8))(v96, v117);
    sub_223170310(v31);
  }

  return v70;
}

uint64_t sub_223170310(uint64_t a1)
{
  v2 = type metadata accessor for PommesResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22317038C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  v16 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v17 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  v18 = v17[6];
  sub_2230D4198(a1 + v18, &qword_27D0575C0, &qword_2232035E0);
  v19 = sub_2231FFDA4();
  (*(*(v19 - 8) + 16))(a1 + v18, a5, v19);
  __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v19);
  v20 = (a1 + v17[7]);
  v21 = v20[1];

  *v20 = a6;
  v20[1] = a7;
  v22 = (a1 + v17[8]);
  v23 = v22[1];

  *v22 = a8;
  v22[1] = a9;
  return result;
}

void *PommesResultCandidateMessage.init(from:)(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v63 = &v59 - v4;
  v5 = sub_2231FFF44();
  v6 = OUTLINED_FUNCTION_9(v5);
  v65 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v68 = sub_2231FFDA4();
  v13 = OUTLINED_FUNCTION_9(v68);
  v64 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591B0, &qword_223211820);
  OUTLINED_FUNCTION_9(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_2231716CC();
  v30 = v66;
  sub_223200794();
  v31 = qword_280FCDFA0 + 96;
  if (v30)
  {
    v32 = 0;
    v33 = 0;
    OUTLINED_FUNCTION_17_5();
    v34 = v67;
    v35 = v68;
    v36 = v69;
    goto LABEL_7;
  }

  v61 = v5;
  v62 = v19;
  v60 = v12;
  v37 = v65;
  v66 = v22;
  v38 = v67;
  v72 = 1;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_10_11();
  v39 = v71;
  if (v71 >> 60 == 15)
  {
    v40 = 0;
    v41 = v37;
  }

  else
  {
    v42 = v70;
    sub_2231717C8();
    sub_2231FFFF4();
    v40 = sub_223200264();
    v41 = v37;
    sub_22310A610(v42, v39);
  }

  *(v38 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse) = v40;
  LOBYTE(v70) = 0;
  sub_2230D45E8(&qword_27D057ED0);
  v43 = v62;
  v35 = v68;
  sub_223200554();
  (*(v64 + 32))(v38 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId, v43, v35);
  v72 = 2;
  sub_223171720();
  OUTLINED_FUNCTION_10_11();
  v44 = &qword_280FCDFA0[12];
  *(v38 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error) = v70;
  LOBYTE(v70) = 3;
  sub_223200494();
  v36 = v69;
  if (!v45)
  {
    goto LABEL_19;
  }

  v49 = v63;
  sub_2231FFF24();
  v50 = v61;
  if (__swift_getEnumTagSinglePayload(v49, 1, v61) == 1)
  {
    sub_2230D4198(v49, &qword_27D0591A8, &unk_223211810);
    v44 = qword_280FCDFA0 + 96;
LABEL_19:
    (*(v41 + 104))(v38 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason, *MEMORY[0x277D56670], v61);
    goto LABEL_21;
  }

  v51 = *(v41 + 32);
  v52 = v60;
  v51(v60, v49, v50);
  v51(v38 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason, v52, v50);
  v36 = v69;
  v44 = &qword_280FCDFA0[12];
LABEL_21:
  sub_2230F7158(v36, &v70);
  v53 = ResultCandidateRequestMessageBase.init(from:)(&v70);
  v34 = v53;
  v31 = &qword_280FCDFA0[12];
  if (*(v53 + v44[374]) != 10 || *(v53 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse))
  {
    v54 = OUTLINED_FUNCTION_9_19();
    v55(v54);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v34;
  }

  sub_223171774();
  swift_allocError();
  *v56 = 5;
  swift_willThrow();
  v57 = OUTLINED_FUNCTION_9_19();
  v58(v57);
  v32 = 1;
  v33 = 1;
  LODWORD(v27) = 1;
  LODWORD(v22) = 1;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (v27)
  {
    if (v22)
    {
    }
  }

  else
  {
    if (v32)
    {
      (*(v64 + 8))(v34 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId, v35);
    }

    if (v33)
    {
    }

    type metadata accessor for PommesResultCandidateMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v34) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v34) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v34;
}

uint64_t sub_223170B9C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591C8, &qword_223211828);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231716CC();
  sub_2232007A4();
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pommesResponse);
  if (!v11)
  {
LABEL_7:
    if (*(v4 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error) == 10 || (LOBYTE(v27[0]) = *(v4 + OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_error), sub_22317180C(), OUTLINED_FUNCTION_6_3(), (v3 = v2) == 0))
    {
      LOBYTE(v27[0]) = 0;
      sub_2231FFDA4();
      sub_2230D45E8(&qword_280FCE688);
      sub_223200654();
      if (!v3)
      {
        sub_2231FFF34();
        LOBYTE(v27[0]) = 3;
        sub_2232005F4();

        sub_223190B78(a1);
      }
    }

    goto LABEL_11;
  }

  v12 = objc_opt_self();
  v27[0] = 0;
  v13 = v11;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v27];
  v15 = v27[0];
  if (!v14)
  {
    v22 = v15;
    sub_2231FFD04();

    swift_willThrow();
LABEL_11:
    v23 = OUTLINED_FUNCTION_24_0();
    result = v24(v23);
    goto LABEL_12;
  }

  v26 = v4;
  v16 = sub_2231FFD24();
  v18 = v17;

  v27[0] = v16;
  v27[1] = v18;
  sub_2230D7754();
  OUTLINED_FUNCTION_6_3();
  v3 = v2;
  if (!v2)
  {

    sub_2230D94DC(v16, v18);
    v4 = v26;
    goto LABEL_7;
  }

  v19 = OUTLINED_FUNCTION_24_0();
  v20(v19);

  result = sub_2230D94DC(v16, v18);
LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PommesResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t PommesResultCandidateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t PommesResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t PommesResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *PommesResultCandidateMessage.Builder.pommesResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesResultCandidateMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void PommesResultCandidateMessage.Builder.pommesResponse.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_16() + 40);

  *(v1 + v2) = v0;
}

uint64_t PommesResultCandidateMessage.Builder.error.getter()
{
  result = OUTLINED_FUNCTION_20_8();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t PommesResultCandidateMessage.Builder.error.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PommesResultCandidateMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_223171518()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_pegasusId;
  v2 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4_14(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = OBJC_IVAR____TtC16SiriMessageTypes28PommesResultCandidateMessage_searchReason;
  v5 = sub_2231FFF44();
  OUTLINED_FUNCTION_4_14(v5);
  v7 = *(v6 + 8);

  return v7(v0 + v4);
}

id PommesResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PommesResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231716CC()
{
  result = qword_280FCCBD0;
  if (!qword_280FCCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCBD0);
  }

  return result;
}

unint64_t sub_223171720()
{
  result = qword_27D0591B8;
  if (!qword_27D0591B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591B8);
  }

  return result;
}

unint64_t sub_223171774()
{
  result = qword_27D0591C0;
  if (!qword_27D0591C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0591C0);
  }

  return result;
}

unint64_t sub_2231717C8()
{
  result = qword_27D0576E8;
  if (!qword_27D0576E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0576E8);
  }

  return result;
}

unint64_t sub_22317180C()
{
  result = qword_280FCACB8;
  if (!qword_280FCACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACB8);
  }

  return result;
}

uint64_t sub_223171868()
{
  result = sub_2231FFDA4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2231FFF44();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22317199C()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_223171B2C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223171B2C(319, &qword_280FCA548, MEMORY[0x277D566B0]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCACA8);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_223171B2C(319, qword_280FCA550, MEMORY[0x277D56678]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_223171B2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}