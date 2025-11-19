unint64_t sub_10011F0EC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x74654D64756F6C63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x654B72657473616DLL;
      break;
    case 4:
      result = 0x694872657473616DLL;
      break;
    case 5:
    case 6:
      result = 0x726F737365636361;
      break;
    case 7:
      result = 7041641;
      break;
    case 8:
      result = 0x6974707972636E65;
      break;
    case 9:
      result = 0x49746375646F7270;
      break;
    case 10:
      result = 0x4449726F646E6576;
      break;
    case 11:
      result = 0x6F4D6E6F74747562;
      break;
    case 12:
      result = 0x726F6C6F63;
      break;
    case 13:
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
    case 23:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x416C616974617073;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000022;
      break;
    case 20:
      result = 0x74656863746172;
      break;
    case 21:
      result = 0x6465767265736572;
      break;
    case 22:
      result = 0x73676E6974746573;
      break;
    case 24:
      result = 0x6E6F6973726576;
      break;
    case 25:
      result = 0x6552746E65726170;
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011F3EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&unk_1002F8760, &qword_100228000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v82 - v8;
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_100121A68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v84) = 0;
  type metadata accessor for UUID();
  sub_100121ABC(&qword_1002F8340, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for MagicPairingSettingsRecord();
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v84 = *v12;
    v85 = v13;
    v83 = 1;
    sub_1000EE9F4(v84, v13);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v84, v85);
    v14 = (v3 + v11[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v84) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = v18[1];
    v84 = *v18;
    v85 = v19;
    v83 = 3;
    sub_1000EE9F4(v84, v19);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v84, v85);
    v20 = (v3 + v11[8]);
    v21 = v20[1];
    v84 = *v20;
    v85 = v21;
    v83 = 4;
    sub_1000EE9F4(v84, v21);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v84, v85);
    v22 = (v3 + v11[9]);
    v23 = v22[1];
    v84 = *v22;
    v85 = v23;
    v83 = 5;
    sub_1000EE9F4(v84, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v84, v85);
    v24 = (v3 + v11[10]);
    v25 = v24[1];
    v84 = *v24;
    v85 = v25;
    v83 = 6;
    sub_1000EE9F4(v84, v25);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v84, v85);
    v26 = (v3 + v11[11]);
    v27 = v26[1];
    v84 = *v26;
    v85 = v27;
    v83 = 7;
    sub_1000EE9F4(v84, v27);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v84, v85);
    v28 = (v3 + v11[12]);
    v29 = v28[1];
    v84 = *v28;
    v85 = v29;
    v83 = 8;
    sub_1000EE9F4(v84, v29);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v84, v85);
    v30 = (v3 + v11[13]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v84) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = (v3 + v11[14]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v84) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = (v3 + v11[15]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v84) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v39 = (v3 + v11[16]);
    v40 = *v39;
    v41 = v39[1];
    LOBYTE(v84) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v42 = (v3 + v11[17]);
    v43 = *v42;
    v44 = v42[1];
    LOBYTE(v84) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = (v3 + v11[18]);
    v46 = *v45;
    v47 = v45[1];
    LOBYTE(v84) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v48 = (v3 + v11[19]);
    v49 = *v48;
    v50 = v48[1];
    LOBYTE(v84) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v51 = (v3 + v11[20]);
    v52 = *v51;
    v53 = v51[1];
    LOBYTE(v84) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    v54 = (v3 + v11[21]);
    v55 = *v54;
    v56 = v54[1];
    LOBYTE(v84) = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    v57 = (v3 + v11[22]);
    v58 = *v57;
    v59 = v57[1];
    LOBYTE(v84) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v60 = (v3 + v11[23]);
    v61 = *v60;
    v62 = v60[1];
    LOBYTE(v84) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v63 = (v3 + v11[24]);
    v64 = *v63;
    v65 = v63[1];
    LOBYTE(v84) = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
    v66 = (v3 + v11[25]);
    v67 = *v66;
    v68 = v66[1];
    LOBYTE(v84) = 21;
    KeyedEncodingContainer.encode(_:forKey:)();
    v69 = (v3 + v11[26]);
    v70 = *v69;
    v71 = v69[1];
    LOBYTE(v84) = 22;
    KeyedEncodingContainer.encode(_:forKey:)();
    v72 = (v3 + v11[27]);
    v73 = *v72;
    v74 = v72[1];
    LOBYTE(v84) = 23;
    KeyedEncodingContainer.encode(_:forKey:)();
    v75 = (v3 + v11[28]);
    v76 = *v75;
    v77 = v75[1];
    LOBYTE(v84) = 24;
    KeyedEncodingContainer.encode(_:forKey:)();
    v78 = (v3 + v11[29]);
    v79 = *v78;
    v80 = v78[1];
    LOBYTE(v84) = 25;
    KeyedEncodingContainer.encode(_:forKey:)();
    v81 = v11[30];
    LOBYTE(v84) = 26;
    type metadata accessor for Date();
    sub_100121ABC(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10011FB98()
{
  type metadata accessor for UUID();
  sub_100121ABC(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for MagicPairingSettingsRecord();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  Data.hash(into:)();
  v5 = (v0 + v1[6]);
  v6 = *v5;
  v7 = v5[1];
  String.hash(into:)();
  v8 = (v0 + v1[7]);
  v9 = *v8;
  v10 = v8[1];
  Data.hash(into:)();
  v11 = (v0 + v1[8]);
  v12 = *v11;
  v13 = v11[1];
  Data.hash(into:)();
  v14 = (v0 + v1[9]);
  v15 = *v14;
  v16 = v14[1];
  Data.hash(into:)();
  v17 = (v0 + v1[10]);
  v18 = *v17;
  v19 = v17[1];
  Data.hash(into:)();
  v20 = (v0 + v1[11]);
  v21 = *v20;
  v22 = v20[1];
  Data.hash(into:)();
  v23 = (v0 + v1[12]);
  v24 = *v23;
  v25 = v23[1];
  Data.hash(into:)();
  v26 = (v0 + v1[13]);
  v27 = *v26;
  v28 = v26[1];
  String.hash(into:)();
  v29 = (v0 + v1[14]);
  v30 = *v29;
  v31 = v29[1];
  String.hash(into:)();
  v32 = (v0 + v1[15]);
  v33 = *v32;
  v34 = v32[1];
  String.hash(into:)();
  v35 = (v0 + v1[16]);
  v36 = *v35;
  v37 = v35[1];
  String.hash(into:)();
  v38 = (v0 + v1[17]);
  v39 = *v38;
  v40 = v38[1];
  String.hash(into:)();
  v41 = (v0 + v1[18]);
  v42 = *v41;
  v43 = v41[1];
  String.hash(into:)();
  v44 = (v0 + v1[19]);
  v45 = *v44;
  v46 = v44[1];
  String.hash(into:)();
  v47 = (v0 + v1[20]);
  v48 = *v47;
  v49 = v47[1];
  String.hash(into:)();
  v50 = (v0 + v1[21]);
  v51 = *v50;
  v52 = v50[1];
  String.hash(into:)();
  v53 = (v0 + v1[22]);
  v54 = *v53;
  v55 = v53[1];
  String.hash(into:)();
  v56 = (v0 + v1[23]);
  v57 = *v56;
  v58 = v56[1];
  String.hash(into:)();
  v59 = (v0 + v1[24]);
  v60 = *v59;
  v61 = v59[1];
  String.hash(into:)();
  v62 = (v0 + v1[25]);
  v63 = *v62;
  v64 = v62[1];
  String.hash(into:)();
  v65 = (v0 + v1[26]);
  v66 = *v65;
  v67 = v65[1];
  String.hash(into:)();
  v68 = (v0 + v1[27]);
  v69 = *v68;
  v70 = v68[1];
  String.hash(into:)();
  v71 = (v0 + v1[28]);
  v72 = *v71;
  v73 = v71[1];
  String.hash(into:)();
  v74 = (v0 + v1[29]);
  v75 = *v74;
  v76 = v74[1];
  String.hash(into:)();
  v77 = v1[30];
  type metadata accessor for Date();
  sub_100121ABC(&qword_1002F7DE0, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_10011FE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001221EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10011FEA4(uint64_t a1)
{
  v2 = sub_100121A68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011FEE0(uint64_t a1)
{
  v2 = sub_100121A68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011FF40(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  sub_1000EE9F4(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_10011FF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 120);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_10011FFF4()
{
  Hasher.init(_seed:)();
  sub_10011FB98();
  return Hasher._finalize()();
}

Swift::Int sub_100120038()
{
  Hasher.init(_seed:)();
  sub_10011FB98();
  return Hasher._finalize()();
}

uint64_t type metadata accessor for MagicPairingSettingsRecord()
{
  result = qword_1002F8670;
  if (!qword_1002F8670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001200F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
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
      result = __DataStorage._length.getter();
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
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
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

uint64_t sub_100120324(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1001214AC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000EF870(a3, a4);
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
  sub_1001200F4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000EF870(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unsigned __int8 *sub_1001204B4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100120FC4();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
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

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100120A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100120FC4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100120FC4()
{
  v0 = String.subscript.getter();
  v4 = sub_100121044(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100121044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10012119C(v9, 0);
  v12 = sub_100121210(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_10012119C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000EE870(&unk_1002F8588, &qword_100227DB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100121210(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100121430(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100121430(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100121430(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1001214AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
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

  __DataStorage._length.getter();
  sub_1001200F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100121564(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1000EE9F4(a3, a4);
          return sub_100120324(v13, a2, a3, a4) & 1;
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

uint64_t sub_1001216CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPairingSettingsRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100121730(uint64_t a1)
{
  v2 = type metadata accessor for MagicPairingSettingsRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100121790()
{
  result = qword_1002F8598;
  if (!qword_1002F8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8598);
  }

  return result;
}

uint64_t sub_10012181C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001218EC(uint64_t a1)
{
  *(a1 + 8) = sub_100121ABC(&qword_1002F8710, type metadata accessor for MagicPairingSettingsRecord);
  result = sub_100121ABC(&qword_1002F8718, type metadata accessor for MagicPairingSettingsRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001219BC()
{
  result = qword_1002F8728;
  if (!qword_1002F8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8728);
  }

  return result;
}

uint64_t sub_100121A10(uint64_t a1)
{
  result = sub_100121ABC(&qword_1002F8730, type metadata accessor for MagicPairingSettingsRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100121A68()
{
  result = qword_1002F8740;
  if (!qword_1002F8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8740);
  }

  return result;
}

uint64_t sub_100121ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100121B04(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MagicPairingSettingsRecord();
  if ((sub_100121564(*(a1 + v4[5]), *(a1 + v4[5] + 8), *(a2 + v4[5]), *(a2 + v4[5] + 8)) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100121564(*(a1 + v4[7]), *(a1 + v4[7] + 8), *(a2 + v4[7]), *(a2 + v4[7] + 8)) & 1) == 0 || (sub_100121564(*(a1 + v4[8]), *(a1 + v4[8] + 8), *(a2 + v4[8]), *(a2 + v4[8] + 8)) & 1) == 0 || (sub_100121564(*(a1 + v4[9]), *(a1 + v4[9] + 8), *(a2 + v4[9]), *(a2 + v4[9] + 8)) & 1) == 0 || (sub_100121564(*(a1 + v4[10]), *(a1 + v4[10] + 8), *(a2 + v4[10]), *(a2 + v4[10] + 8)) & 1) == 0 || (sub_100121564(*(a1 + v4[11]), *(a1 + v4[11] + 8), *(a2 + v4[11]), *(a2 + v4[11] + 8)) & 1) == 0 || (sub_100121564(*(a1 + v4[12]), *(a1 + v4[12] + 8), *(a2 + v4[12]), *(a2 + v4[12] + 8)) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[13];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if ((v11 != *v13 || v12 != v13[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = v4[14];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  if ((v15 != *v17 || v16 != v17[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = v4[15];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if ((v19 != *v21 || v20 != v21[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v4[16];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if ((v23 != *v25 || v24 != v25[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v26 = v4[17];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v30 = v4[18];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v34 = v4[19];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v38 = v4[20];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  if ((v39 != *v41 || v40 != v41[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v42 = v4[21];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v46 = v4[22];
  v47 = *(a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v50 = v4[23];
  v51 = *(a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  if ((v51 != *v53 || v52 != v53[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v54 = v4[24];
  v55 = *(a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  if ((v55 != *v57 || v56 != v57[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v58 = v4[25];
  v59 = *(a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  if ((v59 != *v61 || v60 != v61[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v62 = v4[26];
  v63 = *(a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  if ((v63 != *v65 || v64 != v65[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v66 = v4[27];
  v67 = *(a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  if ((v67 != *v69 || v68 != v69[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v70 = v4[28];
  v71 = *(a1 + v70);
  v72 = *(a1 + v70 + 8);
  v73 = (a2 + v70);
  if ((v71 != *v73 || v72 != v73[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v74 = v4[29];
  v75 = *(a1 + v74);
  v76 = *(a1 + v74 + 8);
  v77 = (a2 + v74);
  if ((v75 != *v77 || v76 != v77[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v78 = v4[30];

  return static Date.== infix(_:_:)(a1 + v78, a2 + v78);
}

uint64_t getEnumTagSinglePayload for MagicPairingSettingsRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MagicPairingSettingsRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001220E8()
{
  result = qword_1002F8770;
  if (!qword_1002F8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8770);
  }

  return result;
}

unint64_t sub_100122140()
{
  result = qword_1002F8778;
  if (!qword_1002F8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8778);
  }

  return result;
}

unint64_t sub_100122198()
{
  result = qword_1002F8780;
  if (!qword_1002F8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8780);
  }

  return result;
}

uint64_t sub_1001221EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B72657473616DLL && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694872657473616DLL && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEC00000079654B79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000746E694879 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7041641 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974707972636E65 && a2 == 0xED000079654B6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F4D6E6F74747562 && a2 == 0xEB00000000736564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100269350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100269370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100269390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002693B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x416C616974617073 && a2 == 0xEC0000006F696475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002693D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001002693F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x74656863746172 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xEC0000006B73614DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100269420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6552746E65726170 && a2 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 26;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

uint64_t sub_100122A54()
{
  result = sub_100123520(0x3030304130, 0xE500000000000000, v1);
  if (*(&v1[0] + 1))
  {
    xmmword_100300BC0 = v1[0];
    xmmword_100300BD0 = v1[1];
    unk_100300BE0 = v1[2];
    xmmword_100300BF0 = v1[3];
    unk_100300C00 = v1[4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_100122AB4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100123520(*a1, a1[1], v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100122B04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100122BC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  result = sub_100123520(v4, v3, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    *a2 = v7;
    *(a2 + 8) = v6;
    v8 = v13;
    *(a2 + 16) = v12;
    *(a2 + 32) = v8;
    v9 = v15;
    *(a2 + 48) = v14;
    *(a2 + 64) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100122C38(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1001233BC(v8, v9) & 1;
}

BOOL sub_100122C94(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100122CF0(v8, v9);
}

BOOL sub_100122CF0(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a2[3] != a1[3] || a2[4] != a1[4])
    {
      v6 = a1;
      v7 = a2[3];
      v8 = a2;
      v9 = a2[4];
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v8;
      v11 = v10;
      a1 = v6;
      if ((v11 & 1) == 0)
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return (v18 & 1) == 0;
      }
    }

    v12 = a2[7];
    v13 = a1[7];
    v4 = v12 < v13;
    if (v12 == v13)
    {
      if (a2[9])
      {
        v14 = a2[8];
        v15 = a2[9];
        v16 = a1[9];
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
        v16 = a1[9];
        if (v16)
        {
LABEL_10:
          v17 = v16;
          if (v14 != a1[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v15 == v17)
          {
            v18 = 0;
LABEL_21:

            return (v18 & 1) == 0;
          }

LABEL_20:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_21;
        }
      }

      v17 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v18 = v4;
  return (v18 & 1) == 0;
}

BOOL sub_100122E44(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100122EA0(v8, v9);
}

BOOL sub_100122EA0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a1[3] != a2[3] || a1[4] != a2[4])
    {
      v6 = a1;
      v7 = a1[3];
      v8 = a2;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v8;
      v10 = v9;
      a1 = v6;
      if ((v10 & 1) == 0)
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return (v18 & 1) == 0;
      }
    }

    v11 = a1[7];
    v12 = a2[7];
    v4 = v11 < v12;
    if (v11 == v12)
    {
      v13 = a1[9];
      if (v13)
      {
        v14 = a1[8];
        v15 = v13;
        v16 = a2[9];
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
        v16 = a2[9];
        if (v16)
        {
LABEL_10:
          v17 = v16;
          if (v14 != a2[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v15 == v17)
          {
            v18 = 0;
LABEL_21:

            return (v18 & 1) == 0;
          }

LABEL_20:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_21;
        }
      }

      v17 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v18 = v4;
  return (v18 & 1) == 0;
}

uint64_t sub_100122FF0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_10012304C(v8, v9) & 1;
}

uint64_t sub_10012304C(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_12;
  }

  if (a2[3] == a1[3] && a2[4] == a1[4])
  {
    goto LABEL_7;
  }

  v6 = a1;
  v7 = a2[3];
  v8 = a2;
  v9 = a2[4];
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a2 = v8;
  v11 = v10;
  a1 = v6;
  if (v11)
  {
LABEL_7:
    v12 = a2[7];
    v13 = a1[7];
    v4 = v12 < v13;
    if (v12 == v13)
    {
      if (a2[9])
      {
        v14 = a2[8];
        v15 = a2[9];
        v16 = a1[9];
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
        v16 = a1[9];
        if (v16)
        {
LABEL_10:
          v17 = v16;
          if (v14 != a1[8])
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v15 == v17)
          {
            v18 = 0;
LABEL_23:

            return v18 & 1;
          }

LABEL_22:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_23;
        }
      }

      v17 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_12:
    v18 = v4;
    return v18 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001231B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001231E4()
{
  if (*(v0 + 48))
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v14 = *(v0 + 40);
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v3;
  }

  if (*(v0 + 72))
  {
    v4 = *(v0 + 64);
    Character.write<A>(to:)();
  }

  v12 = *(v0 + 16);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  Character.write<A>(to:)();
  v8._countAndFlagsBits = v1;
  v8._object = v2;
  String.append(_:)(v8);

  v13 = *(v0 + 56);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.append(_:)(v10);

  return 0;
}

unint64_t sub_100123368()
{
  result = qword_1002F8790;
  if (!qword_1002F8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8790);
  }

  return result;
}

uint64_t sub_1001233BC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_12;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v5 || (v6 = a1, v7 = a1[3], v8 = a2, v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v8, v10 = v9, a1 = v6, (v10 & 1) != 0))
  {
    v11 = a1[7];
    v12 = a2[7];
    v4 = v11 < v12;
    if (v11 == v12)
    {
      v13 = a1[9];
      if (v13)
      {
        v14 = a1[8];
        v15 = v13;
        v16 = a2[9];
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
        v16 = a2[9];
        if (v16)
        {
LABEL_10:
          v17 = v16;
          if (v14 != a2[8])
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v15 == v17)
          {
            v18 = 0;
LABEL_23:

            return v18 & 1;
          }

LABEL_22:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_23;
        }
      }

      v17 = 0xE000000000000000;
      if (v14)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_12:
    v18 = v4;
    return v18 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100123520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a3;
  v5 = type metadata accessor for NSScanner.NumberRepresentation();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSScanner);
  v41 = a1;
  v42 = a2;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11];

  v13 = enum case for NSScanner.NumberRepresentation.decimal(_:);
  v14 = v6[13];
  v14(v9, enum case for NSScanner.NumberRepresentation.decimal(_:), v5);
  v40 = NSScanner.scanInt(representation:)();
  v16 = v15;
  v17 = v6[1];
  v17(v9, v5);
  if (v16)
  {

LABEL_14:

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    object = 0;
    goto LABEL_15;
  }

  v18 = NSScanner.scanCharacter()();
  object = v18.value._object;
  if (v18.value._object)
  {
    countAndFlagsBits = v18.value._countAndFlagsBits;
    v14(v9, v13, v5);
    v20 = NSScanner.scanInt(representation:)();
    v22 = v21;
    v17(v9, v5);
    if (v22)
    {
    }

    else
    {
      v28 = v20 / 0x3E8uLL;
      if (v20 < 1000)
      {
        v28 = 0;
      }

      v38 = v28;
      if (v20 >= 1000)
      {
        v29 = v20 % 0x3E8uLL;
      }

      else
      {
        v29 = v20;
      }

      v55 = v20 < 1000;
      v25 = v42;

      v30 = NSScanner.scanCharacter()();
      v31 = v30.value._countAndFlagsBits;
      v32 = v30.value._object;
      v24 = v41;
      NSScanner.currentIndex.getter();
      v33 = String.distance(from:to:)();

      if (!v33)
      {
        v45[0] = v24;
        v45[1] = v25;
        v26 = v40;
        v45[2] = v40;
        v45[3] = countAndFlagsBits;
        v34 = v38;
        v45[4] = v18.value._object;
        v45[5] = v38;
        LOBYTE(v46) = v55;
        *(&v46 + 1) = *v54;
        HIDWORD(v46) = *&v54[3];
        v47 = v29;
        v48 = v30;
        v35 = v46;
        v49[0] = v24;
        v49[1] = v25;
        v49[2] = v40;
        v49[3] = countAndFlagsBits;
        v49[4] = v18.value._object;
        v49[5] = v38;
        v50 = v55;
        *&v51[3] = *&v54[3];
        *v51 = *v54;
        v52 = v29;
        v53 = v30;
        sub_1001238A4(v45, &v44);
        result = sub_1001238DC(v49);
        v27 = countAndFlagsBits;
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_15:
  v34 = 0;
  v35 = 0;
  v29 = 0;
  v31 = 0;
  v32 = 0;
LABEL_16:
  v36 = v43;
  *v43 = v24;
  v36[1] = v25;
  v36[2] = v26;
  v36[3] = v27;
  v36[4] = object;
  v36[5] = v34;
  v36[6] = v35;
  v36[7] = v29;
  v36[8] = v31;
  v36[9] = v32;
  return result;
}

__n128 sub_10012390C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100123928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100123970(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1001239E4()
{
  result = qword_1002F8798;
  if (!qword_1002F8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8798);
  }

  return result;
}

unint64_t sub_100123A48()
{
  result = qword_1002F87A0;
  if (!qword_1002F87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F87A0);
  }

  return result;
}

unint64_t sub_100123AA8()
{
  result = qword_1002F87A8;
  if (!qword_1002F87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F87A8);
  }

  return result;
}

uint64_t sub_100123B00(uint64_t a1)
{
  v2 = v1;
  v23 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v22[2] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v22 - v15;
  URL.init(string:)();
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v2 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_ckTokenBaseURL, v16, v17);
    (*(v18 + 16))(v2 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL, a1, v17);
    v22[1] = sub_100115C10();
    v20._countAndFlagsBits = URL.lastPathComponent.getter();
    v22[0] = a1;
    v24 = 0xD00000000000002FLL;
    v25 = 0x8000000100269930;
    String.append(_:)(v20);

    (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
    static DispatchQoS.unspecified.getter();
    v24 = &_swiftEmptyArrayStorage;
    sub_100126734(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_10012677C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    (*(v18 + 8))(v22[0], v17);
    *(v2 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue) = v21;
    return v2;
  }

  return result;
}

uint64_t sub_100123EB4(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v82 - v15;
  if (![objc_opt_self() isFirstUnlocked])
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v91 = v8;
  v92 = v13;
  v88 = v5;
  v89 = objc_opt_self();
  v17 = [v89 defaultManager];
  v93 = a1;
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 fileExistsAtPath:v18];

  if (v19 && (static URL.== infix(_:_:)() & 1) != 0)
  {
    static os_log_type_t.info.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    v21 = URL.path.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000EE954();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)();
  }

  URL.pathExtension.getter();
  v25 = String.count.getter();

  if (v25 < 1)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AF0 == -1)
    {
LABEL_18:
      os_log(_:dso:log:_:_:)();
      sub_1001266E0();
      swift_allocError();
      *v57 = 0x8000000000000010;
      return swift_willThrow();
    }

LABEL_25:
    swift_once();
    goto LABEL_18;
  }

  v82[2] = v2;
  v84 = v10;
  (*(v10 + 16))(v16, v93, v9);
  URL.deletingLastPathComponent()();
  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v83 = v4;
  v87 = v16;
  v26 = qword_100300E40;
  v27 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v28 = swift_allocObject();
  v90 = xmmword_100226100;
  *(v28 + 16) = xmmword_100226100;
  v29 = URL.path.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v32 = sub_1000EE954();
  *(v28 + 64) = v32;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v86 = v26;
  os_log(_:dso:log:_:_:)();

  if (qword_1002F79C8 != -1)
  {
    swift_once();
  }

  sub_1000F0254();

  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  static os_log_type_t.info.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = v90;
  sub_100126734(&unk_1002F9C00, &type metadata accessor for URL);
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v32;
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.info.getter();
  v82[1] = v27;
  v36 = swift_allocObject();
  *(v36 + 16) = v90;
  v85 = v9;
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v32;
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  os_log(_:dso:log:_:_:)();

  v39 = v89;
  v40 = [v89 defaultManager];
  URL.path.getter();
  v41 = String._bridgeToObjectiveC()();

  v42 = [v40 fileExistsAtPath:v41];

  if (v42)
  {
    static os_log_type_t.info.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = v90;
    v44 = URL.path.getter();
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = v32;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    os_log(_:dso:log:_:_:)();

    v46 = [v39 defaultManager];
    v47 = v87;
    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    URL._bridgeToObjectiveC()(v51);
    v53 = v52;
    v95 = 0;
    v54 = [v46 replaceItemAtURL:v50 withItemAtURL:v52 backupItemName:0 options:0 resultingItemURL:0 error:&v95];

    v55 = v95;
    v56 = v84;
    if (v54)
    {
      goto LABEL_20;
    }

LABEL_22:
    v77 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v88 + 8))(v91, v83);
    v78 = *(v56 + 8);
    v79 = v85;
    v78(v92, v85);
    return (v78)(v47, v79);
  }

  v58 = [v39 defaultManager];
  URL._bridgeToObjectiveC()(v59);
  v61 = v60;
  v47 = v87;
  URL._bridgeToObjectiveC()(v62);
  v64 = v63;
  v95 = 0;
  v65 = [v58 moveItemAtURL:v61 toURL:v63 error:&v95];

  v55 = v95;
  v56 = v84;
  if (!v65)
  {
    goto LABEL_22;
  }

LABEL_20:
  v66 = v55;
  sub_1000EE870(&qword_1002F8900, &qword_100228398);
  inited = swift_initStackObject();
  *(inited + 16) = v90;
  *(inited + 32) = NSFileProtectionKey;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v68 = NSFileProtectionKey;
  v69 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v70 = sub_1000F97FC(inited);
  swift_setDeallocating();
  sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
  v71 = [v89 defaultManager];
  sub_10018AA14(v70);

  type metadata accessor for FileAttributeKey(0);
  sub_100126734(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v73 = String._bridgeToObjectiveC()();

  v95 = 0;
  LODWORD(inited) = [v71 setAttributes:isa ofItemAtPath:v73 error:&v95];

  v74 = v85;
  if (inited)
  {
    v75 = v95;
    v76 = v91;
    URL.setResourceValues(_:)();
    (*(v88 + 8))(v76, v83);
  }

  else
  {
    v80 = v95;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v88 + 8))(v91, v83);
  }

  v81 = *(v56 + 8);
  v81(v92, v74);
  return (v81)(v47, v74);
}

uint64_t sub_1001249E4@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v45 = a1;
  v46 = a2;
  v47 = a4;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v43 - v11;
  v13 = objc_autoreleasePoolPush();
  v43[1] = a3;
  URL.path.getter();
  v14 = v5;
  URL.appendingPathComponent(_:)();

  URL.appendingPathComponent(_:)();
  v15 = *(v6 + 8);
  v46 = v6 + 8;
  v15(v9, v14);
  objc_autoreleasePoolPop(v13);
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  LODWORD(a3) = [v17 fileExistsAtPath:v18];

  if (!a3)
  {
LABEL_6:
    v32 = 1;
    goto LABEL_10;
  }

  v19 = [v16 defaultManager];
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v48 = 0;
  v23 = [v19 removeItemAtURL:v21 error:&v48];

  if (v23)
  {
    v24 = v48;
    LODWORD(v45) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100226C80;
    sub_100126734(&unk_1002F9C00, &type metadata accessor for URL);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_1000EE954();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = URL.lastPathComponent.getter();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    os_log(_:dso:log:_:_:)();

    goto LABEL_6;
  }

  v44 = v14;
  v45 = v12;
  v33 = v48;
  v34 = _convertNSErrorToError(_:)();

  swift_willThrow();
  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100226C80;
  v48 = v34;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v36 = String.init<A>(describing:)();
  v38 = v37;
  *(v35 + 56) = &type metadata for String;
  v39 = sub_1000EE954();
  *(v35 + 64) = v39;
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  v40 = URL.lastPathComponent.getter();
  *(v35 + 96) = &type metadata for String;
  *(v35 + 104) = v39;
  *(v35 + 72) = v40;
  *(v35 + 80) = v41;
  os_log(_:dso:log:_:_:)();

  v32 = 0;
  v14 = v44;
  v12 = v45;
LABEL_10:
  result = (v15)(v12, v14);
  *v47 = v32;
  return result;
}

uint64_t sub_100124EB4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    URL.path.getter();
    URL.appendingPathComponent(_:)();

    sub_1000F0768();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100125240()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (qword_1002F79D8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000EE91C(v0, qword_100300B50);
  v6 = v1[2];
  v6(v4, v5, v0);
  sub_1001250A8();
  v7 = v1[1];
  v7(v4, v0);
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000EE91C(v0, qword_100300B68);
  v6(v4, v8, v0);
  v9 = sub_1001250A8();

  result = (v7)(v4, v0);
  if (v9)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100125484()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v35 = v3;
  os_log(_:dso:log:_:_:)();
  sub_1001250A8();
  if (qword_1002F79E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1000EE91C(v4, qword_100300B80);
  v12 = v5[2];
  v12(v10, v11, v4);
  sub_1001250A8();

  v33 = v5;
  v13 = v5[1];
  v13(v10, v4);
  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000EE91C(v4, qword_100300AF0);
  v12(v10, v14, v4);
  sub_1001250A8();

  v13(v10, v4);
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v15 = sub_1000EE91C(v4, qword_100300D48);
  v12(v10, v15, v4);
  sub_1001250A8();

  v13(v10, v4);
  if (qword_1002F7A70 != -1)
  {
    swift_once();
  }

  v16 = sub_1000EE91C(v4, qword_100300D60);
  v12(v10, v16, v4);
  sub_1001250A8();

  v13(v10, v4);
  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v17 = sub_1000EE91C(v4, qword_100300BA8);
  v12(v10, v17, v4);
  sub_1001250A8();

  v13(v10, v4);
  if (qword_1002F79D8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000EE91C(v4, qword_100300B50);
  v12(v10, v18, v4);
  sub_1001250A8();

  v13(v10, v4);
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000EE91C(v4, qword_100300B68);
  v32 = v12;
  v30 = v5 + 2;
  v12(v10, v19, v4);
  sub_1001250A8();

  v13(v10, v4);
  v20 = v35;
  URL.init(string:)();
  v21 = v33;
  result = (v33[6])(v20, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = v31;
    (v21[4])(v31, v20, v4);
    sub_1001250A8();

    v13(v23, v4);
    v34[3] = &type metadata for AudioAccessoryFeatures;
    v34[4] = sub_1000F1874();
    v24 = isFeatureEnabled(_:)();
    sub_1000EF824(v34);
    if (v24)
    {
      v25 = v32;
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v26 = sub_1000EE91C(v4, qword_100300D88);
      v25(v10, v26, v4);
      sub_1001250A8();

      v13(v10, v4);
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v27 = sub_1000EE91C(v4, qword_100300B10);
      v25(v10, v27, v4);
      sub_1001250A8();

      v13(v10, v4);
    }

    else
    {
      v25 = v32;
    }

    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v28 = sub_1000EE91C(v4, qword_100300C40);
    v25(v10, v28, v4);
    v29 = sub_1001250A8();

    result = (v13)(v10, v4);
    if (v29)
    {
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100125C54()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000EE91C(v0, qword_100300D88);
  v6 = v1[2];
  v6(v4, v5, v0);
  sub_1001250A8();
  v7 = v1[1];
  v7(v4, v0);
  if (qword_1002F79D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000EE91C(v0, qword_100300B10);
  v6(v4, v8, v0);
  sub_1001250A8();

  v7(v4, v0);
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v9 = sub_1000EE91C(v0, qword_100300C40);
  v6(v4, v9, v0);
  v10 = sub_1001250A8();

  result = (v7)(v4, v0);
  if (v10)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100125F18()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v41 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v12 = qword_100300E40;
  os_log(_:dso:log:_:_:)();
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  type metadata accessor for DeviceStore();
  sub_100174350();
  v15 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v16 = v5 + 8;
  v45 = *(v5 + 8);
  result = v45(v11, v4);
  v47 = v15;
  if (v15)
  {
    v46 = (v5 + 56);
    v43 = (v5 + 32);
    v44 = (v5 + 48);
    v42 = xmmword_100226100;
    while (1)
    {
      if ([v47 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      v50[0] = v48;
      v50[1] = v49;
      if (!*(&v49 + 1))
      {

        sub_1000EEE6C(v50, &unk_1002F9C10, &qword_100228390);
        (*v46)(v3, 1, 1, v4);
        return sub_1000EEE6C(v3, &unk_1002F7BA0, &unk_1002270E0);
      }

      v23 = swift_dynamicCast();
      (*v46)(v3, v23 ^ 1u, 1, v4);
      if ((*v44)(v3, 1, v4) == 1)
      {
        break;
      }

      (*v43)(v8, v3, v4);
      v24 = [v13 defaultManager];
      URL._bridgeToObjectiveC()(v25);
      v27 = v26;
      *&v50[0] = 0;
      v28 = [v24 removeItemAtURL:v26 error:v50];

      if (v28)
      {
        v18 = *&v50[0];
        static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v19 = swift_allocObject();
        *(v19 + 16) = v42;
        sub_100126734(&unk_1002F9C00, &type metadata accessor for URL);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        *(v19 + 56) = &type metadata for String;
        *(v19 + 64) = sub_1000EE954();
        *(v19 + 32) = v20;
        *(v19 + 40) = v22;
        os_log(_:dso:log:_:_:)();
      }

      else
      {
        v29 = *&v50[0];
        v30 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v41[3] = static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v31 = swift_allocObject();
        *(v31 + 16) = v42;
        *&v50[0] = v30;
        swift_errorRetain();
        sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
        v32 = String.init<A>(describing:)();
        v33 = v4;
        v34 = v3;
        v35 = v8;
        v36 = v13;
        v37 = v12;
        v38 = v16;
        v40 = v39;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = sub_1000EE954();
        *(v31 + 32) = v32;
        *(v31 + 40) = v40;
        v16 = v38;
        v12 = v37;
        v13 = v36;
        v8 = v35;
        v3 = v34;
        v4 = v33;
        os_log(_:dso:log:_:_:)();
      }

      v45(v8, v4);
    }

    return sub_1000EEE6C(v3, &unk_1002F7BA0, &unk_1002270E0);
  }

  return result;
}

uint64_t sub_100126510()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_ckTokenBaseURL, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordFileManager()
{
  result = qword_1002F87D8;
  if (!qword_1002F87D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100126640()
{
  result = type metadata accessor for URL();
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

unint64_t sub_1001266E0()
{
  result = qword_1002F88F8;
  if (!qword_1002F88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F88F8);
  }

  return result;
}

uint64_t sub_100126734(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10012677C()
{
  result = qword_1002F93B0;
  if (!qword_1002F93B0)
  {
    sub_1000F2B2C(&qword_1002F9710, &unk_100227B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F93B0);
  }

  return result;
}

uint64_t type metadata accessor for CloudCoordinatorConfiguration()
{
  result = qword_1002F8960;
  if (!qword_1002F8960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100126854()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100126948(319, &qword_1002F8970, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        sub_100126948(319, &unk_1002F8978, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100126948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10012699C()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_1000EE8B8(v4, qword_100300C28);
  v5 = sub_1000EE91C(v4, qword_100300C28);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100126AD4()
{
  _StringGuts.grow(_:)(67);
  v1._object = 0x8000000100269980;
  v1._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v1);
  v2 = type metadata accessor for CloudCoordinatorConfiguration();
  String.append(_:)(*(v0 + *(v2 + 24)));
  v3._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v3._object = 0xEB00000000203A73;
  String.append(_:)(v3);
  v4 = *(v0 + *(v2 + 32));
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_100126BB0(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F89E0, &unk_1002284F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_100127810();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = 0;
  type metadata accessor for UUID();
  sub_100127924(&qword_1002F8340, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CloudCoordinatorConfiguration();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v24 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v11[7];
    v22 = 3;
    type metadata accessor for URL();
    sub_100127924(&qword_1002F8128, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + v11[8]);
    v20[15] = 4;
    sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
    sub_10012796C(&qword_1002F89E8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100126E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EE870(&qword_1002F89C8, &unk_1002284E0);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v36 - v18;
  v44 = type metadata accessor for CloudCoordinatorConfiguration();
  v20 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  result = (*(v8 + 48))(v19, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v22, v19, v7);
    v24 = a1;
    v26 = a1[3];
    v25 = a1[4];
    v43 = v24;
    sub_1000EF78C(v24, v26);
    sub_100127810();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v2)
    {
      sub_1000EF824(v43);
      return (*(v8 + 8))(v22, v7);
    }

    else
    {
      v50 = 0;
      sub_100127924(&unk_1002F8750, &type metadata accessor for UUID);
      v27 = v40;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v8 + 40))(v22, v11, v7);
      v49 = 1;
      v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v29 = v44;
      v30 = &v22[*(v44 + 20)];
      *v30 = v28;
      v30[1] = v31;
      v48 = 2;
      v32 = KeyedDecodingContainer.decode(_:forKey:)();
      v33 = &v22[v29[6]];
      *v33 = v32;
      v33[1] = v34;
      v47 = 3;
      sub_100127924(&qword_1002F8138, &type metadata accessor for URL);
      v35 = v42;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v41 + 32))(&v22[v29[7]], v38, v35);
      sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
      v46 = 4;
      sub_10012796C(&qword_1002F89D8);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v39 + 8))(v15, v27);
      *&v22[v29[8]] = v45;
      sub_100127864(v22, v37);
      sub_1000EF824(v43);
      return sub_1001278C8(v22);
    }
  }

  return result;
}

unint64_t sub_100127524()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000013;
  v4 = 0x726F746365726964;
  if (v1 != 3)
  {
    v4 = 0x734449656E6F7ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1001275D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100127AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012760C(uint64_t a1)
{
  v2 = sub_100127810();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100127648(uint64_t a1)
{
  v2 = sub_100127810();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100127688(uint64_t a1)
{
  _StringGuts.grow(_:)(67);
  v3._object = 0x8000000100269980;
  v3._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v3);
  String.append(_:)(*(v1 + *(a1 + 24)));
  v4._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v4._object = 0xEB00000000203A73;
  String.append(_:)(v4);
  v5 = *(v1 + *(a1 + 32));
  v6._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v6);

  return 0;
}

uint64_t sub_10012778C(uint64_t a1)
{
  *(a1 + 8) = sub_100127924(&qword_1002F89B8, type metadata accessor for CloudCoordinatorConfiguration);
  result = sub_100127924(&qword_1002F89C0, type metadata accessor for CloudCoordinatorConfiguration);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100127810()
{
  result = qword_1002F89D0;
  if (!qword_1002F89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F89D0);
  }

  return result;
}

uint64_t sub_100127864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudCoordinatorConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001278C8(uint64_t a1)
{
  v2 = type metadata accessor for CloudCoordinatorConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100127924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012796C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2B2C(&qword_1002F7F00, &qword_1002284F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001279EC()
{
  result = qword_1002F89F0;
  if (!qword_1002F89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F89F0);
  }

  return result;
}

unint64_t sub_100127A44()
{
  result = qword_1002F89F8;
  if (!qword_1002F89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F89F8);
  }

  return result;
}

unint64_t sub_100127A9C()
{
  result = qword_1002F8A00;
  if (!qword_1002F8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8A00);
  }

  return result;
}

uint64_t sub_100127AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002699F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100269A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xEC0000004C525579 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x734449656E6F7ALL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

os_activity_t _BTActivityCreate(_:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1002F7A18 == -1)
        {
LABEL_5:
          v5 = qword_1002F8A08;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1002F7A18 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1002F8A08, OS_ACTIVITY_FLAG_DEFAULT);
}

id sub_100128290(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1001282E0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10012833C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100128378()
{
  qword_1002F8A08 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1001285C0()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300C40);
  sub_1000EE91C(v4, qword_100300C40);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void *sub_100129F78(id a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v244 = v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v263 = v239 - v10;
  v11 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v243 = v239 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v264 = v239 - v15;
  __chkstk_darwin(v16);
  v256 = v239 - v17;
  __chkstk_darwin(v18);
  v254 = v239 - v19;
  v20 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v239 - v22;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v269 = v24;
  v270 = v25;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v266 = v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft;
  *v29 = 0;
  v245 = v29;
  v29[4] = 1;
  v30 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight;
  *v30 = 0;
  v246 = v30;
  v30[4] = 1;
  v31 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount;
  *v31 = 0;
  v247 = v31;
  v31[4] = 1;
  v32 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft;
  *v32 = 0;
  v248 = v32;
  v32[4] = 1;
  v33 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight;
  *v33 = 0;
  v249 = v33;
  v33[4] = 1;
  v34 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft;
  *v34 = 0;
  v250 = v34;
  v34[4] = 1;
  v35 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight;
  *v35 = 0;
  v251 = v35;
  v35[4] = 1;
  v36 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft;
  *v36 = 0;
  v252 = v36;
  v36[4] = 1;
  v37 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight;
  *v37 = 0;
  v253 = v37;
  v37[4] = 1;
  v38 = *(v6 + 56);
  v271 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  v38(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft, 1, 1, v5, v27);
  v272 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v267 = v5;
  v268 = v6 + 56;
  v265 = v38;
  (v38)(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight, 1, 1, v5);
  v39 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft;
  *v39 = 0;
  v255 = v39;
  v39[4] = 1;
  v40 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight;
  *v40 = 0;
  v257 = v40;
  v40[4] = 1;
  v41 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft;
  *v41 = 0;
  v258 = v41;
  v41[4] = 1;
  v42 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight;
  *v42 = 0;
  v259 = v42;
  v42[4] = 1;
  v43 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft;
  *v43 = 0;
  v260 = v43;
  v43[4] = 1;
  v44 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight;
  *v44 = 0;
  v261 = v44;
  v44[4] = 1;
  v45 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft;
  *v45 = 0;
  v262 = v45;
  v45[4] = 1;
  v46 = v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight;
  *v46 = 0;
  v46[4] = 1;
  if (CKRecord.recordType.getter() == 0xD000000000000013 && 0x8000000100228720 == v47)
  {
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      sub_1001334E8();
      swift_allocError();
      *v61 = 0;
      swift_willThrow();

LABEL_13:
      sub_1000EEE6C(v3 + v271, &qword_1002F7EF0, &unk_100226C90);
      sub_1000EEE6C(v3 + v272, &qword_1002F7EF0, &unk_100226C90);
      type metadata accessor for HMDeviceCloudRecord();
      v62 = *((swift_isaMask & *v3) + 0x30);
      v63 = *((swift_isaMask & *v3) + 0x34);
      swift_deallocPartialClassInstance();
      return v3;
    }
  }

  v241 = v46;
  v242 = v6;
  v49 = [a1 encryptedValues];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 objectForKeyedSubscript:v50];

  if (!v51 || (v277 = v51, v273 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100226100;
    *(v58 + 56) = sub_1000EEE20();
    *(v58 + 64) = sub_10013353C(&qword_1002F7BE0, sub_1000EEE20);
    *(v58 + 32) = a1;
    v59 = a1;
    os_log(_:dso:log:_:_:)();

    sub_1001334E8();
    swift_allocError();
    *v60 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  v239[1] = 0xD000000000000010;
  v53 = v275;
  v52 = v276;
  v240 = a1;
  v54 = [a1 recordID];
  v55 = [v54 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v57 = v269;
  v56 = v270;
  if ((*(v270 + 48))(v23, 1, v269) == 1)
  {

    sub_1000EEE6C(v23, &qword_1002F8000, &unk_1002262C0);
    a1 = v240;
    goto LABEL_9;
  }

  v65 = v53;
  v66 = v49;
  v67 = v266;
  (*(v56 + 32))(v266, v23, v57);
  (*(v56 + 16))(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier, v67, v57);
  v68 = (v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
  *v68 = v65;
  v68[1] = v52;
  v69 = String._bridgeToObjectiveC()();
  v70 = [v66 objectForKeyedSubscript:v69];

  v71 = v265;
  if (v70 && (v275 = v70, swift_dynamicCast()))
  {
    v72 = v277;
  }

  else
  {
    if (qword_1002F7A20 != -1)
    {
      swift_once();
    }

    v72 = byte_1002F8A60;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) = v72;
  v73 = String._bridgeToObjectiveC()();
  v74 = [v66 objectForKeyedSubscript:v73];

  if (v74 && (v275 = v74, swift_dynamicCast()))
  {
    v75 = v277;
  }

  else
  {
    if (qword_1002F7A28 != -1)
    {
      swift_once();
    }

    v75 = byte_1002F8A61;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) = v75;
  v76 = String._bridgeToObjectiveC()();
  v77 = [v66 objectForKeyedSubscript:v76];

  if (v77 && (v275 = v77, swift_dynamicCast()))
  {
    v78 = v277;
  }

  else
  {
    if (qword_1002F7A30 != -1)
    {
      swift_once();
    }

    v78 = byte_1002F8A62;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) = v78;
  v79 = String._bridgeToObjectiveC()();
  v80 = [v66 objectForKeyedSubscript:v79];

  if (v80 && (v275 = v80, swift_dynamicCast()))
  {
    v81 = v277;
  }

  else
  {
    if (qword_1002F7A38 != -1)
    {
      swift_once();
    }

    v81 = byte_1002F8A63;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) = v81;
  v82 = String._bridgeToObjectiveC()();
  v83 = [v66 objectForKeyedSubscript:v82];

  if (v83 && (v275 = v83, swift_dynamicCast()))
  {
    v84 = v277;
  }

  else
  {
    if (qword_1002F7A40 != -1)
    {
      swift_once();
    }

    v84 = byte_1002F8A64;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) = v84;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v66 objectForKeyedSubscript:v85];

  if (v86 && (v275 = v86, swift_dynamicCast()))
  {
    v87 = v277;
    v88 = v267;
  }

  else
  {
    v88 = v267;
    if (qword_1002F7A48 != -1)
    {
      swift_once();
    }

    v87 = byte_1002F8A65;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) = v87;
  v89 = String._bridgeToObjectiveC()();
  v90 = [v66 objectForKeyedSubscript:v89];

  if (v90 && (v275 = v90, swift_dynamicCast()))
  {
    v91 = v277;
  }

  else
  {
    if (qword_1002F7A50 != -1)
    {
      swift_once();
    }

    v91 = byte_1002F8A66;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) = v91;
  v92 = String._bridgeToObjectiveC()();
  v93 = [v66 objectForKeyedSubscript:v92];

  if (v93 && (v275 = v93, swift_dynamicCast()))
  {
    v94 = v277;
  }

  else
  {
    if (qword_1002F7A58 != -1)
    {
      swift_once();
    }

    v94 = byte_1002F8A67;
  }

  *(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) = v94;
  v95 = String._bridgeToObjectiveC()();
  v96 = [v66 objectForKeyedSubscript:v95];

  if (v96)
  {
    v275 = v96;
    v97 = swift_dynamicCast();
    v98 = v277;
    if (!v97)
    {
      v98 = 0;
    }

    v99 = v97 ^ 1;
  }

  else
  {
    v98 = 0;
    v99 = 1;
  }

  v100 = v245;
  *v245 = v98;
  *(v100 + 4) = v99;
  v101 = String._bridgeToObjectiveC()();
  v102 = [v66 objectForKeyedSubscript:v101];

  if (v102)
  {
    v275 = v102;
    v103 = swift_dynamicCast();
    v104 = v277;
    if (!v103)
    {
      v104 = 0;
    }

    v105 = v103 ^ 1;
  }

  else
  {
    v104 = 0;
    v105 = 1;
  }

  v106 = v246;
  *v246 = v104;
  *(v106 + 4) = v105;
  v107 = String._bridgeToObjectiveC()();
  v108 = [v66 objectForKeyedSubscript:v107];

  if (v108)
  {
    v275 = v108;
    v109 = swift_dynamicCast();
    v110 = v277;
    if (!v109)
    {
      v110 = 0;
    }

    v111 = v109 ^ 1;
  }

  else
  {
    v110 = 0;
    v111 = 1;
  }

  v112 = v247;
  *v247 = v110;
  *(v112 + 4) = v111;
  v113 = String._bridgeToObjectiveC()();
  v114 = [v66 objectForKeyedSubscript:v113];

  if (v114)
  {
    v275 = v114;
    v115 = swift_dynamicCast();
    v116 = v277;
    if (!v115)
    {
      v116 = 0;
    }

    v117 = v115 ^ 1;
  }

  else
  {
    v116 = 0;
    v117 = 1;
  }

  v118 = v248;
  *v248 = v116;
  *(v118 + 4) = v117;
  v119 = String._bridgeToObjectiveC()();
  v120 = [v66 objectForKeyedSubscript:v119];

  if (v120)
  {
    v275 = v120;
    v121 = swift_dynamicCast();
    v122 = v277;
    if (!v121)
    {
      v122 = 0;
    }

    v123 = v121 ^ 1;
  }

  else
  {
    v122 = 0;
    v123 = 1;
  }

  v124 = v249;
  *v249 = v122;
  *(v124 + 4) = v123;
  v125 = String._bridgeToObjectiveC()();
  v126 = [v66 objectForKeyedSubscript:v125];

  if (v126)
  {
    v275 = v126;
    v127 = swift_dynamicCast();
    v128 = v277;
    if (!v127)
    {
      v128 = 0;
    }

    v129 = v127 ^ 1;
  }

  else
  {
    v128 = 0;
    v129 = 1;
  }

  v130 = v250;
  *v250 = v128;
  *(v130 + 4) = v129;
  v131 = String._bridgeToObjectiveC()();
  v132 = [v66 objectForKeyedSubscript:v131];

  v239[0] = v2;
  if (v132)
  {
    v275 = v132;
    v133 = swift_dynamicCast();
    v134 = v277;
    if (!v133)
    {
      v134 = 0;
    }

    v135 = v133 ^ 1;
  }

  else
  {
    v134 = 0;
    v135 = 1;
  }

  v136 = v251;
  *v251 = v134;
  *(v136 + 4) = v135;
  v137 = String._bridgeToObjectiveC()();
  v138 = [v66 objectForKeyedSubscript:v137];

  if (v138)
  {
    v275 = v138;
    v139 = swift_dynamicCast();
    v140 = v277;
    if (!v139)
    {
      v140 = 0;
    }

    v141 = v139 ^ 1;
  }

  else
  {
    v140 = 0;
    v141 = 1;
  }

  v142 = v252;
  *v252 = v140;
  *(v142 + 4) = v141;
  v143 = String._bridgeToObjectiveC()();
  v144 = [v66 objectForKeyedSubscript:v143];

  if (v144)
  {
    v275 = v144;
    v145 = swift_dynamicCast();
    v146 = v277;
    if (!v145)
    {
      v146 = 0;
    }

    v147 = v145 ^ 1;
  }

  else
  {
    v146 = 0;
    v147 = 1;
  }

  v148 = v253;
  *v253 = v146;
  *(v148 + 4) = v147;
  v149 = String._bridgeToObjectiveC()();
  v150 = [v66 objectForKeyedSubscript:v149];

  if (v150)
  {
    v275 = v150;
    v151 = v254;
    v152 = swift_dynamicCast() ^ 1;
    v153 = v151;
  }

  else
  {
    v151 = v254;
    v153 = v254;
    v152 = 1;
  }

  v71(v153, v152, 1, v88);
  v154 = v271;
  swift_beginAccess();
  sub_10013261C(v151, v3 + v154);
  swift_endAccess();
  v155 = String._bridgeToObjectiveC()();
  v156 = [v66 objectForKeyedSubscript:v155];

  if (v156)
  {
    v275 = v156;
    v157 = v256;
    v158 = swift_dynamicCast() ^ 1;
    v159 = v157;
  }

  else
  {
    v157 = v256;
    v159 = v256;
    v158 = 1;
  }

  v71(v159, v158, 1, v88);
  v160 = v272;
  swift_beginAccess();
  sub_10013261C(v157, v3 + v160);
  swift_endAccess();
  v161 = String._bridgeToObjectiveC()();
  v162 = [v66 objectForKeyedSubscript:v161];

  if (v162)
  {
    v275 = v162;
    v163 = swift_dynamicCast();
    v164 = v277;
    if (!v163)
    {
      v164 = 0;
    }

    v165 = v163 ^ 1;
  }

  else
  {
    v164 = 0;
    v165 = 1;
  }

  v166 = v255;
  *v255 = v164;
  *(v166 + 4) = v165;
  v167 = String._bridgeToObjectiveC()();
  v168 = [v66 objectForKeyedSubscript:v167];

  if (v168)
  {
    v275 = v168;
    v169 = swift_dynamicCast();
    v170 = v277;
    if (!v169)
    {
      v170 = 0;
    }

    v171 = v169 ^ 1;
  }

  else
  {
    v170 = 0;
    v171 = 1;
  }

  v172 = v257;
  *v257 = v170;
  *(v172 + 4) = v171;
  v173 = String._bridgeToObjectiveC()();
  v174 = [v66 objectForKeyedSubscript:v173];

  if (v174)
  {
    v275 = v174;
    v175 = swift_dynamicCast();
    v176 = v277;
    if (!v175)
    {
      v176 = 0;
    }

    v177 = v175 ^ 1;
  }

  else
  {
    v176 = 0;
    v177 = 1;
  }

  v178 = v258;
  *v258 = v176;
  *(v178 + 4) = v177;
  v179 = String._bridgeToObjectiveC()();
  v180 = [v66 objectForKeyedSubscript:v179];

  if (v180)
  {
    v275 = v180;
    v181 = swift_dynamicCast();
    v182 = v277;
    if (!v181)
    {
      v182 = 0;
    }

    v183 = v181 ^ 1;
  }

  else
  {
    v182 = 0;
    v183 = 1;
  }

  v184 = v264;
  v185 = v259;
  *v259 = v182;
  *(v185 + 4) = v183;
  v186 = String._bridgeToObjectiveC()();
  v187 = [v66 objectForKeyedSubscript:v186];

  if (v187)
  {
    v275 = v187;
    v188 = swift_dynamicCast();
    v189 = v277;
    if (!v188)
    {
      v189 = 0;
    }

    v190 = v188 ^ 1;
  }

  else
  {
    v189 = 0;
    v190 = 1;
  }

  v191 = v260;
  *v260 = v189;
  *(v191 + 4) = v190;
  v192 = String._bridgeToObjectiveC()();
  v193 = [v66 objectForKeyedSubscript:v192];

  if (v193)
  {
    v275 = v193;
    v194 = swift_dynamicCast();
    v195 = v277;
    if (!v194)
    {
      v195 = 0;
    }

    v196 = v194 ^ 1;
  }

  else
  {
    v195 = 0;
    v196 = 1;
  }

  v197 = v261;
  *v261 = v195;
  *(v197 + 4) = v196;
  v198 = String._bridgeToObjectiveC()();
  v199 = [v66 objectForKeyedSubscript:v198];

  if (v199)
  {
    v275 = v199;
    v200 = swift_dynamicCast();
    v201 = v277;
    if (!v200)
    {
      v201 = 0;
    }

    v202 = v200 ^ 1;
  }

  else
  {
    v201 = 0;
    v202 = 1;
  }

  v203 = v262;
  *v262 = v201;
  *(v203 + 4) = v202;
  v204 = String._bridgeToObjectiveC()();
  v205 = [v66 objectForKeyedSubscript:v204];

  if (v205)
  {
    v275 = v205;
    v206 = swift_dynamicCast();
    v207 = v277;
    if (!v206)
    {
      v207 = 0;
    }

    v208 = v206 ^ 1;
  }

  else
  {
    v207 = 0;
    v208 = 1;
  }

  v209 = v241;
  *v241 = v207;
  *(v209 + 4) = v208;
  v210 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v240 encodeSystemFieldsWithCoder:v210];
  [v210 finishEncoding];
  v211 = [v210 encodedData];
  v212 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v214 = v213;

  v215 = (v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata);
  *v215 = v212;
  v215[1] = v214;
  v216 = v240;
  v217 = [v240 modificationDate];
  if (v217)
  {
    v218 = v244;
    v219 = v217;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v270 + 8))(v266, v269);
    v220 = v242;
    v221 = *(v242 + 32);
    v222 = v218;
    v223 = v267;
    v221(v184, v222, v267);
    v265(v184, 0, 1, v223);
    v224 = v263;
    v221(v263, v184, v223);
  }

  else
  {
    v225 = v184;
    v223 = v267;
    v226 = v265;
    v265(v225, 1, 1, v267);
    v227 = [v216 creationDate];
    v224 = v263;
    if (v227)
    {
      v228 = v244;
      v229 = v227;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v270 + 8))(v266, v269);
      v230 = v242;
      v231 = *(v242 + 32);
      v232 = v243;
      v233 = v228;
      v216 = v240;
      v231(v243, v233, v223);
      v226(v232, 0, 1, v223);
      v231(v224, v232, v223);
      v234 = *(v230 + 48);
    }

    else
    {
      v235 = v243;
      v226(v243, 1, 1, v223);
      static Date.now.getter();
      swift_unknownObjectRelease();
      (*(v270 + 8))(v266, v269);
      v234 = *(v242 + 48);
      if (v234(v235, 1, v223) != 1)
      {
        sub_1000EEE6C(v235, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v236 = v264;
    v237 = v234(v264, 1, v223);
    v220 = v242;
    if (v237 != 1)
    {
      sub_1000EEE6C(v236, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v220 + 32))(v3 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate, v224, v223);
  v238 = type metadata accessor for HMDeviceCloudRecord();
  v274.receiver = v3;
  v274.super_class = v238;
  v3 = objc_msgSendSuper2(&v274, "init");

  return v3;
}

uint64_t *sub_10012BD48(uint64_t a1, void *a2)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v194 = &v168 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v190 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v182 = &v168 - v12;
  __chkstk_darwin(v13);
  v181 = &v168 - v14;
  __chkstk_darwin(v15);
  v179 = &v168 - v16;
  v18 = __chkstk_darwin(v17);
  v178 = &v168 - v19;
  v20 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft];
  *v20 = 0;
  v169 = v20;
  *(v20 + 4) = 1;
  v21 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight];
  *v21 = 0;
  v170 = v21;
  *(v21 + 4) = 1;
  v22 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount];
  *v22 = 0;
  v171 = v22;
  *(v22 + 4) = 1;
  v23 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft];
  *v23 = 0;
  v172 = v23;
  *(v23 + 4) = 1;
  v24 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight];
  *v24 = 0;
  v173 = v24;
  *(v24 + 4) = 1;
  v25 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft];
  *v25 = 0;
  v174 = v25;
  *(v25 + 4) = 1;
  v26 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight];
  *v26 = 0;
  v175 = v26;
  *(v26 + 4) = 1;
  v27 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft];
  *v27 = 0;
  v176 = v27;
  *(v27 + 4) = 1;
  v28 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight];
  *v28 = 0;
  v177 = v28;
  *(v28 + 4) = 1;
  v191 = v29;
  v30 = v29 + 56;
  v31 = *(v29 + 56);
  v196 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  v31(&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft], 1, 1, v8, v18);
  v197 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v195 = v8;
  v192 = v31;
  v193 = v30;
  (v31)(&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight], 1, 1, v8);
  v32 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft];
  *v32 = 0;
  v180 = v32;
  *(v32 + 4) = 1;
  v33 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight];
  *v33 = 0;
  v183 = v33;
  *(v33 + 4) = 1;
  v34 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft];
  *v34 = 0;
  v184 = v34;
  *(v34 + 4) = 1;
  v35 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight];
  *v35 = 0;
  v185 = v35;
  *(v35 + 4) = 1;
  v36 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft];
  *v36 = 0;
  v186 = v36;
  *(v36 + 4) = 1;
  v37 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight];
  *v37 = 0;
  v187 = v37;
  *(v37 + 4) = 1;
  v38 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft];
  *v38 = 0;
  v188 = v38;
  *(v38 + 4) = 1;
  v39 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
  *v39 = 0;
  v189 = v39;
  *(v39 + 4) = 1;
  v40 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata];
  *&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata] = xmmword_100227DA0;
  v41 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier;
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  v198 = a1;
  v199 = v43;
  v44 = *(v43 + 16);
  v201 = v42;
  v44(&v2[v41], a1);
  v45 = [a2 bluetoothAddress];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    goto LABEL_8;
  }

  v50 = [a2 bluetoothAddress];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (v51 == 0xD000000000000011 && 0x8000000100267AA0 == v53)
  {

LABEL_8:
    sub_1001334E8();
    swift_allocError();
    *v55 = 3;
    swift_willThrow();

    v56 = *(v199 + 8);
    v57 = v201;
    v56(v198, v201);
    sub_1000EF870(*v40, *(v40 + 1));
    v56(&v2[v41], v57);
    v58 = &qword_1002F7EF0;
    sub_1000EEE6C(&v2[v196], &qword_1002F7EF0, &unk_100226C90);
    sub_1000EEE6C(&v2[v197], &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for HMDeviceCloudRecord();
    v59 = *((swift_isaMask & *v2) + 0x30);
    v60 = *((swift_isaMask & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v58;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_8;
  }

  v62 = [a2 haRegionStatus];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus] = v62;
  v63 = [a2 haRegionStatusV2];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2] = v63;
  v64 = [a2 hpPPERegionStatus];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus] = v64;
  v65 = [a2 hpRegionStatus];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus] = v65;
  v66 = [a2 mediaAssistEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled] = v66;
  v67 = [a2 pmeMediaEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled] = v67;
  v68 = [a2 pmeVoiceEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled] = v68;
  v69 = [a2 swipeGainEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled] = v69;
  v70 = [a2 bluetoothAddress];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v168 = a2;
  v73 = v72;

  v74 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
  *v74 = v71;
  v74[1] = v73;
  v75 = v168;
  v76 = [v168 bottomMicFaultCountLeft];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 unsignedIntValue];

    v79 = v169;
    *v169 = v78;
    *(v79 + 4) = 0;
  }

  v80 = [v75 bottomMicFaultCountRight];
  if (v80)
  {
    v81 = v80;
    v82 = [v80 unsignedIntValue];

    v83 = v170;
    *v170 = v82;
    *(v83 + 4) = 0;
  }

  v84 = [v75 diagnosticMeasurementsCount];
  if (v84)
  {
    v85 = v84;
    v86 = [v84 unsignedIntValue];

    v87 = v171;
    *v171 = v86;
    *(v87 + 4) = 0;
  }

  v88 = [v75 freqAccuracyFaultCountLeft];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 unsignedIntValue];

    v91 = v172;
    *v172 = v90;
    *(v91 + 4) = 0;
  }

  v92 = [v75 freqAccuracyFaultCountRight];
  if (v92)
  {
    v93 = v92;
    v94 = [v92 unsignedIntValue];

    v95 = v173;
    *v173 = v94;
    *(v95 + 4) = 0;
  }

  v96 = [v75 frontVentFaultCountLeft];
  if (v96)
  {
    v97 = v96;
    v98 = [v96 unsignedIntValue];

    v99 = v174;
    *v174 = v98;
    *(v99 + 4) = 0;
  }

  v100 = [v75 frontVentFaultCountRight];
  if (v100)
  {
    v101 = v100;
    v102 = [v100 unsignedIntValue];

    v103 = v175;
    *v175 = v102;
    *(v103 + 4) = 0;
  }

  v104 = [v75 innerMicFaultCountLeft];
  if (v104)
  {
    v105 = v104;
    v106 = [v104 unsignedIntValue];

    v107 = v176;
    *v176 = v106;
    *(v107 + 4) = 0;
  }

  v108 = [v75 innerMicFaultCountRight];
  if (v108)
  {
    v109 = v108;
    v110 = [v108 unsignedIntValue];

    v111 = v177;
    *v177 = v110;
    *(v111 + 4) = 0;
  }

  v112 = [v75 latestDiagnosticTimestampLeft];
  v113 = v191;
  if (v112)
  {
    v114 = v179;
    v115 = v112;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = *(v113 + 32);
    v117 = v113;
    v118 = v178;
    v119 = v114;
    v120 = v195;
    v116(v178, v119, v195);
    v121 = v194;
    v122 = v118;
    v113 = v117;
    v116(v194, v122, v120);
    (v192)(v121, 0, 1, v120);
    v123 = v196;
    swift_beginAccess();
    v75 = v168;
    sub_10013261C(v121, &v2[v123]);
    swift_endAccess();
  }

  v124 = [v75 latestDiagnosticTimestampRight];
  if (v124)
  {
    v125 = v182;
    v126 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v127 = *(v113 + 32);
    v128 = v113;
    v129 = v181;
    v130 = v195;
    v127(v181, v125, v195);
    v131 = v194;
    v132 = v129;
    v113 = v128;
    v127(v194, v132, v130);
    (v192)(v131, 0, 1, v130);
    v133 = v197;
    swift_beginAccess();
    v75 = v168;
    sub_10013261C(v131, &v2[v133]);
    swift_endAccess();
  }

  v134 = [v75 rearVentFaultCountLeft];
  if (v134)
  {
    v135 = v134;
    v136 = [v134 unsignedIntValue];

    v137 = v180;
    *v180 = v136;
    *(v137 + 4) = 0;
  }

  v138 = [v75 rearVentFaultCountRight];
  if (v138)
  {
    v139 = v138;
    v140 = [v138 unsignedIntValue];

    v141 = v183;
    *v183 = v140;
    *(v141 + 4) = 0;
  }

  v142 = [v75 speakerFaultCountLeft];
  if (v142)
  {
    v143 = v142;
    v144 = [v142 unsignedIntValue];

    v145 = v184;
    *v184 = v144;
    *(v145 + 4) = 0;
  }

  v146 = [v75 speakerFaultCountRight];
  if (v146)
  {
    v147 = v146;
    v148 = [v146 unsignedIntValue];

    v149 = v185;
    *v185 = v148;
    *(v149 + 4) = 0;
  }

  v150 = [v75 topMicFaultCountLeft];
  if (v150)
  {
    v151 = v150;
    v152 = [v150 unsignedIntValue];

    v153 = v186;
    *v186 = v152;
    *(v153 + 4) = 0;
  }

  v154 = [v75 topMicFaultCountRight];
  if (v154)
  {
    v155 = v154;
    v156 = [v154 unsignedIntValue];

    v157 = v187;
    *v187 = v156;
    *(v157 + 4) = 0;
  }

  v158 = [v75 totalHarmonicDistortionFaultCountLeft];
  if (v158)
  {
    v159 = v158;
    v160 = [v158 unsignedIntValue];

    v161 = v188;
    *v188 = v160;
    *(v161 + 4) = 0;
  }

  v162 = [v75 totalHarmonicDistortionFaultCountRight];
  if (v162)
  {
    v163 = v162;
    v164 = [v162 unsignedIntValue];

    v165 = v189;
    *v189 = v164;
    *(v165 + 4) = 0;
  }

  v166 = v190;
  static Date.now.getter();
  (*(v113 + 32))(&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate], v166, v195);
  v167 = type metadata accessor for HMDeviceCloudRecord();
  v200.receiver = v2;
  v200.super_class = v167;
  v58 = objc_msgSendSuper2(&v200, "init");

  (*(v199 + 8))(v198, v201);
  return v58;
}

void *HMDeviceCloudRecord.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v147 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v142 = &v124 - v8;
  v9 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v143 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = &v124 - v13;
  __chkstk_darwin(v14);
  v146 = &v124 - v15;
  __chkstk_darwin(v16);
  v140 = &v124 - v17;
  __chkstk_darwin(v18);
  v139 = &v124 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v153 = v20;
  v154 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v155 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000EE870(&qword_1002F8A90, &qword_100228690);
  v156 = *(v24 - 8);
  v157 = v24;
  v25 = *(v156 + 64);
  v26 = __chkstk_darwin(v24);
  v161 = &v124 - v27;
  v28 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft];
  *v28 = 0;
  v152 = v28;
  v28[4] = 1;
  v29 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight];
  *v29 = 0;
  v151 = v29;
  v29[4] = 1;
  v30 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount];
  *v30 = 0;
  v150 = v30;
  v30[4] = 1;
  v31 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft];
  *v31 = 0;
  v149 = v31;
  v31[4] = 1;
  v32 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight];
  *v32 = 0;
  v129 = v32;
  v32[4] = 1;
  v33 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft];
  *v33 = 0;
  v130 = v33;
  v33[4] = 1;
  v34 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight];
  *v34 = 0;
  v131 = v34;
  v34[4] = 1;
  v35 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft];
  *v35 = 0;
  v132 = v35;
  v35[4] = 1;
  v36 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight];
  *v36 = 0;
  v133 = v36;
  v36[4] = 1;
  v145 = v4;
  v38 = *(v4 + 56);
  v37 = v4 + 56;
  v134 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  v38(&v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft], 1, 1, v3, v26);
  v135 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v148 = v3;
  v141 = v38;
  (v38)(&v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight], 1, 1, v3);
  v39 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft];
  *v39 = 0;
  v136 = v39;
  v39[4] = 1;
  v40 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight];
  *v40 = 0;
  v137 = v40;
  v40[4] = 1;
  v41 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft];
  *v41 = 0;
  v138 = v41;
  v41[4] = 1;
  v42 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight];
  *v42 = 0;
  v42[4] = 1;
  v43 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft];
  *v43 = 0;
  v43[4] = 1;
  v44 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight];
  *v44 = 0;
  v44[4] = 1;
  v45 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft];
  *v45 = 0;
  v45[4] = 1;
  v46 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
  *v46 = 0;
  v46[4] = 1;
  v47 = a1;
  v48 = a1[3];
  v49 = v47[4];
  v159 = v47;
  v160 = v1;
  sub_1000EF78C(v47, v48);
  sub_10013257C();
  v50 = v158;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v50)
  {
    v52 = v160;
    sub_1000EF824(v159);
    sub_1000EEE6C(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft, &qword_1002F7EF0, &unk_100226C90);
    sub_1000EEE6C(v52 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight, &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for HMDeviceCloudRecord();
    v53 = *((swift_isaMask & *v52) + 0x30);
    v54 = *((swift_isaMask & *v52) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v51 = v155;
    v124 = v42;
    v125 = v43;
    v126 = v44;
    v127 = v45;
    v128 = v46;
    v158 = v37;
    v164 = 0;
    sub_1000EF8C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v56 = v160;
    *(v160 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata) = v163;
    LOBYTE(v163) = 1;
    sub_10013353C(&unk_1002F8750, &type metadata accessor for UUID);
    v57 = v153;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v154 + 32))(v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier, v51, v57);
    LOBYTE(v163) = 2;
    v58 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = (v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
    *v60 = v58;
    v60[1] = v59;
    LOBYTE(v163) = 3;
    *(v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v163) = 4;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v61 & 0x100) != 0)
    {
      if (qword_1002F7A28 != -1)
      {
        swift_once();
      }

      LOBYTE(v61) = byte_1002F8A61;
    }

    *(v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) = v61;
    LOBYTE(v163) = 5;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v62 & 0x100) != 0)
    {
      if (qword_1002F7A30 != -1)
      {
        swift_once();
      }

      LOBYTE(v62) = byte_1002F8A62;
    }

    *(v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) = v62;
    LOBYTE(v163) = 6;
    *(v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v163) = 7;
    *(v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v163) = 8;
    *(v56 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v163) = 9;
    *(v160 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v163) = 10;
    *(v160 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v163) = 11;
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v152;
    *v152 = v63;
    *(v64 + 4) = BYTE4(v63) & 1;
    LOBYTE(v163) = 12;
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v151;
    *v151 = v65;
    *(v66 + 4) = BYTE4(v65) & 1;
    LOBYTE(v163) = 13;
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v68 = v150;
    *v150 = v67;
    *(v68 + 4) = BYTE4(v67) & 1;
    LOBYTE(v163) = 14;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v149;
    *v149 = v69;
    *(v70 + 4) = BYTE4(v69) & 1;
    LOBYTE(v163) = 15;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = v129;
    *v129 = v71;
    *(v72 + 4) = BYTE4(v71) & 1;
    LOBYTE(v163) = 16;
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v74 = v130;
    *v130 = v73;
    *(v74 + 4) = BYTE4(v73) & 1;
    LOBYTE(v163) = 17;
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v76 = v131;
    *v131 = v75;
    *(v76 + 4) = BYTE4(v75) & 1;
    LOBYTE(v163) = 18;
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v78 = v132;
    *v132 = v77;
    *(v78 + 4) = BYTE4(v77) & 1;
    LOBYTE(v163) = 19;
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v80 = v133;
    *v133 = v79;
    *(v80 + 4) = BYTE4(v79) & 1;
    LOBYTE(v163) = 20;
    sub_10013353C(&qword_1002F7D90, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v81 = v160;
    v82 = v134;
    swift_beginAccess();
    sub_10013261C(v139, v81 + v82);
    swift_endAccess();
    LOBYTE(v163) = 21;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v83 = v160;
    v84 = v135;
    swift_beginAccess();
    sub_10013261C(v140, v83 + v84);
    swift_endAccess();
    LOBYTE(v163) = 22;
    v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v86 = v136;
    *v136 = v85;
    *(v86 + 4) = BYTE4(v85) & 1;
    LOBYTE(v163) = 23;
    v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v137;
    *v137 = v87;
    *(v88 + 4) = BYTE4(v87) & 1;
    LOBYTE(v163) = 24;
    v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v90 = v138;
    *v138 = v89;
    *(v90 + 4) = BYTE4(v89) & 1;
    LOBYTE(v163) = 25;
    v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v124;
    *v124 = v91;
    *(v92 + 4) = BYTE4(v91) & 1;
    LOBYTE(v163) = 26;
    v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v94 = v125;
    *v125 = v93;
    *(v94 + 4) = BYTE4(v93) & 1;
    LOBYTE(v163) = 27;
    v95 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v96 = v126;
    *v126 = v95;
    *(v96 + 4) = BYTE4(v95) & 1;
    LOBYTE(v163) = 28;
    v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v98 = v127;
    *v127 = v97;
    *(v98 + 4) = BYTE4(v97) & 1;
    LOBYTE(v163) = 29;
    v99 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v100 = v128;
    *v128 = v99;
    *(v100 + 4) = BYTE4(v99) & 1;
    v101 = v142;
    static Date.now.getter();
    v102 = v160;
    v103 = *(v145 + 32);
    v103(v160 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate, v101, v148);
    v104 = type metadata accessor for HMDeviceCloudRecord();
    v162.receiver = v102;
    v162.super_class = v104;
    v52 = objc_msgSendSuper2(&v162, "init");
    LOBYTE(v163) = 30;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v160 = *(v145 + 48);
    if ((v160)(v146, 1, v148) == 1)
    {
      v105 = v52;
      v155 = objc_autoreleasePoolPush();
      v106 = v105 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata;
      isa = sub_100169D38(*(v105 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata), *(v105 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8));
      if (!isa)
      {
        isa = sub_1000F8660().super.isa;
      }

      v108 = isa;
      *&v163 = isa;
      sub_10012F138(&v163);
      objc_autoreleasePoolPop(v155);
      v109 = [v108 modificationDate];

      if (v109)
      {
        v110 = v142;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v156 + 8))(v161, v157);
        v111 = v144;
        v112 = v148;
        v103(v144, v110, v148);
        (v141)(v111, 0, 1, v112);
        v103(v147, v111, v112);
      }

      else
      {
        (v141)(v144, 1, 1, v148);
        v155 = objc_autoreleasePoolPush();
        v115 = sub_100169D38(*v106, *(v106 + 1));
        if (!v115)
        {
          v115 = sub_1000F8660().super.isa;
        }

        v116 = v115;
        *&v163 = v115;
        sub_10012F138(&v163);
        objc_autoreleasePoolPop(v155);
        v117 = [v116 creationDate];

        if (v117)
        {
          v118 = v142;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v156 + 8))(v161, v157);
          v119 = v143;
          v120 = v148;
          v103(v143, v118, v148);
          (v141)(v119, 0, 1, v120);
          v103(v147, v119, v120);
        }

        else
        {
          v121 = v143;
          v122 = v148;
          (v141)(v143, 1, 1, v148);
          static Date.now.getter();
          (*(v156 + 8))(v161, v157);
          if ((v160)(v121, 1, v122) != 1)
          {
            sub_1000EEE6C(v143, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        if ((v160)(v144, 1, v148) != 1)
        {
          sub_1000EEE6C(v144, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if ((v160)(v146, 1, v148) != 1)
      {
        sub_1000EEE6C(v146, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      v113 = *(v156 + 8);
      v114 = v52;
      v113(v161, v157);
      v103(v147, v146, v148);
    }

    v123 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
    swift_beginAccess();
    (*(v145 + 40))(v52 + v123, v147, v148);
    swift_endAccess();
    sub_1000EF824(v159);
  }

  return v52;
}

unint64_t sub_10012DF90(char a1)
{
  result = 0x74654D64756F6C63;
  switch(a1)
  {
    case 1:
      return 0x696669746E656469;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x6E6F696765526168;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0x6E6F696765527068;
    case 7:
      return 0xD000000000000012;
    case 8:
      return 0x616964654D656D70;
    case 9:
      return 0x6563696F56656D70;
    case 10:
      return 0xD000000000000010;
    case 11:
    case 16:
    case 19:
    case 23:
      return 0xD000000000000017;
    case 12:
    case 17:
      return 0xD000000000000018;
    case 13:
    case 15:
      v3 = 11;
      goto LABEL_15;
    case 14:
      v3 = 10;
      goto LABEL_15;
    case 18:
    case 22:
    case 25:
      return 0xD000000000000016;
    case 20:
      v3 = 13;
      goto LABEL_15;
    case 21:
      return 0xD00000000000001ELL;
    case 24:
    case 27:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0xD000000000000025;
      break;
    case 29:
      result = 0xD000000000000026;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10012E2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100132B88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012E2E8(uint64_t a1)
{
  v2 = sub_10013257C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012E324(uint64_t a1)
{
  v2 = sub_10013257C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id HMDeviceCloudRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDeviceCloudRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HMDeviceCloudRecord.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  v14 = sub_1000EE870(&unk_1002F8AA8, &qword_100228698);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v76 - v17;
  v19 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_10013257C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v80 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8);
  v85 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata);
  v86 = v20;
  v84 = 0;
  sub_1000EE9F4(v85, v20);
  sub_1000EF9D8();
  v82 = v14;
  v21 = v81;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v21)
  {
    sub_1000EF870(v85, v86);
    return (*(v15 + 8))(v18, v82);
  }

  else
  {
    v76 = v13;
    v81 = v10;
    v23 = v78;
    v24 = v79;
    sub_1000EF870(v85, v86);
    LOBYTE(v85) = 1;
    type metadata accessor for UUID();
    sub_10013353C(&qword_1002F8340, &type metadata accessor for UUID);
    v25 = v80;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
    v27 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8);
    LOBYTE(v85) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus);
    LOBYTE(v85) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2);
    LOBYTE(v85) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus);
    LOBYTE(v85) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus);
    LOBYTE(v85) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled);
    LOBYTE(v85) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled);
    LOBYTE(v85) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled);
    LOBYTE(v85) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled);
    LOBYTE(v85) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft);
    v37 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4);
    LOBYTE(v85) = 11;
    v84 = v37;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight);
    v39 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4);
    LOBYTE(v85) = 12;
    v84 = v39;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount);
    v41 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4);
    LOBYTE(v85) = 13;
    v84 = v41;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft);
    v43 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4);
    LOBYTE(v85) = 14;
    v84 = v43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight);
    v45 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4);
    LOBYTE(v85) = 15;
    v84 = v45;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft);
    v47 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4);
    LOBYTE(v85) = 16;
    v84 = v47;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight);
    v49 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4);
    LOBYTE(v85) = 17;
    v84 = v49;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft);
    v51 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4);
    LOBYTE(v85) = 18;
    v84 = v51;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v52 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight);
    v53 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4);
    LOBYTE(v85) = 19;
    v84 = v53;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v54 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
    v55 = v80;
    swift_beginAccess();
    sub_10013250C(v55 + v54, v76);
    v84 = 20;
    sub_10013353C(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000EEE6C(v76, &qword_1002F7EF0, &unk_100226C90);
    v56 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
    v57 = v80;
    swift_beginAccess();
    sub_10013250C(v57 + v56, v81);
    v83 = 21;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000EEE6C(v81, &qword_1002F7EF0, &unk_100226C90);
    v58 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft);
    v59 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4);
    v83 = 22;
    v87 = v59;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v60 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight);
    v61 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4);
    v83 = 23;
    v87 = v61;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v62 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft);
    v63 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4);
    v83 = 24;
    v87 = v63;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v64 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight);
    v65 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4);
    v83 = 25;
    v87 = v65;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v66 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft);
    v67 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4);
    v83 = 26;
    v87 = v67;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v68 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight);
    v69 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4);
    v83 = 27;
    v87 = v69;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v70 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft);
    v71 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4);
    v83 = 28;
    v87 = v71;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v72 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight);
    v73 = *(v80 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4);
    v83 = 29;
    v87 = v73;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v74 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
    v75 = v80;
    swift_beginAccess();
    (*(v23 + 16))(v77, v75 + v74, v24);
    v87 = 30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v77, v24);
    return (*(v15 + 8))(0, v82);
  }
}

