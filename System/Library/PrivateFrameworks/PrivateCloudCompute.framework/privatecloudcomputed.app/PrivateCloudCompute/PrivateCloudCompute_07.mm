uint64_t sub_10009B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022A108, &qword_1001D8068);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_100229920, &qword_1001D7190);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_100229920, &qword_1001D7190);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_100097550(v17, v27, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    sub_100097550(v27, v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v35, &qword_10022A108, &qword_1001D8068);
      v42 = v51;
      sub_100097550(v24, v51, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
      sub_100097550(v42, v35, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_100097390(v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022A108, &qword_1001D8068);
  }

  sub_10001208C(v35, v43, &qword_10022A108, &qword_1001D8068);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022A108, &qword_1001D8068);
    return sub_100011F00(v43, &qword_10022A108, &qword_1001D8068);
  }

  else
  {
    v46 = v50;
    sub_100097550(v43, v50, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022A108, &qword_1001D8068);
    v47 = v49;
    sub_100011F00(v49, &qword_100229920, &qword_1001D7190);
    sub_100097550(v46, v47, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v17 - v11;
  sub_10001208C(v3, &v17 - v11, &qword_100229920, &qword_1001D7190);
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_9;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100097390(v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    result = sub_10009E320(v3, a1, a2, a3, &qword_100229920, &qword_1001D7190, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10009BD9C(v3, a1, a2, a3);
  }

  else
  {
    sub_10009BFD4(v3, a1, a2, a3);
  }

  result = sub_100097390(v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  if (!v4)
  {
LABEL_9:
    v16 = v3 + *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_10009BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_100229920, &qword_1001D7190);
  v15 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_100229920, &qword_1001D7190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100097550(v9, v14, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    sub_1001D0C20();
    return sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  }

  result = sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009BFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_100229920, &qword_1001D7190);
  v15 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_100229920, &qword_1001D7190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100097550(v9, v14, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    sub_1001D0C20();
    return sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
  }

  result = sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t (*sub_10009C27C(uint64_t a1, uint64_t a2))()
{
  result = Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType.rawValue.getter;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_10009C2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0C8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009C378(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009C3E8()
{
  sub_1000A3704(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  return sub_1001D0B40();
}

uint64_t sub_10009C490()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_AuthToken._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_AuthToken._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token_granting_token";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ott_salt";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_AuthToken.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1001D0A50();
    }
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1001D0BC0();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_1001D0BC0();
      if (v1)
      {
        return result;
      }

      goto LABEL_19;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = v0 + *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  return sub_1001D0920();
}

uint64_t sub_10009C87C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1001D3A00;
  a2[1] = xmmword_1001D3A00;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_10009C8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10009C91C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_10009C990(uint64_t a1, uint64_t a2))()
{
  result = Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType.rawValue.getter;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_10009C9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0C0, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009CA84(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009CAF0()
{
  sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);

  return sub_1001D0B40();
}

uint64_t sub_10009CB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_1000A1A5C(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_10009CC50()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_FinalMessage._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_FinalMessage._protobuf_nameMap);
  return sub_1001D0C50();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1001D09E0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_10009CDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0B8, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009CE58(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009CEC4()
{
  sub_1000A3704(&qword_1002299F0, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);

  return sub_1001D0B40();
}

uint64_t sub_10009CF68()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7180;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "response_uuid";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_payload";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_summary";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_execution_log_entry";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_10009D568(v5, a1, a2, a3);
        }

        else if (result == 4)
        {
          sub_10009DB24(v5, a1, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 0;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 1;
        }

        sub_10009D340(v11, v12, v13, v14, &qword_100229930, &qword_1001D7198, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type, v15);
      }

LABEL_5:
      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_10009D340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v32 = a8;
  v30 = a7;
  v14 = sub_100011AC0(a5, a6);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v25 - v17;
  v31 = xmmword_1001D6800;
  sub_1001D0A40();
  v19 = *(&v31 + 1);
  if (v8)
  {
    return sub_10002683C(v31, *(&v31 + 1));
  }

  v27 = a3;
  v28 = a4;
  v29 = a2;
  if (*(&v31 + 1) >> 60 == 15)
  {
    return sub_10002683C(v31, *(&v31 + 1));
  }

  v20 = v31;
  sub_10001208C(v29, v18, a5, a6);
  v21 = v30(0);
  v25 = *(v21 - 8);
  v26 = v21;
  LODWORD(v30) = (*(v25 + 48))(v18, 1);
  sub_100012038(v20, v19);
  sub_100011F00(v18, a5, a6);
  if (v30 != 1)
  {
    sub_1001D09F0();
  }

  sub_10002683C(v20, v19);
  v23 = v29;
  sub_100011F00(v29, a5, a6);
  *v23 = v20;
  v23[1] = v19;
  v24 = v26;
  swift_storeEnumTagMultiPayload();
  return (*(v25 + 56))(v23, 0, 1, v24);
}

uint64_t sub_10009D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022A0E8, &qword_1001D8048);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_100229930, &qword_1001D7198);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_100229930, &qword_1001D7198);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_100097550(v17, v27, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    sub_100097550(v27, v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v35, &qword_10022A0E8, &qword_1001D8048);
      v42 = v51;
      sub_100097550(v24, v51, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_100097550(v42, v35, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_100097390(v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022A0E8, &qword_1001D8048);
  }

  sub_10001208C(v35, v43, &qword_10022A0E8, &qword_1001D8048);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022A0E8, &qword_1001D8048);
    return sub_100011F00(v43, &qword_10022A0E8, &qword_1001D8048);
  }

  else
  {
    v46 = v50;
    sub_100097550(v43, v50, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022A0E8, &qword_1001D8048);
    v47 = v49;
    sub_100011F00(v49, &qword_100229930, &qword_1001D7198);
    sub_100097550(v46, v47, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t sub_10009DB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022A0F0, &qword_1001D8050);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_100229930, &qword_1001D7198);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_100229930, &qword_1001D7198);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_100097550(v17, v27, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    sub_100097550(v27, v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100011F00(v35, &qword_10022A0F0, &qword_1001D8050);
      v42 = v51;
      sub_100097550(v24, v51, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      sub_100097550(v42, v35, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_100097390(v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022A0F0, &qword_1001D8050);
  }

  sub_10001208C(v35, v43, &qword_10022A0F0, &qword_1001D8050);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022A0F0, &qword_1001D8050);
    return sub_100011F00(v43, &qword_10022A0F0, &qword_1001D8050);
  }

  else
  {
    v46 = v50;
    sub_100097550(v43, v50, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022A0F0, &qword_1001D8050);
    v47 = v49;
    sub_100011F00(v49, &qword_100229930, &qword_1001D7198);
    sub_100097550(v46, v47, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v17 - v11;
  sub_10001208C(v3, &v17 - v11, &qword_100229930, &qword_1001D7198);
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100097390(v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      result = sub_10009E490(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_100097390(v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      result = sub_10009E320(v3, a1, a2, a3, &qword_100229930, &qword_1001D7198, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10009E610(v3, a1, a2, a3);
  }

  else
  {
    sub_10009E848(v3, a1, a2, a3);
  }

  result = sub_100097390(v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  if (!v4)
  {
LABEL_12:
    v16 = v3 + *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_10009E320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v22 = a8;
  v12 = sub_100011AC0(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = (&v21 - v15);
  sub_10001208C(a1, &v21 - v15, a5, a6);
  v17 = a7(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    sub_100011F00(v16, a5, a6);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v18 = *v16;
    v19 = v16[1];
    sub_1001D0BC0();
    return sub_100011E48(v18, v19);
  }

  result = sub_100097390(v16, v22);
  __break(1u);
  return result;
}

uint64_t sub_10009E490(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = (&v11 - v5);
  sub_10001208C(a1, &v11 - v5, &qword_100229930, &qword_1001D7198);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229930, &qword_1001D7198);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v6;
    v8 = v6[1];
    sub_1001D0BC0();
    return sub_100011E48(v9, v8);
  }

  result = sub_100097390(v6, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009E610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_100229930, &qword_1001D7198);
  v15 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_100229930, &qword_1001D7198);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100097550(v9, v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    sub_1001D0C20();
    return sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
  }

  result = sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v9, &qword_100229930, &qword_1001D7198);
  v15 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_100011F00(v9, &qword_100229930, &qword_1001D7198);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_100097550(v9, v14, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_1001D0C20();
    return sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
  }

  result = sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_10009EAE4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_10009EB88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0B0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009EC28(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009EC94()
{
  sub_1000A3704(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  return sub_1001D0B40();
}

uint64_t sub_10009ED10()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseStatus._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseStatus._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D3AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OK";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UNAUTHENTICATED";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INTERNAL_ERROR";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INVALID_REQUEST";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PROXY_FIND_WORKER_ERROR";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PROXY_WORKER_VALIDATION_ERROR";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  return sub_1001D0C40();
}

void sub_10009F040()
{
  v0._object = 0x80000001001E42E0;
  v0._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v0);
  static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.protoMessageName = 0xD000000000000040;
  *algn_100242FB8 = 0x80000001001E4150;
}

uint64_t *Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227770 != -1)
  {
    swift_once();
  }

  return &static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.protoMessageName;
}

uint64_t sub_10009F12C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "post_response_actions";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "response_status";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        sub_10009F3FC();
      }

      else if (result == 3)
      {
        sub_1000A374C();
        sub_1001D0A30();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_10009F3FC()
{
  v0 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 24);
  type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  return sub_1001D0AE0();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009F57C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v7 = *v3;
      v8 = *(v3 + 8);
      sub_1000A374C();
      sub_1001D0BB0();
    }

    v6 = v3 + *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_10009F57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  sub_10001208C(a1 + *(v16 + 24), v9, &qword_100229938, &unk_1001D71A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_100229938, &unk_1001D71A0);
  }

  sub_100097550(v9, v15, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  sub_1001D0C20();
  return sub_100097390(v15, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
}

uint64_t sub_10009F7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_10009F8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0A8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009F964(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009F9D0()
{
  sub_1000A3704(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

  return sub_1001D0B40();
}

void sub_10009FA4C()
{
  v0._object = 0x80000001001E4290;
  v0._countAndFlagsBits = 0xD000000000000014;
  sub_1001D18B0(v0);
  static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.protoMessageName = 0xD000000000000040;
  unk_100242FE0 = 0x80000001001E4150;
}

uint64_t *Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227780 != -1)
  {
    swift_once();
  }

  return &static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.protoMessageName;
}

uint64_t sub_10009FB38(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_10009FB94()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D39F0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "request_diagnostics";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_1001D0C30();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0A10();
    }
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1001D0BA0(), !v1))
  {
    v3 = &v0[*(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0) + 20)];
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0) + 20);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_10009FF44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_10009FF90(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_1000A0020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A0A0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A00C0(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A012C()
{
  sub_1000A3704(&qword_100229A30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);

  return sub_1001D0B40();
}

uint64_t sub_1000A01A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000A0274()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_RequestExecutionLogEntry._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_RequestExecutionLogEntry._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attestation";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_context";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "final";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1001D0A10();
        break;
      case 2:
        sub_1000A05A4();
        break;
      case 1:
        v3 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24);
        sub_1001D0A40();
        break;
    }
  }

  return result;
}

