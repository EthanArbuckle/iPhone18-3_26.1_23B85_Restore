BOOL TLSRecordHandler.handshakeComplete.getter()
{
  v1 = v0;
  v26 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TLSHandshakeStateMachine(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v20, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v20, v8, type metadata accessor for ServerHandshakeStateMachine);
    sub_26C13F134(&v8[*(v5 + 24)], v4, type metadata accessor for ServerHandshakeState);
    sub_26C13F06C(v8, type metadata accessor for ServerHandshakeStateMachine);
    v21 = swift_getEnumCaseMultiPayload() > 6;
    v22 = type metadata accessor for ServerHandshakeState;
    v23 = v4;
  }

  else
  {
    sub_26C13F0CC(v20, v16, type metadata accessor for HandshakeStateMachine);
    sub_26C13F134(&v16[*(v13 + 24)], v12, type metadata accessor for HandshakeState);
    sub_26C13F06C(v16, type metadata accessor for HandshakeStateMachine);
    v21 = swift_getEnumCaseMultiPayload() > 5;
    v22 = type metadata accessor for HandshakeState;
    v23 = v12;
  }

  sub_26C13F06C(v23, v22);
  return v21;
}

uint64_t TLSRecordHandler.handshakeStarted.getter()
{
  v25 = type metadata accessor for ServerHandshakeState(0);
  v1 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HandshakeStateMachine(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TLSHandshakeStateMachine(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v0, v19, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v19, v7, type metadata accessor for ServerHandshakeStateMachine);
    sub_26C13F134(&v7[*(v4 + 24)], v3, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload())
    {
      v20 = 1;
    }

    else
    {
      v20 = v7[24];
    }

    sub_26C13F06C(v7, type metadata accessor for ServerHandshakeStateMachine);
    v21 = type metadata accessor for ServerHandshakeState;
    v22 = v3;
  }

  else
  {
    sub_26C13F0CC(v19, v15, type metadata accessor for HandshakeStateMachine);
    sub_26C13F134(&v15[*(v12 + 24)], v11, type metadata accessor for HandshakeState);
    sub_26C13F06C(v15, type metadata accessor for HandshakeStateMachine);
    v20 = swift_getEnumCaseMultiPayload() != 0;
    v21 = type metadata accessor for HandshakeState;
    v22 = v11;
  }

  sub_26C13F06C(v22, v21);
  return v20;
}

double TLSRecordHandler.init(stateMachine:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TLSRecordHandler();
  v5 = v4[7];
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + v4[8], 1, 1, v6);
  *(a2 + v4[9]) = 0;
  v8 = a2 + v4[13];
  *v8 = 0;
  *(v8 + 2) = 1;
  v9 = a2 + v4[14];
  *v9 = 0;
  *(v9 + 2) = 1;
  *(a2 + v4[15]) = 0;
  v10 = a2 + v4[16];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = -1;
  sub_26C13F0CC(a1, a2, type metadata accessor for TLSHandshakeStateMachine);
  v11 = (a2 + v4[5]);
  *v11 = xmmword_26C14A540;
  v11[1] = xmmword_26C14F8B0;
  v12 = a2 + v4[6];
  v13 = sub_26C148BDC();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v15 = type metadata accessor for TLSRecordProtector();
  v16 = v15[6];
  v22 = v15[5];
  v14(v12 + v16, 1, 1, v13);
  v23 = v15[7];
  *(v12 + v15[8]) = 0;
  *(v12 + v15[9]) = 0;
  v17 = v12 + v15[10];
  sub_26C0CF5C4(v12, &qword_28047A930, qword_26C14C120);
  v14(v12, 1, 1, v13);
  *(v12 + v22) = 0;
  sub_26C0CF5C4(v12 + v16, &qword_28047A930, qword_26C14C120);
  v14(v12 + v16, 1, 1, v13);
  *(v12 + v23) = 0;
  *v17 = 0;
  *(v17 + 2) = 1;
  v18 = a2 + v4[11];
  result = 0.0;
  *v18 = xmmword_26C14A1B0;
  *(v18 + 16) = 0;
  v20 = a2 + v4[10];
  *v20 = xmmword_26C14A1B0;
  *(v20 + 16) = 0;
  v21 = a2 + v4[12];
  *v21 = xmmword_26C14A1B0;
  *(v21 + 16) = 0;
  return result;
}

uint64_t _s8SwiftTLS16TLSRecordHandlerV14startHandshakeyyAA8TLSErrorOYKF(uint64_t a1)
{
  v4 = v1;
  v5 = type metadata accessor for PartialHandshakeResult(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TLSHandshakeStateMachine(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v4, v12, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F06C(v12, type metadata accessor for TLSHandshakeStateMachine);
    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v17 = sub_26C148A9C();
    __swift_project_value_buffer(v17, qword_28047AEF0);
    v18 = sub_26C148A7C();
    v19 = sub_26C14900C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26C0B5000, v18, v19, "startHandshake called on server", v20, 2u);
      MEMORY[0x26D69C3A0](v20, -1, -1);
    }

    *a1 = xmmword_26C14F8C0;
    *(a1 + 16) = 2;
    v23 = xmmword_26C14F8C0;
    v24 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  else
  {
    sub_26C13F0CC(v12, v16, type metadata accessor for HandshakeStateMachine);
    _s8SwiftTLS21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v23, v8);
    if (v2)
    {
      result = sub_26C13F06C(v16, type metadata accessor for HandshakeStateMachine);
      v22 = v24;
      *a1 = v23;
      *(a1 + 16) = v22;
    }

    else
    {
      sub_26C139F60(v8, &v23);
      sub_26C13F06C(v8, type metadata accessor for PartialHandshakeResult);
      sub_26C13F06C(v4, type metadata accessor for TLSHandshakeStateMachine);
      sub_26C13F0CC(v16, v4, type metadata accessor for HandshakeStateMachine);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_26C139F60(uint64_t a1, void *a2)
{
  v70 = sub_26C1488DC();
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860) - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v76 = &v65 - v11;
  v12 = *(a1 + 8);
  if (v12 >> 60 == 15)
  {
LABEL_63:
    v58 = v74;
    result = sub_26C13A8C8(v10, &v86);
    if (v58)
    {
      v59 = v87;
      *a2 = v86;
      *(a2 + 16) = v59;
    }

    return result;
  }

  v67 = a2;
  v13 = *v10;
  v66 = v10;
  v14 = v10[2];
  sub_26C0BBAA4(v13, v12);
  result = v14;
  v16 = (v12 >> 62);
  v79 = v13;
  v72 = v13 >> 32;
  v68 = (v4 + 8);
  v77 = BYTE6(v12);
  v17 = v78;
  v75 = v12;
  for (i = v12 >> 62; ; LODWORD(v16) = i)
  {
    if (v16 > 1)
    {
      v22 = v16 == 2 ? *(v79 + 24) : 0;
    }

    else
    {
      v22 = v77;
      if (v16)
      {
        v22 = v72;
      }
    }

    v23 = __OFSUB__(v22, result);
    v24 = v22 - result;
    if (v23)
    {
      break;
    }

    if (v24 < 1)
    {
      sub_26C0BB9B0(v79, v12);
      a2 = v67;
      v10 = v66;
      goto LABEL_63;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v25 = *(v79 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = v77;
      if (v16)
      {
        v25 = v72;
      }
    }

    v23 = __OFSUB__(v25, result);
    v26 = v25 - result;
    if (v23)
    {
      goto LABEL_70;
    }

    if (v26 >= 0x4000)
    {
      v26 = 0x4000;
    }

    v27 = result + v26;
    if (__OFADD__(result, v26))
    {
      goto LABEL_71;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v79 + 24) < v27)
        {
          goto LABEL_65;
        }
      }

      else if (v27 > 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v28 = v77;
      if (v16)
      {
        v28 = v72;
      }

      if (v28 < v27)
      {
LABEL_65:
        v60 = v67;
        *v67 = 0xD000000000000046;
        v60[1] = 0x800000026C15B170;
        *(v60 + 16) = 1;
        *&v86 = 0xD000000000000046;
        *(&v86 + 1) = 0x800000026C15B170;
        v87 = 1;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v61 = v79;
        v62 = v12;
        return sub_26C0BB9B0(v61, v62);
      }
    }

    if (v27 < result)
    {
      goto LABEL_72;
    }

    result = sub_26C14889C();
    v29 = result;
    v31 = v30;
    v32 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_41;
      }

      result = *(result + 16);
      v33 = *(v29 + 24);
    }

    else
    {
      if (!v32)
      {
        goto LABEL_41;
      }

      result = result;
      v33 = v29 >> 32;
    }

    if (v33 < result)
    {
      goto LABEL_73;
    }

LABEL_41:
    v90 = sub_26C14889C();
    v35 = v34;
    sub_26C0BB9B0(v29, v31);
    v80 = type metadata accessor for TLSRecordHandler();
    v36 = *(v80 + 28);
    v37 = v76;
    sub_26C0CF768(v17 + v36, v76);
    v38 = type metadata accessor for EncryptionLevel(0);
    v39 = *(*(v38 - 8) + 48);
    v40 = v39(v37, 1, v38);
    result = sub_26C0CF5C4(v37, &qword_28047A998, &qword_26C14A860);
    if (v40 == 1)
    {
      goto LABEL_42;
    }

    v46 = v71;
    sub_26C0CF768(v17 + v36, v71);
    if (v39(v46, 1, v38) == 1)
    {
      sub_26C0CF5C4(v46, &qword_28047A998, &qword_26C14A860);
      v43 = v90;
      v42 = v35;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = v90;
      v42 = v35;
      if (!EnumCaseMultiPayload)
      {
        v57 = sub_26C148BDC();
        result = (*(*(v57 - 8) + 8))(v46, v57);
LABEL_42:
        v41 = v35 >> 62;
        v42 = v35;
        if ((v35 >> 62) > 1)
        {
          v43 = v90;
          v44 = v80;
          if (v41 != 2)
          {
            goto LABEL_3;
          }

          v48 = *(v90 + 16);
          v47 = *(v90 + 24);
          v45 = v47 - v48;
          if (__OFSUB__(v47, v48))
          {
            goto LABEL_76;
          }
        }

        else
        {
          v43 = v90;
          v44 = v80;
          if (!v41)
          {
            v45 = BYTE6(v42);
            if (!BYTE6(v42))
            {
LABEL_3:
              sub_26C0BB9B0(v43, v42);
              v18 = MEMORY[0x277D84F90];
LABEL_4:
              v16 = &off_287CCC068;
              v89 = &off_287CCC068;
              LOWORD(v86) = 790;
              BYTE2(v86) = 3;
              v19 = &type metadata for TLSPlaintext;
              v88 = &type metadata for TLSPlaintext;
              *(&v86 + 1) = v18;
              goto LABEL_5;
            }

LABEL_59:
            v18 = sub_26C148520(v45, 0);
            v55 = v69;
            v56 = sub_26C14884C();
            sub_26C0BB9B0(v43, v42);
            result = (*v68)(v55, v70);
            if (v56 != v45)
            {
              goto LABEL_74;
            }

            goto LABEL_4;
          }

          if (__OFSUB__(HIDWORD(v90), v90))
          {
            goto LABEL_75;
          }

          v45 = HIDWORD(v90) - v90;
        }

        sub_26C0BBAA4(v43, v42);
        if (!v45)
        {
          goto LABEL_3;
        }

        goto LABEL_59;
      }

      sub_26C13F06C(v46, type metadata accessor for EncryptionLevel);
    }

    sub_26C0BBAA4(v43, v42);
    v50 = sub_26C148778(v43, v42);
    v44 = v80;
    v51 = v78 + *(v80 + 24);
    v52 = v74;
    v53 = sub_26C132868(v50, 22, 0, &v81);
    if (v52)
    {
      sub_26C0BB9B0(v43, v42);

      v63 = v82;
      v64 = v67;
      *v67 = v81;
      *(v64 + 16) = v63;
      v61 = v79;
      v62 = v75;
      return sub_26C0BB9B0(v61, v62);
    }

    v54 = v53;
    v74 = 0;

    v85 = &off_287CCC0B0;
    v84 = &type metadata for TLSCiphertext;
    *&v83 = v54;
    sub_26C0D3CB0(&v83, &v86);
    v19 = v88;
    v16 = v89;
LABEL_5:
    v20 = __swift_project_boxed_opaque_existential_1(&v86, v19);
    v17 = v78;
    v21 = v78 + *(v44 + 48);
    sub_26C1337F8(v20, v19, v16);
    sub_26C0BB9B0(v43, v42);
    __swift_destroy_boxed_opaque_existential_1(&v86);
    result = v27;
    v12 = v75;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_26C13A6B8(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeStateMachine(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TLSHandshakeStateMachine(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v2, v15, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v15, v7, type metadata accessor for ServerHandshakeStateMachine);
    ServerHandshakeStateMachine.receivedNetworkData(_:)(a1);
    sub_26C13F06C(v2, type metadata accessor for TLSHandshakeStateMachine);
    sub_26C13F0CC(v7, v2, type metadata accessor for ServerHandshakeStateMachine);
  }

  else
  {
    sub_26C13F0CC(v15, v11, type metadata accessor for HandshakeStateMachine);
    HandshakeStateMachine.receivedNetworkData(_:)(a1);
    sub_26C13F06C(v2, type metadata accessor for TLSHandshakeStateMachine);
    sub_26C13F0CC(v11, v2, type metadata accessor for HandshakeStateMachine);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26C13A8C8(uint64_t a1, _OWORD *a2)
{
  v83 = a2;
  v3 = v2;
  v89 = a1;
  v4 = sub_26C148BDC();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - v13;
  v15 = type metadata accessor for EncryptionLevel(0);
  v90 = *(v15 - 8);
  v16 = *(v90 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v79 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  v23 = type metadata accessor for ServerHandshakeStateMachine(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HandshakeStateMachine(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TLSHandshakeStateMachine(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v3, v34, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v34, v26, type metadata accessor for ServerHandshakeStateMachine);
    v35 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v36 = type metadata accessor for ServerHandshakeStateMachine;
    v37 = v26;
  }

  else
  {
    sub_26C13F0CC(v34, v30, type metadata accessor for HandshakeStateMachine);
    v35 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v36 = type metadata accessor for HandshakeStateMachine;
    v37 = v30;
  }

  sub_26C13F06C(v37, v36);
  v38 = v15;
  v39 = v89;
  if ((v35 & 0x10000) == 0)
  {
    v40 = v3 + *(type metadata accessor for TLSRecordHandler() + 24);
    v41 = v40 + *(type metadata accessor for TLSRecordProtector() + 40);
    *v41 = v35;
    *(v41 + 2) = 0;
  }

  v86 = v3;
  v42 = type metadata accessor for PartialHandshakeResult(0);
  sub_26C0CF768(v39 + *(v42 + 24), v14);
  v43 = v90;
  v44 = *(v90 + 48);
  if (v44(v14, 1, v38) == 1)
  {
    sub_26C0CF5C4(v14, &qword_28047A998, &qword_26C14A860);
  }

  else
  {
    sub_26C13F0CC(v14, v22, type metadata accessor for EncryptionLevel);
    v45 = v38;
    v46 = type metadata accessor for TLSRecordHandler();
    v47 = *(v46 + 32);
    v48 = v86;
    sub_26C0CF5C4(v86 + v47, &qword_28047A998, &qword_26C14A860);
    sub_26C13F134(v22, v48 + v47, type metadata accessor for EncryptionLevel);
    v49 = *(v43 + 56);
    v79 = v45;
    v49(v48 + v47, 0, 1, v45);
    v50 = v84;
    v51 = sub_26C13B154(v84, v22);
    v52 = v48 + *(v46 + 24);
    v53 = v93;
    sub_26C132568(v50, v51, &v91);
    if (v53)
    {

      (*(v87 + 8))(v50, v88);
LABEL_16:
      result = sub_26C13F06C(v22, type metadata accessor for EncryptionLevel);
      v73 = v92;
      v74 = v83;
      *v83 = v91;
      *(v74 + 16) = v73;
      return result;
    }

    v93 = 0;
    sub_26C13F06C(v22, type metadata accessor for EncryptionLevel);
    v54 = type metadata accessor for TLSRecordProtector();
    v55 = v54[6];
    sub_26C0CF5C4(v52 + v55, &qword_28047A930, qword_26C14C120);
    v56 = v87;
    v57 = v50;
    v58 = v88;
    (*(v87 + 32))(v52 + v55, v57, v88);
    v59 = v58;
    v39 = v89;
    (*(v56 + 56))(v52 + v55, 0, 1, v59);
    v60 = v54[7];
    v61 = *(v52 + v60);

    *(v52 + v60) = v51;
    *(v52 + v54[9]) = 0;
    v38 = v79;
  }

  v62 = v85;
  sub_26C0CF768(v39 + *(v42 + 20), v85);
  if (v44(v62, 1, v38) == 1)
  {
    return sub_26C0CF5C4(v62, &qword_28047A998, &qword_26C14A860);
  }

  v22 = v81;
  sub_26C13F0CC(v62, v81, type metadata accessor for EncryptionLevel);
  v64 = type metadata accessor for TLSRecordHandler();
  v65 = *(v64 + 28);
  v66 = v86;
  sub_26C0CF5C4(v86 + v65, &qword_28047A998, &qword_26C14A860);
  sub_26C13F134(v22, v66 + v65, type metadata accessor for EncryptionLevel);
  (*(v90 + 56))(v66 + v65, 0, 1, v38);
  v67 = v80;
  sub_26C13F134(v22, v80, type metadata accessor for EncryptionLevel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26C13F06C(v67, type metadata accessor for EncryptionLevel);
    v68 = v82;
    v69 = sub_26C13B154(v82, v22);
    v70 = v66 + *(v64 + 24);
    v71 = v93;
    sub_26C132568(v68, v69, &v91);
    v72 = v87;
    if (v71)
    {

      (*(v72 + 8))(v82, v88);
      goto LABEL_16;
    }

    sub_26C13F06C(v22, type metadata accessor for EncryptionLevel);
    sub_26C0CF5C4(v70, &qword_28047A930, qword_26C14C120);
    v75 = v88;
    (*(v72 + 32))(v70, v82, v88);
    (*(v72 + 56))(v70, 0, 1, v75);
    v76 = type metadata accessor for TLSRecordProtector();
    v77 = *(v76 + 20);
    v78 = *(v70 + v77);

    *(v70 + v77) = v69;
    *(v70 + *(v76 + 32)) = 0;
  }

  else
  {
    sub_26C13F06C(v22, type metadata accessor for EncryptionLevel);
    return (*(v87 + 8))(v67, v88);
  }

  return result;
}

uint64_t sub_26C13B154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C148BDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  sub_26C13F134(a2, v7, type metadata accessor for EncryptionLevel);
  (*(v9 + 32))(v18, v7, v8);
  v19 = MEMORY[0x277D84F90];
  sub_26C136F6C(7955819, 0xE300000000000000, MEMORY[0x277D84F90], 0x20uLL, v16);
  sub_26C136F6C(30313, 0xE200000000000000, v19, 0xCuLL, v13);
  v20 = *(v9 + 8);
  v20(v18, v8);
  (*(v9 + 16))(a1, v16, v8);
  sub_26C148B8C();
  v21 = sub_26C148778(v23[2], v23[3]);
  v20(v13, v8);
  v20(v16, v8);
  return v21;
}

uint64_t sub_26C13B3C0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for TLSRecordHandler();
  sub_26C0CF768(v1 + v8[8], v7);
  v9 = type metadata accessor for EncryptionLevel(0);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_26C0CF5C4(v7, &qword_28047A998, &qword_26C14A860);
  v11 = v8[5];
  if (v10 == 1)
  {
    result = sub_26C13550C(&v33);
    if (v2)
    {
      v26 = v34;
      *a1 = v33;
      *(a1 + 16) = v26;
    }

    else if (v13)
    {
      return result & 0xFFFFFF;
    }

    else
    {
      return 0;
    }

    return result;
  }

  result = sub_26C13594C(&v33);
  if (v2)
  {
    v14 = v33;
    v15 = v34;
    if (*(v1 + v8[9]))
    {
LABEL_8:
      *a1 = v14;
      *(a1 + 16) = v15;
      v33 = v14;
      v34 = v15;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v16 = sub_26C148A9C();
    v17 = __swift_project_value_buffer(v16, qword_28047AEF0);
    sub_26C0CF018(v14, *(&v14 + 1), v15);
    v35 = v17;
    v18 = sub_26C148A7C();
    v19 = sub_26C148FFC();
    sub_26C0CF030(v14, *(&v14 + 1), v15);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26C0BBAF8();
      swift_allocError();
      HIDWORD(v31) = v19;
      *v21 = v14;
      *(v21 + 16) = v15;
      sub_26C0CF018(v14, *(&v14 + 1), v15);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      v23 = v32;
      *v32 = v22;
      _os_log_impl(&dword_26C0B5000, v18, BYTE4(v31), "error parsing first potential ciphertext record: %@. checking for plaintext alert.", v20, 0xCu);
      sub_26C0CF5C4(v23, &qword_28047A880, &qword_26C14A5B0);
      MEMORY[0x26D69C3A0](v23, -1, -1);
      MEMORY[0x26D69C3A0](v20, -1, -1);
    }

    v24 = sub_26C13550C(&v33);
    if (!v25)
    {
      sub_26C0CF030(v14, *(&v14 + 1), v15);
      return 0;
    }

    if (v24 != 21)
    {

      goto LABEL_8;
    }

    v27 = v24;
    sub_26C0CF030(v14, *(&v14 + 1), v15);
    v28 = sub_26C148A7C();
    v29 = sub_26C148FFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26C0B5000, v28, v29, "Received plaintext alert record", v30, 2u);
      MEMORY[0x26D69C3A0](v30, -1, -1);
    }

    return *&v27 & 0xFFFF15;
  }

  else if (result)
  {
    *(v1 + v8[9]) = 1;
  }

  return result;
}