uint64_t sub_10012F044()
{
  v1 = *v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata;
  v2 = *v1;
  sub_1000EE9F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10012F088@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_10012F138(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v116 = v4;
  v117 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v106 = &v103[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  v8 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v112 = &v103[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v111 = &v103[-v11];
  v12 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v109 = &v103[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v110 = &v103[-v16];
  __chkstk_darwin(v17);
  v114 = &v103[-v18];
  __chkstk_darwin(v19);
  v108 = &v103[-v20];
  __chkstk_darwin(v21);
  v105 = &v103[-v22];
  __chkstk_darwin(v23);
  v113 = &v103[-v24];
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100226100;
  v26 = *a1;
  v27 = [v26 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000EE954();
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  os_log(_:dso:log:_:_:)();

  [v26 encryptedValues];
  swift_getObjectType();
  v118 = 0xD000000000000010;
  CKRecordKeyValueSetting.subscript.getter();
  v32 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
  v31 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8);
  if (!*(&v119 + 1))
  {
    goto LABEL_7;
  }

  if (v119 != __PAIR128__(v31, v32))
  {
    v33 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
    v34 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8);
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(&v120 + 1) = &type metadata for String;
    v121 = &protocol witness table for String;
    *&v119 = v32;
    *(&v119 + 1) = v31;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

LABEL_8:
  CKRecordKeyValueSetting.subscript.getter();
  v36 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus);
  if ((BYTE1(v119) & 1) != 0 || v119 != v36)
  {
    *(&v120 + 1) = &type metadata for UInt8;
    v121 = &protocol witness table for UInt8;
    LOBYTE(v119) = v36;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v37 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2);
  if ((BYTE1(v119) & 1) != 0 || v119 != v37)
  {
    *(&v120 + 1) = &type metadata for UInt8;
    v121 = &protocol witness table for UInt8;
    LOBYTE(v119) = v37;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v38 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus);
  if ((BYTE1(v119) & 1) != 0 || v119 != v38)
  {
    *(&v120 + 1) = &type metadata for UInt8;
    v121 = &protocol witness table for UInt8;
    LOBYTE(v119) = v38;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v39 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus);
  if ((BYTE1(v119) & 1) != 0 || v119 != v39)
  {
    *(&v120 + 1) = &type metadata for UInt8;
    v121 = &protocol witness table for UInt8;
    LOBYTE(v119) = v39;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v40 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled);
  if ((BYTE1(v119) & 1) != 0 || v119 != v40)
  {
    *(&v120 + 1) = &type metadata for Int8;
    v121 = &protocol witness table for Int8;
    LOBYTE(v119) = v40;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v41 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled);
  if ((BYTE1(v119) & 1) != 0 || v119 != v41)
  {
    *(&v120 + 1) = &type metadata for Int8;
    v121 = &protocol witness table for Int8;
    LOBYTE(v119) = v41;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v42 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled);
  if ((BYTE1(v119) & 1) != 0 || v119 != v42)
  {
    *(&v120 + 1) = &type metadata for Int8;
    v121 = &protocol witness table for Int8;
    LOBYTE(v119) = v42;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v43 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled);
  if ((BYTE1(v119) & 1) != 0 || v119 != v43)
  {
    *(&v120 + 1) = &type metadata for Int8;
    v121 = &protocol witness table for Int8;
    LOBYTE(v119) = v43;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v44 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft);
  v45 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    v46 = v113;
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_39:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_40;
    }

    if (v119 == v44)
    {
      goto LABEL_40;
    }

LABEL_38:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v44;
    goto LABEL_39;
  }

  v46 = v113;
  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_40:
  CKRecordKeyValueSetting.subscript.getter();
  v47 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight);
  v48 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_47:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_48;
    }

    if (v119 == v47)
    {
      goto LABEL_48;
    }