uint64_t sub_1000A05A4()
{
  v0 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 28);
  type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  return sub_1001D0AE0();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A0714(v3);
  if (!v4)
  {
    sub_1000A07B4(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_1001D0BA0();
    }

    v9 = &v3[*(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 20)];
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000A0714(uint64_t a1)
{
  result = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_100012038(*v3, *(v3 + 8));
    sub_1001D0BC0();
    return sub_10002683C(v5, v4);
  }

  return result;
}

uint64_t sub_1000A07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  sub_10001208C(a1 + *(v16 + 28), v9, &qword_100229940, &qword_1001E19D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_100229940, &qword_1001E19D0);
  }

  sub_100097550(v9, v15, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  sub_1001D0C20();
  return sub_100097390(v15, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
}

uint64_t sub_1000A0A18@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a1[6];
  v6 = a1[7];
  *&a2[v5] = xmmword_1001D6800;
  v7 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1000A0AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A0B1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000A0BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A098, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A0C60(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A0CCC()
{
  sub_1000A3704(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

  return sub_1001D0B40();
}

uint64_t sub_1000A0D74()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_ResponseContext._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_ResponseContext._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7180;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "context_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aead_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "aead_key";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "aead_nonce";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000A0FE0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1001D0C60();

  return sub_10003A37C(v3, a2);
}

uint64_t sub_1000A1058@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1001D0C60();
  v6 = sub_10003A37C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        sub_1001D0A50();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1001D0AC0();
    }
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1001D0C00(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_1001D0C00(), !v1))
    {
      v3 = *(v0 + 8);
      v4 = *(v0 + 16);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 != 2)
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
      }

      else
      {
        if (!v5)
        {
          if ((v4 & 0xFF000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v6 = v3;
        v7 = v3 >> 32;
      }

      if (v6 == v7)
      {
        goto LABEL_14;
      }

LABEL_13:
      result = sub_1001D0BC0();
      if (v1)
      {
        return result;
      }

LABEL_14:
      v8 = *(v0 + 24);
      v9 = *(v0 + 32);
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          goto LABEL_23;
        }

        v11 = *(v8 + 16);
        v12 = *(v8 + 24);
      }

      else
      {
        if (!v10)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_23;
          }

LABEL_22:
          result = sub_1001D0BC0();
          if (v1)
          {
            return result;
          }

          goto LABEL_23;
        }

        v11 = v8;
        v12 = v8 >> 32;
      }

      if (v11 != v12)
      {
        goto LABEL_22;
      }

LABEL_23:
      v13 = v0 + *(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) + 32);
      return sub_1001D0920();
    }
  }

  return result;
}

