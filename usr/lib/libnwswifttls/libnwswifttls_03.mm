void type metadata accessor for [CipherSuite](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for GeneratedEphemeralPrivateKey()
{
  result = type metadata accessor for Curve25519EphemeralKey(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for P384EphemeralKey(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for X25519MLKEM768EphemeralKey(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for Curve25519EphemeralKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for EPSK()
{
  type metadata accessor for SymmetricKey();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ByteBuffer?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ByteBuffer?()
{
  if (!lazy cache variable for type metadata for ByteBuffer?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ByteBuffer?);
    }
  }
}

uint64_t _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B26283C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B26283FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B2628690()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B26286C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B2628700()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B2628740()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B2628778()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGGMd, &_s15Synchronization5MutexVySDy15SwiftTLSLibrary14PAKECredentialVs6UInt32VGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B26287AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
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
    v10 = type metadata accessor for ServerHandshakeState(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 36);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_1B26288D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for ServerHandshakeState(0);
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
      v13 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B26289F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialHandshakeResult(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2628A5C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PartialHandshakeResult(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B2628AE0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5Tm(a1, a2);
}

uint64_t sub_1B2628B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_1B2628C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1B2628E78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[10];
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[9], v8);
  }

  v9 = v0[12];

  if (v0[13])
  {

    v10 = v0[14];
  }

  if (v0[22])
  {
    outlined consume of Data._Representation(v0[16], v0[17]);
    outlined consume of Data._Representation(v0[19], v0[20]);
    v11 = v0[22];
  }

  v12 = v0[23];

  v13 = v0[24];

  v14 = v0[25];

  v15 = v0[26];

  v16 = v0[27];

  if (v0[29])
  {
    v17 = v0[30];
  }

  if (v0[31])
  {

    v18 = v0[32];
  }

  v19 = v0[34];

  v20 = v0[35];

  v21 = v0[36];

  return MEMORY[0x1EEE6BDD0](v0, 312, 7);
}

uint64_t sub_1B2628F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B26290BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_Say15SwiftTLSLibrary0A11OfferedEPSKVGSiAA0D0VSgIegyn_Ieggg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B26291E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeneralEPSK(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B26292B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GeneralEPSK(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1B2629380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v15 = type metadata accessor for SymmetricKey();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[12];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[16] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[18];
      goto LABEL_9;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[21];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_1B262960C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  result = type metadata accessor for SymmetricKey();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[12];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[16] + 8) = a2;
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[21];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1B262988C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[16];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B2629A28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[16];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B2629BB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[15];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B2629D54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[15];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B2629EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B262A00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B262A12C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[7] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B262A2C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B262A924(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B262A938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B262A9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B262AA14(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1B262ABA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B262AD34(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1B262AF18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B262B0FC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1B262B280(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B262B40C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1B262B59C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B262B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B262B85C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B262B98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B262BABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B262BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B262BD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B262BE64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for SPAKE2.Verifier();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1B262BFA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = type metadata accessor for SPAKE2.Verifier();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1B262C0D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TLSHandshakeStateMachine(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TLSRecordProtector();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[6];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[9]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[7];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B262C244(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for TLSRecordProtector();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B262C3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
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
    v10 = type metadata accessor for HandshakeStateMachine(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B262C44C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for HandshakeStateMachine(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B262C554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Curve25519.KeyAgreement.PrivateKey();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for MLKEM768.PrivateKey();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B262C674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Curve25519.KeyAgreement.PrivateKey();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MLKEM768.PrivateKey();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B262C78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B262C854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void nwswifttls_update_encryption_level(void *a1, int a2, char a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = v5[24];
    if (v7)
    {
      if (v6[25])
      {
        v8 = _Block_copy(v7);
        v9 = v6[25];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __nwswifttls_update_encryption_level_block_invoke;
        v10[3] = &unk_1E7B2E3D0;
        v10[4] = v8;
        v11 = a2;
        v12 = a3;
        dispatch_async(v9, v10);
      }
    }
  }
}

uint64_t nwswifttls_get_encryption_key_label(uint64_t a1, int a2, const char **a3)
{
  result = 0;
  if (a1)
  {
    if (a3)
    {
      v12 = 0;
      result = nwswifttls_get_encryption_level(a1, &v12);
      if (result)
      {
        v7 = "SERVER_TRAFFIC_SECRET_0";
        if (a2)
        {
          v7 = "CLIENT_TRAFFIC_SECRET_0";
        }

        v8 = "SERVER_HANDSHAKE_TRAFFIC_SECRET";
        if (a2)
        {
          v8 = "CLIENT_HANDSHAKE_TRAFFIC_SECRET";
        }

        v9 = "SERVER_UNDEFINED_SECRET";
        if (a2)
        {
          v9 = "CLIENT_UNDEFINED_SECRET";
        }

        v10 = "SERVER_EARLY_TRAFFIC_SECRET";
        if (a2)
        {
          v10 = "CLIENT_EARLY_TRAFFIC_SECRET";
        }

        if (v12 == 1)
        {
          v9 = v10;
        }

        if (v12 != 2)
        {
          v8 = v9;
        }

        if (v12 == 3)
        {
          v11 = v7;
        }

        else
        {
          v11 = v8;
        }

        *a3 = v11;
      }
    }
  }

  return result;
}

void ssl_log_secret(const char *a1, void *a2, void *a3)
{
  v24[15] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && a1 && v6)
  {
    v8 = [v5 length];
    v9 = [v5 bytes];
    v10 = v7;
    v11 = [v10 length];
    v12 = [v10 bytes];
    v24[0] = @"%c";
    v24[1] = a1;
    v24[2] = strlen(a1);
    v24[3] = @"%c";
    v24[4] = " ";
    v24[5] = 1;
    v24[6] = @"%02x";
    v24[7] = v9;
    v24[8] = v8;
    v24[9] = @"%c";
    v24[10] = " ";
    v24[11] = 1;
    v24[12] = @"%02x";
    v24[13] = v12;
    v24[14] = v11;
    v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
    for (i = 0; i != 5; ++i)
    {
      v15 = &v24[3 * i];
      v16 = *v15;
      v17 = v15[2];
      if (v17)
      {
        v18 = v15[1];
        do
        {
          v19 = *v18++;
          [v13 appendFormat:v16, v19];
          --v17;
        }

        while (v17);
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_1B25F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    for (j = 12; j != -3; j -= 3)
    {
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1B262CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  for (i = 96; i != -24; i -= 24)
  {
  }

  _Unwind_Resume(a1);
}

sec_trust_t nwswifttls_copy_copy_authenticator_trust(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v34 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v10 = a1;
    if (v10[38])
    {
      v5 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
    v12 = 0;
    if (a4 && a5)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:a5];
    }

    v13 = [v10[37] validateAuthenticatorWithAuthenticator:v11 context:v12 keyParser:&__block_literal_global_0];
    if (![v13 count])
    {
      goto LABEL_22;
    }

    v27 = v11;
    v14 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = SecCertificateCreateWithData(v14, *(*(&v29 + 1) + 8 * i));
          if (v21)
          {
            v22 = v21;
            CFArrayAppendValue(Mutable, v21);
            CFRelease(v22);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }

    SSLWithKeyUsage = SecPolicyCreateSSLWithKeyUsage();
    if (!SSLWithKeyUsage)
    {
      CFRelease(Mutable);
      v5 = 0;
      v11 = v27;
      goto LABEL_24;
    }

    v24 = SSLWithKeyUsage;
    trust = 0;
    SecTrustCreateWithCertificates(Mutable, SSLWithKeyUsage, &trust);
    CFRelease(v24);
    CFRelease(Mutable);
    v11 = v27;
    if (trust)
    {
      v5 = sec_trust_create(trust);
      CFRelease(trust);
    }

    else
    {
LABEL_22:
      v5 = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

SecKeyRef __nwswifttls_copy_copy_authenticator_trust_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (v3 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v2)) != 0)
  {
    v4 = v3;
    v5 = SecCertificateCopyKey(v3);
    CFRelease(v4);
    if (v5)
    {
      SecKeyCopyPublicBytes();
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__int128 *nwswifttls_identifier()
{
  if (nwswifttls_identifier_onceToken != -1)
  {
    nwswifttls_identifier_cold_1();
  }

  return &g_nwswifttls_identifier;
}

uint64_t nwswifttls_remove_input_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v22[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 40);
    v7 = v6;
    if (v6 && (*(a2 + 32) = 0, *(v3 + 48) == a2))
    {
      v8 = 0;
      *(v3 + 48) = 0;
      v22[0] = v6 + 120;
      v22[1] = v6 + 136;
      v22[2] = v6 + 152;
      v22[3] = v6 + 168;
      v9 = MEMORY[0x1E69E9820];
      do
      {
        v21 = v22[v8];
        nw_frame_array_foreach();
        ++v8;
      }

      while (v8 != 4);
      v15 = *(v3 + 32);
      if (v15)
      {
        v16 = *(v15 + 24);
        if (v16)
        {
          v17 = *(v16 + 8);
          if (v17)
          {
            v17(v15, v3, a3, v10, v11, v12, v13, v14, v9, 3221225472);
          }
        }
      }

      if (a3)
      {
        v18 = *(v3 + 40);
        *(v3 + 40) = 0;
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

void nwswifttls_deallocate_metadata(void *a1, uint64_t a2)
{
  v17 = a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      free(v3);
      *(a2 + 40) = 0;
    }

    v4 = *(a2 + 176);
    if (v4)
    {
      free(v4);
      *(a2 + 176) = 0;
    }

    v5 = *(a2 + 48);
    if (v5)
    {
      free(v5);
      *(a2 + 48) = 0;
    }

    v6 = *(a2 + 56);
    if (v6)
    {
      free(v6);
      *(a2 + 56) = 0;
    }

    v7 = *(a2 + 384);
    if (v7)
    {
      CFSetApplyFunction(v7, nw_protocol_nwswifttls_returned_raw_string_pointer_deallocate, 0);
      CFRelease(*(a2 + 384));
    }

    v8 = *(a2 + 88);
    *(a2 + 88) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 136);
    *(a2 + 136) = 0;

    v12 = *(a2 + 144);
    *(a2 + 144) = 0;

    v13 = *(a2 + 152);
    *(a2 + 152) = 0;

    v14 = *(a2 + 160);
    *(a2 + 160) = 0;

    v15 = *(a2 + 168);
    *(a2 + 168) = 0;

    v16 = *(a2 + 80);
    *(a2 + 80) = 0;
  }

  free(a2);
}

void nwswifttls_send_error(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    if (*(v3 + 286) == 1 && (v3[36] & 1) == 0)
    {
      v4 = v3[7];
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 56);
          if (v6)
          {
            *(v3 + 288) = 1;
            v7 = v3;
            v6(v4, v3 + 1, a2);
            (*(*(v4 + 24) + 48))(v4, v7 + 1);
            v3 = v7;
          }
        }
      }
    }
  }
}

uint64_t nwswifttls_send_alert(void *a1, unsigned int a2)
{
  v3 = a1;
  if (v3)
  {
    if (a2 <= 3)
    {
      v4 = v3[a2 + 11];
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 56);
          if (v6)
          {
            v6();
          }
        }
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __nwswifttls_finalize_output_frame_arrays_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

void __nwswifttls_connected_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __nwswifttls_connected_block_invoke_2;
  v13[3] = &unk_1E7B2E518;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v5;
  v16 = v9;
  v17 = v6;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  dispatch_sync(v8, v13);
}

void nw_protocol_nwswifttls_returned_raw_string_pointer_deallocate(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

__int128 *nwswifttlsrecord_identifier()
{
  if (nwswifttlsrecord_identifier_onceToken != -1)
  {
    __nwswifttlsrecord_copy_definition_block_invoke_cold_1();
  }

  return &g_nwswifttlsrecord_identifier;
}

char *nwswifttlsrecord_copy_options(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x10F0040BA95764DuLL);
    v5 = v4;
    if (v4)
    {
      nwswifttls_copy_options_contents(v4, a2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void nwswifttlsrecord_deallocate_options(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    free(*(a2 + 8));
    free(*(a2 + 16));
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;

    v4 = *(a2 + 232);
    *(a2 + 232) = 0;

    v5 = *(a2 + 48);
    *(a2 + 48) = 0;

    v6 = *(a2 + 56);
    *(a2 + 56) = 0;

    v7 = *(a2 + 88);
    *(a2 + 88) = 0;

    v8 = *(a2 + 96);
    *(a2 + 96) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 120);
    *(a2 + 120) = 0;

    v12 = *(a2 + 128);
    *(a2 + 128) = 0;

    v13 = *(a2 + 176);
    *(a2 + 176) = 0;

    v14 = *(a2 + 184);
    *(a2 + 184) = 0;

    v15 = *(a2 + 72);
    *(a2 + 72) = 0;

    v16 = *(a2 + 192);
    *(a2 + 192) = 0;

    v17 = *(a2 + 136);
    *(a2 + 136) = 0;

    v18 = *(a2 + 144);
    *(a2 + 144) = 0;

    v19 = *(a2 + 152);
    *(a2 + 152) = 0;

    v20 = *(a2 + 160);
    *(a2 + 160) = 0;

    v21 = *(a2 + 168);
    *(a2 + 168) = 0;

    v22 = *(a2 + 176);
    *(a2 + 176) = 0;

    v23 = *(a2 + 184);
    *(a2 + 184) = 0;

    v24 = *(a2 + 336);
    *(a2 + 336) = 0;

    v25 = *(a2 + 264);
    *(a2 + 264) = 0;

    v26 = *(a2 + 256);
    *(a2 + 256) = 0;

    v27 = *(a2 + 80);
    *(a2 + 80) = 0;

    free(*(a2 + 344));
    *(a2 + 360) = 0;
    v28 = *(a2 + 280);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 280) = 0;
    }

    v29 = *(a2 + 384);
    if (v29)
    {
      CFRelease(v29);
    }

    *(a2 + 384) = 0;
    v30 = *(a2 + 392);
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = *(a2 + 400);
    *(a2 + 392) = 0;
    *(a2 + 400) = 0;
  }

  cc_clear();

  free(a2);
}

void nwswifttlsrecord_deallocate_metadata(void *a1, uint64_t a2)
{
  v17 = a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      free(v3);
      *(a2 + 40) = 0;
    }

    v4 = *(a2 + 176);
    if (v4)
    {
      free(v4);
      *(a2 + 176) = 0;
    }

    v5 = *(a2 + 48);
    if (v5)
    {
      free(v5);
      *(a2 + 48) = 0;
    }

    v6 = *(a2 + 56);
    if (v6)
    {
      free(v6);
      *(a2 + 56) = 0;
    }

    v7 = *(a2 + 384);
    if (v7)
    {
      CFSetApplyFunction(v7, nw_protocol_nwswifttlsrecord_returned_raw_string_pointer_deallocate, 0);
      CFRelease(*(a2 + 384));
    }

    v8 = *(a2 + 88);
    *(a2 + 88) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 136);
    *(a2 + 136) = 0;

    v12 = *(a2 + 144);
    *(a2 + 144) = 0;

    v13 = *(a2 + 152);
    *(a2 + 152) = 0;

    v14 = *(a2 + 160);
    *(a2 + 160) = 0;

    v15 = *(a2 + 168);
    *(a2 + 168) = 0;

    v16 = *(a2 + 80);
    *(a2 + 80) = 0;
  }

  free(a2);
}

void nwswifttlsrecord_disconnect(uint64_t a1)
{
  if (a1)
  {
    v2 = nw_protocol_downcast();
    if (v2)
    {
      v3 = v2;
      if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
      {
        nwswifttlsrecord_disconnect_cold_1();
      }

      if (*(v3 + 252) != 3)
      {
        if ([*(v3 + 104) alertSentOrReceived])
        {
          nwswifttlsrecord_write_bytes();
        }

        else
        {
          [*(v3 + 104) sendCloseNotify];
          nwswifttlsrecord_write_bytes();
          v4 = [*(v3 + 104) getErrorCode];
          if (v4)
          {
            nwswifttlsrecord_send_error(a1, v4);
          }
        }

        *(v3 + 252) = 3;
        nw_protocol_get_output_handler();
        nw_protocol_disconnect_quiet();
      }
    }
  }
}

uint64_t nwswifttlsrecord_write_bytes()
{
  v56 = *MEMORY[0x1E69E9840];
  v0 = nw_protocol_downcast();
  if (!v0)
  {
    goto LABEL_32;
  }

  nw_protocol_get_output_handler();
  v43[0] = 0;
  v43[1] = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = v43;
  if ((nw_protocol_get_output_frames_is_valid() & 1) == 0)
  {
    if (g_nwswifttls_log)
    {
      v20 = g_nwswifttls_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        name = nw_protocol_get_name();
        nwswifttlsrecord_write_bytes_cold_1(v0, name, buf, v20);
      }
    }

    goto LABEL_30;
  }

  v1 = v40[3];
  if ((nw_protocol_finalize_output_frames_is_valid() & 1) == 0)
  {
    nwswifttlsrecord_write_bytes_cold_2(v0, buf);
LABEL_38:
    v0 = buf[0];
    goto LABEL_31;
  }

  if (![*(v0 + 104) getOutgoingBytesCount])
  {
LABEL_23:
    v0 = 1;
    goto LABEL_31;
  }

  *&v2 = 136447234;
  v22 = v2;
  while (1)
  {
    v3 = v40[3];
    nw_frame_array_init();
    if (!nw_protocol_get_output_frames())
    {
      break;
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = nw_frame_array_unclaimed_length();
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v4 = [*(v0 + 104) getOutputWithNumBytes:*(v36 + 6)];
    v5 = v40[3];
    v6 = v4;
    nw_frame_array_foreach();
    v7 = v40[3];
    if ((nw_frame_array_is_empty() & 1) == 0)
    {
      v8 = v40[3];
      nw_protocol_finalize_output_frames();
      if (*(v0 + 252) == 2)
      {
        if (datapath_logging_enabled != 1)
        {
          goto LABEL_15;
        }

        v9 = g_nwswifttls_log;
        if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        v10 = *(v32 + 6);
        *buf = v22;
        v45 = "nwswifttlsrecord_write_bytes";
        v46 = 1024;
        v47 = 621;
        v48 = 2082;
        v49 = v0 + 269;
        v50 = 2048;
        v51 = v0;
        v52 = 1024;
        v53 = v10;
        v11 = v9;
      }

      else
      {
        v12 = g_nwswifttls_log;
        if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        v17 = *(v32 + 6);
        *buf = v22;
        v45 = "nwswifttlsrecord_write_bytes";
        v46 = 1024;
        v47 = 623;
        v48 = 2082;
        v49 = v0 + 269;
        v50 = 2048;
        v51 = v0;
        v52 = 1024;
        v53 = v17;
        v11 = v12;
      }

      _os_log_debug_impl(&dword_1B25F5000, v11, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] total bytes written: %u", buf, 0x2Cu);
    }

LABEL_15:
    if (*(v28 + 6))
    {
      v13 = g_nwswifttls_log;
      if (g_nwswifttls_log)
      {
        if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
        {
          v15 = *(v28 + 6);
          v16 = *(v24 + 6);
          *buf = 136447490;
          v45 = "nwswifttlsrecord_write_bytes";
          v46 = 1024;
          v47 = 628;
          v48 = 2082;
          v49 = v0 + 269;
          v50 = 2048;
          v51 = v0;
          v52 = 1024;
          v53 = v15;
          v54 = 1024;
          v55 = v16;
          _os_log_error_impl(&dword_1B25F5000, v13, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] failed to use %u frames with length %u", buf, 0x32u);
        }
      }
    }

    v14 = [*(v0 + 104) getOutgoingBytesCount];

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (*(v0 + 252) == 2)
  {
    if (datapath_logging_enabled == 1)
    {
      nwswifttlsrecord_write_bytes_cold_4(v0 + 269, v0, buf);
      goto LABEL_38;
    }
  }

  else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    nwswifttlsrecord_write_bytes_cold_3();
  }

LABEL_30:
  v0 = 0;
LABEL_31:
  _Block_object_dispose(&v39, 8);
LABEL_32:
  v18 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t nwswifttlsrecord_send_error(uint64_t a1, uint64_t a2)
{
  result = nw_protocol_downcast();
  if (result)
  {
    v5 = result;
    if ((*(result + 268) & 1) == 0)
    {
      input_handler = nw_protocol_get_input_handler();
      result = nw_protocol_error_is_valid();
      if (result)
      {
        *(v5 + 268) = 1;

        return MEMORY[0x1EEDD4390](input_handler, a1, a2);
      }
    }
  }

  return result;
}

BOOL nwswifttlsrecord_add_input_handler(_BOOL8 result, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = nw_protocol_downcast();
    result = 0;
    if (a2)
    {
      if (v3)
      {
        if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          nwswifttlsrecord_add_input_handler_cold_1();
        }

        if (nw_protocol_get_input_handler())
        {
          v4 = g_nwswifttls_log;
          if (!g_nwswifttls_log)
          {
LABEL_20:
            result = 0;
            goto LABEL_21;
          }

          result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            *v13 = 136446978;
            *&v13[4] = "nwswifttlsrecord_add_input_handler";
            *&v13[12] = 1024;
            *&v13[14] = 832;
            v14 = 2082;
            v15 = v3 + 269;
            v16 = 2048;
            v17 = v3;
            _os_log_impl(&dword_1B25F5000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] input handler already set", v13, 0x26u);
            goto LABEL_20;
          }
        }

        else
        {
          v5 = nw_protocol_get_parameters_quiet();
          v6 = *(v3 + 32);
          *(v3 + 32) = v5;

          if (*(v3 + 32))
          {
            v7 = nw_parameters_copy_protocol_options_legacy();
            v8 = *(v3 + 16);
            *(v3 + 16) = v7;

            if (*(v3 + 16))
            {
              nw_protocol_options_get_log_id_str();
              v9 = nwswifttlsrecord_copy_definition();
              v10 = MEMORY[0x1B274E490]();
              v11 = *(v3 + 24);
              *(v3 + 24) = v10;

              *v13 = 0;
              *&v13[8] = 0;
              nw_protocol_get_flow_id();
              nw_protocol_set_flow_id();
              *(v3 + 260) = 0;
              nw_protocol_set_output_handler();
              nw_protocol_set_input_handler();
              result = 1;
            }

            else
            {
              if (!g_nwswifttls_log)
              {
                goto LABEL_20;
              }

              result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
              if (result)
              {
                nwswifttlsrecord_add_input_handler_cold_2();
                goto LABEL_20;
              }
            }
          }

          else
          {
            if (!g_nwswifttls_log)
            {
              goto LABEL_20;
            }

            result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG);
            if (result)
            {
              nwswifttlsrecord_add_input_handler_cold_3();
              goto LABEL_20;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL nwswifttlsrecord_replace_input_handler(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = nw_protocol_downcast();
    result = 0;
    if (a3)
    {
      if (a2 && v5)
      {
        if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          nwswifttlsrecord_replace_input_handler_cold_1();
        }

        if (nw_protocol_get_input_handler() == a2)
        {
          nw_protocol_set_input_handler();
          nw_protocol_set_output_handler();
          *(v5 + 260) = 0;
          result = 1;
          goto LABEL_14;
        }

        v6 = g_nwswifttls_log;
        if (!g_nwswifttls_log)
        {
          goto LABEL_12;
        }

        result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v7 = v6;
          v9 = 136447490;
          v10 = "nwswifttlsrecord_replace_input_handler";
          v11 = 1024;
          v12 = 875;
          v13 = 2082;
          v14 = v5 + 269;
          v15 = 2048;
          v16 = v5;
          v17 = 2048;
          input_handler = nw_protocol_get_input_handler();
          v19 = 2048;
          v20 = a2;
          _os_log_error_impl(&dword_1B25F5000, v7, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] old input handler does not match (%p != %p)", &v9, 0x3Au);

LABEL_12:
          result = 0;
        }
      }
    }
  }

LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nwswifttlsrecord_remove_input_handler(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v5 = result;
      nw_protocol_set_output_handler();
      if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
      {
        nwswifttlsrecord_remove_input_handler_cold_1();
      }

      if (nw_protocol_get_input_handler() == a2)
      {
        nw_protocol_set_input_handler();
        if ((nw_frame_array_is_empty() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
        {
          nwswifttlsrecord_remove_input_handler_cold_2();
        }

        if ((nw_frame_array_is_empty() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
        {
          nwswifttlsrecord_remove_input_handler_cold_3();
        }

        if ((nw_frame_array_is_empty() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
        {
          nwswifttlsrecord_remove_input_handler_cold_4();
        }

        nw_protocol_get_output_handler();
        nw_protocol_remove_input_handler_quiet();
        if (a3)
        {
          v6 = *(v5 + 8);
          *(v5 + 8) = 0;

          nw_protocol_destroy();
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void nwswifttlsrecord_connected(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = nw_protocol_downcast();
    if (v4)
    {
      v5 = v4;
      nw_protocol_get_input_handler();
      v6 = nw_protocol_get_parameters();
      v7 = nw_parameters_copy_protocol_options_legacy();
      nw_protocol_options_get_log_id_str();
      v8 = g_nwswifttls_log;
      if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136446978;
        v17 = "nwswifttlsrecord_connected";
        v18 = 1024;
        v19 = 936;
        v20 = 2082;
        v21 = v5 + 269;
        v22 = 2048;
        v23 = v5;
        _os_log_impl(&dword_1B25F5000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_connected invoked", &v16, 0x26u);
      }

      v9 = nwswifttlsrecord_copy_definition();
      v10 = MEMORY[0x1B274E490]();
      v11 = *(v5 + 24);
      *(v5 + 24) = v10;

      nw_protocol_get_input_handler();
      if (nw_protocol_connected_is_valid())
      {
        if (*(v5 + 252) == 3)
        {
          if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
          {
            nwswifttlsrecord_connected_cold_3();
          }
        }

        else
        {
          nw_protocol_get_input_handler();
          nw_protocol_connected();
          if (nw_protocol_get_output_handler() == a2)
          {
            v13 = *(v5 + 252);
            if (v13 == 1)
            {
              v15 = g_nwswifttls_log;
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_INFO))
              {
                v16 = 136446978;
                v17 = "nwswifttlsrecord_connected";
                v18 = 1024;
                v19 = 966;
                v20 = 2082;
                v21 = v5 + 269;
                v22 = 2048;
                v23 = v5;
                _os_log_impl(&dword_1B25F5000, v15, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Already started the negotiation. Skipping.", &v16, 0x26u);
              }
            }

            else if (v13 == 2)
            {
              v14 = g_nwswifttls_log;
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_INFO))
              {
                v16 = 136446978;
                v17 = "nwswifttlsrecord_connected";
                v18 = 1024;
                v19 = 959;
                v20 = 2082;
                v21 = v5 + 269;
                v22 = 2048;
                v23 = v5;
                _os_log_impl(&dword_1B25F5000, v14, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Already connected, reporting.", &v16, 0x26u);
              }

              nw_protocol_get_input_handler();
              nw_protocol_connected();
            }

            else
            {
              *(v5 + 252) = 1;
              *(v5 + 128) = nwswifttls_helper_get_current_time_ms();
              *(v5 + 124) = nwswifttls_get_transport_protocol(v6);
              *(v5 + 267) = nw_parameters_get_server_mode();
              if (nwswifttlsrecord_configure_with_sec_protocol_options(a1))
              {
                if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
                {
                  nwswifttlsrecord_connected_cold_2();
                }

                nw_protocol_nwswifttlsrecord_begin_connection(a1);
              }
            }
          }
        }
      }

      else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
      {
        nwswifttlsrecord_connected_cold_1();
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t nwswifttlsrecord_input_available(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = nw_protocol_downcast();
    if (a2)
    {
      v4 = result;
      if (result)
      {
        result = nw_protocol_get_input_handler();
        if (result)
        {
          if (*(v4 + 252) == 2)
          {
            if (datapath_logging_enabled == 1)
            {
              nwswifttlsrecord_input_available_cold_2();
            }
          }

          else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
          {
            nwswifttlsrecord_input_available_cold_1();
          }

          return nwswifttlsrecord_read(v3);
        }
      }
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_output_available(uint64_t result)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v1 = result;
      result = nw_protocol_get_output_handler();
      if (result)
      {
        if (*(v1 + 252) == 2)
        {
          if (datapath_logging_enabled == 1)
          {
            nwswifttlsrecord_output_available_cold_2();
          }
        }

        else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          nwswifttlsrecord_output_available_cold_1();
        }

        result = nwswifttlsrecord_write_bytes();
        if (result && *(v1 + 252) == 2)
        {
          if (datapath_logging_enabled == 1)
          {
            nwswifttlsrecord_output_available_cold_3();
          }

          nw_protocol_get_input_handler();
          return nw_protocol_output_available();
        }
      }
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_get_input_frames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v12 = nw_protocol_downcast();
  v13 = 0;
  if (!a6)
  {
    return v13;
  }

  if (!a5)
  {
    return v13;
  }

  if (!a4)
  {
    return v13;
  }

  if (!a2)
  {
    return v13;
  }

  v14 = v12;
  if (!v12)
  {
    return v13;
  }

  if (*(v12 + 252) != 2)
  {
    return 0;
  }

  if (datapath_logging_enabled == 1)
  {
    nwswifttlsrecord_get_input_frames_cold_1();
  }

  if (![*(v14 + 104) getAvailableApplicationDataLength])
  {
    nwswifttlsrecord_read(a1);
  }

  *(v14 + 261) = 0;
  if (*(v14 + 262) == 1)
  {
    *(v14 + 262) = 0;
    v15 = *(v14 + 32);
    v16 = nw_parameters_copy_context();
    v26 = v14;
    v17 = v26;
    nw_queue_context_async();
  }

  v18 = [*(v14 + 104) getAvailableApplicationDataLength];
  if (v18 <= a3)
  {
    return 0;
  }

  if (v18 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = v18;
  }

  v20 = malloc_type_malloc(v19, 0x100004077774924uLL);
  if (!v20)
  {
    if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      nwswifttlsrecord_get_input_frames_cold_3();
    }

    return 0;
  }

  v21 = v20;
  v22 = nw_frame_create();
  if (v22)
  {
    nw_frame_set_buffer_used_malloc();
    v23 = [*(v14 + 104) getAvailableApplicationDataWithNumBytes:v19];
    [v23 getBytes:v21 length:v19];
    v24 = v22;
    if (*(v14 + 24))
    {
      nw_frame_set_metadata();
    }

    nw_frame_array_init();
    nw_frame_array_append();
    v13 = 1;
    nw_frame_array_append();
  }

  else
  {
    if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      nwswifttlsrecord_get_input_frames_cold_2();
    }

    free(v21);
    v13 = 0;
  }

  return v13;
}

uint64_t nwswifttlsrecord_get_output_frames(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v9 = nw_protocol_downcast();
  v10 = 0;
  if (a6)
  {
    if (a5)
    {
      v11 = v9;
      if (v9)
      {
        if (*(v9 + 252) == 2)
        {
          if ((nwswifttlsrecord_write_bytes() & 1) == 0)
          {
            if (datapath_logging_enabled)
            {
              nwswifttlsrecord_get_output_frames_cold_1(v11, &v17);
              return v17;
            }

            return 0;
          }

          if (datapath_logging_enabled)
          {
            nwswifttlsrecord_get_output_frames_cold_2();
          }

          nw_frame_array_init();
          if (a4 >= 0x4000)
          {
            v12 = 0x4000;
          }

          else
          {
            v12 = a4;
          }

          if (*(v11 + 260) == 1)
          {
            external = nw_frame_create_external();
            if (!external)
            {
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
              {
                nwswifttlsrecord_get_output_frames_cold_5();
              }

              return 0;
            }
          }

          else
          {
            if (a4 && !malloc_type_malloc(v12, 0x100004077774924uLL))
            {
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
              {
                nwswifttlsrecord_get_output_frames_cold_3();
              }

              return 0;
            }

            v15 = nw_frame_create();
            if (!v15)
            {
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
              {
                nwswifttlsrecord_get_output_frames_cold_4();
              }

              return 0;
            }

            external = v15;
            nw_frame_set_buffer_used_malloc();
          }

          v16 = external;
          nw_frame_array_append();
          v10 = 1;
          nw_frame_array_append();

          return v10;
        }

        return 0;
      }
    }
  }

  return v10;
}

void nwswifttlsrecord_input_finished(uint64_t a1)
{
  if (a1)
  {
    v2 = nw_protocol_downcast();
    if (v2)
    {
      v3 = v2;
      if (nw_protocol_get_input_handler())
      {
        if (datapath_logging_enabled == 1)
        {
          nwswifttlsrecord_input_finished_cold_1();
        }

        if (*(v3 + 252) == 2)
        {
          if (*(v3 + 264))
          {
            *(v3 + 263) = 1;
          }

          else
          {
            *(v3 + 262) = 0;
            nwswifttlsrecord_read(a1);
            nw_protocol_input_finished_quiet();
          }
        }

        else
        {
          nw_protocol_error_quiet();
          nw_protocol_disconnected_quiet();
        }
      }

      else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
      {
        nwswifttlsrecord_input_finished_cold_2();
      }
    }
  }
}

uint64_t nwswifttlsrecord_finalize_output_frames(uint64_t result)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      nw_frame_array_append_array();
      if (nw_protocol_downcast())
      {
        nw_frame_array_foreach();
      }

      nwswifttlsrecord_write_bytes();
      return 1;
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_copy_info(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = nw_protocol_downcast();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  nw_protocol_get_output_handler();
  nw_protocol_get_output_handler();
  if (nw_protocol_copy_info_is_valid())
  {
    nw_protocol_get_output_handler();
    v5 = nw_protocol_copy_info();
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 254)
  {
    v8 = *(v4 + 136) - *(v4 + 128);
    v9 = nw_protocol_copy_swift_tls_record_definition();
    v7 = nw_protocol_establishment_report_create();

    if (!v7)
    {
LABEL_18:

      return v5;
    }

    if (v5)
    {
LABEL_17:
      nw_array_append();
      goto LABEL_18;
    }

LABEL_16:
    v5 = MEMORY[0x1B274DE70]();
    goto LABEL_17;
  }

  if (a2 == 255)
  {
    v6 = *(v4 + 24);
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (!v6)
    {
      v5 = 0;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return v5;
}

uint64_t nwswifttlsrecord_error(uint64_t result, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v4 = result;
      *(result + 256) = a3;
      v25 = 0u;
      memset(v26, 0, sizeof(v26));
      v23 = 0u;
      v24 = 0u;
      *__strerrbuf = 0u;
      v22 = 0u;
      strerror_r(a3, __strerrbuf, 0x64uLL);
      v5 = *(v4 + 252);
      if (v5 < 2)
      {
        v6 = g_nwswifttls_log;
        if (v5 == 1)
        {
          if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          v9 = 136447490;
          v10 = "nwswifttlsrecord_error";
          v11 = 1024;
          v12 = 1307;
          v13 = 2082;
          v14 = v4 + 269;
          v15 = 2048;
          v16 = v4;
          v17 = 1024;
          v18 = a3;
          v19 = 2080;
          v20 = __strerrbuf;
          v7 = "%{public}s(%d) %{public}s[%p] Lower protocol stack error during TLS handshake. [%d: %s]";
        }

        else
        {
          if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          v9 = 136447490;
          v10 = "nwswifttlsrecord_error";
          v11 = 1024;
          v12 = 1309;
          v13 = 2082;
          v14 = v4 + 269;
          v15 = 2048;
          v16 = v4;
          v17 = 1024;
          v18 = a3;
          v19 = 2080;
          v20 = __strerrbuf;
          v7 = "%{public}s(%d) %{public}s[%p] Lower protocol stack error pre TLS handshake. [%d: %s]";
        }
      }

      else
      {
        v6 = g_nwswifttls_log;
        if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v9 = 136447490;
        v10 = "nwswifttlsrecord_error";
        v11 = 1024;
        v12 = 1305;
        v13 = 2082;
        v14 = v4 + 269;
        v15 = 2048;
        v16 = v4;
        v17 = 1024;
        v18 = a3;
        v19 = 2080;
        v20 = __strerrbuf;
        v7 = "%{public}s(%d) %{public}s[%p] Lower protocol stack error post TLS handshake. [%d: %s]";
      }

      _os_log_impl(&dword_1B25F5000, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0x36u);
LABEL_15:
      nw_protocol_get_input_handler();
      result = nw_protocol_error_quiet();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nwswifttlsrecord_reset(uint64_t result)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v1 = result;
      nw_frame_array_foreach();
      nw_frame_array_foreach();
      nw_frame_array_foreach();
      nw_frame_array_foreach();
      v2 = v1[14];
      v1[14] = 0;

      v1[15] = 0;
      v3 = v1[18];
      v1[18] = 0;

      v4 = v1[19];
      v1[19] = 0;

      v5 = v1[20];
      v1[20] = 0;

      v6 = v1[21];
      v1[21] = 0;

      v7 = v1[23];
      if (v7)
      {
        CFRelease(v7);
      }

      v1[23] = 0;
      v8 = v1[28];
      v1[28] = 0;

      v9 = v1[29];
      v1[29] = 0;

      v10 = v1[30];
      v1[30] = 0;

      *(v1 + 252) = 0;
      *(v1 + 259) = 0;
      nw_protocol_get_output_handler();
      return nw_protocol_reset_quiet();
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_create(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = nw_protocol_new_objc();

  if (v4)
  {
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    v5 = v4;
    v5[1] = v5;
    v6 = nw_protocol_upcast();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void nw_protocol_nwswifttlsrecord_returned_raw_string_pointer_deallocate(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t __nwswifttlsrecord_write_bytes_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  nw_frame_unclaimed_bytes();
  v4 = *(*(a1[7] + 8) + 24);
  nw_frame_array_remove();
  nw_frame_finalize();
  ++*(*(a1[8] + 8) + 24);
  *(*(a1[9] + 8) + 24) = *(*(a1[9] + 8) + 24);

  return 1;
}

void nw_protocol_nwswifttlsrecord_begin_connection(uint64_t a1)
{
  v2 = nw_protocol_downcast();
  if (v2)
  {
    if (*(v2 + 267) == 1)
    {
      v3 = nw_protocol_downcast();
      if (v3)
      {
        v4 = v3;
        v5 = [MEMORY[0x1E696AEC0] stringWithCString:v3 + 269 encoding:1];
        v6 = *(v4 + 232);
        if (v6 && *(v4 + 240))
        {
          v7 = _Block_copy(v6);
          v8 = *(v4 + 240);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __nwswifttlsrecord_begin_server_connection_block_invoke;
          aBlock[3] = &unk_1E7B2E590;
          v47 = v7;
          v48 = v4;
          v46 = v8;
          v9 = v8;
          v10 = v7;
          v11 = _Block_copy(aBlock);
          v12 = [_TtC10nwswifttls17STLSRecordHandler alloc];
          LOBYTE(v42) = *(v4 + 266);
          v13 = [(STLSRecordHandler *)v12 init:*(v4 + 152) serverKey:*(v4 + 184) alpn:*(v4 + 160) EPSKs:*(v4 + 224) epskSelectionBlock:v11 rawEPSKsEnabled:*(v4 + 248) enableEarlyData:v42 logStr:v5];
          v14 = *(v4 + 104);
          *(v4 + 104) = v13;
        }

        else
        {
          v23 = *(v4 + 192);
          v24 = [_TtC10nwswifttls17STLSRecordHandler alloc];
          v25 = *(v4 + 152);
          if (v23)
          {
            v26 = [(STLSRecordHandler *)v24 init:v25 alpn:*(v4 + 160) pakeContext:*(v4 + 192) pakeClientIdentity:*(v4 + 200) pakeServerIdentity:*(v4 + 208) pakePasswordVerifier:*(v4 + 216) logStr:v5];
          }

          else
          {
            LOBYTE(v42) = *(v4 + 266);
            v26 = [(STLSRecordHandler *)v24 init:v25 serverKey:*(v4 + 184) alpn:*(v4 + 160) EPSKs:*(v4 + 224) epskSelectionBlock:0 rawEPSKsEnabled:*(v4 + 248) enableEarlyData:v42 logStr:v5];
          }

          v36 = *(v4 + 104);
          *(v4 + 104) = v26;
        }

        v37 = *(v4 + 224);
        *(v4 + 224) = 0;

        v38 = *(v4 + 232);
        *(v4 + 232) = 0;

        v39 = *(v4 + 240);
        *(v4 + 240) = 0;

        v40 = *(v4 + 160);
        *(v4 + 160) = 0;

        v41 = *(v4 + 184);
        if (v41)
        {
          CFRelease(v41);
        }

        *(v4 + 184) = 0;
        if (*(v4 + 104))
        {
          nwswifttlsrecord_read(a1);
          nwswifttlsrecord_write_bytes();
        }
      }
    }

    else
    {
      v15 = nw_protocol_downcast();
      if (v15)
      {
        v16 = v15;
        v44 = *(v15 + 168);
        v17 = [MEMORY[0x1E696AEC0] stringWithCString:v16 + 269 encoding:1];
        if (*(v16 + 176) || *(v16 + 177))
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v16 + 176)];
          [v18 addObject:v19];

          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v16 + 177)];
          [v18 addObject:v20];
        }

        else
        {
          v18 = 0;
        }

        v21 = *(v16 + 224);
        if (v21)
        {
          v22 = [v21 objectAtIndexedSubscript:0];
        }

        else
        {
          v22 = 0;
        }

        v27 = *(v16 + 192);
        v28 = [_TtC10nwswifttls17STLSRecordHandler alloc];
        if (v27)
        {
          v29 = [(STLSRecordHandler *)v28 init:*(v16 + 152) alpn:*(v16 + 160) sessionState:v44 ticketRequest:v18 pakeContext:*(v16 + 192) pakeClientIdentity:*(v16 + 200) pakeServerIdentity:*(v16 + 208) pakeClientPasswordVerifier:*(v16 + 216) logStr:v17];
        }

        else
        {
          BYTE1(v43) = *(v16 + 266);
          LOBYTE(v43) = *(v16 + 248);
          v29 = [(STLSRecordHandler *)v28 init:*(v16 + 144) serverName:*(v16 + 152) alpn:*(v16 + 160) sessionState:v44 ticketRequest:v18 keyExchangeGroup:*(v16 + 178) externalPreSharedKey:v22 rawEPSKsEnabled:v43 enableEarlyData:v17 logStr:?];
        }

        v30 = *(v16 + 104);
        *(v16 + 104) = v29;

        v31 = *(v16 + 224);
        *(v16 + 224) = 0;

        v32 = *(v16 + 144);
        *(v16 + 144) = 0;

        v33 = *(v16 + 160);
        *(v16 + 160) = 0;

        v34 = *(v16 + 152);
        *(v16 + 152) = 0;

        v35 = *(v16 + 104);
        if (v35)
        {
          [v35 startHandshake];
          nwswifttlsrecord_write_bytes();
        }
      }
    }
  }
}

void __nwswifttlsrecord_begin_server_connection_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __nwswifttlsrecord_begin_server_connection_block_invoke_2;
  v13[3] = &unk_1E7B2E518;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v5;
  v16 = v9;
  v17 = v6;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  dispatch_sync(v8, v13);
}

uint64_t nwswifttlsrecord_read(uint64_t result)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_50;
  }

  v1 = result;
  result = nw_protocol_downcast();
  if (!result)
  {
    goto LABEL_50;
  }

  v2 = result;
  if (*(result + 264))
  {
    goto LABEL_50;
  }

  *(result + 264) = 1;
  v3 = *(result + 252);
  if (v3 == 1)
  {
    bytes = nwswifttlsrecord_read_bytes(v1, [*(result + 104) getBytesToReadCount]);
    v12 = nw_protocol_downcast();
    if (v12)
    {
      v13 = v12;
      if ((*(v12 + 265) & 1) == 0)
      {
        *(v12 + 265) = 1;
        if ([*(v12 + 104) isHandshakeComplete])
        {
          *(v13 + 252) = 2;
          *(v13 + 136) = nwswifttls_helper_get_current_time_ms();
          v14 = g_nwswifttls_log;
          if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(v13 + 267);
            v15 = *(v13 + 104);
            v16 = v14;
            v26 = [v15 getNegotiatedCiphersuite];
            v17 = [*(v13 + 104) getNegotiatedGroup];
            v18 = [v17 UTF8String];
            v19 = [*(v13 + 104) getPAKEOffered];
            v20 = [*(v13 + 104) getNegotiatedPAKE];
            v21 = [*(v13 + 104) getEPSKOffered];
            v22 = [*(v13 + 104) getNegotiatedEPSK];
            v23 = *(v13 + 248);
            *buf = 136449026;
            *&buf[4] = "nwswifttlsrecord_continue_handshake";
            *&buf[12] = 1024;
            *&buf[14] = 785;
            *&buf[18] = 2082;
            *&buf[20] = v13 + 269;
            *&buf[28] = 2048;
            *&buf[30] = v13;
            *&buf[38] = 1024;
            v29 = v27;
            v30 = 2048;
            v31 = v26;
            v32 = 2080;
            v33 = v18;
            v34 = 1024;
            v35 = v19;
            v36 = 2048;
            v37 = v20;
            v38 = 1024;
            v39 = v21;
            v40 = 1024;
            v41 = v22;
            v42 = 1024;
            v43 = v23;
            _os_log_impl(&dword_1B25F5000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] TLS connected [server(%{BOOL}d) ciphersuite(%ld), group(%s), pake_offered(%{BOOL}d), pake(0x%04lx), epsk_offered(%{BOOL}d), epsk_used(%{BOOL}d), raw_epsk?(%{BOOL}d)]", buf, 0x62u);
          }

          v24 = *(v13 + 24);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __nwswifttlsrecord_continue_handshake_block_invoke;
          *&buf[24] = &__block_descriptor_40_e9_B16__0_v8lu32l8;
          *&buf[32] = v13;
          nw_protocol_metadata_access_handle();
          nw_protocol_get_input_handler();
          nw_protocol_connected();
        }

        else
        {
          nwswifttlsrecord_write_bytes();
        }

        *(v13 + 265) = 0;
      }
    }

    if (bytes >= 1 && ([*(v2 + 104) alertSentOrReceived] & 1) == 0)
    {
      *(v2 + 264) = 0;
    }

    nwswifttlsrecord_read(v1);
    goto LABEL_47;
  }

  if (v3 != 2)
  {
    goto LABEL_47;
  }

  nw_protocol_get_input_handler();
  if (*(v2 + 262))
  {
    goto LABEL_38;
  }

  v4 = 0;
  while (1)
  {
    [*(v2 + 104) getAvailableApplicationDataLength];
    if ([*(v2 + 104) getAvailableApplicationDataLength] > 0x800000)
    {
      break;
    }

    if (nwswifttlsrecord_read_bytes(v1, [*(v2 + 104) getBytesToReadCount]) < 1)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_16;
    }

    v5 = [*(v2 + 104) getAvailableApplicationDataLength];
    if (v5 > 0x800000)
    {
      if (datapath_logging_enabled == 1)
      {
        v6 = g_nwswifttls_log;
        if (g_nwswifttls_log)
        {
          v7 = v5;
          if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447234;
            *&buf[4] = "nwswifttlsrecord_read";
            *&buf[12] = 1024;
            *&buf[14] = 462;
            *&buf[18] = 2082;
            *&buf[20] = v2 + 269;
            *&buf[28] = 2048;
            *&buf[30] = v2;
            *&buf[38] = 1024;
            v29 = v7;
            _os_log_debug_impl(&dword_1B25F5000, v6, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Passed max input threshold, stopping reading to deliver data (%u bytes)", buf, 0x2Cu);
          }
        }
      }

LABEL_16:
      if (nw_protocol_input_available_is_valid())
      {
        *(v2 + 261) = 1;
        nw_protocol_input_available();
        v8 = [*(v2 + 104) getAvailableApplicationDataLength];
        v4 = 0;
        if (*(v2 + 261) == 1 && v8 > 0x8000)
        {
          if (datapath_logging_enabled == 1)
          {
            v9 = g_nwswifttls_log;
            if (g_nwswifttls_log)
            {
              v10 = v8;
              if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136447234;
                *&buf[4] = "nwswifttlsrecord_read";
                *&buf[12] = 1024;
                *&buf[14] = 491;
                *&buf[18] = 2082;
                *&buf[20] = v2 + 269;
                *&buf[28] = 2048;
                *&buf[30] = v2;
                *&buf[38] = 1024;
                v29 = v10;
                _os_log_debug_impl(&dword_1B25F5000, v9, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] input_available unacknowledged, data (%u bytes) over readahead threshold, suspending reads", buf, 0x2Cu);
              }
            }
          }

          v4 = 0;
          *(v2 + 262) = 1;
        }
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_23;
    }

    v4 = 1;
LABEL_23:
    if (*(v2 + 262) == 1)
    {
      goto LABEL_38;
    }
  }

  if (datapath_logging_enabled == 1)
  {
    nwswifttlsrecord_read_cold_1();
  }

  *(v2 + 262) = 1;
LABEL_38:
  if (*(v2 + 263) == 1 && nw_protocol_input_finished_is_valid())
  {
    *(v2 + 263) = 0;
    nw_protocol_input_finished();
  }

LABEL_47:
  *(v2 + 264) = 0;
  result = [*(v2 + 104) alertSentOrReceived];
  if (result && *(v2 + 252) <= 2u)
  {
    nwswifttlsrecord_send_error(v1, [*(v2 + 104) getErrorCode]);
    result = nw_protocol_disconnect();
  }

LABEL_50:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void *nwswifttlsrecord_read_bytes(uint64_t a1, unsigned int a2)
{
  v4 = nw_protocol_downcast();
  v5 = 0;
  if (!a2)
  {
    return v5;
  }

  v6 = v4;
  if (!v4)
  {
    return v5;
  }

  if (*(v4 + 252) == 2)
  {
    if (datapath_logging_enabled == 1)
    {
      nwswifttlsrecord_read_bytes_cold_2();
    }
  }

  else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    nwswifttlsrecord_read_bytes_cold_1();
  }

  if (!nw_frame_array_is_empty())
  {
    goto LABEL_13;
  }

  HIDWORD(v17) = 0;
  output_handler = nw_protocol_get_output_handler();
  v8 = v6;
  if (!output_handler)
  {
    goto LABEL_24;
  }

  nw_protocol_upcast();
  v26[0] = 0;
  v26[1] = 0;
  nw_frame_array_init();
  if ((nw_protocol_get_input_frames_is_valid() & 1) == 0)
  {
    v13 = g_nwswifttls_log;
    if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      nwswifttlsrecord_read_bytes_cold_3(v8, v13);
    }

LABEL_24:

    goto LABEL_25;
  }

  input_frames = nw_protocol_get_input_frames();
  HIDWORD(v17) = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = v26;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __nwswifttlsrecord_read_frames_block_invoke;
  v21 = &unk_1E7B2E5E0;
  v23 = v25;
  v24 = &v17 + 4;
  v10 = v8;
  v22 = v10;
  nw_frame_array_foreach();

  _Block_object_dispose(v25, 8);
  if (input_frames)
  {
LABEL_13:
    v11 = malloc_type_calloc(a2, 1uLL, 0xAC29C5E4uLL);
    v5 = v11;
    if (v11)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      LODWORD(v21) = 0;
      v15 = MEMORY[0x1E69E9820];
      LODWORD(v17) = a2;
      v16 = v11;
      nw_frame_array_foreach();
      if (*(v6 + 252) == 2)
      {
        if (datapath_logging_enabled == 1)
        {
          nwswifttlsrecord_read_bytes_cold_5(v6, &v19);
        }
      }

      else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
      {
        nwswifttlsrecord_read_bytes_cold_4(v6, &v19);
      }

      v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 length:*(v19 + 24) freeWhenDone:{1, v15, 3221225472, __nwswifttlsrecord_read_bytes_block_invoke, &unk_1E7B2E5B8, &v18, v6, v16, a1, v17}];
      [*(v6 + 104) processNetworkDataWithNetworkDataIn:v12];
      v5 = *(v19 + 24);

      _Block_object_dispose(&v18, 8);
    }

    return v5;
  }

LABEL_25:
  if (*(v6 + 252) == 2)
  {
    if (datapath_logging_enabled == 1)
    {
      nwswifttlsrecord_read_bytes_cold_7();
    }
  }

  else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    nwswifttlsrecord_read_bytes_cold_6();
  }

  return 0;
}

BOOL __nwswifttlsrecord_read_bytes_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = (a1 + 40);
  v6 = *(*(a1 + 40) + 112);
  if (v6)
  {
    v7 = v6 == v3 || g_nwswifttls_log == 0;
    if (!v7 && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
    {
      __nwswifttlsrecord_read_bytes_block_invoke_cold_1(a1 + 40);
    }
  }

  nw_frame_unclaimed_bytes();
  v8 = *(a1 + 64) - *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24);
  if (*(*v5 + 120))
  {
    v9 = *(a1 + 56);
    if ((nw_frame_unclaim() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      __nwswifttlsrecord_read_bytes_block_invoke_cold_2(a1 + 40);
    }

    v10 = *(*v5 + 112);
    *(*v5 + 112) = 0;

    *(*v5 + 120) = 0;
    v11 = *v5;
  }

  nw_frame_array_remove();
  nw_frame_finalize();
  v12 = *(*(*(a1 + 32) + 8) + 24) < *(a1 + 64);

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __nwswifttlsrecord_read_frames_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  **(a1 + 48) += nw_frame_unclaimed_length();
  v4 = *(*(*(a1 + 40) + 8) + 24);
  nw_frame_array_remove();
  v5 = *(a1 + 32);
  nw_frame_array_append();

  return 1;
}

BOOL __nwswifttlsrecord_continue_handshake_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 34) = [*(*(a1 + 32) + 104) getNegotiatedCiphersuite];
    v4 = [*(*(a1 + 32) + 104) getNegotiatedGroup];
    v5 = [v4 UTF8String];

    if (v5)
    {
      v6 = *(a2 + 176);
      if (v6)
      {
        free(v6);
        *(a2 + 176) = 0;
      }

      *(a2 + 176) = strdup(v5);
    }

    *(a2 + 320) = [*(*(a1 + 32) + 104) getNegotiatedPAKE];
    if ([*(*(a1 + 32) + 104) getNegotiatedEPSK])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFD | v7;
    *(a2 + 376) = *(a2 + 376) & 0xFE | [*(*(a1 + 32) + 104) getEPSKOffered];
    *(a2 + 32) = 772;
    if ([*(*(a1 + 32) + 104) getPAKEOffered])
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFB | v8;
  }

  return a2 != 0;
}

uint64_t __nwswifttlsrecord_get_input_frames_block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if (*(v1 + 252) != 2)
  {
    if (datapath_logging_enabled == 1)
    {
      __nwswifttlsrecord_get_input_frames_block_invoke_cold_1((result + 32), v1, &v5);
      v1 = v5;
    }

    *(v1 + 262) = 0;
    v3 = *v2;
    v4 = nw_protocol_upcast();
    return nwswifttlsrecord_read(v4);
  }

  return result;
}

void nwswifttlsrecord_frame_input_finalizer(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (v4 && a3)
  {
    nw_frame_array_remove();
    buffer = nw_frame_get_buffer();
    if (buffer)
    {
      v6 = buffer;
      if (nw_frame_buffer_get_manager())
      {
        nw_mem_buffer_free();
      }

      else
      {
        free(v6);
      }
    }
  }
}

void nwswifttlsrecord_frame_output_finalizer(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (v4 && a3)
  {
    nw_frame_array_remove();
    if (nw_frame_uses_external_data())
    {
      nw_frame_set_external_data();
    }

    else
    {
      buffer = nw_frame_get_buffer();
      if (buffer)
      {
        free(buffer);
      }
    }

    nw_frame_reset();
  }
}

uint64_t __nwswifttlsrecord_write_frames_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_frame_uses_external_data())
  {
    v4 = nw_frame_copy_external_data();
    subrange = dispatch_data_create_subrange(v4, 0, 0);
    [*(*(a1 + 32) + 104) addApplicationData:subrange];
  }

  else
  {
    v6 = nw_frame_unclaimed_bytes();
    nw_frame_will_free_buffer_externally();
    v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v6 length:0 freeWhenDone:1];
    [*(*(a1 + 32) + 104) addApplicationData:v4];
  }

  v7 = *(a1 + 32);
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nwswifttlsrecord_reset_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nwswifttlsrecord_reset_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