uint64_t sub_26C13B808(uint64_t *a1, unint64_t *a2)
{
  v52 = a2;
  v4 = v3;
  v5 = v2;
  v7 = type metadata accessor for ServerHandshakeStateMachine(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for TLSHandshakeStateMachine(0);
  v13 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = &v51 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  v27 = type metadata accessor for PartialHandshakeResult(0);
  v60 = *(v27 - 8);
  v28 = *(v60 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;

  v62 = sub_26C11EF18(v32);
  v34 = v33;

  v35 = 0;
  v36 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    v37 = v62;
    if (v36 == 2)
    {
      v35 = *(v62 + 16);
    }
  }

  else
  {
    v37 = v62;
    if (v36)
    {
      v35 = v62;
    }
  }

  v65 = v37;
  v66 = v34;
  v67 = v35;
  sub_26C13A6B8(&v65);
  v38 = type metadata accessor for TLSRecordHandler();
  v62 = v5 + *(v38 + 56);
  v57 = v5 + 2;
  v58 = v38;
  v39 = (v60 + 56);
  v59 = (v60 + 56);
  v60 += 48;
  v53 = v30;
  while (1)
  {
    if (*(v62 + 2) == 1)
    {
      (*v39)(v24, 1, 1, v27);
      goto LABEL_11;
    }

    v40 = *v39;
    if ((*(v57 + *(v58 + 52)) & 1) == 0)
    {
      break;
    }

    v40(v24, 1, 1, v27);
LABEL_11:
    sub_26C13F134(v5, v15, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = v56;
      sub_26C13F0CC(v15, v56, type metadata accessor for ServerHandshakeStateMachine);
      v42 = v54;
      _s8SwiftTLS27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(&v63, v54);
      if (v4)
      {
        v47 = *(&v63 + 1);
        v46 = v63;
        v48 = v64;
        sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
        sub_26C13F134(v41, v5, type metadata accessor for ServerHandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v63 = __PAIR128__(v47, v46);
        v64 = v48;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v49 = type metadata accessor for ServerHandshakeStateMachine;
        goto LABEL_24;
      }

      v4 = 0;
      sub_26C0CF5C4(v24, &qword_28047A938, &qword_26C14A7E0);
      sub_26C13EFFC(v42, v24);
      sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
      sub_26C13F0CC(v41, v5, type metadata accessor for ServerHandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
      v30 = v53;
    }

    else
    {
      v41 = v55;
      sub_26C13F0CC(v15, v55, type metadata accessor for HandshakeStateMachine);
      _s8SwiftTLS21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(&v63, v61);
      if (v4)
      {
        v47 = *(&v63 + 1);
        v46 = v63;
        v48 = v64;
        sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
        sub_26C13F134(v41, v5, type metadata accessor for HandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v63 = __PAIR128__(v47, v46);
        v64 = v48;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v49 = type metadata accessor for HandshakeStateMachine;
LABEL_24:
        sub_26C13F06C(v41, v49);
        sub_26C0CF5C4(v24, &qword_28047A938, &qword_26C14A7E0);
        result = sub_26C0BB9B0(v65, v66);
        v50 = v52;
        *v52 = v46;
        v50[1] = v47;
        *(v50 + 16) = v48;
        return result;
      }

      v4 = 0;
      sub_26C0CF5C4(v24, &qword_28047A938, &qword_26C14A7E0);
      sub_26C13EFFC(v61, v24);
      sub_26C13F06C(v5, type metadata accessor for TLSHandshakeStateMachine);
      sub_26C13F0CC(v41, v5, type metadata accessor for HandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
    }

    sub_26C13EFFC(v24, v26);
    if ((*v60)(v26, 1, v27) == 1)
    {
      goto LABEL_19;
    }

    sub_26C13F0CC(v26, v30, type metadata accessor for PartialHandshakeResult);
    sub_26C139F60(v30, &v63);
    sub_26C13F06C(v30, type metadata accessor for PartialHandshakeResult);
    v39 = v59;
  }

  v40(v26, 1, 1, v27);
LABEL_19:
  sub_26C0CF5C4(v26, &qword_28047A938, &qword_26C14A7E0);
  if (!TLSRecordHandler.handshakeComplete.getter())
  {
    return sub_26C0BB9B0(v65, v66);
  }

  sub_26C13BF40(&v63);
  if (!v4)
  {
    return sub_26C0BB9B0(v65, v66);
  }

  result = sub_26C0BB9B0(v65, v66);
  v44 = v64;
  v45 = v52;
  *v52 = v63;
  *(v45 + 16) = v44;
  return result;
}

uint64_t sub_26C13BF40(void *a1)
{
  v4 = v2;
  v5 = v1;
  v53 = sub_26C1488DC();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TLSRecordHandler();
  if (*(v5 + *(result + 56) + 2) != 1)
  {
    return result;
  }

  v10 = result;
  v11 = (v5 + *(result + 40));
  v12 = v11[1];
  v13 = v12 >> 62;
  v49 = *v11;
  v47 = a1;
  v48 = v49 >> 32;
  v50 = (v6 + 8);
  v51 = BYTE6(v12);
  v54 = v12 >> 62;
  v57 = v5;
  while (1)
  {
    v14 = v11[2];
    if (v13 > 1)
    {
      v15 = v13 == 2 ? *(v49 + 24) : 0;
    }

    else
    {
      v15 = v51;
      if (v13)
      {
        v15 = v48;
      }
    }

    v16 = __OFSUB__(v15, v14);
    v17 = v15 - v14;
    if (v16)
    {
      break;
    }

    result = *v11;
    v18 = v11[1];
    if (v17 < 1)
    {
      result = sub_26C0BB9B0(result, v18);
      *v11 = xmmword_26C14A1B0;
      v11[2] = 0;
      return result;
    }

    v19 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(result + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = result >> 32;
    }

    else
    {
      v20 = BYTE6(v18);
    }

    v16 = __OFSUB__(v20, v14);
    v21 = v20 - v14;
    if (v16)
    {
      goto LABEL_52;
    }

    if (v21 >= 0x4000)
    {
      v22 = 0x4000;
    }

    else
    {
      v22 = v21;
    }

    result = sub_26C0DE248(v22, &v55);
    v23 = *(&v55 + 1);
    if (*(&v55 + 1) >> 60 == 15)
    {
      v44 = v47;
      *v47 = 0xD000000000000046;
      v44[1] = 0x800000026C15B170;
      *(v44 + 16) = 1;
      *&v55 = 0xD000000000000046;
      *(&v55 + 1) = 0x800000026C15B170;
      LOBYTE(v56) = 1;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    v24 = v55;
    v25 = *(&v55 + 1) >> 62;
    if ((*(&v55 + 1) >> 62) > 1)
    {
      if (v25 == 2)
      {
        v26 = *(v55 + 24);
      }

      else
      {
        v26 = 0;
      }
    }

    else if (v25)
    {
      v26 = v55 >> 32;
    }

    else
    {
      v26 = BYTE14(v55);
    }

    if (v26 < v56)
    {
      goto LABEL_53;
    }

    v27 = sub_26C14889C();
    v29 = v28;
    result = sub_26C0BB344(v24, v23);
    v30 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_44;
      }

      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      v31 = v32 - v33;
      if (__OFSUB__(v32, v33))
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (!v30)
      {
        v31 = BYTE6(v29);
        if (!BYTE6(v29))
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_55;
      }

      v31 = HIDWORD(v27) - v27;
    }

    sub_26C0BBAA4(v27, v29);
    if (!v31)
    {
LABEL_44:
      sub_26C0BB9B0(v27, v29);
      v34 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

LABEL_42:
    v34 = sub_26C148520(v31, 0);
    v35 = v10;
    v36 = v52;
    v37 = sub_26C14884C();
    sub_26C0BB9B0(v27, v29);
    v38 = v36;
    v10 = v35;
    result = (*v50)(v38, v53);
    if (v37 != v31)
    {
      goto LABEL_54;
    }

LABEL_45:
    v39 = v57;
    v40 = v57 + *(v10 + 24);
    v41 = sub_26C132868(v34, 23, 0, &v55);
    if (v4)
    {
      sub_26C0BB9B0(v27, v29);

      v45 = v56;
      v46 = v47;
      *v47 = v55;
      *(v46 + 16) = v45;
      return result;
    }

    v42 = v41;
    v4 = 0;

    v43 = v39 + *(v10 + 48);
    sub_26C137CB8(v42);
    sub_26C0BB9B0(v27, v29);

    LODWORD(v13) = v54;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

double _s8SwiftTLS16TLSRecordHandlerV18addApplicationDatayyAA10ByteBufferVzAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  v6 = v2 + *(type metadata accessor for TLSRecordHandler() + 40);
  sub_26C0DE7D4(a1);
  if (TLSRecordHandler.handshakeComplete.getter())
  {
    sub_26C13BF40(&v9);
    if (v3)
    {
      v8 = v10;
      result = *&v9;
      *a2 = v9;
      *(a2 + 16) = v8;
    }
  }

  return result;
}

uint64_t TLSRecordHandler.alertRead.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TLSRecordHandler();
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

uint64_t TLSRecordHandler.alertRead.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = type metadata accessor for TLSRecordHandler();
  v5 = v1 + *(result + 52);
  *v5 = v2;
  *(v5 + 2) = v3;
  return result;
}

uint64_t TLSRecordHandler.alertWrote.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TLSRecordHandler();
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

uint64_t TLSRecordHandler.alertWrote.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = type metadata accessor for TLSRecordHandler();
  v5 = v1 + *(result + 56);
  *v5 = v2;
  *(v5 + 2) = v3;
  return result;
}

uint64_t TLSRecordHandler.tlsError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TLSRecordHandler() + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_26C13EE88(v4, v5, v6);
}

uint64_t TLSRecordHandler.tlsError.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for TLSRecordHandler() + 64);
  result = sub_26C13EE9C(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t TLSRecordHandler.alertSentOrReceived.getter()
{
  v1 = type metadata accessor for TLSRecordHandler();
  if (*(v0 + *(v1 + 52) + 2) == 1)
  {
    v2 = *(v0 + *(v1 + 56) + 2) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

Swift::Void __swiftcall TLSRecordHandler.sendCloseNotify()()
{
  if (qword_28047A650 != -1)
  {
    swift_once();
  }

  v1 = word_280480310;
  sub_26C13C8D4(&v1, &v0);
}

uint64_t sub_26C13C8D4(unsigned __int8 *a1, _OWORD *a2)
{
  v5 = v3;
  v6 = v2;
  v87 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - v12;
  v14 = *a1;
  v15 = a1[1];
  result = type metadata accessor for TLSRecordHandler();
  v17 = v6 + *(result + 56);
  if (*(v17 + 2) != 1)
  {
    goto LABEL_42;
  }

  *v17 = v14 | (v15 << 8);
  *(v17 + 2) = 0;
  v72 = a2;
  if (qword_28047A650 != -1)
  {
    v69 = result;
    swift_once();
    result = v69;
  }

  v73 = v6;
  v75 = result;
  if (v14 == word_280480310 && v15 == HIBYTE(word_280480310))
  {
    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v18 = sub_26C148A9C();
    __swift_project_value_buffer(v18, qword_28047AEF0);
    v19 = sub_26C148A7C();
    v20 = sub_26C148FEC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26C0B5000, v19, v20, "write alert close notify", v21, 2u);
      v22 = v21;
      v6 = v73;
      MEMORY[0x26D69C3A0](v22, -1, -1);
    }
  }

  else
  {
    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v23 = sub_26C148A9C();
    __swift_project_value_buffer(v23, qword_28047AEF0);
    v24 = sub_26C148A7C();
    v25 = sub_26C14900C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v71 = v3;
      v27 = v26;
      v28 = swift_slowAlloc();
      v81 = v28;
      *v27 = 136315138;
      LOBYTE(v78) = v14;
      BYTE1(v78) = v15;
      v29 = Alert.description.getter();
      v31 = sub_26C0E5DE8(v29, v30, &v81);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_26C0B5000, v24, v25, "write alert %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D69C3A0](v28, -1, -1);
      v32 = v27;
      v5 = v71;
      MEMORY[0x26D69C3A0](v32, -1, -1);
    }

    v6 = v73;
  }

  v85 = xmmword_26C14A1B0;
  v86 = 0;
  LOBYTE(v78) = v14;
  v33 = MEMORY[0x277D838B0];
  v34 = MEMORY[0x277CC9C18];
  v83 = MEMORY[0x277D838B0];
  v84 = MEMORY[0x277CC9C18];
  v81 = &v78;
  v82 = &v78 + 1;
  v35 = __swift_project_boxed_opaque_existential_1(&v81, MEMORY[0x277D838B0]);
  v37 = *v35;
  v36 = v35[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v81);
  LOBYTE(v78) = v15;
  v83 = v33;
  v84 = v34;
  v81 = &v78;
  v82 = &v78 + 1;
  v38 = __swift_project_boxed_opaque_existential_1(&v81, v33);
  v40 = *v38;
  v39 = v38[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v41 = *(v75 + 28);
  sub_26C0CF768(v6 + v41, v13);
  v42 = type metadata accessor for EncryptionLevel(0);
  v43 = *(*(v42 - 8) + 48);
  LODWORD(v33) = v43(v13, 1, v42);
  sub_26C0CF5C4(v13, &qword_28047A998, &qword_26C14A860);
  if (v33 == 1)
  {
LABEL_17:
    v45 = *(&v85 + 1);
    v44 = v85;
    v46 = *(&v85 + 1) >> 62;
    if ((*(&v85 + 1) >> 62) > 1)
    {
      v47 = v75;
      if (v46 != 2)
      {
LABEL_34:
        v53 = sub_26C14889C();
        v55 = sub_26C148778(v53, v54);
        v56 = &type metadata for TLSPlaintext;
        v57 = &off_287CCC068;
        v83 = &type metadata for TLSPlaintext;
        v84 = &off_287CCC068;
        LOWORD(v81) = 789;
        BYTE2(v81) = 3;
        v82 = v55;
LABEL_41:
        v65 = __swift_project_boxed_opaque_existential_1(&v81, v56);
        v66 = v73 + *(v47 + 48);
        sub_26C1337F8(v65, v56, v57);
        sub_26C0BB9B0(v44, v45);
        result = __swift_destroy_boxed_opaque_existential_1(&v81);
        goto LABEL_42;
      }

      v49 = *(v85 + 24);
    }

    else
    {
      v47 = v75;
      if (!v46)
      {
        goto LABEL_34;
      }

      v49 = v85 >> 32;
    }

    if (v49 < 0)
    {
      __break(1u);
    }

    goto LABEL_34;
  }

  v48 = v74;
  sub_26C0CF768(v6 + v41, v74);
  if (v43(v48, 1, v42) == 1)
  {
    sub_26C0CF5C4(v48, &qword_28047A998, &qword_26C14A860);
    v47 = v75;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = v75;
    if (!EnumCaseMultiPayload)
    {
      v68 = sub_26C148BDC();
      (*(*(v68 - 8) + 8))(v48, v68);
      goto LABEL_17;
    }

    sub_26C13F06C(v48, type metadata accessor for EncryptionLevel);
  }

  v45 = *(&v85 + 1);
  v44 = v85;
  v51 = *(&v85 + 1) >> 62;
  if ((*(&v85 + 1) >> 62) <= 1)
  {
    if (!v51)
    {
      goto LABEL_38;
    }

    v52 = v85 >> 32;
LABEL_36:
    if (v52 < 0)
    {
      __break(1u);
    }

    goto LABEL_38;
  }

  if (v51 == 2)
  {
    v52 = *(v85 + 24);
    goto LABEL_36;
  }

LABEL_38:
  v58 = sub_26C14889C();
  v60 = sub_26C148778(v58, v59);
  v61 = v6 + *(v47 + 24);
  v62 = sub_26C132868(v60, 21, 0, &v76);

  if (!v5)
  {
    v79 = &type metadata for TLSCiphertext;
    v80 = &off_287CCC0B0;
    *&v78 = v62;
    sub_26C0D3CB0(&v78, &v81);
    v56 = v83;
    v57 = v84;
    goto LABEL_41;
  }

  v63 = v77;
  v64 = v72;
  *v72 = v76;
  *(v64 + 16) = v63;
  result = sub_26C0BB9B0(v44, v45);
LABEL_42:
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C13CF9C(uint64_t a1, uint64_t a2)
{
  v5 = v2;

  v7 = sub_26C11EF18(v6);
  v9 = v8;

  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(v7 + 16);
    }
  }

  else
  {
    v11 = v7;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v36 = v7;
  v37 = v9;
  v38 = v11;
  v12 = sub_26C1368E8();
  v13 = sub_26C1368E8();
  if (((v12 | v13) & 0x100) != 0)
  {
    return sub_26C0BB9B0(v36, v37);
  }

  v14 = v13;
  if (qword_28047A650 != -1)
  {
    swift_once();
  }

  if (word_280480310 != v12 || HIBYTE(word_280480310) != v14)
  {
    if (qword_28047A7A0 != -1)
    {
      swift_once();
    }

    v23 = sub_26C148A9C();
    __swift_project_value_buffer(v23, qword_28047AEF0);
    v24 = sub_26C148A7C();
    v25 = sub_26C14900C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = v5;
      *&v34 = swift_slowAlloc();
      v27 = v34;
      *v26 = 136315138;
      LOBYTE(v39) = v12;
      HIBYTE(v39) = v14;
      v28 = Alert.description.getter();
      v30 = sub_26C0E5DE8(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_26C0B5000, v24, v25, "read alert %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v31 = v27;
      v5 = v33;
      MEMORY[0x26D69C3A0](v31, -1, -1);
      MEMORY[0x26D69C3A0](v26, -1, -1);
    }

    v32 = v5 + *(type metadata accessor for TLSRecordHandler() + 52);
    *v32 = v12 | (v14 << 8);
    *(v32 + 2) = 0;
    return sub_26C0BB9B0(v36, v37);
  }

  if (qword_28047A7A0 != -1)
  {
    swift_once();
  }

  v15 = sub_26C148A9C();
  __swift_project_value_buffer(v15, qword_28047AEF0);
  v16 = sub_26C148A7C();
  v17 = sub_26C148FEC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26C0B5000, v16, v17, "read alert close notify", v18, 2u);
    MEMORY[0x26D69C3A0](v18, -1, -1);
  }

  v19 = type metadata accessor for TLSRecordHandler();
  v20 = v5 + *(v19 + 52);
  *v20 = v12 | (v14 << 8);
  *(v20 + 2) = 0;
  *(v5 + *(v19 + 60)) = 1;
  v39 = word_280480310;
  sub_26C13C8D4(&v39, &v34);
  result = sub_26C0BB9B0(v36, v37);
  if (v3)
  {
    v22 = v35;
    *a2 = v34;
    *(a2 + 16) = v22;
  }

  return result;
}

uint64_t sub_26C13D304@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  if (*(result + 16))
  {
    if (*(result + 16) == 1)
    {
LABEL_4:
      if (qword_28047A6D8 != -1)
      {
        v3 = a2;
        result = swift_once();
        a2 = v3;
      }

      v2 = &word_280480332;
    }

    else
    {
      switch(*result)
      {
        case 2:
        case 6:
        case 0x10:
        case 0x23:
          if (qword_28047A670 != -1)
          {
            v5 = a2;
            result = swift_once();
            a2 = v5;
          }

          v2 = &word_280480318;
          break;
        case 3:
        case 4:
          if (qword_28047A658 != -1)
          {
            v9 = a2;
            result = swift_once();
            a2 = v9;
          }

          v2 = &word_280480312;
          break;
        case 7:
        case 0x21:
          if (qword_28047A6A0 != -1)
          {
            v7 = a2;
            result = swift_once();
            a2 = v7;
          }

          v2 = &word_280480324;
          break;
        case 8:
        case 9:
        case 0xALL:
        case 0xBLL:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
        case 0x1ALL:
        case 0x1ELL:
        case 0x20:
        case 0x24:
        case 0x25:
          goto LABEL_4;
        case 0xCLL:
          if (qword_28047A678 != -1)
          {
            v12 = a2;
            result = swift_once();
            a2 = v12;
          }

          v2 = &word_28048031A;
          break;
        case 0xDLL:
          if (qword_28047A6C8 != -1)
          {
            v10 = a2;
            result = swift_once();
            a2 = v10;
          }

          v2 = &word_28048032E;
          break;
        case 0xELL:
        case 0x19:
          if (qword_28047A6F0 != -1)
          {
            v8 = a2;
            result = swift_once();
            a2 = v8;
          }

          v2 = &word_280480338;
          break;
        case 0xFLL:
          if (qword_28047A680 != -1)
          {
            v14 = a2;
            result = swift_once();
            a2 = v14;
          }

          v2 = &word_28048031C;
          break;
        case 0x11:
          if (qword_28047A720 != -1)
          {
            v13 = a2;
            result = swift_once();
            a2 = v13;
          }

          v2 = &word_280480344;
          break;
        case 0x1CLL:
          if (qword_28047A668 != -1)
          {
            v11 = a2;
            result = swift_once();
            a2 = v11;
          }

          v2 = &word_280480316;
          break;
        case 0x1DLL:
        case 0x1FLL:
          if (qword_28047A6C0 != -1)
          {
            v6 = a2;
            result = swift_once();
            a2 = v6;
          }

          v2 = &word_28048032C;
          break;
        default:
          goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (qword_28047A6B8 != -1)
    {
      v4 = a2;
      result = swift_once();
      a2 = v4;
    }

    v2 = &word_28048032A;
  }

  *a2 = *v2;
  return result;
}

uint64_t _s8SwiftTLS16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKF(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v7 = type metadata accessor for TLSHandshakeStateMachine(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TLSRecordHandler();
  if (*(v5 + v11[13] + 2) == 1 && (*(v5 + v11[14] + 2) & 1) != 0)
  {
    v61 = v11;
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[2];
    sub_26C0BBAA4(*a1, v13);
    sub_26C13DCA4(a1, v5, &v63);
    if (v3)
    {
      v57 = v7;
      v59 = a2;
      v15 = v14;
      v17 = *(&v63 + 1);
      v16 = v63;
      v18 = v64;
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v12;
      a1[1] = v13;
      LODWORD(v12) = v18;
      v19 = v17;
      v20 = v16;
      a1[2] = v15;
      v63 = __PAIR128__(v19, v16);
      v64 = v18;
      v60 = sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v21 = sub_26C148A9C();
      __swift_project_value_buffer(v21, qword_28047AEF0);
      sub_26C0CF018(v16, v19, v18);
      v22 = sub_26C148A7C();
      v23 = sub_26C14900C();
      sub_26C0CF030(v16, v19, v12);
      v24 = os_log_type_enabled(v22, v23);
      v62 = v19;
      if (v24)
      {
        v25 = swift_slowAlloc();
        v65 = v12;
        v12 = v25;
        v26 = swift_slowAlloc();
        v58 = v16;
        v27 = v26;
        *v12 = 138412290;
        swift_allocError();
        v28 = v62;
        *v29 = v58;
        *(v29 + 8) = v28;
        *(v29 + 16) = v65;
        sub_26C0CF018(v58, v62, v65);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v30;
        *v27 = v30;
        _os_log_impl(&dword_26C0B5000, v22, v23, "error processing network data: %@", v12, 0xCu);
        sub_26C0CF5C4(v27, &qword_28047A880, &qword_26C14A5B0);
        v31 = v27;
        v19 = v62;
        v20 = v58;
        MEMORY[0x26D69C3A0](v31, -1, -1);
        v32 = v12;
        LOBYTE(v12) = v65;
        MEMORY[0x26D69C3A0](v32, -1, -1);
      }

      if (TLSRecordHandler.handshakeStarted.getter())
      {
        *&v63 = v20;
        *(&v63 + 1) = v19;
        v64 = v12;
        sub_26C13D304(&v63, &v66);
        v33 = v66;
        v34 = HIBYTE(v66);
        if (qword_28047A650 != -1)
        {
          swift_once();
        }

        if (v33 != word_280480310 || v34 != HIBYTE(word_280480310))
        {
          v35 = v5 + v61[16];
          v36 = v12;
          v12 = *v35;
          v61 = *(v35 + 8);
          v37 = *(v35 + 16);
          v38 = v20;
          v39 = v20;
          v40 = v62;
          sub_26C0CF018(v38, v62, v36);
          v41 = v12;
          LOBYTE(v12) = v36;
          sub_26C13EE9C(v41, v61, v37);
          *v35 = v39;
          *(v35 + 8) = v40;
          v20 = v39;
          *(v35 + 16) = v36;
        }

        LOBYTE(v66) = v33;
        HIBYTE(v66) = v34;
        sub_26C13C8D4(&v66, &v63);
        v55 = v59;
        v56 = v62;
        *v59 = v20;
        v55[1] = v56;
        *(v55 + 16) = v12;
        *&v63 = v20;
        *(&v63 + 1) = v56;
        v64 = v12;
      }

      else
      {
        sub_26C0CF030(v20, v19, v12);
        sub_26C13F134(v5, v10, type metadata accessor for TLSHandshakeStateMachine);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_26C13F06C(v10, type metadata accessor for TLSHandshakeStateMachine);
        if (EnumCaseMultiPayload == 1)
        {
          v46 = " bits, needs 256.";
        }

        else
        {
          v46 = "alid Client Hello";
        }

        v47 = sub_26C148A7C();
        v48 = sub_26C14900C();

        if (os_log_type_enabled(v47, v48))
        {
          if (EnumCaseMultiPayload == 1)
          {
            v49 = 0xD000000000000041;
          }

          else
          {
            v49 = 0xD000000000000065;
          }

          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v63 = v51;
          *v50 = 136315138;
          v52 = sub_26C0E5DE8(v49, v46 | 0x8000000000000000, &v63);

          *(v50 + 4) = v52;
          _os_log_impl(&dword_26C0B5000, v47, v48, "TLS error occurred from processing network data before handshake started: %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x26D69C3A0](v51, -1, -1);
          MEMORY[0x26D69C3A0](v50, -1, -1);
        }

        else
        {
        }

        v53 = v5 + v61[16];
        sub_26C13EE9C(*v53, *(v53 + 8), *(v53 + 16));
        *v53 = xmmword_26C14F8D0;
        *(v53 + 16) = 2;
        v54 = v59;
        *v59 = xmmword_26C14F8D0;
        *(v54 + 16) = 2;
        v63 = xmmword_26C14F8D0;
        v64 = 2;
      }

      return swift_willThrowTypedImpl();
    }

    else
    {
      return sub_26C0BB9B0(v12, v13);
    }
  }

  else
  {
    v42 = (v5 + v11[5]);
    v43 = v42[2];
    result = sub_26C0BB344(*v42, v42[1]);
    *v42 = xmmword_26C14A540;
    v42[2] = 0;
  }

  return result;
}

uint64_t sub_26C13DCA4(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v94 = a3;
  v6 = v3;
  v104 = type metadata accessor for ServerHandshakeState(0);
  v9 = *(*(v104 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v104);
  v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v89 - v12;
  v102 = type metadata accessor for ServerHandshakeStateMachine(0);
  v13 = *(*(v102 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v102);
  v107 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v89 - v16;
  v103 = type metadata accessor for HandshakeState(0);
  v17 = *(*(v103 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v103);
  v97 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = &v89 - v20;
  v101 = type metadata accessor for HandshakeStateMachine(0);
  v21 = *(*(v101 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v101);
  v96 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = &v89 - v24;
  v25 = type metadata accessor for TLSHandshakeStateMachine(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v106 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v99 = &v89 - v29;
  v30 = type metadata accessor for TLSRecordHandler();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v105 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v89 - v35;
  v108 = v34;
  v37 = (a2 + *(v34 + 20));
  result = sub_26C0E0B74(a1);
  v39 = v37[1];
  if (v39 >> 60 == 15)
  {
    return result;
  }

  v100 = v25;
  v95 = v36;
  while (1)
  {
    v40 = *v37;
    v41 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v41 == 2)
      {
        v42 = *(v40 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = BYTE6(v39);
      v43 = v40 >> 32;
      if (v41)
      {
        v42 = v43;
      }
    }

    v44 = v37[2];
    v45 = __OFSUB__(v42, v44);
    v46 = v42 - v44;
    if (v45)
    {
      __break(1u);
LABEL_70:
      swift_once();
LABEL_42:
      v70 = sub_26C148A9C();
      __swift_project_value_buffer(v70, qword_28047AEF0);
      sub_26C13EFF0();
      v71 = sub_26C148A7C();
      v72 = sub_26C14900C();
      sub_26C135AA8(v5, v4, v6);
      if (!os_log_type_enabled(v71, v72))
      {
        goto LABEL_66;
      }

      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v109 = v74;
      *v73 = 136315138;
      v75 = sub_26C0DA72C(v5);
      v77 = sub_26C0E5DE8(v75, v76, &v109);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_26C0B5000, v71, v72, "got a plaintext record with type not handshake or alert: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x26D69C3A0](v74, -1, -1);
LABEL_65:
      MEMORY[0x26D69C3A0](v73, -1, -1);
      goto LABEL_66;
    }

    if (v46 < 1)
    {
      return result;
    }

    result = sub_26C13B3C0(&v109);
    if (v3)
    {
      v84 = v110;
      v85 = v94;
      *v94 = v109;
      *(v85 + 16) = v84;
      return result;
    }

    v6 = v48;
    if (v48 == -1)
    {
      return result;
    }

    v5 = result;
    v4 = v47;
    if ((v48 & 1) == 0)
    {
      if ((result - 21) >= 2u)
      {
        if (qword_28047A7A0 == -1)
        {
          goto LABEL_42;
        }

        goto LABEL_70;
      }

      v111 = v47;
      if (result == 21)
      {
        v58 = v105;
        sub_26C13F134(a2, v105, type metadata accessor for TLSRecordHandler);
        v59 = v106;
        sub_26C13F134(v58, v106, type metadata accessor for TLSHandshakeStateMachine);
        sub_26C13EFF0();
        sub_26C13F06C(v58, type metadata accessor for TLSRecordHandler);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = v107;
          sub_26C13F0CC(v59, v107, type metadata accessor for ServerHandshakeStateMachine);
          v61 = v98;
          sub_26C13F134(v60 + *(v102 + 24), v98, type metadata accessor for ServerHandshakeState);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_26C13F06C(v107, type metadata accessor for ServerHandshakeStateMachine);
            sub_26C13F06C(v61, type metadata accessor for ServerHandshakeState);
            v36 = v95;
          }

          else
          {
            v69 = *(v107 + 24);
            sub_26C13F06C(v107, type metadata accessor for ServerHandshakeStateMachine);
            sub_26C13F06C(v61, type metadata accessor for ServerHandshakeState);
            v36 = v95;
            if ((v69 & 1) == 0)
            {
LABEL_44:
              sub_26C135AA8(v5, v4, v6);
              v78 = xmmword_26C14F8E0;
              goto LABEL_67;
            }
          }
        }

        else
        {
          v62 = v59;
          v63 = v96;
          sub_26C13F0CC(v62, v96, type metadata accessor for HandshakeStateMachine);
          v64 = v97;
          sub_26C13F134(v63 + *(v101 + 24), v97, type metadata accessor for HandshakeState);
          sub_26C13F06C(v63, type metadata accessor for HandshakeStateMachine);
          LODWORD(v63) = swift_getEnumCaseMultiPayload();
          sub_26C13F06C(v64, type metadata accessor for HandshakeState);
          v36 = v95;
          if (!v63)
          {
            goto LABEL_44;
          }
        }

        sub_26C13CF9C(v4, &v109);
        sub_26C135AA8(v5, v4, v6);
        result = sub_26C135AA8(v5, v4, v6);
        goto LABEL_38;
      }

      sub_26C13EFF0();
      sub_26C13B808(&v111, &v109);
      sub_26C135AA8(v5, v4, v6);
      goto LABEL_29;
    }

    v49 = a2 + *(v108 + 24);
    v50 = sub_26C132EFC(result, &v109);
    v52 = v50;
    v111 = v50;
    if (v51 == 21)
    {
      sub_26C13CF9C(v50, &v109);

LABEL_29:
      result = sub_26C135AA8(v5, v4, v6);
      goto LABEL_38;
    }

    if (v51 != 22)
    {
      break;
    }

    sub_26C13B808(&v111, &v109);
    sub_26C135AA8(v5, v4, v6);

LABEL_38:
    v3 = 0;
LABEL_39:
    v39 = v37[1];
    if (v39 >> 60 == 15)
    {
      return result;
    }
  }

  if (v51 != 23)
  {
    v79 = v51;

    if (v79)
    {
      if (v79 == 20)
      {
        if (qword_28047A7A0 != -1)
        {
          swift_once();
        }

        v80 = sub_26C148A9C();
        __swift_project_value_buffer(v80, qword_28047AEF0);
        v71 = sub_26C148A7C();
        v81 = sub_26C14900C();
        if (os_log_type_enabled(v71, v81))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          v82 = "got an encrypted change cipher spec message";
          goto LABEL_64;
        }

        goto LABEL_66;
      }

      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v87 = sub_26C148A9C();
      __swift_project_value_buffer(v87, qword_28047AEF0);
      v71 = sub_26C148A7C();
      v81 = sub_26C14900C();
      if (!os_log_type_enabled(v71, v81))
      {
        goto LABEL_66;
      }

      v73 = swift_slowAlloc();
      *v73 = 0;
      v82 = "got an encrypted record with an unrecognized content type";
    }

    else
    {
      if (qword_28047A7A0 != -1)
      {
        swift_once();
      }

      v86 = sub_26C148A9C();
      __swift_project_value_buffer(v86, qword_28047AEF0);
      v71 = sub_26C148A7C();
      v81 = sub_26C14900C();
      if (!os_log_type_enabled(v71, v81))
      {
        goto LABEL_66;
      }

      v73 = swift_slowAlloc();
      *v73 = 0;
      v82 = "got an encrypted record with an invalid content type";
    }

LABEL_64:
    _os_log_impl(&dword_26C0B5000, v71, v81, v82, v73, 2u);
    goto LABEL_65;
  }

  v89 = 0;
  sub_26C13F134(a2, v36, type metadata accessor for TLSRecordHandler);
  v53 = v99;
  sub_26C13F134(v36, v99, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v36;
    v55 = v53;
    v56 = v92;
    sub_26C13F0CC(v55, v92, type metadata accessor for ServerHandshakeStateMachine);
    v57 = v93;
    sub_26C13F134(v56 + *(v102 + 24), v93, type metadata accessor for ServerHandshakeState);
    sub_26C13F06C(v56, type metadata accessor for ServerHandshakeStateMachine);
    LODWORD(v56) = swift_getEnumCaseMultiPayload();
    sub_26C13F06C(v57, type metadata accessor for ServerHandshakeState);
    sub_26C13F06C(v54, type metadata accessor for TLSRecordHandler);
    v36 = v54;
    if (v56 <= 6)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v65 = v91;
  sub_26C13F0CC(v53, v91, type metadata accessor for HandshakeStateMachine);
  v66 = v90;
  sub_26C13F134(v65 + *(v101 + 24), v90, type metadata accessor for HandshakeState);
  sub_26C13F06C(v65, type metadata accessor for HandshakeStateMachine);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_26C13F06C(v66, type metadata accessor for HandshakeState);
  v36 = v95;
  sub_26C13F06C(v95, type metadata accessor for TLSRecordHandler);
  if (EnumCaseMultiPayload >= 6)
  {
LABEL_33:
    if (v52[2].isa)
    {
      v68 = a2 + *(v108 + 44);
      sub_26C14888C();
    }

    sub_26C135AA8(v5, v4, v6);

    v3 = v89;
    goto LABEL_39;
  }

LABEL_51:

  if (qword_28047A7A0 != -1)
  {
    swift_once();
  }

  v83 = sub_26C148A9C();
  __swift_project_value_buffer(v83, qword_28047AEF0);
  v71 = sub_26C148A7C();
  v81 = sub_26C14900C();
  if (os_log_type_enabled(v71, v81))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    v82 = "got application data before handshake complete";
    goto LABEL_64;
  }

LABEL_66:

  v78 = xmmword_26C14A560;
LABEL_67:
  v88 = v94;
  *v94 = v78;
  *(v88 + 16) = 2;
  v109 = v78;
  v110 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return sub_26C135AA8(v5, v4, v6);
}

_BYTE *sub_26C13EA50@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26C13ECD0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26C13ED88(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26C13EE04(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26C13EAE4(uint64_t a1, unint64_t a2, char **a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = sub_26C12401C(v9, v4, a3);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26C13EC0C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C13EC0C(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = sub_26C1487BC();
  v8 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_26C1487DC();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = (v12 + v8);
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_26C12401C(v8, v14, a4);
}

unint64_t sub_26C13ECB0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C13ECD0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C13ED88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26C1487FC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26C1487AC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26C14885C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26C13EE04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26C1487FC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26C1487AC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26C13EE88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26C0CF018(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_26C13EE9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26C0CF030(a1, a2, a3);
  }

  return a1;
}

void sub_26C13EED8()
{
  type metadata accessor for TLSHandshakeStateMachine(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TLSRecordProtector();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD04();
      if (v2 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_28047AF18);
        if (v3 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_28047AF20);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_26C13EFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C13F06C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C13F0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C13F134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C13F1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C13F218(uint64_t a1, uint64_t a2)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  while (v3)
  {
    v7 = *v4++;
    v14 = bswap32(v7) >> 16;
    v15[3] = v5;
    v15[4] = v6;
    v15[0] = &v14;
    v15[1] = v15;
    v8 = __swift_project_boxed_opaque_existential_1(v15, v5);
    v10 = *v8;
    v9 = v8[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    --v3;
    v11 = __OFADD__(a1, 2);
    a1 += 2;
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

unint64_t sub_26C13F30C(uint64_t a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v8 = 0;
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v16 = 0;
  v17[3] = MEMORY[0x277D838B0];
  v17[4] = MEMORY[0x277CC9C18];
  v17[0] = &v16;
  v17[1] = v17;
  v9 = __swift_project_boxed_opaque_existential_1(v17, MEMORY[0x277D838B0]);
  v11 = *v9;
  v10 = v9[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = sub_26C13F218(0, a1);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v13 = v12;
  if (v12 >> 16)
  {
    goto LABEL_11;
  }

  sub_26C10064C(v12, v8);
  v14 = *MEMORY[0x277D85DE8];
  return v13 + 2;
}

unint64_t sub_26C13F41C()
{
  result = qword_28047AF38;
  if (!qword_28047AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF38);
  }

  return result;
}

unint64_t sub_26C13F480(uint64_t *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  if (v2 >> 60 != 15)
  {
    v4 = *v1;
    v5 = v1[1];
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v7 = *(v4 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v6)
    {
      v7 = v4 >> 32;
    }

    else
    {
      v7 = BYTE6(v5);
    }

    v8 = *a1;
    v9 = a1[2];
    v37 = 0;
    v10 = MEMORY[0x277D838B0];
    v11 = MEMORY[0x277CC9C18];
    v40 = MEMORY[0x277D838B0];
    v41 = MEMORY[0x277CC9C18];
    v38 = &v37;
    v39 = &v38;
    v12 = __swift_project_boxed_opaque_existential_1(&v38, MEMORY[0x277D838B0]);
    v14 = *v12;
    v13 = v12[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    LOBYTE(v37) = 0;
    v40 = v10;
    v41 = v11;
    v38 = &v37;
    v39 = (&v37 + 1);
    v15 = __swift_project_boxed_opaque_existential_1(&v38, v10);
    v17 = *v15;
    v16 = v15[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v18 = *v1;
    v19 = v1[1];
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v21 = *(v18 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else if (v20)
    {
      v21 = v18 >> 32;
    }

    else
    {
      v21 = BYTE6(v19);
    }

    v37 = 0;
    v40 = v10;
    v41 = v11;
    v38 = &v37;
    v39 = &v38;
    v22 = __swift_project_boxed_opaque_existential_1(&v38, v10);
    v24 = *v22;
    v23 = v22[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v25 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v25 != 2)
      {
        v27 = 0;
        v26 = 0;
        if (v9 > 0)
        {
          goto LABEL_44;
        }

        goto LABEL_27;
      }

      v26 = *(v8 + 16);
      v27 = *(v8 + 24);
    }

    else
    {
      if (!v25)
      {
        v26 = 0;
        v27 = BYTE6(v2);
        if (BYTE6(v2) < v9)
        {
          goto LABEL_44;
        }

LABEL_27:
        if (v27 >= v26)
        {
          v28 = sub_26C14889C();
          v30 = v29;
          sub_26C1488CC();
          v31 = v30;
          v32 = v30 >> 62;
          if ((v30 >> 62) > 1)
          {
            if (v32 != 2)
            {
              sub_26C0BB9B0(v28, v30);
              sub_26C0BB344(v8, v2);
              sub_26C10064C(0, v21);
              v2 = 0;
              v35 = 3;
              goto LABEL_42;
            }

            v34 = *(v28 + 16);
            v33 = *(v28 + 24);
            sub_26C0BB9B0(v28, v31);
            sub_26C0BB344(v8, v2);
            v2 = v33 - v34;
            if (!__OFSUB__(v33, v34))
            {
              goto LABEL_37;
            }

            __break(1u);
          }

          else if (!v32)
          {
            sub_26C0BB9B0(v28, v30);
            sub_26C0BB344(v8, v2);
            v2 = BYTE6(v30);
            sub_26C10064C(BYTE6(v30), v21);
LABEL_40:
            v35 = v2 + 3;
LABEL_42:
            sub_26C10064C(v35, v7);
            result = v2 + 5;
            goto LABEL_43;
          }

          sub_26C0BB9B0(v28, v31);
          sub_26C0BB344(v8, v2);
          if (__OFSUB__(HIDWORD(v28), v28))
          {
            goto LABEL_48;
          }

          v2 = HIDWORD(v28) - v28;
LABEL_37:
          if ((v2 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (v2 >> 16)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          sub_26C10064C(v2, v21);
          if (v2 > 0xFFFC)
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
          }

          goto LABEL_40;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v26 = v8;
      v27 = v8 >> 32;
    }

    sub_26C10B340(v8, v2);
    if (v27 < v9)
    {
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  result = 0;
LABEL_43:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *sub_26C13F7CC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  if (v5 == 8)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = v3[2];
    v12 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v14 = *(v9 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v13 = BYTE6(v10);
      v14 = v9 >> 32;
      if (!v12)
      {
        v14 = v13;
      }
    }

    if (!__OFSUB__(v14, v11))
    {
      if (v14 == v11)
      {
        *a3 = xmmword_26C14A540;
        *(a3 + 16) = 0;
        return result;
      }

      *a2 = xmmword_26C14A8F0;
      *(a2 + 16) = 2;
      *v18 = xmmword_26C14A8F0;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    if (v5 != 1)
    {
      *a2 = v5;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *v18 = v5;
      v18[16] = 0;
LABEL_20:
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    result = sub_26C0DE464(v3, &v16, v18);
    if (v4)
    {
      v8 = v17;
      *a2 = v16;
      *(a2 + 16) = v8;
      return result;
    }

    v15 = *&v18[8];
    if (*&v18[8] >> 60 == 15)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      *v18 = 0uLL;
LABEL_19:
      v18[16] = 2;
      goto LABEL_20;
    }

    *a3 = *v18;
    *(a3 + 8) = v15;
  }

  return result;
}

uint64_t sub_26C13F918()
{
  v1 = v0[1];
  if (v1 >> 60 == 15)
  {
    return MEMORY[0x26D69BEF0](1);
  }

  v3 = *v0;
  v4 = v0[2];
  result = MEMORY[0x26D69BEF0](0);
  v5 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v3 + 24);
    }
  }

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v1);
  }

  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();

    return sub_26C0BB9B0(v7, v9);
  }

  return result;
}

uint64_t sub_26C13FA08()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_26C1491AC();
  sub_26C13F918();
  return sub_26C14920C();
}

uint64_t sub_26C13FA60()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_26C1491AC();
  sub_26C13F918();
  return sub_26C14920C();
}

unint64_t sub_26C13FAB8()
{
  result = qword_28047AF40;
  if (!qword_28047AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF40);
  }

  return result;
}

unint64_t sub_26C13FB10()
{
  result = qword_28047AF48;
  if (!qword_28047AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF48);
  }

  return result;
}

uint64_t sub_26C13FB64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  v5 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v6 = 0xF000000000000000;
  while (1)
  {
    v47 = v6;
    v46 = v4;
    result = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v11 = *(result + 24);
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v10)
    {
      v11 = result >> 32;
    }

    else
    {
      v11 = BYTE6(v8);
    }

    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (v12)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
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
    }

    if (v13 < 1)
    {
      break;
    }

    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_93;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        if (*(result + 24) < v14)
        {
          goto LABEL_89;
        }
      }

      else if (v14 > 0)
      {
        goto LABEL_89;
      }
    }

    else if (v10)
    {
      if (result >> 32 < v14)
      {
        goto LABEL_89;
      }
    }

    else if (BYTE6(v8) < v14)
    {
      goto LABEL_89;
    }

    v48 = *a1;
    v49 = a1[1];
    if (v14 < v9)
    {
      goto LABEL_94;
    }

    sub_26C0BBAA4(result, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v48, v49);
    a1[2] = v14;
    v15 = *a1;
    v16 = a1[1];
    v17 = v14 + 2;
    if (__OFADD__(v14, 2))
    {
      goto LABEL_95;
    }

    v19 = v16 >> 62;
    if ((v16 >> 62) <= 1)
    {
      if (v19)
      {
        v20 = v15 >> 32;
      }

      else
      {
        v20 = BYTE6(v16);
      }

LABEL_33:
      if (v20 < v17)
      {
        goto LABEL_87;
      }

      goto LABEL_36;
    }

    if (v19 == 2)
    {
      v20 = *(v15 + 24);
      goto LABEL_33;
    }

    if (v17 >= 1)
    {
LABEL_87:
      sub_26C0BBAA4(v15, v16);
      v23 = *a1;
      v24 = a1[1];
LABEL_88:
      sub_26C0BB9B0(v23, v24);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v14;
LABEL_89:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v39 = v46;
      v40 = v6;
      goto LABEL_90;
    }

LABEL_36:
    if (v17 < v14)
    {
      goto LABEL_96;
    }

    sub_26C0BBAA4(v15, v16);
    sub_26C0BBAA4(v15, v16);
    sub_26C14878C();
    sub_26C0BB9B0(v15, v16);
    v21 = bswap32(0) >> 16;
    a1[2] = v17;
    v22 = v17 + v21;
    if (__OFADD__(v17, v21))
    {
      goto LABEL_97;
    }

    v23 = *a1;
    v24 = a1[1];
    v25 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v25)
      {
        v26 = v23 >> 32;
      }

      else
      {
        v26 = BYTE6(v24);
      }

LABEL_44:
      if (v26 < v22)
      {
        goto LABEL_88;
      }

      goto LABEL_47;
    }

    if (v25 == 2)
    {
      v26 = *(v23 + 24);
      goto LABEL_44;
    }

    if (v22 > 0)
    {
      goto LABEL_88;
    }

LABEL_47:
    if (v22 < v17)
    {
      goto LABEL_98;
    }

    v27 = sub_26C14889C();
    v29 = v27;
    a1[2] = v22;
    v44 = v28;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v27 = *(v27 + 16);
        v31 = *(v29 + 24);
      }

      else
      {
        v27 = 0;
        v31 = 0;
      }
    }

    else if (v30)
    {
      v27 = v27;
      v31 = v29 >> 32;
    }

    else
    {
      v27 = 0;
      v31 = BYTE6(v28);
    }

    v12 = __OFSUB__(v31, v27);
    v32 = v31 - v27;
    if (v12)
    {
      goto LABEL_99;
    }

    v33 = v27 + v32;
    if (__OFADD__(v27, v32))
    {
      goto LABEL_100;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        if (v33 > 0)
        {
          goto LABEL_104;
        }

        goto LABEL_66;
      }

      v34 = *(v29 + 24);
    }

    else if (v30)
    {
      v34 = v29 >> 32;
    }

    else
    {
      v34 = BYTE6(v28);
    }

    if (v34 < v33)
    {
      goto LABEL_103;
    }

LABEL_66:
    if (v33 < v27)
    {
      goto LABEL_101;
    }

    v42 = v29;
    v35 = sub_26C14889C();
    v4 = v35;
    v6 = v36;
    v5 = 0;
    v37 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v5 = *(v35 + 16);
      }
    }

    else if (v37)
    {
      v5 = v35;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v38 = *(v42 + 24);
      }

      else
      {
        v38 = 0;
      }
    }

    else if (v30)
    {
      v38 = v42 >> 32;
    }

    else
    {
      v38 = BYTE6(v44);
    }

    if (__OFSUB__(v38, v33))
    {
      goto LABEL_102;
    }

    if (v38 != v33)
    {
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v4, v6);
      sub_26C0BB9B0(v42, v44);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v14;
      swift_willThrowTypedImpl();
      result = sub_26C0BB344(v46, v47);
      *a2 = xmmword_26C149860;
      *(a2 + 16) = 2;
      goto LABEL_91;
    }

    sub_26C0BB9B0(v42, v44);
    sub_26C0BB9B0(v15, v16);
    if (v47 >> 60 != 15)
    {
      *a2 = xmmword_26C14A8F0;
      *(a2 + 16) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v4, v6);
      v39 = v46;
      v40 = v47;