LABEL_46:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v47;
    goto LABEL_47;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_48:
  CKRecordKeyValueSetting.subscript.getter();
  v49 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount);
  v50 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_55:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_56;
    }

    if (v119 == v49)
    {
      goto LABEL_56;
    }

LABEL_54:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v49;
    goto LABEL_55;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_56:
  CKRecordKeyValueSetting.subscript.getter();
  v51 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft);
  v52 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_63:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_64;
    }

    if (v119 == v51)
    {
      goto LABEL_64;
    }

LABEL_62:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v51;
    goto LABEL_63;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  CKRecordKeyValueSetting.subscript.getter();
  v53 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight);
  v54 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_71:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_72;
    }

    if (v119 == v53)
    {
      goto LABEL_72;
    }

LABEL_70:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v53;
    goto LABEL_71;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_72:
  CKRecordKeyValueSetting.subscript.getter();
  v55 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft);
  v56 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_79:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_80;
    }

    if (v119 == v55)
    {
      goto LABEL_80;
    }

LABEL_78:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v55;
    goto LABEL_79;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_80:
  CKRecordKeyValueSetting.subscript.getter();
  v57 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight);
  v58 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_87:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_88;
    }

    if (v119 == v57)
    {
      goto LABEL_88;
    }

LABEL_86:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v57;
    goto LABEL_87;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_88:
  v118 = 0xD000000000000016;
  CKRecordKeyValueSetting.subscript.getter();
  v59 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft);
  v60 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_95:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_96;
    }

    if (v119 == v59)
    {
      goto LABEL_96;
    }