void OUTLINED_FUNCTION_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x26u);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

BOOL OUTLINED_FUNCTION_14()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_17()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

__darwin_time_t nwswifttls_helper_get_current_time_ms()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 1000;
}

BOOL nwswifttlsrecord_configure_server_name(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a2 && *(a2 + 8))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:*(a2 + 8) encoding:4];
      v8 = v6[19];
      v6[19] = v7;
      v9 = 1;
    }

    else
    {
      v8 = v5;
      if (a3 && ((*(*(*(a3 + 48) + 24) + 136))(), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        v12 = nw_endpoint_copy_proxy_original_endpoint();
        v13 = v12;
        if (v12)
        {
          v14 = v12;

          v11 = v14;
        }

        v24 = 0;
        endpoint_name = nwswifttls_get_endpoint_name(v11, &v24);
        v16 = v11;
        v17 = nw_endpoint_copy_parent_endpoint();
        v18 = v16;
        if (v17)
        {
          v19 = v17;
          v20 = v16;
          do
          {
            v18 = v19;

            v19 = nw_endpoint_copy_parent_endpoint();
            v20 = v18;
          }

          while (v19);
        }

        if (nw_endpoint_get_type(v18) == (nw_endpoint_type_url|nw_endpoint_type_address))
        {
          if (v24 == 1)
          {
            free(endpoint_name);
          }

          endpoint_name = nwswifttls_get_endpoint_name(v18, &v24);
        }

        v9 = endpoint_name != 0;
        if (endpoint_name)
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:endpoint_name encoding:4];
          v22 = v8[19];
          v8[19] = v21;

          if (v24 == 1)
          {
            free(endpoint_name);
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL nwswifttlsrecord_configure_application_protocols(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (!*(a2 + 48) || (v5 = MEMORY[0x1B274EDF0](), v6 = MEMORY[0x1E69E9E50], v5 != MEMORY[0x1E69E9E50]))
    {
      v4 = 0;
      goto LABEL_23;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *(v3 + 20);
    *(v3 + 20) = v7;

    if (!xpc_array_get_count(*(a2 + 48)))
    {
LABEL_22:
      v4 = [*(v3 + 20) count] != 0;
      goto LABEL_23;
    }

    v9 = 0;
    while (1)
    {
      v10 = xpc_array_get_value(*(a2 + 48), v9);
      if (MEMORY[0x1B274EDF0]() == v6)
      {
        uint64 = xpc_array_get_uint64(v10, 1uLL);
        v14 = *(v3 + 31);
        if (v14)
        {
          v15 = uint64 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && v14 != uint64)
        {
          goto LABEL_21;
        }

        v11 = v10;
        v12 = 0;
      }

      else
      {
        v11 = *(a2 + 48);
        v12 = v9;
      }

      string = xpc_array_get_string(v11, v12);
      if (string)
      {
        v18 = *(v3 + 20);
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        [v18 addObject:v19];
      }

LABEL_21:

      if (++v9 >= xpc_array_get_count(*(a2 + 48)))
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:

  return v4;
}

const __CFArray *nwswifttlsrecord_configure_server_raw_public_key_certificate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3)
  {
    if (a2)
    {
      v4 = *(a2 + 280);
      if (v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = v3[18];
        v3[18] = v5;

        if (v3[18])
        {
          if (CFArrayGetCount(v4))
          {
            v7 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
              if (ValueAtIndex)
              {
                [v3[18] addObject:ValueAtIndex];
              }

              ++v7;
            }

            while (v7 < CFArrayGetCount(v4));
          }

          v4 = ([v3[18] count] != 0);
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

uint64_t nwswifttlsrecord_configure_pake(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (*(a2 + 56))
    {
      v5 = sec_identity_copy_type();
      v6 = *(a2 + 56);
      v7 = sec_identity_copy_SPAKE2PLUSV1_context();
      v8 = *(a2 + 56);
      v9 = sec_identity_copy_SPAKE2PLUSV1_client_identity();
      v10 = *(a2 + 56);
      v11 = sec_identity_copy_SPAKE2PLUSV1_server_identity();
      v12 = v11;
      v4 = 0;
      if (v5 != 2 || !v7 || !v9 || !v11)
      {
        goto LABEL_22;
      }

      v13 = *(a2 + 56);
      if (*(v3 + 267) == 1)
      {
        v4 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
        v14 = *(a2 + 56);
        v15 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
        v16 = v15;
        if (!v4 || !v15)
        {

          v4 = 0;
          goto LABEL_22;
        }

        v17 = [MEMORY[0x1E695DF88] dataWithData:v4];
        [v17 appendData:v16];
        objc_storeStrong(v3 + 27, v17);
        v18 = g_nwswifttls_log;
        if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136446978;
          v23 = "nwswifttlsrecord_configure_pake";
          v24 = 1024;
          v25 = 391;
          v26 = 2082;
          v27 = v3 + 269;
          v28 = 2048;
          v29 = v3;
          _os_log_impl(&dword_1B25F5000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Configured SPAKE2+ server identity successfully", &v22, 0x26u);
        }
      }

      else
      {
        v4 = sec_identity_copy_SPAKE2PLUSV1_client_password_verifier();
        if (!v4)
        {
LABEL_22:

          goto LABEL_23;
        }

        objc_storeStrong(v3 + 27, v4);
        v19 = g_nwswifttls_log;
        if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136446978;
          v23 = "nwswifttlsrecord_configure_pake";
          v24 = 1024;
          v25 = 399;
          v26 = 2082;
          v27 = v3 + 269;
          v28 = 2048;
          v29 = v3;
          _os_log_impl(&dword_1B25F5000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Configured SPAKE2+ client identity successfully", &v22, 0x26u);
        }
      }

      objc_storeStrong(v3 + 24, v7);
      objc_storeStrong(v3 + 25, v9);
      objc_storeStrong(v3 + 26, v12);
      v4 = 1;
      goto LABEL_22;
    }

    v4 = 0;
  }

LABEL_23:

  v20 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t nwswifttls_configure_pake(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (*(a2 + 56))
    {
      v5 = sec_identity_copy_type();
      v6 = *(a2 + 56);
      v7 = sec_identity_copy_SPAKE2PLUSV1_context();
      v8 = *(a2 + 56);
      v9 = sec_identity_copy_SPAKE2PLUSV1_client_identity();
      v10 = *(a2 + 56);
      v11 = sec_identity_copy_SPAKE2PLUSV1_server_identity();
      v12 = v11;
      v4 = 0;
      if (v5 != 2 || !v7 || !v9 || !v11)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 56);
      if (*(v3 + 304) == 1)
      {
        v14 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
        v15 = *(a2 + 56);
        v16 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
        v17 = v16;
        if (v14 && v16)
        {
          v18 = [MEMORY[0x1E695DF88] dataWithData:v14];
          [v18 appendData:v17];
          v19 = *(v3 + 48);
          *(v3 + 48) = v18;

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B25F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Configured SPAKE2+ server identity successfully", buf, 2u);
          }

LABEL_18:
          objc_storeStrong(v3 + 45, v7);
          objc_storeStrong(v3 + 46, v9);
          objc_storeStrong(v3 + 47, v12);
          v4 = 1;
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v20 = sec_identity_copy_SPAKE2PLUSV1_client_password_verifier();
        if (v20)
        {
          v21 = *(v3 + 48);
          *(v3 + 48) = v20;

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&dword_1B25F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Configured SPAKE2+ client identity successfully", v23, 2u);
          }

          goto LABEL_18;
        }
      }

      v4 = 0;
      goto LABEL_21;
    }

    v4 = 0;
  }

LABEL_22:

  return v4;
}

uint64_t nwswifttlsrecord_configure_with_sec_protocol_options(uint64_t result)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v1 = *(result + 16);
      return nw_protocol_options_access_handle();
    }
  }

  return result;
}

BOOL __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke(uint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (g_nwswifttls_log)
    {
      result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        goto LABEL_68;
      }

      __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_5(a1);
    }

    goto LABEL_36;
  }

  v4 = (a1 + 32);
  if ((nwswifttlsrecord_configure_server_raw_public_key_certificate(*(a1 + 32), a2) & 1) == 0)
  {
    v5 = *(*v4 + 18);
    *(*v4 + 18) = 0;
  }

  if (!nwswifttlsrecord_configure_application_protocols(*v4, a2))
  {
    v6 = *(*v4 + 20);
    *(*v4 + 20) = 0;
  }

  if (!nwswifttlsrecord_configure_server_name(*(a1 + 32), a2, *(a1 + 40)))
  {
    v7 = *(*v4 + 19);
    *(*v4 + 19) = 0;
  }

  v8 = *v4;
  if ((*(*v4 + 267) & 1) == 0)
  {
    v8[176] = *(a2 + 304);
    *(*v4 + 177) = *(a2 + 305);
    v8 = *v4;
  }

  *(v8 + 89) = 24;
  if (*(a2 + 334) == 2)
  {
    *(*v4 + 89) = 4588;
  }

  v9 = *(a2 + 232);
  if (v9)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_6;
    applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16lu32l8;
    applier[4] = *v4;
    xpc_array_apply(v9, applier);
  }

  if (*(a2 + 56))
  {
    v10 = sec_identity_copy_type();
    if (v10 != 2)
    {
      if (v10 == 1)
      {
        if (*(*v4 + 267) == 1)
        {
          v11 = sec_identity_copy_ref(*(a2 + 56));
          *privateKeyRef = 0;
          if (SecIdentityCopyPrivateKey(v11, privateKeyRef))
          {
            if (v11)
            {
              CFRelease(v11);
            }

            if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
            {
              __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_3(v4);
            }

            goto LABEL_36;
          }

          *(*v4 + 23) = *privateKeyRef;
          if (v11)
          {
            CFRelease(v11);
          }
        }

        goto LABEL_43;
      }

      if (g_nwswifttls_log)
      {
        result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_68;
        }

        __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_4(v4);
      }

LABEL_36:
      result = 0;
      goto LABEL_68;
    }

    if (*(*v4 + 267) == 1 && (*(a2 + 384) || *(a2 + 392)))
    {
      if (g_nwswifttls_log)
      {
        result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_68;
        }

        __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_1((a1 + 32));
      }

      goto LABEL_36;
    }

    if ((nwswifttlsrecord_configure_pake(*v4, a2) & 1) == 0)
    {
      v13 = *(*v4 + 24);
      *(*v4 + 24) = 0;

      v14 = *(*v4 + 25);
      *(*v4 + 25) = 0;

      v15 = *(*v4 + 26);
      *(*v4 + 26) = 0;

      v16 = *(*v4 + 27);
      *(*v4 + 27) = 0;

      if (g_nwswifttls_log)
      {
        if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
        {
          __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_2(v4);
        }
      }
    }
  }

