unsigned __int8 *sub_100084214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100083890();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100084790(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

unint64_t sub_10008481C()
{
  result = qword_1004A8460;
  if (!qword_1004A8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8460);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for EarliestTimeFilter(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EarliestTimeFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EarliestTimeFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100084970@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000849F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100084AE8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v8, v1);
  Date.init()();
  v9 = static Date.< infix(_:_:)();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  return v9 & 1;
}

uint64_t sub_100084C38()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100086A00(&qword_1004A7A60, type metadata accessor for AuthToken);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for AuthToken()
{
  result = qword_1004A84B8;
  if (!qword_1004A84B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100084D50()
{
  sub_10008559C();
  type metadata accessor for AuthToken();
  sub_100086A00(&qword_1004A8468, type metadata accessor for AuthToken);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

uint64_t sub_100084E04()
{
  v2 = v0;
  v44 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10008559C();
  v49 = v2;
  type metadata accessor for AuthToken();
  sub_100086A00(&qword_1004A8468, type metadata accessor for AuthToken);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;

  if (!v1)
  {
    v42 = v11;
    v43 = v8;
    static String.Encoding.utf8.getter();
    v17 = String.init(data:encoding:)();
    if (v18)
    {
      v13 = v17;
      sub_100031928(v14, v16);
    }

    else
    {
      v41 = 0x800000010042E500;
      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v49 = 0xD000000000000012;
      v50 = 0x800000010042E570;
      v20 = [v2 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v16;
      v22 = v21;
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0xD000000000000014;
      v26._object = 0x800000010042E590;
      String.append(_:)(v26);
      v37 = v50;
      v38 = v49;
      v39 = type metadata accessor for KnoxServiceClient.ClientError();
      v27 = swift_allocObject();
      v36[0] = sub_10000E014();
      v36[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v49 = &_swiftEmptyArrayStorage;
      sub_100086A00(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = *(v45 + 104);
      v45 = v14;
      v28(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
      v29 = v51;
      v30 = v48;
      v31 = v44;
      (*(v51 + 104))(v48, enum case for DispatchQoS.QoSClass.default(_:), v44);
      v13 = v36[0];
      static OS_dispatch_queue.global(qos:)();
      (*(v29 + 8))(v30, v31);
      v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy((v27 + 16), "jsonString()");
      *(v27 + 29) = 0;
      *(v27 + 30) = -5120;
      v33 = v41;
      *(v27 + 32) = 0xD000000000000064;
      *(v27 + 40) = v33;
      *(v27 + 56) = 7;
      *(v27 + 48) = 95;
      v34 = v37;
      *(v27 + 64) = v38;
      *(v27 + 72) = v34;
      *(v27 + 80) = 0;
      *(v27 + 88) = v32;
      sub_100086A00(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v35 = v27;
      swift_willThrow();
      sub_100031928(v45, v40);
    }
  }

  return v13;
}

uint64_t sub_1000853C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, BOOL *a6@<X8>)
{
  v27 = a6;
  v7 = v6;
  v26 = a4;
  v12 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for KeychainItem();
  __chkstk_darwin(v15);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001FB20(a3, v14);
  ObjectType = swift_getObjectType();
  (*(ObjectType + 112))(&v28);
  if (v28)
  {
    if (v28 == 1)
    {
      v19 = 0xE400000000000000;
      v20 = 1128548687;
    }

    else
    {
      v19 = 0xE800000000000000;
      v20 = 0x6574616774736557;
    }
  }

  else
  {
    v19 = 0xE300000000000000;
    v20 = 5718340;
  }

  *v17 = a1;
  v17[1] = a2;
  sub_10007AA3C(v14, v17 + v15[5]);
  v21 = (v17 + v15[6]);
  *v21 = v26;
  v21[1] = a5;
  v22 = (v17 + v15[7]);
  *v22 = v20;
  v22[1] = v19;
  *(v17 + v15[8]) = v7;

  v23 = v7;
  sub_10009A0BC(v17, v27);
  return sub_100085BE4(v17);
}

uint64_t sub_10008559C()
{
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder;
  if (*(v0 + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder))
  {
    v3 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder);
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v3 = JSONEncoder.init()();
    sub_1000039E8(&qword_1004A84E0);
    *(swift_allocObject() + 16) = xmmword_100376A40;
    static JSONEncoder.OutputFormatting.sortedKeys.getter();
    sub_100086A00(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting);
    sub_1000039E8(&qword_1004A84F0);
    sub_10001F9A4(&qword_1004A84F8, &qword_1004A84F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    *(v0 + v2) = v3;
  }

  return v3;
}

uint64_t sub_100085798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100085824(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

id AuthToken.init()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder] = 0;
  Date.init()();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate], v4, v1);
  v5 = type metadata accessor for AuthToken();
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t static AuthToken.tokenFromKeychain(keychainEntryServer:keychainEntryAccountName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(v3 + 112))(&v10);
  result = sub_10009E574(v3, a1, a2, a3, &v10);
  if (!v4)
  {
    if (result)
    {
      v9 = result;
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100085BE4(uint64_t a1)
{
  v2 = type metadata accessor for KeychainItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int Data.AKSDataError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100085CAC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100085D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100085DA0(uint64_t a1)
{
  v2 = sub_1000864D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100085DDC(uint64_t a1)
{
  v2 = sub_1000864D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AuthToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthToken();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100085ECC(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A8478);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_10000E2A8(a1, a1[3]);
  sub_1000864D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  v11 = v13;
  swift_beginAccess();
  (*(v3 + 16))(v5, v11 + v10, v2);
  sub_100086A00(&qword_1004A7D40, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id AuthToken.init(from:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v15 = *(v5 - 8);
  __chkstk_darwin(v5);
  v19 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A8488);
  v16 = *(v7 - 8);
  v17 = v7;
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder] = 0;
  sub_10000E2A8(a1, a1[3]);
  sub_1000864D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);

    type metadata accessor for AuthToken();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v16;
    sub_100086A00(&qword_1004A7D30, &type metadata accessor for Date);
    v11 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 32))(&v1[OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate], v19, v5);
    v13 = type metadata accessor for AuthToken();
    v18.receiver = v1;
    v18.super_class = v13;
    v3 = objc_msgSendSuper2(&v18, "init");
    (*(v10 + 8))(v9, v11);
    sub_100003C3C(a1);
  }

  return v3;
}

uint64_t sub_100086440@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000864D0()
{
  result = qword_1004A8480;
  if (!qword_1004A8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8480);
  }

  return result;
}

uint64_t sub_100086534()
{
  result = type metadata accessor for Date();
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

unint64_t sub_1000868FC()
{
  result = qword_1004A84C8;
  if (!qword_1004A84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A84C8);
  }

  return result;
}

unint64_t sub_100086954()
{
  result = qword_1004A84D0;
  if (!qword_1004A84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A84D0);
  }

  return result;
}

unint64_t sub_1000869AC()
{
  result = qword_1004A84D8;
  if (!qword_1004A84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A84D8);
  }

  return result;
}

uint64_t sub_100086A00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100086A48()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  if (!v1)
  {
    static os_log_type_t.error.getter();
    sub_10001AA40(0, &qword_1004A7380);
    v3 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  v2 = objc_allocWithZone(NSRegularExpression);
  v4 = sub_1000D37E4(0xD000000000000041, 0x800000010042EB10, 0);

  sub_1000039E8(&qword_1004A8518);
  sub_10000E720(&qword_1004A8520, &qword_1004A8518);
  sub_10000B080();
  v5 = _NSRange.init<A, B>(_:in:)();
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v4 matchesInString:v8 options:0 range:{v5, v7}];

  sub_10001AA40(0, &qword_1004A8528);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_39:

    static os_log_type_t.error.getter();
    sub_10001AA40(0, &qword_1004A7380);
    v36 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

LABEL_38:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_39;
  }

LABEL_6:
  v41 = v10 & 0xC000000000000001;
  v37 = v4;
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    v39 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v39 = v10 & 0xFFFFFFFFFFFFFF8;
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v12 = 0;
  v38 = v10 + 32;
  v13 = &_swiftEmptyArrayStorage;
  v40 = v11;
  do
  {
    if (v41)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v39 + 16))
      {
        goto LABEL_37;
      }

      v14 = *(v38 + 8 * v12);
    }

    v15 = v14;
    v16 = __OFADD__(v12, 1);
    v17 = v12 + 1;
    if (v16)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v18 = [v14 numberOfRanges];
    if (v18 < 1)
    {
      goto LABEL_36;
    }

    v42 = v17;
    if (v18 != 1)
    {
      v4 = v18;
      for (i = 1; i != v4; ++i)
      {
        [v15 rangeAtIndex:i];
        Range<>.init(_:in:)();
        if ((v21 & 1) == 0)
        {
          String.subscript.getter();
          v10 = static String._fromSubstring(_:)();
          v23 = v22;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_100011A4C(0, *(v13 + 2) + 1, 1, v13);
          }

          v24 = v13;
          v25 = *(v13 + 2);
          v26 = v24;
          v27 = *(v24 + 3);
          if (v25 >= v27 >> 1)
          {
            v26 = sub_100011A4C((v27 > 1), v25 + 1, 1, v26);
          }

          *(v26 + 2) = v25 + 1;
          v20 = &v26[16 * v25];
          v13 = v26;
          *(v20 + 4) = v10;
          *(v20 + 5) = v23;
        }
      }
    }

    v12 = v42;
  }

  while (v42 != v40);

  v28 = *(v13 + 2);
  if (v28)
  {
    v29 = v13 + 40;
    do
    {
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v30 = Data.init(base64Encoded:options:)();
      v32 = v31;

      if (v32 >> 60 != 15)
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        v34 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

        if (v34)
        {
          v35 = v34;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_100031914(v30, v32);
        }

        else
        {
          sub_100031914(v30, v32);
        }
      }

      v29 += 16;
      --v28;
    }

    while (v28);
  }
}

uint64_t sub_100087194()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v100 = *(v0 - 8);
  v101 = v0;
  __chkstk_darwin(v0);
  v98 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v94);
  v99 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v97 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_slowAlloc();
  type metadata accessor for SecCertificate(0);
  v9 = Array.debugDescription.getter();
  v11 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;
  BasicX509 = SecPolicyCreateBasicX509();
  v14 = SecTrustCreateWithCertificates(isa, BasicX509, v8);

  v102 = v8;
  if (!v14)
  {
    v19 = swift_slowAlloc();
    if (!*v8)
    {
      v90 = 0x800000010042E940;
      v91 = 0x800000010042E6C0;
      v103 = 0;
      v104 = 0xE000000000000000;
      _StringGuts.grow(_:)(85);
      v47._countAndFlagsBits = 0xD000000000000053;
      v47._object = 0x800000010042E990;
      String.append(_:)(v47);
      v48._countAndFlagsBits = v9;
      v48._object = v11;
      String.append(_:)(v48);

      v87 = v104;
      v88 = v103;
      v89 = type metadata accessor for KnoxServiceClient.ClientError();
      v49 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v86 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v103 = &_swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      v92 = v19;
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v95 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
      v51 = v100;
      v50 = v101;
      v52 = v98;
      (*(v100 + 104))(v98, enum case for DispatchQoS.QoSClass.default(_:), v101);
      static OS_dispatch_queue.global(qos:)();
      (*(v51 + 8))(v52, v50);
      v53 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v54 = v90;
      *(v49 + 16) = 0xD00000000000002ALL;
      *(v49 + 24) = v54;
      v55 = v91;
      *(v49 + 32) = 0xD000000000000060;
      *(v49 + 40) = v55;
      *(v49 + 56) = 19;
      *(v49 + 48) = 215;
      v56 = v87;
      *(v49 + 64) = v88;
      *(v49 + 72) = v56;
      *(v49 + 80) = 0;
      *(v49 + 88) = v53;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v57 = v49;
      swift_willThrow();
      goto LABEL_15;
    }

    v20 = *v8;
    v21 = Date._bridgeToObjectiveC()().super.isa;
    v22 = SecTrustSetVerifyDate(v20, v21);

    if (v22)
    {
      v89 = 0x800000010042E940;
      v90 = 0x800000010042E6C0;
      v103 = 0;
      v104 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v23._countAndFlagsBits = 0xD000000000000035;
      v23._object = 0x800000010042E9F0;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v9;
      v24._object = v11;
      String.append(_:)(v24);

      v86 = v104;
      v87 = v103;
      v88 = type metadata accessor for KnoxServiceClient.ClientError();
      v25 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v91 = v20;
      v85 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v103 = &_swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      v92 = v19;
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v95 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
      v27 = v100;
      v26 = v101;
      v28 = v98;
      (*(v100 + 104))(v98, enum case for DispatchQoS.QoSClass.default(_:), v101);
      static OS_dispatch_queue.global(qos:)();
      (*(v27 + 8))(v28, v26);
      v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v30 = v89;
      *(v25 + 16) = 0xD00000000000002ALL;
      *(v25 + 24) = v30;
      v31 = v90;
      *(v25 + 32) = 0xD000000000000060;
      *(v25 + 40) = v31;
      *(v25 + 56) = 19;
      v32 = 221;
    }

    else
    {
      if (SecTrustEvaluateWithError(v20, v19))
      {
        sub_1000039E8(&unk_1004A7370);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_100376A40;
        *(v59 + 56) = &type metadata for String;
        *(v59 + 64) = sub_10001A9EC();
        *(v59 + 32) = v9;
        *(v59 + 40) = v11;
        sub_10001AA40(0, &qword_1004A7380);
        v60 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        goto LABEL_15;
      }

      v91 = v20;
      v92 = v19;
      v93 = v4;
      v61 = *v19;
      if (*v19)
      {
        v103 = 0;
        v104 = 0xE000000000000000;
        v62 = v61;
        v90 = v62;
        _StringGuts.grow(_:)(46);
        v105 = v62;
        type metadata accessor for CFError(0);
        sub_10004A230(&qword_1004A7910, type metadata accessor for CFError);
        v63 = Error.localizedDescription.getter();
        v65 = v64;

        v103 = v63;
        v104 = v65;
        v66._object = 0x800000010042EA80;
        v66._countAndFlagsBits = 0xD00000000000002ALL;
        String.append(_:)(v66);
        v67._countAndFlagsBits = v9;
        v67._object = v11;
        String.append(_:)(v67);

        v87 = v104;
        v88 = v103;
        v85 = 0x800000010042E6C0;
        v86 = 0x800000010042E940;
        v89 = type metadata accessor for KnoxServiceClient.ClientError();
        v68 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840);
        v84 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v103 = &_swiftEmptyArrayStorage;
        sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v95 + 104))(v93, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
        v70 = v100;
        v69 = v101;
        v71 = v98;
        (*(v100 + 104))(v98, enum case for DispatchQoS.QoSClass.default(_:), v101);
        static OS_dispatch_queue.global(qos:)();
        (*(v70 + 8))(v71, v69);
        v72 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v73 = v86;
        *(v68 + 16) = 0xD00000000000002ALL;
        *(v68 + 24) = v73;
        v74 = v85;
        *(v68 + 32) = 0xD000000000000060;
        *(v68 + 40) = v74;
        *(v68 + 56) = 19;
        *(v68 + 48) = 234;
        v75 = v87;
        *(v68 + 64) = v88;
        *(v68 + 72) = v75;
        *(v68 + 80) = 0;
        *(v68 + 88) = v72;
        sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v76 = v68;
        swift_willThrow();

        v35 = v90;
        goto LABEL_10;
      }

      v89 = 0x800000010042E940;
      v90 = 0x800000010042E6C0;
      v103 = 0;
      v104 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      v77._countAndFlagsBits = 0xD000000000000045;
      v77._object = 0x800000010042EA30;
      String.append(_:)(v77);
      v78._countAndFlagsBits = v9;
      v78._object = v11;
      String.append(_:)(v78);

      v86 = v104;
      v87 = v103;
      v88 = type metadata accessor for KnoxServiceClient.ClientError();
      v25 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v85 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v103 = &_swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v95 + 104))(v93, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
      v80 = v100;
      v79 = v101;
      v81 = v98;
      (*(v100 + 104))(v98, enum case for DispatchQoS.QoSClass.default(_:), v101);
      static OS_dispatch_queue.global(qos:)();
      (*(v80 + 8))(v81, v79);
      v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v82 = v89;
      *(v25 + 16) = 0xD00000000000002ALL;
      *(v25 + 24) = v82;
      v83 = v90;
      *(v25 + 32) = 0xD000000000000060;
      *(v25 + 40) = v83;
      *(v25 + 56) = 19;
      v32 = 238;
    }

    *(v25 + 48) = v32;
    v33 = v86;
    *(v25 + 64) = v87;
    *(v25 + 72) = v33;
    *(v25 + 80) = 0;
    *(v25 + 88) = v29;
    sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v34 = v25;
    swift_willThrow();
    v35 = v91;
LABEL_10:

LABEL_15:
  }

  v15 = SecCopyErrorMessageString(v14, 0);
  v93 = v4;
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_12;
  }

  v103 = 0;
  v104 = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v17 = v104;
  if (!v104)
  {
LABEL_12:
    v17 = 0x800000010042E900;
    v18 = 0xD000000000000033;
    goto LABEL_13;
  }

  v18 = v103;
LABEL_13:
  v91 = 0x800000010042E940;
  v92 = 0x800000010042E6C0;
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v103 = v18;
  v104 = v17;
  v36._countAndFlagsBits = 0xD000000000000017;
  v36._object = 0x800000010042E970;
  String.append(_:)(v36);
  v37._countAndFlagsBits = v9;
  v37._object = v11;
  String.append(_:)(v37);

  v88 = v104;
  v89 = v103;
  v90 = type metadata accessor for KnoxServiceClient.ClientError();
  v38 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v87 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v103 = &_swiftEmptyArrayStorage;
  sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v95 + 104))(v93, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
  v40 = v100;
  v39 = v101;
  v41 = v98;
  (*(v100 + 104))(v98, enum case for DispatchQoS.QoSClass.default(_:), v101);
  static OS_dispatch_queue.global(qos:)();
  (*(v40 + 8))(v41, v39);
  v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v43 = v91;
  *(v38 + 16) = 0xD00000000000002ALL;
  *(v38 + 24) = v43;
  v44 = v92;
  *(v38 + 32) = 0xD000000000000060;
  *(v38 + 40) = v44;
  *(v38 + 56) = 19;
  *(v38 + 48) = 205;
  v45 = v88;
  *(v38 + 64) = v89;
  *(v38 + 72) = v45;
  *(v38 + 80) = 0;
  *(v38 + 88) = v42;
  sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v46 = v38;
  swift_willThrow();
}