LABEL_94:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v59;
    goto LABEL_95;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_96:
  CKRecordKeyValueSetting.subscript.getter();
  v61 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight);
  v62 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_103:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_104;
    }

    if (v119 == v61)
    {
      goto LABEL_104;
    }

LABEL_102:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v61;
    goto LABEL_103;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_104:
  v107 = "innerMicFaultCountRight";
  v63 = v116;
  CKRecordKeyValueSetting.subscript.getter();
  v64 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  swift_beginAccess();
  v65 = *(v115 + 48);
  v66 = v111;
  sub_10013250C(v46, v111);
  sub_10013250C(v2 + v64, &v66[v65]);
  v67 = *(v117 + 48);
  if (v67(v66, 1, v63) == 1)
  {
    sub_1000EEE6C(v46, &qword_1002F7EF0, &unk_100226C90);
    v68 = v67(&v66[v65], 1, v63);
    v69 = v114;
    if (v68 == 1)
    {
      sub_1000EEE6C(v66, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_114;
    }
  }

  else
  {
    v70 = v105;
    sub_10013250C(v66, v105);
    if (v67(&v66[v65], 1, v63) != 1)
    {
      v81 = &v66[v65];
      v82 = v106;
      (*(v117 + 32))(v106, v81, v63);
      sub_10013353C(&unk_1002F9600, &type metadata accessor for Date);
      v104 = dispatch thunk of static Equatable.== infix(_:_:)();
      v83 = *(v117 + 8);
      v83(v82, v116);
      sub_1000EEE6C(v113, &qword_1002F7EF0, &unk_100226C90);
      v83(v70, v116);
      v63 = v116;
      sub_1000EEE6C(v111, &qword_1002F7EF0, &unk_100226C90);
      v69 = v114;
      if (v104)
      {
        goto LABEL_114;
      }

      goto LABEL_110;
    }

    sub_1000EEE6C(v113, &qword_1002F7EF0, &unk_100226C90);
    (*(v117 + 8))(v70, v63);
    v69 = v114;
  }

  sub_1000EEE6C(v66, &qword_1002F8B30, &unk_1002288C0);
LABEL_110:
  v71 = v108;
  sub_10013250C(v2 + v64, v108);
  if (v67(v71, 1, v63) == 1)
  {
    sub_1000EEE6C(v71, &qword_1002F7EF0, &unk_100226C90);
    v119 = 0u;
    v120 = 0u;
    v121 = 0;
  }

  else
  {
    *(&v120 + 1) = v63;
    v121 = &protocol witness table for Date;
    v72 = sub_100133584(&v119);
    (*(v117 + 32))(v72, v71, v63);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_114:
  v113 = "latestDiagnosticTimestampLeft";
  CKRecordKeyValueSetting.subscript.getter();
  v73 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  swift_beginAccess();
  v74 = *(v115 + 48);
  v75 = v112;
  sub_10013250C(v69, v112);
  sub_10013250C(v2 + v73, &v75[v74]);
  if (v67(v75, 1, v63) == 1)
  {
    sub_1000EEE6C(v69, &qword_1002F7EF0, &unk_100226C90);
    if (v67(&v75[v74], 1, v63) == 1)
    {
      sub_1000EEE6C(v75, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_124;
    }
  }

  else
  {
    v76 = v110;
    sub_10013250C(v75, v110);
    if (v67(&v75[v74], 1, v63) != 1)
    {
      v84 = v75;
      v85 = v117;
      v86 = v106;
      (*(v117 + 32))(v106, &v84[v74], v63);
      sub_10013353C(&unk_1002F9600, &type metadata accessor for Date);
      LODWORD(v115) = dispatch thunk of static Equatable.== infix(_:_:)();
      v87 = *(v85 + 8);
      v87(v86, v116);
      sub_1000EEE6C(v114, &qword_1002F7EF0, &unk_100226C90);
      v87(v110, v116);
      v63 = v116;
      sub_1000EEE6C(v112, &qword_1002F7EF0, &unk_100226C90);
      if (v115)
      {
        goto LABEL_124;
      }

      goto LABEL_120;
    }

    sub_1000EEE6C(v114, &qword_1002F7EF0, &unk_100226C90);
    (*(v117 + 8))(v76, v63);
  }

  sub_1000EEE6C(v75, &qword_1002F8B30, &unk_1002288C0);
LABEL_120:
  v77 = v109;
  sub_10013250C(v2 + v73, v109);
  if (v67(v77, 1, v63) == 1)
  {
    sub_1000EEE6C(v77, &qword_1002F7EF0, &unk_100226C90);
    v119 = 0u;
    v120 = 0u;
    v121 = 0;
  }

  else
  {
    *(&v120 + 1) = v63;
    v121 = &protocol witness table for Date;
    v78 = sub_100133584(&v119);
    (*(v117 + 32))(v78, v77, v63);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_124:
  CKRecordKeyValueSetting.subscript.getter();
  v79 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft);
  v80 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_135:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_136;
    }

    if (v119 == v79)
    {
      goto LABEL_136;
    }

LABEL_134:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v79;
    goto LABEL_135;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_134;
  }

LABEL_136:
  CKRecordKeyValueSetting.subscript.getter();
  v88 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight);
  v89 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_143:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_144;
    }

    if (v119 == v88)
    {
      goto LABEL_144;
    }