LABEL_43:
  v17 = a2 + 369;
  if ((*(a2 + 371) & 0x80) != 0 && !*(a2 + 384))
  {
    objc_storeStrong(*v4 + 21, *(a2 + 192));
    *(*v4 + 266) = (*v17 & 0x800000) != 0;
  }

  if (*(a2 + 384))
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = *(*v4 + 28);
    *(*v4 + 28) = v18;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = *(a2 + 384);
    v20 = [obj countByEnumeratingWithState:&v49 objects:v77 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v50;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v49 + 1) + 8 * i);
          v25 = v4;
          v26 = *(*v4 + 28);
          v27 = [SwiftTLSExternalPreSharedKey alloc];
          v28 = [v24 external_identity];
          v29 = [v24 epsk];
          v30 = [v24 context];
          v31 = [(SecExternalPreSharedKey *)v27 initWithExternalIdentity:v28];
          v32 = v26;
          v4 = v25;
          [v32 addObject:v31];
        }

        v21 = [obj countByEnumeratingWithState:&v49 objects:v77 count:16];
      }

      while (v21);
    }

    v17 = a2 + 369;
    if ((*(a2 + 371) & 0x80) != 0)
    {
      *(*v4 + 266) = 1;
    }
  }

  *(*v4 + 248) = *(a2 + 408) & 1;
  if (*(*v4 + 267) == 1)
  {
    v33 = *(a2 + 392);
    if (v33)
    {
      if (*(a2 + 400))
      {
        v34 = _Block_copy(v33);
        v35 = *(*v4 + 29);
        *(*v4 + 29) = v34;

        objc_storeStrong(*v4 + 30, *(a2 + 400));
        if ((*(v17 + 2) & 0x80) != 0)
        {
          *(*v4 + 266) = 1;
        }
      }
    }
  }

  v36 = g_nwswifttls_log;
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *v4;
    if (*v4)
    {
      v38 = v37 + 269;
    }

    else
    {
      v38 = "";
    }

    v39 = v37[267];
    v40 = *(v37 + 89);
    v41 = *(v37 + 21) != 0;
    v42 = *(v37 + 27) != 0;
    v43 = v37[248];
    v44 = *(v37 + 28) != 0;
    v45 = *(v37 + 29) != 0;
    v46 = v37[266];
    *privateKeyRef = 136449026;
    *&privateKeyRef[4] = "nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke";
    v55 = 1024;
    v56 = 749;
    v57 = 2082;
    v58 = v38;
    v59 = 2048;
    v60 = v37;
    v61 = 1024;
    v62 = v39;
    v63 = 1024;
    v64 = v40;
    v65 = 1024;
    v66 = v41;
    v67 = 1024;
    v68 = v42;
    v69 = 1024;
    v70 = v43;
    v71 = 1024;
    v72 = v44;
    v73 = 1024;
    v74 = v45;
    v75 = 1024;
    v76 = v46;
    _os_log_impl(&dword_1B25F5000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] TLS configured [server(%{BOOL}d), fixed_key_exchange_group(%d), session_state(%{BOOL}d), pake(%{BOOL}d), raw_epsks_enabled(%{BOOL}d), external_pre_shared_keys(%{BOOL}d),  external_psk_selection_block(%{BOOL}d), early_data_enabled(%{BOOL}d)]", privateKeyRef, 0x56u);
  }

  result = 1;