LABEL_90:
      result = sub_26C0BB344(v39, v40);
      goto LABEL_91;
    }
  }

  if (v6 >> 60 == 15)
  {
    *a2 = xmmword_26C14A8F0;
    *(a2 + 16) = 2;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
  }

  else
  {
    *a3 = v4;
    a3[1] = v6;
    a3[2] = v5;
  }

LABEL_91:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C140410(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (v2 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      v13 = *a1;
      v14 = v2;
      v15 = v4;
      v10 = v6;
      v11 = v5;
      v12 = v7;
      sub_26C10B340(v6, v5);
      sub_26C10B340(v3, v2);
      sub_26C10B340(v3, v2);
      sub_26C10B340(v6, v5);
      v8 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v13, &v10);
      sub_26C0BB344(v3, v2);
      sub_26C0BB344(v6, v5);
      sub_26C0BB9B0(v10, v11);
      sub_26C0BB9B0(v13, v14);
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_26C10B340(*a1, v2);
    sub_26C10B340(v6, v5);
    sub_26C0BB344(v3, v2);
    sub_26C0BB344(v6, v5);
    v8 = 0;
    return v8 & 1;
  }

  sub_26C0BB344(*a1, v2);
  sub_26C0BB344(v6, v5);
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_26C140594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C1405E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_26C14063C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_26C140684(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 16) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26C1406CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = xmmword_26C14FC00;
    }
  }

  return result;
}