void sub_10008835C(AEAAuthData_impl *a1, uint64_t a2)
{
  v149 = a2;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v145 = *(v5 - 8);
  v146 = v5;
  __chkstk_darwin(v5);
  v143 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v144 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v139);
  v142 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v147 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  EntryCount = AEAAuthDataGetEntryCount(a1);
  static os_log_type_t.default.getter();
  v137 = sub_1000039E8(&unk_1004A7370);
  v12 = swift_allocObject();
  v136 = xmmword_100376A40;
  *(v12 + 16) = xmmword_100376A40;
  *(v12 + 56) = &type metadata for UInt32;
  *(v12 + 64) = &protocol witness table for UInt32;
  *(v12 + 32) = EntryCount;
  v138 = sub_10001AA40(0, &qword_1004A7380);
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  LODWORD(v152) = EntryCount;
  if (EntryCount)
  {
    LODWORD(v2) = 0;
    v14 = &_swiftEmptyDictionarySingleton;
    v151 = a1;
    while (1)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      Entry = AEAAuthDataGetEntry(a1, v2, 0, 0, v18, 0, 0, v19);
      v155 = v18;
      v156 = v19;
      i = v14;
      if (Entry)
      {
        v72 = Entry;
        static os_log_type_t.error.getter();
        v73 = swift_allocObject();
        *(v73 + 16) = v136;
        *(v73 + 56) = &type metadata for Int32;
        *(v73 + 64) = &protocol witness table for Int32;
        *(v73 + 32) = v72;
        v74 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v153 = 0x800000010042E690;
        v154 = 0x800000010042E6C0;
        v160 = 0;
        v161 = 0xE000000000000000;
        _StringGuts.grow(_:)(81);
        v75._countAndFlagsBits = 0xD00000000000004FLL;
        v75._object = 0x800000010042E730;
        String.append(_:)(v75);
        *__dst = v72;
        v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v76);

        v150 = v161;
        v151 = v160;
        v152 = type metadata accessor for KnoxServiceClient.ClientError();
        v77 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840);
        v148 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v160 = &_swiftEmptyArrayStorage;
        sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v140 + 104))(v144, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v141);
        v79 = v145;
        v78 = v146;
        v80 = v143;
        (*(v145 + 104))(v143, enum case for DispatchQoS.QoSClass.default(_:), v146);
        static OS_dispatch_queue.global(qos:)();
        (*(v79 + 8))(v80, v78);
        v81 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v82 = v153;
        *(v77 + 16) = 0xD000000000000020;
        *(v77 + 24) = v82;
        v83 = v154;
        *(v77 + 32) = 0xD000000000000060;
        *(v77 + 40) = v83;
        *(v77 + 56) = 4;
        *(v77 + 48) = 97;
        v84 = v150;
        *(v77 + 64) = v151;
        *(v77 + 72) = v84;
        *(v77 + 80) = 0;
        *(v77 + 88) = v81;
        sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v85 = v77;
        swift_willThrow();
LABEL_63:

        v105 = type metadata accessor for Date();
        (*(*(v105 - 8) + 8))(v149, v105);

        return;
      }

      if (__OFADD__(*v18, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      if (__OFADD__(*v18, 1))
      {
        goto LABEL_70;
      }

      v23 = v22;
      v24 = AEAAuthDataGetEntry(a1, v2, *v18 + 1, v21, v18, *v19, v22, v19);
      v153 = v21;
      v154 = v23;
      if (v24)
      {
        v86 = v24;
        static os_log_type_t.error.getter();
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_100376BB0;
        *(v87 + 56) = &type metadata for Int32;
        *(v87 + 64) = &protocol witness table for Int32;
        *(v87 + 32) = v86;
        v88 = String.init(cString:)();
        v90 = v89;
        *(v87 + 96) = &type metadata for String;
        *(v87 + 104) = sub_10001A9EC();
        *(v87 + 72) = v88;
        *(v87 + 80) = v90;
        v91 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v151 = 0x800000010042E690;
        v152 = 0x800000010042E6C0;
        v160 = 0;
        v161 = 0xE000000000000000;
        _StringGuts.grow(_:)(72);
        v92._countAndFlagsBits = 0xD000000000000039;
        v92._object = 0x800000010042E7E0;
        String.append(_:)(v92);
        *__dst = v86;
        v93._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v93);

        v94._countAndFlagsBits = 0x79656B20726F6620;
        v94._object = 0xEA00000000002720;
        String.append(_:)(v94);
        *__dst = v21;
        sub_1000039E8(&qword_1004A8500);
        _print_unlocked<A, B>(_:_:)();
        v95._countAndFlagsBits = 39;
        v95._object = 0xE100000000000000;
        String.append(_:)(v95);
        v148 = v160;
        v138 = v161;
        v150 = type metadata accessor for KnoxServiceClient.ClientError();
        v96 = swift_allocObject();
        *&v136 = sub_10001AA40(0, &qword_1004A7840);
        v137 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v160 = &_swiftEmptyArrayStorage;
        sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v140 + 104))(v144, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v141);
        v98 = v145;
        v97 = v146;
        v99 = v143;
        (*(v145 + 104))(v143, enum case for DispatchQoS.QoSClass.default(_:), v146);
        static OS_dispatch_queue.global(qos:)();
        (*(v98 + 8))(v99, v97);
        v100 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v101 = v151;
        *(v96 + 16) = 0xD000000000000020;
        *(v96 + 24) = v101;
        v102 = v152;
        *(v96 + 32) = 0xD000000000000060;
        *(v96 + 40) = v102;
        *(v96 + 56) = 4;
        *(v96 + 48) = 124;
        v103 = v138;
        *(v96 + 64) = v148;
        *(v96 + 72) = v103;
        *(v96 + 80) = 0;
        *(v96 + 88) = v100;
        sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v104 = v96;
        swift_willThrow();

        goto LABEL_63;
      }

      v25 = String.init(cString:)();
      v27 = v26;
      v28 = *v19;
      v29 = sub_1000039E8(&qword_1004A8508);
      v162 = v29;
      v163 = sub_10000E720(&qword_1004A8510, &qword_1004A8508);
      v160 = v23;
      v161 = v28;
      v30 = sub_10000E2A8(&v160, v29);
      v31 = *v30;
      if (!*v30)
      {
        break;
      }

      v32 = v30[1];
      v33 = v25;
      if (!v32)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_16;
      }

      v3 = v27;
      if (v32 < 15)
      {
        memset(__dst, 0, sizeof(__dst));
        v159 = v32;
        memcpy(__dst, v31, v32);
        v36 = i;
        v37 = *__dst;
        v38 = v150 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v159 << 16)) << 32);
        v150 = v38;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v34 = __DataStorage.init(bytes:length:)();
        v35 = v34;
        v36 = i;
        if (v32 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v37 = swift_allocObject();
          *(v37 + 16) = 0;
          *(v37 + 24) = v32;
          v38 = v35 | 0x8000000000000000;
        }

        else
        {
          v37 = v32 << 32;
          v38 = v34 | 0x4000000000000000;
        }
      }

LABEL_19:
      sub_100003C3C(&v160);
      sub_1000318C0(v37, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v36;
      v41 = sub_100013364(v33, v3);
      v42 = *(v36 + 2);
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_71;
      }

      v45 = v40;
      if (*(v36 + 3) >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v40)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_10005D630();
          if (v45)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_10005C8A8(v44, isUniquelyReferenced_nonNull_native);
        v46 = sub_100013364(v33, v3);
        if ((v45 & 1) != (v47 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v41 = v46;
        if (v45)
        {
LABEL_3:

          v14 = v160;
          v15 = (*(v160 + 7) + 16 * v41);
          v16 = *v15;
          v17 = v15[1];
          *v15 = v37;
          v15[1] = v38;
          sub_100031928(v16, v17);
          sub_100031928(v37, v38);
          goto LABEL_4;
        }
      }

      v14 = v160;
      *&v160[8 * (v41 >> 6) + 64] |= 1 << v41;
      v48 = (*(v14 + 6) + 16 * v41);
      *v48 = v33;
      v48[1] = v3;
      v49 = (*(v14 + 7) + 16 * v41);
      *v49 = v37;
      v49[1] = v38;
      sub_100031928(v37, v38);
      v50 = *(v14 + 2);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_72;
      }

      *(v14 + 2) = v52;
LABEL_4:
      v2 = (v2 + 1);

      a1 = v151;
      if (v152 == v2)
      {
        goto LABEL_31;
      }
    }

    v37 = 0;
    v38 = 0xC000000000000000;
    v33 = v25;
LABEL_16:
    v3 = v27;
    v36 = i;
    goto LABEL_19;
  }

  v14 = &_swiftEmptyDictionarySingleton;
LABEL_31:
  v53 = v14 + 64;
  v54 = 1 << v14[32];
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v14 + 8);
  v57 = (v54 + 63) >> 6;

  v155 = 0;
  v156 = 0;
  v58 = 0;
  for (i = v14; v56; v14 = i)
  {
    v59 = v58;
LABEL_38:
    v60 = *(v14 + 6) + ((v59 << 10) | (16 * __clz(__rbit64(v56))));
    v3 = *v60;
    v2 = *(v60 + 8);
    v61 = *(v14 + 2);

    if (!v61 || (v62 = sub_100013364(v3, v2), (v63 & 1) == 0))
    {
      static os_log_type_t.error.getter();
      v106 = swift_allocObject();
      *(v106 + 16) = v136;
      *(v106 + 56) = &type metadata for String;
      *(v106 + 64) = sub_10001A9EC();
      *(v106 + 32) = v3;
      *(v106 + 40) = v2;

      v107 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v153 = 0x800000010042E690;
      v154 = 0x800000010042E6C0;
      v160 = 0;
      v161 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v160 = 0xD000000000000023;
      v161 = 0x800000010042E820;
      v108._countAndFlagsBits = v3;
      v108._object = v2;
      String.append(_:)(v108);

      v109._countAndFlagsBits = 39;
      v109._object = 0xE100000000000000;
      String.append(_:)(v109);
      v150 = v161;
      v151 = v160;
      v152 = type metadata accessor for KnoxServiceClient.ClientError();
      v110 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v148 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v160 = &_swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v140 + 104))(v144, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v141);
      v112 = v145;
      v111 = v146;
      v113 = v143;
      (*(v145 + 104))(v143, enum case for DispatchQoS.QoSClass.default(_:), v146);
      static OS_dispatch_queue.global(qos:)();
      (*(v112 + 8))(v113, v111);
      v114 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v115 = v153;
      *(v110 + 16) = 0xD000000000000020;
      *(v110 + 24) = v115;
      v116 = v154;
      *(v110 + 32) = 0xD000000000000060;
      *(v110 + 40) = v116;
      *(v110 + 56) = 4;
      *(v110 + 48) = 144;
      v117 = v150;
      *(v110 + 64) = v151;
      *(v110 + 72) = v117;
      *(v110 + 80) = 0;
      *(v110 + 88) = v114;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v118 = v110;
      swift_willThrow();

      v119 = type metadata accessor for Date();
      (*(*(v119 - 8) + 8))(v149, v119);
      goto LABEL_65;
    }

    v56 &= v56 - 1;
    v64 = *(v14 + 7) + 16 * v62;
    v14 = *v64;
    v65 = *(v64 + 8);
    if (v3 == 0xD00000000000002ALL && 0x800000010042E850 == v2)
    {
      v3 = 0xD00000000000002ALL;
    }

    else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      goto LABEL_46;
    }

    sub_1000318C0(v14, v65);
    v154 = v65;
    sub_100086A48();
    if (!v67)
    {
      goto LABEL_67;
    }

    v68 = v67;

    v69 = v148;
    sub_100087194();
    v148 = v69;
    if (v69)
    {
      v135 = type metadata accessor for Date();
      (*(*(v135 - 8) + 8))(v149, v135);

      sub_100031928(v14, v154);

      return;
    }

    v2 = v68 & 0xFFFFFFFFFFFFFF8;
    if (v68 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_53:

        sub_100031928(v14, v154);
        v156 = v68;
        goto LABEL_46;
      }
    }

    else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v70 = *(v68 + 32);
    }

    v3 = v70;

    v2 = SecCertificateCopyKey(v3);

    sub_100031928(v14, v154);
    v155 = v2;
    v156 = v68;
LABEL_46:
    v58 = v59;
  }

  while (1)
  {
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v59 >= v57)
    {
      v71 = type metadata accessor for Date();
      (*(*(v71 - 8) + 8))(v149, v71);

      return;
    }

    v56 = *&v53[8 * v59];
    ++v58;
    if (v56)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_67:
  static os_log_type_t.error.getter();
  v120 = swift_allocObject();
  *(v120 + 16) = v136;
  *(v120 + 56) = &type metadata for String;
  *(v120 + 64) = sub_10001A9EC();
  *(v120 + 32) = v3;
  *(v120 + 40) = v2;

  v121 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v152 = 0x800000010042E690;
  v153 = 0x800000010042E6C0;
  v160 = 0;
  v161 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v122._countAndFlagsBits = 0xD000000000000031;
  v122._object = 0x800000010042E8C0;
  String.append(_:)(v122);
  v123._countAndFlagsBits = v3;
  v123._object = v2;
  String.append(_:)(v123);

  v124._countAndFlagsBits = 39;
  v124._object = 0xE100000000000000;
  String.append(_:)(v124);
  v150 = v160;
  v148 = v161;
  v151 = type metadata accessor for KnoxServiceClient.ClientError();
  v125 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v138 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v160 = &_swiftEmptyArrayStorage;
  sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v140 + 104))(v144, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v141);
  v127 = v145;
  v126 = v146;
  v128 = v143;
  (*(v145 + 104))(v143, enum case for DispatchQoS.QoSClass.default(_:), v146);
  static OS_dispatch_queue.global(qos:)();
  (*(v127 + 8))(v128, v126);
  v129 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v130 = v152;
  *(v125 + 16) = 0xD000000000000020;
  *(v125 + 24) = v130;
  v131 = v153;
  *(v125 + 32) = 0xD000000000000060;
  *(v125 + 40) = v131;
  *(v125 + 56) = 14;
  *(v125 + 48) = 153;
  v132 = v148;
  *(v125 + 64) = v150;
  *(v125 + 72) = v132;
  *(v125 + 80) = 0;
  *(v125 + 88) = v129;
  sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v133 = v125;
  swift_willThrow();
  sub_100031928(v14, v154);

  v134 = type metadata accessor for Date();
  (*(*(v134 - 8) + 8))(v149, v134);
LABEL_65:
}

uint64_t sub_100089D24()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SAKSDecryptionTask();
  v21.receiver = v0;
  v21.super_class = v6;
  v7 = objc_msgSendSuper2(&v21, "description");
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v19 = v8;
  v20 = v10;
  v11._object = 0x800000010042F080;
  v11._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v11);
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL], v2);
  sub_10008E82C(&qword_1004AAE30, &type metadata accessor for URL);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v3 + 8))(v5, v2);
  v13._object = 0x800000010042F0A0;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14 = &v1[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo];
  v15 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo];
  v16 = *(v14 + 1);

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  return v19;
}

void *sub_100089F34(void *a1, uint64_t a2, void *a3)
{
  v231 = a3;
  v238 = a2;
  v5 = sub_1000039E8(&qword_1004A7160);
  __chkstk_darwin(v5 - 8);
  v212 = &v202 - v6;
  v7 = type metadata accessor for URLComponents();
  v213 = *(v7 - 1);
  __chkstk_darwin(v7);
  v208 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for Date();
  v210 = *(v211 - 8);
  v9 = __chkstk_darwin(v211);
  v11 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v209 = (&v202 - v12);
  v225 = type metadata accessor for DispatchQoS.QoSClass();
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v222 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v226 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v218);
  v223 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v221 = &v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000039E8(&qword_1004A6D30);
  v19 = __chkstk_darwin(v18 - 8);
  v207 = &v202 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v202 - v22;
  v24 = __chkstk_darwin(v21);
  v214 = &v202 - v25;
  __chkstk_darwin(v24);
  v27 = &v202 - v26;
  v228 = type metadata accessor for URL();
  v227 = *(v228 - 8);
  v28 = __chkstk_darwin(v228);
  v206 = &v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v215 = &v202 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v202 - v33;
  __chkstk_darwin(v32);
  v36 = &v202 - v35;
  v233 = v3;
  v37 = (v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse);
  *v37 = 0;
  v37[1] = 0;
  v229 = v37;
  v38 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth);
  v39 = swift_beginAccess();
  v41 = *v38;
  v40 = v38[1];
  v42 = v38[2];
  v249 = v38[3];
  v44 = v38[4];
  v43 = v38[5];
  v234 = v42;
  v235 = v44;
  v230 = v43;
  v45 = v38[6];
  v236 = a1;
  v237 = v45;
  v232 = v40;
  v217 = v41;
  if (v40 != 1)
  {
    v211 = v7;
    if (v40)
    {
      v67 = v40;
      sub_1000039E8(&unk_1004A7370);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100376A40;
      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = sub_10001A9EC();
      *(v68 + 32) = v41;
      *(v68 + 40) = v67;
      sub_10001AA40(0, &qword_1004A7380);
      v69 = v41;
      v70 = v230;
      v71 = v237;
      sub_10005D92C(v41, v67, v234, v249, v235, v230, v237);

      v72 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v73 = v71;
      v74 = v70;
    }

    else
    {
      v69 = v41;
      sub_10001AA40(0, &qword_1004A7380);
      v73 = v237;

      v74 = v230;

      v75 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    v76 = v238;
    sub_10001AA40(0, &qword_1004A7380);

    v77 = v73;
    v78 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v79 = *(v76 + 32);
    v80 = *(v76 + 40);
    URL.init(string:)();
    v81 = v227;
    v82 = v228;
    v205 = *(v227 + 48);
    if (v205(v27, 1, v228) == 1)
    {
      sub_10005D990(v69, v232, v234, v249, v235, v74, v237);
      sub_100013F2C(v27, &qword_1004A6D30);
      v227 = 0x800000010042EC80;
      v228 = 0x800000010042ECA0;
      v239 = 0;
      v240 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v83._countAndFlagsBits = 0xD000000000000031;
      v83._object = 0x800000010042EDB0;
      String.append(_:)(v83);

      v84._countAndFlagsBits = v79;
      v84._object = v80;
      String.append(_:)(v84);

      v85._countAndFlagsBits = 39;
      v85._object = 0xE100000000000000;
      String.append(_:)(v85);
      v215 = v239;
      v214 = v240;
      v216 = type metadata accessor for KnoxServiceClient.ClientError();
      v86 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v213 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v239 = &_swiftEmptyArrayStorage;
      sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v219 + 104))(v226, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v220);
      v87 = v224;
      v7 = v222;
      v88 = v225;
      (*(v224 + 104))(v222, enum case for DispatchQoS.QoSClass.default(_:), v225);
      static OS_dispatch_queue.global(qos:)();
      (*(v87 + 8))(v7, v88);
      v89 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v90 = v227;
      *(v86 + 16) = 0xD00000000000001ELL;
      *(v86 + 24) = v90;
      v91 = v228;
      *(v86 + 32) = 0xD00000000000006CLL;
      *(v86 + 40) = v91;
      *(v86 + 56) = 4;
      *(v86 + 48) = 93;
      v92 = v214;
      *(v86 + 64) = v215;
      *(v86 + 72) = v92;
      *(v86 + 80) = 0;
      *(v86 + 88) = v89;
      sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v93 = v86;
      swift_willThrow();
      sub_10005D990(v217, v232, v234, v249, v235, v230, v237);
LABEL_27:

      sub_10006886C(v238);
LABEL_36:

      goto LABEL_37;
    }

    v204 = *(v81 + 32);
    v204(v36, v27, v82);
    v239 = v69;
    v240 = v232;
    v241 = v234;
    v242 = v249;
    v243 = v235;
    v244 = v74;
    v94 = v237;
    v245 = v237;
    sub_100003B20(v236 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &v246);
    v95 = *(v81 + 16);
    v96 = v214;
    (v95)(v214, v36, v82);
    v97 = v82;
    v98 = 1;
    (*(v81 + 56))(v96, 0, 1, v97);
    v99 = _s16KnoxClientPublic0a7ServiceB0C12knoxMtlsAuth8delegate0E7HostURL16trustRootPEMPath012useAsyncHttpB0AcA8mTLSAuthV_AA0A8Delegate_p10Foundation0J0VSgSSSgSbtcfC_0(&v239, &v246, v96, 0, 0);
    v100 = v36;
    v101 = *(v81 + 8);
    v102 = v101(v100, v97);
    v7 = v211;
    goto LABEL_14;
  }

  v46 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (!v46)
  {
    goto LABEL_20;
  }

  type metadata accessor for DAWToken();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      *(&v202 - 2) = __chkstk_darwin(v39);
      v115 = v46;
      sub_1000039E8(&qword_1004A7A50);
      v116 = v216;
      OS_dispatch_queue.sync<A>(execute:)();
      v117 = v116;

      goto LABEL_21;
    }