LABEL_68:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_6(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  v5 = value;
  if (value != 4588 && value != 29)
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 32) + 178) = v5;
  return result;
}

uint64_t *OUTLINED_FUNCTION_3_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t configureClientStateMachine(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:useRawEPSKs:enableEarlyData:pakeClientConfiguration:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, __int128 *a12)
{
  v135 = a8;
  v148 = a7;
  v143 = a6;
  v144 = a4;
  v149 = a5;
  v145 = a3;
  v131 = a12;
  v147 = a11;
  v146 = a10;
  v15 = type metadata accessor for SymmetricKey();
  v132 = *(v15 - 8);
  v133 = v15;
  v16 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for EPSK(0);
  v18 = *(*(v127 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v127);
  v129 = (&v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v126 = (&v123 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v123 - v23;
  v24 = type metadata accessor for HandshakeStateMachine(0);
  v151 = *(v24 - 8);
  v25 = *(v151 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v125 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v128 = &v123 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v140 = &v123 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v123 - v32;
  v134 = type metadata accessor for P256.Signing.PublicKey();
  v142 = *(v134 - 8);
  v34 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v36 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for NSFastEnumerationIterator();
  v37 = *(*(v152 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v152);
  v40 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v43 = &v123 - v42;
  if (a2)
  {
    v154 = v41;
    v139 = v33;
    v141 = a2;
    if (a1)
    {
      v44 = a2;
      v45 = a1;
    }

    else
    {
      type metadata accessor for NSArray();
      v52 = a2;
      v45 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    }

    v137 = v24;
    v138 = a9;
    v53 = a1;
    v136 = v45;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v166 + 1))
    {
      v54 = v142 + 32;
      v150 = MEMORY[0x1E69E7CC0];
      do
      {
        outlined init with take of Any(&v165, &v158);
        if (swift_dynamicCast())
        {
          v55 = v156[0];
          v158 = v156[0];
          outlined copy of Data._Representation(*&v156[0], *(&v156[0] + 1));
          lazy protocol witness table accessor for type Data and conformance Data();
          P256.Signing.PublicKey.init<A>(derRepresentation:)();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v124 = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v150[2] + 1, 1, v150);
          }

          v58 = v150[2];
          v57 = v150[3];
          v123 = v58 + 1;
          if (v58 >= v57 >> 1)
          {
            v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v150);
          }

          outlined consume of Data._Representation(v55, *(&v55 + 1));
          v59 = v150;
          v150[2] = v123;
          v60 = v59 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v58;
          v54 = v124;
          (*(v142 + 32))(v60, v36, v134);
        }

        NSFastEnumerationIterator.next()();
      }

      while (*(&v166 + 1));
    }

    else
    {
      v150 = MEMORY[0x1E69E7CC0];
    }

    v61 = *(v154 + 8);
    v154 += 8;
    v61(v43, v152);
    if (v143)
    {
      v62 = v144;
      if (*(v143 + 16) == 2)
      {
        LODWORD(v142) = 0;
        LODWORD(v143) = *(v143 + 32);
        if (!v144)
        {
          goto LABEL_39;
        }

LABEL_27:
        v63 = v62;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        if (*(&v166 + 1))
        {
          v64 = MEMORY[0x1E69E7CC0];
          do
          {
            while (1)
            {
              outlined init with take of Any(&v165, &v158);
              if (swift_dynamicCast())
              {
                break;
              }

              NSFastEnumerationIterator.next()();
              if (!*(&v166 + 1))
              {
                goto LABEL_41;
              }
            }

            v144 = v63;
            v65 = v156[0];
            v66 = swift_isUniquelyReferenced_nonNull_native();
            v134 = *(&v65 + 1);
            if ((v66 & 1) == 0)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
            }

            v68 = *(v64 + 2);
            v67 = *(v64 + 3);
            if (v68 >= v67 >> 1)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v64);
            }

            *(v64 + 2) = v68 + 1;
            v69 = &v64[16 * v68];
            v70 = v134;
            *(v69 + 4) = v65;
            *(v69 + 5) = v70;
            NSFastEnumerationIterator.next()();
            v63 = v144;
          }

          while (*(&v166 + 1));
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

LABEL_41:
        v61(v40, v152);

LABEL_42:
        v71 = v141;
        if (v145)
        {
          v72 = v145;
          v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v76 = v75 >> 62;
          if ((v75 >> 62) > 1)
          {
            if (v76 == 2)
            {
              v77 = v73[2];
            }

            else
            {
              v77 = 0;
            }
          }

          else if (v76)
          {
            v77 = v73;
          }

          else
          {
            v77 = 0;
          }
        }

        else
        {
          v73 = 0;
          v77 = 0;
          v75 = 0xF000000000000000;
        }

        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;
        if (!*(v64 + 2))
        {

          v64 = 0;
        }

        outlined copy of Data?(v73, v75);
        HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v78, v80, v150, v73, v75, v77, v64, v143 | (v142 << 16), v157, v148 & 0x1FFFF, v147 & 1, v146 & 1);
        if (v149)
        {
          v81 = v149;
          v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;
          outlined init with copy of HandshakeStateMachine.Configuration(v157, &v165);
          v85 = v140;
          _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v82, v84, v157, v155, v140);
          outlined consume of ByteBuffer?(v73, v75);

          outlined destroy of HandshakeStateMachine.Configuration(v157);
          v92 = v85;
          v93 = v139;
LABEL_59:
          outlined init with take of ServerHandshakeStateMachine(v92, v93, type metadata accessor for HandshakeStateMachine);
LABEL_78:
          v120 = v138;
LABEL_79:
          outlined init with take of ServerHandshakeStateMachine(v93, v120, type metadata accessor for HandshakeStateMachine);
          return (*(v151 + 56))(v120, 0, 1, v137);
        }

        v154 = v77;
        if (v135)
        {
          v86 = v135;
          v87 = [v86 external_identity];
          v152 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v88;

          v90 = 0;
          v91 = v89 >> 62;
          v145 = v73;
          if ((v89 >> 62) > 1)
          {
            if (v91 == 2)
            {
              v90 = *(v152 + 16);
            }
          }

          else if (v91)
          {
            v90 = v152;
          }

          v150 = v90;
          v98 = [v86 epsk];
          v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;

          *&v165 = v99;
          *(&v165 + 1) = v101;
          SymmetricKey.init<A>(data:)();
          v102 = [v86 context];

          v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          v106 = 0;
          v107 = v105 >> 62;
          if ((v105 >> 62) > 1)
          {
            if (v107 == 2)
            {
              v106 = *(v103 + 16);
            }
          }

          else if (v107)
          {
            v106 = v103;
          }

          v108 = v153;
          if (SymmetricKey.bitCount.getter() > 127)
          {
            v109 = v126;
            *v126 = v152;
            *(v109 + 8) = v89;
            *(v109 + 16) = v150;
            v110 = v127;
            (*(v132 + 32))(v109 + *(v127 + 20), v108, v133);
            v111 = (v109 + *(v110 + 24));
            *v111 = v103;
            v111[1] = v105;
            v111[2] = v106;
            v112 = v130;
            outlined init with take of ServerHandshakeStateMachine(v109, v130, type metadata accessor for EPSK);
            v113 = v129;
            outlined init with copy of ServerHandshakeStateMachine.Configuration(v112, v129, type metadata accessor for EPSK);
            outlined init with copy of HandshakeStateMachine.Configuration(v157, &v165);
            v114 = v128;
            _s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v113, v157, v155, v128);
            v93 = v139;
            outlined destroy of ServerHandshakeStateMachine.Configuration(v112, type metadata accessor for EPSK);
            outlined consume of ByteBuffer?(v145, v75);

            outlined destroy of HandshakeStateMachine.Configuration(v157);
            v92 = v114;
            goto LABEL_59;
          }

          v165 = xmmword_1B26C5EE0;
          LOBYTE(v166) = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v103, v105);
          outlined consume of Data._Representation(v152, v89);
          (*(v132 + 8))(v108, v133);
          v71 = v141;
          v115 = v145;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v116 = type metadata accessor for Logger();
          __swift_project_value_buffer(v116, logger);
          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            *v119 = 0;
            _os_log_impl(&dword_1B25F5000, v117, v118, "Failed to use provided EPSK", v119, 2u);
            MEMORY[0x1B274ECF0](v119, -1, -1);
          }

          v93 = v139;
          HandshakeStateMachine.init(configuration:)(v157, v139);
          outlined consume of ByteBuffer?(v115, v75);
        }

        else
        {
          v94 = v131;
          v95 = v131[5];
          v162 = v131[4];
          v163 = v95;
          v164[0] = v131[6];
          *(v164 + 9) = *(v131 + 105);
          v96 = v131[1];
          v158 = *v131;
          v159 = v96;
          v97 = v131[3];
          v160 = v131[2];
          v161 = v97;
          if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v158) != 1)
          {
            v169 = v162;
            v170 = v163;
            v171[0] = v164[0];
            *(v171 + 9) = *(v164 + 9);
            v165 = v158;
            v166 = v159;
            v167 = v160;
            v168 = v161;
            outlined init with copy of Any?(v94, v156, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            outlined init with copy of HandshakeStateMachine.Configuration(v157, v156);
            outlined init with copy of Any?(v94, v156, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            v121 = v125;
            _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v165, v157, v155, v125);
            v122 = v94;
            v120 = v138;
            outlined consume of ByteBuffer?(v73, v75);

            outlined destroy of HandshakeStateMachine.Configuration(v157);
            outlined destroy of P256.Signing.PrivateKey?(v122, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

            v93 = v139;
            outlined init with take of ServerHandshakeStateMachine(v121, v139, type metadata accessor for HandshakeStateMachine);
            goto LABEL_79;
          }

          v93 = v139;
          HandshakeStateMachine.init(configuration:)(v157, v139);
          outlined consume of ByteBuffer?(v73, v75);
        }

        goto LABEL_78;
      }

      LODWORD(v143) = 0;
      LODWORD(v142) = 1;
      if (v144)
      {
        goto LABEL_27;
      }
    }

    else
    {
      LODWORD(v143) = 0;
      LODWORD(v142) = 1;
      v62 = v144;
      if (v144)
      {
        goto LABEL_27;
      }
    }

