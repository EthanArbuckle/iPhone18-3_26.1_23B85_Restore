void storeEnumTagSinglePayload for MLS.IncomingMessage(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 1;
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
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) != -1)
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
  v19 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.IncomingFailureToDecrypt(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecrypt(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
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

void storeEnumTagSinglePayload for MLS.IncomingFailureToDecrypt(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

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

uint64_t type metadata instantiation function for MLS.IncomingErrorMessage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingErrorMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for MLS.IncomingErrorMessage(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MLS.ErrorMessageFailureReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.ErrorMessageFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized MLS.IncomingMessageType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E8470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C74696D6D6F63 && a2 == 0xEA00000000007473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61736F706F7270 && a2 == 0xEC0000007473694CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6F636C6577 && a2 == 0xE700000000000000)
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

uint64_t specialized MLS.ErrorMessageFailureReason.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x636572726F636E69 && a2 == 0xEC00000061724574;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636572726F636E69 && a2 == 0xEE0068636F704574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002651E87B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E87D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002651E87F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002651E8810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEF6C61736F706F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEE00726F72724574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E8850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4364696C61766E69 && a2 == 0xED000074696D6D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E8870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4964696C61766E69 && a2 == 0xEC0000007475706ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002651E8890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E88B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x526E776F6E6B6E75 && a2 == 0xED00006E6F736165)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy8SwiftMLS0E0O8IdentityO07SigningF0VG_AJ10CredentialOs5NeverOTg50123_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationC016membersRequiringgH013swiftMLSGroupSayAC9AllMemberOGAC05d26M8Protocol_p_tYaKF0pC0ABO8f3O10h5OAO07G8R0VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v42 = v10;
    v34[1] = v1;
    v49 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v48 = v49;
    v13 = -1 << *(a1 + 32);
    v46 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v14 = v7;
    v15 = result;
    v16 = 0;
    v40 = (v4 + 8);
    v41 = v4 + 16;
    v43 = v14;
    v38 = v3;
    v39 = v14 + 32;
    v35 = a1 + 64;
    v36 = v11;
    v37 = v4;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v46 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_26;
      }

      v45 = *(a1 + 36);
      (*(v4 + 16))(v47, *(a1 + 48) + *(v4 + 72) * v15, v3);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v20 = a1;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v21 = v42;
      v22 = v47;
      MLS.Identity.SigningIdentity.credential.getter();
      (*v40)(v22, v3);
      v23 = v48;
      v49 = v48;
      v25 = *(v48 + 16);
      v24 = *(v48 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v23 = v49;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v48 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v21, v44);
      v17 = 1 << *(v20 + 32);
      if (v15 >= v17)
      {
        goto LABEL_27;
      }

      v27 = *(v46 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_28;
      }

      a1 = v20;
      if (v45 != *(v20 + 36))
      {
        goto LABEL_29;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v36;
        v4 = v37;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v18 = v36;
        v31 = (v35 + 8 * v19);
        v4 = v37;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v15, v45, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v15, v45, 0);
      }

LABEL_4:
      ++v16;
      v15 = v17;
      v3 = v38;
      if (v16 == v18)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a2;
  v7 = *a5;
  v5[12] = *a5;
  v8 = *(v7 + 88);
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a4;
  v5[15] = v11;
  v5[16] = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter, v13, 0);
}

uint64_t closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter()
{
  v40 = v0;
  v1 = *(v0 + 72);
  v2 = *(**(v0 + 88) + 144);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v37 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39[0] = v11;
    *v9 = 136315394;
    v12 = *(*v7 + 136);
    v13 = *(v6 + 112);
    v14 = (*(v13 + 16))(v37, v13);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v39);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_264F1F000, v4, v5, "UpdateOtherExpiredKeyPackagesOperation key package updates hit error. Downgrading { identifier: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v19 = *(v0 + 96);

    v13 = *(v19 + 112);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v38 = *(v0 + 80);
  v26 = *(v0 + 64);
  v27 = *(v24 + 120);
  v28 = *(v24 + 96);
  *(v0 + 16) = *(v24 + 80);
  *(v0 + 24) = v22;
  *(v0 + 32) = v28;
  *(v0 + 48) = v13;
  *(v0 + 56) = v27;
  v29 = type metadata accessor for MLS.DowngradeOperation();
  v30 = *(v25 + 2);
  v31 = *(v25 + 3);
  (*(v23 + 16))(v20, &v25[*(*v25 + 136)], v22);
  v32 = &v25[*(*v25 + 176)];
  v33 = v32[1];
  v39[0] = *v32;
  v39[1] = v33;

  v34 = MLS.DowngradeOperation.__allocating_init(group:context:clientIdentifier:shouldHeal:)(v30, v31, v20, v39, 0);
  *(v26 + 24) = v29;
  *(v26 + 32) = swift_getWitnessTable();
  *v26 = v34;
  outlined init with copy of MLS.OutgoingEventState?(v38, v26 + 40, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  *(v26 + 408) = 2;
  *(v26 + 424) = 0;
  *(v26 + 432) = 0;
  *(v26 + 416) = v21;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t partial apply for closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.errorHandlingPolicy.getter(a1, a2, a3, a4, v4);
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.eventSender.getter()
{
  v1 = (v0 + *(*v0 + 168));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 176));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t outlined init with copy of MLS.KeyPackageProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyPackageProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.__allocating_init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  MLS.UpdateOtherExpiredKeyPackagesOperation.init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v20;
}

char *MLS.UpdateOtherExpiredKeyPackagesOperation.init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v16 = *v9;
  v17 = *a8;
  v18 = a8[1];
  v19 = &v9[*(*v9 + 144)];
  Logger.init(subsystem:category:)();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  (*(*(*(v16 + 88) - 8) + 32))(&v9[*(*v9 + 136)], a3);
  *&v9[*(*v9 + 152)] = a4;
  outlined init with take of MLS.KeyUpdatePolicy(a5, &v9[*(*v9 + 160)]);
  v20 = &v9[*(*v9 + 168)];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v9[*(*v9 + 176)];
  *v21 = v17;
  *(v21 + 1) = v18;
  outlined init with take of MLS.KeyPackageProvider(a9, &v9[*(*v9 + 184)], type metadata accessor for MLS.KeyPackageProvider);
  return v9;
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1[3] = v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v1[4] = v3;
  v1[5] = *(*(v3 + 8) + 8);
  v4 = *(v2 + 80);
  v1[6] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  v6 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = *(v4 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v1[13] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), v9, 0);
}

{
  v38 = v0;
  v1 = v0[3];
  updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy8SwiftMLS0E0O8IdentityO07SigningF0VG_AJ10CredentialOs5NeverOTg50123_s15SecureMessaging3MLSO38UpdateOtherExpiredKeyPackagesOperationC016membersRequiringgH013swiftMLSGroupSayAC9AllMemberOGAC05d26M8Protocol_p_tYaKF0pC0ABO8f3O10h5OAO07G8R0VXEfU_Tf1cn_n(*(v1 + *(*v1 + 152)));
  v3 = (v1 + *(*v1 + 160));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(updated);

  v7 = (*(v5 + 8))(v6, v4, v5);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO9AllMemberO_Tt1g5(*(v7 + 16), 0);
    v10 = specialized Sequence._copySequenceContents(initializing:)(&v37, (v9 + 4), v8, v7);
    result = outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant();
    if (v10 != v8)
    {
      __break(1u);
      return result;
    }

    v12 = v9[2];
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
LABEL_4:
      v37 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = v37;
      v14 = (v9 + 7);
      do
      {
        v15 = v0[13];
        v16 = *(v14 - 3);
        v17 = *(v14 - 2);
        v18 = *(v14 - 1);
        v19 = *v14;
        outlined copy of MLS.AllMember();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          v20 = v0[13];
          swift_task_reportUnexpectedExecutor();
        }

        v37 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v13 = v37;
        }

        v14 += 32;
        *(v13 + 16) = v22 + 1;
        v23 = v13 + 16 * v22;
        *(v23 + 32) = v16;
        *(v23 + 40) = v17;
        --v12;
      }

      while (v12);

      goto LABEL_13;
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_13:
  v0[14] = v13;
  v24 = v0[12];
  v25 = v0[7];
  v26 = v0[8];
  v28 = v0[5];
  v27 = v0[6];
  v30 = v0[3];
  v29 = v0[4];
  v31 = swift_task_alloc();
  v0[15] = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v25, AssociatedConformanceWitness);
  VersatileError.init(type:)(v26, v27, v28);
  v33 = swift_task_alloc();
  v0[16] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  *v33 = v0;
  v33[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v35 = v0[11];
  v34 = v0[12];
  v36 = v0[6];
  v40 = v0[5];
  v41 = v35;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 2), async function pointer to partial apply for implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), v31, v34, 0, 0, v36);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v16 = *v1;

  if (v0)
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];
    v7 = v2[9];
    v8 = v2[6];
    v9 = *(v7 + 8);
    v2[17] = v9;
    v2[18] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);

    v10 = MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
    v11 = v5;
  }

  else
  {
    v13 = v2[14];
    v12 = v2[15];
    v14 = v2[13];
    (*(v2[9] + 8))(v2[12], v2[6]);

    v10 = MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
    v11 = v14;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[2];

  v6 = v0[1];

  return v6(v5);
}

{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 72) + 32);
  v2(*(v0 + 80), *(v0 + 88), *(v0 + 48));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 144);
    (*(v0 + 136))(*(v0 + 80), *(v0 + 48));
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 48);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 120);

  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
}

uint64_t implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  v1 = (v0[3] + *(*v0[3] + 168));
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 56);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:);
  v8 = v0[4];

  return v10(v8, ObjectType, v2);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:), 0, 0);
  }
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5[122] = v4;
  v5[121] = a2;
  v5[120] = a1;
  v8 = *v4;
  v5[123] = *v4;
  v9 = *(v8 + 104);
  v5[124] = v9;
  v5[125] = *(*(v9 + 8) + 8);
  v10 = *(v8 + 80);
  v5[126] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[127] = AssociatedTypeWitness;
  v12 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v5[128] = swift_task_alloc();
  v13 = *(v10 - 8);
  v5[129] = v13;
  v14 = *(v13 + 64) + 15;
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v15 = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialInput();
  v5[134] = v15;
  v16 = *(v15 - 8);
  v5[135] = v16;
  v17 = *(v16 + 64) + 15;
  v5[136] = swift_task_alloc();
  v18 = type metadata accessor for MetricCollector.Event();
  v5[137] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = *a3;
  v5[141] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static MLSActor.shared;
  v5[142] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v20, 0);
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[140];
  v2 = v0[139];
  v21 = v0[138];
  v22 = v0[141];
  v20 = v0[137];
  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[121];
  v0[143] = *(*v4 + 136);
  v6 = *(v3 + 112);
  v0[144] = v6;
  v7 = *(v6 + 16);
  v8 = *(v3 + 88);
  v0[145] = v8;

  v0[146] = v7(v8, v6);
  v0[147] = v9;
  Date.init()();
  v10 = *(v20 + 20);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  outlined init with take of MLS.KeyPackageProvider(v2, v21, type metadata accessor for MetricCollector.Event);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);

  v0[117] = v1;
  v13 = v5[3];
  v0[148] = v13;
  v0[149] = v5[4];
  v0[150] = __swift_project_boxed_opaque_existential_1(v5, v13);
  v0[118] = v22;
  v14 = *v4;
  v15 = (v4 + *(*v4 + 176));
  v16 = v15[1];
  v0[111] = *v15;
  v0[112] = v16;
  v17 = *(v14 + 184);

  v18 = swift_task_alloc();
  v0[151] = v18;
  *v18 = v0;
  v18[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)((v0 + 113), 1);
}

{
  v2 = *(*v1 + 1208);
  v3 = *v1;
  *(v3 + 1216) = v0;

  if (v0)
  {
    v4 = *(v3 + 1176);
    v5 = *(v3 + 1136);

    v6 = *(v3 + 896);

    v7 = *(v3 + 944);

    v8 = *(v3 + 936);

    return MEMORY[0x2822009F8](MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v5, 0);
  }

  else
  {
    v9 = *(v3 + 912);
    *(v3 + 920) = *(v3 + 904);
    *(v3 + 928) = v9;
    v10 = swift_task_alloc();
    *(v3 + 1224) = v10;
    v11 = lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    *v10 = v3;
    v10[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v12 = *(v3 + 1200);
    v13 = *(v3 + 1192);
    v14 = *(v3 + 1184);

    return MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)((v3 + 944), (v3 + 888), (v3 + 920), v14, &type metadata for MLS.AllMember, v13, v11);
  }
}