LABEL_142:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v88;
    goto LABEL_143;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_144:
  CKRecordKeyValueSetting.subscript.getter();
  v90 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft);
  v91 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_151:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_152;
    }

    if (v119 == v90)
    {
      goto LABEL_152;
    }

LABEL_150:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v90;
    goto LABEL_151;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_150;
  }

LABEL_152:
  CKRecordKeyValueSetting.subscript.getter();
  v92 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight);
  v93 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_159:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_160;
    }

    if (v119 == v92)
    {
      goto LABEL_160;
    }

LABEL_158:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v92;
    goto LABEL_159;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_158;
  }

LABEL_160:
  CKRecordKeyValueSetting.subscript.getter();
  v94 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft);
  v95 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_167:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_168;
    }

    if (v119 == v94)
    {
      goto LABEL_168;
    }

LABEL_166:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v94;
    goto LABEL_167;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_166;
  }

LABEL_168:
  CKRecordKeyValueSetting.subscript.getter();
  v96 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight);
  v97 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_175:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_176;
    }

    if (v119 == v96)
    {
      goto LABEL_176;
    }

LABEL_174:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v96;
    goto LABEL_175;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_174;
  }

LABEL_176:
  CKRecordKeyValueSetting.subscript.getter();
  v98 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft);
  v99 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4);
  if ((BYTE4(v119) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
LABEL_183:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_184;
    }

    if (v119 == v98)
    {
      goto LABEL_184;
    }

LABEL_182:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v98;
    goto LABEL_183;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_182;
  }