LABEL_39:
    v64 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, logger);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1B25F5000, v47, v48, "Cannot start the handshake with NULL parameters", v49, 2u);
    MEMORY[0x1B274ECF0](v49, -1, -1);
  }

  v50 = *(v151 + 56);

  return v50(a9, 1, 1, v24);
}

uint64_t configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  LODWORD(v169) = a8;
  v151 = a7;
  v152 = a6;
  v168 = a5;
  v164 = a1;
  v150 = a9;
  v149 = type metadata accessor for ServerHandshakeStateMachine(0);
  v14 = *(v149 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v149);
  v145 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v143 = &v141 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v141 - v20;
  v167 = type metadata accessor for SymmetricKey();
  v157 = *(v167 - 8);
  v21 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v170 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for EPSK(0);
  v161 = *(v162 - 8);
  v23 = *(v161 + 64);
  v24 = MEMORY[0x1EEE9AC00](v162);
  v166 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v160 = (&v141 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v165 = &v141 - v28;
  v29 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v30 = *(*(v29 - 1) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v146 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v144 = &v141 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v142 = &v141 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v154 = (&v141 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v156 = &v141 - v43;
  v44 = type metadata accessor for NSFastEnumerationIterator();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v141 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v14;
  if (a4)
  {
    v159 = a2;
    *&v163 = a3;
    v49 = a4;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (v176)
    {
      v155 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v174, &v173);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!v176)
          {
            goto LABEL_15;
          }
        }

        v158 = v29;
        v51 = v171;
        v50 = v172;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v155 + 2) + 1, 1, v155);
        }

        v54 = *(v155 + 2);
        v53 = *(v155 + 3);
        if (v54 >= v53 >> 1)
        {
          v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v155);
        }

        v55 = v155;
        *(v155 + 2) = v54 + 1;
        v56 = &v55[16 * v54];
        v57 = v153;
        *(v56 + 4) = v51;
        *(v56 + 5) = v57;
        NSFastEnumerationIterator.next()();
        v29 = v158;
      }

      while (v176);
    }

    else
    {
      v155 = MEMORY[0x1E69E7CC0];
    }

LABEL_15:
    (*(v45 + 8))(v48, v44);

    a3 = v163;
    a2 = v159;
  }

  else
  {
    v155 = MEMORY[0x1E69E7CC0];
  }

  v58 = type metadata accessor for P256.Signing.PrivateKey();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v60(v156, 1, 1, v58);
  if (a2)
  {
    v61 = a2;
    convertPrivateKey(_:)(v61, v42);
    if ((*(v59 + 48))(v42, 1, v58) == 1)
    {

      outlined destroy of P256.Signing.PrivateKey?(v42, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, logger);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1B25F5000, v63, v64, "unable to convert server private key", v65, 2u);
        MEMORY[0x1B274ECF0](v65, -1, -1);
      }

      outlined destroy of P256.Signing.PrivateKey?(v156, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      v66 = 1;
      v67 = v150;
      v68 = v149;
      goto LABEL_81;
    }

    v69 = v156;
    outlined destroy of P256.Signing.PrivateKey?(v156, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);

    (*(v59 + 32))(v69, v42, v58);
    v60(v69, 0, 1, v58);
  }

  LODWORD(v163) = a11;
  if (!a3)
  {
    v159 = 0;
    v72 = 0xF000000000000000;
    goto LABEL_33;
  }

  v70 = a3;
  a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = v72 >> 62;
  if ((v72 >> 62) > 1)
  {
    if (v73 == 2)
    {
      v74 = a3[2];
      goto LABEL_31;
    }
  }

  else if (v73)
  {
    v74 = a3;
LABEL_31:
    v159 = v74;
    goto LABEL_33;
  }

  v159 = 0;
LABEL_33:
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  v78 = v29[5];
  v79 = v154;
  v60(v154 + v78, 1, 1, v58);
  v80 = (v79 + v29[6]);
  *v80 = xmmword_1B26C5EF0;
  v80[2] = 0;
  v81 = v29[7];
  *v79 = v75;
  v79[1] = v77;
  v82 = v155;

  outlined assign with copy of P256.Signing.PrivateKey?(v156, v79 + v78);
  v83 = v80[2];
  outlined consume of ByteBuffer?(*v80, v80[1]);
  *v80 = a3;
  v80[1] = v72;
  v80[2] = v159;
  *(v79 + v81) = v82;
  *(v79 + v29[8]) = v163 & 1;
  *(v79 + v29[9]) = 0;
  *(v79 + v29[10]) = v169 & 1;
  v84 = v168;
  if (!v168)
  {
    goto LABEL_67;
  }

  if (v168 >> 62)
  {
    if (v168 >= 0)
    {
      v122 = v168 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v122 = v168;
    }

    v85 = MEMORY[0x1B274D9C0](v122);
    if (v85)
    {
      goto LABEL_36;
    }

LABEL_67:
    v87 = MEMORY[0x1E69E7CC0];
    goto LABEL_68;
  }

  v85 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v85)
  {
    goto LABEL_67;
  }

LABEL_36:
  if (v85 < 1)
  {
    __break(1u);
    goto LABEL_84;
  }

  v86 = 0;
  v164 = v84 & 0xC000000000000001;
  v158 = (v157 + 32);
  v157 += 8;
  v87 = MEMORY[0x1E69E7CC0];
  v163 = xmmword_1B26C5EE0;
  v153 = 0x8400102uLL;
  v159 = v85;
  do
  {
    if (v164)
    {
      v88 = MEMORY[0x1B274D8D0](v86, v84);
    }

    else
    {
      v88 = *(v84 + 8 * v86 + 32);
    }

    v89 = v88;
    v90 = [v89 external_identity];
    v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    v94 = 0;
    v95 = v93 >> 62;
    if ((v93 >> 62) > 1)
    {
      if (v95 == 2)
      {
        v94 = *(v91 + 16);
      }
    }

    else if (v95)
    {
      v94 = v91;
    }

    v169 = v94;
    v96 = [v89 epsk];
    v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    *&v174 = v97;
    *(&v174 + 1) = v99;
    SymmetricKey.init<A>(data:)();
    v100 = [v89 context];

    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = 0;
    v105 = v103 >> 62;
    if ((v103 >> 62) > 1)
    {
      if (v105 == 2)
      {
        v104 = *(v101 + 16);
      }
    }

    else if (v105)
    {
      v104 = v101;
    }

    v106 = v170;
    if (SymmetricKey.bitCount.getter() > 127)
    {
      v114 = v87;
      v115 = v160;
      *v160 = v91;
      v115[1] = v93;
      v115[2] = v169;
      v116 = v162;
      (*v158)(v115 + *(v162 + 20), v106, v167);
      v117 = (v115 + *(v116 + 24));
      *v117 = v101;
      v117[1] = v103;
      v117[2] = v104;
      v118 = v115;
      v87 = v114;
      v119 = v165;
      outlined init with take of ServerHandshakeStateMachine(v118, v165, type metadata accessor for EPSK);
      outlined init with copy of ServerHandshakeStateMachine.Configuration(v119, v166, type metadata accessor for EPSK);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v114[2] + 1, 1, v114);
      }

      v84 = v168;
      v85 = v159;
      v121 = v87[2];
      v120 = v87[3];
      if (v121 >= v120 >> 1)
      {
        v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120 > 1, v121 + 1, 1, v87);
      }

      outlined destroy of ServerHandshakeStateMachine.Configuration(v165, type metadata accessor for EPSK);
      v87[2] = v121 + 1;
      outlined init with take of ServerHandshakeStateMachine(v166, v87 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v121, type metadata accessor for EPSK);
    }

    else
    {
      v174 = v163;
      v175 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v101, v103);
      outlined consume of Data._Representation(v91, v93);
      (*v157)(v106, v167);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      __swift_project_value_buffer(v107, logger);
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v110 = v153;
        swift_allocError();
        *v112 = v163;
        *(v112 + 16) = 2;
        v113 = _swift_stdlib_bridgeErrorToNSError();
        *(v110 + 4) = v113;
        *v111 = v113;
        _os_log_impl(&dword_1B25F5000, v108, v109, "unable to create EPSK %@", v110, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v111, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v111, -1, -1);
        MEMORY[0x1B274ECF0](v110, -1, -1);
      }

      v84 = v168;
    }

    ++v86;
  }

  while (v85 != v86);
LABEL_68:

  v123 = v152;
  if (v152)
  {
    v124 = swift_allocObject();
    v125 = v151;
    *(v124 + 16) = v123;
    *(v124 + 24) = v125;
    v72 = partial apply for closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:);
  }

  else
  {
    v72 = 0;
    v124 = 0;
  }

  v82 = v154;
  if (!a10)
  {
    v132 = v144;
    outlined init with copy of ServerHandshakeStateMachine.Configuration(v154, v144, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v152);
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v72);
    v133 = v145;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC(v87, v72, v124, v132, &v177, v145);
    outlined destroy of P256.Signing.PrivateKey?(v156, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v72);
    outlined destroy of ServerHandshakeStateMachine.Configuration(v82, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v138 = v133;
LABEL_80:
    v139 = v147;
    outlined init with take of ServerHandshakeStateMachine(v138, v147, type metadata accessor for ServerHandshakeStateMachine);
    v67 = v150;
    v68 = v149;
    outlined init with take of ServerHandshakeStateMachine(v139, v150, type metadata accessor for ServerHandshakeStateMachine);
    v66 = 0;
LABEL_81:
    v137 = v148;
    return (*(v137 + 56))(v67, v66, 1, v68);
  }

  v126 = v152;
  _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v152);

  if (!(v126 | v84))
  {
    v134 = v142;
    outlined init with copy of ServerHandshakeStateMachine.Configuration(v82, v142, type metadata accessor for ServerHandshakeStateMachine.Configuration);

    v136 = v143;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC(v135, v134, v143);
    outlined destroy of P256.Signing.PrivateKey?(v156, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    outlined destroy of ServerHandshakeStateMachine.Configuration(v82, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v138 = v136;
    goto LABEL_80;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_84:
    swift_once();
  }

  v127 = type metadata accessor for Logger();
  __swift_project_value_buffer(v127, logger);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&dword_1B25F5000, v128, v129, "cannot provide both epsks and pake server configuration", v130, 2u);
    v131 = v130;
    v82 = v154;
    MEMORY[0x1B274ECF0](v131, -1, -1);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v72);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v72);
  }

  v137 = v148;
  outlined destroy of P256.Signing.PrivateKey?(v156, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  outlined destroy of ServerHandshakeStateMachine.Configuration(v82, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v66 = 1;
  v67 = v150;
  v68 = v149;
  return (*(v137 + 56))(v67, v66, 1, v68);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined assign with copy of P256.Signing.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of TLSError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t convertPrivateKey(_:)@<X0>(__SecKey *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SecKeyCopyExternalRepresentation(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = SecKeyCopyAttributes(a1);
    if (v6)
    {
      v7 = v6;
      *&v46 = 1701869940;
      *(&v46 + 1) = 0xE400000000000000;
      v8 = [(__CFDictionary *)v6 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v8)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      v48[0] = v46;
      v48[1] = v47;
      outlined init with copy of Any?(v48, &v46, &_sypSgMd, &_sypSgMR);
      v20 = *(&v47 + 1);
      if (*(&v47 + 1))
      {
        v21 = __swift_project_boxed_opaque_existential_0(&v46, *(&v47 + 1));
        v22 = *(v20 - 8);
        v23 = *(v22 + 64);
        MEMORY[0x1EEE9AC00](v21);
        v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v25);
        v26 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v22 + 8))(v25, v20);
        __swift_destroy_boxed_opaque_existential_0(&v46);
        v27 = CFGetTypeID(v26);
        if (v27 == CFStringGetTypeID())
        {
          type metadata accessor for CFStringRef();
          swift_unknownObjectRetain();
          v28 = swift_dynamicCastUnknownClassUnconditional();
          v29 = *MEMORY[0x1E697AD78];
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
          v30 = static _CFObject.== infix(_:_:)();

          if (v30)
          {
            v31 = v5;
            v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;

            *&v46 = v32;
            *(&v46 + 1) = v34;
            P256.Signing.PrivateKey.init<A>(x963Representation:)();
            outlined destroy of P256.Signing.PrivateKey?(v48, &_sypSgMd, &_sypSgMR);

            swift_unknownObjectRelease();
            v44 = type metadata accessor for P256.Signing.PrivateKey();
            return (*(*(v44 - 8) + 56))(a2, 0, 1, v44);
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, logger);
          v36 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v36, v42))
          {

            swift_unknownObjectRelease();
            v36 = v7;
            goto LABEL_31;
          }

          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1B25F5000, v36, v42, "key doesn't have kSecAttrKeyTypeECSECPrimeRandom", v43, 2u);
          MEMORY[0x1B274ECF0](v43, -1, -1);

          swift_unknownObjectRelease();
LABEL_30:

LABEL_31:
          outlined destroy of P256.Signing.PrivateKey?(v48, &_sypSgMd, &_sypSgMR);
          v40 = type metadata accessor for P256.Signing.PrivateKey();
          return (*(*(v40 - 8) + 56))(a2, 1, 1, v40);
        }

        swift_unknownObjectRelease();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, logger);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1B25F5000, v36, v37, "no keytype retrieved", v38, 2u);
        MEMORY[0x1B274ECF0](v38, -1, -1);
        v39 = v7;
      }

      else
      {
        v39 = v36;
        v36 = v7;
      }

      goto LABEL_30;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v14, v15, "SecKeyCopyAttributes returned nil", v16, 2u);
      MEMORY[0x1B274ECF0](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B25F5000, v10, v11, "SecKeyCopyExternalRepresentation returned nil", v12, 2u);
      MEMORY[0x1B274ECF0](v12, -1, -1);
    }
  }

  v17 = type metadata accessor for P256.Signing.PrivateKey();
  v18 = *(*(v17 - 8) + 56);

  return v18(a2, 1, 1, v17);
}