{
  v1 = v0[155];
  v2 = v0[154];
  v3 = v0[136];
  v4 = v0[121];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)();
  if (v2)
  {
    v7 = v0[147];
    v8 = v0[117];

    v9 = v0[139];
    v10 = v0[138];
    v11 = v0[136];
    v12 = v0[133];
    v13 = v0[132];
    v14 = v0[131];
    v15 = v0[130];
    v16 = v0[128];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = *(v6 + 216);
    v23 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[156] = v21;
    *v21 = v0;
    v21[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v22 = v0[136];

    return (v23)(v0 + 98, v22, v5, v6);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1248);
  v11 = *v1;
  *(*v1 + 1256) = v0;

  if (v0)
  {
    v4 = v2[147];
    v5 = v2[142];
    (*(v2[135] + 8))(v2[136], v2[134]);

    v6 = v2[117];

    v7 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v5;
  }

  else
  {
    v9 = v2[142];
    (*(v2[135] + 8))(v2[136], v2[134]);
    v7 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v155 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 976);
  v3 = *(v0 + 808);
  v4 = *(v0 + 816);
  __swift_project_boxed_opaque_existential_1((v0 + 784), v3);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 784));
  v5._countAndFlagsBits = 0x534C4D7466697753;
  v5._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v5);
  v6 = *(*v2 + 144);
  outlined init with copy of ServerBag.MLS(v0 + 744, v0 + 824);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1176);
    v10 = *(v0 + 1168);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v149 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v149);
    *(v11 + 12) = 2080;
    v13 = *(v0 + 848);
    __swift_project_boxed_opaque_existential_1((v0 + 824), v13);
    v14 = *(v13 - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = String.init<A>(describing:)();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v149);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v7, v8, "UpdateExpiredKeyPackageOperation generated commit for key package updates  { identifier: %s, commitOutput: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
  }

  v20 = *(v0 + 1128);
  v21 = *(v20 + 16);
  if (v21)
  {
    v147 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO9AllMemberO_Tt1g5(v21, 0);
    v22 = specialized Sequence._copySequenceContents(initializing:)(&v149, (v147 + 4), v21, v20);

    result = outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant();
    if (v22 != v21)
    {
      __break(1u);
      return result;
    }

    v24 = *(v0 + 1128);
  }

  else
  {
    v147 = MEMORY[0x277D84F90];
  }

  v25 = *(v0 + 768);
  v26 = *(v0 + 776);
  __swift_project_boxed_opaque_existential_1((v0 + 744), v25);

  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v25, v26, &v149);
  v27 = v149;
  v144 = v150;
  *(v0 + 1264) = v150;
  v28 = v152;
  v143 = v151;
  *(v0 + 1272) = v151;
  *(v0 + 1280) = v28;
  v29 = *(v0 + 768);
  v30 = *(v0 + 776);
  __swift_project_boxed_opaque_existential_1((v0 + 744), v29);
  MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter(v29, v30, &v149);
  v31 = v149;
  v32 = v150;
  *(v0 + 1288) = v149;
  *(v0 + 1296) = v32;
  v34 = v151;
  v33 = v152;
  *(v0 + 1304) = v151;
  *(v0 + 1312) = v33;
  if (!v32)
  {
    v55 = *(v0 + 1176);
    v56 = *(v0 + 1128);

    v57 = *(v0 + 936);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 1176);
    v62 = v28;
    if (v60)
    {
      v63 = *(v0 + 1168);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v149 = v65;
      *v64 = 136315138;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v61, &v149);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_264F1F000, v58, v59, "UpdateExpiredKeyPackageOperation missing welcome message { identifier: %s }", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266755550](v65, -1, -1);
      MEMORY[0x266755550](v64, -1, -1);
    }

    else
    {
    }

    v104 = *(v0 + 1048);
    v105 = *(v0 + 1024);
    v106 = *(v0 + 1016);
    v107 = *(v0 + 1008);
    v108 = *(v0 + 1000);
    v109 = *(v0 + 992);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 64))(v106, AssociatedConformanceWitness);
    VersatileError.init(type:)(v105, v107, v108);
    v111 = *(*(v108 + 8) + 8);
    v112 = _getErrorEmbeddedNSError<A>(_:)();
    v113 = *(v0 + 1048);
    v114 = *(v0 + 1032);
    if (v112)
    {
      (*(v114 + 8))(*(v0 + 1048), *(v0 + 1008));
    }

    else
    {
      v115 = *(v0 + 1008);
      swift_allocError();
      (*(v114 + 32))(v116, v113, v115);
    }

    swift_willThrow();

    outlined consume of Data._Representation(v143, v62);
    goto LABEL_23;
  }

  v142 = v27;
  v35 = *(v0 + 1256);
  v36 = *(v0 + 1160);
  v37 = *(v0 + 1152);
  v38 = *(v0 + 1008);
  v39 = *(v0 + 992);
  v40 = *(v0 + 984);
  *(v0 + 952) = *(v0 + 976);
  v41 = *(v40 + 96);
  v42 = *(v40 + 120);
  *(v0 + 696) = v38;
  *(v0 + 704) = v36;
  *(v0 + 712) = v41;
  *(v0 + 720) = v39;
  *(v0 + 728) = v37;
  *(v0 + 736) = v42;
  updated = type metadata accessor for MLS.UpdateOtherExpiredKeyPackagesOperation();
  WitnessTable = swift_getWitnessTable();
  MLS.GroupOperation.context(commitOutput:)((v0 + 744), updated, WitnessTable, &v149);
  v45 = v35;
  v46 = v149;
  v47 = v150;
  *(v0 + 1320) = v149;
  *(v0 + 1328) = v47;
  v48 = v151;
  v49 = v152;
  *(v0 + 1336) = v151;
  *(v0 + 1344) = v49;
  v50 = v153;
  v51 = v154;
  *(v0 + 1352) = v153;
  *(v0 + 1360) = v51;
  v52 = *(v0 + 1176);
  if (v45)
  {
    v53 = *(v0 + 1128);
    v54 = *(v0 + 936);

    outlined consume of Data._Representation(v143, v28);
    outlined consume of MLS.OutgoingMessage?(v31, v32, v34, v33);

LABEL_23:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));
    v117 = *(v0 + 1112);
    v118 = *(v0 + 1104);
    v119 = *(v0 + 1088);
    v120 = *(v0 + 1064);
    v121 = *(v0 + 1056);
    v122 = *(v0 + 1048);
    v123 = *(v0 + 1040);
    v124 = *(v0 + 1024);

    v125 = *(v0 + 8);

    return v125();
  }

  v141 = *(v0 + 1168);
  v137 = *(v0 + 1160);
  v133 = v50;
  v134 = *(v0 + 1152);
  v138 = *(v0 + 1128);
  v135 = *(v0 + 976);
  v136 = *(v0 + 1144);
  v129 = v49;
  v130 = v46;
  v131 = v51;
  v132 = v48;
  v128 = v47;
  v67 = objc_allocWithZone(MEMORY[0x277CCAD78]);

  v68 = [v67 init];
  v69 = [v68 UUIDString];

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v139 = v71;
  v140 = v70;

  v127 = *(v0 + 936);

  outlined copy of Data._Representation(v143, v28);
  outlined copy of MLS.OutgoingMessage?(v31, v32, v34, v33);

  v126 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v72);

  *(v0 + 200) = v141;
  *(v0 + 208) = v52;
  *(v0 + 216) = v140;
  *(v0 + 224) = v139;
  *(v0 + 232) = xmmword_2651B5F50;
  *(v0 + 248) = v127;
  *(v0 + 256) = v142;
  *(v0 + 264) = v144;
  *(v0 + 272) = v143;
  *(v0 + 280) = v28;
  *(v0 + 288) = v31;
  *(v0 + 296) = v32;
  *(v0 + 304) = v34;
  *(v0 + 312) = v33;
  *(v0 + 320) = v126;
  *(v0 + 328) = v130;
  *(v0 + 336) = v128;
  *(v0 + 344) = v132;
  *(v0 + 352) = v129;
  *(v0 + 360) = v133;
  *(v0 + 368) = v131;
  v73 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v73;
  v74 = *(v0 + 200);
  v75 = *(v0 + 216);
  v76 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v76;
  *(v0 + 16) = v74;
  *(v0 + 32) = v75;
  v77 = *(v0 + 296);
  v78 = *(v0 + 312);
  v79 = *(v0 + 360);
  *(v0 + 160) = *(v0 + 344);
  *(v0 + 176) = v79;
  v80 = *(v0 + 328);
  *(v0 + 128) = v78;
  *(v0 + 144) = v80;
  *(v0 + 112) = v77;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi12_(v0 + 16);
  v145 = *(v134 + 8);
  outlined copy of Data._Representation(v130, v128);
  outlined copy of Data?(v132, v129);
  outlined copy of Data._Representation(v133, v131);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 376, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);

  v81 = v145(v137, v134);
  *(v0 + 552) = v140;
  *(v0 + 560) = v139;
  *(v0 + 568) = v138;
  *(v0 + 576) = v147;
  *(v0 + 584) = 7;
  *(v0 + 592) = v141;
  *(v0 + 600) = v52;
  *(v0 + 608) = v81;
  *(v0 + 616) = v82;

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = *(v0 + 1176);
    v86 = *(v0 + 1168);
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v149 = v88;
    *v87 = 136315138;
    *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v85, &v149);
    _os_log_impl(&dword_264F1F000, v83, v84, "UpdateExpiredKeyPackageOperation returning operation result { identifier: %s }", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    MEMORY[0x266755550](v88, -1, -1);
    MEMORY[0x266755550](v87, -1, -1);
  }

  v146 = *(v0 + 1168);
  v148 = *(v0 + 1176);
  v89 = *(v0 + 1064);
  v90 = *(v0 + 1024);
  v91 = *(v0 + 1016);
  v92 = *(v0 + 1008);
  v93 = *(v0 + 1000);
  v94 = *(v0 + 992);
  v95 = *(v0 + 976);
  v96 = *(v0 + 968);
  v97 = swift_task_alloc();
  *(v0 + 1368) = v97;
  *(v97 + 16) = v96;
  v98 = swift_getAssociatedConformanceWitness();
  (*(v98 + 56))(v91, v98);
  VersatileError.init(type:)(v90, v92, v93);
  v99 = swift_allocObject();
  *(v0 + 1376) = v99;
  v99[2] = v95;
  v99[3] = v146;
  v99[4] = v148;

  v100 = swift_task_alloc();
  *(v0 + 1384) = v100;
  *v100 = v0;
  v100[1] = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  v101 = *(v0 + 1064);
  v102 = *(v0 + 1056);
  v103 = *(v0 + 1008);
  v157 = *(v0 + 1000);
  v158 = v102;

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 864, &async function pointer to partial apply for implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v97, v101, partial apply for closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), v99, v103);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1384);
  v14 = *v1;

  if (v0)
  {
    v4 = v2[172];
    v5 = v2[142];
    v6 = v2[133];
    v7 = v2[129];
    v8 = v2[126];
    v9 = *(v7 + 8);
    v2[174] = v9;
    v2[175] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);

    v10 = v2[117];

    v11 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v12 = v2[172];
    v5 = v2[142];
    (*(v2[129] + 8))(v2[133], v2[126]);

    v11 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v11, v5, 0);
}

{
  v40 = *(v0 + 1368);
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1336);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1320);
  v31 = *(v0 + 1304);
  v32 = *(v0 + 1312);
  v7 = *(v0 + 1288);
  v33 = *(v0 + 1272);
  v34 = *(v0 + 1280);
  v29 = *(v0 + 1296);
  v30 = *(v0 + 1264);
  v36 = *(v0 + 1112);
  v37 = *(v0 + 1104);
  v38 = *(v0 + 1088);
  v39 = *(v0 + 1064);
  v41 = *(v0 + 1056);
  v42 = *(v0 + 1048);
  v43 = *(v0 + 1040);
  v44 = *(v0 + 1024);
  v35 = *(v0 + 968);
  v8 = *(v0 + 960);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of MLS.OutgoingMessage?(v7, v29, v31, v32);

  outlined consume of Data._Representation(v33, v34);
  v9 = *(v0 + 864);
  v10 = *(v0 + 872);
  v11 = *(v0 + 880);
  v12 = *(v0 + 128);
  v14 = *(v0 + 80);
  v13 = *(v0 + 96);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v12;
  *(v8 + 64) = v14;
  *(v8 + 80) = v13;
  v16 = *(v0 + 160);
  v15 = *(v0 + 176);
  v17 = *(v0 + 144);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v15;
  *(v8 + 128) = v17;
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v20 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v20;
  *v8 = v18;
  *(v8 + 16) = v19;
  *(v8 + 184) = *(v0 + 552);
  v21 = *(v0 + 568);
  v22 = *(v0 + 584);
  v23 = *(v0 + 600);
  *(v8 + 248) = *(v0 + 616);
  *(v8 + 232) = v23;
  *(v8 + 216) = v22;
  *(v8 + 200) = v21;
  *(v8 + 256) = 0;
  *(v8 + 264) = v9;
  *(v8 + 272) = v10;
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v0 + 552);
  v24 = *(v0 + 568);
  v25 = *(v0 + 584);
  v26 = *(v0 + 600);
  *(v8 + 352) = *(v0 + 616);
  *(v8 + 320) = v25;
  *(v8 + 336) = v26;
  *(v8 + 304) = v24;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v35, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 936);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  outlined init with copy of MLS.OutgoingEventState(v0 + 552, v0 + 624);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[152];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[136];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  v9 = v0[128];

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[154];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[136];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  v9 = v0[128];

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[157];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[136];
  v5 = v0[133];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  v9 = v0[128];

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 1000);
  v2 = *(*(v0 + 1032) + 32);
  v2(*(v0 + 1040), *(v0 + 1056), *(v0 + 1008));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1400);
    (*(v0 + 1392))(*(v0 + 1040), *(v0 + 1008));
  }

  else
  {
    v5 = *(v0 + 1040);
    v6 = *(v0 + 1008);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v30 = *(v0 + 1360);
  v31 = *(v0 + 1368);
  v28 = *(v0 + 1344);
  v29 = *(v0 + 1352);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1328);
  v10 = *(v0 + 1320);
  v11 = *(v0 + 1312);
  v12 = *(v0 + 1304);
  v13 = *(v0 + 1296);
  v14 = *(v0 + 1288);
  v15 = *(v0 + 1280);
  v16 = *(v0 + 1272);
  v17 = *(v0 + 1264);

  outlined consume of Data._Representation(v16, v15);
  outlined consume of MLS.OutgoingMessage?(v14, v13, v12, v11);
  outlined consume of Data._Representation(v10, v9);
  outlined consume of Data?(v8, v28);
  outlined consume of Data._Representation(v29, v30);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState(v0 + 552);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO33OutgoingReplaceExpiredCredentialsVy_AC9AllMemberO10Foundation4DataVGMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));
  v18 = *(v0 + 1112);
  v19 = *(v0 + 1104);
  v20 = *(v0 + 1088);
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1056);
  v23 = *(v0 + 1048);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1024);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1224);
  v15 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {
    v6 = v4[147];
    v7 = v4[142];

    outlined consume of Data._Representation(v4[115], v4[116]);
    v8 = v4[112];

    v9 = v4[118];

    v10 = v4[117];

    v11 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v7 = v4[142];
    v4[155] = a1;
    outlined consume of Data._Representation(v4[115], v4[116]);
    v12 = v4[112];

    v13 = v4[118];

    v11 = MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v11, v7, 0);
}

uint64_t implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 48);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 16, v3, v2);
}

{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    *v4 = v5;
    *(v4 + 8) = v5;
    *(v4 + 16) = v3;
    return (*(v0 + 8))();
  }

  return result;
}

{
  v1 = *(v0 + 64);
  return (*(v0 + 8))();
}

void closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *(*a3 + 144);

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_264F1F000, oslog, v10, "UpdateExpiredKeyPackageOperation failed to obtain era { identifier: %s, error: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }
}

char *MLS.UpdateOtherExpiredKeyPackagesOperation.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 136)]);
  v3 = *(*v0 + 144);
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[*(*v0 + 152)];

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 160)]);
  v6 = *&v0[*(*v0 + 168)];
  swift_unknownObjectRelease();
  v7 = *&v0[*(*v0 + 176) + 8];

  outlined destroy of MLS.KeyPackageProvider(&v0[*(*v0 + 184)]);
  return v0;
}

uint64_t MLS.UpdateOtherExpiredKeyPackagesOperation.__deallocating_deinit()
{
  MLS.UpdateOtherExpiredKeyPackagesOperation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>(uint64_t a1)
{
  v4 = *(**v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 144);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO9AllMemberO_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8SwiftMLS0I0O8IdentityO07SigningJ0V_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMR);
  v4 = *(type metadata accessor for MLS.Identity.SigningIdentity() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO10CredentialOGMR, MEMORY[0x277D6AC88]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O8IdentityO07SigningF0VGMR, MEMORY[0x277D6AC60]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O6ClientO10KeyPackageVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O6ClientO10KeyPackageVGMR, MEMORY[0x277D6AC08]);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3URIVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3URIVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMR);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO18OutgoingEventStateVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO18OutgoingEventStateVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0gH5StateVSgAE12GroupVersionVtGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0gH5StateVSgAE12GroupVersionVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 280);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[35 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 280 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {
        outlined copy of MLS.AllMember();
        goto LABEL_24;
      }

      v11 += 32;
      outlined copy of MLS.AllMember();
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {
        outlined copy of MLS.AllMember();
        goto LABEL_24;
      }

      v11 += 32;
      outlined copy of MLS.AllMember();
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for MLS.Identity.SigningIdentity();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t partial apply for implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(a1, v5, v4);
}

uint64_t outlined init with take of MLS.KeyPackageProvider(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void outlined consume of MLS.OutgoingMessage?(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    outlined consume of Data._Representation(a3, a4);
  }
}

void outlined copy of MLS.OutgoingMessage?(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    outlined copy of Data._Representation(a3, a4);
  }
}

uint64_t partial apply for implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t sub_264F6C56C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined destroy of MLS.KeyPackageProvider(uint64_t a1)
{
  v2 = type metadata accessor for MLS.KeyPackageProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for MLS.UpdateOtherExpiredKeyPackagesOperation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.UpdateOtherExpiredKeyPackagesOperation(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = type metadata accessor for MLS.KeyPackageProvider();
      if (v5 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.UpdateOtherExpiredKeyPackagesOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 256);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of MLS.OutgoingEventState?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging3MLSO14KeyPackageInfoV_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of MLS.OutgoingEventState?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of MLS.OutgoingEventState?(a3, &v26[-1] - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, v26);

      v23 = v26[0];
      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t MLS.Client.keyPackage.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.keyPackage.getter, v1, 0);
}