LABEL_184:
  CKRecordKeyValueSetting.subscript.getter();
  v100 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight);
  v101 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4);
  if (BYTE4(v119))
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4))
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_190;
  }

  if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4))
  {
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
LABEL_191:
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v119 != v100)
  {
LABEL_190:
    *(&v120 + 1) = &type metadata for UInt32;
    v121 = &protocol witness table for UInt32;
    LODWORD(v119) = v100;
    goto LABEL_191;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001309C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_100130A3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord());
  result = HMDeviceCloudRecord.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100130AB8(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v110 = v4;
  v111 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v102[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v108 = &v102[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v102[-v13];
  v15 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v106 = &v102[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v112 = &v102[-v19];
  __chkstk_darwin(v20);
  v22 = &v102[-v21];
  __chkstk_darwin(v23);
  v25 = &v102[-v24];
  __chkstk_darwin(v26);
  v28 = &v102[-v27];
  if (sub_1001319F8(a1))
  {
    v105 = v22;
    v29 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus];
    if (qword_1002F7A20 != -1)
    {
      swift_once();
    }

    if (v29 != byte_1002F8A60 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) != v29)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) = v29;
    }

    v30 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2];
    if (qword_1002F7A28 != -1)
    {
      swift_once();
    }

    if (v30 != byte_1002F8A61 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) != v30)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) = v30;
    }

    v31 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus];
    if (qword_1002F7A30 != -1)
    {
      swift_once();
    }

    if (v31 != byte_1002F8A62 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) != v31)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) = v31;
    }

    v32 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus];
    if (qword_1002F7A38 != -1)
    {
      swift_once();
    }

    if (v32 != byte_1002F8A63 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) != v32)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) = v32;
    }

    v33 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled];
    if (qword_1002F7A40 != -1)
    {
      swift_once();
    }

    if (v33 != byte_1002F8A64 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) != v33)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) = v33;
    }

    v34 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled];
    if (qword_1002F7A48 != -1)
    {
      swift_once();
    }

    if (v34 != byte_1002F8A65 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) != v34)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) = v34;
    }

    v35 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled];
    if (qword_1002F7A50 != -1)
    {
      swift_once();
    }

    if (v35 != byte_1002F8A66 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) != v35)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) = v35;
    }

    v36 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled];
    if (qword_1002F7A58 != -1)
    {
      swift_once();
    }

    if (v36 != byte_1002F8A67 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) != v36)
    {
      *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) = v36;
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4] & 1) == 0)
    {
      v37 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft];
      v38 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) != 0 || *v38 != v37)
      {
        *v38 = v37;
        *(v38 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4] & 1) == 0)
    {
      v39 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight];
      v40 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) != 0 || *v40 != v39)
      {
        *v40 = v39;
        *(v40 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4] & 1) == 0)
    {
      v41 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount];
      v42 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) != 0 || *v42 != v41)
      {
        *v42 = v41;
        *(v42 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4] & 1) == 0)
    {
      v43 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft];
      v44 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) != 0 || *v44 != v43)
      {
        *v44 = v43;
        *(v44 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4] & 1) == 0)
    {
      v45 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight];
      v46 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) != 0 || *v46 != v45)
      {
        *v46 = v45;
        *(v46 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4] & 1) == 0)
    {
      v47 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft];
      v48 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) != 0 || *v48 != v47)
      {
        *v48 = v47;
        *(v48 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4] & 1) == 0)
    {
      v49 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight];
      v50 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) != 0 || *v50 != v49)
      {
        *v50 = v49;
        *(v50 + 4) = 0;
      }
    }

    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4] & 1) == 0)
    {
      v51 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft];
      v52 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) != 0 || *v52 != v51)
      {
        *v52 = v51;
        *(v52 + 4) = 0;
      }
    }

    v107 = v8;
    if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4] & 1) == 0)
    {
      v53 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight];
      v54 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight;
      if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) != 0 || *v54 != v53)
      {
        *v54 = v53;
        *(v54 + 4) = 0;
      }
    }

    v55 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
    swift_beginAccess();
    sub_10013250C(&a1[v55], v28);
    v56 = v110;
    v57 = *(v111 + 48);
    v109 = v28;
    if (v57() != 1)
    {
      v58 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
      swift_beginAccess();
      v59 = *(v9 + 48);
      sub_10013250C(v2 + v58, v14);
      sub_10013250C(v109, &v14[v59]);
      if ((v57)(v14, 1, v56) == 1)
      {
        if ((v57)(&v14[v59], 1, v56) == 1)
        {
          sub_1000EEE6C(v14, &qword_1002F7EF0, &unk_100226C90);
          v56 = v110;
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      sub_10013250C(v14, v25);
      if ((v57)(&v14[v59], 1, v56) == 1)
      {
        (*(v111 + 8))(v25, v56);
LABEL_89:
        sub_1000EEE6C(v14, &qword_1002F8B30, &unk_1002288C0);
        v56 = v110;
LABEL_90:
        v67 = v105;
        sub_10013250C(v109, v105);
        swift_beginAccess();
        sub_10013261C(v67, v2 + v58);
        swift_endAccess();
        goto LABEL_91;
      }

      v104 = v9;
      v96 = v111;
      (*(v111 + 32))(v107, &v14[v59], v56);
      sub_10013353C(&unk_1002F9600, &type metadata accessor for Date);
      v103 = dispatch thunk of static Equatable.== infix(_:_:)();
      v97 = *(v96 + 8);
      v97(v107, v56);
      v97(v25, v56);
      v9 = v104;
      sub_1000EEE6C(v14, &qword_1002F7EF0, &unk_100226C90);
      if ((v103 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

LABEL_91:
    v68 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
    swift_beginAccess();
    v69 = v112;
    sub_10013250C(&a1[v68], v112);
    v70 = (v57)(v69, 1, v56);
    v71 = v56;
    if (v70 == 1)
    {
      goto LABEL_99;
    }

    v72 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
    swift_beginAccess();
    v73 = *(v9 + 48);
    v74 = v108;
    sub_10013250C(v2 + v72, v108);
    sub_10013250C(v112, &v74[v73]);
    if ((v57)(v74, 1, v71) == 1)
    {
      if ((v57)(&v74[v73], 1, v71) == 1)
      {
        sub_1000EEE6C(v74, &qword_1002F7EF0, &unk_100226C90);
        goto LABEL_99;
      }
    }

    else
    {
      v75 = v106;
      sub_10013250C(v74, v106);
      if ((v57)(&v74[v73], 1, v71) != 1)
      {
        v98 = v111;
        v99 = v107;
        (*(v111 + 32))(v107, &v74[v73], v71);
        sub_10013353C(&unk_1002F9600, &type metadata accessor for Date);
        v100 = dispatch thunk of static Equatable.== infix(_:_:)();
        v101 = *(v98 + 8);
        v101(v99, v71);
        v101(v75, v71);
        sub_1000EEE6C(v74, &qword_1002F7EF0, &unk_100226C90);
        if (v100)
        {
LABEL_99:
          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4] & 1) == 0)
          {
            v77 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft];
            v78 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) != 0 || *v78 != v77)
            {
              *v78 = v77;
              *(v78 + 4) = 0;
            }
          }

          v79 = v109;
          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4] & 1) == 0)
          {
            v80 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight];
            v81 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) != 0 || *v81 != v80)
            {
              *v81 = v80;
              *(v81 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4] & 1) == 0)
          {
            v82 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft];
            v83 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) != 0 || *v83 != v82)
            {
              *v83 = v82;
              *(v83 + 4) = 0;
            }
          }

          v84 = v107;
          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4] & 1) == 0)
          {
            v85 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight];
            v86 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) != 0 || *v86 != v85)
            {
              *v86 = v85;
              *(v86 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4] & 1) == 0)
          {
            v87 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft];
            v88 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) != 0 || *v88 != v87)
            {
              *v88 = v87;
              *(v88 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4] & 1) == 0)
          {
            v89 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight];
            v90 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) != 0 || *v90 != v89)
            {
              *v90 = v89;
              *(v90 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4] & 1) == 0)
          {
            v91 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft];
            v92 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) != 0 || *v92 != v91)
            {
              *v92 = v91;
              *(v92 + 4) = 0;
            }
          }

          if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4] & 1) == 0)
          {
            v93 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
            v94 = v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight;
            if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4) & 1) != 0 || *v94 != v93)
            {
              *v94 = v93;
              *(v94 + 4) = 0;
            }
          }

          static Date.now.getter();
          v95 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
          swift_beginAccess();
          (*(v111 + 40))(v2 + v95, v84, v71);
          swift_endAccess();
          sub_1000EEE6C(v112, &qword_1002F7EF0, &unk_100226C90);
          return sub_1000EEE6C(v79, &qword_1002F7EF0, &unk_100226C90);
        }