{
  v4 = SecKeyCopyExternalRepresentation(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = SecKeyCopyAttributes(a1);
    if (v6)
    {
      v7 = v6;
      *&v46 = 1701869940;
      *(&v46 + 1) = 0xE400000000000000;
      v8 = [(__CFDictionary *)v6 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v8)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      v48[0] = v46;
      v48[1] = v47;
      outlined init with copy of Any?(v48, &v46, &_sypSgMd, &_sypSgMR);
      v20 = *(&v47 + 1);
      if (*(&v47 + 1))
      {
        v21 = __swift_project_boxed_opaque_existential_0(&v46, *(&v47 + 1));
        v22 = *(v20 - 8);
        v23 = *(v22 + 64);
        MEMORY[0x1EEE9AC00](v21);
        v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v25);
        v26 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v22 + 8))(v25, v20);
        __swift_destroy_boxed_opaque_existential_0(&v46);
        v27 = CFGetTypeID(v26);
        if (v27 == CFStringGetTypeID())
        {
          type metadata accessor for CFStringRef();
          swift_unknownObjectRetain();
          v28 = swift_dynamicCastUnknownClassUnconditional();
          v29 = *MEMORY[0x1E697AD78];
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v30 = static _CFObject.== infix(_:_:)();

          if (v30)
          {
            v31 = v5;
            v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;

            *&v46 = v32;
            *(&v46 + 1) = v34;
            P256.Signing.PrivateKey.init<A>(x963Representation:)();
            outlined destroy of P256.Signing.PrivateKey?(v48, &_sypSgMd, &_sypSgMR);

            swift_unknownObjectRelease();
            v44 = type metadata accessor for P256.Signing.PrivateKey();
            return (*(*(v44 - 8) + 56))(a2, 0, 1, v44);
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, logger);
          v36 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v36, v42))
          {

            swift_unknownObjectRelease();
            v36 = v7;
            goto LABEL_31;
          }

          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1B25F5000, v36, v42, "key doesn't have kSecAttrKeyTypeECSECPrimeRandom", v43, 2u);
          MEMORY[0x1B274ECF0](v43, -1, -1);

          swift_unknownObjectRelease();
LABEL_30:

LABEL_31:
          outlined destroy of P256.Signing.PrivateKey?(v48, &_sypSgMd, &_sypSgMR);
          v40 = type metadata accessor for P256.Signing.PrivateKey();
          return (*(*(v40 - 8) + 56))(a2, 1, 1, v40);
        }

        swift_unknownObjectRelease();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, logger);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1B25F5000, v36, v37, "no keytype retrieved", v38, 2u);
        MEMORY[0x1B274ECF0](v38, -1, -1);
        v39 = v7;
      }

      else
      {
        v39 = v36;
        v36 = v7;
      }

      goto LABEL_30;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v14, v15, "SecKeyCopyAttributes returned nil", v16, 2u);
      MEMORY[0x1B274ECF0](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B25F5000, v10, v11, "SecKeyCopyExternalRepresentation returned nil", v12, 2u);
      MEMORY[0x1B274ECF0](v12, -1, -1);
    }
  }

  v17 = type metadata accessor for P256.Signing.PrivateKey();
  v18 = *(*(v17 - 8) + 56);

  return v18(a2, 1, 1, v17);
}

uint64_t closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B25F5000, v9, v10, "In handshaker selection callback...", v11, 2u);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v28 = a2;
    v29 = a3;
    v30 = a4;
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = (a1 + 56);
    do
    {
      v31 = v12;
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      if (*v14 >> 60 == 15)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v14 - 1);
      }

      if (*v14 >> 60 == 15)
      {
        v20 = 0xC000000000000000;
      }

      else
      {
        v20 = *v14;
      }

      v21 = objc_allocWithZone(SwiftTLSOfferedEPSK);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v23 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v19, v20);
      [v21 initWithExternalIdentity:isa :v23];

      outlined consume of Data._Representation(v15, v16);
      outlined consume of Data._Representation(v15, v16);
      outlined consume of ByteBuffer?(v17, v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = *(v32 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 4;
      v12 = v31 - 1;
    }

    while (v31 != 1);
    v13 = v32;
    a4 = v30;
    a2 = v28;
    a3 = v29;
  }

  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v13;

  a4(v26, partial apply for closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:), v25);
}

void closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SymmetricKey();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EPSK(0);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  *&v57 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v53 - v20;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B25F5000, v23, v24, "In handshaker complete block...", v25, 2u);
      MEMORY[0x1B274ECF0](v25, -1, -1);
    }

    if (!a1)
    {
      (*(v60 + 56))(v21, 1, 1, v61);
      (a2)(0, v21);
      outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
      return;
    }

    a1 = a1;
    v26 = [a1 external_identity];
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = 0;
    v31 = v29 >> 62;
    v54 = a3;
    v55 = a2;
    if ((v29 >> 62) > 1)
    {
      if (v31 == 2)
      {
        v30 = *(v27 + 16);
      }
    }

    else if (v31)
    {
      v30 = v27;
    }

    v56 = v27;
    v32 = [a1 epsk];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *&v62 = v33;
    *(&v62 + 1) = v35;
    SymmetricKey.init<A>(data:)();
    v36 = [a1 context];
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = 0;
    v40 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v40 == 2)
      {
        v39 = *(a2 + 16);
      }
    }

    else if (v40)
    {
      v39 = a2;
    }

    if (SymmetricKey.bitCount.getter() <= 127)
    {
      break;
    }

    *v16 = v56;
    *(v16 + 8) = v29;
    *(v16 + 16) = v53;
    v44 = v61;
    (*(v58 + 32))(v16 + *(v61 + 20), v11, v59);
    v45 = (v16 + *(v44 + 24));
    *v45 = a2;
    v45[1] = v38;
    v45[2] = v39;
    outlined init with take of ServerHandshakeStateMachine(v16, v57, type metadata accessor for EPSK);
    a3 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      if (a4 < 0)
      {
        v52 = a4;
      }

      else
      {
        v52 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v46 = MEMORY[0x1B274D9C0](v52);
    }

    else
    {
      v46 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v11 = (a4 & 0xC000000000000001);
    while (1)
    {
      if (v46 == v16)
      {
        (*(v60 + 56))(v21, 1, 1, v61);
        v55(0, v21);

        outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v50 = v57;
LABEL_32:
        outlined destroy of ServerHandshakeStateMachine.Configuration(v50, type metadata accessor for EPSK);
        return;
      }

      if (!v11)
      {
        break;
      }

      v47 = MEMORY[0x1B274D8D0](v16, a4);
LABEL_25:
      v48 = v47;
      *&v62 = v47;
      a2 = closure #1 in closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(&v62, a1);

      if (a2)
      {
        v51 = v57;
        outlined init with copy of ServerHandshakeStateMachine.Configuration(v57, v21, type metadata accessor for EPSK);
        (*(v60 + 56))(v21, 0, 1, v61);
        v55(v16, v21);

        outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v50 = v51;
        goto LABEL_32;
      }

      if (__OFADD__(v16++, 1))
      {
        goto LABEL_34;
      }
    }

    if (v16 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = *(a4 + 8 * v16 + 32);
      goto LABEL_25;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v57 = xmmword_1B26C5EE0;
  v62 = xmmword_1B26C5EE0;
  v63 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(a2, v38);
  outlined consume of Data._Representation(v56, v29);
  (*(v58 + 8))(v11, v59);
  v41 = swift_allocError();
  *v42 = v57;
  *(v42 + 16) = 2;
  (*(v60 + 56))(v21, 1, 1, v61);
  v43 = v41;
  v55(0, v21);

  outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
}

uint64_t closure #1 in closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 external_identity];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a2 external_identity];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(v8) = specialized static Data.== infix(_:_:)(v5, v7, v9, v11);
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v5, v7);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12 = [v3 context];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  v18 = [a2 context];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v16 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      outlined consume of ByteBuffer?(v14, v16);
      return 1;
    }

    goto LABEL_10;
  }

  if (v21 >> 60 == 15)
  {
LABEL_10:
    outlined consume of ByteBuffer?(v14, v16);
    outlined consume of ByteBuffer?(v19, v21);
    return 0;
  }

  outlined copy of Data?(v14, v16);
  outlined copy of Data._Representation(v19, v21);
  v22 = specialized static Data.== infix(_:_:)(v14, v16, v19, v21);
  outlined consume of ByteBuffer?(v19, v21);
  outlined consume of Data._Representation(v19, v21);
  outlined consume of ByteBuffer?(v14, v16);
  outlined consume of ByteBuffer?(v14, v16);
  return v22 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined init with copy of ServerHandshakeStateMachine.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ServerHandshakeStateMachine.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TLSError and conformance TLSError()
{
  result = lazy protocol witness table cache variable for type TLSError and conformance TLSError;
  if (!lazy protocol witness table cache variable for type TLSError and conformance TLSError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSError and conformance TLSError);
  }

  return result;
}

void type metadata accessor for CFStringRef()
{
  if (!lazy cache variable for type metadata for CFStringRef)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CFStringRef);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t type metadata accessor for NSArray()
{
  result = lazy cache variable for type metadata for NSArray;
  if (!lazy cache variable for type metadata for NSArray)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSArray);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with take of ServerHandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id STLSRecordHandler.init(_:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:logStr:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v154 = a8;
  v162 = a4;
  v163 = a2;
  v166 = a1;
  v167 = a3;
  v165 = a9;
  ObjectType = swift_getObjectType();
  v151 = type metadata accessor for TLSHandshakeStateMachine(0);
  v12 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v150 = &v135 - v16;
  v137 = type metadata accessor for P256.Signing.PublicKey();
  v144 = *(v137 - 8);
  v17 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v19 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for NSFastEnumerationIterator();
  v161 = *(v159 - 8);
  v20 = *(v161 + 64);
  v21 = MEMORY[0x1EEE9AC00](v159);
  v168 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v135 - v23;
  v25 = type metadata accessor for HandshakeStateMachine(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v136 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v142 = &v135 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v148 = &v135 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v147 = &v135 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v160 = &v135 - v35;
  *(&v190 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v191 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v36 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v189);
  v157 = a5;
  v37 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v157);
  v39 = v38;
  v156 = a6;
  v40 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v156);
  v42 = v41;
  v155 = a7;
  v43 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v155);
  v45 = v44;
  v154 = v154;
  v47 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v154);
  if (v36)
  {
    v48 = 32150;
  }

  else
  {
    v48 = -1;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC(v48, v37, v39, v40, v42, v43, v45, v47, v186, v46, v178);
  v193 = v186[4];
  v194 = v186[5];
  v195[0] = v187[0];
  *(v195 + 9) = *(v187 + 9);
  v189 = v186[0];
  v190 = v186[1];
  v191 = v186[2];
  v192 = v186[3];
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_(&v189);
  v183 = v193;
  v184 = v194;
  v185[0] = v195[0];
  *(v185 + 9) = *(v195 + 9);
  v179 = v189;
  v180 = v190;
  v181 = v191;
  v182 = v192;
  v49 = objc_allocWithZone(ObjectType);
  v50 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  v51 = type metadata accessor for TLSRecordHandler();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v145 = v52 + 56;
  v146 = v53;
  (v53)(&v49[v50], 1, 1, v51);
  v55 = v165;
  v54 = v166;
  v143 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
  *&v49[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = v165;
  if (v54)
  {
    v139 = v51;
    v141 = v50;
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    v56 = v55;
    v140 = v54;
    v57 = MEMORY[0x1E69E7CC0];
    v138 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    v152 = v49;
    if (*(&v190 + 1))
    {
      v135 = (v144 + 32);
      v153 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v189, &v170);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v190 + 1))
          {
            goto LABEL_25;
          }
        }

        v58 = v169[0];
        v170 = v169[0];
        outlined copy of Data._Representation(*&v169[0], *(&v169[0] + 1));
        lazy protocol witness table accessor for type Data and conformance Data();
        P256.Signing.PublicKey.init<A>(derRepresentation:)();
        v59 = v153;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
        }

        v61 = v59[2];
        v60 = v59[3];
        v153 = v59;
        if (v61 >= v60 >> 1)
        {
          v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v153);
        }

        outlined consume of Data._Representation(v58, *(&v58 + 1));
        v62 = v153;
        v153[2] = v61 + 1;
        (*(v144 + 32))(v62 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v61, v19, v137);
        NSFastEnumerationIterator.next()();
        v49 = v152;
      }

      while (*(&v190 + 1));
    }

    else
    {
      v153 = v57;
    }

LABEL_25:
    v82 = v161 + 8;
    v83 = *(v161 + 8);
    v83(v24, v159);
    if (v162)
    {
      v70 = v163;
      v84 = v167;
      if (*(v162 + 16) == 2)
      {
        LODWORD(v137) = 0;
        LODWORD(v144) = *(v162 + 32);
        if (!v163)
        {
          goto LABEL_42;
        }

LABEL_30:
        v161 = v82;
        v85 = v70;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        if (*(&v190 + 1))
        {
          v86 = MEMORY[0x1E69E7CC0];
          do
          {
            while (1)
            {
              outlined init with take of Any(&v189, &v170);
              if (swift_dynamicCast())
              {
                break;
              }

              NSFastEnumerationIterator.next()();
              if (!*(&v190 + 1))
              {
                goto LABEL_44;
              }
            }

            v135 = v85;
            v87 = v169[0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86);
            }

            v89 = *(v86 + 2);
            v88 = *(v86 + 3);
            if (v89 >= v88 >> 1)
            {
              v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v86);
            }

            *(v86 + 2) = v89 + 1;
            *&v86[16 * v89 + 32] = v87;
            NSFastEnumerationIterator.next()();
            v49 = v152;
            v85 = v135;
          }

          while (*(&v190 + 1));
        }

        else
        {
          v86 = MEMORY[0x1E69E7CC0];
        }

LABEL_44:
        v83(v168, v159);

        v70 = v163;
        v84 = v167;