uint64_t MLS.Client.keyPackage.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = static MLSActor.shared;
  v8 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  v10 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging3MLSO14KeyPackageInfoV_Tt2g5Tm(0, 0, v5, &async function pointer to partial apply for closure #1 in MLS.Client.keyPackage.getter, v9);
  v0[5] = v10;
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  v0[6] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v12 = v0;
  v12[1] = MLS.Client.keyPackage.getter;
  v14 = v0[2];
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v14, v10, &type metadata for MLS.KeyPackageInfo, v13, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = MLS.Client.keyPackage.getter;
  }

  else
  {
    v6 = MLS.Client.keyPackage.getter;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t closure #1 in MLS.Client.keyPackage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[6] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.keyPackage.getter, v5, 0);
}

uint64_t closure #1 in MLS.Client.keyPackage.getter()
{
  v1 = v0[5];
  v0[7] = direct field offset for MLS.Client.logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264F1F000, v2, v3, "keyPackage called", v4, 2u);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *(v7 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = closure #1 in MLS.Client.keyPackage.getter;

  return (v12)(v0 + 2, v6, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = closure #1 in MLS.Client.keyPackage.getter;
  }

  else
  {
    v6 = closure #1 in MLS.Client.keyPackage.getter;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  outlined copy of Data._Representation(v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    outlined copy of Data._Representation(v3, v4);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10 = [(objc_class *)isa description];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    outlined consume of Data._Representation(v3, v4);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_264F1F000, v5, v6, "keyPackage finished { result: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v15 = v0[4];
  *v15 = v3;
  v15[1] = v4;
  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 72);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.__allocating_init(coordinator:logger:)(__int128 *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MLS.Client.init(coordinator:logger:)(a1, a2);
  return v7;
}

uint64_t MLS.Client.init(coordinator:logger:)(__int128 *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  outlined init with take of MLS.KeyUpdatePolicy(a1, v2 + 112);
  v5 = direct field offset for MLS.Client.logger;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  return v2;
}

uint64_t MLS.Client.__allocating_init(configuration:)(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  v3 = v1[10];
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Optional();
  *(v2 + 208) = v4;
  v5 = *(v4 - 8);
  *(v2 + 216) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v7 = v1[11];
  *(v2 + 232) = v7;
  v8 = v1[12];
  *(v2 + 240) = v8;
  v9 = v1[13];
  *(v2 + 248) = v9;
  *&v10 = v3;
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  *(v2 + 72) = v11;
  *(v2 + 56) = v10;
  v12 = type metadata accessor for MLS.Configuration();
  *(v2 + 256) = v12;
  v13 = *(v12 - 8);
  *(v2 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v2 + 280) = v15;
  v16 = *(v15 - 8);
  *(v2 + 288) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), 0, 0);
  }

  else
  {
    v7 = *(*a1 + 184);
    v11 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v4[56] = v9;
    *v9 = v6;
    v9[1] = MLS.Client.__allocating_init(configuration:);

    return v11();
  }
}

uint64_t MLS.Client.__allocating_init(configuration:)()
{
  v39 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 184);
  Logger.init(subsystem:category:)();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 256);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v38);
    *(v12 + 12) = 1024;
    v14 = *(v9 + 64);
    v15 = *(v10 + 8);
    v15(v9, v11);
    *(v12 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v6, v7, "Initializing MLS Client { client: %s, runInDaemon: %{BOOL}d }", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
    v15 = *(v10 + 8);
    v15(*(v0 + 272), *(v0 + 256));
  }

  *(v0 + 312) = v15;
  v16 = *(v0 + 184);
  if (*(v16 + 64) == 1)
  {
    v17 = *(v0 + 248);
    v18 = *(v0 + 200);
    *(v0 + 320) = *v16;
    *(v0 + 328) = *(v16 + 8);
    *(v0 + 336) = swift_getObjectType();
    *(v0 + 344) = *(v16 + 16);
    *(v0 + 352) = *(v16 + 24);
    *(v0 + 360) = swift_getObjectType();
    *(v0 + 368) = *(v16 + 32);
    *(v0 + 376) = *(v16 + 40);
    *(v0 + 384) = swift_getObjectType();
    *(v0 + 88) = v18;
    *(v0 + 96) = *(v0 + 232);
    *(v0 + 112) = v17;
    *(v0 + 392) = type metadata accessor for MLS.ClientEventDeliverer();
    v19 = one-time initialization token for shared;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = static MLSActor.shared;
    *(v0 + 400) = static MLSActor.shared;

    return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), v20, 0);
  }

  else
  {
    v21 = *(v0 + 304);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_264F1F000, v22, v23, "Initializing in process client is not supported", v24, 2u);
      MEMORY[0x266755550](v24, -1, -1);
    }

    v25 = *(v0 + 304);
    v26 = *(v0 + 280);
    v27 = *(v0 + 288);
    v28 = *(v0 + 256);
    v29 = *(v0 + 264);
    v30 = *(v0 + 184);

    lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    v15(v30, v28);
    (*(v27 + 8))(v25, v26);
    v33 = *(v0 + 296);
    v32 = *(v0 + 304);
    v34 = *(v0 + 272);
    v35 = *(v0 + 224);

    v36 = *(v0 + 8);

    return v36();
  }
}

{
  v1 = v0[49];
  v0[51] = specialized MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(v0[40], v0[43], v0[46], v0[42], v0[45], v0[48], v0[41], v0[44], v0[47]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), 0, 0);
}

{
  v17 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  (*(*(v0 + 216) + 16))(v1, *(v0 + 184) + *(*(v0 + 256) + 72), *(v0 + 208));
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = -2;
  }

  else
  {
    v8 = *(v0 + 224);
    v9 = *(v0 + 200);
    (*(*(v0 + 240) + 40))(v15, v9);
    v4 = v15[0];
    v5 = v15[1];
    v6 = v15[2];
    v7 = v16;
    (*(v3 + 8))(v8, v9);
  }

  v10 = *(v0 + 408);
  v11 = *(v0 + 248);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 128) = *(v0 + 232);
  *(v0 + 144) = v11;
  *(v0 + 416) = type metadata accessor for MLS.XPCClientCoordinator();
  *(v0 + 152) = v4;
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  *(v0 + 176) = v7;

  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  *v12 = v0;
  v12[1] = MLS.Client.__allocating_init(configuration:);
  v13 = *(v0 + 408);

  return MLS.XPCClientCoordinator.__allocating_init(clientIdentifier:selfMember:clientEventDeliverer:)(v12, v0 + 152, v13);
}

{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = MLS.Client.__allocating_init(configuration:);
  }

  else
  {
    v3 = MLS.Client.__allocating_init(configuration:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v0[5] = v0[52];
  v0[6] = &protocol witness table for MLS.XPCClientCoordinator<A, B>;
  v0[2] = v1;
  (*(v6 + 16))(v3, v4, v5);

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), v2, 0);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 192);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  MLS.Client.init(coordinator:logger:)((v0 + 16), v1);
  *(v0 + 464) = v5;

  return MEMORY[0x2822009F8](MLS.Client.__allocating_init(configuration:), v5, 0);
}

{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v14 = v0[34];
  v15 = v0[28];
  v10 = v0[23];

  v4(v10, v9);
  (*(v6 + 8))(v3, v7);

  v11 = v0[1];
  v12 = v0[58];

  return v11(v12);
}

{
  v1 = v0[51];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[23];

  v3(v8, v6);
  (*(v5 + 8))(v2, v4);
  v9 = v0[55];
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[34];
  v13 = v0[28];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[23];

  v4(v9, v7);
  (*(v6 + 8))(v3, v5);
  v10 = v0[57];
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[34];
  v14 = v0[28];

  v15 = v0[1];

  return v15();
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *(*v5 + 88);
  v8 = type metadata accessor for Optional();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = *(v7 + 104);
  v6[13] = type metadata accessor for MLS.GroupCreationContext_v2();
  v11 = type metadata accessor for Optional();
  v6[14] = v11;
  v12 = *(v11 - 8);
  v6[15] = v12;
  v13 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for MLS.GroupCreationContext();
  v14 = type metadata accessor for Optional();
  v6[21] = v14;
  v15 = *(v14 - 8);
  v6[22] = v15;
  v16 = *(v15 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.createGroup(identifier:otherMembers:contextV2:), v5, 0);
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:contextV2:)()
{
  v65 = v0;
  v1 = v0[7];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v64 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v64);
    _os_log_impl(&dword_264F1F000, v3, v4, "legacy createGroupV2 called { groupIdentifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0 + 14;
  v10 = v0[19];
  v12 = v0 + 13;
  v11 = v0[13];
  v63 = *(v0[15] + 16);
  v63(v10, v0[6], v0[14]);
  v13 = *(v11 - 8);
  v62 = *(v13 + 48);
  v14 = v62(v10, 1, v11);
  v15 = v0[19];
  if (v14 == 1)
  {
    (*(v0[15] + 8))(v15, v0[14]);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v16 = *v12;
    v60 = v15[1];
    v61 = *v15;
    v17 = *(v13 + 8);

    v17(v15, v16);
    v12 = v0 + 13;
  }

  v18 = v13;
  v19 = v0[18];
  v20 = v0[13];
  v21 = v63;
  v63(v19, v0[6], v0[14]);
  v22 = v62;
  v23 = v62(v19, 1, v20);
  v24 = v0[18];
  if (v23 == 1)
  {
    v25 = v0[11];
    v26 = v0[8];
    (*(v0[15] + 8))(v24, v0[14]);
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  else
  {
    v27 = v0[13];
    v28 = v0[18];
    (*(v0[10] + 16))(v0[11], v24 + *(v27 + 36), v0[9]);
    (*(v18 + 8))(v28, v27);
  }

  v29 = v0[17];
  v30 = v0[13];
  v63(v29, v0[6], v0[14]);
  v31 = v62(v29, 1, v30);
  v32 = v0[17];
  if (v31 == 1)
  {
    (*(v0[15] + 8))(v32, v0[14]);
    v33 = 0;
  }

  else
  {
    v34 = *v12;
    v33 = *(v32 + *(*v12 + 40));
    v35 = v18;
    v36 = *(v18 + 8);
    v37 = v0[17];

    v36(v37, v34);
    v18 = v35;
    v22 = v62;
    v21 = v63;
  }

  v38 = v0[16];
  v40 = v0[13];
  v39 = v0[14];
  v41 = v0[6];
  v64 = v33;
  v21(v38, v41, v39);
  if (v22(v38, 1, v40) == 1)
  {
    v42 = 0;
    v18 = v0[15];
    v43 = 0xF000000000000000;
  }

  else
  {
    v44 = (v0[16] + *(v0[13] + 44));
    v42 = *v44;
    v43 = v44[1];
    outlined copy of Data?(*v44, v43);
    v9 = v0 + 13;
  }

  v45 = *v9;
  v46 = v0[23];
  v47 = v0[20];
  v49 = v0[11];
  v48 = v0[12];
  v50 = v0[8];
  (*(v18 + 8))(v0[16], v45);
  v51 = MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:)(v61, v60, v49, &v64, v42, v43, v46);
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47, v51);
  v52 = swift_task_alloc();
  v0[24] = v52;
  *v52 = v0;
  v52[1] = MLS.Client.createGroup(identifier:otherMembers:contextV2:);
  v53 = v0[23];
  v54 = v0[7];
  v55 = v0[4];
  v56 = v0[5];
  v57 = v0[2];
  v58 = v0[3];

  return MLS.Client.createGroup(identifier:otherMembers:context:)(v57, v58, v55, v56, v53);
}

{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *v1;
  v6[25] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[7];

    return MEMORY[0x2822009F8](MLS.Client.createGroup(identifier:otherMembers:contextV2:), v7, 0);
  }

  else
  {
    v8 = v6[23];
    v10 = v6[18];
    v9 = v6[19];
    v12 = v6[16];
    v11 = v6[17];
    v13 = v6[11];

    v14 = v6[1];

    return v14();
  }
}

{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[31] = a5;
  v6[32] = v5;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v7 = *v5;
  v6[33] = *v5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[36] = v10;
  v11 = *(v10 - 8);
  v6[37] = v11;
  v12 = *(v11 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = *(v7 + 88);
  v6[40] = *(v7 + 104);
  v6[41] = type metadata accessor for MLS.GroupCreationContext();
  v13 = type metadata accessor for Optional();
  v6[42] = v13;
  v14 = *(v13 - 8);
  v6[43] = v14;
  v15 = *(v14 + 64) + 15;
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.createGroup(identifier:otherMembers:context:), v5, 0);
}