uint64_t sub_26C14075C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_26C14908C();

  v5 = NamedGroup.description.getter();
  MEMORY[0x26D69BC90](v5);

  result = MEMORY[0x26D69BC90](0x63784579656B202CLL, 0xEF203A65676E6168);
  v7 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v2 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v3);
    if (v7)
    {
      v8 = v2 >> 32;
    }
  }

  if (__OFSUB__(v8, v4))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_26C14911C();
    MEMORY[0x26D69BC90](v9);

    MEMORY[0x26D69BC90](0x29736574796220, 0xE700000000000000);
    return 0xD000000000000015;
  }

  return result;
}

uint64_t sub_26C1408A8@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  if (v8 == 1)
  {
    v12 = *v4;
    v11 = v4[1];
    v13 = v4[2];
    sub_26C0BBAA4(*v4, v11);
    v14 = sub_26C1365D4();
    if ((v14 & 0x10000) == 0)
    {
      sub_26C0DE248(v14, &v33);
      if (*(&v33 + 1) >> 60 != 15)
      {
        v35 = v33;
        v36 = v34;
        sub_26C1410B4(&v35, &v32);
        if (v5)
        {
          v17 = *(&v33 + 1);
          v18 = v33;
          v19 = v34;
          v21 = *(&v35 + 1);
          v20 = v35;
        }

        else
        {
          v25 = *(&v35 + 1) >> 62;
          if ((*(&v35 + 1) >> 62) > 1)
          {
            if (v25 == 2)
            {
              v26 = *(v35 + 24);
            }

            else
            {
              v26 = 0;
            }
          }

          else if (v25)
          {
            v26 = v35 >> 32;
          }

          else
          {
            v26 = BYTE14(v35);
          }

          if (__OFSUB__(v26, v36))
          {
            __break(1u);
            goto LABEL_31;
          }

          if (v26 == v36)
          {
            sub_26C0BB9B0(v35, *(&v35 + 1));
            result = sub_26C0BB9B0(v12, v11);
            *a4 = v32;
            a4[1] = 0;
            a4[2] = 0;
            a4[3] = 0;
            return result;
          }

          v33 = xmmword_26C149860;
          v19 = 2;
          LOBYTE(v34) = 2;
          v28 = *(&v35 + 1);
          v27 = v35;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();

          v21 = v28;
          v20 = v27;
          v17 = 0;
          v18 = 1;
        }

        sub_26C0BB9B0(v20, v21);
        sub_26C0BB9B0(*v4, v4[1]);
        *v4 = v12;
        v4[1] = v11;
        v4[2] = v13;
        *&v35 = v18;
        *(&v35 + 1) = v17;
        LOBYTE(v36) = v19;
        sub_26C0BBAF8();
        result = swift_willThrowTypedImpl();
        *a3 = v18;
        *(a3 + 8) = v17;
        *(a3 + 16) = v19;
        return result;
      }
    }

    sub_26C0BB9B0(*v4, v4[1]);
    *v4 = v12;
    v4[1] = v11;
    v4[2] = v13;
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    v35 = 0uLL;
    LOBYTE(v36) = 2;
    goto LABEL_14;
  }

  if (v8 != 2)
  {
    v15 = v8 | 0x330000;
    *a3 = v15;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v35 = v15;
    LOBYTE(v36) = 0;
LABEL_14:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  result = sub_26C1365D4();
  if (a2)
  {
    if ((result & 0x10000) == 0)
    {
      *a4 = result;
      *(a4 + 1) = xmmword_26C14FC10;
      a4[3] = 0;
      return result;
    }

    goto LABEL_13;
  }

  if ((result & 0x10000) != 0)
  {
    goto LABEL_13;
  }

  v16 = result;
  result = sub_26C0E0978(v4, &v33, &v35);
  if (v5)
  {
LABEL_31:
    v29 = v33;
    v30 = v34;
    sub_26C0BBAF8();
    swift_allocError();
    *v31 = v29;
    *(v31 + 16) = v30;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (*(&v35 + 1) >> 60 == 15)
  {
    goto LABEL_13;
  }

  v22 = v36;
  v23 = v35;
  v24 = *(&v35 + 1) | 0x1000000000000000;
  *a4 = v16;
  a4[1] = v23;
  a4[2] = v24;
  a4[3] = v22;
  return result;
}

uint64_t sub_26C140B9C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[2];
  v6 = (v5 >> 60) & 3;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = v2[1];
      v8 = v2[3];
      MEMORY[0x26D69BEF0](1);
      result = sub_26C1491DC();
      v10 = v5 >> 62;
      if ((v5 >> 62) > 1)
      {
        if (v10 == 2)
        {
          v11 = *(v7 + 24);
        }

        else
        {
          v11 = 0;
        }
      }

      else if (v10)
      {
        v11 = v7 >> 32;
      }

      else
      {
        v11 = BYTE6(v5);
      }

      if (v11 < v8)
      {
        __break(1u);
      }

      else
      {
        v12 = sub_26C14889C();
        v14 = v13;
        sub_26C1488BC();

        return sub_26C0BB9B0(v12, v14);
      }
    }

    else
    {
      MEMORY[0x26D69BEF0](2);
      return sub_26C1491DC();
    }
  }

  else
  {
    MEMORY[0x26D69BEF0](0);

    return sub_26C12B45C(a1, v4);
  }

  return result;
}