LABEL_20:
    __chkstk_darwin(v39);
    *(&v202 - 2) = a1;
    sub_1000039E8(&qword_1004A7A50);
    v118 = v216;
    OS_dispatch_queue.sync<A>(execute:)();
    v117 = v118;
LABEL_21:
    if (v242)
    {
      sub_100003B20(&v239, &v246);
      sub_100013F2C(&v239, &qword_1004A7A50);
      v119 = v247;
      v120 = v248;
      sub_10000E2A8(&v246, v247);
      v121 = (*(v120 + 8))(v119, v120);
      if (v117)
      {

        sub_10006886C(v238);
        sub_100003C3C(&v246);
        goto LABEL_37;
      }

      v50 = v121;
      sub_100003C3C(&v246);
      if (v50)
      {
        v216 = 0;
        sub_10001AA40(0, &qword_1004A7380);
        v187 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v188 = &v50[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token];
        swift_beginAccess();
        v49 = v188[1];
        v203 = *v188;

        goto LABEL_5;
      }
    }

    else
    {
      sub_100013F2C(&v239, &qword_1004A7A50);
    }

    sub_10001AA40(0, &qword_1004A7380);
    v122 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v234 = 0x800000010042ECA0;
    v235 = 0x800000010042EC80;
    v237 = 0x800000010042ED10;
    v249 = type metadata accessor for KnoxServiceClient.ClientError();
    v60 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v232 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v239 = &_swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v219 + 104))(v226, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v220);
    v123 = v224;
    v7 = v222;
    v124 = v225;
    (*(v224 + 104))(v222, enum case for DispatchQoS.QoSClass.default(_:), v225);
    static OS_dispatch_queue.global(qos:)();
    (*(v123 + 8))(v7, v124);
    v125 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v126 = v235;
    *(v60 + 16) = 0xD00000000000001ELL;
    *(v60 + 24) = v126;
    v127 = v234;
    *(v60 + 32) = 0xD00000000000006CLL;
    *(v60 + 40) = v127;
    *(v60 + 56) = 4;
    *(v60 + 48) = 117;
    v128 = v237;
    *(v60 + 64) = 0xD000000000000037;
    *(v60 + 72) = v128;
    *(v60 + 80) = 0;
    *(v60 + 88) = v125;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    goto LABEL_26;
  }

  v48 = (v47 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  v49 = v48[1];
  v203 = *v48;
  sub_10001AA40(0, &qword_1004A7380);
  v50 = v46;

  v51 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

LABEL_5:
  sub_10001AA40(0, &qword_1004A7380);
  v52 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v53 = *(v238 + 16);
  v54 = *(v238 + 24);
  URL.init(string:)();
  v55 = v227;
  v56 = v228;
  v205 = *(v227 + 48);
  if (v205(v23, 1, v228) == 1)
  {

    sub_100013F2C(v23, &qword_1004A6D30);
    v237 = 0x800000010042EC80;
    v249 = 0x800000010042ECA0;
    v239 = 0;
    v240 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v57._countAndFlagsBits = 0xD000000000000031;
    v57._object = 0x800000010042EDB0;
    String.append(_:)(v57);

    v58._countAndFlagsBits = v53;
    v58._object = v54;
    String.append(_:)(v58);

    v59._countAndFlagsBits = 39;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    v234 = v239;
    v232 = v240;
    v235 = type metadata accessor for KnoxServiceClient.ClientError();
    v60 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v230 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v239 = &_swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v219 + 104))(v226, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v220);
    v61 = v224;
    v7 = v222;
    v62 = v225;
    (*(v224 + 104))(v222, enum case for DispatchQoS.QoSClass.default(_:), v225);
    static OS_dispatch_queue.global(qos:)();
    (*(v61 + 8))(v7, v62);
    v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v64 = v237;
    *(v60 + 16) = 0xD00000000000001ELL;
    *(v60 + 24) = v64;
    v65 = v249;
    *(v60 + 32) = 0xD00000000000006CLL;
    *(v60 + 40) = v65;
    *(v60 + 56) = 4;
    *(v60 + 48) = 106;
    v66 = v232;
    *(v60 + 64) = v234;
    *(v60 + 72) = v66;
    *(v60 + 80) = 0;
    *(v60 + 88) = v63;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_26:
    swift_allocError();
    *v129 = v60;
    swift_willThrow();
    goto LABEL_27;
  }

  v204 = *(v55 + 32);
  v204(v34, v23, v56);
  Date.init()();
  v103 = v209;
  v104 = v56;
  Date.addingTimeInterval(_:)();
  (*(v210 + 1))(v11, v211);
  v105 = objc_allocWithZone(type metadata accessor for DAWToken());
  v106 = DAWToken.init(token:expirationDate:)(v203, v49, v103);
  sub_100003B20(v236 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &v239);
  v107 = *(v55 + 16);
  v108 = v214;
  (v107)(v214, v34, v104);
  (*(v55 + 56))(v108, 0, 1, v104);
  v99 = sub_10005F210(v106, &v239, v108, 0, 0);

  v101 = *(v55 + 8);
  v109 = v34;
  v95 = v107;
  v102 = v101(v109, v104);
  v98 = 0;
  v94 = 0;
LABEL_14:
  *(v233 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI) = v98;
  v110 = (*((swift_isaMask & *v99) + 0x1D0))(v102);
  v111 = [v110 delegate];

  v112 = v215;
  v214 = v99;
  if (!v111)
  {
LABEL_29:
    v216 = 0x800000010042EC80;
    v215 = 0x800000010042ECA0;
    v227 = 0x800000010042EDF0;
    v228 = type metadata accessor for KnoxServiceClient.ClientError();
    v130 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v213 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v239 = &_swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    v7 = v223;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v219 + 104))(v226, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v220);
    v131 = v224;
    v132 = v222;
    v133 = v225;
    (*(v224 + 104))(v222, enum case for DispatchQoS.QoSClass.default(_:), v225);
    static OS_dispatch_queue.global(qos:)();
    (*(v131 + 8))(v132, v133);
    v134 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v135 = v216;
    *(v130 + 16) = 0xD00000000000001ELL;
    *(v130 + 24) = v135;
    v136 = v215;
    *(v130 + 32) = 0xD00000000000006CLL;
    *(v130 + 40) = v136;
    *(v130 + 56) = 12;
    *(v130 + 48) = 125;
    *(v130 + 64) = 0xD000000000000045;
    v137 = &v250;
LABEL_35:
    *(v130 + 72) = *(v137 - 32);
    *(v130 + 80) = 0;
    *(v130 + 88) = v134;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v165 = v130;
    swift_willThrow();
    sub_10005D990(v217, v232, v234, v249, v235, v230, v237);

    sub_10006886C(v238);
    goto LABEL_36;
  }

  type metadata accessor for KnoxURLSessionPinningDelegate();
  v113 = swift_dynamicCastClass();
  if (!v113)
  {
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v209 = v101;
  if (v232 == 1)
  {
    v114 = swift_unknownObjectRelease();
  }

  else
  {
    v138 = *(v113 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
    *(v113 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential) = v94;
    v139 = v94;
    swift_unknownObjectRelease();
  }

  v140 = v236;
  v141 = v231;
  v211 = v7;
  v210 = v95;
  v142 = (*((swift_isaMask & *v236) + 0x110))(v114);
  v143 = (*((swift_isaMask & *v99) + 0x118))(v142);
  v144 = (*((swift_isaMask & *v140) + 0x140))(v143);
  v145 = (*((swift_isaMask & *v99) + 0x148))(v144);
  v146 = (*((swift_isaMask & *v140) + 0x200))(v145);
  v147 = (*((swift_isaMask & *v99) + 0x208))(v146);
  v148 = (*((swift_isaMask & *v140) + 0x188))(v147);
  (*((swift_isaMask & *v99) + 0x190))(v148 & 1);
  if (v141)
  {
    (*((swift_isaMask & *v99) + 0x1D8))(v141);
  }

  v149 = v227;
  v150 = v227 + 16;
  v203 = &v99[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL];
  v151 = v228;
  (v210)(v112);
  v152 = v212;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v153 = v209;
  v209(v112, v151);
  v154 = v213;
  v155 = v211;
  if ((*(v213 + 6))(v152, 1, v211) == 1)
  {
    sub_100013F2C(v152, &qword_1004A7160);
    v216 = 0x800000010042EC80;
    v227 = 0x800000010042ECA0;
    v239 = 0;
    v240 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v239 = 0xD000000000000028;
    v240 = 0x800000010042A390;
    (v210)(v112, v203, v151);
    v156 = URL.description.getter();
    v158 = v157;
    v153(v112, v151);
    v159._countAndFlagsBits = v156;
    v159._object = v158;
    String.append(_:)(v159);

    v215 = v239;
    v213 = v240;
    v228 = type metadata accessor for KnoxServiceClient.ClientError();
    v130 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v212 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v239 = &_swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    v7 = v223;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v219 + 104))(v226, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v220);
    v160 = v224;
    v161 = v222;
    v162 = v225;
    (*(v224 + 104))(v222, enum case for DispatchQoS.QoSClass.default(_:), v225);
    static OS_dispatch_queue.global(qos:)();
    (*(v160 + 8))(v161, v162);
    v134 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v163 = v216;
    *(v130 + 16) = 0xD00000000000001ELL;
    *(v130 + 24) = v163;
    v164 = v227;
    *(v130 + 32) = 0xD00000000000006CLL;
    *(v130 + 40) = v164;
    *(v130 + 56) = 14;
    *(v130 + 48) = 159;
    *(v130 + 64) = v215;
    v137 = &v245;
    goto LABEL_35;
  }

  v203 = v150;
  v215 = (v149 + 8);
  v167 = v152;
  v168 = v208;
  (*(v154 + 4))(v208, v167, v155);
  v239 = 791770671;
  v240 = 0xE400000000000000;
  v169 = v233;
  if (*(v233 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI))
  {
    v170 = 1397511277;
  }

  else
  {
    v170 = 25441;
  }

  if (*(v233 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI))
  {
    v171 = 0xE400000000000000;
  }

  else
  {
    v171 = 0xE200000000000000;
  }

  v172 = v171;
  String.append(_:)(*&v170);
  v173 = v168;

  v174._countAndFlagsBits = 0x747079726365642FLL;
  v174._object = 0xE800000000000000;
  String.append(_:)(v174);
  URLComponents.path.setter();
  v175 = v207;
  URLComponents.url.getter();
  v176 = v175;
  if (v205(v175, 1, v151) != 1)
  {
    v189 = v151;
    v190 = v206;
    v204(v206, v176, v151);
    (v210)(v169 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL, v190, v151);
    v191 = (v169 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo);
    v192 = v238;
    v193 = *(v238 + 16);
    *v191 = *v238;
    v191[1] = v193;
    v194 = *(v192 + 48);
    v191[2] = *(v192 + 32);
    v191[3] = v194;
    sub_1000475AC(v192, &v239);
    v195 = v173;
    v196 = v214;
    v197 = sub_10003D38C(v196);

    v239 = 0;
    v240 = 0xE000000000000000;
    v7 = v197;
    _StringGuts.grow(_:)(28);

    v239 = 0xD00000000000001ALL;
    v240 = 0x800000010042EE70;
    v198._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v198);

    sub_10006886C(v192);

    sub_10005D990(v217, v232, v234, v249, v235, v230, v237);
    v199 = v239;
    v200 = v240;
    v209(v190, v189);
    (*(v213 + 1))(v195, v211);
    v201 = (v7 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
    swift_beginAccess();
    *v201 = v199;
    v201[1] = v200;

    return v7;
  }

  sub_100013F2C(v175, &qword_1004A6D30);
  v227 = 0x800000010042EC80;
  v228 = 0x800000010042ECA0;
  v239 = 0;
  v240 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v239 = 0xD000000000000025;
  v240 = 0x800000010042EE40;
  v177._countAndFlagsBits = URLComponents.debugDescription.getter();
  String.append(_:)(v177);

  v215 = v239;
  v212 = v240;
  v216 = type metadata accessor for KnoxServiceClient.ClientError();
  v178 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v210 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v239 = &_swiftEmptyArrayStorage;
  sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  v7 = v223;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v219 + 104))(v226, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v220);
  v179 = v224;
  v180 = v222;
  v181 = v225;
  (*(v224 + 104))(v222, enum case for DispatchQoS.QoSClass.default(_:), v225);
  static OS_dispatch_queue.global(qos:)();
  (*(v179 + 8))(v180, v181);
  v182 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v183 = v227;
  *(v178 + 16) = 0xD00000000000001ELL;
  *(v178 + 24) = v183;
  v184 = v228;
  *(v178 + 32) = 0xD00000000000006CLL;
  *(v178 + 40) = v184;
  *(v178 + 56) = 14;
  *(v178 + 48) = 165;
  v185 = v212;
  *(v178 + 64) = v215;
  *(v178 + 72) = v185;
  *(v178 + 80) = 0;
  *(v178 + 88) = v182;
  sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v186 = v178;
  swift_willThrow();

  sub_10006886C(v238);
  sub_10005D990(v217, v232, v234, v249, v235, v230, v237);
  (*(v213 + 1))(v208, v211);