uint64_t MLS.Client.createGroup(identifier:otherMembers:context:)()
{
  v93 = v0;
  *(v0 + 208) = *(v0 + 240);
  v1 = *(*(v0 + 264) + 80);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v2 = *(v0 + 256);
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 240);
    if (v7)
    {
      v10 = *(v0 + 224);
      v9 = *(v0 + 232);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v92[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v92);
      *(v11 + 12) = 2080;
      v13 = MEMORY[0x266754630](v8, v1);
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v92);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_264F1F000, v5, v6, "createGroup failed: no other members specified { groupIdentifier: %s, otherMembers: %s }", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v11, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v31 = 12;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    v32 = *(v0 + 352);
    v33 = *(v0 + 304);
    v35 = *(v0 + 272);
    v34 = *(v0 + 280);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v18 = *(v0 + 344);
    v17 = *(v0 + 352);
    v20 = *(v0 + 328);
    v19 = *(v0 + 336);
    v21 = *(v0 + 248);
    v22 = swift_allocObject();
    *(v0 + 360) = v22;
    (*(v18 + 16))(v17, v21, v19);
    v23 = *(v20 - 8);
    if ((*(v23 + 48))(v17, 1, v20) == 1)
    {
      v25 = *(v0 + 296);
      v24 = *(v0 + 304);
      v26 = *(v0 + 288);
      (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
      UUID.init()();
      v27 = UUID.uuidString.getter();
      v29 = v28;
      (*(v25 + 8))(v24, v26);
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v22 + 16) = v27;
      *(v22 + 24) = v29;
      *(v22 + 32) = xmmword_2651B5F50;
      *(v22 + 48) = v30;
      *(v22 + 56) = xmmword_2651B5F50;
      *(v22 + 72) = xmmword_2651B5F50;
    }

    else
    {
      MLS.GroupCreationContext.dataContext.getter(*(v0 + 328), v90);
      (*(v23 + 8))(*(v0 + 352), *(v0 + 328));
      v38 = v90[3];
      *(v22 + 48) = v90[2];
      *(v22 + 64) = v38;
      *(v22 + 80) = v91;
      v39 = v90[1];
      *(v22 + 16) = v90[0];
      *(v22 + 32) = v39;
    }

    v40 = *(v0 + 256);
    v42 = *(v0 + 232);
    v41 = *(v0 + 240);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 240);
    if (v45)
    {
      v48 = *(v0 + 224);
      v47 = *(v0 + 232);
      v49 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v92[0] = v86;
      *v49 = 136315650;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v92);
      *(v49 + 12) = 2080;
      v50 = MEMORY[0x266754630](v46, v1);
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v92);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2080;
      swift_beginAccess();
      v54 = *(v22 + 64);
      *(v0 + 48) = *(v22 + 48);
      *(v0 + 64) = v54;
      *(v0 + 80) = *(v22 + 80);
      v55 = *(v22 + 32);
      *(v0 + 16) = *(v22 + 16);
      *(v0 + 32) = v55;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 88, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v56 = specialized MLS.GroupCreationContext.description.getter();
      v58 = v57;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v92);

      *(v49 + 24) = v59;
      _os_log_impl(&dword_264F1F000, v43, v44, "createGroup called { groupIdentifier: %s, otherMembers: %s, context: %s }", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v86, -1, -1);
      MEMORY[0x266755550](v49, -1, -1);
    }

    else
    {
    }

    v60 = *(v0 + 280);
    v85 = *(v0 + 240);
    v87 = *(v0 + 256);
    v83 = *(v0 + 272);
    v84 = *(v0 + 232);
    swift_beginAccess();
    Date.init()();
    v61 = type metadata accessor for MetricCollector.Event();
    v62 = *(v61 + 20);
    v63 = type metadata accessor for Date();
    v64 = *(*(v63 - 8) + 56);
    v64(v60 + v62, 1, 1, v63);
    v65 = *(*(v61 - 8) + 56);
    v65(v60, 0, 1, v61);
    specialized Dictionary.subscript.setter(v60, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v64(v60 + *(v61 + 20), 1, 1, v63);
    v65(v60, 0, 1, v61);
    specialized Dictionary.subscript.setter(v60, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v64(v60 + *(v61 + 20), 1, 1, v63);
    v65(v60, 0, 1, v61);
    specialized Dictionary.subscript.setter(v60, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v66 = type metadata accessor for TaskPriority();
    (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
    v67 = one-time initialization token for shared;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = *(v0 + 312);
    v88 = *(v0 + 320);
    v89 = *(v0 + 272);
    v69 = *(v0 + 256);
    v70 = *(v0 + 232);
    v71 = *(v0 + 240);
    v72 = *(v0 + 224);
    v73 = static MLSActor.shared;
    v74 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v75 = swift_allocObject();
    v75[2] = v73;
    v75[3] = v74;
    v75[4] = v22;
    v75[5] = v71;
    v75[6] = v69;
    v75[7] = v72;
    v75[8] = v70;
    v76 = type metadata accessor for MLS.GroupCreationProcessedContext();

    v77 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v89, &async function pointer to partial apply for closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:), v75);
    *(v0 + 368) = v77;
    v78 = *(MEMORY[0x277D857C8] + 4);
    v79 = swift_task_alloc();
    *(v0 + 376) = v79;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v79 = v0;
    v79[1] = MLS.Client.createGroup(identifier:otherMembers:context:);
    v81 = *(v0 + 216);
    v82 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v81, v77, v76, v80, v82);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 256);
  if (v0)
  {
    v6 = MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    v6 = MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[45];
  v1 = v0[46];

  v3 = v0[48];
  v4 = v0[44];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[142] = a8;
  v8[141] = a7;
  v8[140] = a6;
  v8[139] = a5;
  v8[138] = a4;
  v8[137] = a1;
  v8[143] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[144] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  *(v0 + 1088) = v3;
  v6 = swift_task_alloc();
  v6[2] = v1[10];
  v7 = v1[11];
  *(v0 + 1160) = v7;
  v6[3] = v7;
  v6[4] = v1[12];
  v8 = v1[13];
  *(v0 + 1168) = v8;
  v6[5] = v8;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:), v6, v9, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  *(v0 + 1176) = v12;

  v13 = v2[17];
  v14 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v13);
  swift_beginAccess();
  *(v0 + 656) = *(v4 + 16);
  v15 = *(v4 + 32);
  v16 = *(v4 + 48);
  v17 = *(v4 + 64);
  *(v0 + 720) = *(v4 + 80);
  *(v0 + 688) = v16;
  *(v0 + 704) = v17;
  *(v0 + 672) = v15;
  v19 = *(v4 + 48);
  v18 = *(v4 + 64);
  v20 = *(v4 + 32);
  *(v0 + 792) = *(v4 + 80);
  *(v0 + 760) = v19;
  *(v0 + 776) = v18;
  *(v0 + 744) = v20;
  *(v0 + 728) = *(v4 + 16);
  v21 = *(v14 + 16);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 656, v0 + 800, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v27 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 1184) = v23;
  *v23 = v0;
  v23[1] = closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:);
  v24 = *(v0 + 1136);
  v25 = *(v0 + 1128);

  return v27(v0 + 16, v25, v24, v12, v0 + 728, v13, v14);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 728;
  v5 = *(*v1 + 1184);
  v6 = *v1;
  *(*v1 + 1192) = v0;

  v7 = *(v2 + 1176);
  v8 = *(v2 + 1152);
  if (v0)
  {
    *(v3 + 872) = *v4;
    v9 = *(v4 + 16);
    v10 = *(v4 + 32);
    v11 = *(v4 + 48);
    *(v3 + 936) = *(v4 + 64);
    *(v3 + 904) = v10;
    *(v3 + 920) = v11;
    *(v3 + 888) = v9;
    outlined destroy of NSObject?(v3 + 872, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v12 = closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  else
  {
    *(v3 + 944) = *v4;
    v13 = *(v4 + 16);
    v14 = *(v4 + 32);
    v15 = *(v4 + 48);
    *(v3 + 1008) = *(v4 + 64);
    *(v3 + 976) = v14;
    *(v3 + 992) = v15;
    *(v3 + 960) = v13;
    outlined destroy of NSObject?(v3 + 944, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v12 = closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:);
  }

  return MEMORY[0x2822009F8](v12, v8, 0);
}

{
  v38 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1104);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v37[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v37);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "createGroup finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = *(v0 + 1192);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  v14 = *(v0 + 1096);
  v15._countAndFlagsBits = 0x6E61487473726946;
  v15._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v15);
  v17 = *(v0 + 80);
  v16 = *(v0 + 96);
  v18 = *(v0 + 64);
  *(v0 + 208) = v17;
  *(v0 + 224) = v16;
  v19 = *(v0 + 96);
  v21 = *(v0 + 112);
  v20 = *(v0 + 128);
  *(v0 + 240) = v21;
  *(v0 + 256) = v20;
  v22 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v22;
  v23 = *(v0 + 64);
  v25 = *(v0 + 16);
  v24 = *(v0 + 32);
  v26 = *(v0 + 48);
  *(v0 + 176) = v26;
  *(v0 + 192) = v23;
  v37[4] = v17;
  v37[5] = v19;
  v27 = *(v0 + 128);
  v37[6] = v21;
  v37[7] = v27;
  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = v18;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 272, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  MLS.GroupCreationProcessedContext.init(dataContext:)(v37, v13, v12, v14);
  v28 = *(v0 + 96);
  if (v11)
  {
    *(v0 + 464) = *(v0 + 80);
    *(v0 + 480) = v28;
    v29 = *(v0 + 128);
    *(v0 + 496) = *(v0 + 112);
    *(v0 + 512) = v29;
    v30 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v30;
    v31 = *(v0 + 64);
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 448) = v31;
    outlined destroy of NSObject?(v0 + 400, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 592) = *(v0 + 80);
    *(v0 + 608) = v28;
    v33 = *(v0 + 128);
    *(v0 + 624) = *(v0 + 112);
    *(v0 + 640) = v33;
    v34 = *(v0 + 32);
    *(v0 + 528) = *(v0 + 16);
    *(v0 + 544) = v34;
    v35 = *(v0 + 64);
    *(v0 + 560) = *(v0 + 48);
    *(v0 + 576) = v35;
    outlined destroy of NSObject?(v0 + 528, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  v32 = *(v0 + 8);

  return v32();
}

{
  v1 = *(v0 + 1192);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *v6;
  v7[9] = *(*v6 + 88);
  v9 = type metadata accessor for Optional();
  v7[10] = v9;
  v10 = *(v9 - 8);
  v7[11] = v10;
  v11 = *(v10 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = *(v8 + 104);
  v7[14] = type metadata accessor for MLS.GroupCreationContext_v2();
  v12 = type metadata accessor for Optional();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = type metadata accessor for MLS.GroupCreationContext();
  v15 = type metadata accessor for Optional();
  v7[22] = v15;
  v16 = *(v15 - 8);
  v7[23] = v16;
  v17 = *(v16 + 64) + 15;
  v7[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:), v6, 0);
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:)()
{
  v66 = v0;
  v1 = v0[8];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v65);
    _os_log_impl(&dword_264F1F000, v3, v4, "legacy joinGroupV2 called { groupIdentifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0 + 15;
  v10 = v0[20];
  v12 = v0 + 14;
  v11 = v0[14];
  v64 = *(v0[16] + 16);
  v64(v10, v0[7], v0[15]);
  v13 = *(v11 - 8);
  v63 = *(v13 + 48);
  v14 = v63(v10, 1, v11);
  v15 = v0[20];
  if (v14 == 1)
  {
    (*(v0[16] + 8))(v15, v0[15]);
    v61 = 0;
    v62 = 0;
  }

  else
  {
    v16 = *v12;
    v61 = v15[1];
    v62 = *v15;
    v17 = *(v13 + 8);

    v17(v15, v16);
    v12 = v0 + 14;
  }

  v18 = v13;
  v19 = v0[19];
  v20 = v0[14];
  v21 = v64;
  v64(v19, v0[7], v0[15]);
  v22 = v63;
  v23 = v63(v19, 1, v20);
  v24 = v0[19];
  if (v23 == 1)
  {
    v25 = v0[12];
    v26 = v0[9];
    (*(v0[16] + 8))(v24, v0[15]);
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  else
  {
    v27 = v0[14];
    v28 = v0[19];
    (*(v0[11] + 16))(v0[12], v24 + *(v27 + 36), v0[10]);
    (*(v18 + 8))(v28, v27);
  }

  v29 = v0[18];
  v30 = v0[14];
  v64(v29, v0[7], v0[15]);
  v31 = v63(v29, 1, v30);
  v32 = v0[18];
  if (v31 == 1)
  {
    (*(v0[16] + 8))(v32, v0[15]);
    v33 = 0;
  }

  else
  {
    v34 = *v12;
    v33 = *(v32 + *(*v12 + 40));
    v35 = v18;
    v36 = *(v18 + 8);
    v37 = v0[18];

    v36(v37, v34);
    v18 = v35;
    v22 = v63;
    v21 = v64;
  }

  v38 = v0[17];
  v40 = v0[14];
  v39 = v0[15];
  v41 = v0[7];
  v65 = v33;
  v21(v38, v41, v39);
  if (v22(v38, 1, v40) == 1)
  {
    v42 = 0;
    v18 = v0[16];
    v43 = 0xF000000000000000;
  }

  else
  {
    v44 = (v0[17] + *(v0[14] + 44));
    v42 = *v44;
    v43 = v44[1];
    outlined copy of Data?(*v44, v43);
    v9 = v0 + 14;
  }

  v45 = *v9;
  v46 = v0[24];
  v47 = v0[21];
  v49 = v0[12];
  v48 = v0[13];
  v50 = v0[9];
  (*(v18 + 8))(v0[17], v45);
  v51 = MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:)(v62, v61, v49, &v65, v42, v43, v46);
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47, v51);
  v52 = swift_task_alloc();
  v0[25] = v52;
  *v52 = v0;
  v52[1] = MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:);
  v53 = v0[24];
  v54 = v0[8];
  v55 = v0[5];
  v56 = v0[6];
  v57 = v0[3];
  v58 = v0[4];
  v59 = v0[2];

  return MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(v59, v57, v58, v55, v56, v53);
}

{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *v1;
  v6[26] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[8];

    return MEMORY[0x2822009F8](MLS.Client.joinGroup(identifier:otherMembers:welcome:contextV2:), v7, 0);
  }

  else
  {
    v8 = v6[24];
    v10 = v6[19];
    v9 = v6[20];
    v12 = v6[17];
    v11 = v6[18];
    v13 = v6[12];

    v14 = v6[1];

    return v14();
  }
}

{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[12];

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  v8 = *v6;
  v7[34] = *(*v6 + 80);
  v7[35] = v8[12];
  v9 = type metadata accessor for MLS.IncomingMessage();
  v7[36] = v9;
  v10 = *(v9 - 8);
  v7[37] = v10;
  v7[38] = *(v10 + 64);
  v7[39] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[40] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v7[41] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v7[42] = v13;
  v14 = *(v13 - 8);
  v7[43] = v14;
  v15 = *(v14 + 64) + 15;
  v7[44] = swift_task_alloc();
  v7[45] = v8[11];
  v7[46] = v8[13];
  v7[47] = type metadata accessor for MLS.GroupCreationContext();
  v16 = type metadata accessor for Optional();
  v7[48] = v16;
  v17 = *(v16 - 8);
  v7[49] = v17;
  v18 = *(v17 + 64) + 15;
  v7[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v6, 0);
}