uint64_t sub_26C140CD8()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_26C1491AC();
  sub_26C140B9C(v3);
  return sub_26C14920C();
}

uint64_t sub_26C140D28()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_26C1491AC();
  sub_26C140B9C(v3);
  return sub_26C14920C();
}

unint64_t sub_26C140D7C()
{
  result = qword_28047AF50;
  if (!qword_28047AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF50);
  }

  return result;
}

unint64_t sub_26C140DD4()
{
  result = qword_28047AF58;
  if (!qword_28047AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF58);
  }

  return result;
}

uint64_t sub_26C140E28(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v28 = bswap32(*a1) >> 16;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v31 = MEMORY[0x277D838B0];
  v32 = MEMORY[0x277CC9C18];
  v29 = &v28;
  v30 = &v29;
  v6 = __swift_project_boxed_opaque_existential_1(&v29, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v29);
  v9 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(v2 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = BYTE6(v1);
    if (v9)
    {
      v10 = v2 >> 32;
    }
  }

  v11 = __OFSUB__(v10, v3);
  v12 = v10 - v3;
  if (v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v12 >> 16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v28 = bswap32(v12) >> 16;
  v31 = v4;
  v32 = v5;
  v29 = &v28;
  v30 = &v29;
  v13 = __swift_project_boxed_opaque_existential_1(&v29, v4);
  v15 = *v13;
  v14 = v13[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v29);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v16 = 0;
      v17 = BYTE6(v1);
      if (BYTE6(v1) < v3)
      {
        goto LABEL_37;
      }

      goto LABEL_21;
    }

    v16 = v2;
    v17 = v2 >> 32;
LABEL_18:
    sub_26C0BBAA4(v2, v1);
    if (v17 < v3)
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  if (v9 == 2)
  {
    v16 = *(v2 + 16);
    v17 = *(v2 + 24);
    goto LABEL_18;
  }

  v17 = 0;
  v16 = 0;
  if (v3 > 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_21:
  if (v17 < v16)
  {
    goto LABEL_37;
  }

  v18 = sub_26C14889C();
  v20 = v19;
  sub_26C1488CC();
  v21 = v20;
  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v22)
    {
      sub_26C0BB9B0(v18, v20);
      sub_26C0BB9B0(v2, v1);
      v23 = BYTE6(v20);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v22 != 2)
  {
    sub_26C0BB9B0(v18, v20);
    sub_26C0BB9B0(v2, v1);
    v23 = 0;
    goto LABEL_32;
  }

  v25 = *(v18 + 16);
  v24 = *(v18 + 24);
  sub_26C0BB9B0(v18, v21);
  sub_26C0BB9B0(v2, v1);
  v23 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_29:
    sub_26C0BB9B0(v18, v21);
    sub_26C0BB9B0(v2, v1);
    LODWORD(v23) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      goto LABEL_39;
    }

    v23 = v23;
  }

LABEL_32:
  result = v23 + 4;
  if (__OFADD__(v23, 4))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C1410B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v47 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    v10 = v5 >> 32;
    if (!v8)
    {
      v10 = v9;
    }
  }

  v11 = v10 - v7;
  if (__OFSUB__(v10, v7))
  {
    goto LABEL_35;
  }

  if (v11 >= 0)
  {
    v12 = v10 - v7;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = sub_26C0CE490(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);
  v14 = a1[1];
  v38 = *a1;
  v15 = a1[2];
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  v17 = result;
  v18 = v14 >> 62;
  v39 = BYTE6(v14);
  while (1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (*(v38 + 24) < v16)
        {
          goto LABEL_32;
        }
      }

      else if (v16 >= 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v19 = v39;
      if (v18)
      {
        v19 = v38 >> 32;
      }

      if (v19 < v16)
      {
        goto LABEL_32;
      }
    }

    v20 = *a1;
    v21 = a1[1];
    v44 = *a1;
    v45 = v21;
    if (v16 < v15)
    {
      goto LABEL_34;
    }

    v40 = v17;
    v41 = v15;
    v42 = v16;
    sub_26C0BBAA4(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v44, v45);
    a1[2] = v16;
    v23 = *a1;
    v22 = a1[1];
    sub_26C0BBAA4(*a1, v22);
    sub_26C0E09A8(a1, &v41, &v44);
    if (v3)
    {
      break;
    }

    v24 = v45;
    if (v45 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0BB344(v44, v24);
      *a1 = v23;
      a1[1] = v22;
      a1[2] = v16;
      v17 = v40;
LABEL_32:
      *a2 = v17;
      v31 = *MEMORY[0x277D85DE8];
      return result;
    }

    v25 = v18;
    result = sub_26C0BB9B0(v23, v22);
    v26 = v44;
    v27 = v46;
    v17 = v40;
    v29 = *(v40 + 16);
    v28 = *(v40 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_26C0CE490((v28 > 1), v29 + 1, 1, v40);
      v17 = result;
    }

    *(v17 + 16) = v29 + 1;
    v30 = v17 + 32 * v29;
    *(v30 + 32) = bswap32(0) >> 16;
    *(v30 + 40) = v26;
    *(v30 + 48) = v24;
    *(v30 + 56) = v27;
    v15 = a1[2];
    v16 = v15 + 2;
    v18 = v25;
    v3 = 0;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_33;
    }
  }

  v32 = a1;
  sub_26C0BB9B0(*a1, a1[1]);
  v33 = v41;
  v34 = v42;
  v35 = v43;
  *v32 = v23;
  v32[1] = v22;
  v32[2] = v16;
  v44 = v33;
  v45 = v34;
  LOBYTE(v46) = v35;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v36 = v33;
  *(v36 + 8) = v34;
  *(v36 + 16) = v35;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BOOL sub_26C141408(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = (v5 >> 60) & 3;
  if (!v10)
  {
    if ((v9 & 0x3000000000000000) == 0)
    {
      sub_26C0FF158(*a2, a2[1], v9);
      sub_26C0FF158(v3, v2, v5);
      v18 = sub_26C0BE8D4(v3, v6);
      sub_26C1416C8(v3, v2, v5);
      sub_26C1416C8(v6, v7, v9);
      return v18 & 1;
    }

    v13 = *a1;

    goto LABEL_12;
  }

  if (v10 != 1)
  {
    if ((v9 & 0x3000000000000000) == 0x2000000000000000)
    {
      v14 = *a1;
      sub_26C1416C8(*a1, v2, v5);
      sub_26C1416C8(v6, v7, v9);
      return v14 == v6;
    }

    goto LABEL_12;
  }

  if ((v9 & 0x3000000000000000) != 0x1000000000000000)
  {
    sub_26C0BBAA4(a1[1], v5 & 0xCFFFFFFFFFFFFFFFLL);
LABEL_12:
    v15 = v6;
    v16 = v7;
    v17 = v9;
    goto LABEL_13;
  }

  if (*a1 == v6)
  {
    v22 = a1[1];
    v23 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v24 = v4;
    v19 = v7;
    v20 = v9 & 0xCFFFFFFFFFFFFFFFLL;
    v21 = v8;
    sub_26C0FF158(v6, v7, v9);
    sub_26C0FF158(v3, v2, v5);
    sub_26C0FF158(v6, v7, v9);
    sub_26C0FF158(v3, v2, v5);
    sub_26C0FF158(v6, v7, v9);
    sub_26C0FF158(v3, v2, v5);
    v11 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v22, &v19);
    sub_26C0BB9B0(v19, v20);
    sub_26C0BB9B0(v22, v23);
    sub_26C1416C8(v3, v2, v5);
    sub_26C1416C8(v6, v7, v9);
    sub_26C1416C8(v6, v7, v9);
    sub_26C1416C8(v3, v2, v5);
    return (v11 & 1) != 0;
  }

  sub_26C0FF158(v6, v7, v9);
  v15 = v3;
  v16 = v2;
  v17 = v5;
LABEL_13:
  sub_26C0FF158(v15, v16, v17);
  sub_26C1416C8(v3, v2, v5);
  sub_26C1416C8(v6, v7, v9);
  return 0;
}

uint64_t sub_26C1416C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    return sub_26C0BB9B0(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  if (!v3)
  {
  }

  return result;
}

unint64_t sub_26C1416EC(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v23 = 0;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  v26 = MEMORY[0x277D838B0];
  v27 = MEMORY[0x277CC9C18];
  v24 = &v23;
  v25 = &v24;
  v11 = __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D838B0]);
  v13 = *v11;
  v12 = v11[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 32;
    do
    {
      v17 = *(v16 + v15++);
      v23 = v17;
      v26 = v9;
      v27 = v10;
      v24 = &v23;
      v25 = &v24;
      v18 = __swift_project_boxed_opaque_existential_1(&v24, v9);
      v20 = *v18;
      v19 = v18[1];
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    while (v14 != v15);
    if (v14 > 0xFF)
    {
      __break(1u);
    }
  }

  sub_26C100778(v14, v8);
  v21 = *MEMORY[0x277D85DE8];
  return v14 + 1;
}

uint64_t sub_26C141844(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  if (v5 != 1)
  {
    v14 = v5 | 0x2D0000;
    *a2 = v14;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v16 = v14;
    v17 = 0;
    v18 = 0;
LABEL_5:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  sub_26C0BBAA4(*v2, v6);
  v9 = sub_26C0DFC24(v2, &v16);
  if (v3)
  {
    sub_26C0BB9B0(*v2, v2[1]);
    v10 = v16;
    v11 = v17;
    v12 = v18;
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    return result;
  }

  if (!v9)
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v16 = 0;
    v17 = 0;
    v18 = 2;
    goto LABEL_5;
  }

  v15 = v9;
  sub_26C0BB9B0(v7, v6);
  return v15;
}

unint64_t sub_26C141990()
{
  result = qword_28047AF60;
  if (!qword_28047AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF60);
  }

  return result;
}

unint64_t sub_26C141A08()
{
  result = qword_28047AF68;
  if (!qword_28047AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF68);
  }

  return result;
}