LABEL_98:
        v76 = v105;
        sub_10013250C(v112, v105);
        swift_beginAccess();
        sub_10013261C(v76, v2 + v72);
        swift_endAccess();
        goto LABEL_99;
      }

      (*(v111 + 8))(v75, v71);
    }

    sub_1000EEE6C(v74, &qword_1002F8B30, &unk_1002288C0);
    goto LABEL_98;
  }

  static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100226100;
  v61 = a1;
  v62 = [v61 description];
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  *(v60 + 56) = &type metadata for String;
  *(v60 + 64) = sub_1000EE954();
  *(v60 + 32) = v63;
  *(v60 + 40) = v65;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1001319F8(_BYTE *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v24 = &v48 - v23;
  if (!a1)
  {
    return 0;
  }

  if (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) || a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight)))
  {
    return 1;
  }

  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft)))
  {
    return 1;
  }

  v25 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4];
  v56 = v21;
  if ((v25 & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight)))
  {
    return 1;
  }

  v51 = v20;
  v52 = v22;
  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4] & 1) == 0 && ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft] != *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft)))
  {
    return 1;
  }

  v55 = v1;
  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight)))
  {
    return 1;
  }

  v26 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  swift_beginAccess();
  sub_10013250C(&a1[v26], v24);
  v53 = *(v4 + 48);
  v54 = v4 + 48;
  if (v53(v24, 1, v3) == 1)
  {
    v27 = a1;
    goto LABEL_21;
  }

  v50 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  v35 = v55;
  swift_beginAccess();
  v36 = *(v8 + 48);
  sub_10013250C(v24, v14);
  sub_10013250C(v35 + v50, &v14[v36]);
  if (v53(v14, 1, v3) == 1)
  {
    if (v53(&v14[v36], 1, v3) == 1)
    {
      v37 = a1;
      sub_1000EEE6C(v14, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_21;
    }

LABEL_67:
    v41 = &qword_1002F8B30;
    v42 = &unk_1002288C0;
    v43 = v14;
LABEL_98:
    sub_1000EEE6C(v43, v41, v42);
    goto LABEL_99;
  }

  sub_10013250C(v14, v52);
  if (v53(&v14[v36], 1, v3) == 1)
  {
    (*(v4 + 8))(v52, v3);
    goto LABEL_67;
  }

  (*(v4 + 32))(v7, &v14[v36], v3);
  sub_10013353C(&unk_1002F9600, &type metadata accessor for Date);
  v49 = a1;
  LODWORD(v50) = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v4 + 8);
  v44(v7, v3);
  v44(v52, v3);
  sub_1000EEE6C(v14, &qword_1002F7EF0, &unk_100226C90);
  if ((v50 & 1) == 0)
  {

LABEL_99:
    v33 = 1;
    goto LABEL_100;
  }

LABEL_21:
  v28 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  swift_beginAccess();
  v29 = &a1[v28];
  v30 = v56;
  sub_10013250C(v29, v56);
  if (v53(v30, 1, v3) == 1)
  {
    goto LABEL_22;
  }

  v38 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v39 = v55;
  swift_beginAccess();
  v40 = *(v8 + 48);
  sub_10013250C(v56, v11);
  sub_10013250C(v39 + v38, &v11[v40]);
  if (v53(v11, 1, v3) == 1)
  {
    if (v53(&v11[v40], 1, v3) == 1)
    {
      sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_22;
    }

LABEL_82:
    sub_1000EEE6C(v11, &qword_1002F8B30, &unk_1002288C0);
LABEL_97:
    v41 = &qword_1002F7EF0;
    v42 = &unk_100226C90;
    v43 = v56;
    goto LABEL_98;
  }

  sub_10013250C(v11, v51);
  if (v53(&v11[v40], 1, v3) == 1)
  {

    (*(v4 + 8))(v51, v3);
    goto LABEL_82;
  }

  (*(v4 + 32))(v7, &v11[v40], v3);
  sub_10013353C(&unk_1002F9600, &type metadata accessor for Date);
  v45 = v51;
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v4 + 8);
  v47(v7, v3);
  v47(v45, v3);
  sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
  if ((v46 & 1) == 0)
  {
LABEL_96:

    goto LABEL_97;
  }

LABEL_22:
  if ((a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight)) || (a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4] & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) != 0 || *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft] != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft)))
  {
    goto LABEL_96;
  }

  v31 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
  v32 = a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4];

  if ((v32 & 1) == 0 && ((*(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4) & 1) != 0 || v31 != *(v55 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight)))
  {
    goto LABEL_97;
  }

  sub_1000EEE6C(v56, &qword_1002F7EF0, &unk_100226C90);
  v33 = 0;
LABEL_100:
  sub_1000EEE6C(v24, &qword_1002F7EF0, &unk_100226C90);
  return v33;
}