uint64_t MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v111 = v0;
  *(v0 + 208) = *(v0 + 240);
  v1 = *(v0 + 272);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v2 = *(v0 + 264);
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 272);
      v9 = *(v0 + 232);
      v8 = *(v0 + 240);
      v10 = *(v0 + 224);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v110[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v110);
      *(v11 + 12) = 2080;
      v13 = MEMORY[0x266754630](v8, v7);
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v110);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_264F1F000, v5, v6, "joinGroup failed: no other members specified { groupIdentifier: %s, otherMembers: %s }", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v11, -1, -1);
    }

    else
    {
      v31 = *(v0 + 240);
    }

    lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
    swift_allocError();
    *v32 = 12;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    swift_willThrow();
    v33 = *(v0 + 400);
    v34 = *(v0 + 352);
    v36 = *(v0 + 320);
    v35 = *(v0 + 328);
    v37 = *(v0 + 312);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);
    v20 = *(v0 + 376);
    v19 = *(v0 + 384);
    v21 = *(v0 + 256);
    v22 = swift_allocObject();
    *(v0 + 408) = v22;
    (*(v18 + 16))(v17, v21, v19);
    v23 = *(v20 - 8);
    if ((*(v23 + 48))(v17, 1, v20) == 1)
    {
      v25 = *(v0 + 344);
      v24 = *(v0 + 352);
      v26 = *(v0 + 336);
      (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
      UUID.init()();
      v27 = UUID.uuidString.getter();
      v29 = v28;
      (*(v25 + 8))(v24, v26);
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v22 + 16) = v27;
      *(v22 + 24) = v29;
      *(v22 + 32) = xmmword_2651B5F50;
      *(v22 + 48) = v30;
      *(v22 + 56) = xmmword_2651B5F50;
      *(v22 + 72) = xmmword_2651B5F50;
    }

    else
    {
      MLS.GroupCreationContext.dataContext.getter(*(v0 + 376), v108);
      (*(v23 + 8))(*(v0 + 400), *(v0 + 376));
      v40 = v108[3];
      *(v22 + 48) = v108[2];
      *(v22 + 64) = v40;
      *(v22 + 80) = v109;
      v41 = v108[1];
      *(v22 + 16) = v108[0];
      *(v22 + 32) = v41;
    }

    v42 = *(v0 + 264);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v104 = v46;
      v47 = *(v0 + 272);
      v49 = *(v0 + 232);
      v48 = *(v0 + 240);
      v50 = *(v0 + 224);
      v51 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v110[0] = v101;
      *v51 = 136315650;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v110);
      *(v51 + 12) = 2080;
      v52 = MEMORY[0x266754630](v48, v47);
      v54 = v53;

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v110);

      *(v51 + 14) = v55;
      *(v51 + 22) = 2080;
      swift_beginAccess();
      v56 = *(v22 + 64);
      *(v0 + 48) = *(v22 + 48);
      *(v0 + 64) = v56;
      *(v0 + 80) = *(v22 + 80);
      v57 = *(v22 + 32);
      *(v0 + 16) = *(v22 + 16);
      *(v0 + 32) = v57;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 88, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v58 = specialized MLS.GroupCreationContext.description.getter();
      v60 = v59;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v110);

      *(v51 + 24) = v61;
      _os_log_impl(&dword_264F1F000, v45, v104, "joinGroup called { groupIdentifier: %s, otherMembers: %s, context: %s }", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v101, -1, -1);
      MEMORY[0x266755550](v51, -1, -1);
    }

    else
    {
      v62 = *(v0 + 240);
    }

    v63 = *(v0 + 328);
    v89 = *(v0 + 320);
    v91 = *(v0 + 296);
    v95 = *(v0 + 288);
    v97 = *(v0 + 312);
    v93 = *(v0 + 248);
    v102 = *(v0 + 240);
    v105 = *(v0 + 264);
    v99 = *(v0 + 232);
    swift_beginAccess();
    Date.init()();
    v64 = type metadata accessor for MetricCollector.Event();
    v65 = *(v64 + 20);
    v66 = type metadata accessor for Date();
    v67 = *(*(v66 - 8) + 56);
    v67(v63 + v65, 1, 1, v66);
    v68 = *(*(v64 - 8) + 56);
    v68(v63, 0, 1, v64);
    specialized Dictionary.subscript.setter(v63, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v67(v63 + *(v64 + 20), 1, 1, v66);
    v68(v63, 0, 1, v64);
    specialized Dictionary.subscript.setter(v63, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v67(v63 + *(v64 + 20), 1, 1, v66);
    v68(v63, 0, 1, v64);
    specialized Dictionary.subscript.setter(v63, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v89, 1, 1, v69);
    (*(v91 + 16))(v97, v93, v95);
    v70 = one-time initialization token for shared;

    v106 = v22;
    if (v70 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 360);
    v107 = *(v0 + 320);
    v72 = *(v0 + 296);
    v73 = *(v0 + 304);
    v90 = *(v0 + 280);
    v92 = *(v0 + 368);
    v74 = *(v0 + 272);
    v96 = *(v0 + 264);
    v98 = *(v0 + 288);
    v88 = *(v0 + 240);
    v100 = *(v0 + 232);
    v103 = *(v0 + 312);
    v94 = *(v0 + 224);
    v75 = static MLSActor.shared;
    v76 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v77 = (*(v72 + 80) + 80) & ~*(v72 + 80);
    v78 = (v73 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 2) = v75;
    *(v79 + 3) = v76;
    *(v79 + 4) = v74;
    *(v79 + 5) = v71;
    *(v79 + 6) = v90;
    *(v79 + 7) = v92;
    *(v79 + 8) = v106;
    *(v79 + 9) = v88;
    (*(v72 + 32))(&v79[v77], v103, v98);
    *&v79[v78] = v96;
    v80 = &v79[(v78 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v80 = v94;
    *(v80 + 1) = v100;
    v81 = type metadata accessor for MLS.GroupCreationProcessedContext();

    v82 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v107, &async function pointer to partial apply for closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v79);
    *(v0 + 416) = v82;
    v83 = *(MEMORY[0x277D857C8] + 4);
    v84 = swift_task_alloc();
    *(v0 + 424) = v84;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v84 = v0;
    v84[1] = MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
    v86 = *(v0 + 216);
    v87 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v86, v82, v81, v85, v87);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    v6 = MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[51];
  v1 = v0[52];

  v3 = v0[54];
  v4 = v0[50];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[159] = v12;
  v8[158] = a8;
  v8[157] = a7;
  v8[156] = a6;
  v8[155] = a5;
  v8[154] = a4;
  v8[153] = a1;
  v8[160] = *a7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[161] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:)()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1256);
  v30 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1232);
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  *(v0 + 1216) = v3;
  v6 = swift_task_alloc();
  v6[2] = v1[10];
  v7 = v1[11];
  *(v0 + 1296) = v7;
  v6[3] = v7;
  v6[4] = v1[12];
  v8 = v1[13];
  *(v0 + 1304) = v8;
  v6[5] = v8;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:), v6, v9, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  *(v0 + 1312) = v12;

  v13 = type metadata accessor for MLS.IncomingMessage();
  MLS.IncomingMessage.allMemberIncomingMessage.getter(v13, v0 + 1016);
  v15 = v2[17];
  v14 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v15);
  v16 = *(v0 + 1032);
  *(v0 + 1080) = *(v0 + 1016);
  *(v0 + 1096) = v16;
  *(v0 + 1112) = *(v0 + 1048);
  *(v0 + 1122) = *(v0 + 1058);
  swift_beginAccess();
  *(v0 + 656) = *(v4 + 16);
  v17 = *(v4 + 32);
  v18 = *(v4 + 48);
  v19 = *(v4 + 64);
  *(v0 + 720) = *(v4 + 80);
  *(v0 + 688) = v18;
  *(v0 + 704) = v19;
  *(v0 + 672) = v17;
  v21 = *(v4 + 48);
  v20 = *(v4 + 64);
  v22 = *(v4 + 32);
  *(v0 + 792) = *(v4 + 80);
  *(v0 + 760) = v21;
  *(v0 + 776) = v20;
  *(v0 + 744) = v22;
  *(v0 + 728) = *(v4 + 16);
  v23 = *(v14 + 24);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 656, v0 + 800, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v29 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 1320) = v25;
  *v25 = v0;
  v25[1] = closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  v26 = *(v0 + 1272);
  v27 = *(v0 + 1264);

  return v29(v0 + 16, v27, v26, v12, v0 + 1080, v0 + 728, v15, v14);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 728;
  v5 = *(*v1 + 1320);
  v6 = *v1;
  *(*v1 + 1328) = v0;

  v7 = *(v2 + 1312);
  v8 = *(v2 + 1288);
  if (v0)
  {
    *(v3 + 872) = *v4;
    v9 = *(v4 + 16);
    v10 = *(v4 + 32);
    v11 = *(v4 + 48);
    *(v3 + 936) = *(v4 + 64);
    *(v3 + 904) = v10;
    *(v3 + 920) = v11;
    *(v3 + 888) = v9;
    outlined destroy of NSObject?(v3 + 872, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v12 = closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  else
  {
    *(v3 + 944) = *v4;
    v13 = *(v4 + 16);
    v14 = *(v4 + 32);
    v15 = *(v4 + 48);
    *(v3 + 1008) = *(v4 + 64);
    *(v3 + 976) = v14;
    *(v3 + 992) = v15;
    *(v3 + 960) = v13;
    outlined destroy of NSObject?(v3 + 944, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);

    v12 = closure #1 in MLS.Client.joinGroup(identifier:otherMembers:welcome:context:);
  }

  return MEMORY[0x2822009F8](v12, v8, 0);
}

{
  v38 = v0;
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1232);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v37[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v37);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "joinGroup finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = *(v0 + 1328);
  v12 = *(v0 + 1304);
  v13 = *(v0 + 1296);
  v14 = *(v0 + 1224);
  v15._countAndFlagsBits = 0x6E61487473726946;
  v15._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v15);
  v17 = *(v0 + 80);
  v16 = *(v0 + 96);
  v18 = *(v0 + 64);
  *(v0 + 208) = v17;
  *(v0 + 224) = v16;
  v19 = *(v0 + 96);
  v21 = *(v0 + 112);
  v20 = *(v0 + 128);
  *(v0 + 240) = v21;
  *(v0 + 256) = v20;
  v22 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v22;
  v23 = *(v0 + 64);
  v25 = *(v0 + 16);
  v24 = *(v0 + 32);
  v26 = *(v0 + 48);
  *(v0 + 176) = v26;
  *(v0 + 192) = v23;
  v37[4] = v17;
  v37[5] = v19;
  v27 = *(v0 + 128);
  v37[6] = v21;
  v37[7] = v27;
  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = v18;
  outlined init with copy of MLS.OutgoingEventState?(v0 + 144, v0 + 272, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  MLS.GroupCreationProcessedContext.init(dataContext:)(v37, v13, v12, v14);
  v28 = *(v0 + 96);
  if (v11)
  {
    *(v0 + 464) = *(v0 + 80);
    *(v0 + 480) = v28;
    v29 = *(v0 + 128);
    *(v0 + 496) = *(v0 + 112);
    *(v0 + 512) = v29;
    v30 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v30;
    v31 = *(v0 + 64);
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 448) = v31;
    outlined destroy of NSObject?(v0 + 400, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  else
  {
    *(v0 + 592) = *(v0 + 80);
    *(v0 + 608) = v28;
    v33 = *(v0 + 128);
    *(v0 + 624) = *(v0 + 112);
    *(v0 + 640) = v33;
    v34 = *(v0 + 32);
    *(v0 + 528) = *(v0 + 16);
    *(v0 + 544) = v34;
    v35 = *(v0 + 64);
    *(v0 + 560) = *(v0 + 48);
    *(v0 + 576) = v35;
    outlined destroy of NSObject?(v0 + 528, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  }

  outlined destroy of NSObject?(v0 + 1016, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v32 = *(v0 + 8);

  return v32();
}

{
  outlined destroy of NSObject?(v0 + 1016, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v1 = *(v0 + 1328);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLS.Client.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = *(v6 + 88);
  v5[12] = *(v6 + 104);
  v5[13] = type metadata accessor for MLS.GroupDeletionContext();
  v11 = type metadata accessor for Optional();
  v5[14] = v11;
  v12 = *(v11 - 8);
  v5[15] = v12;
  v13 = *(v12 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.delete(group:context:), v4, 0);
}

uint64_t MLS.Client.delete(group:context:)()
{
  v53 = v0;
  v1 = v0[16];
  v2 = v0[13];
  (*(v0[15] + 16))(v1, v0[5], v0[14]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[8];
    (*(v0[15] + 8))(v0[16], v0[14]);
    UUID.init()();
    v7 = UUID.uuidString.getter();
    v8 = v5;
    v10 = v9;
    (*(v4 + 8))(v8, v6);
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    MLS.GroupDeletionContext.dataContext.getter(v0[13], v52);
    v7 = v52[0];
    v10 = v52[1];
    v11 = v52[2];
    v12 = v52[3];
    (*(v3 + 8))(v0[16], v0[13]);
  }

  v0[18] = v11;
  v0[19] = v12;
  v0[17] = v10;
  v13 = v0[6];
  v14 = v0[4];

  outlined copy of Data?(v11, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  outlined consume of Data?(v11, v12);
  v51 = v7;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[3];
    v18 = v0[4];
    v19 = swift_slowAlloc();
    v20 = v12;
    v21 = swift_slowAlloc();
    v52[0] = v21;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v52);
    *(v19 + 12) = 2080;
    v22 = specialized MLS.GroupDeletionContext.description.getter(v51, v10, v11, v20);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v52);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_264F1F000, v15, v16, "delete called { groupIdentifier: %s, context: %s }", v19, 0x16u);
    swift_arrayDestroy();
    v25 = v21;
    v12 = v20;
    MEMORY[0x266755550](v25, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v49 = v12;
  v26 = v0[6];
  v27 = v0[7];
  v28 = v0[4];
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);

  outlined copy of Data?(v11, v12);
  v30 = one-time initialization token for shared;

  v31 = v10;
  v48 = v11;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = v0[11];
  v33 = v0[12];
  v34 = v0[6];
  v50 = v0[7];
  v36 = v0[3];
  v35 = v0[4];
  v37 = static MLSActor.shared;
  v38 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v38;
  v39[4] = v34;
  v39[5] = v36;
  v39[6] = v35;
  v39[7] = v51;
  v39[8] = v31;
  v39[9] = v48;
  v39[10] = v49;
  v40 = type metadata accessor for MLS.GroupDeletionProcessedContext();

  v41 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v50, &async function pointer to partial apply for closure #1 in MLS.Client.delete(group:context:), v39);
  v0[20] = v41;
  v42 = *(MEMORY[0x277D857C8] + 4);
  v43 = swift_task_alloc();
  v0[21] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v43 = v0;
  v43[1] = MLS.Client.delete(group:context:);
  v45 = v0[2];
  v46 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v45, v41, v40, v44, v46);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = MLS.Client.delete(group:context:);
  }

  else
  {
    v6 = MLS.Client.delete(group:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[10];
  v7 = v0[7];

  outlined consume of Data?(v3, v2);

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];

  outlined consume of Data?(v3, v2);
  v5 = v0[22];
  v6 = v0[16];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in MLS.Client.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v12;
  v8[15] = v13;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  v8[16] = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[17] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.delete(group:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.delete(group:context:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v12 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  *(v0 + 16) = v12;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v6 = *(v5 + 32);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.Client.delete(group:context:);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);

  return v13(v0 + 48, v9, v10, v0 + 16, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = closure #1 in MLS.Client.delete(group:context:);
  }

  else
  {
    v5 = closure #1 in MLS.Client.delete(group:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v19 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];

  outlined copy of Data?(v2, v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v18);
    _os_log_impl(&dword_264F1F000, v7, v8, "delete finished { identifier: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[8];
  v18[0] = v5;
  v18[1] = v6;
  MLS.GroupDeletionProcessedContext.init(dataContext:)(v18, *(v14 + 88), *(v14 + 104), v15);
  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 152);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 56) = v8;
  v9 = *(v8 - 8);
  *(v5 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = *a4;

  return MEMORY[0x2822009F8](MLS.Client.group(identifier:context:), v4, 0);
}

uint64_t MLS.Client.group(identifier:context:)()
{
  v38 = v0;
  if (v0[11])
  {
    v1 = v0[10];
    v2 = v0[11];
  }

  else
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    UUID.init()();
    v1 = UUID.uuidString.getter();
    v2 = v6;
    (*(v4 + 8))(v3, v5);
  }

  v8 = v0[4];
  v7 = v0[5];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[3];
    v11 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v35);
    *(v13 + 12) = 2080;
    v36 = 0;
    v37 = 0xE000000000000000;

    _StringGuts.grow(_:)(33);

    v36 = 0xD00000000000001ELL;
    v37 = 0x80000002651E89B0;
    MEMORY[0x2667545A0](v1, v2);
    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v35);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v9, v10, "group called { groupIdentifier: %s, context: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = one-time initialization token for shared;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = v0[5];
  v21 = v0[6];
  v24 = v0[3];
  v23 = v0[4];
  v25 = static MLSActor.shared;
  v26 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v26;
  v27[4] = v22;
  v27[5] = v24;
  v27[6] = v23;
  v27[7] = v1;
  v27[8] = v2;

  v28 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging3MLSO14KeyPackageInfoV_Tt2g5Tm(0, 0, v21, &async function pointer to partial apply for closure #1 in MLS.Client.group(identifier:context:), v27);
  v0[12] = v28;
  v29 = *(MEMORY[0x277D857C8] + 4);
  v30 = swift_task_alloc();
  v0[13] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v30 = v0;
  v30[1] = MLS.Client.group(identifier:context:);
  v32 = v0[2];
  v33 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v32, v28, &type metadata for MLS.Group, v31, v33);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = MLS.Client.group(identifier:context:);
  }

  else
  {
    v6 = MLS.Client.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t closure #1 in MLS.Client.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[74] = a8;
  v8[73] = a7;
  v8[72] = a6;
  v8[71] = a5;
  v8[70] = a4;
  v8[69] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[75] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.group(identifier:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.group(identifier:context:)()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[70];
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  v0[67] = v2;
  v0[68] = v1;
  v6 = *(v5 + 40);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[76] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.Client.group(identifier:context:);
  v9 = v0[72];
  v10 = v0[71];

  return (v12)(v0 + 2, v10, v9, v0 + 67, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v7 = *v1;
  *(*v1 + 616) = v0;

  v4 = *(v2 + 600);
  if (v0)
  {
    v5 = closure #1 in MLS.Client.group(identifier:context:);
  }

  else
  {
    v5 = closure #1 in MLS.Client.group(identifier:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v38 = v0;
  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 560);
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v1;

  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  outlined destroy of MLS.Group(v0 + 120);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 584);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v30);
    *(v10 + 12) = 2080;
    v12 = *(v0 + 168);
    v13 = *(v0 + 200);
    v35 = *(v0 + 184);
    v36 = v13;
    v37 = *(v0 + 216);
    v14 = *(v0 + 136);
    v31 = *(v0 + 120);
    v32 = v14;
    v33 = *(v0 + 152);
    v34 = v12;
    outlined init with copy of MLS.Group(v0 + 120, v0 + 432);
    v15 = MLS.Group.description.getter();
    v17 = v16;
    v18 = v36;
    *(v0 + 392) = v35;
    *(v0 + 408) = v18;
    *(v0 + 424) = v37;
    v19 = v32;
    *(v0 + 328) = v31;
    *(v0 + 344) = v19;
    v20 = v34;
    *(v0 + 360) = v33;
    *(v0 + 376) = v20;
    outlined destroy of MLS.Group(v0 + 328);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v30);

    *(v10 + 14) = v21;
    _os_log_impl(&dword_264F1F000, v6, v7, "group finished { identifier: %s, group: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v22 = *(v0 + 552);
  v23 = *(v0 + 120);
  v24 = *(v0 + 152);
  *(v22 + 16) = *(v0 + 136);
  *(v22 + 32) = v24;
  *v22 = v23;
  v25 = *(v0 + 168);
  v26 = *(v0 + 184);
  v27 = *(v0 + 200);
  *(v22 + 96) = *(v0 + 216);
  *(v22 + 64) = v26;
  *(v22 + 80) = v27;
  *(v22 + 48) = v25;
  v28 = *(v0 + 8);

  return v28();
}