LABEL_45:
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v140;
        if (!*(v86 + 2))
        {
          v93 = v90;
          v94 = v91;

          v91 = v94;
          v90 = v93;
          v86 = 0;
        }

        HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v90, v91, v153, 0, 0xF000000000000000, 0, v86, v144 | (v137 << 16), v188, 24, 0, 0);
        if (v84)
        {
          v95 = v84;
          v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;
          outlined init with copy of HandshakeStateMachine.Configuration(v188, &v189);
          v99 = v142;
          _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v96, v98, v188, v178, v142);

          outlined destroy of HandshakeStateMachine.Configuration(v188);
          v101 = v99;
        }

        else
        {
          v174 = v183;
          v175 = v184;
          v176[0] = v185[0];
          *(v176 + 9) = *(v185 + 9);
          v170 = v179;
          v171 = v180;
          v172 = v181;
          v173 = v182;
          if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v170) == 1)
          {
            v100 = v148;
            HandshakeStateMachine.init(configuration:)(v188, v148);

LABEL_53:
            v103 = v100;
            v104 = v147;
            outlined init with take of TLSRecordHandler(v103, v147, type metadata accessor for HandshakeStateMachine);
            v105 = v104;
            v106 = v160;
            outlined init with take of TLSRecordHandler(v105, v160, type metadata accessor for HandshakeStateMachine);
            v107 = v106;
            v108 = v149;
            outlined init with copy of TLSRecordHandler(v107, v149, type metadata accessor for HandshakeStateMachine);
            swift_storeEnumTagMultiPayload();
            v109 = v150;
            v110 = TLSRecordHandler.init(stateMachine:)(v108, v150);
            v146(v109, 0, 1, v139, v110);
            v111 = v141;
            swift_beginAccess();
            outlined assign with take of TLSRecordHandler?(v109, &v49[v111]);
            swift_endAccess();
            v112 = v49;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v113 = type metadata accessor for Logger();
            __swift_project_value_buffer(v113, logger);
            v114 = v70;
            v115 = v92;
            outlined init with copy of Any?(&v179, &v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            v116 = v84;
            v117 = v115;
            v118 = v114;
            outlined init with copy of Any?(&v179, &v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            v119 = v162;

            v120 = v112;
            v121 = Logger.logObject.getter();
            v122 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v121, v122))
            {
              LODWORD(v161) = v70 != 0;
              LODWORD(v168) = v119 != 0;
              v123 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              *v123 = 138414850;
              v125 = *&v112[v143];
              *(v123 + 4) = v125;
              *v124 = v125;
              *(v123 + 12) = 1024;
              *(v123 + 14) = 0;
              *(v123 + 18) = 1024;
              v126 = v125;

              *(v123 + 20) = 1;
              *(v123 + 24) = 1024;

              *(v123 + 26) = v161;
              *(v123 + 30) = 2112;
              *(v123 + 32) = v116;
              v124[1] = v167;
              *(v123 + 40) = 1024;
              v127 = v116;

              *(v123 + 42) = v168;

              *(v123 + 46) = 1573376;
              *(v123 + 50) = 1024;
              *(v123 + 52) = 0;
              *(v123 + 56) = 1024;
              *(v123 + 58) = 0;
              *(v123 + 62) = 1024;
              v128 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v179) == 0;
              outlined destroy of P256.Signing.PrivateKey?(&v179, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
              *(v123 + 64) = v128;
              outlined destroy of P256.Signing.PrivateKey?(&v179, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
              *(v123 + 68) = 1024;
              *(v123 + 70) = 0;
              _os_log_impl(&dword_1B25F5000, v121, v122, "%@:client STLSRecordHandler initialized: spkiArray %{BOOL}d, serverName? %{BOOL}d, alpn? %{BOOL}d, sessionState? %@, ticketRequest? %{BOOL}d, keyExchangeGroup: %hu, externalPreSharedKey? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeClientConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v123, 0x4Au);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              swift_arrayDestroy();
              v129 = v124;
              v70 = v163;
              MEMORY[0x1B274ECF0](v129, -1, -1);
              MEMORY[0x1B274ECF0](v123, -1, -1);
            }

            else
            {
              outlined destroy of P256.Signing.PrivateKey?(&v179, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

              outlined destroy of P256.Signing.PrivateKey?(&v179, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            }

            outlined destroy of TLSRecordHandler(v160, type metadata accessor for HandshakeStateMachine);
            v63 = v166;
            v71 = v167;
            v55 = v165;
            v49 = v152;
            goto LABEL_59;
          }

          v193 = v174;
          v194 = v175;
          v195[0] = v176[0];
          *(v195 + 9) = *(v176 + 9);
          v189 = v170;
          v190 = v171;
          v191 = v172;
          v192 = v173;
          outlined init with copy of Any?(&v179, v169, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
          outlined init with copy of HandshakeStateMachine.Configuration(v188, v169);
          outlined init with copy of Any?(&v179, v169, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
          v102 = v136;
          _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v189, v188, v178, v136);

          outlined destroy of HandshakeStateMachine.Configuration(v188);
          outlined destroy of P256.Signing.PrivateKey?(&v179, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

          v101 = v102;
        }

        v100 = v148;
        outlined init with take of TLSRecordHandler(v101, v148, type metadata accessor for HandshakeStateMachine);
        goto LABEL_53;
      }

      LODWORD(v144) = 0;
      LODWORD(v137) = 1;
      if (v163)
      {
        goto LABEL_30;
      }
    }

    else
    {
      LODWORD(v144) = 0;
      LODWORD(v137) = 1;
      v70 = v163;
      v84 = v167;
      if (v163)
      {
        goto LABEL_30;
      }
    }

LABEL_42:
    v86 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v63 = 0;
  v64 = one-time initialization token for logger;
  v65 = v55;
  if (v64 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, logger);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v163;
  v71 = v167;
  if (v69)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1B25F5000, v67, v68, "Cannot start the handshake with NULL parameters", v72, 2u);
    v73 = v72;
    v55 = v165;
    MEMORY[0x1B274ECF0](v73, -1, -1);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v66, logger);
  v74 = v49;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    v79 = *&v49[v143];
    *(v77 + 4) = v79;
    *v78 = v79;
    v80 = v79;
    _os_log_impl(&dword_1B25F5000, v75, v76, "%@: unable to initialize client handshake state machine", v77, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v81 = v78;
    v55 = v165;
    MEMORY[0x1B274ECF0](v81, -1, -1);
    MEMORY[0x1B274ECF0](v77, -1, -1);
  }

LABEL_59:
  v177.receiver = v49;
  v177.super_class = ObjectType;
  v130 = objc_msgSendSuper2(&v177, sel_init, v135);

  outlined destroy of P256.Signing.PrivateKey?(&v179, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
  v131 = v158;
  swift_getObjectType();
  v132 = *((*MEMORY[0x1E69E7D40] & *v131) + 0x30);
  v133 = *((*MEMORY[0x1E69E7D40] & *v131) + 0x34);
  swift_deallocPartialClassInstance();
  return v130;
}

id STLSRecordHandler.init(_:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:logStr:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v164 = a2;
  v165 = a7;
  v162 = a6;
  v166 = a1;
  ObjectType = swift_getObjectType();
  v151 = type metadata accessor for TLSHandshakeStateMachine(0);
  v10 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v150 = &v133 - v14;
  v153 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v15 = *(*(v153 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v153);
  v144 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v146 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v152 = (&v133 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v156 = &v133 - v23;
  *&v157 = type metadata accessor for NSFastEnumerationIterator();
  v155 = *(v157 - 8);
  v24 = *(v155 + 8);
  MEMORY[0x1EEE9AC00](v157);
  v154 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v145 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v148 = &v133 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v147 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v158 = &v133 - v34;
  *(&v176 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v177 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  LODWORD(v161) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v175);
  v35 = a3;
  v160 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v35);
  v37 = v36;
  v38 = a4;
  v39 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v38);
  v41 = v40;
  v42 = a5;
  v43 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v42);
  v45 = v44;
  v46 = v162;
  v48 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v46);
  if (v161)
  {
    v49 = 32150;
  }

  else
  {
    v49 = -1;
  }

  _s15SwiftTLSLibrary16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC(v49, v160, v37, v39, v41, v43, v45, v48, &v175, v47, 0, v173);
  v52 = v154;
  v53 = v155;
  v54 = v157;
  v143 = v46;
  v160 = v42;
  v161 = v38;
  v162 = v35;
  if (v166)
  {
    v136 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMR);
    v55 = swift_allocObject();
    v142 = v55;
    v56 = v179;
    v57 = v181[0];
    v55[7] = v180;
    v55[8] = v57;
    *(v55 + 138) = *(v181 + 10);
    v58 = v175;
    v59 = v176;
    v55[1] = xmmword_1B26C6030;
    v55[2] = v58;
    v60 = v177;
    v61 = v178;
    v55[3] = v59;
    v55[4] = v60;
    v55[5] = v61;
    v55[6] = v56;
    v62 = objc_allocWithZone(ObjectType);
    v141 = v62;
    v63 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
    v64 = type metadata accessor for TLSRecordHandler();
    v65 = *(v64 - 8);
    v66 = *(v65 + 56);
    v139 = v64;
    v140 = v63;
    v137 = v65 + 56;
    v138 = v66;
    (v66)(&v62[v63], 1, 1);
    v68 = v164;
    v67 = v165;
    v135 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
    *&v62[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = v165;
    if (v68)
    {
      v69 = v166;
      outlined init with copy of PAKEServerRecord(&v175, &v171);
      v70 = v67;
      v134 = v68;
      NSArray.makeIterator()();
      NSFastEnumerationIterator.next()();
      v71 = v153;
      v72 = MEMORY[0x1E69E7CC0];
      if (v172)
      {
        v73 = v53;
        v74 = v52;
        do
        {
          while (1)
          {
            outlined init with take of Any(&v171, &v169);
            if (swift_dynamicCast())
            {
              break;
            }

            NSFastEnumerationIterator.next()();
            if (!v172)
            {
              goto LABEL_20;
            }
          }

          v76 = v167;
          v75 = v168;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
          }

          v77 = v72;
          v79 = *(v72 + 2);
          v78 = *(v72 + 3);
          if (v79 >= v78 >> 1)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v72);
          }

          *(v77 + 2) = v79 + 1;
          v72 = v77;
          v80 = &v77[16 * v79];
          *(v80 + 4) = v76;
          *(v80 + 5) = v75;
          v74 = v52;
          NSFastEnumerationIterator.next()();
          v71 = v153;
          v54 = v157;
        }

        while (v172);
      }

      else
      {
        v73 = v53;
        v74 = v52;
      }

LABEL_20:
      v155 = v72;
      (*(v73 + 1))(v74, v54);
    }

    else
    {
      v81 = v166;
      outlined init with copy of PAKEServerRecord(&v175, &v171);
      v82 = v67;
      v155 = MEMORY[0x1E69E7CC0];
      v71 = v153;
    }

    v83 = type metadata accessor for P256.Signing.PrivateKey();
    v84 = *(*(v83 - 8) + 56);
    v85 = v156;
    v84(v156, 1, 1, v83);
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
    v89 = v71[5];
    v90 = v152;
    v84(v152 + v89, 1, 1, v83);
    v91 = (v90 + v71[6]);
    v157 = xmmword_1B26C5EF0;
    *v91 = xmmword_1B26C5EF0;
    v91[2] = 0;
    v92 = v71[7];
    *v90 = v86;
    v90[1] = v88;
    v93 = v155;

    outlined assign with copy of P256.Signing.PrivateKey?(v85, v90 + v89);
    v94 = v91[2];
    outlined consume of ByteBuffer?(*v91, v91[1]);

    *v91 = v157;
    v91[2] = 0;
    *(v90 + v92) = v93;
    *(v90 + v71[8]) = 0;
    *(v90 + v71[9]) = 0;
    *(v90 + v71[10]) = 0;
    v95 = v146;
    outlined init with copy of TLSRecordHandler(v90, v146, type metadata accessor for ServerHandshakeStateMachine.Configuration);

    v97 = v145;
    v98 = v136;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC(v96, v95, v145);
    if (v98)
    {
      outlined consume of TLSError(v173[0], v173[1], v174);
      v99 = v158;
      v100 = v150;
      v101 = v149;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, logger);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      v105 = os_log_type_enabled(v103, v104);
      v106 = v144;
      if (v105)
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_1B25F5000, v103, v104, "unable to create handshake state machine with pake server configuration", v107, 2u);
        v108 = v107;
        v90 = v152;
        MEMORY[0x1B274ECF0](v108, -1, -1);
      }

      outlined init with copy of TLSRecordHandler(v90, v106, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v109 = v148;
      ServerHandshakeStateMachine.init(configuration:)(v106, v148);
      outlined destroy of P256.Signing.PrivateKey?(v156, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      outlined destroy of TLSRecordHandler(v90, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v110 = v164;
    }

    else
    {
      outlined destroy of P256.Signing.PrivateKey?(v85, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      outlined destroy of TLSRecordHandler(v90, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v109 = v148;
      outlined init with take of TLSRecordHandler(v97, v148, type metadata accessor for ServerHandshakeStateMachine);
      v110 = v164;
      v99 = v158;
      v100 = v150;
      v101 = v149;
    }

    v111 = v147;
    outlined init with take of TLSRecordHandler(v109, v147, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with take of TLSRecordHandler(v111, v99, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with copy of TLSRecordHandler(v99, v101, type metadata accessor for ServerHandshakeStateMachine);
    swift_storeEnumTagMultiPayload();
    v112 = TLSRecordHandler.init(stateMachine:)(v101, v100);
    v138(v100, 0, 1, v139, v112);
    v113 = v140;
    v114 = v141;
    swift_beginAccess();
    outlined assign with take of TLSRecordHandler?(v100, &v114[v113]);
    swift_endAccess();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    __swift_project_value_buffer(v115, logger);
    v116 = v110;

    v117 = v114;
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138414082;
      v122 = *&v114[v135];
      *(v120 + 4) = v122;
      *v121 = v122;
      *(v120 + 12) = 1024;
      *(v120 + 14) = 0;
      *(v120 + 18) = 1024;
      v123 = v122;

      *(v120 + 20) = v110 != 0;
      *(v120 + 24) = 1024;
      *(v120 + 26) = 0;
      *(v120 + 30) = 1024;
      *(v120 + 32) = 0;
      *(v120 + 36) = 1024;
      *(v120 + 38) = 0;
      *(v120 + 42) = 1024;

      *(v120 + 44) = 1;

      *(v120 + 48) = 1024;
      *(v120 + 50) = 0;
      _os_log_impl(&dword_1B25F5000, v118, v119, "%@: server STLSRecordHandler initialized: serverKey? %{BOOL}d, alpn? %{BOOL}d, EPSKs? %{BOOL}d, epskSelectionBlock? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeServerConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v120, 0x36u);
      outlined destroy of P256.Signing.PrivateKey?(v121, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v121, -1, -1);
      MEMORY[0x1B274ECF0](v120, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v124 = v162;
    v51 = v163;
    v126 = v160;
    v125 = v161;
    v127 = v143;
    v128 = v166;

    outlined destroy of TLSRecordHandler(v158, type metadata accessor for ServerHandshakeStateMachine);
    v170.receiver = v117;
    v170.super_class = ObjectType;
    v50 = objc_msgSendSuper2(&v170, sel_init);

    v129 = v50;
    outlined destroy of PAKEServerRecord(&v175);
  }

  else
  {

    outlined destroy of PAKEServerRecord(&v175);
    v50 = 0;
    v51 = v163;
  }

  swift_getObjectType();
  v130 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x30);
  v131 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x34);
  swift_deallocPartialClassInstance();
  return v50;
}

Swift::Void __swiftcall STLSRecordHandler.startHandshake()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_1B25F5000, v3, v4, "%@: starting handshake", v5, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v6, -1, -1);
    MEMORY[0x1B274ECF0](v5, -1, -1);
  }

  v9 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v10 = type metadata accessor for TLSRecordHandler();
  if (!(*(*(v10 - 8) + 48))(&v2[v9], 1, v10))
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV14startHandshakeyyAA8TLSErrorOYKF();
  }

  swift_endAccess();
}

uint64_t STLSRecordHandler.addApplicationData(_:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a1, a2);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a1, a2);

    v12 = a2 >> 62;
    goto LABEL_16;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 138412546;
  v11 = *&v6[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
  *(v9 + 4) = v11;
  *v10 = v11;
  *(v9 + 12) = 2048;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v19 = v11;
      outlined consume of Data._Representation(a1, a2);
      v11 = 0;
      goto LABEL_15;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = v11;
    outlined consume of Data._Representation(a1, a2);
    v11 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v17 = v11;
    result = outlined consume of Data._Representation(a1, a2);
    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_12;
  }

  v13 = v11;
  outlined consume of Data._Representation(a1, a2);
  v11 = BYTE6(a2);
LABEL_15:
  *(v9 + 14) = v11;
  outlined consume of Data._Representation(a1, a2);
  _os_log_impl(&dword_1B25F5000, v7, v8, "%@: adding %ld bytes of application data", v9, 0x16u);
  outlined destroy of P256.Signing.PrivateKey?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B274ECF0](v10, -1, -1);
  MEMORY[0x1B274ECF0](v9, -1, -1);

LABEL_16:
  v20 = 0;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v20 = *(a1 + 16);
      goto LABEL_21;
    }
  }

  else if (v12)
  {
    v20 = a1;
LABEL_21:
    outlined copy of Data._Representation(a1, a2);
  }

  v23 = a1;
  v24 = a2;
  v25 = v20;
  v21 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v22 = type metadata accessor for TLSRecordHandler();
  if (!(*(*(v22 - 8) + 48))(&v6[v21], 1, v22))
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV18addApplicationDatayyAA10ByteBufferVzAA8TLSErrorOYKF(&v23);
  }

  swift_endAccess();
  return outlined consume of Data._Representation(v23, v24);
}

uint64_t STLSRecordHandler.processNetworkData(networkDataIn:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a1, a2);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a1, a2);

    v12 = a2 >> 62;
    goto LABEL_15;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 138412546;
  v11 = *&v6[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
  *(v9 + 4) = v11;
  *v10 = v11;
  *(v9 + 12) = 2048;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v20 = v11;
      outlined consume of Data._Representation(a1, a2);
      v14 = 0;
      goto LABEL_14;
    }

    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v17 = v11;
    result = outlined consume of Data._Representation(a1, a2);
    v14 = v16 - v15;
    if (!__OFSUB__(v16, v15))
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v12)
  {
    v19 = v11;
    result = outlined consume of Data._Representation(a1, a2);
    LODWORD(v14) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v14 = v14;
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v13 = v11;
  outlined consume of Data._Representation(a1, a2);
  v14 = BYTE6(a2);
LABEL_14:
  *(v9 + 14) = v14;
  outlined consume of Data._Representation(a1, a2);
  _os_log_impl(&dword_1B25F5000, v7, v8, "%@: processing %ld bytes of network data", v9, 0x16u);
  outlined destroy of P256.Signing.PrivateKey?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B274ECF0](v10, -1, -1);
  MEMORY[0x1B274ECF0](v9, -1, -1);

LABEL_15:
  v21 = 0;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v21 = *(a1 + 16);
      goto LABEL_20;
    }
  }

  else if (v12)
  {
    v21 = a1;
LABEL_20:
    outlined copy of Data._Representation(a1, a2);
  }

  v24 = a1;
  v25 = a2;
  v26 = v21;
  v22 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v23 = type metadata accessor for TLSRecordHandler();
  if (!(*(*(v23 - 8) + 48))(&v6[v22], 1, v23))
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKF(&v24);
  }

  swift_endAccess();
  return outlined consume of Data._Representation(v24, v25);
}

void @objc STLSRecordHandler.addApplicationData(_:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  a4(v7, v9);
  outlined consume of Data._Representation(v7, v9);
}

Swift::Bool __swiftcall STLSRecordHandler.alertSentOrReceived()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TLSRecordHandler();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v10, v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    v11 = 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v4, v9, type metadata accessor for TLSRecordHandler);
    if (v9[*(v5 + 52) + 2] == 1)
    {
      v11 = v9[*(v5 + 56) + 2] ^ 1;
    }

    else
    {
      v11 = 1;
    }

    outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
  }

  return v11 & 1;
}

Swift::Void __swiftcall STLSRecordHandler.sendCloseNotify()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17[-v3];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *&v6[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&dword_1B25F5000, v7, v8, "%@: sending close notify", v9, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v10, -1, -1);
    MEMORY[0x1B274ECF0](v9, -1, -1);
  }

  v13 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v6[v13], v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v14 = type metadata accessor for TLSRecordHandler();
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v4, 1, v14);
  outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v16 != 1)
  {
    swift_beginAccess();
    if (v15(&v6[v13], 1, v14) == 1)
    {
      __break(1u);
    }

    else
    {
      TLSRecordHandler.sendCloseNotify()();
      swift_endAccess();
    }
  }
}

Swift::UInt32 __swiftcall STLSRecordHandler.getBytesToReadCount()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TLSRecordHandler();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v10, v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    LODWORD(v4) = 0;
    return v4;
  }

  outlined init with take of TLSRecordHandler(v4, v9, type metadata accessor for TLSRecordHandler);
  v4 = *&v9[*(v5 + 20) + 24];
  result = outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v4))
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t STLSRecordHandler.getAvailableApplicationData(numBytes:)(Swift::Int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-v5];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = *&v8[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    v14 = v13;
    _os_log_impl(&dword_1B25F5000, v9, v10, "%@: getAvailableApplicationData(%ld)", v11, 0x16u);
    outlined destroy of P256.Signing.PrivateKey?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v12, -1, -1);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  v15 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v8[v15], v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v16 = type metadata accessor for TLSRecordHandler();
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v6, 1, v16);
  outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v18 == 1)
  {
    return 0;
  }

  swift_beginAccess();
  result = v17(&v8[v15], 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = TLSRecordHandler.getApplicationData(_:)(a1);
    swift_endAccess();
    return v20;
  }

  return result;
}