uint64_t ExtensionType.description.getter()
{
  v1 = *v0;
  if (v1 > 0x29)
  {
    if (*v0 <= 0x32u)
    {
      switch(v1)
      {
        case '*':
          return 0x6144796C7261652ELL;
        case '+':
          return 0xD000000000000012;
        case '-':
          return 0xD000000000000015;
      }

      goto LABEL_32;
    }

    if (*v0 > 0x39u)
    {
      if (v1 == 58)
      {
        return 0x5274656B6369742ELL;
      }

      if (v1 == 35387)
      {
        return 0x656B61702ELL;
      }

      goto LABEL_32;
    }

    if (v1 != 51)
    {
      if (v1 == 57)
      {
        return 0xD000000000000018;
      }

      goto LABEL_32;
    }

    v3 = 2036689710;
    return v3 | 0x7261685300000000;
  }

  if (*v0 <= 0xFu)
  {
    if (!*v0)
    {
      return 0x4E7265767265732ELL;
    }

    if (v1 == 10)
    {
      return 0xD000000000000010;
    }

    if (v1 == 13)
    {
      return 0xD000000000000014;
    }

    goto LABEL_32;
  }

  switch(v1)
  {
    case 0x10u:
      return 0xD000000000000024;
    case 0x14u:
      return 0xD000000000000016;
    case 0x29u:
      v3 = 1701998638;
      return v3 | 0x7261685300000000;
  }

LABEL_32:
  sub_26C14908C();

  v4 = sub_26C14911C();
  MEMORY[0x26D69BC90](v4);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_26C141D4C()
{
  result = qword_28047AF70;
  if (!qword_28047AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF70);
  }

  return result;
}

uint64_t sub_26C141DB4()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AF78);
  __swift_project_value_buffer(v0, qword_28047AF78);
  return sub_26C148A8C();
}

uint64_t SwiftTLSError.hashValue.getter()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v1);
  return sub_26C14920C();
}

uint64_t SwiftTLSOptions.EncryptionLevel.debugDescription.getter(unsigned __int8 a1)
{
  v1 = 0x6C616974696E69;
  v2 = 0x6B616873646E6168;
  if (a1 != 2)
  {
    v2 = 0x746163696C707061;
  }

  if (a1)
  {
    v1 = 0x616420796C726165;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t SwiftTLSOptions.EncryptionLevel.hashValue.getter(unsigned __int8 a1)
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](a1);
  return sub_26C14920C();
}

uint64_t sub_26C141FCC()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v1);
  return sub_26C14920C();
}

uint64_t sub_26C142014()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v1);
  return sub_26C14920C();
}