{
  v1 = *(v0 + 616);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.update(groupDetails:forGroup:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = *a1;

  return MEMORY[0x2822009F8](MLS.Client.update(groupDetails:forGroup:), v3, 0);
}

uint64_t MLS.Client.update(groupDetails:forGroup:)()
{
  v43 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  outlined copy of Data?(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[6];
    v7 = v0[7];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v40);
    *(v11 + 12) = 2080;
    v41 = v8;
    v42 = v7;
    outlined copy of Data?(v8, v7);
    v13 = MLS.GroupDetails.description.getter();
    v15 = v14;
    outlined consume of Data?(v41, v42);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v40);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v5, v6, "updateGroupDetails called { groupIdentifier: %s, groupDetails: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v17 = v0[6];
  v18 = v0[7];
  v20 = v0[4];
  v19 = v0[5];
  v21 = v0[3];
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);

  outlined copy of Data?(v17, v18);
  v23 = one-time initialization token for shared;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = v0[6];
  v24 = v0[7];
  v27 = v0[4];
  v26 = v0[5];
  v29 = v0[2];
  v28 = v0[3];
  v30 = static MLSActor.shared;
  v31 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = v31;
  v32[4] = v27;
  v32[5] = v25;
  v32[6] = v24;
  v32[7] = v29;
  v32[8] = v28;

  v33 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v26, &async function pointer to partial apply for closure #1 in MLS.Client.update(groupDetails:forGroup:), v32);
  v0[8] = v33;
  v34 = *(MEMORY[0x277D857C8] + 4);
  v35 = swift_task_alloc();
  v0[9] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v35 = v0;
  v35[1] = MLS.Client.update(groupDetails:forGroup:);
  v37 = MEMORY[0x277D84950];
  v38 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v36, v33, v38, v36, v37);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 32);

    v6 = MLS.Client.update(groupDetails:forGroup:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = MLS.Client.update(groupDetails:forGroup:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t closure #1 in MLS.Client.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.update(groupDetails:forGroup:), v9, 0);
}

uint64_t closure #1 in MLS.Client.update(groupDetails:forGroup:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  v0[2] = v2;
  v0[3] = v1;
  v6 = *(v5 + 48);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.Client.update(groupDetails:forGroup:);
  v9 = v0[7];
  v10 = v0[8];

  return (v12)(v0 + 2, v9, v10, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = closure #1 in MLS.Client.update(groupDetails:forGroup:);
  }

  else
  {
    v5 = closure #1 in MLS.Client.update(groupDetails:forGroup:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v12 = v0;
  v1 = v0[8];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v11);
    _os_log_impl(&dword_264F1F000, v3, v4, "updateGroupDetails finished { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 88);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 48) = *v3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 64) = v7;
  v8 = *(v7 - 8);
  *(v4 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = *a3;
  *(v4 + 128) = *(a3 + 16);

  return MEMORY[0x2822009F8](MLS.Client.otherMembers(group:context:), v3, 0);
}

uint64_t MLS.Client.otherMembers(group:context:)()
{
  v47 = v0;
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
  }

  else
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    UUID.init()();
    v2 = UUID.uuidString.getter();
    v3 = v7;
    (*(v5 + 8))(v4, v6);
    v1 = 0;
  }

  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v43 = v3;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v44 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v44);
    *(v14 + 12) = 2080;
    v45 = 0;
    v46 = 0xE000000000000000;

    _StringGuts.grow(_:)(62);
    MEMORY[0x2667545A0](0xD000000000000020, 0x80000002651E89D0);
    MEMORY[0x2667545A0](v2, v3);
    MEMORY[0x2667545A0](0xD000000000000019, 0x80000002651E8A00);
    if (v1)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v1)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    MEMORY[0x2667545A0](v16, v17);

    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v44);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v10, v11, "otherMembers called { group: %s, context: %s }", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  v42 = v1;
  v19 = v2;
  v20 = *(v0 + 56);
  v22 = *(v0 + 32);
  v21 = *(v0 + 40);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = one-time initialization token for shared;

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 32);
  v28 = *(v0 + 40);
  v29 = *(v0 + 24);
  v30 = static MLSActor.shared;
  v31 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  *(v32 + 32) = v28;
  *(v32 + 40) = v29;
  *(v32 + 48) = v27;
  *(v32 + 56) = v19;
  *(v32 + 64) = v43;
  *(v32 + 72) = v42 & 1;
  v33 = *(v26 + 80);
  v34 = *(*(v26 + 96) + 24);
  v35 = type metadata accessor for Set();

  v36 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v25, &async function pointer to partial apply for closure #1 in MLS.Client.otherMembers(group:context:), v32);
  *(v0 + 104) = v36;
  v37 = *(MEMORY[0x277D857C8] + 4);
  v38 = swift_task_alloc();
  *(v0 + 112) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v38 = v0;
  v38[1] = MLS.Client.otherMembers(group:context:);
  v40 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v36, v35, v39, v40);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = MLS.Client.otherMembers(group:context:);
  }

  else
  {
    v7 = MLS.Client.otherMembers(group:context:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 33) = v12;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a1;
  *(v8 + 72) = a4;
  *(v8 + 112) = *a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v8 + 120) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.otherMembers(group:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.otherMembers(group:context:)()
{
  v1 = *(v0 + 33);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = v4[17];
  v6 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 56);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = closure #1 in MLS.Client.otherMembers(group:context:);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  return v13(v11, v10, v0 + 16, v5, v6);
}

{
  v32 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[9];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v8 = v0[12];
    v7 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v31);
    *(v9 + 12) = 2080;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v11 = Set.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v31);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v4, v5, "otherMembers finished { identifier: %s, allMembers: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v14 = v0[18];
  v15 = v0[14];
  v0[5] = v0[17];
  v16 = swift_task_alloc();
  v17 = v15[10];
  v16[2] = v17;
  v16[3] = v15[11];
  v18 = v15[12];
  v16[4] = v18;
  v16[5] = v15[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v21 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
  v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.otherMembers(group:context:), v16, v19, v17, v20, v21, MEMORY[0x277D84950], (v0 + 6));
  if (v14)
  {
    v23 = v0[17];

    v24 = v0[6];
  }

  else
  {
    v26 = v22;
    v27 = v0[17];
    v28 = v0[8];

    v0[7] = v26;
    type metadata accessor for Array();
    v29 = *(v18 + 24);
    swift_getWitnessTable();
    *v28 = Set.init<A>(_:)();
  }

  v25 = v0[1];

  return v25();
}

{
  v1 = *(v0 + 144);
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v8 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  v5 = v3[15];
  if (v1)
  {
    v6 = closure #1 in MLS.Client.otherMembers(group:context:);
  }

  else
  {
    v6 = closure #1 in MLS.Client.otherMembers(group:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #1 in closure #1 in MLS.Client.otherMembers(group:context:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *(a1 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v10;
  v17 = v11;
  v12 = *(a4 + 48);
  outlined copy of MLS.AllMember();
  v13 = v18;
  result = v12(v16, a2, a4);
  if (v13)
  {
    *a6 = v13;
  }

  return result;
}

uint64_t MLS.Client.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *v5;
  v6[25] = *v5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v12 = *(v11 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = *(v7 + 88);
  v6[32] = *(v7 + 104);
  v6[33] = type metadata accessor for MLS.GroupOperationContext();
  v13 = type metadata accessor for Optional();
  v6[34] = v13;
  v14 = *(v13 - 8);
  v6[35] = v14;
  v15 = *(v14 + 64) + 15;
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.add(members:toGroup:context:), v5, 0);
}

uint64_t MLS.Client.add(members:toGroup:context:)()
{
  v92 = v0;
  *(v0 + 144) = *(v0 + 160);
  v1 = *(*(v0 + 200) + 80);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      v9 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v89[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v89);
      *(v10 + 12) = 2080;
      v12 = MEMORY[0x266754630](v9, v1);
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v89);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_264F1F000, v5, v6, "addMembers failed: no target members specified { groupIdentifier: %s, otherMembers: %s }", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    else
    {
      v30 = *(v0 + 160);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v31 = 16;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    v32 = *(v0 + 288);
    v33 = *(v0 + 240);
    v35 = *(v0 + 208);
    v34 = *(v0 + 216);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 184);
    v21 = swift_allocObject();
    *(v0 + 296) = v21;
    (*(v17 + 16))(v16, v20, v18);
    v22 = *(v19 - 8);
    if ((*(v22 + 48))(v16, 1, v19) == 1)
    {
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v25 = *(v0 + 224);
      (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
      UUID.init()();
      v26 = UUID.uuidString.getter();
      v28 = v27;
      (*(v24 + 8))(v23, v25);
      v86 = xmmword_2651B5F50;
      v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      MLS.GroupOperationContext.dataContext.getter(*(v0 + 264), v89);
      v26 = v89[0];
      v28 = v89[1];
      v86 = v90;
      v29 = v91;
      (*(v22 + 8))(*(v0 + 288), *(v0 + 264));
    }

    v38 = *(v0 + 192);
    v39 = *(v0 + 176);
    v40 = *(v0 + 160);
    *(v21 + 16) = v26;
    *(v21 + 24) = v28;
    *(v21 + 32) = v86;
    *(v21 + 48) = v29;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v81 = *(v0 + 176);
      v79 = *(v0 + 168);
      v43 = *(v0 + 160);
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89[0] = v84;
      *v44 = 136315650;
      v45 = MEMORY[0x266754630](v43, v1);
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v89);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v89);
      *(v44 + 22) = 2080;
      swift_beginAccess();
      v49 = *(v21 + 32);
      *(v0 + 16) = *(v21 + 16);
      *(v0 + 32) = v49;
      *(v0 + 48) = *(v21 + 48);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v50 = specialized MLS.GroupOperationContext.description.getter();
      v52 = v51;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v89);

      *(v44 + 24) = v53;
      _os_log_impl(&dword_264F1F000, v41, v42, "add called { members: %s, group: %s, context: %s }", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v84, -1, -1);
      MEMORY[0x266755550](v44, -1, -1);
    }

    else
    {
      v54 = *(v0 + 160);
    }

    v55 = *(v0 + 216);
    v80 = *(v0 + 208);
    v82 = *(v0 + 176);
    v83 = *(v0 + 160);
    v85 = *(v0 + 192);
    swift_beginAccess();
    Date.init()();
    v56 = type metadata accessor for MetricCollector.Event();
    v57 = *(v56 + 20);
    v58 = type metadata accessor for Date();
    v59 = *(*(v58 - 8) + 56);
    v59(v55 + v57, 1, 1, v58);
    v60 = *(*(v56 - 8) + 56);
    v60(v55, 0, 1, v56);
    specialized Dictionary.subscript.setter(v55, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v59(v55 + *(v56 + 20), 1, 1, v58);
    v60(v55, 0, 1, v56);
    specialized Dictionary.subscript.setter(v55, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v59(v55 + *(v56 + 20), 1, 1, v58);
    v60(v55, 0, 1, v56);
    specialized Dictionary.subscript.setter(v55, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v80, 1, 1, v61);
    v62 = one-time initialization token for shared;

    v87 = v21;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 248);
    v63 = *(v0 + 256);
    v88 = *(v0 + 208);
    v65 = *(v0 + 192);
    v66 = *(v0 + 168);
    v67 = *(v0 + 176);
    v68 = *(v0 + 160);
    v69 = static MLSActor.shared;
    v70 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v71 = swift_allocObject();
    v71[2] = v69;
    v71[3] = v70;
    v71[4] = v87;
    v71[5] = v68;
    v71[6] = v65;
    v71[7] = v66;
    v71[8] = v67;
    v72 = type metadata accessor for MLS.GroupOperationProcessedContext();

    v73 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v88, &async function pointer to partial apply for closure #1 in MLS.Client.add(members:toGroup:context:), v71);
    *(v0 + 304) = v73;
    v74 = *(MEMORY[0x277D857C8] + 4);
    v75 = swift_task_alloc();
    *(v0 + 312) = v75;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v75 = v0;
    v75[1] = MLS.Client.add(members:toGroup:context:);
    v77 = *(v0 + 152);
    v78 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v77, v73, v72, v76, v78);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = MLS.Client.add(members:toGroup:context:);
  }

  else
  {
    v6 = MLS.Client.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[37];
  v1 = v0[38];

  v3 = v0[40];
  v4 = v0[36];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MLS.Client.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a1;
  v8[22] = a4;
  v8[27] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.add(members:toGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.add(members:toGroup:context:)()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v0[20] = v2;
  v6 = swift_task_alloc();
  v6[2] = v1[10];
  v7 = v1[11];
  v0[29] = v7;
  v6[3] = v7;
  v6[4] = v1[12];
  v8 = v1[13];
  v0[30] = v8;
  v6[5] = v8;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.add(members:toGroup:context:), v6, v9, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v0[31] = v12;

  v13 = v3[17];
  v14 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v13);
  swift_beginAccess();
  v15 = v4[3];
  v16 = v4[4];
  v17 = v4[5];
  v18 = v4[6];
  v0[2] = v4[2];
  v0[3] = v15;
  v0[4] = v16;
  v0[5] = v17;
  v0[6] = v18;
  v19 = *(v14 + 64);

  outlined copy of Data?(v16, v17);

  v25 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[32] = v21;
  *v21 = v0;
  v21[1] = closure #1 in MLS.Client.add(members:toGroup:context:);
  v22 = v0[25];
  v23 = v0[26];

  return (v25)(v0 + 7, v12, v22, v23, v0 + 2, v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v17 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[31];
    v5 = v2[28];
    v6 = v2[3];
    v7 = v2[4];
    v9 = v2[5];
    v8 = v2[6];

    outlined consume of Data?(v7, v9);

    v10 = closure #1 in MLS.Client.add(members:toGroup:context:);
  }

  else
  {
    v11 = v2[31];
    v5 = v2[28];
    v12 = v2[3];
    v13 = v2[4];
    v15 = v2[5];
    v14 = v2[6];

    outlined consume of Data?(v13, v15);

    v10 = closure #1 in MLS.Client.add(members:toGroup:context:);
  }

  return MEMORY[0x2822009F8](v10, v5, 0);
}