LABEL_37:

  type metadata accessor for SAKSDecryptionTask();
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_10008C7B0(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v50 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v49 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v45);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v53 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v41 - v17;
  v19 = *(v13 + 16);
  v19(v41 - v17, v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL, v12);
  v19(v16, v18, v12);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v20._countAndFlagsBits = _s16KnoxClientPublic0a7ServiceB0C15userAgentStringSSyFZ_0();
  v21._countAndFlagsBits = 0x6567412D72657355;
  v21._object = 0xEA0000000000746ELL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v20, v21);

  (*(v13 + 8))(v18, v12);
  URLRequest.httpMethod.setter();
  sub_1000318C0(*(v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 48), *(v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 56));
  URLRequest.httpBody.setter();
  if ((*(v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI) & 1) == 0)
  {
    v22 = *(*(v3 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
    if (v22)
    {
      v23 = *((swift_isaMask & *v22) + 0x60);
      v24 = v22;
      v25 = v23(0);
      if (v2)
      {
        v27 = type metadata accessor for URLRequest();
        (*(*(v27 - 8) + 8))(a1, v27);
      }

      else
      {
        v37 = v26;
        v38 = v25;

        v39._countAndFlagsBits = 0x7A69726F68747541;
        v39._object = 0xED00006E6F697461;
        v40.value._countAndFlagsBits = v38;
        v40.value._object = v37;
        URLRequest.setValue(_:forHTTPHeaderField:)(v40, v39);
      }
    }

    else
    {
      v42 = 0x800000010042ECA0;
      v43 = 0x800000010042B900;
      v44 = type metadata accessor for KnoxServiceClient.ClientError();
      v28 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v41[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v54 = &_swiftEmptyArrayStorage;
      sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v47 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v48);
      v30 = v50;
      v29 = v51;
      v31 = v52;
      (*(v51 + 104))(v50, enum case for DispatchQoS.QoSClass.default(_:), v52);
      static OS_dispatch_queue.global(qos:)();
      (*(v29 + 8))(v30, v31);
      v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy((v28 + 16), "urlRequest()");
      *(v28 + 29) = 0;
      *(v28 + 30) = -5120;
      v33 = v42;
      *(v28 + 32) = 0xD00000000000006CLL;
      *(v28 + 40) = v33;
      *(v28 + 56) = 14;
      *(v28 + 48) = 191;
      v34 = v43;
      *(v28 + 64) = 0xD000000000000017;
      *(v28 + 72) = v34;
      *(v28 + 80) = 0;
      *(v28 + 88) = v32;
      sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v35 = v28;
      swift_willThrow();
      v36 = type metadata accessor for URLRequest();
      (*(*(v36 - 8) + 8))(a1, v36);
    }
  }
}

uint64_t sub_10008CE7C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v116 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v116 - 8);
  __chkstk_darwin(v116);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v118 = *(v10 - 8);
  v119 = v10;
  __chkstk_darwin(v10);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v117);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v121 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = __chkstk_darwin(v17);
  result = __chkstk_darwin(v18);
  v112 = &v105 - v22;
  v23 = v2;
  v24 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v25 = a2 >> 62;
  v120 = v14;
  if ((a2 >> 62) > 1)
  {
    v26 = 0;
    if (v25 != 2)
    {
      goto LABEL_10;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v26 = v27 - v28;
    if (!__OFSUB__(v27, v28))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v26 = HIDWORD(a1) - a1;
LABEL_10:
  v109 = v21;
  v110 = v20;
  v111 = result;
  v113 = v9;
  v114 = v12;
  v115 = v7;
  v29 = *(v24 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_100027124;
  *(v31 + 24) = v30;
  v126 = sub_10001F874;
  v127 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v124 = sub_10003885C;
  v125 = &unk_100480EA8;
  v32 = _Block_copy(&aBlock);

  dispatch_sync(v29, v32);
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_34;
  }

  v34 = v23;
  v35 = *&v23[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  __chkstk_darwin(result);
  *(&v105 - 2) = v23;
  sub_1000039E8(&qword_1004A7320);
  OS_dispatch_queue.sync<A>(execute:)();
  v122 = v3;
  v36 = aBlock;
  if (aBlock)
  {
    v4 = [aBlock response];

    if (v4)
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 URL];
        if (v39)
        {
          v40 = v112;
          v41 = v39;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = URL.host.getter();
          if (v43)
          {
            if (v42 == 0xD000000000000015 && v43 == 0x800000010042F000)
            {

LABEL_20:
              v122 = v4;
              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(90);
              v45._countAndFlagsBits = 0x757165722072754FLL;
              v45._object = 0xEF206F7420747365;
              String.append(_:)(v45);
              v46 = v110;
              v47 = v109;
              v48 = v111;
              (*(v110 + 16))(v109, &v23[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL], v111);
              v49 = URL.absoluteString.getter();
              v51 = v50;
              v52 = *(v46 + 8);
              v53 = v116;
              v108 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v110 = v52;
              v52(v47, v48);
              v54._countAndFlagsBits = v49;
              v54._object = v51;
              String.append(_:)(v54);

              v55._countAndFlagsBits = 0xD000000000000013;
              v55._object = 0x800000010042F020;
              String.append(_:)(v55);
              v56._countAndFlagsBits = URL.absoluteString.getter();
              String.append(_:)(v56);

              v57._countAndFlagsBits = 0xD000000000000034;
              v57._object = 0x800000010042F040;
              String.append(_:)(v57);
              v106 = *(&aBlock + 1);
              v107 = aBlock;
              v109 = type metadata accessor for KnoxServiceClient.ClientError();
              v58 = swift_allocObject();
              sub_10001AA40(0, &qword_1004A7840);
              v105 = "hivePointer.swift";
              static DispatchQoS.userInitiated.getter();
              *&aBlock = &_swiftEmptyArrayStorage;
              sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
              sub_1000039E8(&unk_1004A7850);
              sub_10003DEE8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              (*(v118 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v119);
              v59 = v115;
              v60 = v113;
              (*(v115 + 104))(v113, enum case for DispatchQoS.QoSClass.default(_:), v53);
              static OS_dispatch_queue.global(qos:)();
              (*(v59 + 8))(v60, v53);
              *(v58 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
              v61 = 213;
LABEL_31:
              *(v58 + 16) = 0xD00000000000001ALL;
              *(v58 + 24) = 0x800000010042A530;
              *(v58 + 32) = 0xD00000000000006CLL;
              *(v58 + 40) = 0x800000010042ECA0;
              *(v58 + 56) = 14;
              *(v58 + 48) = v61;
              v103 = v106;
              *(v58 + 64) = v107;
              *(v58 + 72) = v103;
              *(v58 + 80) = 0;
              sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
              swift_allocError();
              *v104 = v58;
              swift_willThrow();

              return (v110)(v112, v111);
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v44)
            {
              goto LABEL_20;
            }
          }

          v62 = String._bridgeToObjectiveC()();
          v63 = [v38 valueForHTTPHeaderField:v62];

          if (v63)
          {
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v65;

            v66._countAndFlagsBits = 0xD000000000000010;
            v66._object = 0x800000010042EF70;
            v107 = v64;
            if (!String.hasPrefix(_:)(v66))
            {
LABEL_30:
              v122 = v4;
              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(115);
              v87._countAndFlagsBits = 0x757165722072754FLL;
              v87._object = 0xEF206F7420747365;
              String.append(_:)(v87);
              v88 = v110;
              v89 = &v23[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL];
              v90 = v109;
              v91 = v111;
              (*(v110 + 16))(v109, v89, v111);
              v92 = URL.absoluteString.getter();
              v94 = v93;
              v95 = *(v88 + 8);
              v108 = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v110 = v95;
              v95(v90, v91);
              v96._countAndFlagsBits = v92;
              v96._object = v94;
              String.append(_:)(v96);

              v97._countAndFlagsBits = 0xD00000000000002BLL;
              v97._object = 0x800000010042EF90;
              String.append(_:)(v97);
              v98._countAndFlagsBits = v107;
              v98._object = v34;
              String.append(_:)(v98);

              v99._countAndFlagsBits = 0xD000000000000035;
              v99._object = 0x800000010042EFC0;
              String.append(_:)(v99);
              v106 = *(&aBlock + 1);
              v107 = aBlock;
              v109 = type metadata accessor for KnoxServiceClient.ClientError();
              v58 = swift_allocObject();
              sub_10001AA40(0, &qword_1004A7840);
              v105 = "hivePointer.swift";
              static DispatchQoS.userInitiated.getter();
              *&aBlock = &_swiftEmptyArrayStorage;
              sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
              sub_1000039E8(&unk_1004A7850);
              sub_10003DEE8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              (*(v118 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v119);
              v100 = v115;
              v101 = v116;
              v102 = v113;
              (*(v115 + 104))(v113, enum case for DispatchQoS.QoSClass.default(_:), v116);
              static OS_dispatch_queue.global(qos:)();
              (*(v100 + 8))(v102, v101);
              *(v58 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
              v61 = 220;
              goto LABEL_31;
            }

            (*(v110 + 8))(v40, v111);
          }

          else
          {
            (*(v110 + 8))(v40, v111);
          }
        }
      }

      v34 = v23;
    }
  }

  v67 = sub_100042B58(&aBlock, a1, a2);
  v69 = v68;
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse] = aBlock;

  if (v69)
  {
    v70 = v116;
    v109 = 0x800000010042A530;
    v110 = 0x800000010042ECA0;
    v111 = type metadata accessor for KnoxServiceClient.ClientError();
    v71 = swift_allocObject();
    v108 = v67;
    v72 = v71;
    sub_10001AA40(0, &qword_1004A7840);
    v112 = v34;
    v107 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    v106 = v69;
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v118 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v119);
    v73 = v115;
    v74 = v113;
    (*(v115 + 104))(v113, enum case for DispatchQoS.QoSClass.default(_:), v70);
    static OS_dispatch_queue.global(qos:)();
    (*(v73 + 8))(v74, v70);
    v75 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v76 = v109;
    *(v72 + 16) = 0xD00000000000001ALL;
    *(v72 + 24) = v76;
    *(v72 + 32) = 0xD00000000000006CLL;
    v77 = v110;
    *(v72 + 56) = 7;
    *(v72 + 40) = v77;
    *(v72 + 48) = 234;
    v78 = v106;
    *(v72 + 64) = v108;
    *(v72 + 72) = v78;
    *(v72 + 80) = 0;
    *(v72 + 88) = v75;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v79 = swift_allocError();
    *v80 = v72;
    swift_getErrorValue();

    v81 = Error.localizedDescription.getter();
    sub_100036D50(v79, v81, v82);
  }

  v83 = swift_allocObject();
  *(v83 + 16) = v34;
  *(v83 + 24) = 1;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_10001F9F8;
  *(v84 + 24) = v83;
  v126 = sub_10001FA40;
  v127 = v84;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v124 = sub_10003885C;
  v125 = &unk_100480F20;
  v85 = _Block_copy(&aBlock);
  v86 = v34;

  dispatch_sync(v35, v85);
  _Block_release(v85);
  LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

  if (v85)
  {
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

char *sub_10008DFAC()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v5 = v0;
  v6 = sub_100072164(v5);
  v7 = dispatch_semaphore_create(0);
  v8 = v5;
  sub_10007928C(v6, v7, v8);

  static DispatchTime.distantFuture.getter();
  OS_dispatch_semaphore.wait(timeout:)();
  (*(v2 + 8))(v4, v1);
  sub_1000039E8(&unk_1004A7370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376BB0;
  v10 = &v8[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 1);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10001A9EC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v11;
  v18 = v8;

  OS_dispatch_queue.sync<A>(execute:)();
  v13 = v19;
  *(v9 + 96) = &type metadata for UInt;
  *(v9 + 104) = &protocol witness table for UInt;
  *(v9 + 72) = v13;
  sub_10001AA40(0, &qword_1004A7380);
  v14 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v15 = v8;

  return v15;
}

uint64_t sub_10008E260()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 48);
  v2 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 56);

  sub_100031928(v1, v2);
  v3 = OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

id sub_10008E328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SAKSDecryptionTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SAKSDecryptionTask()
{
  result = qword_1004A8558;
  if (!qword_1004A8558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008E480()
{
  result = type metadata accessor for URL();
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

Swift::Int sub_10008E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100376A40;
    result = (*(*a1 + 168))();
    if (!v7)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10001A9EC();
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_10001AA40(0, &qword_1004A7380);
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  sub_100003B20(*(a3 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v16);
  v11 = v17;
  v12 = v18;
  sub_10000E2A8(v16, v17);
  if (a1)
  {
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v13 = swift_allocError();
    *v14 = a1;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v12 + 16);

  v15(a3, v13, v11, v12);

  sub_100003C3C(v16);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10008E778()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E7C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008E7F4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008E82C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008E880()
{
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = String.count.getter();

  if (v1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    String.append(_:)(v20);

    v2._countAndFlagsBits = 39;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3 = 39;
    v4 = 0xE100000000000000;
  }

  else
  {
    v3 = 28494;
    v4 = 0xE200000000000000;
  }

  v5 = sub_10008EB50();
  if (v5)
  {
    v6 = 7562585;
  }

  else
  {
    v6 = 28494;
  }

  if (v5)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  _StringGuts.grow(_:)(43);
  v8._countAndFlagsBits = 60;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  type metadata accessor for KnoxAEADecryptToFileAsync();
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 0x6C65636E6163203ELL;
  v9._object = 0xEC0000003D64656CLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v3;
  v10._object = v4;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6465736F6C63202CLL;
  v11._object = 0xE90000000000003DLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v6;
  v12._object = v7;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x7365534C5255202CLL;
  v13._object = 0xED00003D6E6F6973;
  String.append(_:)(v13);
  v14 = [*(v0 + 88) description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  return 0;
}

uint64_t sub_10008EAD8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (String.count.getter() < 1)
  {
    a2 = 0x800000010042F730;
    a1 = 0xD000000000000013;
  }

  else
  {
  }

  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t sub_10008EB50()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100094758;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10001FA40;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_1004813E0;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_10008ECE4(AEAContext_impl *a1)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v82 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v80 = *(v6 - 8);
  __chkstk_darwin(v6);
  v81 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v83 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 92) != 1)
  {
    return *(v1 + 88);
  }

  v79 = v4;
  v15 = AEAAuthDataCreateWithContext(a1);
  if (!v15)
  {
    LOBYTE(aBlock[0]) = 10;
    return sub_1000905A8(1, aBlock, 0xD000000000000029, 0x800000010042F380);
  }

  v16 = v15;
  v78 = v3;
  (*(v12 + 16))(v14, *(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt, v11);
  sub_10008835C(v16, v14);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v76 = v16;
  v24 = v20;

  v77 = v1;
  sub_100093F64(v25, v21, a1);

  v75 = v19;

  if (*(*(*(v77 + 16) + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption) + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms) == 2)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v74 = v23;
      v73 = v24;
      sub_10001AA40(0, &qword_1004A7380);
      v30 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      goto LABEL_14;
    }
  }

  sub_10001AA40(0, &qword_1004A7380);
  v27 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v28 = v75;

  v29 = v24;

  sub_100067B44(v28, v21, v23, &v92);
  if (!v93)
  {
    v72 = 0x800000010042F420;
    v71 = 0x800000010042AD30;
    v73 = 0x800000010042F4B0;
    v74 = type metadata accessor for KnoxServiceClient.ClientError();
    v31 = swift_allocObject();
    v69 = sub_10001AA40(0, &qword_1004A7840);
    v70 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v78;
    (*(v80 + 104))(v81, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
    v33 = v79;
    v34 = v82;
    (*(v79 + 104))(v82, enum case for DispatchQoS.QoSClass.default(_:), v32);
    static OS_dispatch_queue.global(qos:)();
    (*(v33 + 8))(v34, v32);
    v35 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v36 = v72;
    *(v31 + 16) = 0xD000000000000010;
    *(v31 + 24) = v36;
    v37 = v71;
    *(v31 + 32) = 0xD00000000000006ELL;
    *(v31 + 40) = v37;
    *(v31 + 56) = 12;
    *(v31 + 48) = 250;
    *(v31 + 64) = 0xD00000000000003DLL;
    *(v31 + 72) = v73;
    *(v31 + 80) = 0;
    *(v31 + 88) = v35;
    sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v38 = swift_allocError();
    *v39 = v31;
    swift_willThrow();
    v40 = v77;
    *(v77 + 88) = -200;
    *(v40 + 92) = 0;
    v41 = *(v40 + 96);
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_100094798;
    *(v43 + 24) = v42;
    v90 = sub_10001FA40;
    v91 = v43;
    v86 = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_10003885C;
    v89 = &unk_100481138;
    v44 = _Block_copy(&v86);
    swift_errorRetain();

    swift_errorRetain();

    dispatch_sync(v41, v44);

    _Block_release(v44);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      AEAAuthDataDestroy(v76);
      return 4294967096;
    }

    __break(1u);
    goto LABEL_21;
  }

  aBlock[0] = v92;
  aBlock[1] = v93;
  v98 = v94;
  v99 = v95;
  v100 = v96;
  sub_100090CB4(aBlock);
  v74 = v23;
  v73 = v24;
  sub_100047544(&v92);
LABEL_14:
  v45 = v77;
  swift_beginAccess();
  sub_100003B20(v45 + 24, &v86);
  v46 = sub_10000E2A8(&v86, v89);
  v72 = v67;
  __chkstk_darwin(v46);
  v67[-2] = a1;
  sub_1000039E8(&qword_1004A88B8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v47 = v85;
  *(v45 + 88) = v84;
  *(v45 + 92) = v47;
  sub_100003C3C(&v86);
  if (*(v45 + 92))
  {
    LOBYTE(v86) = 14;
    v48 = sub_1000905A8(4, &v86, 0xD000000000000037, 0x800000010042F3E0);

    AEAAuthDataDestroy(v76);
    return v48;
  }

  v49 = *(v45 + 88);
  v50 = v76;
  if (!v49)
  {

    AEAAuthDataDestroy(v50);
    return 0;
  }

  v71 = 0x800000010042F420;
  v72 = 0x800000010042AD30;
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v86 = 0xD000000000000030;
  v87 = 0x800000010042F440;
  v84 = v49;
  v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v51);

  v69 = v86;
  v68 = v87;
  v70 = type metadata accessor for KnoxServiceClient.ClientError();
  v52 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v67[1] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v86 = &_swiftEmptyArrayStorage;
  sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v53 = v78;
  (*(v80 + 104))(v81, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v54 = v79;
  v55 = v82;
  (*(v79 + 104))(v82, enum case for DispatchQoS.QoSClass.default(_:), v53);
  static OS_dispatch_queue.global(qos:)();
  (*(v54 + 8))(v55, v53);
  v56 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v57 = v71;
  *(v52 + 16) = 0xD000000000000010;
  *(v52 + 24) = v57;
  v58 = v72;
  *(v52 + 32) = 0xD00000000000006ELL;
  *(v52 + 40) = v58;
  *(v52 + 56) = 14;
  *(v52 + 48) = 273;
  v59 = v68;
  *(v52 + 64) = v69;
  *(v52 + 72) = v59;
  *(v52 + 80) = 0;
  *(v52 + 88) = v56;
  sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  v60 = swift_allocError();
  *v61 = v52;
  v62 = v77;
  *(v77 + 88) = -600;
  *(v62 + 92) = 0;
  v63 = *(v62 + 96);
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  *(v64 + 24) = v60;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_100094798;
  *(v65 + 24) = v64;
  v90 = sub_10001FA40;
  v91 = v65;
  v86 = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_10003885C;
  v89 = &unk_1004811B0;
  v66 = _Block_copy(&v86);
  swift_errorRetain();

  swift_errorRetain();

  dispatch_sync(v63, v66);

  _Block_release(v66);
  LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

  if ((v66 & 1) == 0)
  {
    AEAAuthDataDestroy(v76);
    return 4294966696;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10008FE50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = *(v2 + 80);
  v16 = objc_allocWithZone(type metadata accessor for SAKSDecryptionTask());
  v17 = v15;
  sub_1000475AC(a1, aBlock);
  v18 = v65;
  v19 = sub_100089F34(v17, a1, 0);
  if (!v18)
  {
    v20 = v19;
    v56 = v13;
    v57 = v10;
    v58 = v5;
    v65 = v7;
    v21 = v63;

    v22 = *((swift_isaMask & *v20) + 0x150);
    v23 = v20;
    v24 = v22();
    v25 = v23;
    v26 = v24;

    if (v26)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v27 = v26;
    }

    else
    {
      v28 = v14;
      v29 = *(v14 + 96);
      sub_1000039E8(&unk_1004A73A0);
      OS_dispatch_queue.sync<A>(execute:)();
      if (!aBlock[0])
      {
        v30 = *&v25[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse + 8];
        if (v30)
        {
          v31 = *&v25[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse];

          v32 = v62;
          *v62 = v31;
          v32[1] = v30;
          return;
        }

        v48 = v25;
        v53 = 0x800000010042F360;
        v54 = 0x800000010042AD30;
        v55 = 0x800000010042BD20;
        v62 = type metadata accessor for KnoxServiceClient.ClientError();
        v51 = swift_allocObject();
        v49 = sub_10001AA40(0, &qword_1004A7840);
        v50 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        v52 = v28;
        sub_1000039E8(&unk_1004A7850);
        sub_10003DEE8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v59 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
        v34 = v60;
        v33 = v61;
        (*(v61 + 104))(v60, enum case for DispatchQoS.QoSClass.default(_:), v21);
        static OS_dispatch_queue.global(qos:)();
        v35 = v34;
        v36 = v51;
        (*(v33 + 8))(v35, v21);
        v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v38 = v53;
        *(v36 + 16) = 0xD000000000000019;
        *(v36 + 24) = v38;
        *(v36 + 32) = 0xD00000000000006ELL;
        v39 = v54;
        *(v36 + 56) = 12;
        *(v36 + 40) = v39;
        *(v36 + 48) = 314;
        v40 = v55;
        *(v36 + 64) = 0xD000000000000020;
        *(v36 + 72) = v40;
        *(v36 + 80) = 0;
        *(v36 + 88) = v37;
        sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        v41 = swift_allocError();
        *v42 = v36;
        v43 = swift_allocObject();
        *(v43 + 16) = v52;
        *(v43 + 24) = v41;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_100094798;
        *(v44 + 24) = v43;
        aBlock[4] = sub_10001FA40;
        aBlock[5] = v44;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10003885C;
        aBlock[3] = &unk_100481048;
        v45 = _Block_copy(aBlock);

        swift_errorRetain();

        dispatch_sync(v29, v45);

        _Block_release(v45);
        LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

        if (v41)
        {
          __break(1u);
          return;
        }

        swift_allocError();
        *v46 = v36;
        v25 = v48;
      }
    }

    swift_willThrow();
  }
}

uint64_t sub_1000905A8(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v33 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v30 = *a2;
  v28 = 0x800000010042F330;
  v29 = 0x800000010042AD30;
  v32 = type metadata accessor for KnoxServiceClient.ClientError();
  v12 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v26 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v13 = v33;
  (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v33);
  static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v7, v13);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v12 + 16) = 0xD00000000000002BLL;
  *(v12 + 24) = v28;
  *(v12 + 32) = 0xD00000000000006ELL;
  v15 = v29;
  *(v12 + 56) = v30;
  *(v12 + 40) = v15;
  *(v12 + 48) = 345;
  v16 = v35;
  *(v12 + 64) = v34;
  *(v12 + 72) = v16;
  *(v12 + 80) = 0;
  *(v12 + 88) = v14;
  sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  v17 = swift_allocError();
  *v18 = v12;
  v19 = -100 * v36;
  v20 = v37;
  *(v37 + 88) = v19;
  *(v20 + 92) = 0;
  v21 = *(v20 + 96);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100093F18;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10001F874;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_100480FD0;
  v24 = _Block_copy(aBlock);
  swift_errorRetain();
  swift_errorRetain();

  dispatch_sync(v21, v24);

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

void sub_100090B24(__SecKey *a1, AEAContext_impl *a2)
{
  v4 = v2;
  swift_slowAlloc();
  v7 = sub_1000939E0(a1);
  if (v3)
  {
    goto LABEL_12;
  }

  v9 = v7;
  v10 = v8;
  sub_10001AA40(0, &qword_1004A7380);
  v11 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_11;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v10);
LABEL_11:
    sub_1000318C0(v9, v10);
    v16 = sub_1000469F0(v13, v9, v10);
    sub_100031928(v9, v10);
    v17 = AEAContextSetFieldBlob(a2, 7u, 1u, (v16 + 32), *(v16 + 16));
    sub_100031928(v9, v10);

    *(v4 + 88) = v17;
    *(v4 + 92) = 0;
LABEL_12:

    return;
  }

  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v13 = HIDWORD(v9) - v9;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_100090CB4(uint64_t a1)
{
  v42 = type metadata accessor for DispatchQoS.QoSClass();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v46;
  sub_10008FE50(a1, &v43);
  if (!v16)
  {
    v34 = v15;
    v35 = v13;
    v36 = v8;
    v37 = v11;
    v46 = v1;
    v17 = Data.init(base64Encoded:options:)();
    v19 = v18;

    if (v19 >> 60 != 15)
    {
      v44 = type metadata accessor for SHA256Digest();
      v45 = sub_100093ECC(&qword_1004A88B0, &type metadata accessor for SHA256Digest);
      sub_100064BF8(&v43);
      sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256);
      v30 = v34;
      dispatch thunk of HashFunction.init()();
      sub_1000318C0(v17, v19);
      sub_100093720(v17, v19);
      sub_100031914(v17, v19);
      dispatch thunk of HashFunction.finalize()();
      sub_100031914(v17, v19);
      (*(v35 + 8))(v30, v12);
      v31 = v46;
      swift_beginAccess();
      sub_100003C3C(v31 + 24);
      sub_100003C88(&v43, v31 + 24);
      return swift_endAccess();
    }

    v33 = 0x800000010042F250;
    v34 = 0x800000010042AD30;
    v35 = 0x800000010042BD50;
    v46 = type metadata accessor for KnoxServiceClient.ClientError();
    v20 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v32[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v43 = &_swiftEmptyArrayStorage;
    sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v39 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
    v21 = v40;
    v22 = v41;
    v23 = v42;
    (*(v40 + 104))(v41, enum case for DispatchQoS.QoSClass.default(_:), v42);
    static OS_dispatch_queue.global(qos:)();
    (*(v21 + 8))(v22, v23);
    v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v25 = v33;
    *(v20 + 16) = 0xD000000000000017;
    *(v20 + 24) = v25;
    *(v20 + 32) = 0xD00000000000006ELL;
    v26 = v34;
    *(v20 + 56) = 7;
    *(v20 + 40) = v26;
    *(v20 + 48) = 439;
    v27 = v35;
    *(v20 + 64) = 0xD000000000000020;
    *(v20 + 72) = v27;
    *(v20 + 80) = 0;
    *(v20 + 88) = v24;
    sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v28 = v20;
    swift_willThrow();
  }

  return swift_willThrow();
}

uint64_t sub_1000912E8()
{
  sub_100003C3C(v0 + 24);
  sub_100031B5C(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_100091348@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t *a7@<X8>)
{
  result = AEADecryptToFileChunkAsyncStreamOpen(a1, a2, sub_1000913A8, sub_1000913F0, a3, a4, a5, a6);
  *a7 = result;
  return result;
}

uint64_t sub_1000913A8(uint64_t result, AEAContext_impl *a2)
{
  if (result)
  {

    v3 = sub_10008ECE4(a2);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000913F0(uint64_t result, float a2)
{
  if (result)
  {
    v3 = *(result + 64);

    if (v3)
    {

      v5 = v3(v4, a2);

      sub_100031B5C(v3);
      return v5;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009147C()
{
  v43 = type metadata accessor for DispatchQoS.QoSClass();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KnoxAEADecryptToFileAsync.CallbackWrapper();
  v47 = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = sub_1000039E8(&unk_1004A73A0);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v53)
  {
    return swift_willThrow();
  }

  v36 = v11;
  v37 = v10;
  v38 = v4;
  v39 = v6;
  v40 = v9;
  v51 = 0;
  v52 = 0;
  v50 = -9999;
  v49 = 1;
  __chkstk_darwin(v12);
  v14 = v47;
  *(&v34 - 6) = v47;
  *(&v34 - 5) = &v50;
  *(&v34 - 4) = &v52;
  *(&v34 - 3) = &v51;
  *(&v34 - 2) = &v49;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    if (v49 == 1)
    {
      v36 = 0x800000010042AD30;
      v37 = 0x800000010042F780;
      v47 = type metadata accessor for KnoxServiceClient.ClientError();
      v15 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v35 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v53 = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v41 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
      v17 = v44;
      v16 = v45;
      v18 = v43;
      (*(v45 + 104))(v44, enum case for DispatchQoS.QoSClass.default(_:), v43);
      static OS_dispatch_queue.global(qos:)();
      (*(v16 + 8))(v17, v18);
      v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v15 + 16) = 0x65676E6152746567;
      *(v15 + 24) = 0xEA00000000002928;
      *(v15 + 32) = 0xD00000000000006ELL;
      v20 = v36;
      *(v15 + 56) = 10;
      *(v15 + 40) = v20;
      *(v15 + 48) = 591;
      *(v15 + 64) = 0xD000000000000020;
      v21 = v37;
      goto LABEL_6;
    }

    v23 = v50;
    v24 = v46;
    if (v50 < 0)
    {
      OS_dispatch_queue.sync<A>(execute:)();
      OS_dispatch_queue.sync<A>(execute:)();

      if (v53)
      {
        return swift_willThrow();
      }

      v37 = 0x800000010042AD30;
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v25._countAndFlagsBits = 0xD000000000000014;
      v25._object = 0x800000010042F650;
      String.append(_:)(v25);
      v48 = v23;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27._countAndFlagsBits = 0xD000000000000023;
      v27._object = 0x800000010042F750;
      String.append(_:)(v27);
      String.append(_:)(*(v14 + 16));
      v28._countAndFlagsBits = 10016;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      String.append(_:)(*(v14 + 56));
      v29._countAndFlagsBits = 39;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v35 = v54;
      v36 = v53;
      v47 = type metadata accessor for KnoxServiceClient.ClientError();
      v15 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v34 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v53 = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v41 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
      v31 = v44;
      v30 = v45;
      v32 = v43;
      (*(v45 + 104))(v44, enum case for DispatchQoS.QoSClass.default(_:), v43);
      static OS_dispatch_queue.global(qos:)();
      (*(v30 + 8))(v31, v32);
      v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v15 + 16) = 0x65676E6152746567;
      *(v15 + 24) = 0xEA00000000002928;
      *(v15 + 32) = 0xD00000000000006ELL;
      v33 = v37;
      *(v15 + 56) = 3;
      *(v15 + 40) = v33;
      *(v15 + 48) = 601;
      v21 = v35;
      *(v15 + 64) = v36;
LABEL_6:
      *(v15 + 72) = v21;
      *(v15 + 80) = 0;
      *(v15 + 88) = v19;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v22 = v15;
      return swift_willThrow();
    }

    if (v50)
    {
      result = v52;
      if (!v52)
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100091D64(uint64_t a1, _DWORD *a2, unint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  result = *(a1 + 72);
  if (result)
  {
    *a2 = AAAsyncByteStreamGetRange(result, a3, a4);
    *a5 = 0;

    sub_1000039E8(&unk_1004A73A0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v7)
    {
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100091E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  OS_dispatch_queue.sync<A>(execute:)();
  v7 = String.count.getter();

  if (!v7)
  {
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000946E0;
    *(v10 + 24) = v9;
    v20 = sub_10001FA40;
    v21 = v10;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10003885C;
    v19 = &unk_100481318;
    v11 = _Block_copy(&aBlock);

    dispatch_sync(v6, v11);
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1000946EC;
      *(v13 + 24) = v3;
      v20 = sub_10001FA40;
      v21 = v13;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_10003885C;
      v19 = &unk_100481368;
      v14 = _Block_copy(&aBlock);

      dispatch_sync(v6, v14);
      _Block_release(v14);
      v15 = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000920EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a3;
  v78 = a2;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v77 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v76 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v3 + 32);
  OS_dispatch_queue.sync<A>(execute:)();
  v81 = v4;
  v16 = String.count.getter();

  if (v16)
  {
    sub_1000039E8(&unk_1004A7370);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100376BB0;
    aBlock = 0;
    v84 = 0xE000000000000000;
    v91 = v3;
    type metadata accessor for KnoxAEADecryptToFileAsync();
    _print_unlocked<A, B>(_:_:)();
    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._object = 0x800000010042F630;
    v19._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v19);
    v20 = aBlock;
    v21 = v84;
    *(v17 + 56) = &type metadata for String;
    v22 = sub_10001A9EC();
    *(v17 + 64) = v22;
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    OS_dispatch_queue.sync<A>(execute:)();
    v23 = aBlock;
    v24 = v84;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v22;
    *(v17 + 72) = v23;
    *(v17 + 80) = v24;
    sub_10001AA40(0, &qword_1004A7380);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v69 = v10;
  v70 = v7;
  v72 = v15;
  v73 = v12;
  v71 = v9;
  type metadata accessor for KnoxAEADecryptToFileAsync.CallbackWrapper();
  v26 = v82;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000039E8(&unk_1004A73A0);
  OS_dispatch_queue.sync<A>(execute:)();

  if (aBlock)
  {
    swift_willThrow();
    return;
  }

  v90 = 1;
  v89 = 1;
  v27 = swift_allocObject();
  v27[2] = v3;
  v27[3] = &v89;
  v28 = v78;
  v27[4] = v79;
  v27[5] = v28;
  v27[6] = v80;
  v27[7] = &v90;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100094650;
  *(v29 + 24) = v27;
  v87 = sub_10001FA40;
  v88 = v29;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_10003885C;
  v86 = &unk_1004812A0;
  v30 = _Block_copy(&aBlock);

  dispatch_sync(v26, v30);
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  else
  {
    v81 = v27;
    if (v90 == 1)
    {
      v78 = 0x800000010042AD30;
      v79 = 0x800000010042F630;
      v80 = 0x800000010042F700;
      v31 = v77;
      v82 = type metadata accessor for KnoxServiceClient.ClientError();
      v32 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v68 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v76 + 104))(v71, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
      v33 = v74;
      v34 = v75;
      (*(v74 + 104))(v31, enum case for DispatchQoS.QoSClass.default(_:), v75);
      static OS_dispatch_queue.global(qos:)();
      (*(v33 + 8))(v31, v34);
      v35 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v36 = v79;
      *(v32 + 16) = 0xD000000000000015;
      *(v32 + 24) = v36;
      v37 = v78;
      *(v32 + 32) = 0xD00000000000006ELL;
      *(v32 + 40) = v37;
      *(v32 + 56) = 10;
      *(v32 + 48) = 661;
      v38 = v80;
      *(v32 + 64) = 0xD000000000000028;
      *(v32 + 72) = v38;
      *(v32 + 80) = 0;
      *(v32 + 88) = v35;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      goto LABEL_10;
    }

    v39 = v76;
    if (v89 >= 1)
    {
      v79 = 0x800000010042F630;
      v82 = 0x800000010042AD30;
      aBlock = 0;
      v84 = 0xE000000000000000;
      v40 = v77;
      _StringGuts.grow(_:)(91);
      v41._countAndFlagsBits = 0xD000000000000059;
      v41._object = 0x800000010042F6A0;
      String.append(_:)(v41);
      v91 = v80;
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      v78 = aBlock;
      v68 = v84;
      v80 = type metadata accessor for KnoxServiceClient.ClientError();
      v32 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v67 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v39 + 104))(v71, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
      v44 = v74;
      v43 = v75;
      (*(v74 + 104))(v40, enum case for DispatchQoS.QoSClass.default(_:), v75);
      static OS_dispatch_queue.global(qos:)();
      (*(v44 + 8))(v40, v43);
      v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v46 = v79;
      *(v32 + 16) = 0xD000000000000015;
      *(v32 + 24) = v46;
      v47 = v82;
      *(v32 + 32) = 0xD00000000000006ELL;
      *(v32 + 40) = v47;
      *(v32 + 56) = 14;
      *(v32 + 48) = 666;
      v48 = v68;
      *(v32 + 64) = v78;
      *(v32 + 72) = v48;
      *(v32 + 80) = 0;
      *(v32 + 88) = v45;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      goto LABEL_10;
    }

    if (v89 < 0)
    {
      OS_dispatch_queue.sync<A>(execute:)();
      OS_dispatch_queue.sync<A>(execute:)();

      if (aBlock)
      {
        goto LABEL_11;
      }

      aBlock = 0;
      v84 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      v50._countAndFlagsBits = 0xD000000000000014;
      v50._object = 0x800000010042F650;
      String.append(_:)(v50);
      LODWORD(v91) = v89;
      v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v51);

      v52._countAndFlagsBits = 0xD00000000000002DLL;
      v52._object = 0x800000010042F670;
      String.append(_:)(v52);
      v91 = v80;
      v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v53);

      v54._countAndFlagsBits = 0x6F632E6174616420;
      v54._object = 0xEC0000003D746E75;
      String.append(_:)(v54);
      v55 = v78 - v79;
      if (!v79)
      {
        v55 = 0;
      }

      v82 = 0x800000010042F630;
      v80 = 0x800000010042AD30;
      v91 = v55;
      v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v56);

      v57._countAndFlagsBits = 8238;
      v57._object = 0xE200000000000000;
      String.append(_:)(v57);
      String.append(_:)(*(v3 + 16));
      v58._countAndFlagsBits = 10016;
      v58._object = 0xE200000000000000;
      String.append(_:)(v58);
      String.append(_:)(*(v3 + 56));
      v59._countAndFlagsBits = 39;
      v59._object = 0xE100000000000000;
      String.append(_:)(v59);
      v78 = aBlock;
      v68 = v84;
      v79 = type metadata accessor for KnoxServiceClient.ClientError();
      v32 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v67 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v60 = v77;
      (*(v39 + 104))(v71, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
      v62 = v74;
      v61 = v75;
      (*(v74 + 104))(v60, enum case for DispatchQoS.QoSClass.default(_:), v75);
      static OS_dispatch_queue.global(qos:)();
      (*(v62 + 8))(v60, v61);
      v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v64 = v82;
      *(v32 + 16) = 0xD000000000000015;
      *(v32 + 24) = v64;
      v65 = v80;
      *(v32 + 32) = 0xD00000000000006ELL;
      *(v32 + 40) = v65;
      *(v32 + 56) = 3;
      *(v32 + 48) = 675;
      v66 = v68;
      *(v32 + 64) = v78;
      *(v32 + 72) = v66;
      *(v32 + 80) = 0;
      *(v32 + 88) = v63;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_10:
      swift_allocError();
      *v49 = v32;
LABEL_11:
      swift_willThrow();

      return;
    }
  }
}

uint64_t sub_100092F9C()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v28 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v27 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v32 = 1;
  v7 = *(v0 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = &v32;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000945B4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_10001FA40;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_100481228;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v12 = String.count.getter();

    if (!v12 && (v32 & 1) == 0)
    {
      v22 = 0x800000010042AD30;
      v23 = 0x800000010042F5B0;
      v24 = type metadata accessor for KnoxServiceClient.ClientError();
      v13 = swift_allocObject();
      v21[1] = sub_10001AA40(0, &qword_1004A7840);
      v21[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v25 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
      v14 = v28;
      v15 = v29;
      v16 = v30;
      (*(v29 + 104))(v28, enum case for DispatchQoS.QoSClass.default(_:), v30);
      v26 = static OS_dispatch_queue.global(qos:)();
      (*(v15 + 8))(v14, v16);
      v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v13 + 16) = 0x292865736F6C63;
      *(v13 + 24) = 0xE700000000000000;
      v18 = v22;
      *(v13 + 32) = 0xD00000000000006ELL;
      *(v13 + 40) = v18;
      *(v13 + 56) = 10;
      *(v13 + 48) = 702;
      v19 = v23;
      *(v13 + 64) = 0xD000000000000016;
      *(v13 + 72) = v19;
      *(v13 + 80) = 0;
      *(v13 + 88) = v17;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v20 = v13;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100093518()
{

  return swift_deallocClassInstance();
}

BOOL sub_1000935E4()
{
  OS_dispatch_queue.sync<A>(execute:)();
  v0 = String.count.getter();

  return v0 != 0;
}

uint64_t sub_1000936A8()
{
  result = sub_10009147C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100093700@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t sub_100093720(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100093900(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100093900(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100093900(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000939E0(__SecKey *a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  error = 0;
  v13 = SecKeyCopyExternalRepresentation(a1, &error);
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v30 = v6;
    v31 = v11;
    v32 = v5;
    v33 = v4;
    v35 = v8;
    v16 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      v15 = v17;
      sub_100093ECC(&qword_1004A7910, type metadata accessor for CFError);
    }

    else
    {
      v26 = 0x800000010042F2C0;
      v27 = 0x800000010042AD30;
      v28 = 0x800000010042F2F0;
      v29 = type metadata accessor for KnoxServiceClient.ClientError();
      v16 = swift_allocObject();
      v25[1] = sub_10001AA40(0, &qword_1004A7840);
      v25[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v36 = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v30 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
      v18 = v33;
      v19 = v34;
      (*(v34 + 104))(v33, enum case for DispatchQoS.QoSClass.default(_:), v2);
      static OS_dispatch_queue.global(qos:)();
      (*(v19 + 8))(v18, v2);
      v15 = 0xD000000000000020;
      v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v21 = v26;
      *(v16 + 16) = 0xD000000000000024;
      *(v16 + 24) = v21;
      *(v16 + 32) = 0xD00000000000006ELL;
      v22 = v27;
      *(v16 + 56) = 14;
      *(v16 + 40) = v22;
      *(v16 + 48) = 464;
      *(v16 + 64) = 0xD000000000000035;
      *(v16 + 72) = v28;
      *(v16 + 80) = 0;
      *(v16 + 88) = v20;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    }

    swift_allocError();
    *v23 = v16;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_100093ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100093F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100093F64(unint64_t a1, void *a2, AEAContext_impl *a3)
{
  v36 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v35 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v31 = v6;
    sub_1000039E8(&unk_1004A7370);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100376BB0;
    v32 = v5;
    if (a1 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v14;
    type metadata accessor for SecCertificate(0);
    v15 = Array.debugDescription.getter();
    v17 = v16;
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = sub_10001A9EC();
    *(v13 + 72) = v15;
    *(v13 + 80) = v17;
    sub_10001AA40(0, &qword_1004A7380);
    v18 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (a2)
    {
      v19 = a2;
      sub_100090B24(v19, v36);
    }

    else
    {
      v29 = 0x800000010042F540;
      v30 = 0x800000010042AD30;
      v36 = 0x800000010042F570;
      v37 = type metadata accessor for KnoxServiceClient.ClientError();
      v20 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v28 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v38 = &_swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v33 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
      v22 = v31;
      v21 = v32;
      (*(v31 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v32);
      static OS_dispatch_queue.global(qos:)();
      (*(v22 + 8))(v8, v21);
      v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v24 = v29;
      *(v20 + 16) = 0xD000000000000022;
      *(v20 + 24) = v24;
      *(v20 + 32) = 0xD00000000000006ELL;
      v25 = v30;
      *(v20 + 56) = 1;
      *(v20 + 40) = v25;
      *(v20 + 48) = 364;
      v26 = v36;
      *(v20 + 64) = 0xD00000000000003ELL;
      *(v20 + 72) = v26;
      *(v20 + 80) = 0;
      *(v20 + 88) = v23;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v27 = v20;
      swift_willThrow();
    }
  }
}

const uint8_t *sub_1000944AC@<X0>(const uint8_t *buf@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (buf)
  {
    buf = AEAContextSetFieldBlob(*(v3 + 16), 9u, 0, buf, a2 - buf);
    *a3 = buf;
    *(a3 + 4) = 0;
  }

  else
  {
    __break(1u);
  }

  return buf;
}

uint64_t sub_1000944FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009453C()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
  swift_errorRetain();
}

uint64_t sub_10009457C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000945B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = AAAsyncByteStreamClose(*(v1 + 72));
  if (result)
  {
    *v2 = 0;
  }

  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_100094618()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t *sub_100094650()
{
  result = *(v0[2] + 72);
  if (result)
  {
    v2 = v0[4];
    if (v2)
    {
      v3 = v0[3];
      v5 = v0[5];
      v4 = v0[6];
      v6 = v0[7];
      result = AAAsyncByteStreamProcess(result, v2, v5 - v2, v4);
      *v3 = result;
      *v6 = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000946A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000946EC()
{
  result = *(v0 + 72);
  if (result)
  {
    return AAAsyncByteStreamCancel(result);
  }

  return result;
}

uint64_t sub_100094720()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100094838(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1000ACE44(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_100097C1C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000948B0(void **a1)
{
  v2 = *(sub_1000039E8(&qword_1004A6DB0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000ACE30(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100097AD8(v6);
  *a1 = v3;
  return result;
}

char *UniqueUpdatesTask.__allocating_init(client:space:type:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v14 = objc_allocWithZone(type metadata accessor for UniqueUpdatesTask());
  v15 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter];
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates] = &_swiftEmptyArrayStorage;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime] = &_swiftEmptyArrayStorage;
  v16 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  *v17 = a4;
  *(v17 + 1) = a5;
  swift_beginAccess();

  sub_100022E68(v33, v15);
  swift_endAccess();
  v18 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  *v18 = a6;
  *(v18 + 1) = a7;
  v18[16] = 0;

  v19 = a1;
  v20 = sub_10003D38C(v19);

  v21 = v20;
  _StringGuts.grow(_:)(36);

  v22 = &v21[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x3A6570797420;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27 = &v21[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];

  v30._countAndFlagsBits = v28;
  v30._object = v29;
  String.append(_:)(v30);

  sub_100013F2C(v33, &qword_1004A7158);
  v31 = &v21[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v31 = 0xD00000000000001ALL;
  *(v31 + 1) = 0x800000010042CC60;

  return v21;
}

uint64_t type metadata accessor for UniqueUpdatesTask()
{
  result = qword_1004A8928;
  if (!qword_1004A8928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *UniqueUpdatesTask.__allocating_init(client:space:timeFilter:type:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003B20(a4, v35);
  v16 = objc_allocWithZone(type metadata accessor for UniqueUpdatesTask());
  v17 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter];
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *&v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates] = &_swiftEmptyArrayStorage;
  *&v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime] = &_swiftEmptyArrayStorage;
  v18 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  *v19 = a5;
  *(v19 + 1) = a6;
  swift_beginAccess();

  sub_100022E68(v35, v17);
  swift_endAccess();
  v20 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  *v20 = a7;
  *(v20 + 1) = a8;
  v20[16] = 1;

  v21 = a1;
  v22 = sub_10003D38C(v21);

  v23 = v22;
  _StringGuts.grow(_:)(36);

  v24 = &v23[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x3A6570797420;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29 = &v23[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];

  v32._countAndFlagsBits = v30;
  v32._object = v31;
  String.append(_:)(v32);

  sub_100003C3C(a4);
  sub_100013F2C(v35, &qword_1004A7158);
  v33 = &v23[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v33 = 0xD00000000000001ALL;
  *(v33 + 1) = 0x800000010042CC60;

  return v23;
}

uint64_t sub_100094F30()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UniqueUpdatesTask();
  v2 = objc_msgSendSuper2(&v12, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v3;
  v4._countAndFlagsBits = 0x273D656D616E202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v5 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8._countAndFlagsBits = v7;
  v8._object = v6;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 39;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v11;
}

id sub_100095014()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_1004A88C0 = result;
  return result;
}

uint64_t sub_100095138(uint64_t a1, uint64_t *a2)
{
  sub_100013E54(a1, v6, &qword_1004A7158);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  sub_10002287C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1000951AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  return sub_100013E54(v1 + v3, a1, &qword_1004A7158);
}

uint64_t sub_100095214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  sub_10002287C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000952D4@<X0>(char *a1@<X8>)
{
  v102 = a1;
  v113 = type metadata accessor for DispatchQoS.QoSClass();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v110 = v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v105);
  v109 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v108 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A7160);
  __chkstk_darwin(v7 - 8);
  v116 = v92 - v8;
  v115 = type metadata accessor for URLComponents();
  v117 = *(v115 - 8);
  __chkstk_darwin(v115);
  v104 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for URLRequest();
  v100 = *(v101 - 8);
  v10 = __chkstk_darwin(v101);
  v99 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v92 - v12;
  v14 = sub_1000039E8(&qword_1004A6D30);
  v15 = __chkstk_darwin(v14 - 8);
  v103 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v92 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v98 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = v92 - v24;
  __chkstk_darwin(v23);
  v27 = v92 - v26;
  v28 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  v124 = v1;
  sub_100013E54(v1 + v28, v18, &qword_1004A6D30);
  v29 = *(v20 + 48);
  if (v29(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v27, v18, v19);
    LOBYTE(v120) = 1;
    v52 = v114;
    sub_10005ADB0(v27, 0, 1, v13);
    if (v52)
    {
      return (*(v20 + 8))(v27, v19);
    }

    (*(v20 + 8))(v27, v19);
    return (*(v100 + 32))(v102, v13, v101);
  }

  sub_100013F2C(v18, &qword_1004A6D30);
  v30 = *(v124 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v31 = v20;
  v32 = *(v20 + 16);
  v96 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v97 = v32;
  v32(v25, v30 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v19);
  v33 = v116;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v95 = v31;
  v36 = *(v31 + 8);
  v35 = v31 + 8;
  v34 = v36;
  v36(v25, v19);
  v37 = v33;
  v38 = v115;
  if ((*(v117 + 48))(v37, 1, v115) == 1)
  {
    sub_100013F2C(v116, &qword_1004A7160);
    v124 = 0x800000010042F7B0;
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v120 = 0xD000000000000028;
    v121 = 0x800000010042A390;
    v97(v25, v30 + v96, v19);
    v39 = URL.description.getter();
    v41 = v40;
    v34(v25, v19);
    v42._countAndFlagsBits = v39;
    v42._object = v41;
    String.append(_:)(v42);

    v116 = v120;
    v115 = v121;
    v117 = type metadata accessor for KnoxServiceClient.ClientError();
    v43 = swift_allocObject();
    sub_10000E014();
    v114 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v120 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v106 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v107);
    v44 = v112;
    v45 = v111;
    v46 = v113;
    (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
    static OS_dispatch_queue.global(qos:)();
    (*(v44 + 8))(v45, v46);
    v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v43 + 16), "urlRequest()");
    *(v43 + 29) = 0;
    *(v43 + 30) = -5120;
    *(v43 + 32) = 0xD00000000000006BLL;
    v48 = v124;
    *(v43 + 56) = 14;
    *(v43 + 40) = v48;
    *(v43 + 48) = 134;
    v49 = v115;
    *(v43 + 64) = v116;
    *(v43 + 72) = v49;
    *(v43 + 80) = 0;
    *(v43 + 88) = v47;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v50 = v43;
    return swift_willThrow();
  }

  v93 = v29;
  v94 = v35;
  v96 = v34;
  v92[1] = v30;
  v97 = v19;
  v53 = v104;
  (*(v117 + 32))(v104, v116, v38);
  v120 = 0;
  v121 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v120 = 0x2F7365636170732FLL;
  v121 = 0xE800000000000000;
  v54 = v124;
  v55 = (v124 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];

  v58._countAndFlagsBits = v57;
  v58._object = v56;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 0x2F73657079742FLL;
  v59._object = 0xE700000000000000;
  String.append(_:)(v59);
  v60 = (v54 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];

  v63._countAndFlagsBits = v62;
  v63._object = v61;
  String.append(_:)(v63);

  v64._countAndFlagsBits = 0x2F73646C6569662FLL;
  v64._object = 0xEE00657461647075;
  String.append(_:)(v64);
  v65 = v120;
  v66 = v121;
  v67 = URLComponents.path.modify();
  v68._countAndFlagsBits = v65;
  v68._object = v66;
  String.append(_:)(v68);

  v67(&v120, 0);
  v69 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  sub_100013E54(v54 + v69, &v118, &qword_1004A7158);
  if (v119)
  {
    sub_100027A3C(&v118, &v120);
    v70 = v122;
    v71 = v123;
    sub_10000E2A8(&v120, v122);
    (*(v71 + 8))(v70, v71);
    URLComponents.queryItems.setter();
    sub_100003C3C(&v120);
  }

  else
  {
    sub_100013F2C(&v118, &qword_1004A7158);
  }

  v72 = v53;
  v73 = v114;
  v74 = v96;
  v75 = v103;
  URLComponents.url.getter();
  v76 = v97;
  if (v93(v75, 1, v97) != 1)
  {
    v87 = v98;
    (*(v95 + 32))();
    LOBYTE(v120) = 1;
    v88 = v99;
    v89 = v73;
    sub_10005ADB0(v87, 0, 1, v99);
    v90 = v115;
    v91 = v117;
    if (v89)
    {
      v74(v87, v76);
      return (*(v91 + 8))(v72, v90);
    }

    v74(v87, v76);
    (*(v91 + 8))(v72, v90);
    v13 = v88;
    return (*(v100 + 32))(v102, v13, v101);
  }

  sub_100013F2C(v75, &qword_1004A6D30);
  v124 = 0x800000010042F7B0;
  v120 = 0;
  v121 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v120 = 0xD000000000000026;
  v121 = 0x800000010042A3C0;
  v77._countAndFlagsBits = URLComponents.description.getter();
  String.append(_:)(v77);

  v78._countAndFlagsBits = 39;
  v78._object = 0xE100000000000000;
  String.append(_:)(v78);
  v114 = v120;
  v103 = v121;
  v116 = type metadata accessor for KnoxServiceClient.ClientError();
  v79 = swift_allocObject();
  sub_10000E014();
  v102 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v120 = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v106 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v107);
  v80 = v112;
  v81 = v111;
  v82 = v113;
  (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
  static OS_dispatch_queue.global(qos:)();
  (*(v80 + 8))(v81, v82);
  v83 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  strcpy((v79 + 16), "urlRequest()");
  *(v79 + 29) = 0;
  *(v79 + 30) = -5120;
  *(v79 + 32) = 0xD00000000000006BLL;
  v84 = v124;
  *(v79 + 56) = 14;
  *(v79 + 40) = v84;
  *(v79 + 48) = 145;
  v85 = v103;
  *(v79 + 64) = v114;
  *(v79 + 72) = v85;
  *(v79 + 80) = 0;
  *(v79 + 88) = v83;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v86 = v79;
  swift_willThrow();
  return (*(v117 + 8))(v104, v115);
}

uint64_t sub_100096380(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DecodingError.Context();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v89 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DecodingError();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v100 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v95 = *(v15 - 8);
  v96 = v15;
  __chkstk_darwin(v15);
  v97 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v92);
  v94 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v18 - 8);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v2;
  if (*(v2 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType + 16))
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000039E8(&qword_1004A88E0);
    sub_1000996F8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v3)
    {
      v86 = a2;
      v87 = a1;

      v21 = aBlock;
      v101 = aBlock[2];
      if (v101)
      {
        v84 = v14;
        v85 = v12;
        v88 = v11;
        v22 = 0;
        v23 = aBlock + 7;
        while (v22 < v21[2])
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v27 = *(v23 - 3);
          v26 = *(v23 - 2);

          v28 = objc_autoreleasePoolPush();
          sub_100097120(v27, v26, v24, v25, v103);
          ++v22;
          objc_autoreleasePoolPop(v28);

          v23 += 4;
          if (v101 == v22)
          {
            goto LABEL_22;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_22;
    }

LABEL_9:

    goto LABEL_10;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000039E8(&qword_1004A6B48);
  sub_100099868();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    goto LABEL_9;
  }

  v86 = a2;
  v87 = a1;

  v48 = aBlock;
  ObjectType = aBlock[2];
  if (ObjectType)
  {
    v101 = 0;
    v49 = 0;
    v50 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates;
    v51 = (aBlock + 5);
    while (v49 < v48[2])
    {
      v52 = *(v51 - 1);
      v53 = *v51;

      v54 = objc_autoreleasePoolPush();
      objc_allocWithZone(type metadata accessor for KnoxUpdate());

      v55 = KnoxUpdate.init(identifier:)(v52, v53);
      v56 = v103;
      swift_beginAccess();
      v57 = v55;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v56 + v50) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + v50) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v100 = *((*(v56 + v50) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v49;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      objc_autoreleasePoolPop(v54);

      v51 += 2;
      if (ObjectType == v49)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_22:

  v58 = *(v103 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v59 = v86 >> 62;
  if ((v86 >> 62) > 1)
  {
    if (v59 == 2)
    {
      v62 = *(v87 + 16);
      v61 = *(v87 + 24);
      v60 = v61 - v62;
      if (__OFSUB__(v61, v62))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v60 = 0;
    }
  }

  else if (v59)
  {
    if (__OFSUB__(HIDWORD(v87), v87))
    {
LABEL_48:
      __break(1u);
      return result;
    }

    v60 = HIDWORD(v87) - v87;
  }

  else
  {
    v60 = BYTE6(v86);
  }

  v69 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  result = OS_dispatch_queue.sync<A>(execute:)();
  v70 = __OFADD__(aBlock, v60);
  v71 = aBlock + v60;
  if (v70)
  {
    goto LABEL_45;
  }

  v72 = *(v58 + v69);
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  *(v73 + 24) = v58;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_100027124;
  *(v74 + 24) = v73;
  v108 = sub_10001F874;
  v109 = v74;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_10003885C;
  v107 = &unk_100481458;
  v75 = _Block_copy(&aBlock);

  dispatch_sync(v72, v75);
  _Block_release(v75);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v77 = v103;
  v78 = *(v103 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  *(v79 + 24) = 1;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_10001F9F8;
  *(v80 + 24) = v79;
  v108 = sub_10001FA40;
  v109 = v80;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_10003885C;
  v107 = &unk_1004814D0;
  v81 = _Block_copy(&aBlock);
  v82 = v77;

  dispatch_sync(v78, v81);
  _Block_release(v81);
  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if (v77)
  {
    __break(1u);

    objc_autoreleasePoolPop(v81);

    v11 = v88;
    v12 = v85;
    v14 = v84;
    v4 = v78;
LABEL_10:
    v29 = v100;
    aBlock = &v4->isa;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    v30 = v99;
    v31 = swift_dynamicCast();
    v32 = v98;
    if (v31)
    {
      v33 = (*(v98 + 11))(v29, v30);
      v88 = v11;
      if (v33 == enum case for DecodingError.typeMismatch(_:) || v33 == enum case for DecodingError.valueNotFound(_:))
      {
        v34 = v12;

        (*(v32 + 12))(v29, v30);
        v35 = sub_1000039E8(&qword_1004A7168);
        v36 = v89;
        v37 = v90;
        v38 = v91;
        (*(v90 + 32))(v89, v29 + *(v35 + 48), v91);
LABEL_14:
        v39 = DecodingError.Context.debugDescription.getter();
        ObjectType = v40;
        v103 = v39;
        (*(v37 + 8))(v36, v38);
LABEL_15:

        v99 = 0x800000010042F7B0;
        v100 = 0x800000010042A530;
        v101 = type metadata accessor for KnoxServiceClient.ClientError();
        v41 = swift_allocObject();
        sub_10000E014();
        v98 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        aBlock = &_swiftEmptyArrayStorage;
        sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10003DEE8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v95 + 104))(v97, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
        v42 = v88;
        (*(v34 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v88);
        static OS_dispatch_queue.global(qos:)();
        (*(v34 + 8))(v14, v42);
        v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v44 = v100;
        *(v41 + 16) = 0xD00000000000001ALL;
        *(v41 + 24) = v44;
        v45 = v99;
        *(v41 + 32) = 0xD00000000000006BLL;
        *(v41 + 40) = v45;
        *(v41 + 56) = 7;
        *(v41 + 48) = 218;
        v46 = ObjectType;
        *(v41 + 64) = v103;
        *(v41 + 72) = v46;
        *(v41 + 80) = 0;
        *(v41 + 88) = v43;
        sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v47 = v41;
        return swift_willThrow();
      }

      if (v33 == enum case for DecodingError.keyNotFound(_:))
      {
        v34 = v12;

        (*(v32 + 12))(v29, v30);
        v63 = sub_1000039E8(&qword_1004A7170);
        v64 = v89;
        v65 = v90;
        v66 = v91;
        (*(v90 + 32))(v89, v29 + *(v63 + 48), v91);
        v67 = DecodingError.Context.debugDescription.getter();
        ObjectType = v68;
        v103 = v67;
        (*(v65 + 8))(v64, v66);
        sub_100003C3C(v29);
        goto LABEL_15;
      }

      if (v33 == enum case for DecodingError.dataCorrupted(_:))
      {
        v34 = v12;

        (*(v32 + 12))(v29, v30);
        v36 = v89;
        v37 = v90;
        v38 = v91;
        (*(v90 + 32))(v89, v29, v91);
        goto LABEL_14;
      }

      (*(v32 + 1))(v29, v30);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100097120(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v58 = a5;
  v65 = a4;
  v62 = a3;
  v7 = sub_1000039E8(&qword_1004A6DB0);
  v57 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v61 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v50 - v11;
  __chkstk_darwin(v10);
  v14 = v50 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v55 = *(v15 - 8);
  v56 = v15;
  __chkstk_darwin(v15);
  v54 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v17 - 8);
  v52 = v17;
  __chkstk_darwin(v17);
  v53 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v19);
  v50[2] = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v21 - 8);
  v50[1] = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for KnoxUpdate());

  v60 = KnoxUpdate.init(identifier:)(a1, a2);
  if (qword_1004A6AA8 != -1)
  {
    swift_once();
  }

  v27 = qword_1004A88C0;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 dateFromString:v28];

  if (v29)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *(v7 + 48);
    *v14 = v60;
    (*(v24 + 16))(&v14[v30], v26, v23);
    sub_100013E54(v14, v12, &qword_1004A6DB0);
    v31 = *(v7 + 48);
    v32 = v61;
    *v61 = *v12;
    (*(v24 + 32))(&v32[v31], &v12[v31], v23);
    v33 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime;
    v34 = v58;
    swift_beginAccess();
    v35 = *(v34 + v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v33) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_100011D44(0, v35[2] + 1, 1, v35);
      *(v34 + v33) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_100011D44(v37 > 1, v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    sub_100099FD4(v61, v35 + ((v57[80] + 32) & ~v57[80]) + *(v57 + 9) * v38);
    *(v34 + v33) = v35;
    swift_endAccess();
    sub_100013F2C(v14, &qword_1004A6DB0);
    (*(v24 + 8))(v26, v23);
  }

  else
  {
    v59 = 0x800000010042A530;
    v61 = 0x800000010042F7B0;
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v63 = 39;
    v64 = 0xE100000000000000;
    v39._countAndFlagsBits = v62;
    v39._object = v65;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0xD00000000000001FLL;
    v40._object = 0x800000010042F8D0;
    String.append(_:)(v40);
    v62 = v63;
    v58 = v64;
    v65 = type metadata accessor for KnoxServiceClient.ClientError();
    v41 = swift_allocObject();
    sub_10000E014();
    v57 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v63 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v51 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v52);
    v43 = v54;
    v42 = v55;
    v44 = v56;
    (*(v55 + 104))(v54, enum case for DispatchQoS.QoSClass.default(_:), v56);
    static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v43, v44);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v46 = v59;
    *(v41 + 16) = 0xD00000000000001ALL;
    *(v41 + 24) = v46;
    v47 = v61;
    *(v41 + 32) = 0xD00000000000006BLL;
    *(v41 + 40) = v47;
    *(v41 + 56) = 7;
    *(v41 + 48) = 188;
    v48 = v58;
    *(v41 + 64) = v62;
    *(v41 + 72) = v48;
    *(v41 + 80) = 0;
    *(v41 + 88) = v45;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v49 = v41;
    swift_willThrow();
  }
}

id sub_1000978F8()
{
  v0 = sub_1000998E4();

  return v0;
}

uint64_t sub_100097954()
{

  sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter, &qword_1004A7158);
  sub_100099FCC();
}

id UniqueUpdatesTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniqueUpdatesTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100097AD8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000039E8(&qword_1004A6DB0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_1000039E8(&qword_1004A6DB0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100097FF0(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100097D20(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100097C1C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for KnoxUpdate();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10009890C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100097F78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100097D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1000039E8(&qword_1004A6DB0);
  v8 = __chkstk_darwin(v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = (&v27 - v11);
  result = __chkstk_darwin(v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v21;
    v31 = v20;
    v22 = v20;
    while (1)
    {
      sub_100013E54(v21, v16, &qword_1004A6DB0);
      sub_100013E54(v19, v12, &qword_1004A6DB0);
      v23 = *(*v12 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v24 = *(*v16 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      sub_100013F2C(v12, &qword_1004A6DB0);
      result = sub_100013F2C(v16, &qword_1004A6DB0);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v20 = v31 - 1;
        v21 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_100099FD4(v21, v36);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100099FD4(v25, v19);
      v19 += v34;
      v21 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100097F78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) >= *(v7 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100097FF0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v122 = sub_1000039E8(&qword_1004A6DB0);
  v117 = *(v122 - 8);
  v8 = __chkstk_darwin(v122);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v121 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v124 = (&v104 - v13);
  result = __chkstk_darwin(v12);
  v123 = (&v104 - v15);
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_97:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_129:
      result = sub_100078454(v18);
      v18 = result;
    }

    v125 = v18;
    v100 = *(v18 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v101 = *&v18[16 * v100];
        v102 = *&v18[16 * v100 + 24];
        sub_100098EA8(*a3 + *(v117 + 72) * v101, *a3 + *(v117 + 72) * *&v18[16 * v100 + 16], *a3 + *(v117 + 72) * v102, a4);
        if (v5)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100078454(v18);
        }

        if (v100 - 2 >= *(v18 + 2))
        {
          goto LABEL_123;
        }

        v103 = &v18[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        v125 = v18;
        result = sub_1000783C8(v100 - 1);
        v18 = v125;
        v100 = *(v125 + 2);
        if (v100 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v105 = a4;
  v17 = 0;
  v18 = &_swiftEmptyArrayStorage;
  v109 = a3;
  while (1)
  {
    v19 = v17;
    if (v17 + 1 >= v16)
    {
      v29 = v17 + 1;
    }

    else
    {
      v118 = v16;
      v107 = v5;
      v20 = v17;
      v120 = *a3;
      v21 = v120;
      v22 = *(v117 + 72);
      a4 = v120 + v22 * (v17 + 1);
      v23 = v123;
      sub_100013E54(a4, v123, &qword_1004A6DB0);
      v24 = v21 + v22 * v20;
      v25 = v124;
      sub_100013E54(v24, v124, &qword_1004A6DB0);
      v26 = *(*v25 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v115 = *(*v23 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v116 = v26;
      sub_100013F2C(v25, &qword_1004A6DB0);
      result = sub_100013F2C(v23, &qword_1004A6DB0);
      v106 = v20;
      v27 = v20 + 2;
      v119 = v22;
      v28 = v120 + v22 * (v20 + 2);
      v114 = v18;
      while (1)
      {
        v29 = v118;
        if (v118 == v27)
        {
          break;
        }

        LODWORD(v120) = v116 < v115;
        v30 = v123;
        sub_100013E54(v28, v123, &qword_1004A6DB0);
        v31 = v124;
        sub_100013E54(a4, v124, &qword_1004A6DB0);
        v32 = *(*v31 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        v33 = *(*v30 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        sub_100013F2C(v31, &qword_1004A6DB0);
        result = sub_100013F2C(v30, &qword_1004A6DB0);
        v34 = v32 < v33;
        v18 = v114;
        v35 = !v34;
        ++v27;
        v28 += v119;
        a4 += v119;
        if (((v120 ^ v35) & 1) == 0)
        {
          v29 = v27 - 1;
          break;
        }
      }

      v19 = v106;
      v5 = v107;
      a3 = v109;
      if (v116 < v115)
      {
        if (v29 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v29)
        {
          v36 = v119 * (v29 - 1);
          v37 = v29 * v119;
          v38 = v29;
          v39 = v106;
          v40 = v106 * v119;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v109;
              if (!*v109)
              {
                goto LABEL_132;
              }

              a4 = v41 + v40;
              sub_100099FD4(v41 + v40, v112);
              if (v40 < v36 || a4 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100099FD4(v112, v41 + v36);
            }

            ++v39;
            v36 -= v119;
            v37 -= v119;
            v40 += v119;
          }

          while (v39 < v38);
          v19 = v106;
          v5 = v107;
          a3 = v109;
          v18 = v114;
        }
      }
    }

    v42 = a3[1];
    if (v29 < v42)
    {
      if (__OFSUB__(v29, v19))
      {
        goto LABEL_125;
      }

      if (v29 - v19 < v105)
      {
        if (__OFADD__(v19, v105))
        {
          goto LABEL_127;
        }

        if (v19 + v105 >= v42)
        {
          v43 = a3[1];
        }

        else
        {
          v43 = v19 + v105;
        }

        if (v43 < v19)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v43)
        {
          break;
        }
      }
    }

    v17 = v29;
    if (v29 < v19)
    {
      goto LABEL_124;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011948(0, *(v18 + 2) + 1, 1, v18);
      v18 = result;
    }

    v45 = *(v18 + 2);
    v44 = *(v18 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_100011948((v44 > 1), v45 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v46 = &v18[16 * v45];
    *(v46 + 4) = v19;
    *(v46 + 5) = v17;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (v45)
    {
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v18 + 4);
          v50 = *(v18 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_55:
          if (v52)
          {
            goto LABEL_113;
          }

          v65 = &v18[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_116;
          }

          v71 = &v18[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_120;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v75 = &v18[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_69:
        if (v70)
        {
          goto LABEL_115;
        }

        v78 = &v18[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_76:
        v86 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        a4 = *&v18[16 * v86 + 32];
        v87 = *&v18[16 * v48 + 40];
        sub_100098EA8(*a3 + *(v117 + 72) * a4, *a3 + *(v117 + 72) * *&v18[16 * v48 + 32], *a3 + *(v117 + 72) * v87, v47);
        if (v5)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100078454(v18);
        }

        if (v86 >= *(v18 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v18[16 * v86];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v125 = v18;
        result = sub_1000783C8(v48);
        v18 = v125;
        a4 = *(v125 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v18[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_111;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_112;
      }

      v60 = &v18[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_114;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_117;
      }

      if (v64 >= v56)
      {
        v82 = &v18[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_121;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_97;
    }
  }

  v114 = v18;
  v106 = v19;
  v107 = v5;
  v89 = *a3;
  v90 = *(v117 + 72);
  v91 = *a3 + v90 * (v29 - 1);
  v119 = -v90;
  v120 = v89;
  v92 = v19 - v29;
  v110 = v90;
  v111 = v43;
  a4 = v89 + v29 * v90;
LABEL_88:
  v118 = v29;
  v113 = a4;
  v115 = v92;
  v116 = v91;
  v93 = v91;
  while (1)
  {
    v94 = v123;
    sub_100013E54(a4, v123, &qword_1004A6DB0);
    v95 = v124;
    sub_100013E54(v93, v124, &qword_1004A6DB0);
    v96 = *(*v95 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
    v97 = *(*v94 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
    sub_100013F2C(v95, &qword_1004A6DB0);
    result = sub_100013F2C(v94, &qword_1004A6DB0);
    if (v96 >= v97)
    {
LABEL_87:
      v29 = v118 + 1;
      v17 = v111;
      v91 = v116 + v110;
      v92 = v115 - 1;
      a4 = v113 + v110;
      if (v118 + 1 != v111)
      {
        goto LABEL_88;
      }

      v19 = v106;
      v5 = v107;
      a3 = v109;
      v18 = v114;
      if (v111 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_36;
    }

    if (!v120)
    {
      break;
    }

    v98 = v121;
    sub_100099FD4(a4, v121);
    swift_arrayInitWithTakeFrontToBack();
    sub_100099FD4(v98, v93);
    v93 += v119;
    a4 += v119;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_10009890C(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100078454(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_1000993E4((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078454(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_1000783C8(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v9) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v11 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v12 = v9 + 2;
      v13 = v11;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        v15 = (v10 < v11) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011948(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100011948((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_1000993E4((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078454(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_1000783C8(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(*v27 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) >= *(v25 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100098EA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = sub_1000039E8(&qword_1004A6DB0);
  v8 = __chkstk_darwin(v45);
  v47 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v46 = (&v37 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
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
  v50 = a1;
  v49 = a4;
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

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v40 = a1;
      v41 = a4;
      v42 = -v13;
      do
      {
        v38 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v43 = v29;
        v44 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v50 = v29;
            v48 = v38;
            goto LABEL_58;
          }

          v31 = a3;
          v39 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v46;
          sub_100013E54(v28 + v27, v46, &qword_1004A6DB0);
          v34 = v47;
          sub_100013E54(v30, v47, &qword_1004A6DB0);
          v35 = *(*v34 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
          v36 = *(*v33 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
          sub_100013F2C(v34, &qword_1004A6DB0);
          sub_100013F2C(v33, &qword_1004A6DB0);
          if (v35 < v36)
          {
            break;
          }

          v26 = v28 + v27;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v44;
            a1 = v40;
            v27 = v42;
          }

          else
          {
            v30 = v44;
            a1 = v40;
            v27 = v42;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v43;
          if (v32 <= v41)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        if (v31 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          a1 = v40;
          v27 = v42;
        }

        else
        {
          a2 = v44;
          v26 = v39;
          a1 = v40;
          v27 = v42;
          if (v31 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_57:
    v50 = a2;
    v48 = v26;
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

    v43 = a3;
    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v13;
      do
      {
        v19 = v46;
        v20 = a2;
        sub_100013E54(a2, v46, &qword_1004A6DB0);
        v21 = v47;
        sub_100013E54(a4, v47, &qword_1004A6DB0);
        v22 = *(*v21 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        v23 = *(*v19 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        sub_100013F2C(v21, &qword_1004A6DB0);
        sub_100013F2C(v19, &qword_1004A6DB0);
        if (v22 >= v23)
        {
          v24 = v42;
          v25 = a4 + v42;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v25;
          a4 += v24;
        }

        else
        {
          v24 = v42;
          a2 += v42;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v24;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_100099608(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_1000993E4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(*v17 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) < *(v21 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v4 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) >= *(*v6 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100099608(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000039E8(&qword_1004A6DB0);
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

unint64_t sub_1000996F8()
{
  result = qword_1004A88E8;
  if (!qword_1004A88E8)
  {
    sub_100003A94(&qword_1004A88E0);
    sub_10009977C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A88E8);
  }

  return result;
}

unint64_t sub_10009977C()
{
  result = qword_1004A88F0;
  if (!qword_1004A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A88F0);
  }

  return result;
}

uint64_t sub_1000997D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100099830()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100099868()
{
  result = qword_1004A88F8;
  if (!qword_1004A88F8)
  {
    sub_100003A94(&qword_1004A6B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A88F8);
  }

  return result;
}

uint64_t sub_1000998E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  MultiPageCapable<>.paginationLoop()(ObjectType, &protocol witness table for UniqueUpdatesTask);
  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  if (v0[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType + 16])
  {
    v6 = &v0[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime];
    swift_beginAccess();

    sub_1000948B0(v6);
  }

  else
  {
    v7 = &v0[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates];
    swift_beginAccess();

    sub_100094838(v7);
  }

  swift_endAccess();

  v5(v8, v4);

  sub_100099FCC();
  v9 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10001F8CC;
  *(v11 + 24) = v10;
  v20 = sub_10001FA40;
  v21 = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  v19 = &unk_100481618;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_100003B20(*&v13[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, aBlock);
    v16 = v19;
    v17 = v20;
    sub_10000E2A8(aBlock, v19);
    (*(v17 + 2))(v13, v4, v16, v17);

    sub_100003C3C(aBlock);
    return v13;
  }

  return result;
}

uint64_t sub_100099BF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  return sub_100013E54(v3 + v4, a2, &qword_1004A7158);
}

__n128 sub_100099F10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100099F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100099F6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100099FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A6DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Keychain.SecurityDomain.rawValue.getter()
{
  v1 = 1128548687;
  if (*v0 != 1)
  {
    v1 = 0x6574616774736557;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 5718340;
  }
}

void sub_10009A0BC(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for Date();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004A6D30);
  v6 = __chkstk_darwin(v5 - 8);
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = &v80 - v8;
  v9 = sub_1000039E8(&qword_1004A8948);
  __chkstk_darwin(v9 - 8);
  v96 = (&v80 - v10);
  v11 = type metadata accessor for KeychainItem();
  v93 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v94 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v12[5];
  v15 = (a1 + v12[6]);
  v17 = *v15;
  v16 = v15[1];
  v18 = *(a1 + v12[8]);
  ObjectType = swift_getObjectType();
  v20 = *(ObjectType + 112);
  (v20)(v98);
  v95 = a1;
  v21 = a1 + v14;
  v22 = v96;
  v23 = v97;
  sub_10009B720(v21, v17, v16, v98, v96);
  if (!v23)
  {
    v81 = v18;
    v82 = v20;
    v83 = ObjectType;
    v84 = ObjectType + 112;
    v97 = v14;
    v85 = 0;
    v86 = v16;
    v24 = (*(v93 + 48))(v22, 1, v11);
    v25 = v24;
    if (v24 != 1)
    {
      LODWORD(v93) = v24;
      v26 = v22;
      v27 = v94;
      v28 = sub_10009F4AC(v26, v94);
      v29 = *((swift_isaMask & **(v27 + *(v11 + 32))) + 0x98);
      v96 = *(v27 + *(v11 + 32));
      v30 = v29(v28);
      v31 = 0x73657269707865;
      if (v30)
      {
        v31 = 0x64657269707865;
      }

      v88 = v31;
      sub_1000039E8(&unk_1004A7370);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100378EB0;
      v33 = [v81 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 64) = v37;
      *(v32 + 72) = v17;
      v38 = v17;
      v39 = v86;
      v40 = v87;
      *(v32 + 80) = v86;
      sub_10001FB20(v95 + v97, v40);
      v41 = type metadata accessor for URL();
      v42 = *(v41 - 8);
      v43 = (*(v42 + 48))(v40, 1, v41);

      if (v43 == 1)
      {
        sub_100013F2C(v40, &qword_1004A6D30);
        v44 = (v32 + 112);
        *(v32 + 136) = &type metadata for String;
        *(v32 + 144) = v37;
        v45 = v91;
      }

      else
      {
        v51 = URL.absoluteString.getter();
        v53 = v52;
        (*(v42 + 8))(v40, v41);
        v44 = (v32 + 112);
        *(v32 + 136) = &type metadata for String;
        *(v32 + 144) = v37;
        v45 = v91;
        if (v53)
        {
          *v44 = v51;
          v39 = v86;
          v54 = v90;
LABEL_21:
          *(v32 + 120) = v53;
          *(v32 + 176) = &type metadata for String;
          *(v32 + 184) = v37;
          *(v32 + 152) = v88;
          *(v32 + 160) = 0xE700000000000000;
          v67 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
          v68 = v96;
          swift_beginAccess();
          v69 = v68 + v67;
          v70 = v89;
          (*(v54 + 16))(v89, v69, v45);
          v71 = Date.description.getter();
          v72 = v54;
          v74 = v73;
          (*(v72 + 8))(v70, v45);
          *(v32 + 216) = &type metadata for String;
          *(v32 + 224) = v37;
          *(v32 + 192) = v71;
          *(v32 + 200) = v74;
          sub_10001AA40(0, &qword_1004A7380);
          v75 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v76 = sub_100085BE4(v94);
          v82(&v99, v76);
          v77 = v85;
          sub_10009D0E0(v81, v95 + v97, v38, v39, &v99);
          if (v77)
          {
            return;
          }

          v63 = v92;
          v25 = v93;
          goto LABEL_26;
        }

        v39 = v86;
      }

      v54 = v90;
      *v44 = 1701736302;
      v53 = 0xE400000000000000;
      goto LABEL_21;
    }

    sub_100013F2C(v22, &qword_1004A8948);
    sub_1000039E8(&unk_1004A7370);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100376F00;
    (v82)(v98);
    v47 = v97;
    if (LOBYTE(v98[0]))
    {
      v48 = v95;
      if (LOBYTE(v98[0]) == 1)
      {
        v49 = 0xE400000000000000;
        v50 = 1128548687;
      }

      else
      {
        v49 = 0xE800000000000000;
        v50 = 0x6574616774736557;
      }
    }

    else
    {
      v49 = 0xE300000000000000;
      v50 = 5718340;
      v48 = v95;
    }

    *(v46 + 56) = &type metadata for String;
    v55 = sub_10001A9EC();
    *(v46 + 32) = v50;
    *(v46 + 40) = v49;
    *(v46 + 96) = &type metadata for String;
    *(v46 + 104) = v55;
    *(v46 + 64) = v55;
    *(v46 + 72) = v17;
    *(v46 + 80) = v86;
    v56 = v48;
    v57 = v48 + v47;
    v58 = v88;
    sub_10001FB20(v57, v88);
    v59 = type metadata accessor for URL();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 48))(v58, 1, v59);

    if (v61 == 1)
    {
      sub_100013F2C(v58, &qword_1004A6D30);
      v62 = (v46 + 112);
      *(v46 + 136) = &type metadata for String;
      *(v46 + 144) = v55;
      v63 = v92;
    }

    else
    {
      LODWORD(v93) = 1;
      v64 = URL.absoluteString.getter();
      v66 = v65;
      (*(v60 + 8))(v58, v59);
      v62 = (v46 + 112);
      *(v46 + 136) = &type metadata for String;
      *(v46 + 144) = v55;
      if (v66)
      {
        *v62 = v64;
        v63 = v92;
        v25 = v93;
        goto LABEL_25;
      }

      v63 = v92;
      v25 = v93;
    }

    *v62 = 1701736302;
    v66 = 0xE400000000000000;
LABEL_25:
    *(v46 + 120) = v66;
    sub_10001AA40(0, &qword_1004A7380);
    v78 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v79 = v85;
    sub_10009D92C(v56);
    if (v79)
    {
      return;
    }

LABEL_26:
    *v63 = v25 != 1;
  }
}

KnoxClientPublic::Keychain::SecurityDomain_optional __swiftcall Keychain.SecurityDomain.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047AE38, v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_10009A964(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1128548687;
  if (v2 != 1)
  {
    v4 = 0x6574616774736557;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5718340;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1128548687;
  if (*a2 != 1)
  {
    v8 = 0x6574616774736557;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5718340;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10009AA50()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009AAE4()
{
  String.hash(into:)();
}

Swift::Int sub_10009AB64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10009AC00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1128548687;
  if (v2 != 1)
  {
    v5 = 0x6574616774736557;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5718340;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

KnoxClientPublic::Keychain::TokenSavingStatus_optional __swiftcall Keychain.TokenSavingStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047AEA0, v3);

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

  *v4 = v7;
  return result;
}

uint64_t Keychain.TokenSavingStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0x64657461647055;
  }

  else
  {
    return 0x64657461657243;
  }
}

uint64_t sub_10009ACE8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64657461647055;
  }

  else
  {
    v2 = 0x64657461657243;
  }

  if (*a2)
  {
    v3 = 0x64657461647055;
  }

  else
  {
    v3 = 0x64657461657243;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10009AD70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009ADE8()
{
  String.hash(into:)();
}

Swift::Int sub_10009AE44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009AEB8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AEA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10009AF18(uint64_t *a1@<X8>)
{
  v2 = 0x64657461657243;
  if (*v1)
  {
    v2 = 0x64657461647055;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

void static Keychain.deleteTokenMatching(securityDomain:keychainItemServer:keychainEntryAccountName:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v55);
  v58 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v56 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v14 - 8);
  v16 = v50 - v15;
  v17 = *a1;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, a2, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  LOBYTE(v64) = v17;
  sub_10009CAE4(a3, a4, v16, &v64, 0);
  sub_100013F2C(v16, &qword_1004A6D30);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21 = SecItemDelete(isa);

  if (v21)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v22._object = 0x800000010042F8F0;
    v22._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v22);
    v23 = Dictionary.debugDescription.getter();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x747320746F67202CLL;
    v27._object = 0xED00002073757461;
    String.append(_:)(v27);
    v66 = v21;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = sub_10009CF04(v21);
    String.append(_:)(v29);

    v53 = v65;
    v54 = v64;
    v51 = 0x800000010042F980;
    v52 = 0x800000010042F920;
    v50[1] = type metadata accessor for KnoxServiceClient.ClientError();
    v30 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v50[2] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v64 = &_swiftEmptyArrayStorage;
    sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v57 + 104))(v60, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
    v32 = v61;
    v31 = v62;
    v33 = v63;
    (*(v62 + 104))(v61, enum case for DispatchQoS.QoSClass.default(_:), v63);
    static OS_dispatch_queue.global(qos:)();
    (*(v31 + 8))(v32, v33);
    v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v35 = v52;
    *(v30 + 16) = 0xD000000000000050;
    *(v30 + 24) = v35;
    v36 = v51;
    *(v30 + 32) = 0xD000000000000059;
    *(v30 + 40) = v36;
    *(v30 + 56) = 14;
    *(v30 + 48) = 78;
    v37 = v53;
    *(v30 + 64) = v54;
    *(v30 + 72) = v37;
    *(v30 + 80) = 0;
    *(v30 + 88) = v34;
    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100376A40;
    v39 = sub_10005A570();
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_10001A9EC();
      *(v38 + 32) = v41;
      *(v38 + 40) = v42;
      sub_10001AA40(0, &qword_1004A7380);
      v43 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v44 = v30;
      swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000039E8(&unk_1004A7370);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100376A40;
    v46 = Dictionary.description.getter();
    v48 = v47;

    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_10001A9EC();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    sub_10001AA40(0, &qword_1004A7380);
    v49 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_10009B720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v149 = a5;
  v9 = sub_1000039E8(&qword_1004A6D30);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v143 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v159 = *(v15 - 8);
  v160 = v15;
  __chkstk_darwin(v15);
  v158 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v153 = *(v155 - 8);
  __chkstk_darwin(v155);
  v157 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v152);
  v156 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v19 - 8);
  v154 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v151) = *a4;
  LOBYTE(v163) = v151;
  v148._countAndFlagsBits = a2;
  v148._object = a3;
  v21 = sub_10009CAE4(a2, a3, a1, &v163, 1);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  type metadata accessor for CFString(0);
  v164 = v25;
  *&v163 = kSecUseAuthenticationUISkip;
  sub_1000279A4(&v163, v162);
  v26 = kSecUseAuthenticationUISkip;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = v21;
  sub_100026D4C(v162, v22, v24, isUniquelyReferenced_nonNull_native);

  v28 = result;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v164 = &type metadata for Bool;
  LOBYTE(v163) = 1;
  sub_1000279A4(&v163, v162);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  result = v28;
  sub_100026D4C(v162, v29, v31, v32);

  v33 = result;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  v164 = &type metadata for Bool;
  LOBYTE(v163) = 1;
  sub_1000279A4(&v163, v162);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  result = v33;
  sub_100026D4C(v162, v34, v36, v37);

  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v39 = SecItemCopyMatching(isa, &result);

  if (v39)
  {
    if (v39 == -25300)
    {
      sub_1000039E8(&unk_1004A7370);
      v40 = swift_allocObject();
      v41 = v40;
      *(v40 + 16) = xmmword_100376BB0;
      if (v151)
      {
        if (v151 == 1)
        {
          v42 = 0xE400000000000000;
          v43 = 1128548687;
        }

        else
        {
          v42 = 0xE800000000000000;
          v43 = 0x6574616774736557;
        }
      }

      else
      {
        v42 = 0xE300000000000000;
        v43 = 5718340;
      }

      *(v40 + 56) = &type metadata for String;
      v91 = sub_10001A9EC();
      v41[8] = v91;
      v41[4] = v43;
      v41[5] = v42;
      v92 = Dictionary.description.getter();
      v94 = v93;

      v41[12] = &type metadata for String;
      v41[13] = v91;
      v41[9] = v92;
      v41[10] = v94;
      sub_10001AA40(0, &qword_1004A7380);
      v95 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v96 = type metadata accessor for KeychainItem();
      (*(*(v96 - 8) + 56))(v149, 1, 1, v96);
      return swift_unknownObjectRelease();
    }

    v70 = sub_10009CF04(v39);
    v72 = v71;
    *&v163 = 0;
    *(&v163 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v163 = 0xD00000000000001ELL;
    *(&v163 + 1) = 0x800000010042FA40;
    v73._countAndFlagsBits = v70;
    v73._object = v72;
    String.append(_:)(v73);

    v74._countAndFlagsBits = 0x3A7972657571202CLL;
    v74._object = 0xE900000000000020;
    String.append(_:)(v74);
    v75 = Dictionary.description.getter();
    v77 = v76;

    v78._countAndFlagsBits = v75;
    v78._object = v77;
    String.append(_:)(v78);

    v79 = v163;
    v151 = v163;
    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_100376A40;
    *(v80 + 56) = &type metadata for String;
    *(v80 + 64) = sub_10001A9EC();
    *(v80 + 32) = v79;
    v150 = *(&v79 + 1);
    sub_10001AA40(0, &qword_1004A7380);

    v81 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v148._object = 0x800000010042FEA0;
    v148._countAndFlagsBits = 0x800000010042F980;
    v149 = type metadata accessor for KnoxServiceClient.ClientError();
    v82 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    *&v147 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v163 = &_swiftEmptyArrayStorage;
    sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v153 + 104))(v157, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v155);
    v84 = v158;
    v83 = v159;
    v85 = v160;
    (*(v159 + 104))(v158, enum case for DispatchQoS.QoSClass.default(_:), v160);
    static OS_dispatch_queue.global(qos:)();
    (*(v83 + 8))(v84, v85);
    v86 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    object = v148._object;
    *(v82 + 16) = 0xD000000000000030;
    *(v82 + 24) = object;
    countAndFlagsBits = v148._countAndFlagsBits;
    *(v82 + 32) = 0xD000000000000059;
    *(v82 + 40) = countAndFlagsBits;
    *(v82 + 56) = 14;
    *(v82 + 48) = 133;
    v89 = v150;
    *(v82 + 64) = v151;
    *(v82 + 72) = v89;
    *(v82 + 80) = 0;
    *(v82 + 88) = v86;
    sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v90 = v82;
LABEL_23:
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v144 = v14;
  v143 = v12;
  v44 = sub_1000039E8(&unk_1004A7370);
  v45 = swift_allocObject();
  v147 = xmmword_100376A40;
  *(v45 + 16) = xmmword_100376A40;
  v46 = Dictionary.description.getter();
  v48 = v47;
  *(v45 + 56) = &type metadata for String;
  v146 = sub_10001A9EC();
  *(v45 + 64) = v146;
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  v145 = sub_10001AA40(0, &qword_1004A7380);
  v49 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (result)
  {
    *&v163 = result;
    swift_unknownObjectRetain();
    sub_1000039E8(&qword_1004B07E0);
    if (swift_dynamicCast())
    {
      v50 = *&v162[0];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v50 + 16))
      {
        v53 = sub_100013364(v51, v52);
        v55 = v54;

        if (v55)
        {
          sub_100003CA0(*(v50 + 56) + 32 * v53, &v163);
          if (swift_dynamicCast())
          {
            v56 = *(&v162[0] + 1);
            v57 = *&v162[0];
            v58 = swift_allocObject();
            *(v58 + 16) = v147;
            v59 = Dictionary.debugDescription.getter();
            v60 = v146;
            *(v58 + 56) = &type metadata for String;
            *(v58 + 64) = v60;
            *(v58 + 32) = v59;
            *(v58 + 40) = v61;
            v62 = static OS_os_log.default.getter();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(v50 + 16))
            {
              v65 = sub_100013364(v63, v64);
              v67 = v66;

              if (v67)
              {
                sub_100003CA0(*(v50 + 56) + 32 * v65, &v163);

                if (swift_dynamicCast())
                {
                  v68 = *(&v162[0] + 1);
                  v69 = *&v162[0];

LABEL_40:
                  if (v151)
                  {
                    if (v151 == 1)
                    {
                      type metadata accessor for OIDCToken();
                    }

                    else
                    {
                      type metadata accessor for WestgateToken();
                    }
                  }

                  else
                  {
                    type metadata accessor for DAWToken();
                  }

                  type metadata accessor for JSONDecoder();
                  swift_allocObject();
                  JSONDecoder.init()();
                  type metadata accessor for AuthToken();
                  sub_10009F510(&qword_1004A7A60, type metadata accessor for AuthToken);
                  v134 = v150;
                  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
                  if (v134)
                  {
                    sub_100031928(v57, v56);
                  }

                  else
                  {

                    v135 = v163;
                    sub_10001FB20(a1, v143);
                    sub_100031928(v57, v56);
                    if (v151)
                    {
                      if (v151 == 1)
                      {
                        v136 = 0xE400000000000000;
                        v137 = 1128548687;
                      }

                      else
                      {
                        v136 = 0xE800000000000000;
                        v137 = 0x6574616774736557;
                      }

                      v138 = v148._object;
                    }

                    else
                    {
                      v136 = 0xE300000000000000;
                      v138 = v148._object;
                      v137 = 5718340;
                    }

                    v139 = v149;
                    *v149 = v69;
                    v139[1] = v68;
                    v140 = type metadata accessor for KeychainItem();
                    sub_10007AA3C(v143, v139 + v140[5]);
                    v141 = (v139 + v140[6]);
                    *v141 = v148._countAndFlagsBits;
                    v141[1] = v138;
                    v142 = (v139 + v140[7]);
                    *v142 = v137;
                    v142[1] = v136;
                    *(v139 + v140[8]) = v135;
                    (*(*(v140 - 1) + 56))(v139, 0, 1, v140);
                  }

                  return swift_unknownObjectRelease();
                }

                v160 = v57;
LABEL_28:
                v116 = v56;
                *&v163 = 0;
                *(&v163 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(37);
                v117 = 0xE400000000000000;
                v118 = 1128548687;
                if (v151 != 1)
                {
                  v118 = 0x6574616774736557;
                  v117 = 0xE800000000000000;
                }

                if (v151)
                {
                  v119 = v118;
                }

                else
                {
                  v119 = 5718340;
                }

                if (v151)
                {
                  v120 = v117;
                }

                else
                {
                  v120 = 0xE300000000000000;
                }

                v121 = v120;
                String.append(_:)(*&v119);

                v122._countAndFlagsBits = 0x66206E656B6F7420;
                v122._object = 0xEB0000000020726FLL;
                String.append(_:)(v122);
                v123 = a1;
                v124 = v144;
                sub_10001FB20(a1, v144);
                v125 = type metadata accessor for URL();
                v126 = *(v125 - 8);
                if ((*(v126 + 48))(v124, 1, v125) == 1)
                {
                  sub_100013F2C(v124, &qword_1004A6D30);
                  v127 = 0xEB00000000656E6FLL;
                  v128 = 0x6E3D726576726573;
                }

                else
                {
                  v129 = URL.absoluteString.getter();
                  v127 = v130;
                  (*(v126 + 8))(v124, v125);
                  v128 = v129;
                }

                v131 = v127;
                String.append(_:)(*&v128);

                v132._countAndFlagsBits = 0xD000000000000013;
                v132._object = 0x800000010042FEE0;
                String.append(_:)(v132);
                String.append(_:)(v148);
                v133._countAndFlagsBits = 41;
                v133._object = 0xE100000000000000;
                String.append(_:)(v133);

                v68 = *(&v163 + 1);
                v69 = v163;
                a1 = v123;
                v56 = v116;
                v57 = v160;
                goto LABEL_40;
              }

              v160 = v57;
            }

            else
            {
              v160 = v57;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
      }
    }
  }

  v150 = 0x800000010042FEA0;
  v151 = 0x800000010042F980;
  *&v163 = 0;
  *(&v163 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(95);
  v97._countAndFlagsBits = 0xD00000000000005DLL;
  v97._object = 0x800000010042FB10;
  String.append(_:)(v97);
  v98 = Dictionary.description.getter();
  v100 = v99;

  v101._countAndFlagsBits = v98;
  v101._object = v100;
  String.append(_:)(v101);

  v148._object = *(&v163 + 1);
  v149 = v163;
  v143 = type metadata accessor for KnoxServiceClient.ClientError();
  v102 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v144 = "hivePointer.swift";
  v148._countAndFlagsBits = v44;
  static DispatchQoS.userInitiated.getter();
  *&v163 = &_swiftEmptyArrayStorage;
  sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v153 + 104))(v157, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v155);
  v103 = v158;
  v104 = v159;
  v105 = v160;
  (*(v159 + 104))(v158, enum case for DispatchQoS.QoSClass.default(_:), v160);
  static OS_dispatch_queue.global(qos:)();
  (*(v104 + 8))(v103, v105);
  v106 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v107 = v150;
  *(v102 + 16) = 0xD000000000000030;
  *(v102 + 24) = v107;
  v108 = v151;
  *(v102 + 32) = 0xD000000000000059;
  *(v102 + 40) = v108;
  *(v102 + 56) = 14;
  *(v102 + 48) = 141;
  v109 = v148._object;
  *(v102 + 64) = v149;
  *(v102 + 72) = v109;
  *(v102 + 80) = 0;
  *(v102 + 88) = v106;
  static os_log_type_t.error.getter();
  v110 = swift_allocObject();
  *(v110 + 16) = v147;
  v111 = sub_10005A570();
  if (v112)
  {
    v113 = v146;
    *(v110 + 56) = &type metadata for String;
    *(v110 + 64) = v113;
    *(v110 + 32) = v111;
    *(v110 + 40) = v112;
    v114 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v115 = v102;
    goto LABEL_23;
  }

  __break(1u);
  return v111;
}

unint64_t sub_10009CAE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  v43 = a5;
  v44 = a3;
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  sub_1000039E8(&qword_1004A7A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100378EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v17;
  type metadata accessor for CFString(0);
  v19 = v18;
  *(inited + 120) = v18;
  *(inited + 96) = kSecAttrAuthenticationTypeDefault;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v20;
  if (v14)
  {
    if (v14 == 1)
    {
      v21 = 0xE400000000000000;
      v22 = 1128548687;
    }

    else
    {
      v21 = 0xE800000000000000;
      v22 = 0x6574616774736557;
    }
  }

  else
  {
    v21 = 0xE300000000000000;
    v22 = 5718340;
  }

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v22;
  *(inited + 152) = v21;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v23;
  *(inited + 216) = v19;
  *(inited + 192) = kSecClassInternetPassword;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v24;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;

  v25 = kSecAttrAuthenticationTypeDefault;
  v26 = kSecClassInternetPassword;
  v27 = sub_100061F34(inited);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004A7A98);
  swift_arrayDestroy();
  if (v43)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v48 = v19;
    *&v47 = kSecMatchLimitOne;
    sub_1000279A4(&v47, v46);
    v31 = kSecMatchLimitOne;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v27;
    sub_100026D4C(v46, v28, v30, isUniquelyReferenced_nonNull_native);

    v27 = v45;
  }

  sub_10001FB20(v44, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100013F2C(v10, &qword_1004A6D30);
  }

  else
  {
    v33 = v42;
    (*(v12 + 32))(v42, v10, v11);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = URL.absoluteString.getter();
    v48 = &type metadata for String;
    *&v47 = v37;
    *(&v47 + 1) = v38;
    sub_1000279A4(&v47, v46);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v27;
    sub_100026D4C(v46, v34, v36, v39);

    (*(v12 + 8))(v33, v11);
    return v45;
  }

  return v27;
}