uint64_t sub_10013250C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10013257C()
{
  result = qword_1002F8A98;
  if (!qword_1002F8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8A98);
  }

  return result;
}

uint64_t type metadata accessor for HMDeviceCloudRecord()
{
  result = qword_1002F8AF8;
  if (!qword_1002F8AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013261C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013268C(uint64_t a1)
{
  result = sub_10013353C(&qword_1002F8AB8, type metadata accessor for HMDeviceCloudRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001326E4(uint64_t a1)
{
  *(a1 + 8) = sub_10013353C(&unk_1002F8AC0, type metadata accessor for HMDeviceCloudRecord);
  result = sub_10013353C(&unk_1002F9DF0, type metadata accessor for HMDeviceCloudRecord);
  *(a1 + 16) = result;
  return result;
}

void sub_100132770()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001328D8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Date();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001328D8()
{
  if (!qword_1002F95E0)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002F95E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for HMDeviceCloudRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HMDeviceCloudRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100132A84()
{
  result = qword_1002F8B10;
  if (!qword_1002F8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8B10);
  }

  return result;
}

unint64_t sub_100132ADC()
{
  result = qword_1002F8B18;
  if (!qword_1002F8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8B18);
  }

  return result;
}

unint64_t sub_100132B34()
{
  result = qword_1002F8B20;
  if (!qword_1002F8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8B20);
  }

  return result;
}

uint64_t sub_100132B88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F696765526168 && a2 == 0xEE00737574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010026A150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010026A170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F696765527068 && a2 == 0xEE00737574617453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010026A1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x616964654D656D70 && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6563696F56656D70 && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010026A1E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010026A220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010026A240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026A260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010026A280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010026A2C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010026A2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010026A320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000010026A340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010026A360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026A380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010026A3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010026A3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010026A3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010026A400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000025 && 0x800000010026A420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000026 && 0x800000010026A450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 30;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

unint64_t sub_1001334E8()
{
  result = qword_1002F8B38;
  if (!qword_1002F8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8B38);
  }

  return result;
}

uint64_t sub_10013353C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100133584(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1001335FC()
{
  result = qword_1002F8B48;
  if (!qword_1002F8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8B48);
  }

  return result;
}

uint64_t sub_100133650()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300D48);
  sub_1000EE91C(v4, qword_100300D48);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_10013403C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DeviceSupportInformationRecord();
  *(a3 + v6[5]) = xmmword_100227DA0;
  v7 = type metadata accessor for UUID();
  v65 = *(v7 - 8);
  (*(v65 + 16))(a3, a1, v7);
  v8 = [a2 bluetoothAddress];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (a3 + v6[6]);
  *v12 = v9;
  v12[1] = v11;
  v13 = [a2 budsFirmwareVersion];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a3 + v6[7]);
  *v18 = v15;
  v18[1] = v17;
  v19 = [a2 caseName];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (a3 + v6[8]);
  *v24 = v21;
  v24[1] = v23;
  v25 = [a2 caseFirmwareVersion];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = (a3 + v6[9]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [a2 caseSerialNumber];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v36 = (a3 + v6[10]);
  *v36 = v33;
  v36[1] = v35;
  v37 = [a2 hardwareVersion];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  v42 = (a3 + v6[11]);
  *v42 = v39;
  v42[1] = v41;
  v43 = [a2 leftBudSerialNumber];
  if (v43)
  {
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = (a3 + v6[12]);
  *v48 = v45;
  v48[1] = v47;
  v49 = [a2 rightBudSerialNumber];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v54 = (a3 + v6[13]);
  *v54 = v51;
  v54[1] = v53;
  v55 = [a2 ancAssetVersion];
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  v60 = (a3 + v6[14]);
  *v60 = v57;
  v60[1] = v59;
  v61 = (a3 + v6[15]);
  *v61 = 0;
  v61[1] = 0xE000000000000000;
  v62 = a3 + v6[16];
  static Date.now.getter();

  v63 = *(v65 + 8);

  return v63(a1, v7);
}

void sub_1001343BC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v104 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v106 = &v102 - v7;
  __chkstk_darwin(v8);
  v109 = &v102 - v9;
  v10 = type metadata accessor for Date();
  v111 = *(v10 - 8);
  v112 = v10;
  v11 = *(v111 + 64);
  __chkstk_darwin(v10);
  v105 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v102 - v14;
  v113 = type metadata accessor for UUID();
  v110 = *(v113 - 1);
  v15 = *(v110 + 64);
  __chkstk_darwin(v113);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EE870(&qword_1002F8C58, &qword_100228C20);
  v114 = *(v18 - 8);
  v19 = *(v114 + 64);
  __chkstk_darwin(v18);
  v21 = &v102 - v20;
  v22 = type metadata accessor for DeviceSupportInformationRecord();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_100139C7C();
  v27 = v115;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    sub_1000EF824(a1);
  }

  else
  {
    v102 = v25;
    v103 = v22;
    v115 = a1;
    v118 = 1;
    sub_1000EF8C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v102;
    *&v102[v103[5]] = v116;
    LOBYTE(v116) = 0;
    sub_1001399D0(&unk_1002F8750, &type metadata accessor for UUID);
    v29 = v113;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v110 + 32))(v28, v17, v29);
    LOBYTE(v116) = 2;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v117 = 1;
    v31 = v103;
    v32 = (v28 + v103[6]);
    *v32 = v30;
    v32[1] = v33;
    LOBYTE(v116) = 3;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v38 = (v28 + v31[7]);
    *v38 = v36;
    v38[1] = v37;
    LOBYTE(v116) = 4;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    v43 = (v28 + v31[8]);
    *v43 = v41;
    v43[1] = v42;
    LOBYTE(v116) = 5;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0xE000000000000000;
    }

    v48 = (v28 + v31[9]);
    *v48 = v46;
    v48[1] = v47;
    LOBYTE(v116) = 6;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v53 = (v28 + v31[10]);
    *v53 = v51;
    v53[1] = v52;
    LOBYTE(v116) = 7;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v55)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    v58 = (v28 + v103[11]);
    *v58 = v56;
    v58[1] = v57;
    LOBYTE(v116) = 8;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v60)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v63 = (v28 + v103[12]);
    *v63 = v61;
    v63[1] = v62;
    LOBYTE(v116) = 9;
    v64 = v18;
    v65 = v21;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v67)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = 0xE000000000000000;
    }

    v70 = &v102[v103[13]];
    *v70 = v68;
    v70[1] = v69;
    LOBYTE(v116) = 10;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = 0xE000000000000000;
    }

    v75 = &v102[v103[14]];
    *v75 = v73;
    v75[1] = v74;
    LOBYTE(v116) = 11;
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v77)
    {
      v78 = v76;
    }

    else
    {
      v78 = 0;
    }

    v79 = 0xE000000000000000;
    if (v77)
    {
      v79 = v77;
    }

    v80 = v103;
    v81 = &v102[v103[15]];
    *v81 = v78;
    v81[1] = v79;
    v82 = v80[16];
    static Date.now.getter();
    LOBYTE(v116) = 12;
    sub_1001399D0(&qword_1002F7D90, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v113 = *(v111 + 48);
    if ((v113)(v109, 1, v112) == 1)
    {
      v83 = objc_autoreleasePoolPush();
      sub_100135EE0(v102, &v116);
      objc_autoreleasePoolPop(v83);
      v84 = v116;
      v85 = [v116 modificationDate];

      if (v85)
      {
        v86 = v105;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v114 + 8))(v65, v64);
        v88 = v111;
        v87 = v112;
        v89 = *(v111 + 32);
        v90 = v106;
        v89(v106, v86, v112);
        (*(v88 + 56))(v90, 0, 1, v87);
        v89(v108, v90, v87);
      }

      else
      {
        v91 = *(v111 + 56);
        v110 = v111 + 56;
        v103 = v91;
        (v91)(v106, 1, 1, v112);
        v92 = objc_autoreleasePoolPush();
        sub_100135EE0(v102, &v116);
        objc_autoreleasePoolPop(v92);
        v93 = v116;
        v94 = [v116 creationDate];

        if (v94)
        {
          v95 = v105;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v114 + 8))(v65, v64);
          v96 = v112;
          v97 = *(v111 + 32);
          v98 = v104;
          v97(v104, v95, v112);
          (v103)(v98, 0, 1, v96);
          v97(v108, v98, v96);
        }

        else
        {
          v99 = v104;
          v100 = v112;
          (v103)(v104, 1, 1, v112);
          static Date.now.getter();
          (*(v114 + 8))(v21, v64);
          if ((v113)(v99, 1, v100) != 1)
          {
            sub_1000EEE6C(v104, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        if ((v113)(v106, 1, v112) != 1)
        {
          sub_1000EEE6C(v106, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if ((v113)(v109, 1, v112) != 1)
      {
        sub_1000EEE6C(v109, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      (*(v114 + 8))(v21, v64);
      (*(v111 + 32))(v108, v109, v112);
    }

    v101 = v102;
    (*(v111 + 40))(&v102[v82], v108, v112);
    sub_1001398BC(v101, v107);
    sub_1000EF824(v115);
    sub_100139920(v101);
  }
}

void sub_1001352B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v113 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v105 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v114 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v105 - v16;
  v17 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v105 - v19;
  v21 = type metadata accessor for UUID();
  v117 = *(v21 - 8);
  v118 = v21;
  v22 = *(v117 + 64);
  __chkstk_darwin(v21);
  v116 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0xD00000000000001ELL && 0x80000001002289C0 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_10013997C();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();

      return;
    }
  }

  v110 = v10;
  v111 = v12;
  v112 = v11;
  v26 = [a1 encryptedValues];
  swift_getObjectType();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 objectForKeyedSubscript:v27];

  if (!v28)
  {
    goto LABEL_9;
  }

  v121 = v28;
  sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v108 = v2;
  v109 = a2;
  v29 = v120;
  v107 = v119;
  v30 = [a1 recordID];
  v31 = [v30 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v33 = v117;
  v32 = v118;
  if ((*(v117 + 48))(v20, 1, v118) == 1)
  {

    sub_1000EEE6C(v20, &qword_1002F8000, &unk_1002262C0);
LABEL_9:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100226100;
    *(v34 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    *(v34 + 64) = sub_1000FA830();
    *(v34 + 32) = a1;
    v35 = a1;
    os_log(_:dso:log:_:_:)();

    sub_10013997C();
    swift_allocError();
    *v36 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v38 = *(v33 + 32);
  v106 = v29;
  v39 = v116;
  v38(v116, v20, v32);
  v40 = v109;
  (*(v33 + 16))(v109, v39, v32);
  v41 = type metadata accessor for DeviceSupportInformationRecord();
  v42 = (v40 + v41[6]);
  v43 = v106;
  *v42 = v107;
  v42[1] = v43;
  CKRecordKeyValueSetting.subscript.getter();
  v45 = v119;
  v44 = v120;
  if (!v120)
  {
    v45 = 0;
  }

  v46 = 0xE000000000000000;
  if (!v120)
  {
    v44 = 0xE000000000000000;
  }

  v47 = (v40 + v41[7]);
  *v47 = v45;
  v47[1] = v44;
  CKRecordKeyValueSetting.subscript.getter();
  v49 = v119;
  v48 = v120;
  if (!v120)
  {
    v49 = 0;
    v48 = 0xE000000000000000;
  }

  v50 = (v40 + v41[8]);
  *v50 = v49;
  v50[1] = v48;
  CKRecordKeyValueSetting.subscript.getter();
  v52 = v119;
  v51 = v120;
  if (!v120)
  {
    v52 = 0;
    v51 = 0xE000000000000000;
  }

  v53 = (v40 + v41[9]);
  *v53 = v52;
  v53[1] = v51;
  CKRecordKeyValueSetting.subscript.getter();
  v55 = v119;
  v54 = v120;
  if (!v120)
  {
    v55 = 0;
    v54 = 0xE000000000000000;
  }

  v56 = (v40 + v41[10]);
  *v56 = v55;
  v56[1] = v54;
  CKRecordKeyValueSetting.subscript.getter();
  v58 = v119;
  v57 = v120;
  if (!v120)
  {
    v58 = 0;
    v57 = 0xE000000000000000;
  }

  v59 = (v40 + v41[11]);
  *v59 = v58;
  v59[1] = v57;
  CKRecordKeyValueSetting.subscript.getter();
  v61 = v119;
  v60 = v120;
  if (!v120)
  {
    v61 = 0;
    v60 = 0xE000000000000000;
  }

  v62 = (v40 + v41[12]);
  *v62 = v61;
  v62[1] = v60;
  CKRecordKeyValueSetting.subscript.getter();
  v64 = v119;
  v63 = v120;
  if (!v120)
  {
    v64 = 0;
    v63 = 0xE000000000000000;
  }

  v65 = (v40 + v41[13]);
  *v65 = v64;
  v65[1] = v63;
  CKRecordKeyValueSetting.subscript.getter();
  v67 = v119;
  v66 = v120;
  if (!v120)
  {
    v67 = 0;
    v66 = 0xE000000000000000;
  }

  v68 = (v40 + v41[14]);
  *v68 = v67;
  v68[1] = v66;
  v69 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v69];
  [v69 finishEncoding];
  v70 = [v69 encodedData];
  v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v107 = v41;
  v74 = (v40 + v41[5]);
  *v74 = v71;
  v74[1] = v73;
  v75 = [a1 valuesByKey];
  v76 = String._bridgeToObjectiveC()();
  v77 = [v75 objectForKeyedSubscript:v76];
  swift_unknownObjectRelease();

  if (v77)
  {
    objc_opt_self();
    v78 = swift_dynamicCastObjCClass();
    v80 = v110;
    v79 = v111;
    if (v78)
    {
      v81 = [v78 recordID];
      v82 = [v81 recordName];

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v84;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v83 = 0;
    }
  }

  else
  {
    v83 = 0;
    v80 = v110;
    v79 = v111;
  }

  v85 = v107;
  v86 = v109;
  v87 = (v109 + v107[15]);
  *v87 = v83;
  v87[1] = v46;
  v88 = [a1 modificationDate];
  if (v88)
  {
    v89 = v114;
    v90 = v88;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v117 + 8))(v116, v118);
    v91 = *(v79 + 32);
    v92 = v112;
    v91(v80, v89, v112);
    (*(v79 + 56))(v80, 0, 1, v92);
    v93 = v115;
    v91(v115, v80, v92);
  }

  else
  {
    v94 = *(v79 + 56);
    v92 = v112;
    v94(v80, 1, 1, v112);
    v95 = [a1 creationDate];
    if (v95)
    {
      v96 = v114;
      v97 = v95;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v117 + 8))(v116, v118);
      v98 = *(v79 + 32);
      v99 = v113;
      v100 = v96;
      v85 = v107;
      v98(v113, v100, v92);
      v94(v99, 0, 1, v92);
      v93 = v115;
      v98(v115, v99, v92);
      v101 = (*(v79 + 48))(v80, 1, v92);
    }

    else
    {
      v102 = v113;
      v94(v113, 1, 1, v92);
      v103 = v102;
      v93 = v115;
      static Date.now.getter();

      swift_unknownObjectRelease();
      (*(v117 + 8))(v116, v118);
      v104 = *(v79 + 48);
      if (v104(v103, 1, v92) != 1)
      {
        sub_1000EEE6C(v103, &qword_1002F7EF0, &unk_100226C90);
      }

      v101 = v104(v80, 1, v92);
    }

    v86 = v109;
    if (v101 != 1)
    {
      sub_1000EEE6C(v80, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v79 + 32))(v86 + v85[16], v93, v92);
}