{
  v24 = v0;
  v1 = v0[24];
  v2 = v0[22];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "add finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[33];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[21];
  v15._countAndFlagsBits = 0x6E61487473726946;
  v15._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v15);
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[10];
  v23[0] = v0[7];
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  outlined copy of Data?(v23[0], v16);

  MLS.GroupOperationProcessedContext.init(dataContext:)(v23, v13, v12, v14);
  v20 = v0[9];
  v19 = v0[10];
  outlined consume of Data?(v0[7], v0[8]);

  v21 = v0[1];

  return v21();
}

{
  v1 = *(v0 + 264);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *v5;
  v6[25] = *v5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v12 = *(v11 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = *(v7 + 88);
  v6[32] = *(v7 + 104);
  v6[33] = type metadata accessor for MLS.GroupOperationContext();
  v13 = type metadata accessor for Optional();
  v6[34] = v13;
  v14 = *(v13 - 8);
  v6[35] = v14;
  v15 = *(v14 + 64) + 15;
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.kick(members:fromGroup:context:), v5, 0);
}

uint64_t MLS.Client.kick(members:fromGroup:context:)()
{
  v92 = v0;
  *(v0 + 144) = *(v0 + 160);
  v1 = *(*(v0 + 200) + 80);
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      v9 = *(v0 + 160);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v89[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v89);
      *(v10 + 12) = 2080;
      v12 = MEMORY[0x266754630](v9, v1);
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v89);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_264F1F000, v5, v6, "kickMembers failed: no target members specified { groupIdentifier: %s, otherMembers: %s }", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    else
    {
      v30 = *(v0 + 160);
    }

    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v31 = 16;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    swift_willThrow();
    v32 = *(v0 + 288);
    v33 = *(v0 + 240);
    v35 = *(v0 + 208);
    v34 = *(v0 + 216);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 184);
    v21 = swift_allocObject();
    *(v0 + 296) = v21;
    (*(v17 + 16))(v16, v20, v18);
    v22 = *(v19 - 8);
    if ((*(v22 + 48))(v16, 1, v19) == 1)
    {
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v25 = *(v0 + 224);
      (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
      UUID.init()();
      v26 = UUID.uuidString.getter();
      v28 = v27;
      (*(v24 + 8))(v23, v25);
      v86 = xmmword_2651B5F50;
      v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      MLS.GroupOperationContext.dataContext.getter(*(v0 + 264), v89);
      v26 = v89[0];
      v28 = v89[1];
      v86 = v90;
      v29 = v91;
      (*(v22 + 8))(*(v0 + 288), *(v0 + 264));
    }

    v38 = *(v0 + 192);
    v39 = *(v0 + 176);
    v40 = *(v0 + 160);
    *(v21 + 16) = v26;
    *(v21 + 24) = v28;
    *(v21 + 32) = v86;
    *(v21 + 48) = v29;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v81 = *(v0 + 176);
      v79 = *(v0 + 168);
      v43 = *(v0 + 160);
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89[0] = v84;
      *v44 = 136315650;
      v45 = MEMORY[0x266754630](v43, v1);
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v89);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v89);
      *(v44 + 22) = 2080;
      swift_beginAccess();
      v49 = *(v21 + 32);
      *(v0 + 16) = *(v21 + 16);
      *(v0 + 32) = v49;
      *(v0 + 48) = *(v21 + 48);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v50 = specialized MLS.GroupOperationContext.description.getter();
      v52 = v51;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v89);

      *(v44 + 24) = v53;
      _os_log_impl(&dword_264F1F000, v41, v42, "kick called { members: %s, group: %s, context: %s }", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v84, -1, -1);
      MEMORY[0x266755550](v44, -1, -1);
    }

    else
    {
      v54 = *(v0 + 160);
    }

    v55 = *(v0 + 216);
    v80 = *(v0 + 208);
    v82 = *(v0 + 176);
    v83 = *(v0 + 160);
    v85 = *(v0 + 192);
    swift_beginAccess();
    Date.init()();
    v56 = type metadata accessor for MetricCollector.Event();
    v57 = *(v56 + 20);
    v58 = type metadata accessor for Date();
    v59 = *(*(v58 - 8) + 56);
    v59(v55 + v57, 1, 1, v58);
    v60 = *(*(v56 - 8) + 56);
    v60(v55, 0, 1, v56);
    specialized Dictionary.subscript.setter(v55, 0x646E456F54646E45, 0xE800000000000000);
    Date.init()();
    v59(v55 + *(v56 + 20), 1, 1, v58);
    v60(v55, 0, 1, v56);
    specialized Dictionary.subscript.setter(v55, 0x6E61487473726946, 0xEE00656B61687364);
    Date.init()();
    v59(v55 + *(v56 + 20), 1, 1, v58);
    v60(v55, 0, 1, v56);
    specialized Dictionary.subscript.setter(v55, 0x6341746E65696C43, 0xEB00000000726F74);
    swift_endAccess();
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v80, 1, 1, v61);
    v62 = one-time initialization token for shared;

    v87 = v21;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 248);
    v63 = *(v0 + 256);
    v88 = *(v0 + 208);
    v65 = *(v0 + 192);
    v66 = *(v0 + 168);
    v67 = *(v0 + 176);
    v68 = *(v0 + 160);
    v69 = static MLSActor.shared;
    v70 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
    v71 = swift_allocObject();
    v71[2] = v69;
    v71[3] = v70;
    v71[4] = v87;
    v71[5] = v68;
    v71[6] = v65;
    v71[7] = v66;
    v71[8] = v67;
    v72 = type metadata accessor for MLS.GroupOperationProcessedContext();

    v73 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v88, &async function pointer to partial apply for closure #1 in MLS.Client.kick(members:fromGroup:context:), v71);
    *(v0 + 304) = v73;
    v74 = *(MEMORY[0x277D857C8] + 4);
    v75 = swift_task_alloc();
    *(v0 + 312) = v75;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v75 = v0;
    v75[1] = MLS.Client.kick(members:fromGroup:context:);
    v77 = *(v0 + 152);
    v78 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v77, v73, v72, v76, v78);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = MLS.Client.kick(members:fromGroup:context:);
  }

  else
  {
    v6 = MLS.Client.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #1 in MLS.Client.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a1;
  v8[22] = a4;
  v8[27] = *a6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.kick(members:fromGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.kick(members:fromGroup:context:)()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  swift_beginAccess();
  v5._countAndFlagsBits = 0x6341746E65696C43;
  v5._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v5);
  swift_endAccess();
  v0[20] = v2;
  v6 = swift_task_alloc();
  v6[2] = v1[10];
  v7 = v1[11];
  v0[29] = v7;
  v6[3] = v7;
  v6[4] = v1[12];
  v8 = v1[13];
  v0[30] = v8;
  v6[5] = v8;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in MLS.Client.kick(members:fromGroup:context:), v6, v9, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v0[31] = v12;

  v13 = v3[17];
  v14 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v13);
  swift_beginAccess();
  v15 = v4[3];
  v16 = v4[4];
  v17 = v4[5];
  v18 = v4[6];
  v0[2] = v4[2];
  v0[3] = v15;
  v0[4] = v16;
  v0[5] = v17;
  v0[6] = v18;
  v19 = *(v14 + 72);

  outlined copy of Data?(v16, v17);

  v25 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[32] = v21;
  *v21 = v0;
  v21[1] = closure #1 in MLS.Client.kick(members:fromGroup:context:);
  v22 = v0[25];
  v23 = v0[26];

  return (v25)(v0 + 7, v12, v22, v23, v0 + 2, v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v17 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[31];
    v5 = v2[28];
    v6 = v2[3];
    v7 = v2[4];
    v9 = v2[5];
    v8 = v2[6];

    outlined consume of Data?(v7, v9);

    v10 = closure #1 in MLS.Client.kick(members:fromGroup:context:);
  }

  else
  {
    v11 = v2[31];
    v5 = v2[28];
    v12 = v2[3];
    v13 = v2[4];
    v15 = v2[5];
    v14 = v2[6];

    outlined consume of Data?(v13, v15);

    v10 = closure #1 in MLS.Client.kick(members:fromGroup:context:);
  }

  return MEMORY[0x2822009F8](v10, v5, 0);
}

{
  v24 = v0;
  v1 = v0[24];
  v2 = v0[22];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "kick finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[33];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[21];
  v15._countAndFlagsBits = 0x6E61487473726946;
  v15._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v15);
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[10];
  v23[0] = v0[7];
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  outlined copy of Data?(v23[0], v16);

  MLS.GroupOperationProcessedContext.init(dataContext:)(v23, v13, v12, v14);
  v20 = v0[9];
  v19 = v0[10];
  outlined consume of Data?(v0[7], v0[8]);

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in closure #1 in MLS.Client.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return (*(a4 + 40))(a2, a4);
}

uint64_t MLS.Client.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[25] = v9;
  v10 = *(v9 - 8);
  v5[26] = v10;
  v11 = *(v10 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = *(v6 + 88);
  v5[29] = *(v6 + 104);
  v5[30] = type metadata accessor for MLS.GroupOperationContext();
  v12 = type metadata accessor for Optional();
  v5[31] = v12;
  v13 = *(v12 - 8);
  v5[32] = v13;
  v14 = *(v13 + 64) + 15;
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.leave(group:context:), v4, 0);
}

uint64_t MLS.Client.leave(group:context:)()
{
  v61 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 168);
  v6 = swift_allocObject();
  *(v0 + 272) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v56 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.GroupOperationContext.dataContext.getter(*(v0 + 240), v58);
    v11 = v58[0];
    v13 = v58[1];
    v56 = v59;
    v14 = v60;
    (*(v7 + 8))(*(v0 + 264), *(v0 + 240));
  }

  v15 = *(v0 + 176);
  v16 = *(v0 + 160);
  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v56;
  *(v6 + 48) = v14;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v58);
    *(v21 + 12) = 2080;
    swift_beginAccess();
    v23 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v23;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    v24 = specialized MLS.GroupOperationContext.description.getter();
    v26 = v25;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO21GroupOperationContextVy_10Foundation4DataVGMR);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v58);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_264F1F000, v17, v18, "leave called { group: %s, context: %s }", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v22, -1, -1);
    MEMORY[0x266755550](v21, -1, -1);
  }

  v28 = *(v0 + 192);
  v55 = *(v0 + 176);
  v53 = *(v0 + 184);
  v54 = *(v0 + 160);
  swift_beginAccess();
  Date.init()();
  v29 = type metadata accessor for MetricCollector.Event();
  v30 = *(v29 + 20);
  v31 = type metadata accessor for Date();
  v32 = *(*(v31 - 8) + 56);
  v32(v28 + v30, 1, 1, v31);
  v33 = *(*(v29 - 8) + 56);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v32(v28 + *(v29 + 20), 1, 1, v31);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v32(v28 + *(v29 + 20), 1, 1, v31);
  v33(v28, 0, 1, v29);
  specialized Dictionary.subscript.setter(v28, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v35 = one-time initialization token for shared;

  v36 = v6;
  if (v35 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 224);
  v37 = *(v0 + 232);
  v39 = *(v0 + 176);
  v57 = *(v0 + 184);
  v40 = *(v0 + 152);
  v41 = *(v0 + 160);
  v42 = static MLSActor.shared;
  v43 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v44 = swift_allocObject();
  v44[2] = v42;
  v44[3] = v43;
  v44[4] = v36;
  v44[5] = v39;
  v44[6] = v40;
  v44[7] = v41;
  v45 = type metadata accessor for MLS.GroupOperationProcessedContext();

  v46 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v57, &async function pointer to partial apply for closure #1 in MLS.Client.leave(group:context:), v44);
  *(v0 + 280) = v46;
  v47 = *(MEMORY[0x277D857C8] + 4);
  v48 = swift_task_alloc();
  *(v0 + 288) = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v48 = v0;
  v48[1] = MLS.Client.leave(group:context:);
  v50 = *(v0 + 144);
  v51 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v50, v46, v45, v49, v51);
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = MLS.Client.leave(group:context:);
  }

  else
  {
    v6 = MLS.Client.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[37];
  v4 = v0[33];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MLS.Client.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[20] = a1;
  v7[25] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[26] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.leave(group:context:), v8, 0);
}

uint64_t closure #1 in MLS.Client.leave(group:context:)()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v0[2] = v7;
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v9;
  v0[6] = v10;
  v11 = *(v5 + 80);

  outlined copy of Data?(v8, v9);

  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = closure #1 in MLS.Client.leave(group:context:);
  v14 = v0[23];
  v15 = v0[24];

  return (v17)(v0 + 7, v14, v15, v0 + 2, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v15 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[5];
    v7 = v2[6];

    outlined consume of Data?(v6, v8);

    v9 = closure #1 in MLS.Client.leave(group:context:);
  }

  else
  {
    v4 = v2[26];
    v10 = v2[3];
    v11 = v2[4];
    v13 = v2[5];
    v12 = v2[6];

    outlined consume of Data?(v11, v13);

    v9 = closure #1 in MLS.Client.leave(group:context:);
  }

  return MEMORY[0x2822009F8](v9, v4, 0);
}

{
  v25 = v0;
  v2 = v0[21];
  v1 = v0[22];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "leave finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[20];
  v14._countAndFlagsBits = 0x6E61487473726946;
  v14._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v14);
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[10];
  v24[0] = v0[7];
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined copy of Data?(v24[0], v15);
  v18 = *(v12 + 88);
  v19 = *(v12 + 104);

  MLS.GroupOperationProcessedContext.init(dataContext:)(v24, v18, v19, v13);
  v21 = v0[9];
  v20 = v0[10];
  outlined consume of Data?(v0[7], v0[8]);

  v22 = v0[1];

  return v22();
}

{
  v1 = *(v0 + 224);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27].i64[1] = a6;
  v7[28].i64[0] = v6;
  v7[26].i64[1] = a4;
  v7[27].i64[0] = a5;
  v7[25].i64[1] = a2;
  v7[26].i64[0] = a3;
  v7[25].i64[0] = a1;
  v8 = *v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[28].i64[1] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v7[29].i64[0] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[29].i64[1] = v11;
  v12 = *(v11 - 8);
  v7[30].i64[0] = v12;
  v13 = *(v12 + 64) + 15;
  v7[30].i64[1] = swift_task_alloc();
  v14 = v8[5];
  v15 = v8[6];
  v7[31] = vzip2q_s64(v14, v15);
  v7[20] = v14;
  v7[21] = v15;
  v7[32].i64[0] = type metadata accessor for MLS.EncryptionContext();
  v16 = type metadata accessor for Optional();
  v7[32].i64[1] = v16;
  v17 = *(v16 - 8);
  v7[33].i64[0] = v17;
  v18 = *(v17 + 64) + 15;
  v7[33].i64[1] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.applicationEncrypt(data:withGroup:context:), v6, 0);
}