Swift::Int __swiftcall STLSRecordHandler.getAvailableApplicationDataLength()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for TLSRecordHandler();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v10, v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  result = outlined init with take of TLSRecordHandler(v4, v9, type metadata accessor for TLSRecordHandler);
  v13 = &v9[*(v5 + 44)];
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v14 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v15);
    v19 = v14 >> 32;
    if (!v17)
    {
      v19 = v18;
    }
  }

  v11 = v19 - v16;
  if (!__OFSUB__(v19, v16))
  {
    outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t STLSRecordHandler.getOutput()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28[-v3];
  v5 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v0[v5], v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v6 = type metadata accessor for TLSRecordHandler();
  v7 = *(*(v6 - 8) + 48);
  v8 = v7(v4, 1, v6);
  outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v8 == 1)
  {
    return 0;
  }

  swift_beginAccess();
  result = v7(&v0[v5], 1, v6);
  if (result != 1)
  {
    v9 = TLSRecordHandler.writeOutput()();
    v12 = v11;
    swift_endAccess();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    outlined copy of Data?(v9, v12);
    outlined copy of Data?(v9, v12);
    v14 = v0;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      outlined consume of ByteBuffer?(v9, v12);
      outlined consume of ByteBuffer?(v9, v12);
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    v19 = *&v14[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v17 + 4) = v19;
    *v18 = v19;
    *(v17 + 12) = 2048;
    if (v12 >> 60 == 15)
    {
      v20 = v19;
LABEL_9:
      v19 = 0;
LABEL_10:
      *(v17 + 14) = v19;
      outlined consume of ByteBuffer?(v9, v12);
      _os_log_impl(&dword_1B25F5000, v15, v16, "%@: getOutput returning %ld", v17, 0x16u);
      outlined destroy of P256.Signing.PrivateKey?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v18, -1, -1);
      MEMORY[0x1B274ECF0](v17, -1, -1);
LABEL_12:

      return v9;
    }

    v21 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v27 = v19;
        outlined consume of ByteBuffer?(v9, v12);
        goto LABEL_9;
      }

      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      v25 = v19;
      outlined consume of ByteBuffer?(v9, v12);
      v19 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = v19;
      outlined consume of ByteBuffer?(v9, v12);
      v19 = BYTE6(v12);
      goto LABEL_10;
    }

    v26 = v19;
    result = outlined consume of ByteBuffer?(v9, v12);
    LODWORD(v19) = HIDWORD(v9) - v9;
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      v19 = v19;
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t STLSRecordHandler.getOutput(numBytes:)(Swift::Int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31[-v6];
  v8 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v1[v8], v7, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v9 = type metadata accessor for TLSRecordHandler();
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v7, 1, v9);
  outlined destroy of P256.Signing.PrivateKey?(v7, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v11 == 1)
  {
    return 0;
  }

  swift_beginAccess();
  result = v10(&v2[v8], 1, v9);
  if (result != 1)
  {
    v12 = TLSRecordHandler.getOutputData(_:)(a1);
    v15 = v14;
    swift_endAccess();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    outlined copy of Data?(v12, v15);
    outlined copy of Data?(v12, v15);
    v17 = v2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      outlined consume of ByteBuffer?(v12, v15);
      outlined consume of ByteBuffer?(v12, v15);
      goto LABEL_12;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412802;
    v22 = *&v17[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v20 + 4) = v22;
    *v21 = v22;
    *(v20 + 12) = 2048;
    if (v15 >> 60 == 15)
    {
      v23 = v22;
LABEL_9:
      v22 = 0;
LABEL_10:
      *(v20 + 14) = v22;
      outlined consume of ByteBuffer?(v12, v15);
      *(v20 + 22) = 2048;
      *(v20 + 24) = a1;
      _os_log_impl(&dword_1B25F5000, v18, v19, "%@: getOutput returning %ld bytes. %ld requested.", v20, 0x20u);
      outlined destroy of P256.Signing.PrivateKey?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v21, -1, -1);
      MEMORY[0x1B274ECF0](v20, -1, -1);
LABEL_12:

      return v12;
    }

    v24 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v24 != 2)
      {
        v30 = v22;
        outlined consume of ByteBuffer?(v12, v15);
        goto LABEL_9;
      }

      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      v28 = v22;
      outlined consume of ByteBuffer?(v12, v15);
      v22 = v26 - v27;
      if (!__OFSUB__(v26, v27))
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v25 = v22;
      outlined consume of ByteBuffer?(v12, v15);
      v22 = BYTE6(v15);
      goto LABEL_10;
    }

    v29 = v22;
    result = outlined consume of ByteBuffer?(v12, v15);
    LODWORD(v22) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v22 = v22;
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Class @objc STLSRecordHandler.getAvailableApplicationData(numBytes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a4(a3);
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of ByteBuffer?(v7, v9);
    v10 = isa;
  }

  return v10;
}

Swift::UInt32 __swiftcall STLSRecordHandler.getOutgoingBytesCount()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for TLSRecordHandler();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v10, v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    LODWORD(v11) = 0;
    return v11;
  }

  result = outlined init with take of TLSRecordHandler(v4, v9, type metadata accessor for TLSRecordHandler);
  v13 = &v9[*(v5 + 48)];
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v14 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v15);
    v19 = v14 >> 32;
    if (!v17)
    {
      v19 = v18;
    }
  }

  v11 = v19 - v16;
  if (__OFSUB__(v19, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!HIDWORD(v11))
  {
    return v11;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Int __swiftcall STLSRecordHandler.getNegotiatedPAKE()()
{
  v1 = type metadata accessor for ServerHandshakeStateMachine(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HandshakeStateMachine(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TLSHandshakeStateMachine(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for TLSRecordHandler();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v20, v14, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v14, v19, type metadata accessor for TLSRecordHandler);
    outlined init with copy of TLSRecordHandler(v19, v10, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v27;
      outlined init with take of TLSRecordHandler(v10, v27, type metadata accessor for ServerHandshakeStateMachine);
      v23 = ServerHandshakeStateMachine.negotiatedPAKE.getter();
      v24 = type metadata accessor for ServerHandshakeStateMachine;
    }

    else
    {
      v22 = v26;
      outlined init with take of TLSRecordHandler(v10, v26, type metadata accessor for HandshakeStateMachine);
      v23 = HandshakeStateMachine.negotiatedPAKE.getter();
      v24 = type metadata accessor for HandshakeStateMachine;
    }

    outlined destroy of TLSRecordHandler(v22, v24);
    outlined destroy of TLSRecordHandler(v19, type metadata accessor for TLSRecordHandler);
    if ((v23 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v23;
    }
  }
}

uint64_t STLSRecordHandler.getEPSKOffered()(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TLSHandshakeStateMachine(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v18 = type metadata accessor for TLSRecordHandler();
  if ((*(*(v18 - 8) + 48))(v2 + v17, 1, v18))
  {
    v19 = 0;
  }

  else
  {
    outlined init with copy of TLSRecordHandler(v2 + v17, v16, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = outlined init with take of TLSRecordHandler(v16, v8, type metadata accessor for ServerHandshakeStateMachine);
      v19 = a2(v20);
      v21 = type metadata accessor for ServerHandshakeStateMachine;
      v22 = v8;
    }

    else
    {
      v23 = outlined init with take of TLSRecordHandler(v16, v12, type metadata accessor for HandshakeStateMachine);
      v19 = a1(v23);
      v21 = type metadata accessor for HandshakeStateMachine;
      v22 = v12;
    }

    outlined destroy of TLSRecordHandler(v22, v21);
  }

  return v19 & 1;
}

Swift::Int32 __swiftcall STLSRecordHandler.getErrorCode()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v81[-v4];
  v6 = type metadata accessor for TLSRecordHandler();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v81[-v12];
  v14 = v1 + OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v14, v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v15 = *(v7 + 48);
  if (v15(v5, 1, v6) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  }

  else
  {
    outlined init with take of TLSRecordHandler(v5, v13, type metadata accessor for TLSRecordHandler);
    v16 = TLSRecordHandler.handshakeComplete.getter();
    outlined destroy of TLSRecordHandler(v13, type metadata accessor for TLSRecordHandler);
    if (v16)
    {
      v17 = 0xE500000000000000;
      v18 = 0x7265746661;
      goto LABEL_9;
    }
  }

  v18 = 0x65726F666562;
  if (!v15(v14, 1, v6))
  {
    outlined init with copy of TLSRecordHandler(v14, v11, type metadata accessor for TLSRecordHandler);
    v19 = TLSRecordHandler.handshakeStarted.getter();
    outlined destroy of TLSRecordHandler(v11, type metadata accessor for TLSRecordHandler);
    if (v19)
    {
      v18 = 0x676E69727564;
    }
  }

  v17 = 0xE600000000000000;
LABEL_9:
  if (v15(v14, 1, v6))
  {
LABEL_10:

    return 0;
  }

  v21 = v14 + v6[16];
  v22 = *(v21 + 16);
  if (v22 == 255)
  {
    v32 = v14 + v6[13];
    if (*(v32 + 2))
    {
      goto LABEL_10;
    }

    v33 = *v32;
    v34 = specialized knownTLSAlert.init(rawValue:)(HIBYTE(*v32));
    if (v34 - 1 >= 0x1A)
    {
      if (!v34)
      {
        goto LABEL_10;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, logger);
      v74 = v1;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        v79 = *&v74[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v77 + 4) = v79;
        *v78 = v79;
        v80 = v79;
        _os_log_impl(&dword_1B25F5000, v75, v76, "%@: TLS error occurred. No alert written. Returning errSSLInternal.", v77, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v78, -1, -1);
        MEMORY[0x1B274ECF0](v77, -1, -1);
      }

      return -9802;
    }

    else
    {
      v35 = specialized STLSRecordHandler.alertToOSStatusHelper(alert:peerAlert:)(v34, 1);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, logger);
      v37 = v1;

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v86[0] = v42;
        *v40 = 138413058;
        v43 = *&v37[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v40 + 4) = v43;
        *v41 = v43;
        *(v40 + 12) = 2080;
        v44 = v43;
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v86);

        *(v40 + 14) = v45;
        *(v40 + 22) = 2080;
        v46 = Alert.description.getter(v33);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v86);

        *(v40 + 24) = v48;
        *(v40 + 32) = 1024;
        *(v40 + 34) = v35;
        _os_log_impl(&dword_1B25F5000, v38, v39, "%@: TLS alert received %s handshake: %s. Returning OSStatus %d", v40, 0x26u);
        outlined destroy of P256.Signing.PrivateKey?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v41, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v42, -1, -1);
        MEMORY[0x1B274ECF0](v40, -1, -1);
      }

      else
      {
      }

      return v35;
    }
  }

  else
  {
    v23 = (v14 + v6[14]);
    if (v23[1])
    {

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, logger);
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = *&v25[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v28 + 4) = v30;
        *v29 = v30;
        v31 = v30;
        _os_log_impl(&dword_1B25F5000, v26, v27, "%@: TLS error occurred. No alert written. Returning errSSLInternal.", v28, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v29, -1, -1);
        MEMORY[0x1B274ECF0](v28, -1, -1);
      }

      return -9810;
    }

    else
    {
      v50 = *v21;
      v49 = *(v21 + 8);
      v51 = *v23;
      v52 = specialized knownTLSAlert.init(rawValue:)(BYTE1(v51));
      v85 = specialized STLSRecordHandler.alertToOSStatusHelper(alert:peerAlert:)(v52, 0);
      outlined copy of TLSError(v50, v49, v22);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, logger);
      outlined copy of TLSError?(v50, v49, v22);
      v54 = v1;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      outlined consume of TLSError?(v50, v49, v22);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v82 = v51;
        v58 = v57;
        v59 = swift_slowAlloc();
        v83 = v59;
        v84 = swift_slowAlloc();
        v88 = v84;
        *v58 = 138413314;
        v60 = *&v54[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v58 + 4) = v60;
        *v59 = v60;
        *(v58 + 12) = 2080;
        v61 = v60;
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v88);

        *(v58 + 14) = v62;
        *(v58 + 22) = 2080;
        v86[0] = v50;
        v86[1] = v49;
        v87 = v22;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        v63 = Error.localizedDescription.getter();
        v65 = v64;
        outlined consume of TLSError?(v50, v49, v22);
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v88);

        *(v58 + 24) = v66;
        *(v58 + 32) = 1024;
        v67 = v85;
        *(v58 + 34) = v85;
        *(v58 + 38) = 2080;
        v68 = Alert.description.getter(v82);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v88);

        *(v58 + 40) = v70;
        _os_log_impl(&dword_1B25F5000, v55, v56, "%@: TLS error occurred %s, handshake: %s. Returning OSStatus %d. Sent alert? %s", v58, 0x30u);
        v71 = v83;
        outlined destroy of P256.Signing.PrivateKey?(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v71, -1, -1);
        v72 = v84;
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v72, -1, -1);
        MEMORY[0x1B274ECF0](v58, -1, -1);

        return v67;
      }

      else
      {

        outlined consume of TLSError?(v50, v49, v22);
        return v85;
      }
    }
  }
}

Swift::String __swiftcall STLSRecordHandler.getNegotiatedGroup()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for TLSRecordHandler();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v10, v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v4, v9, type metadata accessor for TLSRecordHandler);
    v13 = TLSRecordHandler.getNegotiatedGroup.getter();
    v15 = v14;
    outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
    v12 = v15;
    v11 = v13;
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

id STLSRecordHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for STLSRecordHandler()
{
  result = type metadata singleton initialization cache for STLSRecordHandler;
  if (!type metadata singleton initialization cache for STLSRecordHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for STLSRecordHandler()
{
  type metadata accessor for TLSRecordHandler?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for TLSRecordHandler?()
{
  if (!lazy cache variable for type metadata for TLSRecordHandler?)
  {
    type metadata accessor for TLSRecordHandler();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TLSRecordHandler?);
    }
  }
}

id specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, void *a7, int a8, unsigned __int8 a9, __int128 *a10, void *a11)
{
  v12 = v11;
  v85 = a6;
  v86 = a8;
  v92 = a4;
  v93 = a7;
  v88 = a5;
  v89 = a1;
  v90 = a2;
  v91 = a3;
  v87 = a9;
  ObjectType = swift_getObjectType();
  v13 = a10[5];
  v96[4] = a10[4];
  v96[5] = v13;
  v97[0] = a10[6];
  *(v97 + 9) = *(a10 + 105);
  v14 = a10[1];
  v96[0] = *a10;
  v96[1] = v14;
  v15 = a10[3];
  v96[2] = a10[2];
  v96[3] = v15;
  v82 = type metadata accessor for TLSHandshakeStateMachine(0);
  v16 = *(v82[-1].isa + 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v81 = &v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v76 - v23;
  v25 = type metadata accessor for HandshakeStateMachine(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  v31 = type metadata accessor for TLSRecordHandler();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v78 = v32 + 56;
  v79 = v30;
  v34 = &v12[v30];
  v35 = v33;
  (v33)(v34, 1, 1, v31);
  v83 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
  *&v12[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = a11;
  v36 = a11;
  configureClientStateMachine(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:useRawEPSKs:enableEarlyData:pakeClientConfiguration:)(v89, v90, 0, v91, v92, v88, v85 & 0x1FFFF, v93, v24, v86, v87, a10);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {

    outlined destroy of P256.Signing.PrivateKey?(v24, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, logger);
    v38 = v12;
    v39 = v12;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = *&v38[v83];
      *(v42 + 4) = v44;
      *v43 = v44;
      v45 = v44;
      _os_log_impl(&dword_1B25F5000, v40, v41, "%@: unable to initialize client handshake state machine", v42, 0xCu);
      outlined destroy of P256.Signing.PrivateKey?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v43, -1, -1);
      MEMORY[0x1B274ECF0](v42, -1, -1);
    }
  }

  else
  {
    outlined init with take of TLSRecordHandler(v24, v29, type metadata accessor for HandshakeStateMachine);
    v77 = v29;
    v46 = v80;
    outlined init with copy of TLSRecordHandler(v29, v80, type metadata accessor for HandshakeStateMachine);
    swift_storeEnumTagMultiPayload();
    v47 = v81;
    v48 = TLSRecordHandler.init(stateMachine:)(v46, v81);
    v35(v47, 0, 1, v31, v48);
    v49 = v79;
    swift_beginAccess();
    outlined assign with take of TLSRecordHandler?(v47, &v12[v49]);
    swift_endAccess();
    v38 = v12;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, logger);
    v51 = v93;
    v52 = v89;
    v53 = v90;
    v54 = v91;
    outlined init with copy of Any?(a10, v94, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
    v55 = v52;
    v80 = v53;
    v81 = v54;
    v82 = v51;
    outlined init with copy of Any?(a10, v94, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
    v56 = v88;

    v57 = v12;
    v58 = v92;
    v59 = Logger.logObject.getter();
    LODWORD(v53) = static os_log_type_t.default.getter();

    LODWORD(v79) = v53;
    if (os_log_type_enabled(v59, v53))
    {
      v60 = v56;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138414850;
      v63 = *&v38[v83];
      *(v61 + 4) = v63;
      *v62 = v63;
      v83 = v38;
      *(v61 + 12) = 1024;
      v64 = v89 != 0;
      v65 = v63;

      *(v61 + 14) = v64;
      *(v61 + 18) = 1024;
      v66 = v80;

      *(v61 + 20) = v90 != 0;
      *(v61 + 24) = 1024;
      v67 = v81;

      *(v61 + 26) = v91 != 0;
      *(v61 + 30) = 2112;
      *(v61 + 32) = v58;
      v62[1] = v92;
      *(v61 + 40) = 1024;
      v68 = v58;

      *(v61 + 42) = v60 != 0;

      *(v61 + 46) = 512;
      v69 = v85;
      if ((v85 & 0x10000) != 0)
      {
        v69 = 0;
      }

      *(v61 + 48) = v69;
      *(v61 + 50) = 1024;
      v70 = v82;

      *(v61 + 52) = v93 != 0;
      *(v61 + 56) = 1024;
      *(v61 + 58) = v86 & 1;
      *(v61 + 62) = 1024;
      v71 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(v96) == 0;
      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
      *(v61 + 64) = v71;
      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
      *(v61 + 68) = 1024;
      v38 = v83;
      *(v61 + 70) = v87 & 1;
      _os_log_impl(&dword_1B25F5000, v59, v79, "%@:client STLSRecordHandler initialized: spkiArray %{BOOL}d, serverName? %{BOOL}d, alpn? %{BOOL}d, sessionState? %@, ticketRequest? %{BOOL}d, keyExchangeGroup: %hu, externalPreSharedKey? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeClientConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v61, 0x4Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B274ECF0](v62, -1, -1);
      MEMORY[0x1B274ECF0](v61, -1, -1);
    }

    else
    {
      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

      v72 = v80;
      v73 = v81;

      v74 = v82;

      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

      v59 = v74;
    }

    outlined destroy of TLSRecordHandler(v77, type metadata accessor for HandshakeStateMachine);
  }

  v95.receiver = v38;
  v95.super_class = ObjectType;
  return objc_msgSendSuper2(&v95, sel_init);
}