Swift::Int sub_1000A1344(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1001D2580();
  a1(0);
  sub_1000A3704(a2, a3);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000A13CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1001D7160;
  *(a2 + 32) = 0xC000000000000000;
  v2 = a2 + *(a1 + 32);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000A1404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A1478(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000A14EC(uint64_t a1, uint64_t a2))()
{
  result = Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType.rawValue.getter;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1000A1540(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A3704(&qword_10022A090, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A15E0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1001D0C60();
  v6 = sub_10003A37C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000A167C(uint64_t a1)
{
  v2 = sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A16E8()
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000A1740()
{
  sub_1000A3704(&qword_100229A60, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);

  return sub_1001D0B40();
}

Swift::Int sub_1000A17BC()
{
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000A1814(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000A19A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100011E48(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000AFA3C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100011E48(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000A19A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1001CF870();
  v11 = result;
  if (result)
  {
    result = sub_1001CF8A0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1001CF890();
  sub_1000AFA3C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1000A1A5C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100012038(a3, a4);
          return sub_1000A1814(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_100011AC0(&qword_10022A0E0, &qword_1001D8040);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_10001208C(a1, &v27 - v19, &qword_100229930, &qword_1001D7198);
  sub_10001208C(a2, &v20[v21], &qword_100229930, &qword_1001D7198);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_100011F00(v20, &qword_100229930, &qword_1001D7198);
LABEL_9:
      v25 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0) + 20);
      sub_1001D0940();
      sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
      v23 = sub_1001D1790();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v20, v14, &qword_100229930, &qword_1001D7198);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v20, &qword_10022A0E0, &qword_1001D8040);
    goto LABEL_7;
  }

  sub_100097550(&v20[v21], v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  v24 = _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v14, v9);
  sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  sub_100011F00(v20, &qword_100229930, &qword_1001D7198);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s20privatecloudcomputed41Proto_PrivateCloudCompute_ResponseContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || (sub_1000A1A5C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0 || (sub_1000A1A5C(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) + 32);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t _s20privatecloudcomputed50Proto_PrivateCloudCompute_RequestExecutionLogEntryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v41 = &v39 - v12;
  v13 = sub_100011AC0(&qword_10022A110, &qword_1001D8070);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v19 = *(v18 + 24);
  v20 = a1;
  v22 = *&a1[v19];
  v21 = *&a1[v19 + 8];
  v23 = a2;
  v24 = &a2[v19];
  v26 = *v24;
  v25 = v24[1];
  if (v21 >> 60 == 15)
  {
    if (v25 >> 60 == 15)
    {
      v39 = v8;
      v40 = v18;
      sub_100089C38(v22, v21);
      sub_100089C38(v26, v25);
      sub_10002683C(v22, v21);
      goto LABEL_7;
    }

LABEL_5:
    sub_100089C38(v22, v21);
    sub_100089C38(v26, v25);
    sub_10002683C(v22, v21);
    sub_10002683C(v26, v25);
    goto LABEL_15;
  }

  if (v25 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v39 = v8;
  v40 = v18;
  sub_100089C38(v22, v21);
  sub_100089C38(v26, v25);
  v27 = sub_1000A1A5C(v22, v21, v26, v25);
  sub_10002683C(v26, v25);
  sub_10002683C(v22, v21);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v28 = *(v40 + 28);
  v29 = *(v13 + 48);
  v30 = v20;
  sub_10001208C(&v20[v28], v17, &qword_100229940, &qword_1001E19D0);
  sub_10001208C(&v23[v28], &v17[v29], &qword_100229940, &qword_1001E19D0);
  v31 = *(v42 + 48);
  if (v31(v17, 1, v4) != 1)
  {
    v32 = v41;
    sub_10001208C(v17, v41, &qword_100229940, &qword_1001E19D0);
    if (v31(&v17[v29], 1, v4) != 1)
    {
      v33 = &v17[v29];
      v34 = v39;
      sub_100097550(v33, v39, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      v35 = _s20privatecloudcomputed41Proto_PrivateCloudCompute_ResponseContextV2eeoiySbAC_ACtFZ_0(v32, v34);
      sub_100097390(v34, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      sub_100097390(v32, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      sub_100011F00(v17, &qword_100229940, &qword_1001E19D0);
      if ((v35 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_100097390(v32, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
LABEL_12:
    sub_100011F00(v17, &qword_10022A110, &qword_1001D8070);
    goto LABEL_15;
  }

  if (v31(&v17[v29], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_100011F00(v17, &qword_100229940, &qword_1001E19D0);
LABEL_14:
  if (*v30 == *v23)
  {
    v38 = *(v40 + 20);
    sub_1001D0940();
    sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
    v36 = sub_1001D1790();
    return v36 & 1;
  }

LABEL_15:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v21 = (&v54 - v20);
  v23 = __chkstk_darwin(v19, v22);
  v25 = (&v54 - v24);
  __chkstk_darwin(v23, v26);
  v28 = (&v54 - v27);
  v29 = sub_100011AC0(&qword_10022A120, &qword_1001D8080);
  v30 = *(*(v29 - 8) + 64);
  v32 = __chkstk_darwin(v29 - 8, v31);
  v34 = &v54 - v33;
  v35 = (&v54 + *(v32 + 56) - v33);
  sub_100097A3C(a1, &v54 - v33, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  sub_100097A3C(v55, v35, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100097A3C(v34, v21, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100097550(v35, v11, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v39 = _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV0F7SummaryV2eeoiySbAE_AEtFZ_0(v21, v11);
        v40 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary;
        sub_100097390(v11, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v41 = v21;
LABEL_12:
        sub_100097390(v41, v40);
LABEL_20:
        sub_100097390(v34, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
        return v39 & 1;
      }

      v49 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary;
      v50 = v21;
    }

    else
    {
      sub_100097A3C(v34, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v48 = v54;
        sub_100097550(v35, v54, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v39 = _s20privatecloudcomputed50Proto_PrivateCloudCompute_RequestExecutionLogEntryV2eeoiySbAC_ACtFZ_0(v17, v48);
        v40 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
        sub_100097390(v48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v41 = v17;
        goto LABEL_12;
      }

      v49 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
      v50 = v17;
    }

    sub_100097390(v50, v49);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_100097A3C(v34, v25, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    v42 = *v25;
    v43 = v25[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100011E48(v42, v43);
      goto LABEL_17;
    }

    v45 = *v35;
    v44 = v35[1];
    v39 = sub_1000A1A5C(v42, v43, v45, v44);
    sub_100011E48(v45, v44);
    v46 = v42;
    v47 = v43;
    goto LABEL_19;
  }

  sub_100097A3C(v34, v28, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  v38 = *v28;
  v37 = v28[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    v52 = *v35;
    v51 = v35[1];
    v39 = sub_1000A1A5C(v38, v37, v52, v51);
    sub_100011E48(v52, v51);
    v46 = v38;
    v47 = v37;
LABEL_19:
    sub_100011E48(v46, v47);
    goto LABEL_20;
  }

  sub_100011E48(v38, v37);
LABEL_17:
  sub_100011F00(v34, &qword_10022A120, &qword_1001D8080);
  v39 = 0;
  return v39 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE8ResponseV0F7SummaryV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v33 - v12;
  v14 = sub_100011AC0(&qword_10022A118, &qword_1001D8078);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v33 - v18;
  v33 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v20 = *(v33 + 24);
  v21 = *(v15 + 56);
  v35 = a1;
  sub_10001208C(a1 + v20, v19, &qword_100229938, &unk_1001D71A0);
  v36 = a2;
  sub_10001208C(a2 + v20, &v19[v21], &qword_100229938, &unk_1001D71A0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_10001208C(v19, v13, &qword_100229938, &unk_1001D71A0);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v29 = v34;
      sub_100097550(&v19[v21], v34, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
      if (*v13 == *v29)
      {
        v31 = *(v4 + 20);
        sub_1001D0940();
        sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
        v32 = sub_1001D1790();
        sub_100097390(v29, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
        sub_100097390(v13, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
        sub_100011F00(v19, &qword_100229938, &unk_1001D71A0);
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }

      sub_100097390(v29, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
      sub_100097390(v13, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
      v25 = &qword_100229938;
      v26 = &unk_1001D71A0;
LABEL_13:
      sub_100011F00(v19, v25, v26);
      goto LABEL_14;
    }

    sub_100097390(v13, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
LABEL_12:
    v25 = &qword_10022A118;
    v26 = &qword_1001D8078;
    goto LABEL_13;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_100011F00(v19, &qword_100229938, &unk_1001D71A0);
LABEL_4:
  v23 = *v35;
  v24 = *v36;
  if (*(v36 + 8) == 1)
  {
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        if (v23 == 3)
        {
          goto LABEL_19;
        }
      }

      else if (v24 == 4)
      {
        if (v23 == 4)
        {
          goto LABEL_19;
        }
      }

      else if (v23 == 5)
      {
        goto LABEL_19;
      }
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        if (v23 == 1)
        {
          goto LABEL_19;
        }
      }

      else if (v23 == 2)
      {
        goto LABEL_19;
      }
    }

    else if (!v23)
    {
      goto LABEL_19;
    }
  }

  else if (v23 == v24)
  {
LABEL_19:
    v30 = *(v33 + 20);
    sub_1001D0940();
    sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
    v27 = sub_1001D1790();
    return v27 & 1;
  }

LABEL_14:
  v27 = 0;
  return v27 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE7RequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_100011AC0(&qword_10022A0F8, &qword_1001D8058);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_10001208C(a1, &v27 - v19, &qword_100229920, &qword_1001D7190);
  sub_10001208C(a2, &v20[v21], &qword_100229920, &qword_1001D7190);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_100011F00(v20, &qword_100229920, &qword_1001D7190);
LABEL_9:
      v25 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0) + 20);
      sub_1001D0940();
      sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
      v23 = sub_1001D1790();
      return v23 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v20, v14, &qword_100229920, &qword_1001D7190);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
LABEL_6:
    sub_100011F00(v20, &qword_10022A0F8, &qword_1001D8058);
    goto LABEL_7;
  }

  sub_100097550(&v20[v21], v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  v24 = _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE7RequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v14, v9);
  sub_100097390(v9, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  sub_100097390(v14, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  sub_100011F00(v20, &qword_100229920, &qword_1001D7190);
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s20privatecloudcomputed026Proto_PrivateCloudCompute_cdE7RequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  v8 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v43 - v20;
  __chkstk_darwin(v19, v22);
  v24 = (&v43 - v23);
  v25 = sub_100011AC0(&qword_10022A128, &qword_1001D8088);
  v26 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25 - 8, v27);
  v30 = &v43 - v29;
  v31 = (&v43 + *(v28 + 56) - v29);
  sub_100097A3C(a1, &v43 - v29, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  sub_100097A3C(a2, v31, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100097A3C(v30, v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    v35 = *v24;
    v36 = v24[1];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100011E48(v35, v36);
LABEL_15:
      sub_100011F00(v30, &qword_10022A128, &qword_1001D8088);
LABEL_17:
      v34 = 0;
      return v34 & 1;
    }

    v40 = *v31;
    v41 = v31[1];
    v34 = sub_1000A1A5C(v35, v36, *v31, v41);
    sub_100011E48(v40, v41);
    sub_100011E48(v35, v36);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_100097A3C(v30, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v38 = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage;
      v39 = v17;
      goto LABEL_14;
    }

    v37 = v44;
    sub_100097550(v31, v44, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    sub_1001D0940();
    sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
    v34 = sub_1001D1790();
    sub_100097390(v37, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    sub_100097390(v17, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
LABEL_19:
    sub_100097390(v30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    return v34 & 1;
  }

  sub_100097A3C(v30, v21, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v38 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken;
    v39 = v21;
LABEL_14:
    sub_100097390(v39, v38);
    goto LABEL_15;
  }

  sub_100097550(v31, v11, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  if ((sub_1000A1A5C(*v21, *(v21 + 1), *v11, *(v11 + 1)) & 1) == 0 || (sub_1000A1A5C(*(v21 + 2), *(v21 + 3), *(v11 + 2), *(v11 + 3)) & 1) == 0 || (v33 = *(v43 + 24), sub_1001D0940(), sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage), (sub_1001D1790() & 1) == 0))
  {
    sub_100097390(v11, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    sub_100097390(v21, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    sub_100097390(v30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    goto LABEL_17;
  }

  sub_100097390(v11, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  sub_100097390(v21, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  sub_100097390(v30, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_1000A3704(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A374C()
{
  result = qword_100229968;
  if (!qword_100229968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229968);
  }

  return result;
}

unint64_t sub_1000A37A4()
{
  result = qword_100229990;
  if (!qword_100229990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229990);
  }

  return result;
}

unint64_t sub_1000A37FC()
{
  result = qword_100229998;
  if (!qword_100229998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229998);
  }

  return result;
}

unint64_t sub_1000A3854()
{
  result = qword_1002299A0;
  if (!qword_1002299A0)
  {
    sub_100011DF4(&qword_1002299A8, &qword_1001D7248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002299A0);
  }

  return result;
}

unint64_t sub_1000A38BC()
{
  result = qword_1002299B0;
  if (!qword_1002299B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002299B0);
  }

  return result;
}

uint64_t sub_1000A4288()
{
  result = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A431C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A43E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4494()
{
  result = sub_1001D0940();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A4524(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A45A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A4614()
{
  result = sub_1001D0940();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_100011AC0(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_1001D0940();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000A47C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = sub_100011AC0(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_1001D0940();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1000A48E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1000A4970(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_1001D0940();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A4970(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1001D1F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A4A14()
{
  result = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A4AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000A4BCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001D0940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1000A4CD8()
{
  sub_1001D0940();
  if (v0 <= 0x3F)
  {
    sub_1000A4970(319, &unk_100229E80, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A4D9C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001D0940();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000A4E5C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4EFC()
{
  result = sub_1001D0940();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A4F8C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001D0940();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1000A50D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 28)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A51FC()
{
  sub_1001D0940();
  if (v0 <= 0x3F)
  {
    sub_1000A52C4();
    if (v1 <= 0x3F)
    {
      sub_1000A4970(319, &unk_100229FB8, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000A52C4()
{
  if (!qword_100229FB0)
  {
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, &qword_100229FB0);
    }
  }
}

uint64_t sub_1000A5328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A53F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A54A0()
{
  result = sub_1001D0940();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Proto_Ropes_Common_Attestation.cloudosReleaseType.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_Attestation.cellID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_Attestation.ensembleID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000A56A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0880();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_Common_TenantInfo.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_TenantInfo.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.bundleID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_TenantInfo.clearBundleID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.bundleVersion.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

uint64_t Proto_Ropes_Common_TenantInfo.featureID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_TenantInfo.featureID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.featureID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_TenantInfo.clearFeatureID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_TenantInfo.clientInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_Common_TenantInfo.clientInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.clientInfo.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000A5CF0;
}

Swift::Void __swiftcall Proto_Ropes_Common_TenantInfo.clearClientInfo()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1000A5D74(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t (*Proto_Ropes_Common_TenantInfo.automatedDeviceGroup.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

int *Proto_Ropes_Common_TenantInfo.init()@<X0>(uint64_t a1@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.nodeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyResponseBypassOhttpContexts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000A6064@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A6120(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000A6218@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_DecryptionKey.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  a1[1] = xmmword_1001D3A00;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_Common_DecryptionKey(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_Chunk.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_Common_Chunk(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Proto_Ropes_Common_Attestation.ohttpContext.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Ropes_Common_Attestation.ohttpContext.setter(int a1)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.ohttpContext.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000A6568;
}

uint64_t sub_1000A6568(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearOhttpContext()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Ropes_Common_Attestation.expirationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  sub_10001208C(v1 + *(v8 + 32), v7, &qword_10022A130, &qword_1001D80A0);
  v9 = sub_1001D08D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1001D08C0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_10022A130, &qword_1001D80A0);
  }

  return result;
}

uint64_t Proto_Ropes_Common_Attestation.expirationTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 32);
  sub_100011F00(v1 + v3, &qword_10022A130, &qword_1001D80A0);
  v4 = sub_1001D08D0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_Common_Attestation.expirationTime.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022A130, &qword_1001D80A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001D08D0();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 32);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022A130, &qword_1001D80A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001D08C0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022A130, &qword_1001D80A0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000A6A2C;
}

void sub_1000A6A2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_100011F00(v9 + v3, &qword_10022A130, &qword_1001D80A0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022A130, &qword_1001D80A0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_Common_Attestation.hasExpirationTime.getter()
{
  v1 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  sub_10001208C(v0 + *(v6 + 32), v5, &qword_10022A130, &qword_1001D80A0);
  v7 = sub_1001D08D0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_10022A130, &qword_1001D80A0);
  return v8;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearExpirationTime()()
{
  v1 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 32);
  sub_100011F00(v0 + v1, &qword_10022A130, &qword_1001D80A0);
  v2 = sub_1001D08D0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000A6D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.cloudosVersion.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

uint64_t sub_1000A6E70(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Proto_Ropes_Common_Attestation.cloudosReleaseType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.cloudosReleaseType.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearCloudosReleaseType()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_Attestation.cellID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.cellID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearCellID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_Attestation.ensembleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_Attestation.ensembleID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_Common_Attestation.clearEnsembleID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_Common_Attestation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v3 = a1 + v2[6];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = a1 + v2[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v2[8];
  v6 = sub_1001D08D0();
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v2[12]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.nodeIdentifier.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Proto_Ropes_Common_Capabilities.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_Capabilities(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_Common_Capabilities.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_Capabilities(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_Common_Capabilities.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_Common_Capabilities(0) + 32);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_AttestationList.init()@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_Common_AttestationList(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1001D3A00;
  *(a1 + 32) = 0;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000A7940(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1000A79D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_Common_ClientTerminate.reason.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_Common_ClientTerminate(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

void sub_1000A7AD0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t sub_1000A7BA0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1000A7BF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000A7C94(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t sub_1000A7D88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1000A7DB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1000A7DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B08D4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_Common_ClientTerminate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v3 = a1 + *(v2 + 20);
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.denyReason.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20));
  v2 = v1[8];
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.denyReason.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*Proto_Ropes_Common_DiagnosticInformation.denyReason.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return sub_1000A7F90;
}

uint64_t sub_1000A7F90(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall Proto_Ropes_Common_DiagnosticInformation.clearDenyReason()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 256;
}

void sub_1000A8050(uint64_t a1@<X8>)
{
  sub_1000B0824();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1000A8094(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1000B0824();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_1000A80CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B3194();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.init()@<X0>(uint64_t a1@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

uint64_t sub_1000A8174()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_CompressionAlgorithm._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_CompressionAlgorithm._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BROTLI";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ZSTD";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000A8418()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_TenantInfo._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_TenantInfo._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D62F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundle_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundle_version";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feature_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "client_info";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "automated_device_group";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_TenantInfo.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v8 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for Proto_Ropes_Common_TenantInfo(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      sub_1001D0A90();
LABEL_15:
      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_TenantInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A88DC(v3);
  if (!v4)
  {
    sub_1000AD1D0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_TenantInfo);
    sub_1000A8954(v3);
    sub_1000A89CC(v3);
    sub_1000AB4A0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_TenantInfo);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000A88DC(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000A8954(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000A89CC(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000A8A90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_1000A8B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA48, type metadata accessor for Proto_Ropes_Common_TenantInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A8BBC(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A230, type metadata accessor for Proto_Ropes_Common_TenantInfo);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A8C28()
{
  sub_1000B0838(&qword_10022A230, type metadata accessor for Proto_Ropes_Common_TenantInfo);

  return sub_1001D0B40();
}

uint64_t sub_1000A8CCC()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Workload._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Workload._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "param";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Workload.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1001D0AA0();
      }

      else if (result == 3)
      {
        type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0);
        sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
        sub_1001D0AD0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Workload.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1001D0BF0(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0), sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter), result = sub_1001D0C10(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Proto_Ropes_Common_Workload(0) + 24);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000A91A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA40, type metadata accessor for Proto_Ropes_Common_Workload);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A9240(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A248, type metadata accessor for Proto_Ropes_Common_Workload);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A92AC()
{
  sub_1000B0838(&qword_10022A248, type metadata accessor for Proto_Ropes_Common_Workload);

  return sub_1001D0B40();
}

void sub_1000A9340()
{
  v0._countAndFlagsBits = 0x74656D617261502ELL;
  v0._object = 0xEA00000000007265;
  sub_1001D18B0(v0);
  static Proto_Ropes_Common_Workload.Parameter.protoMessageName = 0xD000000000000022;
  unk_100243080 = 0x80000001001E4460;
}

uint64_t *Proto_Ropes_Common_Workload.Parameter.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002277B8 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_Common_Workload.Parameter.protoMessageName;
}

uint64_t static Proto_Ropes_Common_Workload.Parameter.protoMessageName.getter()
{
  if (qword_1002277B8 != -1)
  {
    swift_once();
  }

  v0 = static Proto_Ropes_Common_Workload.Parameter.protoMessageName;

  return v0;
}

uint64_t sub_1000A9468()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Workload.Parameter._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Workload.Parameter._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Workload.Parameter.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AA0();
    }

    else if (result == 2)
    {
      sub_1001D0A60();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Workload.Parameter.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1001D0BF0(), !v1))
  {
    if (!*(v0[2] + 16) || (result = sub_1001D0BD0(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0) + 24);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000A97E8(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1001D2470() & 1) == 0 || (a3(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a4(0) + 24);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000A9910@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000A9974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA38, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000A9A14(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A9A80()
{
  sub_1000B0838(&qword_10022A140, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);

  return sub_1001D0B40();
}

uint64_t sub_1000A9B14(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v9 = *a1 == *a2 && a1[1] == a2[1];
  if (!v9 && (sub_1001D2470() & 1) == 0 || (a5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000A9C10()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_DecryptionKey._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_DecryptionKey._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted_payload";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "key_id";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_DecryptionKey.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 3)
    {
      sub_1001D0A50();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_DecryptionKey.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1001D0BC0();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = sub_1001D0BC0();
      if (v1)
      {
        return result;
      }

      goto LABEL_19;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = v0 + *(type metadata accessor for Proto_Ropes_Common_DecryptionKey(0) + 24);
  return sub_1001D0920();
}

uint64_t static Proto_Ropes_Common_DecryptionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_1000A1A5C(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_Ropes_Common_DecryptionKey(0) + 24);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AA0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA30, type metadata accessor for Proto_Ropes_Common_DecryptionKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AA190(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A270, type metadata accessor for Proto_Ropes_Common_DecryptionKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AA1FC()
{
  sub_1000B0838(&qword_10022A270, type metadata accessor for Proto_Ropes_Common_DecryptionKey);

  return sub_1001D0B40();
}

uint64_t sub_1000AA278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_1000A1A5C(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AA35C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Chunk._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Chunk._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted_payload";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_final";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Chunk.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0A50();
    }

    else if (result == 2)
    {
      sub_1001D0A10();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Chunk.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1001D0BC0();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v0 + 16) != 1 || (result = sub_1001D0BA0(), !v1))
  {
    v8 = v0 + *(type metadata accessor for Proto_Ropes_Common_Chunk(0) + 24);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_Common_Chunk.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_Ropes_Common_Chunk(0) + 24);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AA7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1001D3A00;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000AA844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA28, type metadata accessor for Proto_Ropes_Common_Chunk);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AA8E4(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A288, type metadata accessor for Proto_Ropes_Common_Chunk);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AA950()
{
  sub_1000B0838(&qword_10022A288, type metadata accessor for Proto_Ropes_Common_Chunk);

  return sub_1001D0B40();
}

uint64_t sub_1000AA9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AAAB0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Attestation._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Attestation._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001D8090;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "attestation_bundle";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_1001D0C30();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "node_identifier";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ohttp_context";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "expiration_time";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cloudos_version";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "cloudos_release_type";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "cell_id";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ensemble_id";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Attestation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          v7 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 44);
          goto LABEL_3;
        }

        if (result == 8)
        {
          v5 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 48);
          goto LABEL_3;
        }
      }

      else
      {
        if (result == 5)
        {
          v1 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 36);
        }

        else
        {
          v4 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 40);
        }

LABEL_3:
        v0 = 0;
        sub_1001D0A90();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        v6 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 28);
        sub_1001D0AB0();
      }

      else
      {
        sub_1000AAFC8();
      }
    }

    else if (result == 1)
    {
      sub_1001D0A50();
    }

    else if (result == 2)
    {
      sub_1001D0AA0();
    }
  }
}

uint64_t sub_1000AAFC8()
{
  v0 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 32);
  sub_1001D08D0();
  sub_1000B0838(&qword_10022AA78, &type metadata accessor for Google_Protobuf_Timestamp);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_Common_Attestation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1001D0BC0();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = v3[3];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = sub_1001D0BF0(), !v4))
  {
    result = sub_1000AB20C(v3);
    if (!v4)
    {
      sub_1000AB284(v3, a1, a2, a3);
      sub_1000AB4A0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_1000AB51C(v3);
      sub_1000AB594(v3);
      sub_1000AB60C(v3);
      v16 = v3 + *(type metadata accessor for Proto_Ropes_Common_Attestation(0) + 24);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000AB20C(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1001D0C00();
  }

  return result;
}

uint64_t sub_1000AB284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v18 - v8;
  v10 = sub_1001D08D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  sub_10001208C(a1 + *(v16 + 32), v9, &qword_10022A130, &qword_1001D80A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011F00(v9, &qword_10022A130, &qword_1001D80A0);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1000B0838(&qword_10022AA78, &type metadata accessor for Google_Protobuf_Timestamp);
  sub_1001D0C20();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000AB4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB51C(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB594(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB60C(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB6D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1001D3A00;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v4 = a2 + a1[6];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a1[8];
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = sub_1001D08D0();
  result = (*(*(v7 - 8) + 56))(a2 + v5, 1, 1, v7);
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1[12];
  v13 = (a2 + a1[11]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v12);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

uint64_t sub_1000AB7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA20, type metadata accessor for Proto_Ropes_Common_Attestation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AB868(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AB8D4()
{
  sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);

  return sub_1001D0B40();
}

uint64_t sub_1000AB978()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Capabilities._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Capabilities._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7180;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "compression_algorithm";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attestation_streaming";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trusted_proxy_request_nack";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "trusted_proxy_duplicate_first_request_chunk";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Capabilities.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          sub_1001D0A10();
        }
      }

      else if (result == 1)
      {
        sub_1000B0880();
        sub_1001D0A00();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Capabilities.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_1000B0880(), result = sub_1001D0B80(), !v1))
  {
    if (v0[8] != 1 || (result = sub_1001D0BA0(), !v1))
    {
      if (v0[9] != 1 || (result = sub_1001D0BA0(), !v1))
      {
        if (v0[10] != 1 || (result = sub_1001D0BA0(), !v1))
        {
          v3 = &v0[*(type metadata accessor for Proto_Ropes_Common_Capabilities(0) + 32)];
          return sub_1001D0920();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000ABE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 10) = 0;
  v2 = a2 + *(a1 + 32);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000ABEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA18, type metadata accessor for Proto_Ropes_Common_Capabilities);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000ABF58(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ABFC4()
{
  sub_1000B0838(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities);

  return sub_1001D0B40();
}

uint64_t Proto_Ropes_Common_AttestationList.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Ropes_Common_Attestation(0);
        sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation);
        sub_1001D0AD0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_AttestationList.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Proto_Ropes_Common_Attestation(0), sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation), result = sub_1001D0C10(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Proto_Ropes_Common_AttestationList(0) + 20);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_Common_AttestationList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1000AE120(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_Ropes_Common_AttestationList(0) + 20);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AC384@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000AC3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA10, type metadata accessor for Proto_Ropes_Common_AttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AC480(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AC4EC()
{
  sub_1000B0838(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000AC568(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1000AE120(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AC638()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_CompressedAttestationList._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_CompressedAttestationList._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "compression_algorithm";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "compressed_bytes";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncompressed_length_hint";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1001D0AC0();
          break;
        case 2:
          sub_1001D0A50();
          break;
        case 1:
          sub_1000B0880();
          sub_1001D0A30();
          break;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.traverse<A>(visitor:)()
{
  if (*v0)
  {
    v9 = *v0;
    v10 = *(v0 + 8);
    sub_1000B0880();
    result = sub_1001D0BB0();
    if (v1)
    {
      return result;
    }
  }

  v3 = v0[2];
  v4 = v0[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = sub_1001D0BC0();
      if (v1)
      {
        return result;
      }

      goto LABEL_12;
    }

    v6 = v3;
    v7 = v3 >> 32;
  }

  if (v6 != v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!*(v0 + 8) || (result = sub_1001D0C00(), !v1))
  {
    v8 = v0 + *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000ACAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_1001D3A00;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 28);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000ACB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000ACB98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000ACC0C(uint64_t a1, uint64_t a2))()
{
  result = Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType.rawValue.getter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1000ACC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA08, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000ACD00(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ACD6C()
{
  sub_1000B0838(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000ACE10()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_ClientTerminate._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_ClientTerminate._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_ClientTerminate.decodeMessage<A>(decoder:)()
{
  result = sub_1001D09E0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1000B08D4();
        sub_1001D0A30();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for Proto_Ropes_Common_ClientTerminate(0) + 24);
        sub_1001D0A90();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_ClientTerminate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_1000B08D4(), result = sub_1001D0BB0(), !v4))
  {
    result = sub_1000AD1D0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Proto_Ropes_Common_ClientTerminate(0) + 20);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000AD1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AD298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1000AD310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA00, type metadata accessor for Proto_Ropes_Common_ClientTerminate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AD3B0(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AD41C()
{
  sub_1000B0838(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);

  return sub_1001D0B40();
}

uint64_t sub_1000AD498()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_ClientTerminate.Code._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_ClientTerminate.Code._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNDEFINED";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CRYPTO_ERROR";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "APPLICATION_ERROR";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000AD758(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_1001D0C60();
  sub_10003B610(v7, a2);
  sub_10003A37C(v7, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v8 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001D39F0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v13 = *a4;
  v14 = sub_1001D0C30();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1000AD97C();
    }
  }

  return result;
}

uint64_t sub_1000AD97C()
{
  v0 = *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20);
  sub_1000B3194();
  return sub_1001D0A20();
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.traverse<A>(visitor:)()
{
  result = sub_1000ADA48(v0);
  if (!v1)
  {
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000ADA48(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v3 = (a1 + *(result + 20));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_1000B3194();
    return sub_1001D0BB0();
  }

  return result;
}

Swift::Int sub_1000ADB38(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1001D2580();
  a1(0);
  sub_1000B0838(a2, a3);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000ADBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_1000ADC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022A9F8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000ADCCC(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ADD38()
{
  sub_1000B0838(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);

  return sub_1001D0B40();
}

uint64_t sub_1000ADDB4()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_DiagnosticInformation.DenyReason._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_DiagnosticInformation.DenyReason._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D3ED0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNDEFINED";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TENANT_BLOCKED";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WORKLOAD_BLOCKED";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FEATUREID_BLOCKED";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SOFTWARE_BLOCKED";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CLIENT_RATE_LIMIT_THROTTLED";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SERVER_RATE_LIMIT_THROTTLED";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000AE120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v10);
  v13 = (&v21 - v12);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_1000B31E8(v16, v13, type metadata accessor for Proto_Ropes_Common_Attestation);
        sub_1000B31E8(v17, v9, type metadata accessor for Proto_Ropes_Common_Attestation);
        v19 = _s20privatecloudcomputed30Proto_Ropes_Common_AttestationV2eeoiySbAC_ACtFZ_0(v13, v9);
        sub_1000B3250(v9, type metadata accessor for Proto_Ropes_Common_Attestation);
        sub_1000B3250(v13, type metadata accessor for Proto_Ropes_Common_Attestation);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1000AE2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_1000B31E8(v16, v13, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        sub_1000B31E8(v17, v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v19 = static Proto_Ropes_RateLimit_RateLimitConfiguration.== infix(_:_:)(v13, v9);
        sub_1000B3250(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        sub_1000B3250(v13, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1000AE490(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v4 = *(v65 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v65, v6);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = (&v55 - v12);
  v14 = sub_100011AC0(&qword_10022AA60, &unk_1001D9600);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v64 = &v55 - v17;
  v66 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  v18 = *(*(v66 - 8) + 64);
  v20 = __chkstk_darwin(v66, v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v26 = &v55 - v25;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_43:
    v49 = 0;
    return v49 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v56 = v8;
  v57 = v14;
  v28 = 0;
  v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v59 = a2 + v29;
  v58 = (v4 + 48);
  v60 = *(v24 + 72);
  v61 = a1 + v29;
  v63 = v27;
  while (1)
  {
    v30 = v60 * v28;
    result = sub_1000B31E8(v61 + v60 * v28, v26, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    if (v28 == v63)
    {
      goto LABEL_46;
    }

    sub_1000B31E8(v59 + v30, v22, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    result = *v26;
    if (*v26 != *v22 || *(v26 + 1) != *(v22 + 1))
    {
      result = sub_1001D2470();
      if ((result & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v33 = *(v26 + 2);
    v34 = *(v22 + 2);
    v35 = *(v33 + 16);
    if (v35 != *(v34 + 16))
    {
      goto LABEL_42;
    }

    if (v35 && v33 != v34)
    {
      break;
    }

LABEL_17:
    v62 = v28;
    v37 = *(v66 + 36);
    v38 = *(v14 + 48);
    v39 = v64;
    sub_10001208C(&v26[v37], v64, &qword_10022AA58, &qword_1001D95F8);
    sub_10001208C(&v22[v37], v39 + v38, &qword_10022AA58, &qword_1001D95F8);
    v40 = *v58;
    v41 = v65;
    if ((*v58)(v39, 1, v65) == 1)
    {
      v42 = v40(v39 + v38, 1, v41);
      v43 = v62;
      if (v42 != 1)
      {
        goto LABEL_40;
      }

      sub_100011F00(v39, &qword_10022AA58, &qword_1001D95F8);
      v14 = v57;
    }

    else
    {
      sub_10001208C(v39, v13, &qword_10022AA58, &qword_1001D95F8);
      if (v40(v39 + v38, 1, v41) == 1)
      {
        sub_1000B3250(v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
LABEL_40:
        v53 = &qword_10022AA60;
        v54 = &unk_1001D9600;
        goto LABEL_41;
      }

      v45 = v56;
      v44 = v57;
      sub_1000B32B0(v39 + v38, v56);
      if ((sub_1000CF830(*v13, *v45) & 1) == 0 || (sub_1000CF9D4(v13[1], v45[1]) & 1) == 0)
      {
        sub_1000B3250(v45, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        sub_1000B3250(v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        v53 = &qword_10022AA58;
        v54 = &qword_1001D95F8;
LABEL_41:
        sub_100011F00(v39, v53, v54);
LABEL_42:
        sub_1000B3250(v22, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
        sub_1000B3250(v26, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
        goto LABEL_43;
      }

      v46 = *(v41 + 24);
      sub_1001D0940();
      sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
      v47 = sub_1001D1790();
      sub_1000B3250(v45, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      sub_1000B3250(v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      sub_100011F00(v39, &qword_10022AA58, &qword_1001D95F8);
      v14 = v44;
      v43 = v62;
      if ((v47 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (*(v26 + 3) != *(v22 + 3) || *(v26 + 8) != *(v22 + 8))
    {
      goto LABEL_42;
    }

    v48 = *(v66 + 32);
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
    v49 = sub_1001D1790();
    sub_1000B3250(v22, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    sub_1000B3250(v26, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    if (v49)
    {
      v28 = v43 + 1;
      if (v28 != v63)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  v50 = (v33 + 40);
  v51 = (v34 + 40);
  while (v35)
  {
    result = *(v50 - 1);
    if (result != *(v51 - 1) || *v50 != *v51)
    {
      result = sub_1001D2470();
      if ((result & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v50 += 2;
    v51 += 2;
    if (!--v35)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000AEB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v10);
  v13 = (&v23 - v12);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_1000B31E8(v16, v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        sub_1000B31E8(v17, v9, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        v19 = *v13 == *v9 && v13[1] == v9[1];
        if (!v19 && (sub_1001D2470() & 1) == 0)
        {
          break;
        }

        v20 = *(v4 + 20);
        sub_1001D0940();
        sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
        v21 = sub_1001D1790();
        sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        sub_1000B3250(v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        if (v21)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v21 & 1;
      }

      sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
      sub_1000B3250(v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1000AED88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1001D2470() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000AEE18(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0);
  v4 = *(*(v46 - 8) + 64);
  v6 = __chkstk_darwin(v46, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v12 = &v42 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      v44 = 0;
      v45 = v17;
      while (1)
      {
        sub_1000B31E8(v15, v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        sub_1000B31E8(v16, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        if (*v12 != *v8)
        {
LABEL_59:
          sub_1000B3250(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
          sub_1000B3250(v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
          goto LABEL_60;
        }

        v18 = *(v12 + 1);
        v19 = *(v12 + 2);
        v20 = *(v8 + 1);
        v21 = *(v8 + 2);
        v22 = v19 >> 62;
        v23 = v21 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v30 = *(v18 + 16);
            v29 = *(v18 + 24);
            v27 = __OFSUB__(v29, v30);
            v24 = v29 - v30;
            if (v27)
            {
              goto LABEL_63;
            }

            goto LABEL_22;
          }

          v24 = 0;
          if (v23 > 1)
          {
            goto LABEL_16;
          }
        }

        else if (v22)
        {
          LODWORD(v24) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_64;
          }

          v24 = v24;
          if (v23 > 1)
          {
LABEL_16:
            if (v23 != 2)
            {
              if (v24)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v26 = *(v20 + 16);
            v25 = *(v20 + 24);
            v27 = __OFSUB__(v25, v26);
            v28 = v25 - v26;
            if (v27)
            {
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
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v24 = BYTE6(v19);
          if (v23 > 1)
          {
            goto LABEL_16;
          }
        }

LABEL_23:
        if (v23)
        {
          LODWORD(v28) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_62;
          }

          v28 = v28;
        }

        else
        {
          v28 = BYTE6(v21);
        }

LABEL_29:
        if (v24 != v28)
        {
          goto LABEL_59;
        }

        if (v24 >= 1)
        {
          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v31 = *(v18 + 16);
              v42 = *(v18 + 24);
              v43 = v20;
              v32 = sub_1001CF870();
              if (v32)
              {
                v33 = sub_1001CF8A0();
                if (__OFSUB__(v31, v33))
                {
                  goto LABEL_67;
                }

                v32 += v31 - v33;
              }

              if (__OFSUB__(v42, v31))
              {
                goto LABEL_66;
              }

              goto LABEL_54;
            }

            memset(v48, 0, 14);
          }

          else
          {
            if (v22)
            {
              v43 = *(v8 + 1);
              v34 = v18;
              if (v18 >> 32 < v18)
              {
                goto LABEL_65;
              }

              v35 = sub_1001CF870();
              if (v35)
              {
                v42 = v35;
                v36 = sub_1001CF8A0();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_68;
                }

                v32 = v34 - v36 + v42;
              }

              else
              {
                v32 = 0;
              }

LABEL_54:
              sub_1001CF890();
              v38 = v44;
              sub_1000AFA3C(v32, v43, v21, v48);
              v44 = v38;
              if ((v48[0] & 1) == 0)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v48[0] = *(v12 + 1);
            LOWORD(v48[1]) = v19;
            BYTE2(v48[1]) = BYTE2(v19);
            BYTE3(v48[1]) = BYTE3(v19);
            BYTE4(v48[1]) = BYTE4(v19);
            BYTE5(v48[1]) = BYTE5(v19);
          }

          v37 = v44;
          sub_1000AFA3C(v48, v20, v21, &v47);
          v44 = v37;
          if (!v47)
          {
            goto LABEL_59;
          }
        }

LABEL_55:
        v39 = *(v46 + 24);
        sub_1001D0940();
        sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
        v40 = sub_1001D1790();
        sub_1000B3250(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        sub_1000B3250(v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        if (v40)
        {
          v16 += v45;
          v15 += v45;
          if (--v13)
          {
            continue;
          }
        }

        return v40 & 1;
      }

      v24 = 0;
      if (!v18 && v19 == 0xC000000000000000 && v21 >> 62 == 3)
      {
        v24 = 0;
        if (!v20 && v21 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_22:
      if (v23 > 1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v40 = 1;
  }

  else
  {
LABEL_60:
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t sub_1000AF338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v13 = &v23 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_16:
    v21 = 0;
    return v21 & 1;
  }

  if (v14 && a1 != a2)
  {
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = *(v11 + 72);
    while (1)
    {
      sub_1000B31E8(v16, v13, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      sub_1000B31E8(v17, v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      v19 = *v13 == *v9 && *(v13 + 1) == *(v9 + 1);
      if (!v19 && (sub_1001D2470() & 1) == 0 || *(v13 + 4) != *(v9 + 4))
      {
        break;
      }

      v20 = *(v4 + 24);
      sub_1001D0940();
      sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
      v21 = sub_1001D1790();
      sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      sub_1000B3250(v13, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      if (v21)
      {
        v17 += v18;
        v16 += v18;
        if (--v14)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
    sub_1000B3250(v13, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
    goto LABEL_16;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1000AF5AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000AF698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7, v10);
  v13 = (&v30 - v12);
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_28:
    v26 = 0;
    return v26 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v15 = 0;
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v31 = a1 + v16;
  v17 = a2 + v16;
  v18 = *(v11 + 72);
  while (1)
  {
    result = sub_1000B31E8(v31 + v18 * v15, v13, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    if (v15 == v14)
    {
      break;
    }

    sub_1000B31E8(v17 + v18 * v15, v9, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    result = *v13;
    v20 = *v13 == *v9 && v13[1] == v9[1];
    if (!v20 && (result = sub_1001D2470(), (result & 1) == 0) || (v21 = v13[2], v22 = v9[2], v23 = *(v21 + 16), v23 != *(v22 + 16)))
    {
LABEL_27:
      sub_1000B3250(v9, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
      sub_1000B3250(v13, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
      goto LABEL_28;
    }

    if (v23)
    {
      v24 = v21 == v22;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v27 = (v21 + 40);
      v28 = (v22 + 40);
      while (v23)
      {
        result = *(v27 - 1);
        if (result != *(v28 - 1) || *v27 != *v28)
        {
          result = sub_1001D2470();
          if ((result & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v27 += 2;
        v28 += 2;
        if (!--v23)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    v25 = *(v4 + 24);
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
    v26 = sub_1001D1790();
    sub_1000B3250(v9, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    sub_1000B3250(v13, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    if ((v26 & 1) != 0 && ++v15 != v14)
    {
      continue;
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1001D2470() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1001D2470() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000AFA3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1001CF870();
    if (v10)
    {
      v11 = sub_1001CF8A0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1001CF890();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1001CF870();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1001CF8A0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1001CF890();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s20privatecloudcomputed44Proto_Ropes_Common_CompressedAttestationListV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((sub_1000A1A5C(a1[2], a1[3], a2[2], a2[3]) & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v6 = *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  return 0;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_Common_DiagnosticInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 9);
  v7 = a2 + v4;
  v8 = *(a2 + v4 + 9);
  if (v6)
  {
    if (v8)
    {
LABEL_3:
      sub_1001D0940();
      sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
      return sub_1001D1790() & 1;
    }
  }

  else if ((v8 & 1) == 0)
  {
    v10 = *v5;
    v11 = *v7;
    if (*(v7 + 8))
    {
      if (v11 <= 2)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            if (v10 == 1)
            {
              goto LABEL_3;
            }
          }

          else if (v10 == 2)
          {
            goto LABEL_3;
          }
        }

        else if (!v10)
        {
          goto LABEL_3;
        }
      }

      else if (v11 > 4)
      {
        if (v11 == 5)
        {
          if (v10 == 5)
          {
            goto LABEL_3;
          }
        }

        else if (v10 == 6)
        {
          goto LABEL_3;
        }
      }

      else if (v11 == 3)
      {
        if (v10 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v10 == 4)
      {
        goto LABEL_3;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s20privatecloudcomputed34Proto_Ropes_Common_ClientTerminateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v7 = *(v6 + 24);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    if (*v8 != *v10 || v9 != v11)
    {
      v13 = v6;
      v14 = sub_1001D2470();
      v6 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_18:
    v15 = *(v6 + 20);
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t _s20privatecloudcomputed31Proto_Ropes_Common_CapabilitiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1000AF608(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Proto_Ropes_Common_Capabilities(0) + 32);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t _s20privatecloudcomputed30Proto_Ropes_Common_AttestationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1001D08D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v57 - v13;
  v15 = sub_100011AC0(&qword_10022AA68, &qword_1001D9618);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v57 - v18;
  if ((sub_1000A1A5C(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1001D2470() & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v21 = *(v20 + 28);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_17;
    }
  }

  v58 = v20;
  v26 = *(v20 + 32);
  v27 = *(v15 + 48);
  sub_10001208C(a1 + v26, v19, &qword_10022A130, &qword_1001D80A0);
  v28 = a2 + v26;
  v29 = v5;
  sub_10001208C(v28, &v19[v27], &qword_10022A130, &qword_1001D80A0);
  v30 = *(v5 + 48);
  if (v30(v19, 1, v4) != 1)
  {
    sub_10001208C(v19, v14, &qword_10022A130, &qword_1001D80A0);
    if (v30(&v19[v27], 1, v4) != 1)
    {
      (*(v29 + 32))(v9, &v19[v27], v4);
      sub_1000B0838(&qword_10022AA70, &type metadata accessor for Google_Protobuf_Timestamp);
      v33 = sub_1001D1790();
      v34 = *(v29 + 8);
      v34(v9, v4);
      v34(v14, v4);
      sub_100011F00(v19, &qword_10022A130, &qword_1001D80A0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(v29 + 8))(v14, v4);
LABEL_16:
    sub_100011F00(v19, &qword_10022AA68, &qword_1001D9618);
    goto LABEL_17;
  }

  if (v30(&v19[v27], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  sub_100011F00(v19, &qword_10022A130, &qword_1001D80A0);
LABEL_20:
  v35 = v58;
  v36 = v58[9];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v40)
  {
    goto LABEL_17;
  }

  v41 = v35[10];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v45)
  {
    goto LABEL_17;
  }

  v46 = v35[11];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v50)
  {
    goto LABEL_17;
  }

  v51 = v35[12];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_48:
    v56 = v35[6];
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
    v31 = sub_1001D1790();
    return v31 & 1;
  }

  if (!v55)
  {
    goto LABEL_48;
  }

LABEL_17:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s20privatecloudcomputed29Proto_Ropes_Common_TenantInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1001D2470();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1001D2470();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_1001D2470();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_1001D2470();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (sub_1001D2470() & 1) != 0))
    {
      goto LABEL_42;
    }
  }

  else if (!v41)
  {
LABEL_42:
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  return 0;
}

uint64_t sub_1000B0838(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B0880()
{
  result = qword_10022A170;
  if (!qword_10022A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A170);
  }

  return result;
}

unint64_t sub_1000B08D4()
{
  result = qword_10022A198;
  if (!qword_10022A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A198);
  }

  return result;
}

unint64_t sub_1000B092C()
{
  result = qword_10022A1B0;
  if (!qword_10022A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1B0);
  }

  return result;
}

unint64_t sub_1000B0984()
{
  result = qword_10022A1B8;
  if (!qword_10022A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1B8);
  }

  return result;
}

unint64_t sub_1000B0A0C()
{
  result = qword_10022A1D0;
  if (!qword_10022A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1D0);
  }

  return result;
}

unint64_t sub_1000B0A64()
{
  result = qword_10022A1D8;
  if (!qword_10022A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1D8);
  }

  return result;
}

unint64_t sub_1000B0ABC()
{
  result = qword_10022A1E0;
  if (!qword_10022A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1E0);
  }

  return result;
}

unint64_t sub_1000B0B44()
{
  result = qword_10022A1F8;
  if (!qword_10022A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1F8);
  }

  return result;
}

unint64_t sub_1000B0B9C()
{
  result = qword_10022A200;
  if (!qword_10022A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A200);
  }

  return result;
}

unint64_t sub_1000B0BF4()
{
  result = qword_10022A208;
  if (!qword_10022A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A208);
  }

  return result;
}

uint64_t sub_1000B0C78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B0CD0()
{
  result = qword_10022A220;
  if (!qword_10022A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A220);
  }

  return result;
}

uint64_t sub_1000B19A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000B1A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001D0940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1000B1B44()
{
  sub_1001D0940();
  if (v0 <= 0x3F)
  {
    sub_1000B3134(319, &qword_100229738, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B1C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1001D0940();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B1D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B1DE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B1FA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B2074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001D0940();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000B2134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B21E0()
{
  result = sub_1001D0940();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B2270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000B23B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000B24E4()
{
  sub_1001D0940();
  if (v0 <= 0x3F)
  {
    sub_1000B3134(319, &qword_10022A698, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000B262C(319, &unk_10022A6A0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000B3134(319, &qword_100229738, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000B262C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000B26A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B2764(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000B2808()
{
  sub_1000B3134(319, &unk_10022A758, &type metadata for Proto_Ropes_Common_CompressionAlgorithm, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1001D0940();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B28D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B2990(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000B2A34()
{
  sub_1000B262C(319, &unk_10022A800, type metadata accessor for Proto_Ropes_Common_Attestation, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1001D0940();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B2AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B2BC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B2C74()
{
  result = sub_1001D0940();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B2D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000B2E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001D0940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1000B2EC0()
{
  sub_1001D0940();
  if (v0 <= 0x3F)
  {
    sub_1000B3134(319, &qword_100229738, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B2F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B301C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000B308C()
{
  sub_1001D0940();
  if (v0 <= 0x3F)
  {
    sub_1000B3134(319, &unk_10022A9C8, &type metadata for Proto_Ropes_Common_DiagnosticInformation.DenyReason, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B3134(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1000B3194()
{
  result = qword_10022AA50;
  if (!qword_10022AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AA50);
  }

  return result;
}

uint64_t sub_1000B31E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B3250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B32B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  sub_10001208C(v1 + *(v8 + 20), v7, &qword_1002293A8, &unk_1001D6530);
  v9 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000B3928(v7, a1, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  v11 = a1 + *(v9 + 32);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.capabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 20);
  sub_100011F00(v1 + v3, &qword_1002293A8, &unk_1001D6530);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.clientRequestedAttestationCount.setter(int a1)
{
  result = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.setupRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v15 - v7;
  sub_10001208C(v2, &v15 - v7, &qword_10022AA80, &unk_1001E1C40);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = &_swiftEmptyArrayStorage;
    *(a1 + 16) = &_swiftEmptyArrayStorage;
    v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
    v11 = a1 + v10[7];
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v12 = v10[8];
    v13 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
    result = (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
    *(a1 + v10[9]) = xmmword_1001D6800;
    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    goto LABEL_5;
  }

  return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
}

double Proto_Ropes_HttpService_InvokeRequest.SetupRequest.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = &_swiftEmptyArrayStorage;
  *(a1 + 16) = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v3 = a1 + v2[7];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = v2[8];
  v5 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  result = 0.0;
  *(a1 + v2[9]) = xmmword_1001D6800;
  return result;
}

uint64_t sub_1000B3928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.setupRequest.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA80, &unk_1001E1C40);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeRequest.setupRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_10022AA80, &unk_1001E1C40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_10022AA80, &unk_1001E1C40);
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000B3928(v8, v12, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      return sub_1000B3CCC;
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  }

  *v12 = 0;
  *(v12 + 8) = &_swiftEmptyArrayStorage;
  *(v12 + 16) = &_swiftEmptyArrayStorage;
  v15 = v12 + v9[7];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v16 = v9[8];
  v17 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  *(v12 + v9[9]) = xmmword_1001D6800;
  return sub_1000B3CCC;
}

void sub_1000B3CCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000B3E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.terminate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v14 - v7;
  sub_10001208C(v2, &v14 - v7, &qword_10022AA80, &unk_1001E1C40);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v11 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v12 = a1 + *(v11 + 20);
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v13 = (a1 + *(v11 + 24));
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.terminate.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA80, &unk_1001E1C40);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeRequest.terminate.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA80, &unk_1001E1C40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA80, &unk_1001E1C40);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA80, &unk_1001E1C40);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    v14 = v11 + *(v8 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v15 = (v11 + *(v8 + 24));
    *v15 = 0;
    v15[1] = 0;
    return sub_1000B4324;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  return sub_1000B4324;
}

void sub_1000B4324(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000B44A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.attestationMappings.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  sub_10001208C(v1 + *(v8 + 32), v7, &qword_1002293A8, &unk_1001D6530);
  v9 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000B3928(v7, a1, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  v11 = a1 + *(v9 + 32);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.capabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  sub_100011F00(v1 + v3, &qword_1002293A8, &unk_1001D6530);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Ropes_HttpService_InvokeRequest.SetupRequest.capabilities.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_1002293A8, &unk_1001D6530) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_1002293A8, &unk_1001D6530);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    *(v13 + 8) = 0;
    *(v13 + 10) = 0;
    v16 = v13 + *(v8 + 32);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  return sub_1000B4A2C;
}

BOOL Proto_Ropes_HttpService_InvokeRequest.SetupRequest.hasCapabilities.getter()
{
  v1 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  sub_10001208C(v0 + *(v6 + 32), v5, &qword_1002293A8, &unk_1001D6530);
  v7 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_1002293A8, &unk_1001D6530);
  return v8;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_InvokeRequest.SetupRequest.clearCapabilities()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  sub_100011F00(v0 + v1, &qword_1002293A8, &unk_1001D6530);
  v2 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyRequestPayload.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_100089C38(*v1, v2);
  return v3;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyRequestPayload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36);
  result = sub_10002683C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyRequestPayload.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_100089C38(v5, v6);
  return sub_10009A0F4;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_InvokeRequest.SetupRequest.clearTrustedProxyRequestPayload()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36);
  sub_10002683C(*v1, *(v1 + 8));
  *v1 = xmmword_1001D6800;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_Common_AttestationList);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v10 = a1 + *(type metadata accessor for Proto_Ropes_Common_AttestationList(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_AttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.attestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_AttestationList);
      return sub_1000B5410;
    }

    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *v11 = &_swiftEmptyArrayStorage;
  v14 = v11 + *(v8 + 20);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  return sub_1000B5410;
}

void sub_1000B5410(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_AttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_AttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_AttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_AttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.compressedAttestationList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_10022AA88, &qword_1001D9620);
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000B3928(v8, a1, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1001D3A00;
  *(a1 + 32) = 0;
  v11 = a1 + *(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) + 28);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.compressedAttestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.compressedAttestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = xmmword_1001D3A00;
    *(v11 + 32) = 0;
    v14 = v11 + *(v8 + 28);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B5A0C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  return sub_1000B5A0C;
}