uint64_t MLS.Client.applicationEncrypt(data:withGroup:context:)()
{
  v83 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v5 = *(v0 + 440);
  v6 = swift_allocObject();
  *(v0 + 544) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 480);
    v8 = *(v0 + 488);
    v10 = *(v0 + 472);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    LOBYTE(v80) = 1;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 32) = xmmword_2651B5F50;
    *(v6 + 48) = xmmword_2651B5F50;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0;
    *(v6 + 120) = -2;
    *(v6 + 136) = 0;
    *(v6 + 144) = 0;
    *(v6 + 128) = 0;
    *(v6 + 152) = 1;
    *(v6 + 160) = v14;
  }

  else
  {
    MLS.EncryptionContext.dataContext.getter(*(v0 + 512), v81);
    (*(v7 + 8))(*(v0 + 536), *(v0 + 512));
    v15 = v81[7];
    *(v6 + 112) = v81[6];
    *(v6 + 128) = v15;
    *(v6 + 144) = v81[8];
    *(v6 + 160) = v82;
    v16 = v81[3];
    *(v6 + 48) = v81[2];
    *(v6 + 64) = v16;
    v17 = v81[5];
    *(v6 + 80) = v81[4];
    *(v6 + 96) = v17;
    v18 = v81[1];
    *(v6 + 16) = v81[0];
    *(v6 + 32) = v18;
  }

  v19 = *(v0 + 448);
  v20 = *(v0 + 432);
  outlined copy of Data._Representation(*(v0 + 408), *(v0 + 416));

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 416);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    v80 = v26;
    *v25 = 134218498;
    v32 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v33 = 0;
        goto LABEL_16;
      }

      v34 = *(*(v0 + 408) + 16);
      v35 = *(*(v0 + 408) + 24);
      v36 = __OFSUB__(v35, v34);
      v33 = v35 - v34;
      if (!v36)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v32)
    {
      v33 = *(v0 + 422);
LABEL_16:
      v40 = *(v0 + 424);
      v39 = *(v0 + 432);
      v41 = *(v0 + 408);
      v42 = *(v0 + 416);
      *(v25 + 4) = v33;
      outlined consume of Data._Representation(v41, v42);
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v80);
      *(v25 + 22) = 2080;
      swift_beginAccess();
      v43 = *(v6 + 128);
      *(v0 + 112) = *(v6 + 112);
      *(v0 + 128) = v43;
      *(v0 + 144) = *(v6 + 144);
      *(v0 + 160) = *(v6 + 160);
      v44 = *(v6 + 64);
      *(v0 + 48) = *(v6 + 48);
      *(v0 + 64) = v44;
      v45 = *(v6 + 96);
      *(v0 + 80) = *(v6 + 80);
      *(v0 + 96) = v45;
      v46 = *(v6 + 32);
      *(v0 + 16) = *(v6 + 16);
      *(v0 + 32) = v46;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 168, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
      v47 = specialized MLS.EncryptionContext.description.getter();
      v49 = v48;
      outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v80);

      *(v25 + 24) = v50;
      _os_log_impl(&dword_264F1F000, v21, v22, "applicationEncrypt called { data: %ld, group: %s, context: %s }", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v31, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
      goto LABEL_17;
    }

    v37 = *(v0 + 408);
    v38 = *(v0 + 412);
    v36 = __OFSUB__(v38, v37);
    LODWORD(v33) = v38 - v37;
    if (v36)
    {
      __break(1u);
      return MEMORY[0x282200430](v26, v27, v28, v29, v30);
    }

    v33 = v33;
    goto LABEL_16;
  }

  outlined consume of Data._Representation(*(v0 + 408), *(v0 + 416));
LABEL_17:

  v51 = *(v0 + 464);
  v76 = *(v0 + 432);
  v78 = *(v0 + 448);
  v74 = *(v0 + 416);
  v72 = *(v0 + 456);
  v73 = *(v0 + 408);
  swift_beginAccess();
  Date.init()();
  v52 = type metadata accessor for MetricCollector.Event();
  v53 = *(v52 + 20);
  v54 = type metadata accessor for Date();
  v55 = *(*(v54 - 8) + 56);
  v55(v51 + v53, 1, 1, v54);
  v56 = *(*(v52 - 8) + 56);
  v56(v51, 0, 1, v52);
  specialized Dictionary.subscript.setter(v51, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v55(v51 + *(v52 + 20), 1, 1, v54);
  v56(v51, 0, 1, v52);
  specialized Dictionary.subscript.setter(v51, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v55(v51 + *(v52 + 20), 1, 1, v54);
  v56(v51, 0, 1, v52);
  specialized Dictionary.subscript.setter(v51, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v57 = type metadata accessor for TaskPriority();
  (*(*(v57 - 8) + 56))(v72, 1, 1, v57);
  outlined copy of Data._Representation(v73, v74);
  v58 = one-time initialization token for shared;

  if (v58 != -1)
  {
    swift_once();
  }

  v75 = *(v0 + 496);
  v77 = *(v0 + 504);
  v59 = *(v0 + 448);
  v79 = *(v0 + 456);
  v60 = *(v0 + 424);
  v61 = *(v0 + 432);
  v63 = *(v0 + 408);
  v62 = *(v0 + 416);
  v64 = static MLSActor.shared;
  v65 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v66 = swift_allocObject();
  v66[2] = v64;
  v66[3] = v65;
  v66[4] = v6;
  v66[5] = v59;
  v66[6] = v63;
  v66[7] = v62;
  v66[8] = v60;
  v66[9] = v61;
  v67 = type metadata accessor for MLS.EncryptionProcessedContext();

  v68 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v79, &async function pointer to partial apply for closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:), v66);
  *(v0 + 552) = v68;
  v69 = *(MEMORY[0x277D857C8] + 4);
  v70 = swift_task_alloc();
  *(v0 + 560) = v70;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v70 = v0;
  v70[1] = MLS.Client.applicationEncrypt(data:withGroup:context:);
  v26 = *(v0 + 400);
  v30 = MEMORY[0x277D84950];
  v27 = v68;
  v28 = v67;

  return MEMORY[0x282200430](v26, v27, v28, v29, v30);
}

{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  v5 = *(v2 + 448);
  if (v0)
  {
    v6 = MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    v6 = MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[61];
  v6 = v0[57];
  v5 = v0[58];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[69];
  v2 = v0[68];

  v3 = v0[71];
  v4 = v0[67];
  v5 = v0[61];
  v7 = v0[57];
  v6 = v0[58];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[116] = v12;
  v8[115] = a8;
  v8[114] = a7;
  v8[113] = a6;
  v8[112] = a5;
  v8[111] = a4;
  v8[110] = a1;
  v8[117] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[118] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:), v9, 0);
}

uint64_t closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:)()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  swift_beginAccess();
  v3._countAndFlagsBits = 0x6341746E65696C43;
  v3._object = 0xEB00000000726F74;
  MetricCollector.end(label:)(v3);
  swift_endAccess();
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  swift_beginAccess();
  v6 = *(v2 + 32);
  *(v0 + 16) = *(v2 + 16);
  *(v0 + 32) = v6;
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = *(v2 + 96);
  *(v0 + 80) = *(v2 + 80);
  *(v0 + 96) = v9;
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  v10 = *(v2 + 112);
  v11 = *(v2 + 128);
  v12 = *(v2 + 144);
  *(v0 + 160) = *(v2 + 160);
  *(v0 + 128) = v11;
  *(v0 + 144) = v12;
  *(v0 + 112) = v10;
  v13 = *(v2 + 16);
  *(v0 + 184) = *(v2 + 32);
  *(v0 + 168) = v13;
  v14 = *(v2 + 48);
  v15 = *(v2 + 64);
  v16 = *(v2 + 80);
  *(v0 + 248) = *(v2 + 96);
  *(v0 + 232) = v16;
  *(v0 + 216) = v15;
  *(v0 + 200) = v14;
  v17 = *(v2 + 112);
  v18 = *(v2 + 128);
  v19 = *(v2 + 144);
  *(v0 + 312) = *(v2 + 160);
  *(v0 + 280) = v18;
  *(v0 + 296) = v19;
  *(v0 + 264) = v17;
  v20 = *(v5 + 96);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 320, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v28 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 952) = v22;
  *v22 = v0;
  v22[1] = closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 912);
  v26 = *(v0 + 904);

  return v28(v0 + 776, v26, v25, v24, v23, v0 + 168, v4, v5);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 168;
  v5 = *(*v1 + 952);
  v6 = *v1;
  *(*v1 + 960) = v0;

  v7 = *(v2 + 944);
  v8 = *(v4 + 16);
  if (v0)
  {
    *(v3 + 472) = *v4;
    *(v3 + 488) = v8;
    v9 = *(v4 + 32);
    v10 = *(v4 + 48);
    v11 = *(v4 + 80);
    *(v3 + 536) = *(v4 + 64);
    *(v3 + 552) = v11;
    *(v3 + 504) = v9;
    *(v3 + 520) = v10;
    v12 = *(v4 + 96);
    v13 = *(v4 + 112);
    v14 = *(v4 + 128);
    *(v3 + 616) = *(v4 + 144);
    *(v3 + 584) = v13;
    *(v3 + 600) = v14;
    *(v3 + 568) = v12;
    outlined destroy of NSObject?(v3 + 472, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v15 = closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  else
  {
    *(v3 + 624) = *v4;
    *(v3 + 640) = v8;
    v16 = *(v4 + 32);
    v17 = *(v4 + 48);
    v18 = *(v4 + 80);
    *(v3 + 688) = *(v4 + 64);
    *(v3 + 704) = v18;
    *(v3 + 656) = v16;
    *(v3 + 672) = v17;
    v19 = *(v4 + 96);
    v20 = *(v4 + 112);
    v21 = *(v4 + 128);
    *(v3 + 768) = *(v4 + 144);
    *(v3 + 736) = v20;
    *(v3 + 752) = v21;
    *(v3 + 720) = v19;
    outlined destroy of NSObject?(v3 + 624, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v15 = closure #1 in MLS.Client.applicationEncrypt(data:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v15, v7, 0);
}

{
  v25 = v0;
  v1 = v0[112];
  v2 = v0[111];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[111];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "applicationEncrypt finished { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v11 = v0[120];
  v12 = v0[117];
  v13 = v0[110];
  v14._countAndFlagsBits = 0x6E61487473726946;
  v14._object = 0xEE00656B61687364;
  MetricCollector.end(label:)(v14);
  v15 = v0[98];
  v16 = v0[99];
  v17 = v0[100];
  v24[0] = v0[97];
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined copy of Data?(v24[0], v15);
  v18 = *(v12 + 88);
  v19 = *(v12 + 104);

  MLS.EncryptionProcessedContext.init(dataContext:)(v24, v18, v19, v13);
  v20 = v0[99];
  v21 = v0[100];
  outlined consume of Data?(v0[97], v0[98]);

  v22 = v0[1];

  return v22();
}

{
  v1 = *(v0 + 960);
  return (*(v0 + 8))();
}

uint64_t MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13].i64[1] = a6;
  v7[14].i64[0] = v6;
  v7[12].i64[1] = a4;
  v7[13].i64[0] = a5;
  v7[11].i64[1] = a2;
  v7[12].i64[0] = a3;
  v7[11].i64[0] = a1;
  v8 = *v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[14].i64[1] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR) - 8) + 64) + 15;
  v7[15].i64[0] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[15].i64[1] = v11;
  v12 = *(v11 - 8);
  v7[16].i64[0] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16].i64[1] = swift_task_alloc();
  v14 = v8[5];
  v15 = v8[6];
  v7[17] = vzip2q_s64(v14, v15);
  v7[7] = v15;
  v7[6] = v14;
  v7[18].i64[0] = type metadata accessor for MLS.GroupNameEncryptionContext();
  v16 = type metadata accessor for Optional();
  v7[18].i64[1] = v16;
  v17 = *(v16 - 8);
  v7[19].i64[0] = v17;
  v18 = *(v17 + 64) + 15;
  v7[19].i64[1] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLS.Client.applicationEncrypt(groupName:withGroup:context:), v6, 0);
}

uint64_t MLS.Client.applicationEncrypt(groupName:withGroup:context:)()
{
  v67 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 216);
  v6 = swift_allocObject();
  *(v0 + 320) = v6;
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 248);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    v62 = xmmword_2651B5F50;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    MLS.GroupNameEncryptionContext.dataContext.getter(*(v0 + 288), v64);
    v11 = v64[0];
    v13 = v64[1];
    v62 = v65;
    v14 = v66;
    (*(v7 + 8))(*(v0 + 312), *(v0 + 288));
  }

  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = *(v0 + 192);
  *(v6 + 16) = v11;
  *(v6 + 24) = v13;
  *(v6 + 32) = v62;
  *(v6 + 48) = v14;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v64[0] = v25;
    *v24 = 136315650;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v64);
    *(v24 + 12) = 2080;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v64);
    *(v24 + 22) = 2080;
    swift_beginAccess();
    v26 = *(v6 + 32);
    *(v0 + 16) = *(v6 + 16);
    *(v0 + 32) = v26;
    *(v0 + 48) = *(v6 + 48);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 56, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v27 = specialized MLS.GroupNameEncryptionContext.description.getter();
    v29 = v28;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v64);

    *(v24 + 24) = v30;
    _os_log_impl(&dword_264F1F000, v18, v19, "applicationEncrypt groupName called { groupName: %s, group: %s, context: %s }", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v25, -1, -1);
    MEMORY[0x266755550](v24, -1, -1);
  }

  v31 = *(v0 + 240);
  v58 = *(v0 + 208);
  v60 = *(v0 + 224);
  v56 = *(v0 + 232);
  v57 = *(v0 + 192);
  swift_beginAccess();
  Date.init()();
  v32 = type metadata accessor for MetricCollector.Event();
  v33 = *(v32 + 20);
  v34 = type metadata accessor for Date();
  v35 = *(*(v34 - 8) + 56);
  v35(v31 + v33, 1, 1, v34);
  v36 = *(*(v32 - 8) + 56);
  v36(v31, 0, 1, v32);
  specialized Dictionary.subscript.setter(v31, 0x646E456F54646E45, 0xE800000000000000);
  Date.init()();
  v35(v31 + *(v32 + 20), 1, 1, v34);
  v36(v31, 0, 1, v32);
  specialized Dictionary.subscript.setter(v31, 0x6E61487473726946, 0xEE00656B61687364);
  Date.init()();
  v35(v31 + *(v32 + 20), 1, 1, v34);
  v36(v31, 0, 1, v32);
  specialized Dictionary.subscript.setter(v31, 0x6341746E65696C43, 0xEB00000000726F74);
  swift_endAccess();
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
  v38 = one-time initialization token for shared;

  v61 = v6;
  if (v38 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 272);
  v59 = *(v0 + 280);
  v40 = *(v0 + 224);
  v63 = *(v0 + 232);
  v41 = *(v0 + 200);
  v42 = *(v0 + 208);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v45 = static MLSActor.shared;
  v46 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v47 = swift_allocObject();
  v47[2] = v45;
  v47[3] = v46;
  v47[4] = v61;
  v47[5] = v40;
  v47[6] = v43;
  v47[7] = v44;
  v47[8] = v41;
  v47[9] = v42;
  v48 = type metadata accessor for MLS.GroupNameEncryptionProcessedContext();

  v49 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v63, &async function pointer to partial apply for closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:), v47);
  *(v0 + 328) = v49;
  v50 = *(MEMORY[0x277D857C8] + 4);
  v51 = swift_task_alloc();
  *(v0 + 336) = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v51 = v0;
  v51[1] = MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  v53 = *(v0 + 176);
  v54 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v53, v49, v48, v52, v54);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  else
  {
    v6 = MLS.Client.applicationEncrypt(groupName:withGroup:context:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[40];
  v1 = v0[41];

  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a8;
  v8[26] = v12;
  v8[23] = a6;
  v8[24] = a7;
  v8[21] = a4;
  v8[22] = a5;
  v8[20] = a1;
  v8[27] = *a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.Client.applicationEncrypt(groupName:withGroup:context:), v9, 0);
}