uint64_t sub_26C142058()
{
  v1 = 0x6C616974696E69;
  v2 = 0x6B616873646E6168;
  if (*v0 != 2)
  {
    v2 = 0x746163696C707061;
  }

  if (*v0)
  {
    v1 = 0x616420796C726165;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t SwiftTLSOptions.serverName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SwiftTLSOptions.serverName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SwiftTLSOptions.quicTransportParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SwiftTLSOptions.applicationProtocols.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SwiftTLSOptions.serverRawPublicKeyCertificates.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t SwiftTLSOptions.serverRawPublicKeyP256PublicKeys.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t SwiftTLSOptions.sessionState.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

SwiftTLS::SwiftTLSOptions::KeyExchangeGroup_optional __swiftcall SwiftTLSOptions.KeyExchangeGroup.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue > 0x1Cu)
  {
    if (rawValue == 4588)
    {
      *v1 = 3;
      return rawValue;
    }

    if (rawValue == 29)
    {
      *v1 = 2;
      return rawValue;
    }

LABEL_8:
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 23)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 24)
  {
    goto LABEL_8;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_26C142464()
{
  v1 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

uint64_t sub_26C142504()
{
  v1 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

uint64_t SwiftTLSOptions.serverRawPrivateKey.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t SwiftTLSOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 66) = 1;
  *(a1 + 72) = 0;
  v2 = *(type metadata accessor for SwiftTLSOptions(0) + 60);
  v3 = sub_26C148D8C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_26C1427A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_26C142808()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_26C142840(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_26C1428E4()
{
  v1 = *(v0 + 40);
  if (v1 > 0xFB)
  {
    return 0;
  }

  if (v1 != 2)
  {
    return 4294957438;
  }

  v3 = *(v0 + 24);
  v4 = v3 - 3;
  if ((v3 - 3) > 9 || ((0x21Bu >> v4) & 1) == 0)
  {
    return 4294957438;
  }

  v5 = dword_26C15053C[v4];
  sub_26C142968(v3, *(v0 + 32), 2);
  return v5;
}

uint64_t sub_26C142968(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    JUMPOUT(0x26D69C260);
  }

  return sub_26C0CF018(a1, a2, a3);
}

uint64_t sub_26C142980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C1429FC(uint64_t *a1)
{
  v3 = type metadata accessor for EncryptionLevel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = *a1;
  swift_beginAccess();
  sub_26C0CF314(v1 + v18, v17, &qword_28047A998, &qword_26C14A860);
  sub_26C142980(v17, v15);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_26C0CF5C4(v15, &qword_28047A998, &qword_26C14A860);
    return 0;
  }

  else
  {
    sub_26C148638(v15, v10, type metadata accessor for EncryptionLevel);
    sub_26C148638(v10, v8, type metadata accessor for EncryptionLevel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = sub_26C148BDC();
    (*(*(v21 - 8) + 8))(v8, v21);
    return (EnumCaseMultiPayload + 1);
  }
}

char *sub_26C142C50@<X0>(char *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = MEMORY[0x277D84F90];
LABEL_7:
    *a3 = v5;
    return result;
  }

  v6 = a3;
  result = sub_26C148520(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C142CFC(uint64_t *a1)
{
  v3 = sub_26C148BDC();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = *a1;
  swift_beginAccess();
  sub_26C0CF314(v1 + v21, v20, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF314(v20, v18, &qword_28047A998, &qword_26C14A860);
  if ((*(v7 + 48))(v18, 1, v6) == 1)
  {
    sub_26C0CF5C4(v20, &qword_28047A998, &qword_26C14A860);
    sub_26C0CF5C4(v18, &qword_28047A998, &qword_26C14A860);
    return 0;
  }

  else
  {
    sub_26C148638(v18, v13, type metadata accessor for EncryptionLevel);
    sub_26C1486A0(v13, v11, type metadata accessor for EncryptionLevel);
    v23 = v26;
    v24 = v27;
    v25 = v28;
    (*(v27 + 32))(v26, v11, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C148B8C();
    (*(v24 + 8))(v23, v25);
    sub_26C148708(v13, type metadata accessor for EncryptionLevel);
    sub_26C0CF5C4(v20, &qword_28047A998, &qword_26C14A860);
    return v29;
  }
}

uint64_t static SwiftTLSHandshaker.createClientHandshake()()
{
  v0 = type metadata accessor for SwiftTLSClientHandshaker(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  v5 = type metadata accessor for HandshakeStateMachine(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = MEMORY[0x277D84F90];
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = v6;
  *(v3 + 40) = -4;
  v7 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  v8 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
  v10 = type metadata accessor for EncryptionLevel(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v3 + v9, 1, 1, v10);
  v11(v3 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, 1, 1, v10);
  return v3;
}

uint64_t static SwiftTLSHandshaker.createServerHandshake()()
{
  v0 = type metadata accessor for SwiftTLSServerHandshaker(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_clientAppSecret;
  v7 = sub_26C148BDC();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = MEMORY[0x277D84F90];
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = v8;
  *(v3 + 40) = -4;
  v9 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  v10 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
  v12 = type metadata accessor for EncryptionLevel(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v3 + v11, 1, 1, v12);
  v13(v3 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, 1, 1, v12);
  return v3;
}

uint64_t SwiftTLSHandshaker.deinit()
{
  v1 = *(v0 + 16);

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  return v0;
}

void sub_26C143440(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    sub_26C143454(a1, a2, a3);
  }
}

void sub_26C143454(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    sub_26C0CF030(a1, a2, a3);
  }
}

uint64_t SwiftTLSHandshaker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

unint64_t sub_26C14353C()
{
  result = qword_28047AF90;
  if (!qword_28047AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF90);
  }

  return result;
}

unint64_t sub_26C143594()
{
  result = qword_28047AF98;
  if (!qword_28047AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AF98);
  }

  return result;
}

unint64_t sub_26C1435EC()
{
  result = qword_28047AFA0;
  if (!qword_28047AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AFA0);
  }

  return result;
}

void sub_26C143678()
{
  sub_26C11F4C0();
  if (v0 <= 0x3F)
  {
    sub_26C0EEEB8(319, &qword_28047AE70, &qword_28047A840, &unk_26C14A530);
    if (v1 <= 0x3F)
    {
      sub_26C0EEEB8(319, &qword_281590300, &qword_28047AC68, ";");
      if (v2 <= 0x3F)
      {
        sub_26C0EEEB8(319, &qword_28047AFB8, &qword_28047AFC0, &qword_26C150370);
        if (v3 <= 0x3F)
        {
          sub_26C0EEEB8(319, &qword_28047AFC8, &qword_28047AFD0, &qword_26C150378);
          if (v4 <= 0x3F)
          {
            sub_26C1483E4(319, &qword_281590330, MEMORY[0x277CC54D0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26C143818(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26C1438A8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26C143990()
{
  sub_26C1483E4(319, qword_281590898, type metadata accessor for PartialHandshakeResult);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26C1483E4(319, qword_281591618, type metadata accessor for EncryptionLevel);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26C143CDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v5, v4, &qword_28047AFE8, &unk_26C150528);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    sub_26C148708(v4, type metadata accessor for HandshakeStateMachine);
    if ((v8 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_26C143E10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v5, v4, &qword_28047AFE8, &unk_26C150528);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result == 1)
  {
    goto LABEL_15;
  }

  HandshakeStateMachine.peerQUICTransportParameters.getter(&v16);
  v8 = v17;
  if (v17 >> 60 == 15)
  {
    sub_26C148708(v4, type metadata accessor for HandshakeStateMachine);
    return 0;
  }

  v9 = v16;
  v10 = v18;
  result = sub_26C148708(v4, type metadata accessor for HandshakeStateMachine);
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v9 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v9 >> 32;
  }

  else
  {
    v12 = BYTE6(v8);
  }

  if (v12 < v10)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v13 = sub_26C14889C();
  v15 = sub_26C0BAFC4(v13, v14);
  sub_26C0BB344(v9, v8);
  return v15;
}

uint64_t sub_26C143FE0()
{
  v1 = type metadata accessor for HandshakeStateMachine(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v10, v9, &qword_28047AFE8, &unk_26C150528);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_26C0CF5C4(v9, &qword_28047AFE8, &unk_26C150528);
    v11 = 0;
  }

  else
  {
    sub_26C1486A0(v9, v5, type metadata accessor for HandshakeStateMachine);
    sub_26C0CF5C4(v9, &qword_28047AFE8, &unk_26C150528);
    v11 = HandshakeStateMachine.earlyDataAccepted.getter();
    sub_26C148708(v5, type metadata accessor for HandshakeStateMachine);
  }

  return v11 & 1;
}

uint64_t sub_26C1441BC(uint64_t *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v207 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v187 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v187 - v11;
  v210 = type metadata accessor for EncryptionLevel(0);
  v218 = *(v210 - 8);
  v13 = *(v218 + 64);
  v14 = MEMORY[0x28223BE20](v210);
  v199 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v198 = &v187 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v206 = &v187 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v205 = &v187 - v22;
  MEMORY[0x28223BE20](v21);
  v204 = &v187 - v23;
  v217 = type metadata accessor for PartialHandshakeResult(0);
  v219 = *(v217 - 8);
  v24 = *(v219 + 64);
  v25 = MEMORY[0x28223BE20](v217);
  v215 = &v187 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v187 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v209 = &v187 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v208 = &v187 - v34;
  v201 = type metadata accessor for SessionTicket();
  v200 = *(v201 - 8);
  v35 = *(v200 + 64);
  MEMORY[0x28223BE20](v201);
  v213 = &v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for HandshakeStateMachine(0);
  v216 = *(v220 - 8);
  v37 = *(v216 + 64);
  v38 = MEMORY[0x28223BE20](v220);
  v214 = (&v187 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x28223BE20](v38);
  v202 = &v187 - v41;
  MEMORY[0x28223BE20](v40);
  v212 = (&v187 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFE8, &unk_26C150528);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v211 = &v187 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v203 = &v187 - v47;
  v48 = sub_26C148E2C();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v187 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[1];
  if (!v53)
  {
    if (qword_28047A7A8 == -1)
    {
LABEL_13:
      v68 = sub_26C148A9C();
      __swift_project_value_buffer(v68, qword_28047AF78);
      v69 = sub_26C148A7C();
      v70 = sub_26C14900C();
      if (!os_log_type_enabled(v69, v70))
      {
LABEL_24:

        *a2 = 0;
        LOBYTE(v234) = 0;
        sub_26C148594();
        swift_willThrowTypedImpl();
        return v69;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "Cannot start the handshake, missing server name";
LABEL_23:
      _os_log_impl(&dword_26C0B5000, v69, v70, v72, v71, 2u);
      MEMORY[0x26D69C3A0](v71, -1, -1);
      goto LABEL_24;
    }

LABEL_85:
    swift_once();
    goto LABEL_13;
  }

  v54 = a1[3];
  if (!v54)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v73 = sub_26C148A9C();
    __swift_project_value_buffer(v73, qword_28047AF78);
    v69 = sub_26C148A7C();
    v70 = sub_26C14900C();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_24;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Cannot start the handshake, missing application protocol";
    goto LABEL_23;
  }

  v191 = v10;
  v192 = v28;
  v197 = a2;
  if (!a1[2])
  {
    a2 = v197;
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v74 = sub_26C148A9C();
    __swift_project_value_buffer(v74, qword_28047AF78);
    v69 = sub_26C148A7C();
    v70 = sub_26C14900C();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_24;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Cannot start the handshake, missing QUIC transport parameters";
    goto LABEL_23;
  }

  v55 = *a1;
  v56 = a1[5];
  v188 = v12;
  if (v56)
  {
    v189 = v55;
    v190 = v54;
    v238 = v56;

    goto LABEL_6;
  }

  v104 = a1[4];
  if (!v104)
  {
    if (qword_28047A7A8 == -1)
    {
LABEL_60:
      v162 = sub_26C148A9C();
      __swift_project_value_buffer(v162, qword_28047AF78);
      v69 = sub_26C148A7C();
      v70 = sub_26C14900C();
      v163 = os_log_type_enabled(v69, v70);
      a2 = v197;
      if (!v163)
      {
        goto LABEL_24;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "Cannot start the handshake, missing raw public keys";
      goto LABEL_23;
    }

LABEL_87:
    swift_once();
    goto LABEL_60;
  }

  v189 = v55;
  v190 = v54;
  v196 = *(v104 + 16);
  if (v196)
  {
    v105 = 0;
    v195 = v104 + 32;
    v193 = v49 + 32;
    v238 = MEMORY[0x277D84F90];
    v194 = v104;
    while (v105 < *(v104 + 16))
    {
      *&v234 = *(v195 + 8 * v105);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
      sub_26C1485E8(&unk_28047AFF0);
      v106 = v222;
      sub_26C148DEC();
      v222 = v106;
      if (v106)
      {

        v171 = v221;
        v69 = *(v221 + 24);
        v172 = *(v221 + 32);
        v173 = v222;
        *(v221 + 24) = v222;
        *(v171 + 32) = 0;
        v174 = *(v171 + 40);
        *(v171 + 40) = 0x80;
        MEMORY[0x26D69C260](v173);
        sub_26C143440(v69, v172, v174);
        *v197 = 2;
        LOBYTE(v234) = 2;
        sub_26C148594();
        swift_willThrowTypedImpl();

        return v69;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v107 = v238;
      }

      else
      {
        v107 = sub_26C0CE6B8(0, v238[2] + 1, 1, v238);
      }

      v109 = v107[2];
      v108 = v107[3];
      a2 = (v109 + 1);
      if (v109 >= v108 >> 1)
      {
        v107 = sub_26C0CE6B8(v108 > 1, v109 + 1, 1, v107);
      }

      ++v105;
      v107[2] = a2;
      v110 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v238 = v107;
      (*(v49 + 32))(v107 + v110 + *(v49 + 72) * v109, v52, v48);
      v104 = v194;
      if (v196 == v105)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v238 = MEMORY[0x277D84F90];
LABEL_6:
  v57 = *(a1 + 64);
  v58 = v57 | *(a1 + 65);
  v59 = v58 == 0;
  v60 = v57 | (*(a1 + 65) << 8);
  if (v58)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v63 = sub_26C11EF18(v62);
  v65 = v64;

  v66 = 0;
  v67 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    if (v67 == 2)
    {
      v66 = *(v63 + 16);
    }
  }

  else if (v67)
  {
    v66 = v63;
  }

  v76 = 0x11EC001D00180017uLL >> (16 * *(a1 + 66));
  v77 = v190;

  sub_26C0BB344(0, 0xF000000000000000);
  LOBYTE(v229) = v59;
  LOBYTE(v225) = 0;
  *&v234 = v189;
  *(&v234 + 1) = v53;
  *&v235 = v238;
  *(&v235 + 1) = v63;
  *&v236 = v65;
  *(&v236 + 1) = v66;
  *v237 = v77;
  *&v237[8] = v61;
  v237[10] = v59;
  *&v237[12] = v76;
  v237[14] = 0;
  *&v237[15] = 1;
  if (!a1[7])
  {
    v231 = v236;
    v232 = *v237;
    v233 = v237[16];
    v229 = v234;
    v230 = v235;
    sub_26C10B120(&v234, &v225);
    v111 = v211;
    HandshakeStateMachine.init(configuration:)(&v229, v211);
    v99 = v216;
    v88 = v220;
    (*(v216 + 56))(v111, 0, 1, v220);
    v112 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
    v89 = v221;
    swift_beginAccess();
    sub_26C0FF20C(v111, v89 + v112, &qword_28047AFE8, &unk_26C150528);
    swift_endAccess();
    v87 = v197;
    v102 = v218;
    v103 = v217;
LABEL_53:
    v101 = v222;
    goto LABEL_54;
  }

  v78 = a1[7];

  v80 = sub_26C11EF18(v79);
  v82 = v81;

  v83 = v212;
  *v212 = xmmword_26C14A540;
  v83[2] = 0;
  *(v83 + 24) = 0;
  v227 = &type metadata for SwiftTLSDefaultClock;
  v228 = &off_287CCAB28;
  v84 = v214;
  *v214 = xmmword_26C14A540;
  *(v84 + 2) = 0;
  *(v84 + 24) = 0;
  sub_26C10B120(&v234, &v229);
  sub_26C0BBAA4(v80, v82);
  v85 = v213;
  v86 = v222;
  sub_26C11F9F4(v80, v82, v223, v213);
  v87 = v197;
  v88 = v220;
  v89 = v221;
  if (!v86)
  {
    v196 = v80;
    v211 = v82;
    v222 = 0;
    sub_26C11D848(&v225, v84 + *(v220 + 28));
    *&v229 = 0;
    MEMORY[0x26D69C3B0](&v229, 8);
    v113 = v85;
    v114 = v229;
    *&v229 = 0;
    MEMORY[0x26D69C3B0](&v229, 8);
    v115 = v229;
    *&v229 = 0;
    MEMORY[0x26D69C3B0](&v229, 8);
    v116 = v229;
    *&v229 = 0;
    MEMORY[0x26D69C3B0](&v229, 8);
    v117 = v229;
    v118 = (v84 + v88[8]);
    *v118 = v114;
    v118[1] = v115;
    v118[2] = v116;
    v118[3] = v117;
    v119 = v84 + v88[9];
    v120 = *v237;
    *(v119 + 2) = v236;
    *(v119 + 3) = v120;
    v119[64] = v237[16];
    v121 = v235;
    *v119 = v234;
    *(v119 + 1) = v121;
    v122 = v84 + v88[6];
    v123 = v208;
    sub_26C1486A0(v113, v208, type metadata accessor for SessionTicket);
    v124 = *(v200 + 56);
    v125 = v201;
    v124(v123, 0, 1, v201);
    v126 = type metadata accessor for PAKEClientState(0);
    v127 = *(*(v126 - 8) + 56);
    v127(v209, 1, 1, v126);
    v128 = type metadata accessor for HandshakeState.IdleState(0);
    v129 = v128[5];
    v124(&v122[v129], 1, 1, v125);
    v130 = v128[8];
    v127(&v122[v130], 1, 1, v126);
    v131 = *v237;
    *(v122 + 2) = v236;
    *(v122 + 3) = v131;
    v122[64] = v237[16];
    v132 = v235;
    *v122 = v234;
    *(v122 + 1) = v132;
    sub_26C10B120(&v234, &v229);
    sub_26C0FF20C(v208, &v122[v129], &qword_28047AC50, "N;");
    v133 = v128[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
    swift_storeEnumTagMultiPayload();
    *&v122[v128[7]] = MEMORY[0x277D84F90];
    sub_26C0FF20C(v209, &v122[v130], &qword_28047AC40, &unk_26C14D320);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v134 = sub_26C148A9C();
    __swift_project_value_buffer(v134, qword_28047AC70);
    v135 = sub_26C148A7C();
    v136 = sub_26C148FEC();
    v137 = os_log_type_enabled(v135, v136);
    v87 = v197;
    v102 = v218;
    v103 = v217;
    v138 = v211;
    if (v137)
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_26C0B5000, v135, v136, "client state machine initialized with session ticket", v139, 2u);
      MEMORY[0x26D69C3A0](v139, -1, -1);
    }

    sub_26C0BB9B0(v196, v138);
    __swift_destroy_boxed_opaque_existential_1(&v225);
    sub_26C148708(v213, type metadata accessor for SessionTicket);
    v140 = v202;
    sub_26C148638(v214, v202, type metadata accessor for HandshakeStateMachine);
    v141 = v212;
    v142 = v212[2];
    sub_26C0BB344(*v212, v212[1]);
    sub_26C148638(v140, v141, type metadata accessor for HandshakeStateMachine);
    v143 = v141;
    v144 = v203;
    sub_26C148638(v143, v203, type metadata accessor for HandshakeStateMachine);
    v99 = v216;
    v88 = v220;
    (*(v216 + 56))(v144, 0, 1, v220);
    v145 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
    v89 = v221;
    swift_beginAccess();
    sub_26C0FF20C(v144, v89 + v145, &qword_28047AFE8, &unk_26C150528);
    swift_endAccess();
    goto LABEL_53;
  }

  __swift_destroy_boxed_opaque_existential_1(&v225);
  sub_26C10B17C(&v234);
  sub_26C0BB9B0(v80, v82);
  v90 = v223[0];
  v91 = v223[1];
  v92 = v224;
  v93 = *(v84 + 2);
  sub_26C0BB344(*v84, *(v84 + 1));
  sub_26C0CF030(v90, v91, v92);
  sub_26C0BB344(0, 0xF000000000000000);
  if (qword_28047A7A8 != -1)
  {
    swift_once();
  }

  v94 = sub_26C148A9C();
  __swift_project_value_buffer(v94, qword_28047AF78);
  v95 = sub_26C148A7C();
  v96 = sub_26C14900C();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_26C0B5000, v95, v96, "Failed to use provided session state", v97, 2u);
    MEMORY[0x26D69C3A0](v97, -1, -1);
  }

  v231 = v236;
  v232 = *v237;
  v233 = v237[16];
  v229 = v234;
  v230 = v235;
  sub_26C10B120(&v234, &v225);
  v98 = v211;
  HandshakeStateMachine.init(configuration:)(&v229, v211);
  v99 = v216;
  (*(v216 + 56))(v98, 0, 1, v88);
  v100 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0FF20C(v98, v89 + v100, &qword_28047AFE8, &unk_26C150528);
  swift_endAccess();
  v101 = 0;
  v102 = v218;
  v103 = v217;
LABEL_54:
  v146 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  swift_beginAccess();
  result = (*(v99 + 48))(v89 + v146, 1, v88);
  if (result != 1)
  {

    v147 = v89;
    v148 = v215;
    _s8SwiftTLS21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v225, v215);
    if (v101)
    {
      v149 = *(&v225 + 1);
      v69 = v225;
      v150 = v226;
      swift_endAccess();
      v151 = *(v89 + 24);
      v152 = *(v89 + 32);
      *(v89 + 24) = __PAIR128__(v149, v69);
      v153 = *(v89 + 40);
      *(v89 + 40) = v150;
      sub_26C143440(v151, v152, v153);
      *v87 = 3;
      LOBYTE(v229) = 3;
      sub_26C148594();
      swift_willThrowTypedImpl();
      sub_26C10B17C(&v234);
      return v69;
    }

    v238 = 0;
    swift_endAccess();
    v154 = v192;
    sub_26C148638(v148, v192, type metadata accessor for PartialHandshakeResult);
    v155 = v204;
    sub_26C1486A0(v154, v204, type metadata accessor for PartialHandshakeResult);
    v156 = v219;
    (*(v219 + 56))(v155, 0, 1, v103);
    v157 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
    swift_beginAccess();
    sub_26C0FF20C(v155, v147 + v157, &qword_28047A938, &qword_26C14A7E0);
    swift_endAccess();
    v158 = v205;
    sub_26C0CF314(v147 + v157, v205, &qword_28047A938, &qword_26C14A7E0);
    v159 = *(v156 + 48);
    v219 = v156 + 48;
    if (v159(v158, 1, v103))
    {
      sub_26C0CF5C4(v158, &qword_28047A938, &qword_26C14A7E0);
      v160 = v188;
      v161 = v210;
      (*(v102 + 56))(v188, 1, 1, v210);
    }

    else
    {
      v160 = v188;
      sub_26C0CF314(v158 + *(v103 + 20), v188, &qword_28047A998, &qword_26C14A860);
      sub_26C0CF5C4(v158, &qword_28047A938, &qword_26C14A7E0);
      v161 = v210;
      if ((*(v102 + 48))(v160, 1, v210) != 1)
      {
        v175 = v160;
        v176 = v198;
        sub_26C148638(v175, v198, type metadata accessor for EncryptionLevel);
        v177 = v191;
        sub_26C148638(v176, v191, type metadata accessor for EncryptionLevel);
        (*(v102 + 56))(v177, 0, 1, v210);
        v178 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel;
        swift_beginAccess();
        v179 = v147 + v178;
        v161 = v210;
        sub_26C0FF20C(v177, v179, &qword_28047A998, &qword_26C14A860);
        swift_endAccess();
LABEL_64:
        v164 = v147 + v157;
        v165 = v206;
        sub_26C0CF314(v164, v206, &qword_28047A938, &qword_26C14A7E0);
        if (v159(v165, 1, v103))
        {
          sub_26C0CF5C4(v165, &qword_28047A938, &qword_26C14A7E0);
          v166 = v207;
          (*(v102 + 56))(v207, 1, 1, v161);
        }

        else
        {
          v166 = v207;
          sub_26C0CF314(v165 + *(v103 + 24), v207, &qword_28047A998, &qword_26C14A860);
          sub_26C0CF5C4(v165, &qword_28047A938, &qword_26C14A7E0);
          if ((*(v102 + 48))(v166, 1, v161) != 1)
          {
            v180 = v166;
            v181 = v199;
            sub_26C148638(v180, v199, type metadata accessor for EncryptionLevel);
            v182 = v181;
            v183 = v191;
            sub_26C148638(v182, v191, type metadata accessor for EncryptionLevel);
            (*(v102 + 56))(v183, 0, 1, v161);
            v184 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
            swift_beginAccess();
            sub_26C0FF20C(v183, v147 + v184, &qword_28047A998, &qword_26C14A860);
            swift_endAccess();
            goto LABEL_68;
          }
        }

        sub_26C0CF5C4(v166, &qword_28047A998, &qword_26C14A860);
LABEL_68:
        v167 = v154[1];
        if (v167 >> 60 == 15)
        {
          sub_26C10B17C(&v234);
          v69 = 0;
LABEL_83:
          sub_26C148708(v154, type metadata accessor for PartialHandshakeResult);
          return v69;
        }

        v168 = *v154;
        v169 = v167 >> 62;
        if ((v167 >> 62) > 1)
        {
          if (v169 == 2)
          {
            v170 = *(v168 + 24);
          }

          else
          {
            v170 = 0;
          }
        }

        else if (v169)
        {
          v170 = v168 >> 32;
        }

        else
        {
          v170 = BYTE6(v167);
        }

        if (v170 >= v154[2])
        {
          v185 = sub_26C14889C();
          v69 = sub_26C0BAFC4(v185, v186);
          sub_26C10B17C(&v234);
          goto LABEL_83;
        }

        __break(1u);
        goto LABEL_87;
      }
    }

    sub_26C0CF5C4(v160, &qword_28047A998, &qword_26C14A860);
    goto LABEL_64;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C145B54(uint64_t a1, _BYTE *a2)
{
  v95 = a2;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v100 = &v95 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v95 - v12;
  v112 = type metadata accessor for EncryptionLevel(0);
  v14 = *(v112 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v112);
  v99 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v95 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v109 = &v95 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v95 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v108 = &v95 - v30;
  MEMORY[0x28223BE20](v29);
  v106 = v28;
  v107 = &v95 - v31;
  v105 = v9;
  if (a1)
  {

    v33 = sub_26C11EF18(v32);
    v35 = v34;

    v36 = 0;
    v118 = v33;
    v119 = v35;
    v37 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v36 = *(v33 + 16);
      }
    }

    else if (v37)
    {
      v36 = v33;
    }

    v120 = v36;
    v38 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
    swift_beginAccess();
    v39 = type metadata accessor for HandshakeStateMachine(0);
    result = (*(*(v39 - 8) + 48))(v3 + v38, 1, v39);
    v28 = v106;
    if (result == 1)
    {
LABEL_53:
      __break(1u);
      return result;
    }

    HandshakeStateMachine.receivedNetworkData(_:)(&v118);
    swift_endAccess();
    sub_26C0BB9B0(v118, v119);
  }

  v41 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine;
  v121 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  v97 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel;
  v96 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
  swift_beginAccess();
  v110 = (v14 + 56);
  v101 = (v14 + 48);
  v42 = &qword_26C14A7E0;
  v103 = v13;
  v43 = v108;
  v102 = v41;
  v104 = v23;
  while (1)
  {
    swift_beginAccess();
    v44 = type metadata accessor for HandshakeStateMachine(0);
    result = (*(*(v44 - 8) + 48))(v3 + v41, 1, v44);
    v45 = v107;
    if (result == 1)
    {
      goto LABEL_52;
    }

    v46 = v111;
    _s8SwiftTLS21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(&v115, v107);
    if (v46)
    {
      break;
    }

    v111 = 0;
    swift_endAccess();
    v47 = v121;
    swift_beginAccess();
    sub_26C0FF20C(v45, v3 + v47, &qword_28047A938, v42);
    swift_endAccess();
    sub_26C0CF314(v3 + v47, v43, &qword_28047A938, v42);
    v48 = type metadata accessor for PartialHandshakeResult(0);
    v49 = *(v48 - 1);
    v50 = *(v49 + 48);
    v113 = v49 + 48;
    v114 = v50;
    if (v50(v43, 1, v48))
    {
      sub_26C0CF5C4(v43, &qword_28047A938, v42);
      (*v110)(v13, 1, 1, v112);
      v51 = v42;
LABEL_15:
      sub_26C0CF5C4(v13, &qword_28047A998, &qword_26C14A860);
      goto LABEL_16;
    }

    sub_26C0CF314(v43 + v48[5], v13, &qword_28047A998, &qword_26C14A860);
    sub_26C0CF5C4(v43, &qword_28047A938, v42);
    v51 = v42;
    if ((*v101)(v13, 1, v112) == 1)
    {
      goto LABEL_15;
    }

    v59 = v13;
    v60 = v98;
    sub_26C148638(v59, v98, type metadata accessor for EncryptionLevel);
    v61 = v60;
    v62 = v100;
    sub_26C148638(v61, v100, type metadata accessor for EncryptionLevel);
    (*v110)(v62, 0, 1, v112);
    v63 = v97;
    swift_beginAccess();
    sub_26C0FF20C(v62, v3 + v63, &qword_28047A998, &qword_26C14A860);
    swift_endAccess();
LABEL_16:
    sub_26C0CF314(v3 + v121, v28, &qword_28047A938, v51);
    v52 = v114(v28, 1, v48);
    v53 = v109;
    if (v52)
    {
      sub_26C0CF5C4(v28, &qword_28047A938, v51);
      v54 = v105;
      (*v110)(v105, 1, 1, v112);
LABEL_19:
      sub_26C0CF5C4(v54, &qword_28047A998, &qword_26C14A860);
      goto LABEL_20;
    }

    v54 = v105;
    sub_26C0CF314(&v28[v48[6]], v105, &qword_28047A998, &qword_26C14A860);
    v51 = &qword_26C14A7E0;
    sub_26C0CF5C4(v28, &qword_28047A938, &qword_26C14A7E0);
    if ((*v101)(v54, 1, v112) == 1)
    {
      goto LABEL_19;
    }

    v64 = v99;
    sub_26C148638(v54, v99, type metadata accessor for EncryptionLevel);
    v65 = v64;
    v66 = v100;
    sub_26C148638(v65, v100, type metadata accessor for EncryptionLevel);
    (*v110)(v66, 0, 1, v112);
    v67 = v96;
    swift_beginAccess();
    v68 = v3 + v67;
    v53 = v109;
    sub_26C0FF20C(v66, v68, &qword_28047A998, &qword_26C14A860);
    swift_endAccess();
LABEL_20:
    v55 = v3;
    sub_26C0CF314(v3 + v121, v53, &qword_28047A938, v51);
    if (v114(v53, 1, v48))
    {
      sub_26C0CF5C4(v53, &qword_28047A938, v51);
      v42 = v51;
      v56 = 0;
      v57 = 0xF000000000000000;
      v43 = v108;
    }

    else
    {
      v58 = (v53 + v48[7]);
      v56 = *v58;
      v57 = v58[1];
      sub_26C0BB37C(*v58, v57);
      sub_26C0CF5C4(v53, &qword_28047A938, v51);
      if (v57 >> 60 == 15)
      {
        v43 = v108;
      }

      else
      {
        sub_26C0BB37C(v56, v57);
        sub_26C0BBAA4(v56, v57);
        v69 = sub_26C0BAFC4(v56, v57);
        v70 = *(v55 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v55 + 16) = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = sub_26C0CE8BC(0, v70[2] + 1, 1, v70);
          *(v55 + 16) = v70;
        }

        v73 = v70[2];
        v72 = v70[3];
        v43 = v108;
        if (v73 >= v72 >> 1)
        {
          v70 = sub_26C0CE8BC((v72 > 1), v73 + 1, 1, v70);
        }

        v70[2] = v73 + 1;
        v70[v73 + 4] = v69;
        *(v55 + 16) = v70;
        sub_26C0BB344(v56, v57);
      }

      v42 = &qword_26C14A7E0;
    }

    v74 = v104;
    sub_26C0CF314(v55 + v121, v104, &qword_28047A938, v42);
    if (!v114(v74, 1, v48))
    {
      v75 = v74[1];
      if (v75 >> 60 != 15)
      {
        v88 = *v74;
        v89 = v74[2];
        sub_26C0BBAA4(*v74, v74[1]);
        result = sub_26C0CF5C4(v74, &qword_28047A938, &qword_26C14A7E0);
        v90 = v75 >> 62;
        if ((v75 >> 62) > 1)
        {
          if (v90 == 2)
          {
            v91 = *(v88 + 24);
          }

          else
          {
            v91 = 0;
          }
        }

        else if (v90)
        {
          v91 = v88 >> 32;
        }

        else
        {
          v91 = BYTE6(v75);
        }

        if (v91 >= v89)
        {
          v92 = sub_26C14889C();
          v94 = v93;
          sub_26C0BB344(v56, v57);
          sub_26C0BB344(v88, v75);
          return sub_26C0BAFC4(v92, v94);
        }

        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    sub_26C0CF5C4(v74, &qword_28047A938, v42);
    if (v57 >> 60 == 15)
    {
      return 0;
    }

    sub_26C0BB344(v56, v57);
    v13 = v103;
    v3 = v55;
    v28 = v106;
    v41 = v102;
  }

  v76 = v115;
  v77 = v116;
  swift_endAccess();
  if (qword_28047A7A8 != -1)
  {
    swift_once();
  }

  v78 = sub_26C148A9C();
  __swift_project_value_buffer(v78, qword_28047AF78);
  sub_26C0CF018(v76, *(&v76 + 1), v77);
  v79 = sub_26C148A7C();
  v80 = sub_26C14900C();
  sub_26C0CF030(v76, *(&v76 + 1), v77);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v83 = v76;
    *(v83 + 16) = v77;
    sub_26C0CF018(v76, *(&v76 + 1), v77);
    v84 = _swift_stdlib_bridgeErrorToNSError();
    *(v81 + 4) = v84;
    *v82 = v84;
    _os_log_impl(&dword_26C0B5000, v79, v80, "Internal error when processing the handshake: %@", v81, 0xCu);
    sub_26C0CF5C4(v82, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v82, -1, -1);
    MEMORY[0x26D69C3A0](v81, -1, -1);
  }

  v85 = *(v3 + 24);
  v86 = *(v3 + 32);
  *(v3 + 24) = v76;
  v87 = *(v3 + 40);
  *(v3 + 40) = v77;
  sub_26C143440(v85, v86, v87);
  *v95 = 3;
  v117 = 3;
  sub_26C148594();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C1467E4()
{
  v1 = *(v0 + 16);

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS24SwiftTLSClientHandshaker_stateMachine, &qword_28047AFE8, &unk_26C150528);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void sub_26C1468E4()
{
  sub_26C1483E4(319, qword_281590B00, type metadata accessor for HandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26C146990(uint64_t *a1, _BYTE *a2)
{
  v93 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFD8, &unk_26C150518);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v79 - v10;
  v87 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v11 = *(*(v87 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v87);
  v88 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v90 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v79 - v20;
  v22 = sub_26C148D8C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = a1[1];
  if (!v29)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v38 = sub_26C148A9C();
    __swift_project_value_buffer(v38, qword_28047AF78);
    v39 = sub_26C148A7C();
    v40 = sub_26C14900C();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_43;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Cannot start the handshake, missing server name";
    goto LABEL_42;
  }

  v85 = v15;
  v30 = a1[3];
  if (!v30)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v43 = sub_26C148A9C();
    __swift_project_value_buffer(v43, qword_28047AF78);
    v39 = sub_26C148A7C();
    v40 = sub_26C14900C();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_43;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Cannot start the handshake, missing application protocol";
    goto LABEL_42;
  }

  v86 = a1[2];
  if (!v86)
  {
    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v44 = sub_26C148A9C();
    __swift_project_value_buffer(v44, qword_28047AF78);
    v39 = sub_26C148A7C();
    v40 = sub_26C14900C();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_43;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Cannot start the handshake, missing QUIC transport parameters";
    goto LABEL_42;
  }

  v84 = &v79 - v28;
  v82 = *a1;
  v31 = type metadata accessor for SwiftTLSOptions(0);
  sub_26C0CF314(a1 + *(v31 + 60), v21, &qword_28047AC08, &qword_26C14CDF0);
  v32 = (*(v23 + 48))(v21, 1, v22);
  v83 = v23;
  if (v32 != 1)
  {
    v93 = v2;
    (*(v23 + 32))(v84, v21, v22);

    goto LABEL_25;
  }

  sub_26C0CF5C4(v21, &qword_28047AC08, &qword_26C14CDF0);
  if (!a1[9])
  {

    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v77 = sub_26C148A9C();
    __swift_project_value_buffer(v77, qword_28047AF78);
    v39 = sub_26C148A7C();
    v40 = sub_26C14900C();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_43;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Cannot start the handshake, missing raw private key";
LABEL_42:
    _os_log_impl(&dword_26C0B5000, v39, v40, v42, v41, 2u);
    MEMORY[0x26D69C3A0](v41, -1, -1);
LABEL_43:

    *v93 = 0;
    LOBYTE(v92) = 0;
    sub_26C148594();
    swift_willThrowTypedImpl();
    return 0;
  }

  v92 = a1[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C1485E8(&qword_28047ABE8);
  v33 = v91;
  sub_26C148D6C();
  v91 = v33;
  if (v33)
  {

    if (qword_28047A7A8 != -1)
    {
      swift_once();
    }

    v34 = sub_26C148A9C();
    __swift_project_value_buffer(v34, qword_28047AF78);
    v35 = sub_26C148A7C();
    v36 = sub_26C14900C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26C0B5000, v35, v36, "Could not initialize server private key", v37, 2u);
      MEMORY[0x26D69C3A0](v37, -1, -1);
    }

    *v93 = 1;
    LOBYTE(v92) = 1;
    sub_26C148594();
    swift_willThrowTypedImpl();

    return 0;
  }

  v93 = v2;
  (*(v83 + 32))(v84, v27, v22);
LABEL_25:
  v81 = v7;
  v45 = *(v30 + 16);
  if (v45)
  {
    v46 = sub_26C0CE13C(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = (v30 + 40);
    do
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      v51 = *(v46 + 2);
      v50 = *(v46 + 3);

      if (v51 >= v50 >> 1)
      {
        v46 = sub_26C0CE13C((v50 > 1), v51 + 1, 1, v46);
      }

      *(v46 + 2) = v51 + 1;
      v52 = &v46[16 * v51];
      *(v52 + 4) = v49;
      *(v52 + 5) = v48;
      v47 += 2;
      --v45;
    }

    while (v45);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v53 = v83;
  v54 = v90;
  (*(v83 + 16))(v90, v84, v22);
  v55 = *(v53 + 56);
  v55(v54, 0, 1, v22);
  v56 = sub_26C11EF18(v86);
  v58 = v57;

  v59 = 0;
  v60 = v58 >> 62;
  v80 = v58;
  if ((v58 >> 62) > 1)
  {
    if (v60 == 2)
    {
      v59 = *(v56 + 16);
    }
  }

  else if (v60)
  {
    v59 = v56;
  }

  v61 = v87;
  v86 = v56;
  v62 = *(v87 + 20);
  v63 = v85;
  v64 = v59;
  v55(v85 + v62, 1, 1, v22);
  v65 = (v63 + v61[6]);
  *v65 = xmmword_26C14A540;
  v65[2] = 0;
  v66 = v61[7];
  *v63 = v82;
  v63[1] = v29;
  sub_26C0FF20C(v90, v63 + v62, &qword_28047AC08, &qword_26C14CDF0);
  v67 = v65[2];
  sub_26C0BB344(*v65, v65[1]);
  v68 = v80;
  *v65 = v86;
  v65[1] = v68;
  v65[2] = v64;
  *(v63 + v66) = v46;
  *(v63 + v61[8]) = 0;
  *(v63 + v61[9]) = 1;
  *(v63 + v61[10]) = 0;
  v69 = v88;
  sub_26C1486A0(v63, v88, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v70 = v89;
  ServerHandshakeStateMachine.init(configuration:)(v69, v89);
  (*(v83 + 8))(v84, v22);
  v71 = type metadata accessor for ServerHandshakeStateMachine(0);
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  v73 = v93;
  swift_beginAccess();
  sub_26C0FF20C(v70, &v73[v72], &qword_28047AFD8, &unk_26C150518);
  swift_endAccess();
  v74 = type metadata accessor for PartialHandshakeResult(0);
  v75 = v81;
  (*(*(v74 - 8) + 56))(v81, 1, 1, v74);
  v76 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
  swift_beginAccess();
  sub_26C0FF20C(v75, &v73[v76], &qword_28047A938, &qword_26C14A7E0);
  swift_endAccess();
  sub_26C148708(v63, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  return 0;
}

uint64_t sub_26C147434(uint64_t a1, unsigned int (*a2)(uint64_t *, uint64_t, uint64_t))
{
  v91 = a2;
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v87 = &v84 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - v12;
  v97 = type metadata accessor for EncryptionLevel(0);
  v14 = *(v97 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v97);
  v86 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v90 = (&v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v84 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v84 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v84 - v29;
  v31 = &unk_281592000;
  if (a1)
  {
    v88 = v25;
    v32 = v13;
    v33 = v14;

    v35 = sub_26C11EF18(v34);
    v37 = v36;

    v38 = 0;
    v94 = v35;
    v95 = v37;
    v39 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v39 == 2)
      {
        v38 = *(v35 + 16);
      }
    }

    else if (v39)
    {
      v38 = v35;
    }

    v96 = v38;
    v40 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
    swift_beginAccess();
    v41 = type metadata accessor for ServerHandshakeStateMachine(0);
    result = (*(*(v41 - 8) + 48))(v4 + v40, 1, v41);
    if (result == 1)
    {
      goto LABEL_40;
    }

    ServerHandshakeStateMachine.receivedNetworkData(_:)(&v94);
    swift_endAccess();
    sub_26C0BB9B0(v94, v95);
    v14 = v33;
    v13 = v32;
    v25 = v88;
    v31 = &unk_281592000;
  }

  v43 = v31[199];
  swift_beginAccess();
  v44 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v44 - 8) + 48))(v4 + v43, 1, v44);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  _s8SwiftTLS27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(v92, v30);
  if (!v3)
  {
    v58 = v14;
    v88 = 0;
    swift_endAccess();
    v59 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult;
    swift_beginAccess();
    sub_26C0FF20C(v30, v4 + v59, &qword_28047A938, &qword_26C14A7E0);
    swift_endAccess();
    sub_26C0CF314(v4 + v59, v28, &qword_28047A938, &qword_26C14A7E0);
    v60 = type metadata accessor for PartialHandshakeResult(0);
    v91 = *(*(v60 - 8) + 48);
    if (v91(v28, 1, v60))
    {
      sub_26C0CF5C4(v28, &qword_28047A938, &qword_26C14A7E0);
      (*(v14 + 56))(v13, 1, 1, v97);
    }

    else
    {
      sub_26C0CF314(&v28[*(v60 + 20)], v13, &qword_28047A998, &qword_26C14A860);
      sub_26C0CF5C4(v28, &qword_28047A938, &qword_26C14A7E0);
      if ((*(v14 + 48))(v13, 1, v97) != 1)
      {
        v67 = v85;
        sub_26C148638(v13, v85, type metadata accessor for EncryptionLevel);
        v68 = v67;
        v69 = v87;
        sub_26C148638(v68, v87, type metadata accessor for EncryptionLevel);
        (*(v14 + 56))(v69, 0, 1, v97);
        v70 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel;
        swift_beginAccess();
        v71 = v4 + v70;
        v14 = v58;
        sub_26C0FF20C(v69, v71, &qword_28047A998, &qword_26C14A860);
        swift_endAccess();
LABEL_20:
        v61 = v90;
        sub_26C0CF314(v4 + v59, v25, &qword_28047A938, &qword_26C14A7E0);
        v62 = v91;
        v63 = v91(v25, 1, v60);
        v64 = v89;
        if (v63)
        {
          sub_26C0CF5C4(v25, &qword_28047A938, &qword_26C14A7E0);
          (*(v14 + 56))(v64, 1, 1, v97);
        }

        else
        {
          sub_26C0CF314(&v25[*(v60 + 24)], v89, &qword_28047A998, &qword_26C14A860);
          sub_26C0CF5C4(v25, &qword_28047A938, &qword_26C14A7E0);
          v65 = v97;
          if ((*(v14 + 48))(v64, 1, v97) != 1)
          {
            v72 = v64;
            v73 = v86;
            sub_26C148638(v72, v86, type metadata accessor for EncryptionLevel);
            v74 = v73;
            v75 = v87;
            sub_26C148638(v74, v87, type metadata accessor for EncryptionLevel);
            (*(v14 + 56))(v75, 0, 1, v65);
            v62 = v91;
            v76 = OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel;
            swift_beginAccess();
            sub_26C0FF20C(v75, v4 + v76, &qword_28047A998, &qword_26C14A860);
            swift_endAccess();
LABEL_24:
            sub_26C0CF314(v4 + v59, v61, &qword_28047A938, &qword_26C14A7E0);
            if (v62(v61, 1, v60) || (v66 = v61[1], v66 >> 60 == 15))
            {
              sub_26C0CF5C4(v61, &qword_28047A938, &qword_26C14A7E0);
              return 0;
            }

            v77 = *v61;
            v78 = v61[2];
            sub_26C0BBAA4(*v61, v61[1]);
            result = sub_26C0CF5C4(v61, &qword_28047A938, &qword_26C14A7E0);
            v79 = v66 >> 62;
            if ((v66 >> 62) > 1)
            {
              if (v79 == 2)
              {
                v80 = *(v77 + 24);
              }

              else
              {
                v80 = 0;
              }
            }

            else if (v79)
            {
              v80 = v77 >> 32;
            }

            else
            {
              v80 = BYTE6(v66);
            }

            if (v80 >= v78)
            {
              v81 = sub_26C14889C();
              v83 = v82;
              sub_26C0BB344(v77, v66);
              return sub_26C0BAFC4(v81, v83);
            }

            __break(1u);
            goto LABEL_39;
          }
        }

        sub_26C0CF5C4(v64, &qword_28047A998, &qword_26C14A860);
        goto LABEL_24;
      }
    }

    sub_26C0CF5C4(v13, &qword_28047A998, &qword_26C14A860);
    goto LABEL_20;
  }

  v45 = v92[0];
  v46 = v92[1];
  v47 = v93;
  swift_endAccess();
  if (qword_28047A7A8 != -1)
  {
    swift_once();
  }

  v48 = sub_26C148A9C();
  __swift_project_value_buffer(v48, qword_28047AF78);
  sub_26C0CF018(v45, v46, v47);
  v49 = sub_26C148A7C();
  v50 = sub_26C14900C();
  sub_26C0CF030(v45, v46, v47);
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v53 = v45;
    *(v53 + 8) = v46;
    *(v53 + 16) = v47;
    sub_26C0CF018(v45, v46, v47);
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v54;
    *v52 = v54;
    _os_log_impl(&dword_26C0B5000, v49, v50, "Internal error when processing the handshake: %@", v51, 0xCu);
    sub_26C0CF5C4(v52, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v52, -1, -1);
    MEMORY[0x26D69C3A0](v51, -1, -1);
  }

  v55 = *(v4 + 24);
  v56 = *(v4 + 32);
  *(v4 + 24) = v45;
  *(v4 + 32) = v46;
  v57 = *(v4 + 40);
  *(v4 + 40) = v47;
  sub_26C143440(v55, v56, v57);
  *v91 = 3;
  LOBYTE(v94) = 3;
  sub_26C148594();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C147E58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFD8, &unk_26C150518);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v5, v4, &qword_28047AFD8, &unk_26C150518);
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    sub_26C148708(v4, type metadata accessor for ServerHandshakeStateMachine);
    if ((v8 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_26C147F8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AFD8, &unk_26C150518);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;
  swift_beginAccess();
  sub_26C0CF314(v0 + v5, v4, &qword_28047AFD8, &unk_26C150518);
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (result == 1)
  {
    goto LABEL_15;
  }

  ServerHandshakeStateMachine.peerQUICTransportParameters.getter(&v16);
  v8 = v17;
  if (v17 >> 60 == 15)
  {
    sub_26C148708(v4, type metadata accessor for ServerHandshakeStateMachine);
    return 0;
  }

  v9 = v16;
  v10 = v18;
  result = sub_26C148708(v4, type metadata accessor for ServerHandshakeStateMachine);
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v9 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v9 >> 32;
  }

  else
  {
    v12 = BYTE6(v8);
  }

  if (v12 < v10)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v13 = sub_26C14889C();
  v15 = sub_26C0BAFC4(v13, v14);
  sub_26C0BB344(v9, v8);
  return v15;
}

uint64_t sub_26C1481B0()
{
  v1 = *(v0 + 16);

  sub_26C143440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_partialHandshakeResult, &qword_28047A938, &qword_26C14A7E0);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentReadEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS18SwiftTLSHandshaker_currentWriteEncryptionLevel, &qword_28047A998, &qword_26C14A860);
  v2 = OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_stateMachine;

  sub_26C0CF5C4(v0 + v2, &qword_28047AFD8, &unk_26C150518);
  sub_26C0CF5C4(v0 + OBJC_IVAR____TtC8SwiftTLS24SwiftTLSServerHandshaker_clientAppSecret, &qword_28047A930, qword_26C14C120);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_26C1482E0()
{
  sub_26C1483E4(319, qword_281590598, type metadata accessor for ServerHandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26C1483E4(319, &qword_281590338, MEMORY[0x277CC5330]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26C1483E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C14902C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26C148444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C148498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void *sub_26C148520(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26C148594()
{
  result = qword_28047AFE0;
  if (!qword_28047AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AFE0);
  }

  return result;
}

uint64_t sub_26C1485E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047A840, &unk_26C14A530);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C148638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C1486A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C148708(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}